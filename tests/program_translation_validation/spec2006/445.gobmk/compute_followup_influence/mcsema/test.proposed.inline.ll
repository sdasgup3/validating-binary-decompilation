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
%G_0xab3940_type = type <{ [8 x i8] }>
%G_0xabf1c0_type = type <{ [4 x i8] }>
%G_0xb58c6__rip__type = type <{ [8 x i8] }>
%G_0xb596c__rip__type = type <{ [8 x i8] }>
%G_0xb5978__rip__type = type <{ [4 x i8] }>
%G_0xb59b0__rip__type = type <{ [4 x i8] }>
%G_0xb5a33__rip__type = type <{ [8 x i8] }>
%G_0xb5a62__rip__type = type <{ [4 x i8] }>
%G_0xb5a74__rip__type = type <{ [8 x i8] }>
%G_0xb5b08__rip__type = type <{ [4 x i8] }>
%G_0xb5bbf__rip__type = type <{ [4 x i8] }>
%G_0xb5c00__rip__type = type <{ [4 x i8] }>
%G__0x42d830_type = type <{ [8 x i8] }>
%G__0x7b21c0_type = type <{ [8 x i8] }>
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
@G_0xab3940 = global %G_0xab3940_type zeroinitializer
@G_0xabf1c0 = global %G_0xabf1c0_type zeroinitializer
@G_0xb58c6__rip_ = global %G_0xb58c6__rip__type zeroinitializer
@G_0xb596c__rip_ = global %G_0xb596c__rip__type zeroinitializer
@G_0xb5978__rip_ = global %G_0xb5978__rip__type zeroinitializer
@G_0xb59b0__rip_ = global %G_0xb59b0__rip__type zeroinitializer
@G_0xb5a33__rip_ = global %G_0xb5a33__rip__type zeroinitializer
@G_0xb5a62__rip_ = global %G_0xb5a62__rip__type zeroinitializer
@G_0xb5a74__rip_ = global %G_0xb5a74__rip__type zeroinitializer
@G_0xb5b08__rip_ = global %G_0xb5b08__rip__type zeroinitializer
@G_0xb5bbf__rip_ = global %G_0xb5bbf__rip__type zeroinitializer
@G_0xb5c00__rip_ = global %G_0xb5c00__rip__type zeroinitializer
@G__0x42d830 = global %G__0x42d830_type zeroinitializer
@G__0x7b21c0 = global %G__0x7b21c0_type zeroinitializer

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

declare %struct.Memory* @sub_42fba0.matchpat_goal_anchor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42c700.add_marked_intrusions(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42cba0.reset_unblocked_blocks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4296d0.accumulate_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_429d10.value_territory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42a830.print_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @compute_followup_influence(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42d390 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42d390, %struct.Memory** %MEMORY
  %loadMem_42d391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i168 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i168
  %27 = load i64, i64* %PC.i167
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i167
  store i64 %26, i64* %RBP.i169, align 8
  store %struct.Memory* %loadMem_42d391, %struct.Memory** %MEMORY
  %loadMem_42d394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i257 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i257
  %36 = load i64, i64* %PC.i256
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i256
  %38 = sub i64 %35, 3680
  store i64 %38, i64* %RSP.i257, align 8
  %39 = icmp ult i64 %35, 3680
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
  %49 = xor i64 3680, %35
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
  store %struct.Memory* %loadMem_42d394, %struct.Memory** %MEMORY
  %loadMem_42d39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i385
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i385
  store i64 47224, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_42d39b, %struct.Memory** %MEMORY
  %loadMem_42d3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 17
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %83 to i32*
  %84 = bitcast i32* %R8D.i to i64*
  %85 = load i32, i32* %EAX.i495
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC.i494
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC.i494
  %89 = and i64 %86, 4294967295
  store i64 %89, i64* %84, align 8
  store %struct.Memory* %loadMem_42d3a0, %struct.Memory** %MEMORY
  %loadMem_42d3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %PC.i530
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC.i530
  store i64 3, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_42d3a3, %struct.Memory** %MEMORY
  %loadMem_42d3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RDI.i528 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i529
  %108 = sub i64 %107, 8
  %109 = load i64, i64* %RDI.i528
  %110 = load i64, i64* %PC.i527
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i527
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112
  store %struct.Memory* %loadMem_42d3a8, %struct.Memory** %MEMORY
  %loadMem_42d3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RSI.i525 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i526
  %123 = sub i64 %122, 16
  %124 = load i64, i64* %RSI.i525
  %125 = load i64, i64* %PC.i524
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i524
  %127 = inttoptr i64 %123 to i64*
  store i64 %124, i64* %127
  store %struct.Memory* %loadMem_42d3ac, %struct.Memory** %MEMORY
  %loadMem_42d3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 33
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %130 to i64*
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %EDX.i522 = bitcast %union.anon* %133 to i32*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %136 to i64*
  %137 = load i64, i64* %RBP.i523
  %138 = sub i64 %137, 20
  %139 = load i32, i32* %EDX.i522
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %PC.i521
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC.i521
  %143 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %143
  store %struct.Memory* %loadMem_42d3b0, %struct.Memory** %MEMORY
  %loadMem_42d3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i520
  %154 = sub i64 %153, 32
  %155 = load i64, i64* %RCX.i519
  %156 = load i64, i64* %PC.i518
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC.i518
  %158 = inttoptr i64 %154 to i64*
  store i64 %155, i64* %158
  store %struct.Memory* %loadMem_42d3b3, %struct.Memory** %MEMORY
  %loadMem_42d3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RBP.i517
  %169 = sub i64 %168, 8
  %170 = load i64, i64* %PC.i515
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC.i515
  %172 = inttoptr i64 %169 to i64*
  %173 = load i64, i64* %172
  store i64 %173, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_42d3b7, %struct.Memory** %MEMORY
  %loadMem_42d3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RAX.i513
  %184 = load i64, i64* %RCX.i514
  %185 = add i64 %184, 34220
  %186 = load i64, i64* %PC.i512
  %187 = add i64 %186, 6
  store i64 %187, i64* %PC.i512
  %188 = trunc i64 %183 to i32
  %189 = inttoptr i64 %185 to i32*
  %190 = load i32, i32* %189
  %191 = sub i32 %188, %190
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RAX.i513, align 8
  %193 = icmp ult i32 %188, %190
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %194, i8* %195, align 1
  %196 = and i32 %191, 255
  %197 = call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %200, i8* %201, align 1
  %202 = xor i32 %190, %188
  %203 = xor i32 %202, %191
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %206, i8* %207, align 1
  %208 = icmp eq i32 %191, 0
  %209 = zext i1 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %209, i8* %210, align 1
  %211 = lshr i32 %191, 31
  %212 = trunc i32 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %212, i8* %213, align 1
  %214 = lshr i32 %188, 31
  %215 = lshr i32 %190, 31
  %216 = xor i32 %215, %214
  %217 = xor i32 %211, %214
  %218 = add i32 %217, %216
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %220, i8* %221, align 1
  store %struct.Memory* %loadMem_42d3bb, %struct.Memory** %MEMORY
  %loadMem_42d3c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %EAX.i510 = bitcast %union.anon* %227 to i32*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i511
  %232 = sub i64 %231, 452
  %233 = load i32, i32* %EAX.i510
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC.i509
  %236 = add i64 %235, 6
  store i64 %236, i64* %PC.i509
  %237 = inttoptr i64 %232 to i32*
  store i32 %233, i32* %237
  store %struct.Memory* %loadMem_42d3c1, %struct.Memory** %MEMORY
  %loadMem_42d3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 15
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i508
  %248 = sub i64 %247, 16
  %249 = load i64, i64* %PC.i506
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC.i506
  %251 = inttoptr i64 %248 to i64*
  %252 = load i64, i64* %251
  store i64 %252, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_42d3c7, %struct.Memory** %MEMORY
  %loadMem_42d3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 9
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RSI.i504 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i505
  %263 = sub i64 %262, 8
  %264 = load i64, i64* %PC.i503
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC.i503
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266
  store i64 %267, i64* %RSI.i504, align 8
  store %struct.Memory* %loadMem_42d3cb, %struct.Memory** %MEMORY
  %loadMem_42d3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RCX.i501 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 11
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RDI.i502 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %RCX.i501
  %278 = load i64, i64* %PC.i500
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC.i500
  store i64 %277, i64* %RDI.i502, align 8
  store %struct.Memory* %loadMem_42d3cf, %struct.Memory** %MEMORY
  %loadMem_42d3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RDX.i498 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 17
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %R8.i499 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %R8.i499
  %290 = load i64, i64* %PC.i497
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC.i497
  store i64 %289, i64* %RDX.i498, align 8
  store %struct.Memory* %loadMem_42d3d2, %struct.Memory** %MEMORY
  %loadMem1_42d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %PC.i496
  %296 = add i64 %295, -180965
  %297 = load i64, i64* %PC.i496
  %298 = add i64 %297, 5
  %299 = load i64, i64* %PC.i496
  %300 = add i64 %299, 5
  store i64 %300, i64* %PC.i496
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = add i64 %302, -8
  %304 = inttoptr i64 %303 to i64*
  store i64 %298, i64* %304
  store i64 %303, i64* %301, align 8
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %296, i64* %305, align 8
  store %struct.Memory* %loadMem1_42d3d5, %struct.Memory** %MEMORY
  %loadMem2_42d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d3d5 = load i64, i64* %3
  %306 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memcpy to i64), %struct.Memory* %loadMem2_42d3d5)
  store %struct.Memory* %306, %struct.Memory** %MEMORY
  %loadMem_42d3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 15
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RBP.i493
  %314 = sub i64 %313, 36
  %315 = load i64, i64* %PC.i492
  %316 = add i64 %315, 7
  store i64 %316, i64* %PC.i492
  %317 = inttoptr i64 %314 to i32*
  store i32 21, i32* %317
  store %struct.Memory* %loadMem_42d3da, %struct.Memory** %MEMORY
  br label %block_.L_42d3e1

block_.L_42d3e1:                                  ; preds = %block_.L_42d43f, %entry
  %loadMem_42d3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 15
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %323 to i64*
  %324 = load i64, i64* %RBP.i491
  %325 = sub i64 %324, 36
  %326 = load i64, i64* %PC.i490
  %327 = add i64 %326, 7
  store i64 %327, i64* %PC.i490
  %328 = inttoptr i64 %325 to i32*
  %329 = load i32, i32* %328
  %330 = sub i32 %329, 400
  %331 = icmp ult i32 %329, 400
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %332, i8* %333, align 1
  %334 = and i32 %330, 255
  %335 = call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %338, i8* %339, align 1
  %340 = xor i32 %329, 400
  %341 = xor i32 %340, %330
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %344, i8* %345, align 1
  %346 = icmp eq i32 %330, 0
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %347, i8* %348, align 1
  %349 = lshr i32 %330, 31
  %350 = trunc i32 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %350, i8* %351, align 1
  %352 = lshr i32 %329, 31
  %353 = xor i32 %349, %352
  %354 = add i32 %353, %352
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %356, i8* %357, align 1
  store %struct.Memory* %loadMem_42d3e1, %struct.Memory** %MEMORY
  %loadMem_42d3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %PC.i489
  %362 = add i64 %361, 101
  %363 = load i64, i64* %PC.i489
  %364 = add i64 %363, 6
  %365 = load i64, i64* %PC.i489
  %366 = add i64 %365, 6
  store i64 %366, i64* %PC.i489
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %368 = load i8, i8* %367, align 1
  %369 = icmp ne i8 %368, 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %371 = load i8, i8* %370, align 1
  %372 = icmp ne i8 %371, 0
  %373 = xor i1 %369, %372
  %374 = xor i1 %373, true
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %BRANCH_TAKEN, align 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %377 = select i1 %373, i64 %364, i64 %362
  store i64 %377, i64* %376, align 8
  store %struct.Memory* %loadMem_42d3e8, %struct.Memory** %MEMORY
  %loadBr_42d3e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d3e8 = icmp eq i8 %loadBr_42d3e8, 1
  br i1 %cmpBr_42d3e8, label %block_.L_42d44d, label %block_42d3ee

block_42d3ee:                                     ; preds = %block_.L_42d3e1
  %loadMem_42d3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i488
  %388 = sub i64 %387, 36
  %389 = load i64, i64* %PC.i486
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC.i486
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_42d3ee, %struct.Memory** %MEMORY
  %loadMem_42d3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RAX.i484
  %404 = add i64 %403, 12099168
  %405 = load i64, i64* %PC.i483
  %406 = add i64 %405, 8
  store i64 %406, i64* %PC.i483
  %407 = inttoptr i64 %404 to i8*
  %408 = load i8, i8* %407
  %409 = zext i8 %408 to i64
  store i64 %409, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_42d3f2, %struct.Memory** %MEMORY
  %loadMem_42d3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 5
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %ECX.i482 = bitcast %union.anon* %415 to i32*
  %416 = load i32, i32* %ECX.i482
  %417 = zext i32 %416 to i64
  %418 = load i64, i64* %PC.i481
  %419 = add i64 %418, 3
  store i64 %419, i64* %PC.i481
  %420 = sub i32 %416, 3
  %421 = icmp ult i32 %416, 3
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %422, i8* %423, align 1
  %424 = and i32 %420, 255
  %425 = call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %428, i8* %429, align 1
  %430 = xor i64 3, %417
  %431 = trunc i64 %430 to i32
  %432 = xor i32 %431, %420
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %435, i8* %436, align 1
  %437 = icmp eq i32 %420, 0
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %438, i8* %439, align 1
  %440 = lshr i32 %420, 31
  %441 = trunc i32 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %441, i8* %442, align 1
  %443 = lshr i32 %416, 31
  %444 = xor i32 %440, %443
  %445 = add i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %447, i8* %448, align 1
  store %struct.Memory* %loadMem_42d3fa, %struct.Memory** %MEMORY
  %loadMem_42d3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i480
  %453 = add i64 %452, 61
  %454 = load i64, i64* %PC.i480
  %455 = add i64 %454, 6
  %456 = load i64, i64* %PC.i480
  %457 = add i64 %456, 6
  store i64 %457, i64* %PC.i480
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %459 = load i8, i8* %458, align 1
  store i8 %459, i8* %BRANCH_TAKEN, align 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %461 = icmp ne i8 %459, 0
  %462 = select i1 %461, i64 %453, i64 %455
  store i64 %462, i64* %460, align 8
  store %struct.Memory* %loadMem_42d3fd, %struct.Memory** %MEMORY
  %loadBr_42d3fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d3fd = icmp eq i8 %loadBr_42d3fd, 1
  br i1 %cmpBr_42d3fd, label %block_.L_42d43a, label %block_42d403

block_42d403:                                     ; preds = %block_42d3ee
  %loadMem_42d403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 33
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %465 to i64*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 15
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %RBP.i479
  %473 = sub i64 %472, 16
  %474 = load i64, i64* %PC.i477
  %475 = add i64 %474, 4
  store i64 %475, i64* %PC.i477
  %476 = inttoptr i64 %473 to i64*
  %477 = load i64, i64* %476
  store i64 %477, i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_42d403, %struct.Memory** %MEMORY
  %loadMem_42d407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 5
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 15
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %486 to i64*
  %487 = load i64, i64* %RBP.i476
  %488 = sub i64 %487, 36
  %489 = load i64, i64* %PC.i474
  %490 = add i64 %489, 4
  store i64 %490, i64* %PC.i474
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491
  %493 = sext i32 %492 to i64
  store i64 %493, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_42d407, %struct.Memory** %MEMORY
  %loadMem_42d40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 5
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 7
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RDX.i473 = bitcast %union.anon* %505 to i64*
  %506 = load i64, i64* %RAX.i471
  %507 = load i64, i64* %RCX.i472
  %508 = add i64 %507, %506
  %509 = load i64, i64* %PC.i470
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC.i470
  %511 = inttoptr i64 %508 to i8*
  %512 = load i8, i8* %511
  %513 = sext i8 %512 to i64
  %514 = and i64 %513, 4294967295
  store i64 %514, i64* %RDX.i473, align 8
  store %struct.Memory* %loadMem_42d40b, %struct.Memory** %MEMORY
  %loadMem_42d40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 7
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %EDX.i469 = bitcast %union.anon* %520 to i32*
  %521 = load i32, i32* %EDX.i469
  %522 = zext i32 %521 to i64
  %523 = load i64, i64* %PC.i468
  %524 = add i64 %523, 3
  store i64 %524, i64* %PC.i468
  %525 = sub i32 %521, 2
  %526 = icmp ult i32 %521, 2
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %527, i8* %528, align 1
  %529 = and i32 %525, 255
  %530 = call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %533, i8* %534, align 1
  %535 = xor i64 2, %522
  %536 = trunc i64 %535 to i32
  %537 = xor i32 %536, %525
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %540, i8* %541, align 1
  %542 = icmp eq i32 %525, 0
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %543, i8* %544, align 1
  %545 = lshr i32 %525, 31
  %546 = trunc i32 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %546, i8* %547, align 1
  %548 = lshr i32 %521, 31
  %549 = xor i32 %545, %548
  %550 = add i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %552, i8* %553, align 1
  store %struct.Memory* %loadMem_42d40f, %struct.Memory** %MEMORY
  %loadMem_42d412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %PC.i467
  %558 = add i64 %557, 23
  %559 = load i64, i64* %PC.i467
  %560 = add i64 %559, 6
  %561 = load i64, i64* %PC.i467
  %562 = add i64 %561, 6
  store i64 %562, i64* %PC.i467
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %564 = load i8, i8* %563, align 1
  %565 = icmp eq i8 %564, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %BRANCH_TAKEN, align 1
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %568 = select i1 %565, i64 %558, i64 %560
  store i64 %568, i64* %567, align 8
  store %struct.Memory* %loadMem_42d412, %struct.Memory** %MEMORY
  %loadBr_42d412 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d412 = icmp eq i8 %loadBr_42d412, 1
  br i1 %cmpBr_42d412, label %block_.L_42d429, label %block_42d418

block_42d418:                                     ; preds = %block_42d403
  %loadMem_42d418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 15
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %RBP.i466
  %579 = sub i64 %578, 36
  %580 = load i64, i64* %PC.i464
  %581 = add i64 %580, 4
  store i64 %581, i64* %PC.i464
  %582 = inttoptr i64 %579 to i32*
  %583 = load i32, i32* %582
  %584 = sext i32 %583 to i64
  store i64 %584, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_42d418, %struct.Memory** %MEMORY
  %loadMem_42d41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 15
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RBP.i463
  %595 = load i64, i64* %RAX.i462
  %596 = add i64 %594, -448
  %597 = add i64 %596, %595
  %598 = load i64, i64* %PC.i461
  %599 = add i64 %598, 8
  store i64 %599, i64* %PC.i461
  %600 = inttoptr i64 %597 to i8*
  store i8 1, i8* %600
  store %struct.Memory* %loadMem_42d41c, %struct.Memory** %MEMORY
  %loadMem_42d424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %603 to i64*
  %604 = load i64, i64* %PC.i460
  %605 = add i64 %604, 17
  %606 = load i64, i64* %PC.i460
  %607 = add i64 %606, 5
  store i64 %607, i64* %PC.i460
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %605, i64* %608, align 8
  store %struct.Memory* %loadMem_42d424, %struct.Memory** %MEMORY
  br label %block_.L_42d435

block_.L_42d429:                                  ; preds = %block_42d403
  %loadMem_42d429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i459
  %619 = sub i64 %618, 36
  %620 = load i64, i64* %PC.i457
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC.i457
  %622 = inttoptr i64 %619 to i32*
  %623 = load i32, i32* %622
  %624 = sext i32 %623 to i64
  store i64 %624, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_42d429, %struct.Memory** %MEMORY
  %loadMem_42d42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 15
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %RBP.i456
  %635 = load i64, i64* %RAX.i455
  %636 = add i64 %634, -448
  %637 = add i64 %636, %635
  %638 = load i64, i64* %PC.i454
  %639 = add i64 %638, 8
  store i64 %639, i64* %PC.i454
  %640 = inttoptr i64 %637 to i8*
  store i8 0, i8* %640
  store %struct.Memory* %loadMem_42d42d, %struct.Memory** %MEMORY
  br label %block_.L_42d435

block_.L_42d435:                                  ; preds = %block_.L_42d429, %block_42d418
  %loadMem_42d435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %643 to i64*
  %644 = load i64, i64* %PC.i453
  %645 = add i64 %644, 5
  %646 = load i64, i64* %PC.i453
  %647 = add i64 %646, 5
  store i64 %647, i64* %PC.i453
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %645, i64* %648, align 8
  store %struct.Memory* %loadMem_42d435, %struct.Memory** %MEMORY
  br label %block_.L_42d43a

block_.L_42d43a:                                  ; preds = %block_.L_42d435, %block_42d3ee
  %loadMem_42d43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %PC.i452
  %653 = add i64 %652, 5
  %654 = load i64, i64* %PC.i452
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC.i452
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %653, i64* %656, align 8
  store %struct.Memory* %loadMem_42d43a, %struct.Memory** %MEMORY
  br label %block_.L_42d43f

block_.L_42d43f:                                  ; preds = %block_.L_42d43a
  %loadMem_42d43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 15
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %RBP.i451
  %667 = sub i64 %666, 36
  %668 = load i64, i64* %PC.i449
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC.i449
  %670 = inttoptr i64 %667 to i32*
  %671 = load i32, i32* %670
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_42d43f, %struct.Memory** %MEMORY
  %loadMem_42d442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 1
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %RAX.i448
  %680 = load i64, i64* %PC.i447
  %681 = add i64 %680, 3
  store i64 %681, i64* %PC.i447
  %682 = trunc i64 %679 to i32
  %683 = add i32 1, %682
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RAX.i448, align 8
  %685 = icmp ult i32 %683, %682
  %686 = icmp ult i32 %683, 1
  %687 = or i1 %685, %686
  %688 = zext i1 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %688, i8* %689, align 1
  %690 = and i32 %683, 255
  %691 = call i32 @llvm.ctpop.i32(i32 %690)
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  %694 = xor i8 %693, 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %694, i8* %695, align 1
  %696 = xor i64 1, %679
  %697 = trunc i64 %696 to i32
  %698 = xor i32 %697, %683
  %699 = lshr i32 %698, 4
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %701, i8* %702, align 1
  %703 = icmp eq i32 %683, 0
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %704, i8* %705, align 1
  %706 = lshr i32 %683, 31
  %707 = trunc i32 %706 to i8
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %707, i8* %708, align 1
  %709 = lshr i32 %682, 31
  %710 = xor i32 %706, %709
  %711 = add i32 %710, %706
  %712 = icmp eq i32 %711, 2
  %713 = zext i1 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %713, i8* %714, align 1
  store %struct.Memory* %loadMem_42d442, %struct.Memory** %MEMORY
  %loadMem_42d445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 1
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %EAX.i445 = bitcast %union.anon* %720 to i32*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 15
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %RBP.i446
  %725 = sub i64 %724, 36
  %726 = load i32, i32* %EAX.i445
  %727 = zext i32 %726 to i64
  %728 = load i64, i64* %PC.i444
  %729 = add i64 %728, 3
  store i64 %729, i64* %PC.i444
  %730 = inttoptr i64 %725 to i32*
  store i32 %726, i32* %730
  store %struct.Memory* %loadMem_42d445, %struct.Memory** %MEMORY
  %loadMem_42d448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %PC.i443
  %735 = add i64 %734, -103
  %736 = load i64, i64* %PC.i443
  %737 = add i64 %736, 5
  store i64 %737, i64* %PC.i443
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %735, i64* %738, align 8
  store %struct.Memory* %loadMem_42d448, %struct.Memory** %MEMORY
  br label %block_.L_42d3e1

block_.L_42d44d:                                  ; preds = %block_.L_42d3e1
  %loadMem_42d44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 11
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RDI.i442 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %PC.i441
  %746 = add i64 %745, 10
  store i64 %746, i64* %PC.i441
  store i64 ptrtoint (%G__0x42d830_type* @G__0x42d830 to i64), i64* %RDI.i442, align 8
  store %struct.Memory* %loadMem_42d44d, %struct.Memory** %MEMORY
  %loadMem_42d457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 33
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 7
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RDX.i440 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %PC.i439
  %754 = add i64 %753, 10
  store i64 %754, i64* %PC.i439
  store i64 ptrtoint (%G__0x7b21c0_type* @G__0x7b21c0 to i64), i64* %RDX.i440, align 8
  store %struct.Memory* %loadMem_42d457, %struct.Memory** %MEMORY
  %loadMem_42d461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 19
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %R9D.i438 = bitcast %union.anon* %760 to i32*
  %761 = bitcast i32* %R9D.i438 to i64*
  %762 = load i64, i64* %PC.i437
  %763 = add i64 %762, 6
  store i64 %763, i64* %PC.i437
  store i64 1, i64* %761, align 8
  store %struct.Memory* %loadMem_42d461, %struct.Memory** %MEMORY
  %loadMem_42d467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 15
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 17
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %R8.i436 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %RBP.i435
  %774 = sub i64 %773, 448
  %775 = load i64, i64* %PC.i434
  %776 = add i64 %775, 7
  store i64 %776, i64* %PC.i434
  store i64 %774, i64* %R8.i436, align 8
  store %struct.Memory* %loadMem_42d467, %struct.Memory** %MEMORY
  %loadMem_42d46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 1
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 15
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %785 to i64*
  %786 = load i64, i64* %RBP.i433
  %787 = sub i64 %786, 16
  %788 = load i64, i64* %PC.i431
  %789 = add i64 %788, 4
  store i64 %789, i64* %PC.i431
  %790 = inttoptr i64 %787 to i64*
  %791 = load i64, i64* %790
  store i64 %791, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_42d46e, %struct.Memory** %MEMORY
  %loadMem_42d472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %RAX.i430
  %799 = add i64 %798, 35668
  %800 = load i64, i64* %PC.i429
  %801 = add i64 %800, 10
  store i64 %801, i64* %PC.i429
  %802 = inttoptr i64 %799 to i32*
  store i32 0, i32* %802
  store %struct.Memory* %loadMem_42d472, %struct.Memory** %MEMORY
  %loadMem_42d47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 1
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 15
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %811 to i64*
  %812 = load i64, i64* %RBP.i428
  %813 = sub i64 %812, 16
  %814 = load i64, i64* %PC.i426
  %815 = add i64 %814, 4
  store i64 %815, i64* %PC.i426
  %816 = inttoptr i64 %813 to i64*
  %817 = load i64, i64* %816
  store i64 %817, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_42d47c, %struct.Memory** %MEMORY
  %loadMem_42d480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %RAX.i425
  %825 = load i64, i64* %PC.i424
  %826 = add i64 %825, 8
  store i64 %826, i64* %PC.i424
  store i64 %824, i64* bitcast (%G_0xab3940_type* @G_0xab3940 to i64*)
  store %struct.Memory* %loadMem_42d480, %struct.Memory** %MEMORY
  %loadMem_42d488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 9
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RSI.i422 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 15
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %RBP.i423
  %837 = sub i64 %836, 452
  %838 = load i64, i64* %PC.i421
  %839 = add i64 %838, 6
  store i64 %839, i64* %PC.i421
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RSI.i422, align 8
  store %struct.Memory* %loadMem_42d488, %struct.Memory** %MEMORY
  %loadMem_42d48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 1
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 15
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %851 to i64*
  %852 = load i64, i64* %RBP.i420
  %853 = sub i64 %852, 16
  %854 = load i64, i64* %PC.i418
  %855 = add i64 %854, 4
  store i64 %855, i64* %PC.i418
  %856 = inttoptr i64 %853 to i64*
  %857 = load i64, i64* %856
  store i64 %857, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_42d48e, %struct.Memory** %MEMORY
  %loadMem_42d492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 5
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RAX.i416
  %868 = load i64, i64* %PC.i415
  %869 = add i64 %868, 3
  store i64 %869, i64* %PC.i415
  store i64 %867, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_42d492, %struct.Memory** %MEMORY
  %loadMem1_42d495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %PC.i414
  %874 = add i64 %873, 9995
  %875 = load i64, i64* %PC.i414
  %876 = add i64 %875, 5
  %877 = load i64, i64* %PC.i414
  %878 = add i64 %877, 5
  store i64 %878, i64* %PC.i414
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %880 = load i64, i64* %879, align 8
  %881 = add i64 %880, -8
  %882 = inttoptr i64 %881 to i64*
  store i64 %876, i64* %882
  store i64 %881, i64* %879, align 8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %874, i64* %883, align 8
  store %struct.Memory* %loadMem1_42d495, %struct.Memory** %MEMORY
  %loadMem2_42d495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d495 = load i64, i64* %3
  %call2_42d495 = call %struct.Memory* @sub_42fba0.matchpat_goal_anchor(%struct.State* %0, i64 %loadPC_42d495, %struct.Memory* %loadMem2_42d495)
  store %struct.Memory* %call2_42d495, %struct.Memory** %MEMORY
  %loadMem_42d49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 11
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RDI.i412 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 15
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RBP.i413
  %894 = sub i64 %893, 16
  %895 = load i64, i64* %PC.i411
  %896 = add i64 %895, 4
  store i64 %896, i64* %PC.i411
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897
  store i64 %898, i64* %RDI.i412, align 8
  store %struct.Memory* %loadMem_42d49a, %struct.Memory** %MEMORY
  %loadMem_42d49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 9
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RSI.i409 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 15
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %907 to i64*
  %908 = load i64, i64* %RBP.i410
  %909 = sub i64 %908, 452
  %910 = load i64, i64* %PC.i408
  %911 = add i64 %910, 6
  store i64 %911, i64* %PC.i408
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RSI.i409, align 8
  store %struct.Memory* %loadMem_42d49e, %struct.Memory** %MEMORY
  %loadMem1_42d4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %PC.i407
  %919 = add i64 %918, -3492
  %920 = load i64, i64* %PC.i407
  %921 = add i64 %920, 5
  %922 = load i64, i64* %PC.i407
  %923 = add i64 %922, 5
  store i64 %923, i64* %PC.i407
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %925 = load i64, i64* %924, align 8
  %926 = add i64 %925, -8
  %927 = inttoptr i64 %926 to i64*
  store i64 %921, i64* %927
  store i64 %926, i64* %924, align 8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %919, i64* %928, align 8
  store %struct.Memory* %loadMem1_42d4a4, %struct.Memory** %MEMORY
  %loadMem2_42d4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d4a4 = load i64, i64* %3
  %call2_42d4a4 = call %struct.Memory* @sub_42c700.add_marked_intrusions(%struct.State* %0, i64 %loadPC_42d4a4, %struct.Memory* %loadMem2_42d4a4)
  store %struct.Memory* %call2_42d4a4, %struct.Memory** %MEMORY
  %loadMem_42d4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 11
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RDI.i405 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 15
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RBP.i406
  %939 = sub i64 %938, 16
  %940 = load i64, i64* %PC.i404
  %941 = add i64 %940, 4
  store i64 %941, i64* %PC.i404
  %942 = inttoptr i64 %939 to i64*
  %943 = load i64, i64* %942
  store i64 %943, i64* %RDI.i405, align 8
  store %struct.Memory* %loadMem_42d4a9, %struct.Memory** %MEMORY
  %loadMem1_42d4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %PC.i403
  %948 = add i64 %947, -2317
  %949 = load i64, i64* %PC.i403
  %950 = add i64 %949, 5
  %951 = load i64, i64* %PC.i403
  %952 = add i64 %951, 5
  store i64 %952, i64* %PC.i403
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %954 = load i64, i64* %953, align 8
  %955 = add i64 %954, -8
  %956 = inttoptr i64 %955 to i64*
  store i64 %950, i64* %956
  store i64 %955, i64* %953, align 8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %948, i64* %957, align 8
  store %struct.Memory* %loadMem1_42d4ad, %struct.Memory** %MEMORY
  %loadMem2_42d4ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d4ad = load i64, i64* %3
  %call2_42d4ad = call %struct.Memory* @sub_42cba0.reset_unblocked_blocks(%struct.State* %0, i64 %loadPC_42d4ad, %struct.Memory* %loadMem2_42d4ad)
  store %struct.Memory* %call2_42d4ad, %struct.Memory** %MEMORY
  %loadMem_42d4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 9
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %ESI.i401 = bitcast %union.anon* %963 to i32*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 9
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RSI.i402 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RSI.i402
  %968 = load i32, i32* %ESI.i401
  %969 = zext i32 %968 to i64
  %970 = load i64, i64* %PC.i400
  %971 = add i64 %970, 2
  store i64 %971, i64* %PC.i400
  %972 = xor i64 %969, %967
  %973 = trunc i64 %972 to i32
  %974 = and i64 %972, 4294967295
  store i64 %974, i64* %RSI.i402, align 8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %975, align 1
  %976 = and i32 %973, 255
  %977 = call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %980, i8* %981, align 1
  %982 = icmp eq i32 %973, 0
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %983, i8* %984, align 1
  %985 = lshr i32 %973, 31
  %986 = trunc i32 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %986, i8* %987, align 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %988, align 1
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %989, align 1
  store %struct.Memory* %loadMem_42d4b2, %struct.Memory** %MEMORY
  %loadMem_42d4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 19
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %R9D.i399 = bitcast %union.anon* %995 to i32*
  %996 = bitcast i32* %R9D.i399 to i64*
  %997 = load i64, i64* %PC.i398
  %998 = add i64 %997, 6
  store i64 %998, i64* %PC.i398
  store i64 1600, i64* %996, align 8
  store %struct.Memory* %loadMem_42d4b4, %struct.Memory** %MEMORY
  %loadMem_42d4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 19
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %1004 to i32*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 7
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RDX.i397 = bitcast %union.anon* %1007 to i64*
  %1008 = load i32, i32* %R9D.i
  %1009 = zext i32 %1008 to i64
  %1010 = load i64, i64* %PC.i396
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC.i396
  %1012 = and i64 %1009, 4294967295
  store i64 %1012, i64* %RDX.i397, align 8
  store %struct.Memory* %loadMem_42d4ba, %struct.Memory** %MEMORY
  %loadMem_42d4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 1
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 15
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %1021 to i64*
  %1022 = load i64, i64* %RBP.i395
  %1023 = sub i64 %1022, 3664
  %1024 = load i64, i64* %PC.i393
  %1025 = add i64 %1024, 7
  store i64 %1025, i64* %PC.i393
  store i64 %1023, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_42d4bd, %struct.Memory** %MEMORY
  %loadMem_42d4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RBP.i392
  %1033 = sub i64 %1032, 456
  %1034 = load i64, i64* %PC.i391
  %1035 = add i64 %1034, 10
  store i64 %1035, i64* %PC.i391
  %1036 = inttoptr i64 %1033 to i32*
  store i32 2409, i32* %1036
  store %struct.Memory* %loadMem_42d4c4, %struct.Memory** %MEMORY
  %loadMem_42d4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 1
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 11
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %RAX.i389
  %1047 = load i64, i64* %PC.i388
  %1048 = add i64 %1047, 3
  store i64 %1048, i64* %PC.i388
  store i64 %1046, i64* %RDI.i390, align 8
  store %struct.Memory* %loadMem_42d4ce, %struct.Memory** %MEMORY
  %loadMem1_42d4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %PC.i387
  %1053 = add i64 %1052, -181345
  %1054 = load i64, i64* %PC.i387
  %1055 = add i64 %1054, 5
  %1056 = load i64, i64* %PC.i387
  %1057 = add i64 %1056, 5
  store i64 %1057, i64* %PC.i387
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1059 = load i64, i64* %1058, align 8
  %1060 = add i64 %1059, -8
  %1061 = inttoptr i64 %1060 to i64*
  store i64 %1055, i64* %1061
  store i64 %1060, i64* %1058, align 8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1053, i64* %1062, align 8
  store %struct.Memory* %loadMem1_42d4d1, %struct.Memory** %MEMORY
  %loadMem2_42d4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d4d1 = load i64, i64* %3
  %1063 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_42d4d1)
  store %struct.Memory* %1063, %struct.Memory** %MEMORY
  %loadMem_42d4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 33
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 15
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %RBP.i384
  %1071 = sub i64 %1070, 36
  %1072 = load i64, i64* %PC.i383
  %1073 = add i64 %1072, 7
  store i64 %1073, i64* %PC.i383
  %1074 = inttoptr i64 %1071 to i32*
  store i32 21, i32* %1074
  store %struct.Memory* %loadMem_42d4d6, %struct.Memory** %MEMORY
  br label %block_.L_42d4dd

block_.L_42d4dd:                                  ; preds = %block_.L_42d593, %block_.L_42d44d
  %loadMem_42d4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 33
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 15
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RBP.i382
  %1082 = sub i64 %1081, 36
  %1083 = load i64, i64* %PC.i381
  %1084 = add i64 %1083, 7
  store i64 %1084, i64* %PC.i381
  %1085 = inttoptr i64 %1082 to i32*
  %1086 = load i32, i32* %1085
  %1087 = sub i32 %1086, 400
  %1088 = icmp ult i32 %1086, 400
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1089, i8* %1090, align 1
  %1091 = and i32 %1087, 255
  %1092 = call i32 @llvm.ctpop.i32(i32 %1091)
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = xor i8 %1094, 1
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1095, i8* %1096, align 1
  %1097 = xor i32 %1086, 400
  %1098 = xor i32 %1097, %1087
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1101, i8* %1102, align 1
  %1103 = icmp eq i32 %1087, 0
  %1104 = zext i1 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1104, i8* %1105, align 1
  %1106 = lshr i32 %1087, 31
  %1107 = trunc i32 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1107, i8* %1108, align 1
  %1109 = lshr i32 %1086, 31
  %1110 = xor i32 %1106, %1109
  %1111 = add i32 %1110, %1109
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1113, i8* %1114, align 1
  store %struct.Memory* %loadMem_42d4dd, %struct.Memory** %MEMORY
  %loadMem_42d4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %PC.i380
  %1119 = add i64 %1118, 189
  %1120 = load i64, i64* %PC.i380
  %1121 = add i64 %1120, 6
  %1122 = load i64, i64* %PC.i380
  %1123 = add i64 %1122, 6
  store i64 %1123, i64* %PC.i380
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1125 = load i8, i8* %1124, align 1
  %1126 = icmp ne i8 %1125, 0
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1128 = load i8, i8* %1127, align 1
  %1129 = icmp ne i8 %1128, 0
  %1130 = xor i1 %1126, %1129
  %1131 = xor i1 %1130, true
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %BRANCH_TAKEN, align 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1134 = select i1 %1130, i64 %1121, i64 %1119
  store i64 %1134, i64* %1133, align 8
  store %struct.Memory* %loadMem_42d4e4, %struct.Memory** %MEMORY
  %loadBr_42d4e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d4e4 = icmp eq i8 %loadBr_42d4e4, 1
  br i1 %cmpBr_42d4e4, label %block_.L_42d5a1, label %block_42d4ea

block_42d4ea:                                     ; preds = %block_.L_42d4dd
  %loadMem_42d4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 1
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 15
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %RBP.i379
  %1145 = sub i64 %1144, 36
  %1146 = load i64, i64* %PC.i377
  %1147 = add i64 %1146, 4
  store i64 %1147, i64* %PC.i377
  %1148 = inttoptr i64 %1145 to i32*
  %1149 = load i32, i32* %1148
  %1150 = sext i32 %1149 to i64
  store i64 %1150, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_42d4ea, %struct.Memory** %MEMORY
  %loadMem_42d4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 5
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RAX.i375
  %1161 = add i64 %1160, 12099168
  %1162 = load i64, i64* %PC.i374
  %1163 = add i64 %1162, 8
  store i64 %1163, i64* %PC.i374
  %1164 = inttoptr i64 %1161 to i8*
  %1165 = load i8, i8* %1164
  %1166 = zext i8 %1165 to i64
  store i64 %1166, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_42d4ee, %struct.Memory** %MEMORY
  %loadMem_42d4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 5
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %ECX.i373 = bitcast %union.anon* %1172 to i32*
  %1173 = load i32, i32* %ECX.i373
  %1174 = zext i32 %1173 to i64
  %1175 = load i64, i64* %PC.i372
  %1176 = add i64 %1175, 3
  store i64 %1176, i64* %PC.i372
  %1177 = sub i32 %1173, 3
  %1178 = icmp ult i32 %1173, 3
  %1179 = zext i1 %1178 to i8
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1179, i8* %1180, align 1
  %1181 = and i32 %1177, 255
  %1182 = call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1185, i8* %1186, align 1
  %1187 = xor i64 3, %1174
  %1188 = trunc i64 %1187 to i32
  %1189 = xor i32 %1188, %1177
  %1190 = lshr i32 %1189, 4
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1192, i8* %1193, align 1
  %1194 = icmp eq i32 %1177, 0
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1195, i8* %1196, align 1
  %1197 = lshr i32 %1177, 31
  %1198 = trunc i32 %1197 to i8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1198, i8* %1199, align 1
  %1200 = lshr i32 %1173, 31
  %1201 = xor i32 %1197, %1200
  %1202 = add i32 %1201, %1200
  %1203 = icmp eq i32 %1202, 2
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1204, i8* %1205, align 1
  store %struct.Memory* %loadMem_42d4f6, %struct.Memory** %MEMORY
  %loadMem_42d4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %PC.i371
  %1210 = add i64 %1209, 149
  %1211 = load i64, i64* %PC.i371
  %1212 = add i64 %1211, 6
  %1213 = load i64, i64* %PC.i371
  %1214 = add i64 %1213, 6
  store i64 %1214, i64* %PC.i371
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1216 = load i8, i8* %1215, align 1
  store i8 %1216, i8* %BRANCH_TAKEN, align 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1218 = icmp ne i8 %1216, 0
  %1219 = select i1 %1218, i64 %1210, i64 %1212
  store i64 %1219, i64* %1217, align 8
  store %struct.Memory* %loadMem_42d4f9, %struct.Memory** %MEMORY
  %loadBr_42d4f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d4f9 = icmp eq i8 %loadBr_42d4f9, 1
  br i1 %cmpBr_42d4f9, label %block_.L_42d58e, label %block_42d4ff

block_42d4ff:                                     ; preds = %block_42d4ea
  %loadMem_42d4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 15
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %RBP.i370
  %1227 = sub i64 %1226, 452
  %1228 = load i64, i64* %PC.i369
  %1229 = add i64 %1228, 7
  store i64 %1229, i64* %PC.i369
  %1230 = inttoptr i64 %1227 to i32*
  %1231 = load i32, i32* %1230
  %1232 = sub i32 %1231, 1
  %1233 = icmp ult i32 %1231, 1
  %1234 = zext i1 %1233 to i8
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1234, i8* %1235, align 1
  %1236 = and i32 %1232, 255
  %1237 = call i32 @llvm.ctpop.i32(i32 %1236)
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = xor i8 %1239, 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1240, i8* %1241, align 1
  %1242 = xor i32 %1231, 1
  %1243 = xor i32 %1242, %1232
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1246, i8* %1247, align 1
  %1248 = icmp eq i32 %1232, 0
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1249, i8* %1250, align 1
  %1251 = lshr i32 %1232, 31
  %1252 = trunc i32 %1251 to i8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1252, i8* %1253, align 1
  %1254 = lshr i32 %1231, 31
  %1255 = xor i32 %1251, %1254
  %1256 = add i32 %1255, %1254
  %1257 = icmp eq i32 %1256, 2
  %1258 = zext i1 %1257 to i8
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1258, i8* %1259, align 1
  store %struct.Memory* %loadMem_42d4ff, %struct.Memory** %MEMORY
  %loadMem_42d506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 33
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %PC.i368
  %1264 = add i64 %1263, 71
  %1265 = load i64, i64* %PC.i368
  %1266 = add i64 %1265, 6
  %1267 = load i64, i64* %PC.i368
  %1268 = add i64 %1267, 6
  store i64 %1268, i64* %PC.i368
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1270 = load i8, i8* %1269, align 1
  %1271 = icmp eq i8 %1270, 0
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %BRANCH_TAKEN, align 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1274 = select i1 %1271, i64 %1264, i64 %1266
  store i64 %1274, i64* %1273, align 8
  store %struct.Memory* %loadMem_42d506, %struct.Memory** %MEMORY
  %loadBr_42d506 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d506 = icmp eq i8 %loadBr_42d506, 1
  br i1 %cmpBr_42d506, label %block_.L_42d54d, label %block_42d50c

block_42d50c:                                     ; preds = %block_42d4ff
  %loadMem_42d50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1278, i64 0, i64 0
  %YMM0.i367 = bitcast %union.VectorReg* %1279 to %"class.std::bitset"*
  %1280 = bitcast %"class.std::bitset"* %YMM0.i367 to i8*
  %1281 = load i64, i64* %PC.i366
  %1282 = add i64 %1281, ptrtoint (%G_0xb5a74__rip__type* @G_0xb5a74__rip_ to i64)
  %1283 = load i64, i64* %PC.i366
  %1284 = add i64 %1283, 8
  store i64 %1284, i64* %PC.i366
  %1285 = inttoptr i64 %1282 to double*
  %1286 = load double, double* %1285
  %1287 = bitcast i8* %1280 to double*
  store double %1286, double* %1287, align 1
  %1288 = getelementptr inbounds i8, i8* %1280, i64 8
  %1289 = bitcast i8* %1288 to double*
  store double 0.000000e+00, double* %1289, align 1
  store %struct.Memory* %loadMem_42d50c, %struct.Memory** %MEMORY
  %loadMem_42d514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1294 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1293, i64 0, i64 1
  %YMM1.i365 = bitcast %union.VectorReg* %1294 to %"class.std::bitset"*
  %1295 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %1296 = load i64, i64* %PC.i364
  %1297 = add i64 %1296, ptrtoint (%G_0xb5c00__rip__type* @G_0xb5c00__rip_ to i64)
  %1298 = load i64, i64* %PC.i364
  %1299 = add i64 %1298, 8
  store i64 %1299, i64* %PC.i364
  %1300 = inttoptr i64 %1297 to float*
  %1301 = load float, float* %1300
  %1302 = bitcast i8* %1295 to float*
  store float %1301, float* %1302, align 1
  %1303 = getelementptr inbounds i8, i8* %1295, i64 4
  %1304 = bitcast i8* %1303 to float*
  store float 0.000000e+00, float* %1304, align 1
  %1305 = getelementptr inbounds i8, i8* %1295, i64 8
  %1306 = bitcast i8* %1305 to float*
  store float 0.000000e+00, float* %1306, align 1
  %1307 = getelementptr inbounds i8, i8* %1295, i64 12
  %1308 = bitcast i8* %1307 to float*
  store float 0.000000e+00, float* %1308, align 1
  store %struct.Memory* %loadMem_42d514, %struct.Memory** %MEMORY
  %loadMem_42d51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 1
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RAX.i362 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 15
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RBP.i363
  %1319 = sub i64 %1318, 16
  %1320 = load i64, i64* %PC.i361
  %1321 = add i64 %1320, 4
  store i64 %1321, i64* %PC.i361
  %1322 = inttoptr i64 %1319 to i64*
  %1323 = load i64, i64* %1322
  store i64 %1323, i64* %RAX.i362, align 8
  store %struct.Memory* %loadMem_42d51c, %struct.Memory** %MEMORY
  %loadMem_42d520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 5
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RBP.i360
  %1334 = sub i64 %1333, 36
  %1335 = load i64, i64* %PC.i358
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i358
  %1337 = inttoptr i64 %1334 to i32*
  %1338 = load i32, i32* %1337
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_42d520, %struct.Memory** %MEMORY
  %loadMem_42d524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 5
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1350 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1349, i64 0, i64 1
  %YMM1.i357 = bitcast %union.VectorReg* %1350 to %"class.std::bitset"*
  %1351 = bitcast %"class.std::bitset"* %YMM1.i357 to i8*
  %1352 = bitcast %"class.std::bitset"* %YMM1.i357 to i8*
  %1353 = load i64, i64* %RAX.i355
  %1354 = load i64, i64* %RCX.i356
  %1355 = mul i64 %1354, 4
  %1356 = add i64 %1353, 10000
  %1357 = add i64 %1356, %1355
  %1358 = load i64, i64* %PC.i354
  %1359 = add i64 %1358, 9
  store i64 %1359, i64* %PC.i354
  %1360 = bitcast i8* %1352 to <2 x float>*
  %1361 = load <2 x float>, <2 x float>* %1360, align 1
  %1362 = getelementptr inbounds i8, i8* %1352, i64 8
  %1363 = bitcast i8* %1362 to <2 x i32>*
  %1364 = load <2 x i32>, <2 x i32>* %1363, align 1
  %1365 = inttoptr i64 %1357 to float*
  %1366 = load float, float* %1365
  %1367 = extractelement <2 x float> %1361, i32 0
  %1368 = fmul float %1367, %1366
  %1369 = bitcast i8* %1351 to float*
  store float %1368, float* %1369, align 1
  %1370 = bitcast <2 x float> %1361 to <2 x i32>
  %1371 = extractelement <2 x i32> %1370, i32 1
  %1372 = getelementptr inbounds i8, i8* %1351, i64 4
  %1373 = bitcast i8* %1372 to i32*
  store i32 %1371, i32* %1373, align 1
  %1374 = extractelement <2 x i32> %1364, i32 0
  %1375 = getelementptr inbounds i8, i8* %1351, i64 8
  %1376 = bitcast i8* %1375 to i32*
  store i32 %1374, i32* %1376, align 1
  %1377 = extractelement <2 x i32> %1364, i32 1
  %1378 = getelementptr inbounds i8, i8* %1351, i64 12
  %1379 = bitcast i8* %1378 to i32*
  store i32 %1377, i32* %1379, align 1
  store %struct.Memory* %loadMem_42d524, %struct.Memory** %MEMORY
  %loadMem_42d52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 7
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1386, i64 0, i64 1
  %XMM1.i353 = bitcast %union.VectorReg* %1387 to %union.vec128_t*
  %1388 = bitcast %union.vec128_t* %XMM1.i353 to i8*
  %1389 = load i64, i64* %PC.i351
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %PC.i351
  %1391 = bitcast i8* %1388 to <2 x float>*
  %1392 = load <2 x float>, <2 x float>* %1391, align 1
  %1393 = extractelement <2 x float> %1392, i32 0
  %1394 = call float @llvm.trunc.f32(float %1393)
  %1395 = call float @llvm.fabs.f32(float %1394)
  %1396 = fcmp ogt float %1395, 0x41E0000000000000
  %1397 = fptosi float %1394 to i32
  %1398 = zext i32 %1397 to i64
  %1399 = select i1 %1396, i64 2147483648, i64 %1398
  store i64 %1399, i64* %RDX.i352, align 8
  store %struct.Memory* %loadMem_42d52d, %struct.Memory** %MEMORY
  %loadMem_42d531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 33
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 7
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %EDX.i349 = bitcast %union.anon* %1405 to i32*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1406, i64 0, i64 1
  %YMM1.i350 = bitcast %union.VectorReg* %1407 to %"class.std::bitset"*
  %1408 = bitcast %"class.std::bitset"* %YMM1.i350 to i8*
  %1409 = load i32, i32* %EDX.i349
  %1410 = zext i32 %1409 to i64
  %1411 = load i64, i64* %PC.i348
  %1412 = add i64 %1411, 4
  store i64 %1412, i64* %PC.i348
  %1413 = sitofp i32 %1409 to double
  %1414 = bitcast i8* %1408 to double*
  store double %1413, double* %1414, align 1
  store %struct.Memory* %loadMem_42d531, %struct.Memory** %MEMORY
  %loadMem_42d535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 33
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1418, i64 0, i64 1
  %YMM1.i346 = bitcast %union.VectorReg* %1419 to %"class.std::bitset"*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1421 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1420, i64 0, i64 0
  %XMM0.i347 = bitcast %union.VectorReg* %1421 to %union.vec128_t*
  %1422 = bitcast %"class.std::bitset"* %YMM1.i346 to i8*
  %1423 = bitcast %"class.std::bitset"* %YMM1.i346 to i8*
  %1424 = bitcast %union.vec128_t* %XMM0.i347 to i8*
  %1425 = load i64, i64* %PC.i345
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %PC.i345
  %1427 = bitcast i8* %1423 to double*
  %1428 = load double, double* %1427, align 1
  %1429 = getelementptr inbounds i8, i8* %1423, i64 8
  %1430 = bitcast i8* %1429 to i64*
  %1431 = load i64, i64* %1430, align 1
  %1432 = bitcast i8* %1424 to double*
  %1433 = load double, double* %1432, align 1
  %1434 = fadd double %1428, %1433
  %1435 = bitcast i8* %1422 to double*
  store double %1434, double* %1435, align 1
  %1436 = getelementptr inbounds i8, i8* %1422, i64 8
  %1437 = bitcast i8* %1436 to i64*
  store i64 %1431, i64* %1437, align 1
  store %struct.Memory* %loadMem_42d535, %struct.Memory** %MEMORY
  %loadMem_42d539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 7
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RDX.i343 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1445 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1444, i64 0, i64 1
  %XMM1.i344 = bitcast %union.VectorReg* %1445 to %union.vec128_t*
  %1446 = bitcast %union.vec128_t* %XMM1.i344 to i8*
  %1447 = load i64, i64* %PC.i342
  %1448 = add i64 %1447, 4
  store i64 %1448, i64* %PC.i342
  %1449 = bitcast i8* %1446 to double*
  %1450 = load double, double* %1449, align 1
  %1451 = call double @llvm.trunc.f64(double %1450)
  %1452 = call double @llvm.fabs.f64(double %1451)
  %1453 = fcmp ogt double %1452, 0x41DFFFFFFFC00000
  %1454 = fptosi double %1451 to i32
  %1455 = zext i32 %1454 to i64
  %1456 = select i1 %1453, i64 2147483648, i64 %1455
  store i64 %1456, i64* %RDX.i343, align 8
  store %struct.Memory* %loadMem_42d539, %struct.Memory** %MEMORY
  %loadMem_42d53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 1
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 15
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1465 to i64*
  %1466 = load i64, i64* %RBP.i341
  %1467 = sub i64 %1466, 36
  %1468 = load i64, i64* %PC.i339
  %1469 = add i64 %1468, 4
  store i64 %1469, i64* %PC.i339
  %1470 = inttoptr i64 %1467 to i32*
  %1471 = load i32, i32* %1470
  %1472 = sext i32 %1471 to i64
  store i64 %1472, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_42d53d, %struct.Memory** %MEMORY
  %loadMem_42d541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 7
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %EDX.i336 = bitcast %union.anon* %1478 to i32*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 1
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 15
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RBP.i338
  %1486 = load i64, i64* %RAX.i337
  %1487 = mul i64 %1486, 4
  %1488 = add i64 %1485, -2064
  %1489 = add i64 %1488, %1487
  %1490 = load i32, i32* %EDX.i336
  %1491 = zext i32 %1490 to i64
  %1492 = load i64, i64* %PC.i335
  %1493 = add i64 %1492, 7
  store i64 %1493, i64* %PC.i335
  %1494 = inttoptr i64 %1489 to i32*
  store i32 %1490, i32* %1494
  store %struct.Memory* %loadMem_42d541, %struct.Memory** %MEMORY
  %loadMem_42d548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %PC.i334
  %1499 = add i64 %1498, 65
  %1500 = load i64, i64* %PC.i334
  %1501 = add i64 %1500, 5
  store i64 %1501, i64* %PC.i334
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1499, i64* %1502, align 8
  store %struct.Memory* %loadMem_42d548, %struct.Memory** %MEMORY
  br label %block_.L_42d589

block_.L_42d54d:                                  ; preds = %block_42d4ff
  %loadMem_42d54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1507 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1506, i64 0, i64 0
  %YMM0.i333 = bitcast %union.VectorReg* %1507 to %"class.std::bitset"*
  %1508 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %1509 = load i64, i64* %PC.i332
  %1510 = add i64 %1509, ptrtoint (%G_0xb5a33__rip__type* @G_0xb5a33__rip_ to i64)
  %1511 = load i64, i64* %PC.i332
  %1512 = add i64 %1511, 8
  store i64 %1512, i64* %PC.i332
  %1513 = inttoptr i64 %1510 to double*
  %1514 = load double, double* %1513
  %1515 = bitcast i8* %1508 to double*
  store double %1514, double* %1515, align 1
  %1516 = getelementptr inbounds i8, i8* %1508, i64 8
  %1517 = bitcast i8* %1516 to double*
  store double 0.000000e+00, double* %1517, align 1
  store %struct.Memory* %loadMem_42d54d, %struct.Memory** %MEMORY
  %loadMem_42d555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 33
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1522 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1521, i64 0, i64 1
  %YMM1.i331 = bitcast %union.VectorReg* %1522 to %"class.std::bitset"*
  %1523 = bitcast %"class.std::bitset"* %YMM1.i331 to i8*
  %1524 = load i64, i64* %PC.i330
  %1525 = add i64 %1524, ptrtoint (%G_0xb5bbf__rip__type* @G_0xb5bbf__rip_ to i64)
  %1526 = load i64, i64* %PC.i330
  %1527 = add i64 %1526, 8
  store i64 %1527, i64* %PC.i330
  %1528 = inttoptr i64 %1525 to float*
  %1529 = load float, float* %1528
  %1530 = bitcast i8* %1523 to float*
  store float %1529, float* %1530, align 1
  %1531 = getelementptr inbounds i8, i8* %1523, i64 4
  %1532 = bitcast i8* %1531 to float*
  store float 0.000000e+00, float* %1532, align 1
  %1533 = getelementptr inbounds i8, i8* %1523, i64 8
  %1534 = bitcast i8* %1533 to float*
  store float 0.000000e+00, float* %1534, align 1
  %1535 = getelementptr inbounds i8, i8* %1523, i64 12
  %1536 = bitcast i8* %1535 to float*
  store float 0.000000e+00, float* %1536, align 1
  store %struct.Memory* %loadMem_42d555, %struct.Memory** %MEMORY
  %loadMem_42d55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 1
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 15
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %1545 to i64*
  %1546 = load i64, i64* %RBP.i329
  %1547 = sub i64 %1546, 16
  %1548 = load i64, i64* %PC.i327
  %1549 = add i64 %1548, 4
  store i64 %1549, i64* %PC.i327
  %1550 = inttoptr i64 %1547 to i64*
  %1551 = load i64, i64* %1550
  store i64 %1551, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_42d55d, %struct.Memory** %MEMORY
  %loadMem_42d561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 5
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 15
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RBP.i326
  %1562 = sub i64 %1561, 36
  %1563 = load i64, i64* %PC.i324
  %1564 = add i64 %1563, 4
  store i64 %1564, i64* %PC.i324
  %1565 = inttoptr i64 %1562 to i32*
  %1566 = load i32, i32* %1565
  %1567 = sext i32 %1566 to i64
  store i64 %1567, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_42d561, %struct.Memory** %MEMORY
  %loadMem_42d565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 1
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 5
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1577, i64 0, i64 1
  %YMM1.i323 = bitcast %union.VectorReg* %1578 to %"class.std::bitset"*
  %1579 = bitcast %"class.std::bitset"* %YMM1.i323 to i8*
  %1580 = bitcast %"class.std::bitset"* %YMM1.i323 to i8*
  %1581 = load i64, i64* %RAX.i321
  %1582 = load i64, i64* %RCX.i322
  %1583 = mul i64 %1582, 4
  %1584 = add i64 %1581, 11600
  %1585 = add i64 %1584, %1583
  %1586 = load i64, i64* %PC.i320
  %1587 = add i64 %1586, 9
  store i64 %1587, i64* %PC.i320
  %1588 = bitcast i8* %1580 to <2 x float>*
  %1589 = load <2 x float>, <2 x float>* %1588, align 1
  %1590 = getelementptr inbounds i8, i8* %1580, i64 8
  %1591 = bitcast i8* %1590 to <2 x i32>*
  %1592 = load <2 x i32>, <2 x i32>* %1591, align 1
  %1593 = inttoptr i64 %1585 to float*
  %1594 = load float, float* %1593
  %1595 = extractelement <2 x float> %1589, i32 0
  %1596 = fmul float %1595, %1594
  %1597 = bitcast i8* %1579 to float*
  store float %1596, float* %1597, align 1
  %1598 = bitcast <2 x float> %1589 to <2 x i32>
  %1599 = extractelement <2 x i32> %1598, i32 1
  %1600 = getelementptr inbounds i8, i8* %1579, i64 4
  %1601 = bitcast i8* %1600 to i32*
  store i32 %1599, i32* %1601, align 1
  %1602 = extractelement <2 x i32> %1592, i32 0
  %1603 = getelementptr inbounds i8, i8* %1579, i64 8
  %1604 = bitcast i8* %1603 to i32*
  store i32 %1602, i32* %1604, align 1
  %1605 = extractelement <2 x i32> %1592, i32 1
  %1606 = getelementptr inbounds i8, i8* %1579, i64 12
  %1607 = bitcast i8* %1606 to i32*
  store i32 %1605, i32* %1607, align 1
  store %struct.Memory* %loadMem_42d565, %struct.Memory** %MEMORY
  %loadMem_42d56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 7
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1614, i64 0, i64 1
  %XMM1.i319 = bitcast %union.VectorReg* %1615 to %union.vec128_t*
  %1616 = bitcast %union.vec128_t* %XMM1.i319 to i8*
  %1617 = load i64, i64* %PC.i317
  %1618 = add i64 %1617, 4
  store i64 %1618, i64* %PC.i317
  %1619 = bitcast i8* %1616 to <2 x float>*
  %1620 = load <2 x float>, <2 x float>* %1619, align 1
  %1621 = extractelement <2 x float> %1620, i32 0
  %1622 = call float @llvm.trunc.f32(float %1621)
  %1623 = call float @llvm.fabs.f32(float %1622)
  %1624 = fcmp ogt float %1623, 0x41E0000000000000
  %1625 = fptosi float %1622 to i32
  %1626 = zext i32 %1625 to i64
  %1627 = select i1 %1624, i64 2147483648, i64 %1626
  store i64 %1627, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_42d56e, %struct.Memory** %MEMORY
  %loadMem_42d572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 7
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %EDX.i315 = bitcast %union.anon* %1633 to i32*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1634, i64 0, i64 1
  %YMM1.i316 = bitcast %union.VectorReg* %1635 to %"class.std::bitset"*
  %1636 = bitcast %"class.std::bitset"* %YMM1.i316 to i8*
  %1637 = load i32, i32* %EDX.i315
  %1638 = zext i32 %1637 to i64
  %1639 = load i64, i64* %PC.i314
  %1640 = add i64 %1639, 4
  store i64 %1640, i64* %PC.i314
  %1641 = sitofp i32 %1637 to double
  %1642 = bitcast i8* %1636 to double*
  store double %1641, double* %1642, align 1
  store %struct.Memory* %loadMem_42d572, %struct.Memory** %MEMORY
  %loadMem_42d576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1647 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1646, i64 0, i64 1
  %YMM1.i312 = bitcast %union.VectorReg* %1647 to %"class.std::bitset"*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1649 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1648, i64 0, i64 0
  %XMM0.i313 = bitcast %union.VectorReg* %1649 to %union.vec128_t*
  %1650 = bitcast %"class.std::bitset"* %YMM1.i312 to i8*
  %1651 = bitcast %"class.std::bitset"* %YMM1.i312 to i8*
  %1652 = bitcast %union.vec128_t* %XMM0.i313 to i8*
  %1653 = load i64, i64* %PC.i311
  %1654 = add i64 %1653, 4
  store i64 %1654, i64* %PC.i311
  %1655 = bitcast i8* %1651 to double*
  %1656 = load double, double* %1655, align 1
  %1657 = getelementptr inbounds i8, i8* %1651, i64 8
  %1658 = bitcast i8* %1657 to i64*
  %1659 = load i64, i64* %1658, align 1
  %1660 = bitcast i8* %1652 to double*
  %1661 = load double, double* %1660, align 1
  %1662 = fadd double %1656, %1661
  %1663 = bitcast i8* %1650 to double*
  store double %1662, double* %1663, align 1
  %1664 = getelementptr inbounds i8, i8* %1650, i64 8
  %1665 = bitcast i8* %1664 to i64*
  store i64 %1659, i64* %1665, align 1
  store %struct.Memory* %loadMem_42d576, %struct.Memory** %MEMORY
  %loadMem_42d57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 7
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1673 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1672, i64 0, i64 1
  %XMM1.i310 = bitcast %union.VectorReg* %1673 to %union.vec128_t*
  %1674 = bitcast %union.vec128_t* %XMM1.i310 to i8*
  %1675 = load i64, i64* %PC.i308
  %1676 = add i64 %1675, 4
  store i64 %1676, i64* %PC.i308
  %1677 = bitcast i8* %1674 to double*
  %1678 = load double, double* %1677, align 1
  %1679 = call double @llvm.trunc.f64(double %1678)
  %1680 = call double @llvm.fabs.f64(double %1679)
  %1681 = fcmp ogt double %1680, 0x41DFFFFFFFC00000
  %1682 = fptosi double %1679 to i32
  %1683 = zext i32 %1682 to i64
  %1684 = select i1 %1681, i64 2147483648, i64 %1683
  store i64 %1684, i64* %RDX.i309, align 8
  store %struct.Memory* %loadMem_42d57a, %struct.Memory** %MEMORY
  %loadMem_42d57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 1
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 15
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %1693 to i64*
  %1694 = load i64, i64* %RBP.i307
  %1695 = sub i64 %1694, 36
  %1696 = load i64, i64* %PC.i305
  %1697 = add i64 %1696, 4
  store i64 %1697, i64* %PC.i305
  %1698 = inttoptr i64 %1695 to i32*
  %1699 = load i32, i32* %1698
  %1700 = sext i32 %1699 to i64
  store i64 %1700, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_42d57e, %struct.Memory** %MEMORY
  %loadMem_42d582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 7
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1706 to i32*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 15
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %RBP.i304
  %1714 = load i64, i64* %RAX.i303
  %1715 = mul i64 %1714, 4
  %1716 = add i64 %1713, -2064
  %1717 = add i64 %1716, %1715
  %1718 = load i32, i32* %EDX.i
  %1719 = zext i32 %1718 to i64
  %1720 = load i64, i64* %PC.i302
  %1721 = add i64 %1720, 7
  store i64 %1721, i64* %PC.i302
  %1722 = inttoptr i64 %1717 to i32*
  store i32 %1718, i32* %1722
  store %struct.Memory* %loadMem_42d582, %struct.Memory** %MEMORY
  br label %block_.L_42d589

block_.L_42d589:                                  ; preds = %block_.L_42d54d, %block_42d50c
  %loadMem_42d589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1725 to i64*
  %1726 = load i64, i64* %PC.i301
  %1727 = add i64 %1726, 5
  %1728 = load i64, i64* %PC.i301
  %1729 = add i64 %1728, 5
  store i64 %1729, i64* %PC.i301
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1727, i64* %1730, align 8
  store %struct.Memory* %loadMem_42d589, %struct.Memory** %MEMORY
  br label %block_.L_42d58e

block_.L_42d58e:                                  ; preds = %block_.L_42d589, %block_42d4ea
  %loadMem_42d58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %PC.i300
  %1735 = add i64 %1734, 5
  %1736 = load i64, i64* %PC.i300
  %1737 = add i64 %1736, 5
  store i64 %1737, i64* %PC.i300
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1735, i64* %1738, align 8
  store %struct.Memory* %loadMem_42d58e, %struct.Memory** %MEMORY
  br label %block_.L_42d593

block_.L_42d593:                                  ; preds = %block_.L_42d58e
  %loadMem_42d593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 1
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 15
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %RBP.i299
  %1749 = sub i64 %1748, 36
  %1750 = load i64, i64* %PC.i297
  %1751 = add i64 %1750, 3
  store i64 %1751, i64* %PC.i297
  %1752 = inttoptr i64 %1749 to i32*
  %1753 = load i32, i32* %1752
  %1754 = zext i32 %1753 to i64
  store i64 %1754, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_42d593, %struct.Memory** %MEMORY
  %loadMem_42d596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 33
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 1
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %1760 to i64*
  %1761 = load i64, i64* %RAX.i296
  %1762 = load i64, i64* %PC.i295
  %1763 = add i64 %1762, 3
  store i64 %1763, i64* %PC.i295
  %1764 = trunc i64 %1761 to i32
  %1765 = add i32 1, %1764
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RAX.i296, align 8
  %1767 = icmp ult i32 %1765, %1764
  %1768 = icmp ult i32 %1765, 1
  %1769 = or i1 %1767, %1768
  %1770 = zext i1 %1769 to i8
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1770, i8* %1771, align 1
  %1772 = and i32 %1765, 255
  %1773 = call i32 @llvm.ctpop.i32(i32 %1772)
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = xor i8 %1775, 1
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1776, i8* %1777, align 1
  %1778 = xor i64 1, %1761
  %1779 = trunc i64 %1778 to i32
  %1780 = xor i32 %1779, %1765
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1783, i8* %1784, align 1
  %1785 = icmp eq i32 %1765, 0
  %1786 = zext i1 %1785 to i8
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1786, i8* %1787, align 1
  %1788 = lshr i32 %1765, 31
  %1789 = trunc i32 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1789, i8* %1790, align 1
  %1791 = lshr i32 %1764, 31
  %1792 = xor i32 %1788, %1791
  %1793 = add i32 %1792, %1788
  %1794 = icmp eq i32 %1793, 2
  %1795 = zext i1 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1795, i8* %1796, align 1
  store %struct.Memory* %loadMem_42d596, %struct.Memory** %MEMORY
  %loadMem_42d599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 1
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %1802 to i32*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 15
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RBP.i294
  %1807 = sub i64 %1806, 36
  %1808 = load i32, i32* %EAX.i293
  %1809 = zext i32 %1808 to i64
  %1810 = load i64, i64* %PC.i292
  %1811 = add i64 %1810, 3
  store i64 %1811, i64* %PC.i292
  %1812 = inttoptr i64 %1807 to i32*
  store i32 %1808, i32* %1812
  store %struct.Memory* %loadMem_42d599, %struct.Memory** %MEMORY
  %loadMem_42d59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %PC.i291
  %1817 = add i64 %1816, -191
  %1818 = load i64, i64* %PC.i291
  %1819 = add i64 %1818, 5
  store i64 %1819, i64* %PC.i291
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1817, i64* %1820, align 8
  store %struct.Memory* %loadMem_42d59c, %struct.Memory** %MEMORY
  br label %block_.L_42d4dd

block_.L_42d5a1:                                  ; preds = %block_.L_42d4dd
  %loadMem_42d5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 15
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %1826 to i64*
  %1827 = load i64, i64* %RBP.i290
  %1828 = sub i64 %1827, 36
  %1829 = load i64, i64* %PC.i289
  %1830 = add i64 %1829, 7
  store i64 %1830, i64* %PC.i289
  %1831 = inttoptr i64 %1828 to i32*
  store i32 21, i32* %1831
  store %struct.Memory* %loadMem_42d5a1, %struct.Memory** %MEMORY
  br label %block_.L_42d5a8

block_.L_42d5a8:                                  ; preds = %block_.L_42d720, %block_.L_42d5a1
  %loadMem_42d5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 15
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %RBP.i288
  %1839 = sub i64 %1838, 36
  %1840 = load i64, i64* %PC.i287
  %1841 = add i64 %1840, 7
  store i64 %1841, i64* %PC.i287
  %1842 = inttoptr i64 %1839 to i32*
  %1843 = load i32, i32* %1842
  %1844 = sub i32 %1843, 400
  %1845 = icmp ult i32 %1843, 400
  %1846 = zext i1 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1846, i8* %1847, align 1
  %1848 = and i32 %1844, 255
  %1849 = call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1852, i8* %1853, align 1
  %1854 = xor i32 %1843, 400
  %1855 = xor i32 %1854, %1844
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1858, i8* %1859, align 1
  %1860 = icmp eq i32 %1844, 0
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1861, i8* %1862, align 1
  %1863 = lshr i32 %1844, 31
  %1864 = trunc i32 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1864, i8* %1865, align 1
  %1866 = lshr i32 %1843, 31
  %1867 = xor i32 %1863, %1866
  %1868 = add i32 %1867, %1866
  %1869 = icmp eq i32 %1868, 2
  %1870 = zext i1 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1870, i8* %1871, align 1
  store %struct.Memory* %loadMem_42d5a8, %struct.Memory** %MEMORY
  %loadMem_42d5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %PC.i286
  %1876 = add i64 %1875, 383
  %1877 = load i64, i64* %PC.i286
  %1878 = add i64 %1877, 6
  %1879 = load i64, i64* %PC.i286
  %1880 = add i64 %1879, 6
  store i64 %1880, i64* %PC.i286
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1882 = load i8, i8* %1881, align 1
  %1883 = icmp ne i8 %1882, 0
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1885 = load i8, i8* %1884, align 1
  %1886 = icmp ne i8 %1885, 0
  %1887 = xor i1 %1883, %1886
  %1888 = xor i1 %1887, true
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %BRANCH_TAKEN, align 1
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1891 = select i1 %1887, i64 %1878, i64 %1876
  store i64 %1891, i64* %1890, align 8
  store %struct.Memory* %loadMem_42d5af, %struct.Memory** %MEMORY
  %loadBr_42d5af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d5af = icmp eq i8 %loadBr_42d5af, 1
  br i1 %cmpBr_42d5af, label %block_.L_42d72e, label %block_42d5b5

block_42d5b5:                                     ; preds = %block_.L_42d5a8
  %loadMem_42d5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 1
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 15
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %RBP.i285
  %1902 = sub i64 %1901, 36
  %1903 = load i64, i64* %PC.i283
  %1904 = add i64 %1903, 4
  store i64 %1904, i64* %PC.i283
  %1905 = inttoptr i64 %1902 to i32*
  %1906 = load i32, i32* %1905
  %1907 = sext i32 %1906 to i64
  store i64 %1907, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_42d5b5, %struct.Memory** %MEMORY
  %loadMem_42d5b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 5
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RAX.i281
  %1918 = add i64 %1917, 12099168
  %1919 = load i64, i64* %PC.i280
  %1920 = add i64 %1919, 8
  store i64 %1920, i64* %PC.i280
  %1921 = inttoptr i64 %1918 to i8*
  %1922 = load i8, i8* %1921
  %1923 = zext i8 %1922 to i64
  store i64 %1923, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_42d5b9, %struct.Memory** %MEMORY
  %loadMem_42d5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 5
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %ECX.i279 = bitcast %union.anon* %1929 to i32*
  %1930 = load i32, i32* %ECX.i279
  %1931 = zext i32 %1930 to i64
  %1932 = load i64, i64* %PC.i278
  %1933 = add i64 %1932, 3
  store i64 %1933, i64* %PC.i278
  %1934 = sub i32 %1930, 3
  %1935 = icmp ult i32 %1930, 3
  %1936 = zext i1 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1936, i8* %1937, align 1
  %1938 = and i32 %1934, 255
  %1939 = call i32 @llvm.ctpop.i32(i32 %1938)
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  %1942 = xor i8 %1941, 1
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1942, i8* %1943, align 1
  %1944 = xor i64 3, %1931
  %1945 = trunc i64 %1944 to i32
  %1946 = xor i32 %1945, %1934
  %1947 = lshr i32 %1946, 4
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1949, i8* %1950, align 1
  %1951 = icmp eq i32 %1934, 0
  %1952 = zext i1 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1952, i8* %1953, align 1
  %1954 = lshr i32 %1934, 31
  %1955 = trunc i32 %1954 to i8
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1955, i8* %1956, align 1
  %1957 = lshr i32 %1930, 31
  %1958 = xor i32 %1954, %1957
  %1959 = add i32 %1958, %1957
  %1960 = icmp eq i32 %1959, 2
  %1961 = zext i1 %1960 to i8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1961, i8* %1962, align 1
  store %struct.Memory* %loadMem_42d5c1, %struct.Memory** %MEMORY
  %loadMem_42d5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %PC.i277
  %1967 = add i64 %1966, 343
  %1968 = load i64, i64* %PC.i277
  %1969 = add i64 %1968, 6
  %1970 = load i64, i64* %PC.i277
  %1971 = add i64 %1970, 6
  store i64 %1971, i64* %PC.i277
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1973 = load i8, i8* %1972, align 1
  store i8 %1973, i8* %BRANCH_TAKEN, align 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1975 = icmp ne i8 %1973, 0
  %1976 = select i1 %1975, i64 %1967, i64 %1969
  store i64 %1976, i64* %1974, align 8
  store %struct.Memory* %loadMem_42d5c4, %struct.Memory** %MEMORY
  %loadBr_42d5c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d5c4 = icmp eq i8 %loadBr_42d5c4, 1
  br i1 %cmpBr_42d5c4, label %block_.L_42d71b, label %block_42d5ca

block_42d5ca:                                     ; preds = %block_42d5b5
  %loadMem_42d5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 15
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %1982 to i64*
  %1983 = load i64, i64* %RBP.i276
  %1984 = sub i64 %1983, 452
  %1985 = load i64, i64* %PC.i275
  %1986 = add i64 %1985, 7
  store i64 %1986, i64* %PC.i275
  %1987 = inttoptr i64 %1984 to i32*
  %1988 = load i32, i32* %1987
  %1989 = sub i32 %1988, 2
  %1990 = icmp ult i32 %1988, 2
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1991, i8* %1992, align 1
  %1993 = and i32 %1989, 255
  %1994 = call i32 @llvm.ctpop.i32(i32 %1993)
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1997, i8* %1998, align 1
  %1999 = xor i32 %1988, 2
  %2000 = xor i32 %1999, %1989
  %2001 = lshr i32 %2000, 4
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2003, i8* %2004, align 1
  %2005 = icmp eq i32 %1989, 0
  %2006 = zext i1 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2006, i8* %2007, align 1
  %2008 = lshr i32 %1989, 31
  %2009 = trunc i32 %2008 to i8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2009, i8* %2010, align 1
  %2011 = lshr i32 %1988, 31
  %2012 = xor i32 %2008, %2011
  %2013 = add i32 %2012, %2011
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2015, i8* %2016, align 1
  store %struct.Memory* %loadMem_42d5ca, %struct.Memory** %MEMORY
  %loadMem_42d5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %PC.i274
  %2021 = add i64 %2020, 159
  %2022 = load i64, i64* %PC.i274
  %2023 = add i64 %2022, 6
  %2024 = load i64, i64* %PC.i274
  %2025 = add i64 %2024, 6
  store i64 %2025, i64* %PC.i274
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2027 = load i8, i8* %2026, align 1
  %2028 = icmp eq i8 %2027, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %BRANCH_TAKEN, align 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2031 = select i1 %2028, i64 %2021, i64 %2023
  store i64 %2031, i64* %2030, align 8
  store %struct.Memory* %loadMem_42d5d1, %struct.Memory** %MEMORY
  %loadBr_42d5d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d5d1 = icmp eq i8 %loadBr_42d5d1, 1
  br i1 %cmpBr_42d5d1, label %block_.L_42d670, label %block_42d5d7

block_42d5d7:                                     ; preds = %block_42d5ca
  %loadMem_42d5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 1
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 15
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %2040 to i64*
  %2041 = load i64, i64* %RBP.i273
  %2042 = sub i64 %2041, 16
  %2043 = load i64, i64* %PC.i271
  %2044 = add i64 %2043, 4
  store i64 %2044, i64* %PC.i271
  %2045 = inttoptr i64 %2042 to i64*
  %2046 = load i64, i64* %2045
  store i64 %2046, i64* %RAX.i272, align 8
  store %struct.Memory* %loadMem_42d5d7, %struct.Memory** %MEMORY
  %loadMem_42d5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 5
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 15
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %2055 to i64*
  %2056 = load i64, i64* %RBP.i270
  %2057 = sub i64 %2056, 36
  %2058 = load i64, i64* %PC.i268
  %2059 = add i64 %2058, 4
  store i64 %2059, i64* %PC.i268
  %2060 = inttoptr i64 %2057 to i32*
  %2061 = load i32, i32* %2060
  %2062 = sext i32 %2061 to i64
  store i64 %2062, i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_42d5db, %struct.Memory** %MEMORY
  %loadMem_42d5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 1
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 5
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2073 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2072, i64 0, i64 0
  %YMM0.i267 = bitcast %union.VectorReg* %2073 to %"class.std::bitset"*
  %2074 = bitcast %"class.std::bitset"* %YMM0.i267 to i8*
  %2075 = load i64, i64* %RAX.i265
  %2076 = load i64, i64* %RCX.i266
  %2077 = mul i64 %2076, 4
  %2078 = add i64 %2075, 5200
  %2079 = add i64 %2078, %2077
  %2080 = load i64, i64* %PC.i264
  %2081 = add i64 %2080, 9
  store i64 %2081, i64* %PC.i264
  %2082 = inttoptr i64 %2079 to float*
  %2083 = load float, float* %2082
  %2084 = bitcast i8* %2074 to float*
  store float %2083, float* %2084, align 1
  %2085 = getelementptr inbounds i8, i8* %2074, i64 4
  %2086 = bitcast i8* %2085 to float*
  store float 0.000000e+00, float* %2086, align 1
  %2087 = getelementptr inbounds i8, i8* %2074, i64 8
  %2088 = bitcast i8* %2087 to float*
  store float 0.000000e+00, float* %2088, align 1
  %2089 = getelementptr inbounds i8, i8* %2074, i64 12
  %2090 = bitcast i8* %2089 to float*
  store float 0.000000e+00, float* %2090, align 1
  store %struct.Memory* %loadMem_42d5df, %struct.Memory** %MEMORY
  %loadMem_42d5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 1
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 15
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %RBP.i263
  %2101 = sub i64 %2100, 8
  %2102 = load i64, i64* %PC.i261
  %2103 = add i64 %2102, 4
  store i64 %2103, i64* %PC.i261
  %2104 = inttoptr i64 %2101 to i64*
  %2105 = load i64, i64* %2104
  store i64 %2105, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_42d5e8, %struct.Memory** %MEMORY
  %loadMem_42d5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 5
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 15
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %RBP.i260
  %2116 = sub i64 %2115, 36
  %2117 = load i64, i64* %PC.i258
  %2118 = add i64 %2117, 4
  store i64 %2118, i64* %PC.i258
  %2119 = inttoptr i64 %2116 to i32*
  %2120 = load i32, i32* %2119
  %2121 = sext i32 %2120 to i64
  store i64 %2121, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_42d5ec, %struct.Memory** %MEMORY
  %loadMem_42d5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 1
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 5
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2132 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2131, i64 0, i64 0
  %XMM0.i255 = bitcast %union.VectorReg* %2132 to %union.vec128_t*
  %2133 = bitcast %union.vec128_t* %XMM0.i255 to i8*
  %2134 = load i64, i64* %RAX.i253
  %2135 = load i64, i64* %RCX.i254
  %2136 = mul i64 %2135, 4
  %2137 = add i64 %2134, 5200
  %2138 = add i64 %2137, %2136
  %2139 = load i64, i64* %PC.i252
  %2140 = add i64 %2139, 8
  store i64 %2140, i64* %PC.i252
  %2141 = bitcast i8* %2133 to <2 x float>*
  %2142 = load <2 x float>, <2 x float>* %2141, align 1
  %2143 = extractelement <2 x float> %2142, i32 0
  %2144 = inttoptr i64 %2138 to float*
  %2145 = load float, float* %2144
  %2146 = fcmp uno float %2143, %2145
  br i1 %2146, label %2147, label %2159

; <label>:2147:                                   ; preds = %block_42d5d7
  %2148 = fadd float %2143, %2145
  %2149 = bitcast float %2148 to i32
  %2150 = and i32 %2149, 2143289344
  %2151 = icmp eq i32 %2150, 2139095040
  %2152 = and i32 %2149, 4194303
  %2153 = icmp ne i32 %2152, 0
  %2154 = and i1 %2151, %2153
  br i1 %2154, label %2155, label %2165

; <label>:2155:                                   ; preds = %2147
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2157 = load i64, i64* %2156, align 8
  %2158 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2157, %struct.Memory* %loadMem_42d5f0)
  br label %routine_ucomiss_0x1450__rax__rcx_4____xmm0.exit

; <label>:2159:                                   ; preds = %block_42d5d7
  %2160 = fcmp ogt float %2143, %2145
  br i1 %2160, label %2165, label %2161

; <label>:2161:                                   ; preds = %2159
  %2162 = fcmp olt float %2143, %2145
  br i1 %2162, label %2165, label %2163

; <label>:2163:                                   ; preds = %2161
  %2164 = fcmp oeq float %2143, %2145
  br i1 %2164, label %2165, label %2172

; <label>:2165:                                   ; preds = %2163, %2161, %2159, %2147
  %2166 = phi i8 [ 0, %2159 ], [ 0, %2161 ], [ 1, %2163 ], [ 1, %2147 ]
  %2167 = phi i8 [ 0, %2159 ], [ 0, %2161 ], [ 0, %2163 ], [ 1, %2147 ]
  %2168 = phi i8 [ 0, %2159 ], [ 1, %2161 ], [ 0, %2163 ], [ 1, %2147 ]
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2166, i8* %2169, align 1
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2167, i8* %2170, align 1
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2168, i8* %2171, align 1
  br label %2172

; <label>:2172:                                   ; preds = %2165, %2163
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2173, align 1
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2174, align 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2175, align 1
  br label %routine_ucomiss_0x1450__rax__rcx_4____xmm0.exit

routine_ucomiss_0x1450__rax__rcx_4____xmm0.exit:  ; preds = %2155, %2172
  %2176 = phi %struct.Memory* [ %2158, %2155 ], [ %loadMem_42d5f0, %2172 ]
  store %struct.Memory* %2176, %struct.Memory** %MEMORY
  %loadMem_42d5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %PC.i251
  %2181 = add i64 %2180, 120
  %2182 = load i64, i64* %PC.i251
  %2183 = add i64 %2182, 6
  %2184 = load i64, i64* %PC.i251
  %2185 = add i64 %2184, 6
  store i64 %2185, i64* %PC.i251
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2187 = load i8, i8* %2186, align 1
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2189 = load i8, i8* %2188, align 1
  %2190 = or i8 %2189, %2187
  %2191 = icmp ne i8 %2190, 0
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %BRANCH_TAKEN, align 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2194 = select i1 %2191, i64 %2181, i64 %2183
  store i64 %2194, i64* %2193, align 8
  store %struct.Memory* %loadMem_42d5f8, %struct.Memory** %MEMORY
  %loadBr_42d5f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d5f8 = icmp eq i8 %loadBr_42d5f8, 1
  br i1 %cmpBr_42d5f8, label %block_.L_42d670, label %block_42d5fe

block_42d5fe:                                     ; preds = %routine_ucomiss_0x1450__rax__rcx_4____xmm0.exit
  %loadMem_42d5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 1
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 15
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %2203 to i64*
  %2204 = load i64, i64* %RBP.i250
  %2205 = sub i64 %2204, 3664
  %2206 = load i64, i64* %PC.i248
  %2207 = add i64 %2206, 7
  store i64 %2207, i64* %PC.i248
  store i64 %2205, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_42d5fe, %struct.Memory** %MEMORY
  %loadMem_42d605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 33
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 17
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %R8.i247 = bitcast %union.anon* %2216 to i64*
  %2217 = load i64, i64* %RBP.i246
  %2218 = sub i64 %2217, 2064
  %2219 = load i64, i64* %PC.i245
  %2220 = add i64 %2219, 7
  store i64 %2220, i64* %PC.i245
  store i64 %2218, i64* %R8.i247, align 8
  store %struct.Memory* %loadMem_42d605, %struct.Memory** %MEMORY
  %loadMem_42d60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2224, i64 0, i64 0
  %YMM0.i244 = bitcast %union.VectorReg* %2225 to %"class.std::bitset"*
  %2226 = bitcast %"class.std::bitset"* %YMM0.i244 to i8*
  %2227 = load i64, i64* %PC.i243
  %2228 = add i64 %2227, ptrtoint (%G_0xb5b08__rip__type* @G_0xb5b08__rip_ to i64)
  %2229 = load i64, i64* %PC.i243
  %2230 = add i64 %2229, 8
  store i64 %2230, i64* %PC.i243
  %2231 = inttoptr i64 %2228 to float*
  %2232 = load float, float* %2231
  %2233 = bitcast i8* %2226 to float*
  store float %2232, float* %2233, align 1
  %2234 = getelementptr inbounds i8, i8* %2226, i64 4
  %2235 = bitcast i8* %2234 to float*
  store float 0.000000e+00, float* %2235, align 1
  %2236 = getelementptr inbounds i8, i8* %2226, i64 8
  %2237 = bitcast i8* %2236 to float*
  store float 0.000000e+00, float* %2237, align 1
  %2238 = getelementptr inbounds i8, i8* %2226, i64 12
  %2239 = bitcast i8* %2238 to float*
  store float 0.000000e+00, float* %2239, align 1
  store %struct.Memory* %loadMem_42d60c, %struct.Memory** %MEMORY
  %loadMem_42d614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2243, i64 0, i64 1
  %YMM1.i242 = bitcast %union.VectorReg* %2244 to %"class.std::bitset"*
  %2245 = bitcast %"class.std::bitset"* %YMM1.i242 to i8*
  %2246 = load i64, i64* %PC.i241
  %2247 = add i64 %2246, ptrtoint (%G_0xb596c__rip__type* @G_0xb596c__rip_ to i64)
  %2248 = load i64, i64* %PC.i241
  %2249 = add i64 %2248, 8
  store i64 %2249, i64* %PC.i241
  %2250 = inttoptr i64 %2247 to double*
  %2251 = load double, double* %2250
  %2252 = bitcast i8* %2245 to double*
  store double %2251, double* %2252, align 1
  %2253 = getelementptr inbounds i8, i8* %2245, i64 8
  %2254 = bitcast i8* %2253 to double*
  store double 0.000000e+00, double* %2254, align 1
  store %struct.Memory* %loadMem_42d614, %struct.Memory** %MEMORY
  %loadMem_42d61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 33
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 11
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RDI.i239 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 15
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %2263 to i64*
  %2264 = load i64, i64* %RBP.i240
  %2265 = sub i64 %2264, 36
  %2266 = load i64, i64* %PC.i238
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %PC.i238
  %2268 = inttoptr i64 %2265 to i32*
  %2269 = load i32, i32* %2268
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RDI.i239, align 8
  store %struct.Memory* %loadMem_42d61c, %struct.Memory** %MEMORY
  %loadMem_42d61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 5
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 15
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %RBP.i237
  %2281 = sub i64 %2280, 16
  %2282 = load i64, i64* %PC.i235
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC.i235
  %2284 = inttoptr i64 %2281 to i64*
  %2285 = load i64, i64* %2284
  store i64 %2285, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_42d61f, %struct.Memory** %MEMORY
  %loadMem_42d623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 7
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RDX.i233 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 15
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %2294 to i64*
  %2295 = load i64, i64* %RBP.i234
  %2296 = sub i64 %2295, 36
  %2297 = load i64, i64* %PC.i232
  %2298 = add i64 %2297, 4
  store i64 %2298, i64* %PC.i232
  %2299 = inttoptr i64 %2296 to i32*
  %2300 = load i32, i32* %2299
  %2301 = sext i32 %2300 to i64
  store i64 %2301, i64* %RDX.i233, align 8
  store %struct.Memory* %loadMem_42d623, %struct.Memory** %MEMORY
  %loadMem_42d627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2305, i64 0, i64 2
  %YMM2.i230 = bitcast %union.VectorReg* %2306 to %"class.std::bitset"*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2307, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %2308 to %union.vec128_t*
  %2309 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %2310 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %2311 = load i64, i64* %PC.i229
  %2312 = add i64 %2311, 3
  store i64 %2312, i64* %PC.i229
  %2313 = bitcast i8* %2310 to <2 x i32>*
  %2314 = load <2 x i32>, <2 x i32>* %2313, align 1
  %2315 = getelementptr inbounds i8, i8* %2310, i64 8
  %2316 = bitcast i8* %2315 to <2 x i32>*
  %2317 = load <2 x i32>, <2 x i32>* %2316, align 1
  %2318 = extractelement <2 x i32> %2314, i32 0
  %2319 = bitcast i8* %2309 to i32*
  store i32 %2318, i32* %2319, align 1
  %2320 = extractelement <2 x i32> %2314, i32 1
  %2321 = getelementptr inbounds i8, i8* %2309, i64 4
  %2322 = bitcast i8* %2321 to i32*
  store i32 %2320, i32* %2322, align 1
  %2323 = extractelement <2 x i32> %2317, i32 0
  %2324 = getelementptr inbounds i8, i8* %2309, i64 8
  %2325 = bitcast i8* %2324 to i32*
  store i32 %2323, i32* %2325, align 1
  %2326 = extractelement <2 x i32> %2317, i32 1
  %2327 = getelementptr inbounds i8, i8* %2309, i64 12
  %2328 = bitcast i8* %2327 to i32*
  store i32 %2326, i32* %2328, align 1
  store %struct.Memory* %loadMem_42d627, %struct.Memory** %MEMORY
  %loadMem_42d62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 5
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 7
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2338, i64 0, i64 2
  %YMM2.i228 = bitcast %union.VectorReg* %2339 to %"class.std::bitset"*
  %2340 = bitcast %"class.std::bitset"* %YMM2.i228 to i8*
  %2341 = bitcast %"class.std::bitset"* %YMM2.i228 to i8*
  %2342 = load i64, i64* %RCX.i226
  %2343 = load i64, i64* %RDX.i227
  %2344 = mul i64 %2343, 4
  %2345 = add i64 %2342, 5200
  %2346 = add i64 %2345, %2344
  %2347 = load i64, i64* %PC.i225
  %2348 = add i64 %2347, 9
  store i64 %2348, i64* %PC.i225
  %2349 = bitcast i8* %2341 to <2 x float>*
  %2350 = load <2 x float>, <2 x float>* %2349, align 1
  %2351 = getelementptr inbounds i8, i8* %2341, i64 8
  %2352 = bitcast i8* %2351 to <2 x i32>*
  %2353 = load <2 x i32>, <2 x i32>* %2352, align 1
  %2354 = inttoptr i64 %2346 to float*
  %2355 = load float, float* %2354
  %2356 = extractelement <2 x float> %2350, i32 0
  %2357 = fmul float %2356, %2355
  %2358 = bitcast i8* %2340 to float*
  store float %2357, float* %2358, align 1
  %2359 = bitcast <2 x float> %2350 to <2 x i32>
  %2360 = extractelement <2 x i32> %2359, i32 1
  %2361 = getelementptr inbounds i8, i8* %2340, i64 4
  %2362 = bitcast i8* %2361 to i32*
  store i32 %2360, i32* %2362, align 1
  %2363 = extractelement <2 x i32> %2353, i32 0
  %2364 = getelementptr inbounds i8, i8* %2340, i64 8
  %2365 = bitcast i8* %2364 to i32*
  store i32 %2363, i32* %2365, align 1
  %2366 = extractelement <2 x i32> %2353, i32 1
  %2367 = getelementptr inbounds i8, i8* %2340, i64 12
  %2368 = bitcast i8* %2367 to i32*
  store i32 %2366, i32* %2368, align 1
  store %struct.Memory* %loadMem_42d62a, %struct.Memory** %MEMORY
  %loadMem_42d633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 9
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RSI.i223 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2375, i64 0, i64 2
  %XMM2.i224 = bitcast %union.VectorReg* %2376 to %union.vec128_t*
  %2377 = bitcast %union.vec128_t* %XMM2.i224 to i8*
  %2378 = load i64, i64* %PC.i222
  %2379 = add i64 %2378, 4
  store i64 %2379, i64* %PC.i222
  %2380 = bitcast i8* %2377 to <2 x float>*
  %2381 = load <2 x float>, <2 x float>* %2380, align 1
  %2382 = extractelement <2 x float> %2381, i32 0
  %2383 = call float @llvm.trunc.f32(float %2382)
  %2384 = call float @llvm.fabs.f32(float %2383)
  %2385 = fcmp ogt float %2384, 0x41E0000000000000
  %2386 = fptosi float %2383 to i32
  %2387 = zext i32 %2386 to i64
  %2388 = select i1 %2385, i64 2147483648, i64 %2387
  store i64 %2388, i64* %RSI.i223, align 8
  store %struct.Memory* %loadMem_42d633, %struct.Memory** %MEMORY
  %loadMem_42d637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 33
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 9
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %ESI.i220 = bitcast %union.anon* %2394 to i32*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2396 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2395, i64 0, i64 2
  %YMM2.i221 = bitcast %union.VectorReg* %2396 to %"class.std::bitset"*
  %2397 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %2398 = load i32, i32* %ESI.i220
  %2399 = zext i32 %2398 to i64
  %2400 = load i64, i64* %PC.i219
  %2401 = add i64 %2400, 4
  store i64 %2401, i64* %PC.i219
  %2402 = sitofp i32 %2398 to double
  %2403 = bitcast i8* %2397 to double*
  store double %2402, double* %2403, align 1
  store %struct.Memory* %loadMem_42d637, %struct.Memory** %MEMORY
  %loadMem_42d63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2407, i64 0, i64 2
  %YMM2.i217 = bitcast %union.VectorReg* %2408 to %"class.std::bitset"*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2409, i64 0, i64 1
  %XMM1.i218 = bitcast %union.VectorReg* %2410 to %union.vec128_t*
  %2411 = bitcast %"class.std::bitset"* %YMM2.i217 to i8*
  %2412 = bitcast %"class.std::bitset"* %YMM2.i217 to i8*
  %2413 = bitcast %union.vec128_t* %XMM1.i218 to i8*
  %2414 = load i64, i64* %PC.i216
  %2415 = add i64 %2414, 4
  store i64 %2415, i64* %PC.i216
  %2416 = bitcast i8* %2412 to double*
  %2417 = load double, double* %2416, align 1
  %2418 = getelementptr inbounds i8, i8* %2412, i64 8
  %2419 = bitcast i8* %2418 to i64*
  %2420 = load i64, i64* %2419, align 1
  %2421 = bitcast i8* %2413 to double*
  %2422 = load double, double* %2421, align 1
  %2423 = fadd double %2417, %2422
  %2424 = bitcast i8* %2411 to double*
  store double %2423, double* %2424, align 1
  %2425 = getelementptr inbounds i8, i8* %2411, i64 8
  %2426 = bitcast i8* %2425 to i64*
  store i64 %2420, i64* %2426, align 1
  store %struct.Memory* %loadMem_42d63b, %struct.Memory** %MEMORY
  %loadMem_42d63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 9
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RSI.i214 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2433, i64 0, i64 2
  %XMM2.i215 = bitcast %union.VectorReg* %2434 to %union.vec128_t*
  %2435 = bitcast %union.vec128_t* %XMM2.i215 to i8*
  %2436 = load i64, i64* %PC.i213
  %2437 = add i64 %2436, 4
  store i64 %2437, i64* %PC.i213
  %2438 = bitcast i8* %2435 to double*
  %2439 = load double, double* %2438, align 1
  %2440 = call double @llvm.trunc.f64(double %2439)
  %2441 = call double @llvm.fabs.f64(double %2440)
  %2442 = fcmp ogt double %2441, 0x41DFFFFFFFC00000
  %2443 = fptosi double %2440 to i32
  %2444 = zext i32 %2443 to i64
  %2445 = select i1 %2442, i64 2147483648, i64 %2444
  store i64 %2445, i64* %RSI.i214, align 8
  store %struct.Memory* %loadMem_42d63f, %struct.Memory** %MEMORY
  %loadMem_42d643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 5
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i212
  %2456 = sub i64 %2455, 16
  %2457 = load i64, i64* %PC.i210
  %2458 = add i64 %2457, 4
  store i64 %2458, i64* %PC.i210
  %2459 = inttoptr i64 %2456 to i64*
  %2460 = load i64, i64* %2459
  store i64 %2460, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_42d643, %struct.Memory** %MEMORY
  %loadMem_42d647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 7
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i209
  %2471 = sub i64 %2470, 36
  %2472 = load i64, i64* %PC.i207
  %2473 = add i64 %2472, 4
  store i64 %2473, i64* %PC.i207
  %2474 = inttoptr i64 %2471 to i32*
  %2475 = load i32, i32* %2474
  %2476 = sext i32 %2475 to i64
  store i64 %2476, i64* %RDX.i208, align 8
  store %struct.Memory* %loadMem_42d647, %struct.Memory** %MEMORY
  %loadMem_42d64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 5
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 7
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2486, i64 0, i64 0
  %YMM0.i206 = bitcast %union.VectorReg* %2487 to %"class.std::bitset"*
  %2488 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %2489 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %2490 = load i64, i64* %RCX.i204
  %2491 = load i64, i64* %RDX.i205
  %2492 = mul i64 %2491, 4
  %2493 = add i64 %2490, 8400
  %2494 = add i64 %2493, %2492
  %2495 = load i64, i64* %PC.i203
  %2496 = add i64 %2495, 9
  store i64 %2496, i64* %PC.i203
  %2497 = bitcast i8* %2489 to <2 x float>*
  %2498 = load <2 x float>, <2 x float>* %2497, align 1
  %2499 = getelementptr inbounds i8, i8* %2489, i64 8
  %2500 = bitcast i8* %2499 to <2 x i32>*
  %2501 = load <2 x i32>, <2 x i32>* %2500, align 1
  %2502 = inttoptr i64 %2494 to float*
  %2503 = load float, float* %2502
  %2504 = extractelement <2 x float> %2498, i32 0
  %2505 = fdiv float %2504, %2503
  %2506 = bitcast i8* %2488 to float*
  store float %2505, float* %2506, align 1
  %2507 = bitcast <2 x float> %2498 to <2 x i32>
  %2508 = extractelement <2 x i32> %2507, i32 1
  %2509 = getelementptr inbounds i8, i8* %2488, i64 4
  %2510 = bitcast i8* %2509 to i32*
  store i32 %2508, i32* %2510, align 1
  %2511 = extractelement <2 x i32> %2501, i32 0
  %2512 = getelementptr inbounds i8, i8* %2488, i64 8
  %2513 = bitcast i8* %2512 to i32*
  store i32 %2511, i32* %2513, align 1
  %2514 = extractelement <2 x i32> %2501, i32 1
  %2515 = getelementptr inbounds i8, i8* %2488, i64 12
  %2516 = bitcast i8* %2515 to i32*
  store i32 %2514, i32* %2516, align 1
  store %struct.Memory* %loadMem_42d64b, %struct.Memory** %MEMORY
  %loadMem_42d654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 33
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 7
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RDX.i201 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2523, i64 0, i64 0
  %XMM0.i202 = bitcast %union.VectorReg* %2524 to %union.vec128_t*
  %2525 = bitcast %union.vec128_t* %XMM0.i202 to i8*
  %2526 = load i64, i64* %PC.i200
  %2527 = add i64 %2526, 4
  store i64 %2527, i64* %PC.i200
  %2528 = bitcast i8* %2525 to <2 x float>*
  %2529 = load <2 x float>, <2 x float>* %2528, align 1
  %2530 = extractelement <2 x float> %2529, i32 0
  %2531 = call float @llvm.trunc.f32(float %2530)
  %2532 = call float @llvm.fabs.f32(float %2531)
  %2533 = fcmp ogt float %2532, 0x41E0000000000000
  %2534 = fptosi float %2531 to i32
  %2535 = zext i32 %2534 to i64
  %2536 = select i1 %2533, i64 2147483648, i64 %2535
  store i64 %2536, i64* %RDX.i201, align 8
  store %struct.Memory* %loadMem_42d654, %struct.Memory** %MEMORY
  %loadMem_42d658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 5
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 15
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %RBP.i199
  %2547 = sub i64 %2546, 456
  %2548 = load i64, i64* %PC.i197
  %2549 = add i64 %2548, 6
  store i64 %2549, i64* %PC.i197
  %2550 = inttoptr i64 %2547 to i32*
  %2551 = load i32, i32* %2550
  %2552 = zext i32 %2551 to i64
  store i64 %2552, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_42d658, %struct.Memory** %MEMORY
  %loadMem_42d65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 15
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 19
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %R9.i196 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i195
  %2563 = sub i64 %2562, 16
  %2564 = load i64, i64* %PC.i194
  %2565 = add i64 %2564, 4
  store i64 %2565, i64* %PC.i194
  %2566 = inttoptr i64 %2563 to i64*
  %2567 = load i64, i64* %2566
  store i64 %2567, i64* %R9.i196, align 8
  store %struct.Memory* %loadMem_42d65e, %struct.Memory** %MEMORY
  %loadMem_42d662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 1
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 13
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %RSP.i193 = bitcast %union.anon* %2576 to i64*
  %2577 = load i64, i64* %RSP.i193
  %2578 = load i64, i64* %RAX.i192
  %2579 = load i64, i64* %PC.i191
  %2580 = add i64 %2579, 4
  store i64 %2580, i64* %PC.i191
  %2581 = inttoptr i64 %2577 to i64*
  store i64 %2578, i64* %2581
  store %struct.Memory* %loadMem_42d662, %struct.Memory** %MEMORY
  %loadMem1_42d666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2584 to i64*
  %2585 = load i64, i64* %PC.i190
  %2586 = add i64 %2585, -16278
  %2587 = load i64, i64* %PC.i190
  %2588 = add i64 %2587, 5
  %2589 = load i64, i64* %PC.i190
  %2590 = add i64 %2589, 5
  store i64 %2590, i64* %PC.i190
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2592 = load i64, i64* %2591, align 8
  %2593 = add i64 %2592, -8
  %2594 = inttoptr i64 %2593 to i64*
  store i64 %2588, i64* %2594
  store i64 %2593, i64* %2591, align 8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2586, i64* %2595, align 8
  store %struct.Memory* %loadMem1_42d666, %struct.Memory** %MEMORY
  %loadMem2_42d666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d666 = load i64, i64* %3
  %call2_42d666 = call %struct.Memory* @sub_4296d0.accumulate_influence(%struct.State* %0, i64 %loadPC_42d666, %struct.Memory* %loadMem2_42d666)
  store %struct.Memory* %call2_42d666, %struct.Memory** %MEMORY
  %loadMem_42d66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 33
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2598 to i64*
  %2599 = load i64, i64* %PC.i189
  %2600 = add i64 %2599, 171
  %2601 = load i64, i64* %PC.i189
  %2602 = add i64 %2601, 5
  store i64 %2602, i64* %PC.i189
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2600, i64* %2603, align 8
  store %struct.Memory* %loadMem_42d66b, %struct.Memory** %MEMORY
  br label %block_.L_42d716

block_.L_42d670:                                  ; preds = %routine_ucomiss_0x1450__rax__rcx_4____xmm0.exit, %block_42d5ca
  %loadMem_42d670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 15
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %RBP.i188
  %2611 = sub i64 %2610, 452
  %2612 = load i64, i64* %PC.i187
  %2613 = add i64 %2612, 7
  store i64 %2613, i64* %PC.i187
  %2614 = inttoptr i64 %2611 to i32*
  %2615 = load i32, i32* %2614
  %2616 = sub i32 %2615, 1
  %2617 = icmp ult i32 %2615, 1
  %2618 = zext i1 %2617 to i8
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2618, i8* %2619, align 1
  %2620 = and i32 %2616, 255
  %2621 = call i32 @llvm.ctpop.i32(i32 %2620)
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  %2624 = xor i8 %2623, 1
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2624, i8* %2625, align 1
  %2626 = xor i32 %2615, 1
  %2627 = xor i32 %2626, %2616
  %2628 = lshr i32 %2627, 4
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2630, i8* %2631, align 1
  %2632 = icmp eq i32 %2616, 0
  %2633 = zext i1 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2633, i8* %2634, align 1
  %2635 = lshr i32 %2616, 31
  %2636 = trunc i32 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2636, i8* %2637, align 1
  %2638 = lshr i32 %2615, 31
  %2639 = xor i32 %2635, %2638
  %2640 = add i32 %2639, %2638
  %2641 = icmp eq i32 %2640, 2
  %2642 = zext i1 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2642, i8* %2643, align 1
  store %struct.Memory* %loadMem_42d670, %struct.Memory** %MEMORY
  %loadMem_42d677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 33
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %PC.i186
  %2648 = add i64 %2647, 154
  %2649 = load i64, i64* %PC.i186
  %2650 = add i64 %2649, 6
  %2651 = load i64, i64* %PC.i186
  %2652 = add i64 %2651, 6
  store i64 %2652, i64* %PC.i186
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2654 = load i8, i8* %2653, align 1
  %2655 = icmp eq i8 %2654, 0
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %BRANCH_TAKEN, align 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2658 = select i1 %2655, i64 %2648, i64 %2650
  store i64 %2658, i64* %2657, align 8
  store %struct.Memory* %loadMem_42d677, %struct.Memory** %MEMORY
  %loadBr_42d677 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d677 = icmp eq i8 %loadBr_42d677, 1
  br i1 %cmpBr_42d677, label %block_.L_42d711, label %block_42d67d

block_42d67d:                                     ; preds = %block_.L_42d670
  %loadMem_42d67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 1
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 15
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RBP.i185
  %2669 = sub i64 %2668, 16
  %2670 = load i64, i64* %PC.i183
  %2671 = add i64 %2670, 4
  store i64 %2671, i64* %PC.i183
  %2672 = inttoptr i64 %2669 to i64*
  %2673 = load i64, i64* %2672
  store i64 %2673, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_42d67d, %struct.Memory** %MEMORY
  %loadMem_42d681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 5
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RBP.i182
  %2684 = sub i64 %2683, 36
  %2685 = load i64, i64* %PC.i180
  %2686 = add i64 %2685, 4
  store i64 %2686, i64* %PC.i180
  %2687 = inttoptr i64 %2684 to i32*
  %2688 = load i32, i32* %2687
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_42d681, %struct.Memory** %MEMORY
  %loadMem_42d685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 1
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 5
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2699, i64 0, i64 0
  %YMM0.i179 = bitcast %union.VectorReg* %2700 to %"class.std::bitset"*
  %2701 = bitcast %"class.std::bitset"* %YMM0.i179 to i8*
  %2702 = load i64, i64* %RAX.i177
  %2703 = load i64, i64* %RCX.i178
  %2704 = mul i64 %2703, 4
  %2705 = add i64 %2702, 3600
  %2706 = add i64 %2705, %2704
  %2707 = load i64, i64* %PC.i176
  %2708 = add i64 %2707, 9
  store i64 %2708, i64* %PC.i176
  %2709 = inttoptr i64 %2706 to float*
  %2710 = load float, float* %2709
  %2711 = bitcast i8* %2701 to float*
  store float %2710, float* %2711, align 1
  %2712 = getelementptr inbounds i8, i8* %2701, i64 4
  %2713 = bitcast i8* %2712 to float*
  store float 0.000000e+00, float* %2713, align 1
  %2714 = getelementptr inbounds i8, i8* %2701, i64 8
  %2715 = bitcast i8* %2714 to float*
  store float 0.000000e+00, float* %2715, align 1
  %2716 = getelementptr inbounds i8, i8* %2701, i64 12
  %2717 = bitcast i8* %2716 to float*
  store float 0.000000e+00, float* %2717, align 1
  store %struct.Memory* %loadMem_42d685, %struct.Memory** %MEMORY
  %loadMem_42d68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 33
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 1
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %2723 to i64*
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 15
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2726 to i64*
  %2727 = load i64, i64* %RBP.i175
  %2728 = sub i64 %2727, 8
  %2729 = load i64, i64* %PC.i173
  %2730 = add i64 %2729, 4
  store i64 %2730, i64* %PC.i173
  %2731 = inttoptr i64 %2728 to i64*
  %2732 = load i64, i64* %2731
  store i64 %2732, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_42d68e, %struct.Memory** %MEMORY
  %loadMem_42d692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 33
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 5
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 15
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2741 to i64*
  %2742 = load i64, i64* %RBP.i172
  %2743 = sub i64 %2742, 36
  %2744 = load i64, i64* %PC.i170
  %2745 = add i64 %2744, 4
  store i64 %2745, i64* %PC.i170
  %2746 = inttoptr i64 %2743 to i32*
  %2747 = load i32, i32* %2746
  %2748 = sext i32 %2747 to i64
  store i64 %2748, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_42d692, %struct.Memory** %MEMORY
  %loadMem_42d696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 1
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 5
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2758, i64 0, i64 0
  %XMM0.i166 = bitcast %union.VectorReg* %2759 to %union.vec128_t*
  %2760 = bitcast %union.vec128_t* %XMM0.i166 to i8*
  %2761 = load i64, i64* %RAX.i164
  %2762 = load i64, i64* %RCX.i165
  %2763 = mul i64 %2762, 4
  %2764 = add i64 %2761, 3600
  %2765 = add i64 %2764, %2763
  %2766 = load i64, i64* %PC.i163
  %2767 = add i64 %2766, 8
  store i64 %2767, i64* %PC.i163
  %2768 = bitcast i8* %2760 to <2 x float>*
  %2769 = load <2 x float>, <2 x float>* %2768, align 1
  %2770 = extractelement <2 x float> %2769, i32 0
  %2771 = inttoptr i64 %2765 to float*
  %2772 = load float, float* %2771
  %2773 = fcmp uno float %2770, %2772
  br i1 %2773, label %2774, label %2786

; <label>:2774:                                   ; preds = %block_42d67d
  %2775 = fadd float %2770, %2772
  %2776 = bitcast float %2775 to i32
  %2777 = and i32 %2776, 2143289344
  %2778 = icmp eq i32 %2777, 2139095040
  %2779 = and i32 %2776, 4194303
  %2780 = icmp ne i32 %2779, 0
  %2781 = and i1 %2778, %2780
  br i1 %2781, label %2782, label %2792

; <label>:2782:                                   ; preds = %2774
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2784 = load i64, i64* %2783, align 8
  %2785 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2784, %struct.Memory* %loadMem_42d696)
  br label %routine_ucomiss_0xe10__rax__rcx_4____xmm0.exit

; <label>:2786:                                   ; preds = %block_42d67d
  %2787 = fcmp ogt float %2770, %2772
  br i1 %2787, label %2792, label %2788

; <label>:2788:                                   ; preds = %2786
  %2789 = fcmp olt float %2770, %2772
  br i1 %2789, label %2792, label %2790

; <label>:2790:                                   ; preds = %2788
  %2791 = fcmp oeq float %2770, %2772
  br i1 %2791, label %2792, label %2799

; <label>:2792:                                   ; preds = %2790, %2788, %2786, %2774
  %2793 = phi i8 [ 0, %2786 ], [ 0, %2788 ], [ 1, %2790 ], [ 1, %2774 ]
  %2794 = phi i8 [ 0, %2786 ], [ 0, %2788 ], [ 0, %2790 ], [ 1, %2774 ]
  %2795 = phi i8 [ 0, %2786 ], [ 1, %2788 ], [ 0, %2790 ], [ 1, %2774 ]
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2793, i8* %2796, align 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2794, i8* %2797, align 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2795, i8* %2798, align 1
  br label %2799

; <label>:2799:                                   ; preds = %2792, %2790
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2800, align 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2801, align 1
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2802, align 1
  br label %routine_ucomiss_0xe10__rax__rcx_4____xmm0.exit

routine_ucomiss_0xe10__rax__rcx_4____xmm0.exit:   ; preds = %2782, %2799
  %2803 = phi %struct.Memory* [ %2785, %2782 ], [ %loadMem_42d696, %2799 ]
  store %struct.Memory* %2803, %struct.Memory** %MEMORY
  %loadMem_42d69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2806 to i64*
  %2807 = load i64, i64* %PC.i162
  %2808 = add i64 %2807, 115
  %2809 = load i64, i64* %PC.i162
  %2810 = add i64 %2809, 6
  %2811 = load i64, i64* %PC.i162
  %2812 = add i64 %2811, 6
  store i64 %2812, i64* %PC.i162
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2814 = load i8, i8* %2813, align 1
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2816 = load i8, i8* %2815, align 1
  %2817 = or i8 %2816, %2814
  %2818 = icmp ne i8 %2817, 0
  %2819 = zext i1 %2818 to i8
  store i8 %2819, i8* %BRANCH_TAKEN, align 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2821 = select i1 %2818, i64 %2808, i64 %2810
  store i64 %2821, i64* %2820, align 8
  store %struct.Memory* %loadMem_42d69e, %struct.Memory** %MEMORY
  %loadBr_42d69e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d69e = icmp eq i8 %loadBr_42d69e, 1
  br i1 %cmpBr_42d69e, label %block_.L_42d711, label %block_42d6a4

block_42d6a4:                                     ; preds = %routine_ucomiss_0xe10__rax__rcx_4____xmm0.exit
  %loadMem_42d6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2824 to i64*
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 1
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 15
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %RBP.i161
  %2832 = sub i64 %2831, 3664
  %2833 = load i64, i64* %PC.i159
  %2834 = add i64 %2833, 7
  store i64 %2834, i64* %PC.i159
  store i64 %2832, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_42d6a4, %struct.Memory** %MEMORY
  %loadMem_42d6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 33
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2837 to i64*
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 15
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 17
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2843 to i64*
  %2844 = load i64, i64* %RBP.i158
  %2845 = sub i64 %2844, 2064
  %2846 = load i64, i64* %PC.i157
  %2847 = add i64 %2846, 7
  store i64 %2847, i64* %PC.i157
  store i64 %2845, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_42d6ab, %struct.Memory** %MEMORY
  %loadMem_42d6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2851, i64 0, i64 0
  %YMM0.i156 = bitcast %union.VectorReg* %2852 to %"class.std::bitset"*
  %2853 = bitcast %"class.std::bitset"* %YMM0.i156 to i8*
  %2854 = load i64, i64* %PC.i155
  %2855 = add i64 %2854, ptrtoint (%G_0xb5a62__rip__type* @G_0xb5a62__rip_ to i64)
  %2856 = load i64, i64* %PC.i155
  %2857 = add i64 %2856, 8
  store i64 %2857, i64* %PC.i155
  %2858 = inttoptr i64 %2855 to float*
  %2859 = load float, float* %2858
  %2860 = bitcast i8* %2853 to float*
  store float %2859, float* %2860, align 1
  %2861 = getelementptr inbounds i8, i8* %2853, i64 4
  %2862 = bitcast i8* %2861 to float*
  store float 0.000000e+00, float* %2862, align 1
  %2863 = getelementptr inbounds i8, i8* %2853, i64 8
  %2864 = bitcast i8* %2863 to float*
  store float 0.000000e+00, float* %2864, align 1
  %2865 = getelementptr inbounds i8, i8* %2853, i64 12
  %2866 = bitcast i8* %2865 to float*
  store float 0.000000e+00, float* %2866, align 1
  store %struct.Memory* %loadMem_42d6b2, %struct.Memory** %MEMORY
  %loadMem_42d6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2870, i64 0, i64 1
  %YMM1.i154 = bitcast %union.VectorReg* %2871 to %"class.std::bitset"*
  %2872 = bitcast %"class.std::bitset"* %YMM1.i154 to i8*
  %2873 = load i64, i64* %PC.i153
  %2874 = add i64 %2873, ptrtoint (%G_0xb58c6__rip__type* @G_0xb58c6__rip_ to i64)
  %2875 = load i64, i64* %PC.i153
  %2876 = add i64 %2875, 8
  store i64 %2876, i64* %PC.i153
  %2877 = inttoptr i64 %2874 to double*
  %2878 = load double, double* %2877
  %2879 = bitcast i8* %2872 to double*
  store double %2878, double* %2879, align 1
  %2880 = getelementptr inbounds i8, i8* %2872, i64 8
  %2881 = bitcast i8* %2880 to double*
  store double 0.000000e+00, double* %2881, align 1
  store %struct.Memory* %loadMem_42d6ba, %struct.Memory** %MEMORY
  %loadMem_42d6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 33
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2884 to i64*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 11
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RDI.i151 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 15
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %2890 to i64*
  %2891 = load i64, i64* %RBP.i152
  %2892 = sub i64 %2891, 36
  %2893 = load i64, i64* %PC.i150
  %2894 = add i64 %2893, 3
  store i64 %2894, i64* %PC.i150
  %2895 = inttoptr i64 %2892 to i32*
  %2896 = load i32, i32* %2895
  %2897 = zext i32 %2896 to i64
  store i64 %2897, i64* %RDI.i151, align 8
  store %struct.Memory* %loadMem_42d6c2, %struct.Memory** %MEMORY
  %loadMem_42d6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 5
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 15
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %2906 to i64*
  %2907 = load i64, i64* %RBP.i149
  %2908 = sub i64 %2907, 16
  %2909 = load i64, i64* %PC.i147
  %2910 = add i64 %2909, 4
  store i64 %2910, i64* %PC.i147
  %2911 = inttoptr i64 %2908 to i64*
  %2912 = load i64, i64* %2911
  store i64 %2912, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_42d6c5, %struct.Memory** %MEMORY
  %loadMem_42d6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 7
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 15
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RBP.i146
  %2923 = sub i64 %2922, 36
  %2924 = load i64, i64* %PC.i144
  %2925 = add i64 %2924, 4
  store i64 %2925, i64* %PC.i144
  %2926 = inttoptr i64 %2923 to i32*
  %2927 = load i32, i32* %2926
  %2928 = sext i32 %2927 to i64
  store i64 %2928, i64* %RDX.i145, align 8
  store %struct.Memory* %loadMem_42d6c9, %struct.Memory** %MEMORY
  %loadMem_42d6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2933 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2932, i64 0, i64 2
  %YMM2.i142 = bitcast %union.VectorReg* %2933 to %"class.std::bitset"*
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2934, i64 0, i64 0
  %XMM0.i143 = bitcast %union.VectorReg* %2935 to %union.vec128_t*
  %2936 = bitcast %"class.std::bitset"* %YMM2.i142 to i8*
  %2937 = bitcast %union.vec128_t* %XMM0.i143 to i8*
  %2938 = load i64, i64* %PC.i141
  %2939 = add i64 %2938, 3
  store i64 %2939, i64* %PC.i141
  %2940 = bitcast i8* %2937 to <2 x i32>*
  %2941 = load <2 x i32>, <2 x i32>* %2940, align 1
  %2942 = getelementptr inbounds i8, i8* %2937, i64 8
  %2943 = bitcast i8* %2942 to <2 x i32>*
  %2944 = load <2 x i32>, <2 x i32>* %2943, align 1
  %2945 = extractelement <2 x i32> %2941, i32 0
  %2946 = bitcast i8* %2936 to i32*
  store i32 %2945, i32* %2946, align 1
  %2947 = extractelement <2 x i32> %2941, i32 1
  %2948 = getelementptr inbounds i8, i8* %2936, i64 4
  %2949 = bitcast i8* %2948 to i32*
  store i32 %2947, i32* %2949, align 1
  %2950 = extractelement <2 x i32> %2944, i32 0
  %2951 = getelementptr inbounds i8, i8* %2936, i64 8
  %2952 = bitcast i8* %2951 to i32*
  store i32 %2950, i32* %2952, align 1
  %2953 = extractelement <2 x i32> %2944, i32 1
  %2954 = getelementptr inbounds i8, i8* %2936, i64 12
  %2955 = bitcast i8* %2954 to i32*
  store i32 %2953, i32* %2955, align 1
  store %struct.Memory* %loadMem_42d6cd, %struct.Memory** %MEMORY
  %loadMem_42d6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 33
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2958 to i64*
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 5
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 7
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2965, i64 0, i64 2
  %YMM2.i140 = bitcast %union.VectorReg* %2966 to %"class.std::bitset"*
  %2967 = bitcast %"class.std::bitset"* %YMM2.i140 to i8*
  %2968 = bitcast %"class.std::bitset"* %YMM2.i140 to i8*
  %2969 = load i64, i64* %RCX.i138
  %2970 = load i64, i64* %RDX.i139
  %2971 = mul i64 %2970, 4
  %2972 = add i64 %2969, 3600
  %2973 = add i64 %2972, %2971
  %2974 = load i64, i64* %PC.i137
  %2975 = add i64 %2974, 9
  store i64 %2975, i64* %PC.i137
  %2976 = bitcast i8* %2968 to <2 x float>*
  %2977 = load <2 x float>, <2 x float>* %2976, align 1
  %2978 = getelementptr inbounds i8, i8* %2968, i64 8
  %2979 = bitcast i8* %2978 to <2 x i32>*
  %2980 = load <2 x i32>, <2 x i32>* %2979, align 1
  %2981 = inttoptr i64 %2973 to float*
  %2982 = load float, float* %2981
  %2983 = extractelement <2 x float> %2977, i32 0
  %2984 = fmul float %2983, %2982
  %2985 = bitcast i8* %2967 to float*
  store float %2984, float* %2985, align 1
  %2986 = bitcast <2 x float> %2977 to <2 x i32>
  %2987 = extractelement <2 x i32> %2986, i32 1
  %2988 = getelementptr inbounds i8, i8* %2967, i64 4
  %2989 = bitcast i8* %2988 to i32*
  store i32 %2987, i32* %2989, align 1
  %2990 = extractelement <2 x i32> %2980, i32 0
  %2991 = getelementptr inbounds i8, i8* %2967, i64 8
  %2992 = bitcast i8* %2991 to i32*
  store i32 %2990, i32* %2992, align 1
  %2993 = extractelement <2 x i32> %2980, i32 1
  %2994 = getelementptr inbounds i8, i8* %2967, i64 12
  %2995 = bitcast i8* %2994 to i32*
  store i32 %2993, i32* %2995, align 1
  store %struct.Memory* %loadMem_42d6d0, %struct.Memory** %MEMORY
  %loadMem_42d6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 9
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RSI.i135 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3002, i64 0, i64 2
  %XMM2.i136 = bitcast %union.VectorReg* %3003 to %union.vec128_t*
  %3004 = bitcast %union.vec128_t* %XMM2.i136 to i8*
  %3005 = load i64, i64* %PC.i134
  %3006 = add i64 %3005, 4
  store i64 %3006, i64* %PC.i134
  %3007 = bitcast i8* %3004 to <2 x float>*
  %3008 = load <2 x float>, <2 x float>* %3007, align 1
  %3009 = extractelement <2 x float> %3008, i32 0
  %3010 = call float @llvm.trunc.f32(float %3009)
  %3011 = call float @llvm.fabs.f32(float %3010)
  %3012 = fcmp ogt float %3011, 0x41E0000000000000
  %3013 = fptosi float %3010 to i32
  %3014 = zext i32 %3013 to i64
  %3015 = select i1 %3012, i64 2147483648, i64 %3014
  store i64 %3015, i64* %RSI.i135, align 8
  store %struct.Memory* %loadMem_42d6d9, %struct.Memory** %MEMORY
  %loadMem_42d6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 9
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3021 to i32*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3022, i64 0, i64 2
  %YMM2.i133 = bitcast %union.VectorReg* %3023 to %"class.std::bitset"*
  %3024 = bitcast %"class.std::bitset"* %YMM2.i133 to i8*
  %3025 = load i32, i32* %ESI.i
  %3026 = zext i32 %3025 to i64
  %3027 = load i64, i64* %PC.i132
  %3028 = add i64 %3027, 4
  store i64 %3028, i64* %PC.i132
  %3029 = sitofp i32 %3025 to double
  %3030 = bitcast i8* %3024 to double*
  store double %3029, double* %3030, align 1
  store %struct.Memory* %loadMem_42d6dd, %struct.Memory** %MEMORY
  %loadMem_42d6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3035 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3034, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3035 to %"class.std::bitset"*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3037 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3036, i64 0, i64 1
  %XMM1.i131 = bitcast %union.VectorReg* %3037 to %union.vec128_t*
  %3038 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3039 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3040 = bitcast %union.vec128_t* %XMM1.i131 to i8*
  %3041 = load i64, i64* %PC.i130
  %3042 = add i64 %3041, 4
  store i64 %3042, i64* %PC.i130
  %3043 = bitcast i8* %3039 to double*
  %3044 = load double, double* %3043, align 1
  %3045 = getelementptr inbounds i8, i8* %3039, i64 8
  %3046 = bitcast i8* %3045 to i64*
  %3047 = load i64, i64* %3046, align 1
  %3048 = bitcast i8* %3040 to double*
  %3049 = load double, double* %3048, align 1
  %3050 = fadd double %3044, %3049
  %3051 = bitcast i8* %3038 to double*
  store double %3050, double* %3051, align 1
  %3052 = getelementptr inbounds i8, i8* %3038, i64 8
  %3053 = bitcast i8* %3052 to i64*
  store i64 %3047, i64* %3053, align 1
  store %struct.Memory* %loadMem_42d6e1, %struct.Memory** %MEMORY
  %loadMem_42d6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 33
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3056 to i64*
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 9
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %RSI.i129 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3060, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3061 to %union.vec128_t*
  %3062 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3063 = load i64, i64* %PC.i128
  %3064 = add i64 %3063, 4
  store i64 %3064, i64* %PC.i128
  %3065 = bitcast i8* %3062 to double*
  %3066 = load double, double* %3065, align 1
  %3067 = call double @llvm.trunc.f64(double %3066)
  %3068 = call double @llvm.fabs.f64(double %3067)
  %3069 = fcmp ogt double %3068, 0x41DFFFFFFFC00000
  %3070 = fptosi double %3067 to i32
  %3071 = zext i32 %3070 to i64
  %3072 = select i1 %3069, i64 2147483648, i64 %3071
  store i64 %3072, i64* %RSI.i129, align 8
  store %struct.Memory* %loadMem_42d6e5, %struct.Memory** %MEMORY
  %loadMem_42d6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 5
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 15
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %3081 to i64*
  %3082 = load i64, i64* %RBP.i127
  %3083 = sub i64 %3082, 16
  %3084 = load i64, i64* %PC.i125
  %3085 = add i64 %3084, 4
  store i64 %3085, i64* %PC.i125
  %3086 = inttoptr i64 %3083 to i64*
  %3087 = load i64, i64* %3086
  store i64 %3087, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_42d6e9, %struct.Memory** %MEMORY
  %loadMem_42d6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 7
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RDX.i123 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 15
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3096 to i64*
  %3097 = load i64, i64* %RBP.i124
  %3098 = sub i64 %3097, 36
  %3099 = load i64, i64* %PC.i122
  %3100 = add i64 %3099, 4
  store i64 %3100, i64* %PC.i122
  %3101 = inttoptr i64 %3098 to i32*
  %3102 = load i32, i32* %3101
  %3103 = sext i32 %3102 to i64
  store i64 %3103, i64* %RDX.i123, align 8
  store %struct.Memory* %loadMem_42d6ed, %struct.Memory** %MEMORY
  %loadMem_42d6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 33
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 5
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 7
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RDX.i120 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3113, i64 0, i64 0
  %YMM0.i121 = bitcast %union.VectorReg* %3114 to %"class.std::bitset"*
  %3115 = bitcast %"class.std::bitset"* %YMM0.i121 to i8*
  %3116 = bitcast %"class.std::bitset"* %YMM0.i121 to i8*
  %3117 = load i64, i64* %RCX.i119
  %3118 = load i64, i64* %RDX.i120
  %3119 = mul i64 %3118, 4
  %3120 = add i64 %3117, 6800
  %3121 = add i64 %3120, %3119
  %3122 = load i64, i64* %PC.i118
  %3123 = add i64 %3122, 9
  store i64 %3123, i64* %PC.i118
  %3124 = bitcast i8* %3116 to <2 x float>*
  %3125 = load <2 x float>, <2 x float>* %3124, align 1
  %3126 = getelementptr inbounds i8, i8* %3116, i64 8
  %3127 = bitcast i8* %3126 to <2 x i32>*
  %3128 = load <2 x i32>, <2 x i32>* %3127, align 1
  %3129 = inttoptr i64 %3121 to float*
  %3130 = load float, float* %3129
  %3131 = extractelement <2 x float> %3125, i32 0
  %3132 = fdiv float %3131, %3130
  %3133 = bitcast i8* %3115 to float*
  store float %3132, float* %3133, align 1
  %3134 = bitcast <2 x float> %3125 to <2 x i32>
  %3135 = extractelement <2 x i32> %3134, i32 1
  %3136 = getelementptr inbounds i8, i8* %3115, i64 4
  %3137 = bitcast i8* %3136 to i32*
  store i32 %3135, i32* %3137, align 1
  %3138 = extractelement <2 x i32> %3128, i32 0
  %3139 = getelementptr inbounds i8, i8* %3115, i64 8
  %3140 = bitcast i8* %3139 to i32*
  store i32 %3138, i32* %3140, align 1
  %3141 = extractelement <2 x i32> %3128, i32 1
  %3142 = getelementptr inbounds i8, i8* %3115, i64 12
  %3143 = bitcast i8* %3142 to i32*
  store i32 %3141, i32* %3143, align 1
  store %struct.Memory* %loadMem_42d6f1, %struct.Memory** %MEMORY
  %loadMem_42d6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 33
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 7
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3151 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3150, i64 0, i64 0
  %XMM0.i117 = bitcast %union.VectorReg* %3151 to %union.vec128_t*
  %3152 = bitcast %union.vec128_t* %XMM0.i117 to i8*
  %3153 = load i64, i64* %PC.i116
  %3154 = add i64 %3153, 4
  store i64 %3154, i64* %PC.i116
  %3155 = bitcast i8* %3152 to <2 x float>*
  %3156 = load <2 x float>, <2 x float>* %3155, align 1
  %3157 = extractelement <2 x float> %3156, i32 0
  %3158 = call float @llvm.trunc.f32(float %3157)
  %3159 = call float @llvm.fabs.f32(float %3158)
  %3160 = fcmp ogt float %3159, 0x41E0000000000000
  %3161 = fptosi float %3158 to i32
  %3162 = zext i32 %3161 to i64
  %3163 = select i1 %3160, i64 2147483648, i64 %3162
  store i64 %3163, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_42d6fa, %struct.Memory** %MEMORY
  %loadMem_42d6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 5
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 15
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %RBP.i115
  %3174 = sub i64 %3173, 456
  %3175 = load i64, i64* %PC.i113
  %3176 = add i64 %3175, 6
  store i64 %3176, i64* %PC.i113
  %3177 = inttoptr i64 %3174 to i32*
  %3178 = load i32, i32* %3177
  %3179 = zext i32 %3178 to i64
  store i64 %3179, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_42d6fe, %struct.Memory** %MEMORY
  %loadMem_42d704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 15
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 19
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %R9.i = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RBP.i112
  %3190 = sub i64 %3189, 16
  %3191 = load i64, i64* %PC.i111
  %3192 = add i64 %3191, 4
  store i64 %3192, i64* %PC.i111
  %3193 = inttoptr i64 %3190 to i64*
  %3194 = load i64, i64* %3193
  store i64 %3194, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_42d704, %struct.Memory** %MEMORY
  %loadMem_42d708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 1
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 13
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RSP.i110 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %RSP.i110
  %3205 = load i64, i64* %RAX.i109
  %3206 = load i64, i64* %PC.i108
  %3207 = add i64 %3206, 4
  store i64 %3207, i64* %PC.i108
  %3208 = inttoptr i64 %3204 to i64*
  store i64 %3205, i64* %3208
  store %struct.Memory* %loadMem_42d708, %struct.Memory** %MEMORY
  %loadMem1_42d70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3211 to i64*
  %3212 = load i64, i64* %PC.i107
  %3213 = add i64 %3212, -16444
  %3214 = load i64, i64* %PC.i107
  %3215 = add i64 %3214, 5
  %3216 = load i64, i64* %PC.i107
  %3217 = add i64 %3216, 5
  store i64 %3217, i64* %PC.i107
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3219 = load i64, i64* %3218, align 8
  %3220 = add i64 %3219, -8
  %3221 = inttoptr i64 %3220 to i64*
  store i64 %3215, i64* %3221
  store i64 %3220, i64* %3218, align 8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3213, i64* %3222, align 8
  store %struct.Memory* %loadMem1_42d70c, %struct.Memory** %MEMORY
  %loadMem2_42d70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d70c = load i64, i64* %3
  %call2_42d70c = call %struct.Memory* @sub_4296d0.accumulate_influence(%struct.State* %0, i64 %loadPC_42d70c, %struct.Memory* %loadMem2_42d70c)
  store %struct.Memory* %call2_42d70c, %struct.Memory** %MEMORY
  br label %block_.L_42d711

block_.L_42d711:                                  ; preds = %block_42d6a4, %routine_ucomiss_0xe10__rax__rcx_4____xmm0.exit, %block_.L_42d670
  %loadMem_42d711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 33
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %PC.i106
  %3227 = add i64 %3226, 5
  %3228 = load i64, i64* %PC.i106
  %3229 = add i64 %3228, 5
  store i64 %3229, i64* %PC.i106
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3227, i64* %3230, align 8
  store %struct.Memory* %loadMem_42d711, %struct.Memory** %MEMORY
  br label %block_.L_42d716

block_.L_42d716:                                  ; preds = %block_.L_42d711, %block_42d5fe
  %loadMem_42d716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %PC.i105
  %3235 = add i64 %3234, 5
  %3236 = load i64, i64* %PC.i105
  %3237 = add i64 %3236, 5
  store i64 %3237, i64* %PC.i105
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3235, i64* %3238, align 8
  store %struct.Memory* %loadMem_42d716, %struct.Memory** %MEMORY
  br label %block_.L_42d71b

block_.L_42d71b:                                  ; preds = %block_.L_42d716, %block_42d5b5
  %loadMem_42d71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3241 to i64*
  %3242 = load i64, i64* %PC.i104
  %3243 = add i64 %3242, 5
  %3244 = load i64, i64* %PC.i104
  %3245 = add i64 %3244, 5
  store i64 %3245, i64* %PC.i104
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3243, i64* %3246, align 8
  store %struct.Memory* %loadMem_42d71b, %struct.Memory** %MEMORY
  br label %block_.L_42d720

block_.L_42d720:                                  ; preds = %block_.L_42d71b
  %loadMem_42d720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 1
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 15
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3255 to i64*
  %3256 = load i64, i64* %RBP.i103
  %3257 = sub i64 %3256, 36
  %3258 = load i64, i64* %PC.i101
  %3259 = add i64 %3258, 3
  store i64 %3259, i64* %PC.i101
  %3260 = inttoptr i64 %3257 to i32*
  %3261 = load i32, i32* %3260
  %3262 = zext i32 %3261 to i64
  store i64 %3262, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_42d720, %struct.Memory** %MEMORY
  %loadMem_42d723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 1
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %RAX.i100
  %3270 = load i64, i64* %PC.i99
  %3271 = add i64 %3270, 3
  store i64 %3271, i64* %PC.i99
  %3272 = trunc i64 %3269 to i32
  %3273 = add i32 1, %3272
  %3274 = zext i32 %3273 to i64
  store i64 %3274, i64* %RAX.i100, align 8
  %3275 = icmp ult i32 %3273, %3272
  %3276 = icmp ult i32 %3273, 1
  %3277 = or i1 %3275, %3276
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3278, i8* %3279, align 1
  %3280 = and i32 %3273, 255
  %3281 = call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = xor i8 %3283, 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3284, i8* %3285, align 1
  %3286 = xor i64 1, %3269
  %3287 = trunc i64 %3286 to i32
  %3288 = xor i32 %3287, %3273
  %3289 = lshr i32 %3288, 4
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3291, i8* %3292, align 1
  %3293 = icmp eq i32 %3273, 0
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3294, i8* %3295, align 1
  %3296 = lshr i32 %3273, 31
  %3297 = trunc i32 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3297, i8* %3298, align 1
  %3299 = lshr i32 %3272, 31
  %3300 = xor i32 %3296, %3299
  %3301 = add i32 %3300, %3296
  %3302 = icmp eq i32 %3301, 2
  %3303 = zext i1 %3302 to i8
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3303, i8* %3304, align 1
  store %struct.Memory* %loadMem_42d723, %struct.Memory** %MEMORY
  %loadMem_42d726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 1
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %3310 to i32*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i98
  %3315 = sub i64 %3314, 36
  %3316 = load i32, i32* %EAX.i97
  %3317 = zext i32 %3316 to i64
  %3318 = load i64, i64* %PC.i96
  %3319 = add i64 %3318, 3
  store i64 %3319, i64* %PC.i96
  %3320 = inttoptr i64 %3315 to i32*
  store i32 %3316, i32* %3320
  store %struct.Memory* %loadMem_42d726, %struct.Memory** %MEMORY
  %loadMem_42d729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %PC.i95
  %3325 = add i64 %3324, -385
  %3326 = load i64, i64* %PC.i95
  %3327 = add i64 %3326, 5
  store i64 %3327, i64* %PC.i95
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3325, i64* %3328, align 8
  store %struct.Memory* %loadMem_42d729, %struct.Memory** %MEMORY
  br label %block_.L_42d5a8

block_.L_42d72e:                                  ; preds = %block_.L_42d5a8
  %loadMem_42d72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 15
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %RBP.i94
  %3336 = sub i64 %3335, 36
  %3337 = load i64, i64* %PC.i93
  %3338 = add i64 %3337, 7
  store i64 %3338, i64* %PC.i93
  %3339 = inttoptr i64 %3336 to i32*
  store i32 21, i32* %3339
  store %struct.Memory* %loadMem_42d72e, %struct.Memory** %MEMORY
  br label %block_.L_42d735

block_.L_42d735:                                  ; preds = %block_.L_42d7d9, %block_.L_42d72e
  %loadMem_42d735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RBP.i92
  %3347 = sub i64 %3346, 36
  %3348 = load i64, i64* %PC.i91
  %3349 = add i64 %3348, 7
  store i64 %3349, i64* %PC.i91
  %3350 = inttoptr i64 %3347 to i32*
  %3351 = load i32, i32* %3350
  %3352 = sub i32 %3351, 400
  %3353 = icmp ult i32 %3351, 400
  %3354 = zext i1 %3353 to i8
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3354, i8* %3355, align 1
  %3356 = and i32 %3352, 255
  %3357 = call i32 @llvm.ctpop.i32(i32 %3356)
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = xor i8 %3359, 1
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3360, i8* %3361, align 1
  %3362 = xor i32 %3351, 400
  %3363 = xor i32 %3362, %3352
  %3364 = lshr i32 %3363, 4
  %3365 = trunc i32 %3364 to i8
  %3366 = and i8 %3365, 1
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3366, i8* %3367, align 1
  %3368 = icmp eq i32 %3352, 0
  %3369 = zext i1 %3368 to i8
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3369, i8* %3370, align 1
  %3371 = lshr i32 %3352, 31
  %3372 = trunc i32 %3371 to i8
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3372, i8* %3373, align 1
  %3374 = lshr i32 %3351, 31
  %3375 = xor i32 %3371, %3374
  %3376 = add i32 %3375, %3374
  %3377 = icmp eq i32 %3376, 2
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3378, i8* %3379, align 1
  store %struct.Memory* %loadMem_42d735, %struct.Memory** %MEMORY
  %loadMem_42d73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3382 to i64*
  %3383 = load i64, i64* %PC.i90
  %3384 = add i64 %3383, 171
  %3385 = load i64, i64* %PC.i90
  %3386 = add i64 %3385, 6
  %3387 = load i64, i64* %PC.i90
  %3388 = add i64 %3387, 6
  store i64 %3388, i64* %PC.i90
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3390 = load i8, i8* %3389, align 1
  %3391 = icmp ne i8 %3390, 0
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3393 = load i8, i8* %3392, align 1
  %3394 = icmp ne i8 %3393, 0
  %3395 = xor i1 %3391, %3394
  %3396 = xor i1 %3395, true
  %3397 = zext i1 %3396 to i8
  store i8 %3397, i8* %BRANCH_TAKEN, align 1
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3399 = select i1 %3395, i64 %3386, i64 %3384
  store i64 %3399, i64* %3398, align 8
  store %struct.Memory* %loadMem_42d73c, %struct.Memory** %MEMORY
  %loadBr_42d73c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d73c = icmp eq i8 %loadBr_42d73c, 1
  br i1 %cmpBr_42d73c, label %block_.L_42d7e7, label %block_42d742

block_42d742:                                     ; preds = %block_.L_42d735
  %loadMem_42d742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 1
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 15
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %3408 to i64*
  %3409 = load i64, i64* %RBP.i89
  %3410 = sub i64 %3409, 36
  %3411 = load i64, i64* %PC.i87
  %3412 = add i64 %3411, 4
  store i64 %3412, i64* %PC.i87
  %3413 = inttoptr i64 %3410 to i32*
  %3414 = load i32, i32* %3413
  %3415 = sext i32 %3414 to i64
  store i64 %3415, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_42d742, %struct.Memory** %MEMORY
  %loadMem_42d746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 33
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3418 to i64*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 1
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 5
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %3424 to i64*
  %3425 = load i64, i64* %RAX.i85
  %3426 = add i64 %3425, 12099168
  %3427 = load i64, i64* %PC.i84
  %3428 = add i64 %3427, 8
  store i64 %3428, i64* %PC.i84
  %3429 = inttoptr i64 %3426 to i8*
  %3430 = load i8, i8* %3429
  %3431 = zext i8 %3430 to i64
  store i64 %3431, i64* %RCX.i86, align 8
  store %struct.Memory* %loadMem_42d746, %struct.Memory** %MEMORY
  %loadMem_42d74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 33
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 5
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3437 to i32*
  %3438 = load i32, i32* %ECX.i
  %3439 = zext i32 %3438 to i64
  %3440 = load i64, i64* %PC.i83
  %3441 = add i64 %3440, 3
  store i64 %3441, i64* %PC.i83
  %3442 = sub i32 %3438, 3
  %3443 = icmp ult i32 %3438, 3
  %3444 = zext i1 %3443 to i8
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3444, i8* %3445, align 1
  %3446 = and i32 %3442, 255
  %3447 = call i32 @llvm.ctpop.i32(i32 %3446)
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  %3450 = xor i8 %3449, 1
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3450, i8* %3451, align 1
  %3452 = xor i64 3, %3439
  %3453 = trunc i64 %3452 to i32
  %3454 = xor i32 %3453, %3442
  %3455 = lshr i32 %3454, 4
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3457, i8* %3458, align 1
  %3459 = icmp eq i32 %3442, 0
  %3460 = zext i1 %3459 to i8
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3460, i8* %3461, align 1
  %3462 = lshr i32 %3442, 31
  %3463 = trunc i32 %3462 to i8
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3463, i8* %3464, align 1
  %3465 = lshr i32 %3438, 31
  %3466 = xor i32 %3462, %3465
  %3467 = add i32 %3466, %3465
  %3468 = icmp eq i32 %3467, 2
  %3469 = zext i1 %3468 to i8
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3469, i8* %3470, align 1
  store %struct.Memory* %loadMem_42d74e, %struct.Memory** %MEMORY
  %loadMem_42d751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 33
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %PC.i82
  %3475 = add i64 %3474, 131
  %3476 = load i64, i64* %PC.i82
  %3477 = add i64 %3476, 6
  %3478 = load i64, i64* %PC.i82
  %3479 = add i64 %3478, 6
  store i64 %3479, i64* %PC.i82
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3481 = load i8, i8* %3480, align 1
  store i8 %3481, i8* %BRANCH_TAKEN, align 1
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3483 = icmp ne i8 %3481, 0
  %3484 = select i1 %3483, i64 %3475, i64 %3477
  store i64 %3484, i64* %3482, align 8
  store %struct.Memory* %loadMem_42d751, %struct.Memory** %MEMORY
  %loadBr_42d751 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d751 = icmp eq i8 %loadBr_42d751, 1
  br i1 %cmpBr_42d751, label %block_.L_42d7d4, label %block_42d757

block_42d757:                                     ; preds = %block_42d742
  %loadMem_42d757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 15
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %3490 to i64*
  %3491 = load i64, i64* %RBP.i81
  %3492 = sub i64 %3491, 452
  %3493 = load i64, i64* %PC.i80
  %3494 = add i64 %3493, 7
  store i64 %3494, i64* %PC.i80
  %3495 = inttoptr i64 %3492 to i32*
  %3496 = load i32, i32* %3495
  %3497 = sub i32 %3496, 1
  %3498 = icmp ult i32 %3496, 1
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3499, i8* %3500, align 1
  %3501 = and i32 %3497, 255
  %3502 = call i32 @llvm.ctpop.i32(i32 %3501)
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = xor i8 %3504, 1
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3505, i8* %3506, align 1
  %3507 = xor i32 %3496, 1
  %3508 = xor i32 %3507, %3497
  %3509 = lshr i32 %3508, 4
  %3510 = trunc i32 %3509 to i8
  %3511 = and i8 %3510, 1
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3511, i8* %3512, align 1
  %3513 = icmp eq i32 %3497, 0
  %3514 = zext i1 %3513 to i8
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3514, i8* %3515, align 1
  %3516 = lshr i32 %3497, 31
  %3517 = trunc i32 %3516 to i8
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3517, i8* %3518, align 1
  %3519 = lshr i32 %3496, 31
  %3520 = xor i32 %3516, %3519
  %3521 = add i32 %3520, %3519
  %3522 = icmp eq i32 %3521, 2
  %3523 = zext i1 %3522 to i8
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3523, i8* %3524, align 1
  store %struct.Memory* %loadMem_42d757, %struct.Memory** %MEMORY
  %loadMem_42d75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 33
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3527 to i64*
  %3528 = load i64, i64* %PC.i79
  %3529 = add i64 %3528, 62
  %3530 = load i64, i64* %PC.i79
  %3531 = add i64 %3530, 6
  %3532 = load i64, i64* %PC.i79
  %3533 = add i64 %3532, 6
  store i64 %3533, i64* %PC.i79
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3535 = load i8, i8* %3534, align 1
  %3536 = icmp eq i8 %3535, 0
  %3537 = zext i1 %3536 to i8
  store i8 %3537, i8* %BRANCH_TAKEN, align 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3539 = select i1 %3536, i64 %3529, i64 %3531
  store i64 %3539, i64* %3538, align 8
  store %struct.Memory* %loadMem_42d75e, %struct.Memory** %MEMORY
  %loadBr_42d75e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d75e = icmp eq i8 %loadBr_42d75e, 1
  br i1 %cmpBr_42d75e, label %block_.L_42d79c, label %block_42d764

block_42d764:                                     ; preds = %block_42d757
  %loadMem_42d764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3543, i64 0, i64 0
  %YMM0.i78 = bitcast %union.VectorReg* %3544 to %"class.std::bitset"*
  %3545 = bitcast %"class.std::bitset"* %YMM0.i78 to i8*
  %3546 = load i64, i64* %PC.i77
  %3547 = add i64 %3546, ptrtoint (%G_0xb59b0__rip__type* @G_0xb59b0__rip_ to i64)
  %3548 = load i64, i64* %PC.i77
  %3549 = add i64 %3548, 8
  store i64 %3549, i64* %PC.i77
  %3550 = inttoptr i64 %3547 to float*
  %3551 = load float, float* %3550
  %3552 = bitcast i8* %3545 to float*
  store float %3551, float* %3552, align 1
  %3553 = getelementptr inbounds i8, i8* %3545, i64 4
  %3554 = bitcast i8* %3553 to float*
  store float 0.000000e+00, float* %3554, align 1
  %3555 = getelementptr inbounds i8, i8* %3545, i64 8
  %3556 = bitcast i8* %3555 to float*
  store float 0.000000e+00, float* %3556, align 1
  %3557 = getelementptr inbounds i8, i8* %3545, i64 12
  %3558 = bitcast i8* %3557 to float*
  store float 0.000000e+00, float* %3558, align 1
  store %struct.Memory* %loadMem_42d764, %struct.Memory** %MEMORY
  %loadMem_42d76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 1
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 15
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RBP.i76
  %3569 = sub i64 %3568, 36
  %3570 = load i64, i64* %PC.i74
  %3571 = add i64 %3570, 4
  store i64 %3571, i64* %PC.i74
  %3572 = inttoptr i64 %3569 to i32*
  %3573 = load i32, i32* %3572
  %3574 = sext i32 %3573 to i64
  store i64 %3574, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_42d76c, %struct.Memory** %MEMORY
  %loadMem_42d770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 1
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 15
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3585 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3584, i64 0, i64 1
  %YMM1.i73 = bitcast %union.VectorReg* %3585 to %"class.std::bitset"*
  %3586 = bitcast %"class.std::bitset"* %YMM1.i73 to i8*
  %3587 = load i64, i64* %RBP.i72
  %3588 = load i64, i64* %RAX.i71
  %3589 = mul i64 %3588, 4
  %3590 = add i64 %3587, -3664
  %3591 = add i64 %3590, %3589
  %3592 = load i64, i64* %PC.i70
  %3593 = add i64 %3592, 9
  store i64 %3593, i64* %PC.i70
  %3594 = bitcast i8* %3586 to <2 x i32>*
  %3595 = load <2 x i32>, <2 x i32>* %3594, align 1
  %3596 = getelementptr inbounds i8, i8* %3586, i64 8
  %3597 = bitcast i8* %3596 to <2 x i32>*
  %3598 = load <2 x i32>, <2 x i32>* %3597, align 1
  %3599 = inttoptr i64 %3591 to i32*
  %3600 = load i32, i32* %3599
  %3601 = sitofp i32 %3600 to float
  %3602 = bitcast i8* %3586 to float*
  store float %3601, float* %3602, align 1
  %3603 = extractelement <2 x i32> %3595, i32 1
  %3604 = getelementptr inbounds i8, i8* %3586, i64 4
  %3605 = bitcast i8* %3604 to i32*
  store i32 %3603, i32* %3605, align 1
  %3606 = extractelement <2 x i32> %3598, i32 0
  %3607 = bitcast i8* %3596 to i32*
  store i32 %3606, i32* %3607, align 1
  %3608 = extractelement <2 x i32> %3598, i32 1
  %3609 = getelementptr inbounds i8, i8* %3586, i64 12
  %3610 = bitcast i8* %3609 to i32*
  store i32 %3608, i32* %3610, align 1
  store %struct.Memory* %loadMem_42d770, %struct.Memory** %MEMORY
  %loadMem_42d779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3614, i64 0, i64 1
  %YMM1.i68 = bitcast %union.VectorReg* %3615 to %"class.std::bitset"*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3617 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3616, i64 0, i64 0
  %XMM0.i69 = bitcast %union.VectorReg* %3617 to %union.vec128_t*
  %3618 = bitcast %"class.std::bitset"* %YMM1.i68 to i8*
  %3619 = bitcast %"class.std::bitset"* %YMM1.i68 to i8*
  %3620 = bitcast %union.vec128_t* %XMM0.i69 to i8*
  %3621 = load i64, i64* %PC.i67
  %3622 = add i64 %3621, 4
  store i64 %3622, i64* %PC.i67
  %3623 = bitcast i8* %3619 to <2 x float>*
  %3624 = load <2 x float>, <2 x float>* %3623, align 1
  %3625 = getelementptr inbounds i8, i8* %3619, i64 8
  %3626 = bitcast i8* %3625 to <2 x i32>*
  %3627 = load <2 x i32>, <2 x i32>* %3626, align 1
  %3628 = bitcast i8* %3620 to <2 x float>*
  %3629 = load <2 x float>, <2 x float>* %3628, align 1
  %3630 = extractelement <2 x float> %3624, i32 0
  %3631 = extractelement <2 x float> %3629, i32 0
  %3632 = fdiv float %3630, %3631
  %3633 = bitcast i8* %3618 to float*
  store float %3632, float* %3633, align 1
  %3634 = bitcast <2 x float> %3624 to <2 x i32>
  %3635 = extractelement <2 x i32> %3634, i32 1
  %3636 = getelementptr inbounds i8, i8* %3618, i64 4
  %3637 = bitcast i8* %3636 to i32*
  store i32 %3635, i32* %3637, align 1
  %3638 = extractelement <2 x i32> %3627, i32 0
  %3639 = getelementptr inbounds i8, i8* %3618, i64 8
  %3640 = bitcast i8* %3639 to i32*
  store i32 %3638, i32* %3640, align 1
  %3641 = extractelement <2 x i32> %3627, i32 1
  %3642 = getelementptr inbounds i8, i8* %3618, i64 12
  %3643 = bitcast i8* %3642 to i32*
  store i32 %3641, i32* %3643, align 1
  store %struct.Memory* %loadMem_42d779, %struct.Memory** %MEMORY
  %loadMem_42d77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 1
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 15
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RBP.i66
  %3654 = sub i64 %3653, 16
  %3655 = load i64, i64* %PC.i64
  %3656 = add i64 %3655, 4
  store i64 %3656, i64* %PC.i64
  %3657 = inttoptr i64 %3654 to i64*
  %3658 = load i64, i64* %3657
  store i64 %3658, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_42d77d, %struct.Memory** %MEMORY
  %loadMem_42d781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 5
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %3664 to i64*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 15
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %RBP.i63
  %3669 = sub i64 %3668, 36
  %3670 = load i64, i64* %PC.i61
  %3671 = add i64 %3670, 4
  store i64 %3671, i64* %PC.i61
  %3672 = inttoptr i64 %3669 to i32*
  %3673 = load i32, i32* %3672
  %3674 = sext i32 %3673 to i64
  store i64 %3674, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_42d781, %struct.Memory** %MEMORY
  %loadMem_42d785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 1
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 5
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3684, i64 0, i64 1
  %YMM1.i60 = bitcast %union.VectorReg* %3685 to %"class.std::bitset"*
  %3686 = bitcast %"class.std::bitset"* %YMM1.i60 to i8*
  %3687 = bitcast %"class.std::bitset"* %YMM1.i60 to i8*
  %3688 = load i64, i64* %RAX.i58
  %3689 = load i64, i64* %RCX.i59
  %3690 = mul i64 %3689, 4
  %3691 = add i64 %3688, 400
  %3692 = add i64 %3691, %3690
  %3693 = load i64, i64* %PC.i57
  %3694 = add i64 %3693, 9
  store i64 %3694, i64* %PC.i57
  %3695 = bitcast i8* %3687 to <2 x float>*
  %3696 = load <2 x float>, <2 x float>* %3695, align 1
  %3697 = getelementptr inbounds i8, i8* %3687, i64 8
  %3698 = bitcast i8* %3697 to <2 x i32>*
  %3699 = load <2 x i32>, <2 x i32>* %3698, align 1
  %3700 = inttoptr i64 %3692 to float*
  %3701 = load float, float* %3700
  %3702 = extractelement <2 x float> %3696, i32 0
  %3703 = fadd float %3702, %3701
  %3704 = bitcast i8* %3686 to float*
  store float %3703, float* %3704, align 1
  %3705 = bitcast <2 x float> %3696 to <2 x i32>
  %3706 = extractelement <2 x i32> %3705, i32 1
  %3707 = getelementptr inbounds i8, i8* %3686, i64 4
  %3708 = bitcast i8* %3707 to i32*
  store i32 %3706, i32* %3708, align 1
  %3709 = extractelement <2 x i32> %3699, i32 0
  %3710 = getelementptr inbounds i8, i8* %3686, i64 8
  %3711 = bitcast i8* %3710 to i32*
  store i32 %3709, i32* %3711, align 1
  %3712 = extractelement <2 x i32> %3699, i32 1
  %3713 = getelementptr inbounds i8, i8* %3686, i64 12
  %3714 = bitcast i8* %3713 to i32*
  store i32 %3712, i32* %3714, align 1
  store %struct.Memory* %loadMem_42d785, %struct.Memory** %MEMORY
  %loadMem_42d78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 1
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 5
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3724, i64 0, i64 1
  %XMM1.i56 = bitcast %union.VectorReg* %3725 to %union.vec128_t*
  %3726 = load i64, i64* %RAX.i54
  %3727 = load i64, i64* %RCX.i55
  %3728 = mul i64 %3727, 4
  %3729 = add i64 %3726, 400
  %3730 = add i64 %3729, %3728
  %3731 = bitcast %union.vec128_t* %XMM1.i56 to i8*
  %3732 = load i64, i64* %PC.i53
  %3733 = add i64 %3732, 9
  store i64 %3733, i64* %PC.i53
  %3734 = bitcast i8* %3731 to <2 x float>*
  %3735 = load <2 x float>, <2 x float>* %3734, align 1
  %3736 = extractelement <2 x float> %3735, i32 0
  %3737 = inttoptr i64 %3730 to float*
  store float %3736, float* %3737
  store %struct.Memory* %loadMem_42d78e, %struct.Memory** %MEMORY
  %loadMem_42d797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3740 to i64*
  %3741 = load i64, i64* %PC.i52
  %3742 = add i64 %3741, 56
  %3743 = load i64, i64* %PC.i52
  %3744 = add i64 %3743, 5
  store i64 %3744, i64* %PC.i52
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3742, i64* %3745, align 8
  store %struct.Memory* %loadMem_42d797, %struct.Memory** %MEMORY
  br label %block_.L_42d7cf

block_.L_42d79c:                                  ; preds = %block_42d757
  %loadMem_42d79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3749, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3750 to %"class.std::bitset"*
  %3751 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3752 = load i64, i64* %PC.i51
  %3753 = add i64 %3752, ptrtoint (%G_0xb5978__rip__type* @G_0xb5978__rip_ to i64)
  %3754 = load i64, i64* %PC.i51
  %3755 = add i64 %3754, 8
  store i64 %3755, i64* %PC.i51
  %3756 = inttoptr i64 %3753 to float*
  %3757 = load float, float* %3756
  %3758 = bitcast i8* %3751 to float*
  store float %3757, float* %3758, align 1
  %3759 = getelementptr inbounds i8, i8* %3751, i64 4
  %3760 = bitcast i8* %3759 to float*
  store float 0.000000e+00, float* %3760, align 1
  %3761 = getelementptr inbounds i8, i8* %3751, i64 8
  %3762 = bitcast i8* %3761 to float*
  store float 0.000000e+00, float* %3762, align 1
  %3763 = getelementptr inbounds i8, i8* %3751, i64 12
  %3764 = bitcast i8* %3763 to float*
  store float 0.000000e+00, float* %3764, align 1
  store %struct.Memory* %loadMem_42d79c, %struct.Memory** %MEMORY
  %loadMem_42d7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 1
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 15
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %RBP.i50
  %3775 = sub i64 %3774, 36
  %3776 = load i64, i64* %PC.i48
  %3777 = add i64 %3776, 4
  store i64 %3777, i64* %PC.i48
  %3778 = inttoptr i64 %3775 to i32*
  %3779 = load i32, i32* %3778
  %3780 = sext i32 %3779 to i64
  store i64 %3780, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_42d7a4, %struct.Memory** %MEMORY
  %loadMem_42d7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 1
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 15
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3790, i64 0, i64 1
  %YMM1.i47 = bitcast %union.VectorReg* %3791 to %"class.std::bitset"*
  %3792 = bitcast %"class.std::bitset"* %YMM1.i47 to i8*
  %3793 = load i64, i64* %RBP.i46
  %3794 = load i64, i64* %RAX.i45
  %3795 = mul i64 %3794, 4
  %3796 = add i64 %3793, -3664
  %3797 = add i64 %3796, %3795
  %3798 = load i64, i64* %PC.i44
  %3799 = add i64 %3798, 9
  store i64 %3799, i64* %PC.i44
  %3800 = bitcast i8* %3792 to <2 x i32>*
  %3801 = load <2 x i32>, <2 x i32>* %3800, align 1
  %3802 = getelementptr inbounds i8, i8* %3792, i64 8
  %3803 = bitcast i8* %3802 to <2 x i32>*
  %3804 = load <2 x i32>, <2 x i32>* %3803, align 1
  %3805 = inttoptr i64 %3797 to i32*
  %3806 = load i32, i32* %3805
  %3807 = sitofp i32 %3806 to float
  %3808 = bitcast i8* %3792 to float*
  store float %3807, float* %3808, align 1
  %3809 = extractelement <2 x i32> %3801, i32 1
  %3810 = getelementptr inbounds i8, i8* %3792, i64 4
  %3811 = bitcast i8* %3810 to i32*
  store i32 %3809, i32* %3811, align 1
  %3812 = extractelement <2 x i32> %3804, i32 0
  %3813 = bitcast i8* %3802 to i32*
  store i32 %3812, i32* %3813, align 1
  %3814 = extractelement <2 x i32> %3804, i32 1
  %3815 = getelementptr inbounds i8, i8* %3792, i64 12
  %3816 = bitcast i8* %3815 to i32*
  store i32 %3814, i32* %3816, align 1
  store %struct.Memory* %loadMem_42d7a8, %struct.Memory** %MEMORY
  %loadMem_42d7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3819 to i64*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3821 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3820, i64 0, i64 1
  %YMM1.i43 = bitcast %union.VectorReg* %3821 to %"class.std::bitset"*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3822, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3823 to %union.vec128_t*
  %3824 = bitcast %"class.std::bitset"* %YMM1.i43 to i8*
  %3825 = bitcast %"class.std::bitset"* %YMM1.i43 to i8*
  %3826 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3827 = load i64, i64* %PC.i42
  %3828 = add i64 %3827, 4
  store i64 %3828, i64* %PC.i42
  %3829 = bitcast i8* %3825 to <2 x float>*
  %3830 = load <2 x float>, <2 x float>* %3829, align 1
  %3831 = getelementptr inbounds i8, i8* %3825, i64 8
  %3832 = bitcast i8* %3831 to <2 x i32>*
  %3833 = load <2 x i32>, <2 x i32>* %3832, align 1
  %3834 = bitcast i8* %3826 to <2 x float>*
  %3835 = load <2 x float>, <2 x float>* %3834, align 1
  %3836 = extractelement <2 x float> %3830, i32 0
  %3837 = extractelement <2 x float> %3835, i32 0
  %3838 = fdiv float %3836, %3837
  %3839 = bitcast i8* %3824 to float*
  store float %3838, float* %3839, align 1
  %3840 = bitcast <2 x float> %3830 to <2 x i32>
  %3841 = extractelement <2 x i32> %3840, i32 1
  %3842 = getelementptr inbounds i8, i8* %3824, i64 4
  %3843 = bitcast i8* %3842 to i32*
  store i32 %3841, i32* %3843, align 1
  %3844 = extractelement <2 x i32> %3833, i32 0
  %3845 = getelementptr inbounds i8, i8* %3824, i64 8
  %3846 = bitcast i8* %3845 to i32*
  store i32 %3844, i32* %3846, align 1
  %3847 = extractelement <2 x i32> %3833, i32 1
  %3848 = getelementptr inbounds i8, i8* %3824, i64 12
  %3849 = bitcast i8* %3848 to i32*
  store i32 %3847, i32* %3849, align 1
  store %struct.Memory* %loadMem_42d7b1, %struct.Memory** %MEMORY
  %loadMem_42d7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 1
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %3855 to i64*
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 15
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %3858 to i64*
  %3859 = load i64, i64* %RBP.i41
  %3860 = sub i64 %3859, 16
  %3861 = load i64, i64* %PC.i39
  %3862 = add i64 %3861, 4
  store i64 %3862, i64* %PC.i39
  %3863 = inttoptr i64 %3860 to i64*
  %3864 = load i64, i64* %3863
  store i64 %3864, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_42d7b5, %struct.Memory** %MEMORY
  %loadMem_42d7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 33
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 5
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 15
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %RBP.i38
  %3875 = sub i64 %3874, 36
  %3876 = load i64, i64* %PC.i36
  %3877 = add i64 %3876, 4
  store i64 %3877, i64* %PC.i36
  %3878 = inttoptr i64 %3875 to i32*
  %3879 = load i32, i32* %3878
  %3880 = sext i32 %3879 to i64
  store i64 %3880, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_42d7b9, %struct.Memory** %MEMORY
  %loadMem_42d7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 33
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3883 to i64*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 1
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 5
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3890, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3891 to %"class.std::bitset"*
  %3892 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3893 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3894 = load i64, i64* %RAX.i34
  %3895 = load i64, i64* %RCX.i35
  %3896 = mul i64 %3895, 4
  %3897 = add i64 %3894, 2000
  %3898 = add i64 %3897, %3896
  %3899 = load i64, i64* %PC.i33
  %3900 = add i64 %3899, 9
  store i64 %3900, i64* %PC.i33
  %3901 = bitcast i8* %3893 to <2 x float>*
  %3902 = load <2 x float>, <2 x float>* %3901, align 1
  %3903 = getelementptr inbounds i8, i8* %3893, i64 8
  %3904 = bitcast i8* %3903 to <2 x i32>*
  %3905 = load <2 x i32>, <2 x i32>* %3904, align 1
  %3906 = inttoptr i64 %3898 to float*
  %3907 = load float, float* %3906
  %3908 = extractelement <2 x float> %3902, i32 0
  %3909 = fadd float %3908, %3907
  %3910 = bitcast i8* %3892 to float*
  store float %3909, float* %3910, align 1
  %3911 = bitcast <2 x float> %3902 to <2 x i32>
  %3912 = extractelement <2 x i32> %3911, i32 1
  %3913 = getelementptr inbounds i8, i8* %3892, i64 4
  %3914 = bitcast i8* %3913 to i32*
  store i32 %3912, i32* %3914, align 1
  %3915 = extractelement <2 x i32> %3905, i32 0
  %3916 = getelementptr inbounds i8, i8* %3892, i64 8
  %3917 = bitcast i8* %3916 to i32*
  store i32 %3915, i32* %3917, align 1
  %3918 = extractelement <2 x i32> %3905, i32 1
  %3919 = getelementptr inbounds i8, i8* %3892, i64 12
  %3920 = bitcast i8* %3919 to i32*
  store i32 %3918, i32* %3920, align 1
  store %struct.Memory* %loadMem_42d7bd, %struct.Memory** %MEMORY
  %loadMem_42d7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 1
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 5
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3931 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3930, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3931 to %union.vec128_t*
  %3932 = load i64, i64* %RAX.i32
  %3933 = load i64, i64* %RCX.i
  %3934 = mul i64 %3933, 4
  %3935 = add i64 %3932, 2000
  %3936 = add i64 %3935, %3934
  %3937 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3938 = load i64, i64* %PC.i31
  %3939 = add i64 %3938, 9
  store i64 %3939, i64* %PC.i31
  %3940 = bitcast i8* %3937 to <2 x float>*
  %3941 = load <2 x float>, <2 x float>* %3940, align 1
  %3942 = extractelement <2 x float> %3941, i32 0
  %3943 = inttoptr i64 %3936 to float*
  store float %3942, float* %3943
  store %struct.Memory* %loadMem_42d7c6, %struct.Memory** %MEMORY
  br label %block_.L_42d7cf

block_.L_42d7cf:                                  ; preds = %block_.L_42d79c, %block_42d764
  %loadMem_42d7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3946 to i64*
  %3947 = load i64, i64* %PC.i30
  %3948 = add i64 %3947, 5
  %3949 = load i64, i64* %PC.i30
  %3950 = add i64 %3949, 5
  store i64 %3950, i64* %PC.i30
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3948, i64* %3951, align 8
  store %struct.Memory* %loadMem_42d7cf, %struct.Memory** %MEMORY
  br label %block_.L_42d7d4

block_.L_42d7d4:                                  ; preds = %block_.L_42d7cf, %block_42d742
  %loadMem_42d7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %PC.i29
  %3956 = add i64 %3955, 5
  %3957 = load i64, i64* %PC.i29
  %3958 = add i64 %3957, 5
  store i64 %3958, i64* %PC.i29
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3956, i64* %3959, align 8
  store %struct.Memory* %loadMem_42d7d4, %struct.Memory** %MEMORY
  br label %block_.L_42d7d9

block_.L_42d7d9:                                  ; preds = %block_.L_42d7d4
  %loadMem_42d7d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 1
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %3965 to i64*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 15
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %3968 to i64*
  %3969 = load i64, i64* %RBP.i28
  %3970 = sub i64 %3969, 36
  %3971 = load i64, i64* %PC.i26
  %3972 = add i64 %3971, 3
  store i64 %3972, i64* %PC.i26
  %3973 = inttoptr i64 %3970 to i32*
  %3974 = load i32, i32* %3973
  %3975 = zext i32 %3974 to i64
  store i64 %3975, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_42d7d9, %struct.Memory** %MEMORY
  %loadMem_42d7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3977 = getelementptr inbounds %struct.GPR, %struct.GPR* %3976, i32 0, i32 33
  %3978 = getelementptr inbounds %struct.Reg, %struct.Reg* %3977, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3978 to i64*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 1
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %3981 to i64*
  %3982 = load i64, i64* %RAX.i25
  %3983 = load i64, i64* %PC.i24
  %3984 = add i64 %3983, 3
  store i64 %3984, i64* %PC.i24
  %3985 = trunc i64 %3982 to i32
  %3986 = add i32 1, %3985
  %3987 = zext i32 %3986 to i64
  store i64 %3987, i64* %RAX.i25, align 8
  %3988 = icmp ult i32 %3986, %3985
  %3989 = icmp ult i32 %3986, 1
  %3990 = or i1 %3988, %3989
  %3991 = zext i1 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3991, i8* %3992, align 1
  %3993 = and i32 %3986, 255
  %3994 = call i32 @llvm.ctpop.i32(i32 %3993)
  %3995 = trunc i32 %3994 to i8
  %3996 = and i8 %3995, 1
  %3997 = xor i8 %3996, 1
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3997, i8* %3998, align 1
  %3999 = xor i64 1, %3982
  %4000 = trunc i64 %3999 to i32
  %4001 = xor i32 %4000, %3986
  %4002 = lshr i32 %4001, 4
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4004, i8* %4005, align 1
  %4006 = icmp eq i32 %3986, 0
  %4007 = zext i1 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4007, i8* %4008, align 1
  %4009 = lshr i32 %3986, 31
  %4010 = trunc i32 %4009 to i8
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4010, i8* %4011, align 1
  %4012 = lshr i32 %3985, 31
  %4013 = xor i32 %4009, %4012
  %4014 = add i32 %4013, %4009
  %4015 = icmp eq i32 %4014, 2
  %4016 = zext i1 %4015 to i8
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4016, i8* %4017, align 1
  store %struct.Memory* %loadMem_42d7dc, %struct.Memory** %MEMORY
  %loadMem_42d7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 1
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %4023 to i32*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 15
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RBP.i23
  %4028 = sub i64 %4027, 36
  %4029 = load i32, i32* %EAX.i22
  %4030 = zext i32 %4029 to i64
  %4031 = load i64, i64* %PC.i21
  %4032 = add i64 %4031, 3
  store i64 %4032, i64* %PC.i21
  %4033 = inttoptr i64 %4028 to i32*
  store i32 %4029, i32* %4033
  store %struct.Memory* %loadMem_42d7df, %struct.Memory** %MEMORY
  %loadMem_42d7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4036 to i64*
  %4037 = load i64, i64* %PC.i20
  %4038 = add i64 %4037, -173
  %4039 = load i64, i64* %PC.i20
  %4040 = add i64 %4039, 5
  store i64 %4040, i64* %PC.i20
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4038, i64* %4041, align 8
  store %struct.Memory* %loadMem_42d7e2, %struct.Memory** %MEMORY
  br label %block_.L_42d735

block_.L_42d7e7:                                  ; preds = %block_.L_42d735
  %loadMem_42d7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 11
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RDI.i18 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RBP.i19
  %4052 = sub i64 %4051, 16
  %4053 = load i64, i64* %PC.i17
  %4054 = add i64 %4053, 4
  store i64 %4054, i64* %PC.i17
  %4055 = inttoptr i64 %4052 to i64*
  %4056 = load i64, i64* %4055
  store i64 %4056, i64* %RDI.i18, align 8
  store %struct.Memory* %loadMem_42d7e7, %struct.Memory** %MEMORY
  %loadMem1_42d7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %PC.i16
  %4061 = add i64 %4060, -15067
  %4062 = load i64, i64* %PC.i16
  %4063 = add i64 %4062, 5
  %4064 = load i64, i64* %PC.i16
  %4065 = add i64 %4064, 5
  store i64 %4065, i64* %PC.i16
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4067 = load i64, i64* %4066, align 8
  %4068 = add i64 %4067, -8
  %4069 = inttoptr i64 %4068 to i64*
  store i64 %4063, i64* %4069
  store i64 %4068, i64* %4066, align 8
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4061, i64* %4070, align 8
  store %struct.Memory* %loadMem1_42d7eb, %struct.Memory** %MEMORY
  %loadMem2_42d7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d7eb = load i64, i64* %3
  %call2_42d7eb = call %struct.Memory* @sub_429d10.value_territory(%struct.State* %0, i64 %loadPC_42d7eb, %struct.Memory* %loadMem2_42d7eb)
  store %struct.Memory* %call2_42d7eb, %struct.Memory** %MEMORY
  %loadMem_42d7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 33
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %PC.i15
  %4075 = add i64 %4074, 8
  store i64 %4075, i64* %PC.i15
  %4076 = load i32, i32* bitcast (%G_0xabf1c0_type* @G_0xabf1c0 to i32*)
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4077, align 1
  %4078 = and i32 %4076, 255
  %4079 = call i32 @llvm.ctpop.i32(i32 %4078)
  %4080 = trunc i32 %4079 to i8
  %4081 = and i8 %4080, 1
  %4082 = xor i8 %4081, 1
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4082, i8* %4083, align 1
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4084, align 1
  %4085 = icmp eq i32 %4076, 0
  %4086 = zext i1 %4085 to i8
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4086, i8* %4087, align 1
  %4088 = lshr i32 %4076, 31
  %4089 = trunc i32 %4088 to i8
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4089, i8* %4090, align 1
  %4091 = lshr i32 %4076, 31
  %4092 = xor i32 %4088, %4091
  %4093 = add i32 %4092, %4091
  %4094 = icmp eq i32 %4093, 2
  %4095 = zext i1 %4094 to i8
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4095, i8* %4096, align 1
  store %struct.Memory* %loadMem_42d7f0, %struct.Memory** %MEMORY
  %loadMem_42d7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4099 to i64*
  %4100 = load i64, i64* %PC.i14
  %4101 = add i64 %4100, 35
  %4102 = load i64, i64* %PC.i14
  %4103 = add i64 %4102, 6
  %4104 = load i64, i64* %PC.i14
  %4105 = add i64 %4104, 6
  store i64 %4105, i64* %PC.i14
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4107 = load i8, i8* %4106, align 1
  store i8 %4107, i8* %BRANCH_TAKEN, align 1
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4109 = icmp ne i8 %4107, 0
  %4110 = select i1 %4109, i64 %4101, i64 %4103
  store i64 %4110, i64* %4108, align 8
  store %struct.Memory* %loadMem_42d7f8, %struct.Memory** %MEMORY
  %loadBr_42d7f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d7f8 = icmp eq i8 %loadBr_42d7f8, 1
  br i1 %cmpBr_42d7f8, label %block_.L_42d81b, label %block_42d7fe

block_42d7fe:                                     ; preds = %block_.L_42d7e7
  %loadMem_42d7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 33
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4113 to i64*
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 1
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4116 to i64*
  %4117 = load i64, i64* %PC.i13
  %4118 = add i64 %4117, 7
  store i64 %4118, i64* %PC.i13
  %4119 = load i32, i32* bitcast (%G_0xabf1c0_type* @G_0xabf1c0 to i32*)
  %4120 = zext i32 %4119 to i64
  store i64 %4120, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42d7fe, %struct.Memory** %MEMORY
  %loadMem_42d805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 33
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 1
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4126 to i32*
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4128 = getelementptr inbounds %struct.GPR, %struct.GPR* %4127, i32 0, i32 15
  %4129 = getelementptr inbounds %struct.Reg, %struct.Reg* %4128, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %4129 to i64*
  %4130 = load i32, i32* %EAX.i
  %4131 = zext i32 %4130 to i64
  %4132 = load i64, i64* %RBP.i12
  %4133 = sub i64 %4132, 20
  %4134 = load i64, i64* %PC.i11
  %4135 = add i64 %4134, 3
  store i64 %4135, i64* %PC.i11
  %4136 = inttoptr i64 %4133 to i32*
  %4137 = load i32, i32* %4136
  %4138 = sub i32 %4130, %4137
  %4139 = icmp ult i32 %4130, %4137
  %4140 = zext i1 %4139 to i8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4140, i8* %4141, align 1
  %4142 = and i32 %4138, 255
  %4143 = call i32 @llvm.ctpop.i32(i32 %4142)
  %4144 = trunc i32 %4143 to i8
  %4145 = and i8 %4144, 1
  %4146 = xor i8 %4145, 1
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4146, i8* %4147, align 1
  %4148 = xor i32 %4137, %4130
  %4149 = xor i32 %4148, %4138
  %4150 = lshr i32 %4149, 4
  %4151 = trunc i32 %4150 to i8
  %4152 = and i8 %4151, 1
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4152, i8* %4153, align 1
  %4154 = icmp eq i32 %4138, 0
  %4155 = zext i1 %4154 to i8
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4155, i8* %4156, align 1
  %4157 = lshr i32 %4138, 31
  %4158 = trunc i32 %4157 to i8
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4158, i8* %4159, align 1
  %4160 = lshr i32 %4130, 31
  %4161 = lshr i32 %4137, 31
  %4162 = xor i32 %4161, %4160
  %4163 = xor i32 %4157, %4160
  %4164 = add i32 %4163, %4162
  %4165 = icmp eq i32 %4164, 2
  %4166 = zext i1 %4165 to i8
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4166, i8* %4167, align 1
  store %struct.Memory* %loadMem_42d805, %struct.Memory** %MEMORY
  %loadMem_42d808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 33
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %4170 to i64*
  %4171 = load i64, i64* %PC.i10
  %4172 = add i64 %4171, 19
  %4173 = load i64, i64* %PC.i10
  %4174 = add i64 %4173, 6
  %4175 = load i64, i64* %PC.i10
  %4176 = add i64 %4175, 6
  store i64 %4176, i64* %PC.i10
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4178 = load i8, i8* %4177, align 1
  %4179 = icmp eq i8 %4178, 0
  %4180 = zext i1 %4179 to i8
  store i8 %4180, i8* %BRANCH_TAKEN, align 1
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4182 = select i1 %4179, i64 %4172, i64 %4174
  store i64 %4182, i64* %4181, align 8
  store %struct.Memory* %loadMem_42d808, %struct.Memory** %MEMORY
  %loadBr_42d808 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d808 = icmp eq i8 %loadBr_42d808, 1
  br i1 %cmpBr_42d808, label %block_.L_42d81b, label %block_42d80e

block_42d80e:                                     ; preds = %block_42d7fe
  %loadMem_42d80e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 33
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 11
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4188 to i64*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 15
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %4191 to i64*
  %4192 = load i64, i64* %RBP.i9
  %4193 = sub i64 %4192, 16
  %4194 = load i64, i64* %PC.i8
  %4195 = add i64 %4194, 4
  store i64 %4195, i64* %PC.i8
  %4196 = inttoptr i64 %4193 to i64*
  %4197 = load i64, i64* %4196
  store i64 %4197, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42d80e, %struct.Memory** %MEMORY
  %loadMem_42d812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 33
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 9
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 15
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %4206 to i64*
  %4207 = load i64, i64* %RBP.i7
  %4208 = sub i64 %4207, 32
  %4209 = load i64, i64* %PC.i6
  %4210 = add i64 %4209, 4
  store i64 %4210, i64* %PC.i6
  %4211 = inttoptr i64 %4208 to i64*
  %4212 = load i64, i64* %4211
  store i64 %4212, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42d812, %struct.Memory** %MEMORY
  %loadMem1_42d816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4215 to i64*
  %4216 = load i64, i64* %PC.i5
  %4217 = add i64 %4216, -12262
  %4218 = load i64, i64* %PC.i5
  %4219 = add i64 %4218, 5
  %4220 = load i64, i64* %PC.i5
  %4221 = add i64 %4220, 5
  store i64 %4221, i64* %PC.i5
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4223 = load i64, i64* %4222, align 8
  %4224 = add i64 %4223, -8
  %4225 = inttoptr i64 %4224 to i64*
  store i64 %4219, i64* %4225
  store i64 %4224, i64* %4222, align 8
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4217, i64* %4226, align 8
  store %struct.Memory* %loadMem1_42d816, %struct.Memory** %MEMORY
  %loadMem2_42d816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42d816 = load i64, i64* %3
  %call2_42d816 = call %struct.Memory* @sub_42a830.print_influence(%struct.State* %0, i64 %loadPC_42d816, %struct.Memory* %loadMem2_42d816)
  store %struct.Memory* %call2_42d816, %struct.Memory** %MEMORY
  br label %block_.L_42d81b

block_.L_42d81b:                                  ; preds = %block_42d80e, %block_42d7fe, %block_.L_42d7e7
  %loadMem_42d81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 13
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %RSP.i
  %4234 = load i64, i64* %PC.i4
  %4235 = add i64 %4234, 7
  store i64 %4235, i64* %PC.i4
  %4236 = add i64 3680, %4233
  store i64 %4236, i64* %RSP.i, align 8
  %4237 = icmp ult i64 %4236, %4233
  %4238 = icmp ult i64 %4236, 3680
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
  %4249 = xor i64 3680, %4233
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
  %4261 = lshr i64 %4233, 63
  %4262 = xor i64 %4258, %4261
  %4263 = add i64 %4262, %4258
  %4264 = icmp eq i64 %4263, 2
  %4265 = zext i1 %4264 to i8
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4265, i8* %4266, align 1
  store %struct.Memory* %loadMem_42d81b, %struct.Memory** %MEMORY
  %loadMem_42d822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 33
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 15
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4272 to i64*
  %4273 = load i64, i64* %PC.i2
  %4274 = add i64 %4273, 1
  store i64 %4274, i64* %PC.i2
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4276 = load i64, i64* %4275, align 8
  %4277 = add i64 %4276, 8
  %4278 = inttoptr i64 %4276 to i64*
  %4279 = load i64, i64* %4278
  store i64 %4279, i64* %RBP.i3, align 8
  store i64 %4277, i64* %4275, align 8
  store %struct.Memory* %loadMem_42d822, %struct.Memory** %MEMORY
  %loadMem_42d823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4282 to i64*
  %4283 = load i64, i64* %PC.i1
  %4284 = add i64 %4283, 1
  store i64 %4284, i64* %PC.i1
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4287 = load i64, i64* %4286, align 8
  %4288 = inttoptr i64 %4287 to i64*
  %4289 = load i64, i64* %4288
  store i64 %4289, i64* %4285, align 8
  %4290 = add i64 %4287, 8
  store i64 %4290, i64* %4286, align 8
  store %struct.Memory* %loadMem_42d823, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42d823
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

define %struct.Memory* @routine_subq__0xe60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 3680
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 3680
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
  %23 = xor i64 3680, %9
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

define %struct.Memory* @routine_movl__0xb878___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 47224, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
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

define %struct.Memory* @routine_subl_0x85ac__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 34220
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 452
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_42d44d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_42d43a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDX, align 8
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

define %struct.Memory* @routine_jne_.L_42d429(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1__MINUS0x1c0__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -448
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d435(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0x0__MINUS0x1c0__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -448
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 0, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d43a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d43f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d3e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x42d830___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x42d830_type* @G__0x42d830 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x7b21c0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x7b21c0_type* @G__0x7b21c0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 1, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1c0__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x8b54__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 35668
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0xab3940(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %9, i64* bitcast (%G_0xab3940_type* @G_0xab3940 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.matchpat_goal_anchor(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.add_marked_intrusions(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.reset_unblocked_blocks(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x640___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 1600, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xe50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x969__MINUS0x1c8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2409, i32* %13
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

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_42d5a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42d58e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x1c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 452
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_42d54d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xb5a74__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb5a74__rip__type* @G_0xb5a74__rip_ to i64)
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

define %struct.Memory* @routine_movss_0xb5c00__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb5c00__rip__type* @G_0xb5c00__rip_ to i64)
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

define %struct.Memory* @routine_mulss_0x2710__rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 10000
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fmul float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si__xmm1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = fcmp ogt float %18, 0x41E0000000000000
  %20 = fptosi float %17 to i32
  %21 = zext i32 %20 to i64
  %22 = select i1 %19, i64 2147483648, i64 %21
  store i64 %22, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__edx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
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

define %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %21, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x810__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2064
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d589(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xb5a33__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb5a33__rip__type* @G_0xb5a33__rip_ to i64)
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

define %struct.Memory* @routine_movss_0xb5bbf__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb5bbf__rip__type* @G_0xb5bbf__rip_ to i64)
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

define %struct.Memory* @routine_mulss_0x2d50__rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 11600
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fmul float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d58e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d593(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d4dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_42d72e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42d71b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x1c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 452
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_42d670(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x1450__rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 5200
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
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

define %struct.Memory* @routine_ucomiss_0x1450__rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 5200
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 8
  store i64 %21, i64* %PC
  %22 = bitcast i8* %14 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %19 to float*
  %26 = load float, float* %25
  %27 = fcmp uno float %24, %26
  br i1 %27, label %28, label %40

; <label>:28:                                     ; preds = %block_400488
  %29 = fadd float %24, %26
  %30 = bitcast float %29 to i32
  %31 = and i32 %30, 2143289344
  %32 = icmp eq i32 %31, 2139095040
  %33 = and i32 %30, 4194303
  %34 = icmp ne i32 %33, 0
  %35 = and i1 %32, %34
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %38, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:40:                                     ; preds = %block_400488
  %41 = fcmp ogt float %24, %26
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %40
  %43 = fcmp olt float %24, %26
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %42
  %45 = fcmp oeq float %24, %26
  br i1 %45, label %46, label %53

; <label>:46:                                     ; preds = %44, %42, %40, %28
  %47 = phi i8 [ 0, %40 ], [ 0, %42 ], [ 1, %44 ], [ 1, %28 ]
  %48 = phi i8 [ 0, %40 ], [ 0, %42 ], [ 0, %44 ], [ 1, %28 ]
  %49 = phi i8 [ 0, %40 ], [ 1, %42 ], [ 0, %44 ], [ 1, %28 ]
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %47, i8* %50, align 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %49, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %46, %44
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %55, align 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %56, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %53
  %57 = phi %struct.Memory* [ %39, %36 ], [ %2, %53 ]
  ret %struct.Memory* %57
}

define %struct.Memory* @routine_jbe_.L_42d670(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x810__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0xb5b08__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb5b08__rip__type* @G_0xb5b08__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0xb596c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb596c__rip__type* @G_0xb596c__rip_ to i64)
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_mulss_0x1450__rcx__rdx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 5200
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fmul float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si__xmm2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = fcmp ogt float %18, 0x41E0000000000000
  %20 = fptosi float %17 to i32
  %21 = zext i32 %20 to i64
  %22 = select i1 %19, i64 2147483648, i64 %21
  store i64 %22, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__esi___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttsd2si__xmm2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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
  store i64 %21, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss_0x20d0__rcx__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 8400
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fdiv float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = call float @llvm.fabs.f32(float %17)
  %19 = fcmp ogt float %18, 0x41E0000000000000
  %20 = fptosi float %17 to i32
  %21 = zext i32 %20 to i64
  %22 = select i1 %19, i64 2147483648, i64 %21
  store i64 %22, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
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

define %struct.Memory* @routine_callq_.accumulate_influence(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42d716(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_42d711(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xe10__rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 3600
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_0xe10__rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = bitcast %union.vec128_t* %XMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 3600
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 8
  store i64 %21, i64* %PC
  %22 = bitcast i8* %14 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %19 to float*
  %26 = load float, float* %25
  %27 = fcmp uno float %24, %26
  br i1 %27, label %28, label %40

; <label>:28:                                     ; preds = %block_400488
  %29 = fadd float %24, %26
  %30 = bitcast float %29 to i32
  %31 = and i32 %30, 2143289344
  %32 = icmp eq i32 %31, 2139095040
  %33 = and i32 %30, 4194303
  %34 = icmp ne i32 %33, 0
  %35 = and i1 %32, %34
  br i1 %35, label %36, label %46

; <label>:36:                                     ; preds = %28
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %38, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:40:                                     ; preds = %block_400488
  %41 = fcmp ogt float %24, %26
  br i1 %41, label %46, label %42

; <label>:42:                                     ; preds = %40
  %43 = fcmp olt float %24, %26
  br i1 %43, label %46, label %44

; <label>:44:                                     ; preds = %42
  %45 = fcmp oeq float %24, %26
  br i1 %45, label %46, label %53

; <label>:46:                                     ; preds = %44, %42, %40, %28
  %47 = phi i8 [ 0, %40 ], [ 0, %42 ], [ 1, %44 ], [ 1, %28 ]
  %48 = phi i8 [ 0, %40 ], [ 0, %42 ], [ 0, %44 ], [ 1, %28 ]
  %49 = phi i8 [ 0, %40 ], [ 1, %42 ], [ 0, %44 ], [ 1, %28 ]
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %47, i8* %50, align 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %49, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %46, %44
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %55, align 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %56, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %53
  %57 = phi %struct.Memory* [ %39, %36 ], [ %2, %53 ]
  ret %struct.Memory* %57
}

define %struct.Memory* @routine_jbe_.L_42d711(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xb5a62__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb5a62__rip__type* @G_0xb5a62__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0xb58c6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb58c6__rip__type* @G_0xb58c6__rip_ to i64)
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

define %struct.Memory* @routine_mulss_0xe10__rcx__rdx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 3600
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fmul float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss_0x1a90__rcx__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 6800
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fdiv float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d71b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d720(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d5a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_42d7e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42d7d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_42d79c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xb59b0__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb59b0__rip__type* @G_0xb59b0__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0xe50__rbp__rax_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3664
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %14 to <2 x i32>*
  %23 = load <2 x i32>, <2 x i32>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to i32*
  %28 = load i32, i32* %27
  %29 = sitofp i32 %28 to float
  %30 = bitcast i8* %14 to float*
  store float %29, float* %30, align 1
  %31 = extractelement <2 x i32> %23, i32 1
  %32 = getelementptr inbounds i8, i8* %14, i64 4
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %26, i32 0
  %35 = bitcast i8* %24 to i32*
  store i32 %34, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 1
  %37 = getelementptr inbounds i8, i8* %14, i64 12
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
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

define %struct.Memory* @routine_addss_0x190__rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 400
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fadd float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x190__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, 400
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM1 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d7cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0xb5978__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb5978__rip__type* @G_0xb5978__rip_ to i64)
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

define %struct.Memory* @routine_addss_0x7d0__rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 2000
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fadd float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x7d0__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, 2000
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM1 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d7d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d7d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d735(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.value_territory(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xabf1c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xabf1c0_type* @G_0xabf1c0 to i32*)
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

define %struct.Memory* @routine_je_.L_42d81b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xabf1c0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xabf1c0_type* @G_0xabf1c0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_42d81b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.print_influence(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xe60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3680, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3680
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
  %25 = xor i64 3680, %9
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
