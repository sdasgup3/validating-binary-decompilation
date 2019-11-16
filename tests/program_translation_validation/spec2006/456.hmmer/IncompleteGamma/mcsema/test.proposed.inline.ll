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
%G_0x105db__rip__type = type <{ [16 x i8] }>
%G_0x106ed__rip__type = type <{ [16 x i8] }>
%G_0xf440__rip__type = type <{ [8 x i8] }>
%G_0xf517__rip__type = type <{ [8 x i8] }>
%G_0xf564__rip__type = type <{ [8 x i8] }>
%G_0xf619__rip__type = type <{ [8 x i8] }>
%G_0xf64b__rip__type = type <{ [8 x i8] }>
%G_0xf6e9__rip__type = type <{ [8 x i8] }>
%G_0xf705__rip__type = type <{ [8 x i8] }>
%G__0x45a72f_type = type <{ [8 x i8] }>
%G__0x45a750_type = type <{ [8 x i8] }>
%G__0x45a772_type = type <{ [8 x i8] }>
%G__0x45a7b8_type = type <{ [8 x i8] }>
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
@G_0x105db__rip_ = global %G_0x105db__rip__type zeroinitializer
@G_0x106ed__rip_ = global %G_0x106ed__rip__type zeroinitializer
@G_0xf440__rip_ = global %G_0xf440__rip__type zeroinitializer
@G_0xf517__rip_ = global %G_0xf517__rip__type zeroinitializer
@G_0xf564__rip_ = global %G_0xf564__rip__type zeroinitializer
@G_0xf619__rip_ = global %G_0xf619__rip__type zeroinitializer
@G_0xf64b__rip_ = global %G_0xf64b__rip__type zeroinitializer
@G_0xf6e9__rip_ = global %G_0xf6e9__rip__type zeroinitializer
@G_0xf705__rip_ = global %G_0xf705__rip__type zeroinitializer
@G__0x45a72f = global %G__0x45a72f_type zeroinitializer
@G__0x45a750 = global %G__0x45a750_type zeroinitializer
@G__0x45a772 = global %G__0x45a772_type zeroinitializer
@G__0x45a7b8 = global %G__0x45a7b8_type zeroinitializer

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

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_444ca0.Gammln(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @IncompleteGamma(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_445080 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_445080, %struct.Memory** %MEMORY
  %loadMem_445081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i35 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i35
  %27 = load i64, i64* %PC.i34
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i34
  store i64 %26, i64* %RBP.i36, align 8
  store %struct.Memory* %loadMem_445081, %struct.Memory** %MEMORY
  %loadMem_445084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i64 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i64
  %36 = load i64, i64* %PC.i63
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i63
  %38 = sub i64 %35, 144
  store i64 %38, i64* %RSP.i64, align 8
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
  store %struct.Memory* %loadMem_445084, %struct.Memory** %MEMORY
  %loadMem_44508b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 2
  %YMM2.i89 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 2
  %XMM2.i90 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM2.i89 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM2.i89 to i8*
  %76 = bitcast %union.vec128_t* %XMM2.i90 to i8*
  %77 = load i64, i64* %PC.i88
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i88
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
  store %struct.Memory* %loadMem_44508b, %struct.Memory** %MEMORY
  %loadMem_44508e = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %110, i64 0, i64 0
  %XMM0.i181 = bitcast %union.VectorReg* %111 to %union.vec128_t*
  %112 = load i64, i64* %RBP.i180
  %113 = sub i64 %112, 16
  %114 = bitcast %union.vec128_t* %XMM0.i181 to i8*
  %115 = load i64, i64* %PC.i179
  %116 = add i64 %115, 5
  store i64 %116, i64* %PC.i179
  %117 = bitcast i8* %114 to double*
  %118 = load double, double* %117, align 1
  %119 = inttoptr i64 %113 to double*
  store double %118, double* %119
  store %struct.Memory* %loadMem_44508e, %struct.Memory** %MEMORY
  %loadMem_445093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %126, i64 0, i64 1
  %XMM1.i210 = bitcast %union.VectorReg* %127 to %union.vec128_t*
  %128 = load i64, i64* %RBP.i209
  %129 = sub i64 %128, 24
  %130 = bitcast %union.vec128_t* %XMM1.i210 to i8*
  %131 = load i64, i64* %PC.i208
  %132 = add i64 %131, 5
  store i64 %132, i64* %PC.i208
  %133 = bitcast i8* %130 to double*
  %134 = load double, double* %133, align 1
  %135 = inttoptr i64 %129 to double*
  store double %134, double* %135
  store %struct.Memory* %loadMem_445093, %struct.Memory** %MEMORY
  %loadMem_445098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %142, i64 0, i64 2
  %XMM2.i237 = bitcast %union.VectorReg* %143 to %union.vec128_t*
  %144 = bitcast %union.vec128_t* %XMM2.i237 to i8*
  %145 = load i64, i64* %RBP.i236
  %146 = sub i64 %145, 16
  %147 = load i64, i64* %PC.i235
  %148 = add i64 %147, 5
  store i64 %148, i64* %PC.i235
  %149 = bitcast i8* %144 to double*
  %150 = load double, double* %149, align 1
  %151 = inttoptr i64 %146 to double*
  %152 = load double, double* %151
  %153 = fcmp uno double %150, %152
  br i1 %153, label %154, label %166

; <label>:154:                                    ; preds = %entry
  %155 = fadd double %150, %152
  %156 = bitcast double %155 to i64
  %157 = and i64 %156, 9221120237041090560
  %158 = icmp eq i64 %157, 9218868437227405312
  %159 = and i64 %156, 2251799813685247
  %160 = icmp ne i64 %159, 0
  %161 = and i1 %158, %160
  br i1 %161, label %162, label %172

; <label>:162:                                    ; preds = %154
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %164, %struct.Memory* %loadMem_445098)
  br label %routine_ucomisd_MINUS0x10__rbp____xmm2.exit

; <label>:166:                                    ; preds = %entry
  %167 = fcmp ogt double %150, %152
  br i1 %167, label %172, label %168

; <label>:168:                                    ; preds = %166
  %169 = fcmp olt double %150, %152
  br i1 %169, label %172, label %170

; <label>:170:                                    ; preds = %168
  %171 = fcmp oeq double %150, %152
  br i1 %171, label %172, label %179

; <label>:172:                                    ; preds = %170, %168, %166, %154
  %173 = phi i8 [ 0, %166 ], [ 0, %168 ], [ 1, %170 ], [ 1, %154 ]
  %174 = phi i8 [ 0, %166 ], [ 0, %168 ], [ 0, %170 ], [ 1, %154 ]
  %175 = phi i8 [ 0, %166 ], [ 1, %168 ], [ 0, %170 ], [ 1, %154 ]
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %173, i8* %176, align 1
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %174, i8* %177, align 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %175, i8* %178, align 1
  br label %179

; <label>:179:                                    ; preds = %172, %170
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %180, align 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %181, align 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %182, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm2.exit

routine_ucomisd_MINUS0x10__rbp____xmm2.exit:      ; preds = %162, %179
  %183 = phi %struct.Memory* [ %165, %162 ], [ %loadMem_445098, %179 ]
  store %struct.Memory* %183, %struct.Memory** %MEMORY
  %loadMem_44509d = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %186 to i64*
  %187 = load i64, i64* %PC.i238
  %188 = add i64 %187, 23
  %189 = load i64, i64* %PC.i238
  %190 = add i64 %189, 6
  %191 = load i64, i64* %PC.i238
  %192 = add i64 %191, 6
  store i64 %192, i64* %PC.i238
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %194 = load i8, i8* %193, align 1
  store i8 %194, i8* %BRANCH_TAKEN, align 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %196 = icmp ne i8 %194, 0
  %197 = select i1 %196, i64 %188, i64 %190
  store i64 %197, i64* %195, align 8
  store %struct.Memory* %loadMem_44509d, %struct.Memory** %MEMORY
  %loadBr_44509d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44509d = icmp eq i8 %loadBr_44509d, 1
  br i1 %cmpBr_44509d, label %block_.L_4450b4, label %block_4450a3

block_4450a3:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm2.exit
  %loadMem_4450a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 11
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RDI.i303 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %PC.i302
  %205 = add i64 %204, 10
  store i64 %205, i64* %PC.i302
  store i64 ptrtoint (%G__0x45a72f_type* @G__0x45a72f to i64), i64* %RDI.i303, align 8
  store %struct.Memory* %loadMem_4450a3, %struct.Memory** %MEMORY
  %loadMem_4450ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %212 = bitcast %union.anon* %211 to %struct.anon.2*
  %AL.i419 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %212, i32 0, i32 0
  %213 = load i64, i64* %PC.i418
  %214 = add i64 %213, 2
  store i64 %214, i64* %PC.i418
  store i8 0, i8* %AL.i419, align 1
  store %struct.Memory* %loadMem_4450ad, %struct.Memory** %MEMORY
  %loadMem1_4450af = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %PC.i437
  %219 = add i64 %218, -26271
  %220 = load i64, i64* %PC.i437
  %221 = add i64 %220, 5
  %222 = load i64, i64* %PC.i437
  %223 = add i64 %222, 5
  store i64 %223, i64* %PC.i437
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, -8
  %227 = inttoptr i64 %226 to i64*
  store i64 %221, i64* %227
  store i64 %226, i64* %224, align 8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %219, i64* %228, align 8
  store %struct.Memory* %loadMem1_4450af, %struct.Memory** %MEMORY
  %loadMem2_4450af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4450af = load i64, i64* %3
  %call2_4450af = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_4450af, %struct.Memory* %loadMem2_4450af)
  store %struct.Memory* %call2_4450af, %struct.Memory** %MEMORY
  br label %block_.L_4450b4

block_.L_4450b4:                                  ; preds = %block_4450a3, %routine_ucomisd_MINUS0x10__rbp____xmm2.exit
  %loadMem_4450b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %232, i64 0, i64 0
  %YMM0.i439 = bitcast %union.VectorReg* %233 to %"class.std::bitset"*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %234, i64 0, i64 0
  %XMM0.i440 = bitcast %union.VectorReg* %235 to %union.vec128_t*
  %236 = bitcast %"class.std::bitset"* %YMM0.i439 to i8*
  %237 = bitcast %"class.std::bitset"* %YMM0.i439 to i8*
  %238 = bitcast %union.vec128_t* %XMM0.i440 to i8*
  %239 = load i64, i64* %PC.i438
  %240 = add i64 %239, 3
  store i64 %240, i64* %PC.i438
  %241 = bitcast i8* %237 to i64*
  %242 = load i64, i64* %241, align 1
  %243 = getelementptr inbounds i8, i8* %237, i64 8
  %244 = bitcast i8* %243 to i64*
  %245 = load i64, i64* %244, align 1
  %246 = bitcast i8* %238 to i64*
  %247 = load i64, i64* %246, align 1
  %248 = getelementptr inbounds i8, i8* %238, i64 8
  %249 = bitcast i8* %248 to i64*
  %250 = load i64, i64* %249, align 1
  %251 = xor i64 %247, %242
  %252 = xor i64 %250, %245
  %253 = trunc i64 %251 to i32
  %254 = lshr i64 %251, 32
  %255 = trunc i64 %254 to i32
  %256 = bitcast i8* %236 to i32*
  store i32 %253, i32* %256, align 1
  %257 = getelementptr inbounds i8, i8* %236, i64 4
  %258 = bitcast i8* %257 to i32*
  store i32 %255, i32* %258, align 1
  %259 = trunc i64 %252 to i32
  %260 = getelementptr inbounds i8, i8* %236, i64 8
  %261 = bitcast i8* %260 to i32*
  store i32 %259, i32* %261, align 1
  %262 = lshr i64 %252, 32
  %263 = trunc i64 %262 to i32
  %264 = getelementptr inbounds i8, i8* %236, i64 12
  %265 = bitcast i8* %264 to i32*
  store i32 %263, i32* %265, align 1
  store %struct.Memory* %loadMem_4450b4, %struct.Memory** %MEMORY
  %loadMem_4450b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 0
  %XMM0.i436 = bitcast %union.VectorReg* %273 to %union.vec128_t*
  %274 = bitcast %union.vec128_t* %XMM0.i436 to i8*
  %275 = load i64, i64* %RBP.i435
  %276 = sub i64 %275, 24
  %277 = load i64, i64* %PC.i434
  %278 = add i64 %277, 5
  store i64 %278, i64* %PC.i434
  %279 = bitcast i8* %274 to double*
  %280 = load double, double* %279, align 1
  %281 = inttoptr i64 %276 to double*
  %282 = load double, double* %281
  %283 = fcmp uno double %280, %282
  br i1 %283, label %284, label %296

; <label>:284:                                    ; preds = %block_.L_4450b4
  %285 = fadd double %280, %282
  %286 = bitcast double %285 to i64
  %287 = and i64 %286, 9221120237041090560
  %288 = icmp eq i64 %287, 9218868437227405312
  %289 = and i64 %286, 2251799813685247
  %290 = icmp ne i64 %289, 0
  %291 = and i1 %288, %290
  br i1 %291, label %292, label %302

; <label>:292:                                    ; preds = %284
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %294, %struct.Memory* %loadMem_4450b7)
  br label %routine_ucomisd_MINUS0x18__rbp____xmm0.exit

; <label>:296:                                    ; preds = %block_.L_4450b4
  %297 = fcmp ogt double %280, %282
  br i1 %297, label %302, label %298

; <label>:298:                                    ; preds = %296
  %299 = fcmp olt double %280, %282
  br i1 %299, label %302, label %300

; <label>:300:                                    ; preds = %298
  %301 = fcmp oeq double %280, %282
  br i1 %301, label %302, label %309

; <label>:302:                                    ; preds = %300, %298, %296, %284
  %303 = phi i8 [ 0, %296 ], [ 0, %298 ], [ 1, %300 ], [ 1, %284 ]
  %304 = phi i8 [ 0, %296 ], [ 0, %298 ], [ 0, %300 ], [ 1, %284 ]
  %305 = phi i8 [ 0, %296 ], [ 1, %298 ], [ 0, %300 ], [ 1, %284 ]
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %303, i8* %306, align 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %304, i8* %307, align 1
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %305, i8* %308, align 1
  br label %309

; <label>:309:                                    ; preds = %302, %300
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %310, align 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %311, align 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %312, align 1
  br label %routine_ucomisd_MINUS0x18__rbp____xmm0.exit

routine_ucomisd_MINUS0x18__rbp____xmm0.exit:      ; preds = %292, %309
  %313 = phi %struct.Memory* [ %295, %292 ], [ %loadMem_4450b7, %309 ]
  store %struct.Memory* %313, %struct.Memory** %MEMORY
  %loadMem_4450bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %PC.i433
  %318 = add i64 %317, 23
  %319 = load i64, i64* %PC.i433
  %320 = add i64 %319, 6
  %321 = load i64, i64* %PC.i433
  %322 = add i64 %321, 6
  store i64 %322, i64* %PC.i433
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %324 = load i8, i8* %323, align 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %326 = load i8, i8* %325, align 1
  %327 = or i8 %326, %324
  %328 = icmp ne i8 %327, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %BRANCH_TAKEN, align 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %331 = select i1 %328, i64 %318, i64 %320
  store i64 %331, i64* %330, align 8
  store %struct.Memory* %loadMem_4450bc, %struct.Memory** %MEMORY
  %loadBr_4450bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4450bc = icmp eq i8 %loadBr_4450bc, 1
  br i1 %cmpBr_4450bc, label %block_.L_4450d3, label %block_4450c2

block_4450c2:                                     ; preds = %routine_ucomisd_MINUS0x18__rbp____xmm0.exit
  %loadMem_4450c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 11
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %PC.i431
  %339 = add i64 %338, 10
  store i64 %339, i64* %PC.i431
  store i64 ptrtoint (%G__0x45a750_type* @G__0x45a750 to i64), i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_4450c2, %struct.Memory** %MEMORY
  %loadMem_4450cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %346 = bitcast %union.anon* %345 to %struct.anon.2*
  %AL.i430 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %346, i32 0, i32 0
  %347 = load i64, i64* %PC.i429
  %348 = add i64 %347, 2
  store i64 %348, i64* %PC.i429
  store i8 0, i8* %AL.i430, align 1
  store %struct.Memory* %loadMem_4450cc, %struct.Memory** %MEMORY
  %loadMem1_4450ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %351 to i64*
  %352 = load i64, i64* %PC.i428
  %353 = add i64 %352, -26302
  %354 = load i64, i64* %PC.i428
  %355 = add i64 %354, 5
  %356 = load i64, i64* %PC.i428
  %357 = add i64 %356, 5
  store i64 %357, i64* %PC.i428
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = add i64 %359, -8
  %361 = inttoptr i64 %360 to i64*
  store i64 %355, i64* %361
  store i64 %360, i64* %358, align 8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %353, i64* %362, align 8
  store %struct.Memory* %loadMem1_4450ce, %struct.Memory** %MEMORY
  %loadMem2_4450ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4450ce = load i64, i64* %3
  %call2_4450ce = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_4450ce, %struct.Memory* %loadMem2_4450ce)
  store %struct.Memory* %call2_4450ce, %struct.Memory** %MEMORY
  br label %block_.L_4450d3

block_.L_4450d3:                                  ; preds = %block_4450c2, %routine_ucomisd_MINUS0x18__rbp____xmm0.exit
  %loadMem_4450d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %366, i64 0, i64 0
  %YMM0.i427 = bitcast %union.VectorReg* %367 to %"class.std::bitset"*
  %368 = bitcast %"class.std::bitset"* %YMM0.i427 to i8*
  %369 = load i64, i64* %PC.i426
  %370 = add i64 %369, ptrtoint (%G_0xf705__rip__type* @G_0xf705__rip_ to i64)
  %371 = load i64, i64* %PC.i426
  %372 = add i64 %371, 8
  store i64 %372, i64* %PC.i426
  %373 = inttoptr i64 %370 to double*
  %374 = load double, double* %373
  %375 = bitcast i8* %368 to double*
  store double %374, double* %375, align 1
  %376 = getelementptr inbounds i8, i8* %368, i64 8
  %377 = bitcast i8* %376 to double*
  store double 0.000000e+00, double* %377, align 1
  store %struct.Memory* %loadMem_4450d3, %struct.Memory** %MEMORY
  %loadMem_4450db = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %384, i64 0, i64 1
  %YMM1.i425 = bitcast %union.VectorReg* %385 to %"class.std::bitset"*
  %386 = bitcast %"class.std::bitset"* %YMM1.i425 to i8*
  %387 = load i64, i64* %RBP.i424
  %388 = sub i64 %387, 24
  %389 = load i64, i64* %PC.i423
  %390 = add i64 %389, 5
  store i64 %390, i64* %PC.i423
  %391 = inttoptr i64 %388 to double*
  %392 = load double, double* %391
  %393 = bitcast i8* %386 to double*
  store double %392, double* %393, align 1
  %394 = getelementptr inbounds i8, i8* %386, i64 8
  %395 = bitcast i8* %394 to double*
  store double 0.000000e+00, double* %395, align 1
  store %struct.Memory* %loadMem_4450db, %struct.Memory** %MEMORY
  %loadMem_4450e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 15
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %402, i64 0, i64 0
  %YMM0.i422 = bitcast %union.VectorReg* %403 to %"class.std::bitset"*
  %404 = bitcast %"class.std::bitset"* %YMM0.i422 to i8*
  %405 = bitcast %"class.std::bitset"* %YMM0.i422 to i8*
  %406 = load i64, i64* %RBP.i421
  %407 = sub i64 %406, 16
  %408 = load i64, i64* %PC.i420
  %409 = add i64 %408, 5
  store i64 %409, i64* %PC.i420
  %410 = bitcast i8* %405 to double*
  %411 = load double, double* %410, align 1
  %412 = getelementptr inbounds i8, i8* %405, i64 8
  %413 = bitcast i8* %412 to i64*
  %414 = load i64, i64* %413, align 1
  %415 = inttoptr i64 %407 to double*
  %416 = load double, double* %415
  %417 = fadd double %411, %416
  %418 = bitcast i8* %404 to double*
  store double %417, double* %418, align 1
  %419 = getelementptr inbounds i8, i8* %404, i64 8
  %420 = bitcast i8* %419 to i64*
  store i64 %414, i64* %420, align 1
  store %struct.Memory* %loadMem_4450e0, %struct.Memory** %MEMORY
  %loadMem_4450e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %424, i64 0, i64 0
  %XMM0.i415 = bitcast %union.VectorReg* %425 to %union.vec128_t*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %426, i64 0, i64 1
  %XMM1.i416 = bitcast %union.VectorReg* %427 to %union.vec128_t*
  %428 = bitcast %union.vec128_t* %XMM1.i416 to i8*
  %429 = bitcast %union.vec128_t* %XMM0.i415 to i8*
  %430 = load i64, i64* %PC.i414
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC.i414
  %432 = bitcast i8* %428 to double*
  %433 = load double, double* %432, align 1
  %434 = bitcast i8* %429 to double*
  %435 = load double, double* %434, align 1
  %436 = fcmp uno double %433, %435
  br i1 %436, label %437, label %449

; <label>:437:                                    ; preds = %block_.L_4450d3
  %438 = fadd double %433, %435
  %439 = bitcast double %438 to i64
  %440 = and i64 %439, 9221120237041090560
  %441 = icmp eq i64 %440, 9218868437227405312
  %442 = and i64 %439, 2251799813685247
  %443 = icmp ne i64 %442, 0
  %444 = and i1 %441, %443
  br i1 %444, label %445, label %455

; <label>:445:                                    ; preds = %437
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %447, %struct.Memory* %loadMem_4450e5)
  br label %routine_ucomisd__xmm0___xmm1.exit417

; <label>:449:                                    ; preds = %block_.L_4450d3
  %450 = fcmp ogt double %433, %435
  br i1 %450, label %455, label %451

; <label>:451:                                    ; preds = %449
  %452 = fcmp olt double %433, %435
  br i1 %452, label %455, label %453

; <label>:453:                                    ; preds = %451
  %454 = fcmp oeq double %433, %435
  br i1 %454, label %455, label %462

; <label>:455:                                    ; preds = %453, %451, %449, %437
  %456 = phi i8 [ 0, %449 ], [ 0, %451 ], [ 1, %453 ], [ 1, %437 ]
  %457 = phi i8 [ 0, %449 ], [ 0, %451 ], [ 0, %453 ], [ 1, %437 ]
  %458 = phi i8 [ 0, %449 ], [ 1, %451 ], [ 0, %453 ], [ 1, %437 ]
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %456, i8* %459, align 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %457, i8* %460, align 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %458, i8* %461, align 1
  br label %462

; <label>:462:                                    ; preds = %455, %453
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %463, align 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %464, align 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %465, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit417

routine_ucomisd__xmm0___xmm1.exit417:             ; preds = %445, %462
  %466 = phi %struct.Memory* [ %448, %445 ], [ %loadMem_4450e5, %462 ]
  store %struct.Memory* %466, %struct.Memory** %MEMORY
  %loadMem_4450e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %PC.i413
  %471 = add i64 %470, 472
  %472 = load i64, i64* %PC.i413
  %473 = add i64 %472, 6
  %474 = load i64, i64* %PC.i413
  %475 = add i64 %474, 6
  store i64 %475, i64* %PC.i413
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %477 = load i8, i8* %476, align 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %479 = load i8, i8* %478, align 1
  %480 = or i8 %479, %477
  %481 = icmp ne i8 %480, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %BRANCH_TAKEN, align 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %484 = select i1 %481, i64 %471, i64 %473
  store i64 %484, i64* %483, align 8
  store %struct.Memory* %loadMem_4450e9, %struct.Memory** %MEMORY
  %loadBr_4450e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4450e9 = icmp eq i8 %loadBr_4450e9, 1
  br i1 %cmpBr_4450e9, label %block_.L_4452c1, label %block_4450ef

block_4450ef:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit417
  %loadMem_4450ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %488, i64 0, i64 0
  %YMM0.i412 = bitcast %union.VectorReg* %489 to %"class.std::bitset"*
  %490 = bitcast %"class.std::bitset"* %YMM0.i412 to i8*
  %491 = load i64, i64* %PC.i411
  %492 = add i64 %491, ptrtoint (%G_0xf6e9__rip__type* @G_0xf6e9__rip_ to i64)
  %493 = load i64, i64* %PC.i411
  %494 = add i64 %493, 8
  store i64 %494, i64* %PC.i411
  %495 = inttoptr i64 %492 to double*
  %496 = load double, double* %495
  %497 = bitcast i8* %490 to double*
  store double %496, double* %497, align 1
  %498 = getelementptr inbounds i8, i8* %490, i64 8
  %499 = bitcast i8* %498 to double*
  store double 0.000000e+00, double* %499, align 1
  store %struct.Memory* %loadMem_4450ef, %struct.Memory** %MEMORY
  %loadMem_4450f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %503, i64 0, i64 1
  %YMM1.i409 = bitcast %union.VectorReg* %504 to %"class.std::bitset"*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %505, i64 0, i64 1
  %XMM1.i410 = bitcast %union.VectorReg* %506 to %union.vec128_t*
  %507 = bitcast %"class.std::bitset"* %YMM1.i409 to i8*
  %508 = bitcast %"class.std::bitset"* %YMM1.i409 to i8*
  %509 = bitcast %union.vec128_t* %XMM1.i410 to i8*
  %510 = load i64, i64* %PC.i408
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i408
  %512 = bitcast i8* %508 to i64*
  %513 = load i64, i64* %512, align 1
  %514 = getelementptr inbounds i8, i8* %508, i64 8
  %515 = bitcast i8* %514 to i64*
  %516 = load i64, i64* %515, align 1
  %517 = bitcast i8* %509 to i64*
  %518 = load i64, i64* %517, align 1
  %519 = getelementptr inbounds i8, i8* %509, i64 8
  %520 = bitcast i8* %519 to i64*
  %521 = load i64, i64* %520, align 1
  %522 = xor i64 %518, %513
  %523 = xor i64 %521, %516
  %524 = trunc i64 %522 to i32
  %525 = lshr i64 %522, 32
  %526 = trunc i64 %525 to i32
  %527 = bitcast i8* %507 to i32*
  store i32 %524, i32* %527, align 1
  %528 = getelementptr inbounds i8, i8* %507, i64 4
  %529 = bitcast i8* %528 to i32*
  store i32 %526, i32* %529, align 1
  %530 = trunc i64 %523 to i32
  %531 = getelementptr inbounds i8, i8* %507, i64 8
  %532 = bitcast i8* %531 to i32*
  store i32 %530, i32* %532, align 1
  %533 = lshr i64 %523, 32
  %534 = trunc i64 %533 to i32
  %535 = getelementptr inbounds i8, i8* %507, i64 12
  %536 = bitcast i8* %535 to i32*
  store i32 %534, i32* %536, align 1
  store %struct.Memory* %loadMem_4450f7, %struct.Memory** %MEMORY
  %loadMem_4450fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 15
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %543, i64 0, i64 1
  %XMM1.i407 = bitcast %union.VectorReg* %544 to %union.vec128_t*
  %545 = load i64, i64* %RBP.i406
  %546 = sub i64 %545, 48
  %547 = bitcast %union.vec128_t* %XMM1.i407 to i8*
  %548 = load i64, i64* %PC.i405
  %549 = add i64 %548, 5
  store i64 %549, i64* %PC.i405
  %550 = bitcast i8* %547 to double*
  %551 = load double, double* %550, align 1
  %552 = inttoptr i64 %546 to double*
  store double %551, double* %552
  store %struct.Memory* %loadMem_4450fa, %struct.Memory** %MEMORY
  %loadMem_4450ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 15
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %559, i64 0, i64 0
  %XMM0.i404 = bitcast %union.VectorReg* %560 to %union.vec128_t*
  %561 = load i64, i64* %RBP.i403
  %562 = sub i64 %561, 64
  %563 = bitcast %union.vec128_t* %XMM0.i404 to i8*
  %564 = load i64, i64* %PC.i402
  %565 = add i64 %564, 5
  store i64 %565, i64* %PC.i402
  %566 = bitcast i8* %563 to double*
  %567 = load double, double* %566, align 1
  %568 = inttoptr i64 %562 to double*
  store double %567, double* %568
  store %struct.Memory* %loadMem_4450ff, %struct.Memory** %MEMORY
  %loadMem_445104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 15
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %576 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %575, i64 0, i64 0
  %XMM0.i401 = bitcast %union.VectorReg* %576 to %union.vec128_t*
  %577 = load i64, i64* %RBP.i400
  %578 = sub i64 %577, 56
  %579 = bitcast %union.vec128_t* %XMM0.i401 to i8*
  %580 = load i64, i64* %PC.i399
  %581 = add i64 %580, 5
  store i64 %581, i64* %PC.i399
  %582 = bitcast i8* %579 to double*
  %583 = load double, double* %582, align 1
  %584 = inttoptr i64 %578 to double*
  store double %583, double* %584
  store %struct.Memory* %loadMem_445104, %struct.Memory** %MEMORY
  %loadMem_445109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 15
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %591, i64 0, i64 0
  %YMM0.i398 = bitcast %union.VectorReg* %592 to %"class.std::bitset"*
  %593 = bitcast %"class.std::bitset"* %YMM0.i398 to i8*
  %594 = load i64, i64* %RBP.i397
  %595 = sub i64 %594, 24
  %596 = load i64, i64* %PC.i396
  %597 = add i64 %596, 5
  store i64 %597, i64* %PC.i396
  %598 = inttoptr i64 %595 to double*
  %599 = load double, double* %598
  %600 = bitcast i8* %593 to double*
  store double %599, double* %600, align 1
  %601 = getelementptr inbounds i8, i8* %593, i64 8
  %602 = bitcast i8* %601 to double*
  store double 0.000000e+00, double* %602, align 1
  store %struct.Memory* %loadMem_445109, %struct.Memory** %MEMORY
  %loadMem_44510e = load %struct.Memory*, %struct.Memory** %MEMORY
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 33
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %609, i64 0, i64 0
  %XMM0.i395 = bitcast %union.VectorReg* %610 to %union.vec128_t*
  %611 = load i64, i64* %RBP.i394
  %612 = sub i64 %611, 72
  %613 = bitcast %union.vec128_t* %XMM0.i395 to i8*
  %614 = load i64, i64* %PC.i393
  %615 = add i64 %614, 5
  store i64 %615, i64* %PC.i393
  %616 = bitcast i8* %613 to double*
  %617 = load double, double* %616, align 1
  %618 = inttoptr i64 %612 to double*
  store double %617, double* %618
  store %struct.Memory* %loadMem_44510e, %struct.Memory** %MEMORY
  %loadMem_445113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %625, i64 0, i64 0
  %YMM0.i392 = bitcast %union.VectorReg* %626 to %"class.std::bitset"*
  %627 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %628 = load i64, i64* %RBP.i391
  %629 = sub i64 %628, 56
  %630 = load i64, i64* %PC.i390
  %631 = add i64 %630, 5
  store i64 %631, i64* %PC.i390
  %632 = inttoptr i64 %629 to double*
  %633 = load double, double* %632
  %634 = bitcast i8* %627 to double*
  store double %633, double* %634, align 1
  %635 = getelementptr inbounds i8, i8* %627, i64 8
  %636 = bitcast i8* %635 to double*
  store double 0.000000e+00, double* %636, align 1
  store %struct.Memory* %loadMem_445113, %struct.Memory** %MEMORY
  %loadMem_445118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 15
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %643, i64 0, i64 0
  %XMM0.i389 = bitcast %union.VectorReg* %644 to %union.vec128_t*
  %645 = load i64, i64* %RBP.i388
  %646 = sub i64 %645, 40
  %647 = bitcast %union.vec128_t* %XMM0.i389 to i8*
  %648 = load i64, i64* %PC.i387
  %649 = add i64 %648, 5
  store i64 %649, i64* %PC.i387
  %650 = bitcast i8* %647 to double*
  %651 = load double, double* %650, align 1
  %652 = inttoptr i64 %646 to double*
  store double %651, double* %652
  store %struct.Memory* %loadMem_445118, %struct.Memory** %MEMORY
  %loadMem_44511d = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 15
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %658 to i64*
  %659 = load i64, i64* %RBP.i386
  %660 = sub i64 %659, 28
  %661 = load i64, i64* %PC.i385
  %662 = add i64 %661, 7
  store i64 %662, i64* %PC.i385
  %663 = inttoptr i64 %660 to i32*
  store i32 1, i32* %663
  store %struct.Memory* %loadMem_44511d, %struct.Memory** %MEMORY
  br label %block_.L_445124

block_.L_445124:                                  ; preds = %block_.L_445293, %block_4450ef
  %loadMem_445124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 33
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 15
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %RBP.i384
  %671 = sub i64 %670, 28
  %672 = load i64, i64* %PC.i383
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC.i383
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = sub i32 %675, 100
  %677 = icmp ult i32 %675, 100
  %678 = zext i1 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %678, i8* %679, align 1
  %680 = and i32 %676, 255
  %681 = call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %684, i8* %685, align 1
  %686 = xor i32 %675, 100
  %687 = xor i32 %686, %676
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %690, i8* %691, align 1
  %692 = icmp eq i32 %676, 0
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %693, i8* %694, align 1
  %695 = lshr i32 %676, 31
  %696 = trunc i32 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %696, i8* %697, align 1
  %698 = lshr i32 %675, 31
  %699 = xor i32 %695, %698
  %700 = add i32 %699, %698
  %701 = icmp eq i32 %700, 2
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %702, i8* %703, align 1
  store %struct.Memory* %loadMem_445124, %struct.Memory** %MEMORY
  %loadMem_445128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %PC.i382
  %708 = add i64 %707, 387
  %709 = load i64, i64* %PC.i382
  %710 = add i64 %709, 6
  %711 = load i64, i64* %PC.i382
  %712 = add i64 %711, 6
  store i64 %712, i64* %PC.i382
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %714 = load i8, i8* %713, align 1
  %715 = icmp ne i8 %714, 0
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %717 = load i8, i8* %716, align 1
  %718 = icmp ne i8 %717, 0
  %719 = xor i1 %715, %718
  %720 = xor i1 %719, true
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %BRANCH_TAKEN, align 1
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %723 = select i1 %719, i64 %710, i64 %708
  store i64 %723, i64* %722, align 8
  store %struct.Memory* %loadMem_445128, %struct.Memory** %MEMORY
  %loadBr_445128 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_445128 = icmp eq i8 %loadBr_445128, 1
  br i1 %cmpBr_445128, label %block_.L_4452ab, label %block_44512e

block_44512e:                                     ; preds = %block_.L_445124
  %loadMem_44512e = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %727, i64 0, i64 0
  %YMM0.i380 = bitcast %union.VectorReg* %728 to %"class.std::bitset"*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %730 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %729, i64 0, i64 0
  %XMM0.i381 = bitcast %union.VectorReg* %730 to %union.vec128_t*
  %731 = bitcast %"class.std::bitset"* %YMM0.i380 to i8*
  %732 = bitcast %"class.std::bitset"* %YMM0.i380 to i8*
  %733 = bitcast %union.vec128_t* %XMM0.i381 to i8*
  %734 = load i64, i64* %PC.i379
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC.i379
  %736 = bitcast i8* %732 to i64*
  %737 = load i64, i64* %736, align 1
  %738 = getelementptr inbounds i8, i8* %732, i64 8
  %739 = bitcast i8* %738 to i64*
  %740 = load i64, i64* %739, align 1
  %741 = bitcast i8* %733 to i64*
  %742 = load i64, i64* %741, align 1
  %743 = getelementptr inbounds i8, i8* %733, i64 8
  %744 = bitcast i8* %743 to i64*
  %745 = load i64, i64* %744, align 1
  %746 = xor i64 %742, %737
  %747 = xor i64 %745, %740
  %748 = trunc i64 %746 to i32
  %749 = lshr i64 %746, 32
  %750 = trunc i64 %749 to i32
  %751 = bitcast i8* %731 to i32*
  store i32 %748, i32* %751, align 1
  %752 = getelementptr inbounds i8, i8* %731, i64 4
  %753 = bitcast i8* %752 to i32*
  store i32 %750, i32* %753, align 1
  %754 = trunc i64 %747 to i32
  %755 = getelementptr inbounds i8, i8* %731, i64 8
  %756 = bitcast i8* %755 to i32*
  store i32 %754, i32* %756, align 1
  %757 = lshr i64 %747, 32
  %758 = trunc i64 %757 to i32
  %759 = getelementptr inbounds i8, i8* %731, i64 12
  %760 = bitcast i8* %759 to i32*
  store i32 %758, i32* %760, align 1
  store %struct.Memory* %loadMem_44512e, %struct.Memory** %MEMORY
  %loadMem_445131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 33
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 15
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %768 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %767, i64 0, i64 1
  %YMM1.i378 = bitcast %union.VectorReg* %768 to %"class.std::bitset"*
  %769 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %770 = load i64, i64* %RBP.i377
  %771 = sub i64 %770, 56
  %772 = load i64, i64* %PC.i376
  %773 = add i64 %772, 5
  store i64 %773, i64* %PC.i376
  %774 = inttoptr i64 %771 to double*
  %775 = load double, double* %774
  %776 = bitcast i8* %769 to double*
  store double %775, double* %776, align 1
  %777 = getelementptr inbounds i8, i8* %769, i64 8
  %778 = bitcast i8* %777 to double*
  store double 0.000000e+00, double* %778, align 1
  store %struct.Memory* %loadMem_445131, %struct.Memory** %MEMORY
  %loadMem_445136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 15
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %785, i64 0, i64 2
  %YMM2.i375 = bitcast %union.VectorReg* %786 to %"class.std::bitset"*
  %787 = bitcast %"class.std::bitset"* %YMM2.i375 to i8*
  %788 = load i64, i64* %RBP.i374
  %789 = sub i64 %788, 28
  %790 = load i64, i64* %PC.i373
  %791 = add i64 %790, 5
  store i64 %791, i64* %PC.i373
  %792 = inttoptr i64 %789 to i32*
  %793 = load i32, i32* %792
  %794 = sitofp i32 %793 to double
  %795 = bitcast i8* %787 to double*
  store double %794, double* %795, align 1
  store %struct.Memory* %loadMem_445136, %struct.Memory** %MEMORY
  %loadMem_44513b = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 15
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %803 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %802, i64 0, i64 2
  %YMM2.i372 = bitcast %union.VectorReg* %803 to %"class.std::bitset"*
  %804 = bitcast %"class.std::bitset"* %YMM2.i372 to i8*
  %805 = bitcast %"class.std::bitset"* %YMM2.i372 to i8*
  %806 = load i64, i64* %RBP.i371
  %807 = sub i64 %806, 16
  %808 = load i64, i64* %PC.i370
  %809 = add i64 %808, 5
  store i64 %809, i64* %PC.i370
  %810 = bitcast i8* %805 to double*
  %811 = load double, double* %810, align 1
  %812 = getelementptr inbounds i8, i8* %805, i64 8
  %813 = bitcast i8* %812 to i64*
  %814 = load i64, i64* %813, align 1
  %815 = inttoptr i64 %807 to double*
  %816 = load double, double* %815
  %817 = fsub double %811, %816
  %818 = bitcast i8* %804 to double*
  store double %817, double* %818, align 1
  %819 = getelementptr inbounds i8, i8* %804, i64 8
  %820 = bitcast i8* %819 to i64*
  store i64 %814, i64* %820, align 1
  store %struct.Memory* %loadMem_44513b, %struct.Memory** %MEMORY
  %loadMem_445140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 33
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 15
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %827, i64 0, i64 2
  %YMM2.i369 = bitcast %union.VectorReg* %828 to %"class.std::bitset"*
  %829 = bitcast %"class.std::bitset"* %YMM2.i369 to i8*
  %830 = bitcast %"class.std::bitset"* %YMM2.i369 to i8*
  %831 = load i64, i64* %RBP.i368
  %832 = sub i64 %831, 48
  %833 = load i64, i64* %PC.i367
  %834 = add i64 %833, 5
  store i64 %834, i64* %PC.i367
  %835 = bitcast i8* %830 to double*
  %836 = load double, double* %835, align 1
  %837 = getelementptr inbounds i8, i8* %830, i64 8
  %838 = bitcast i8* %837 to i64*
  %839 = load i64, i64* %838, align 1
  %840 = inttoptr i64 %832 to double*
  %841 = load double, double* %840
  %842 = fmul double %836, %841
  %843 = bitcast i8* %829 to double*
  store double %842, double* %843, align 1
  %844 = getelementptr inbounds i8, i8* %829, i64 8
  %845 = bitcast i8* %844 to i64*
  store i64 %839, i64* %845, align 1
  store %struct.Memory* %loadMem_445140, %struct.Memory** %MEMORY
  %loadMem_445145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %849, i64 0, i64 1
  %YMM1.i365 = bitcast %union.VectorReg* %850 to %"class.std::bitset"*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %851, i64 0, i64 2
  %XMM2.i366 = bitcast %union.VectorReg* %852 to %union.vec128_t*
  %853 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %854 = bitcast %"class.std::bitset"* %YMM1.i365 to i8*
  %855 = bitcast %union.vec128_t* %XMM2.i366 to i8*
  %856 = load i64, i64* %PC.i364
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC.i364
  %858 = bitcast i8* %854 to double*
  %859 = load double, double* %858, align 1
  %860 = getelementptr inbounds i8, i8* %854, i64 8
  %861 = bitcast i8* %860 to i64*
  %862 = load i64, i64* %861, align 1
  %863 = bitcast i8* %855 to double*
  %864 = load double, double* %863, align 1
  %865 = fadd double %859, %864
  %866 = bitcast i8* %853 to double*
  store double %865, double* %866, align 1
  %867 = getelementptr inbounds i8, i8* %853, i64 8
  %868 = bitcast i8* %867 to i64*
  store i64 %862, i64* %868, align 1
  store %struct.Memory* %loadMem_445145, %struct.Memory** %MEMORY
  %loadMem_445149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 15
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %876 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %875, i64 0, i64 1
  %XMM1.i363 = bitcast %union.VectorReg* %876 to %union.vec128_t*
  %877 = load i64, i64* %RBP.i362
  %878 = sub i64 %877, 48
  %879 = bitcast %union.vec128_t* %XMM1.i363 to i8*
  %880 = load i64, i64* %PC.i361
  %881 = add i64 %880, 5
  store i64 %881, i64* %PC.i361
  %882 = bitcast i8* %879 to double*
  %883 = load double, double* %882, align 1
  %884 = inttoptr i64 %878 to double*
  store double %883, double* %884
  store %struct.Memory* %loadMem_445149, %struct.Memory** %MEMORY
  %loadMem_44514e = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 15
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %892 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %891, i64 0, i64 1
  %YMM1.i360 = bitcast %union.VectorReg* %892 to %"class.std::bitset"*
  %893 = bitcast %"class.std::bitset"* %YMM1.i360 to i8*
  %894 = load i64, i64* %RBP.i359
  %895 = sub i64 %894, 72
  %896 = load i64, i64* %PC.i358
  %897 = add i64 %896, 5
  store i64 %897, i64* %PC.i358
  %898 = inttoptr i64 %895 to double*
  %899 = load double, double* %898
  %900 = bitcast i8* %893 to double*
  store double %899, double* %900, align 1
  %901 = getelementptr inbounds i8, i8* %893, i64 8
  %902 = bitcast i8* %901 to double*
  store double 0.000000e+00, double* %902, align 1
  store %struct.Memory* %loadMem_44514e, %struct.Memory** %MEMORY
  %loadMem_445153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 15
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %910 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %909, i64 0, i64 2
  %YMM2.i357 = bitcast %union.VectorReg* %910 to %"class.std::bitset"*
  %911 = bitcast %"class.std::bitset"* %YMM2.i357 to i8*
  %912 = load i64, i64* %RBP.i356
  %913 = sub i64 %912, 28
  %914 = load i64, i64* %PC.i355
  %915 = add i64 %914, 5
  store i64 %915, i64* %PC.i355
  %916 = inttoptr i64 %913 to i32*
  %917 = load i32, i32* %916
  %918 = sitofp i32 %917 to double
  %919 = bitcast i8* %911 to double*
  store double %918, double* %919, align 1
  store %struct.Memory* %loadMem_445153, %struct.Memory** %MEMORY
  %loadMem_445158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 15
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %926, i64 0, i64 2
  %YMM2.i354 = bitcast %union.VectorReg* %927 to %"class.std::bitset"*
  %928 = bitcast %"class.std::bitset"* %YMM2.i354 to i8*
  %929 = bitcast %"class.std::bitset"* %YMM2.i354 to i8*
  %930 = load i64, i64* %RBP.i353
  %931 = sub i64 %930, 16
  %932 = load i64, i64* %PC.i352
  %933 = add i64 %932, 5
  store i64 %933, i64* %PC.i352
  %934 = bitcast i8* %929 to double*
  %935 = load double, double* %934, align 1
  %936 = getelementptr inbounds i8, i8* %929, i64 8
  %937 = bitcast i8* %936 to i64*
  %938 = load i64, i64* %937, align 1
  %939 = inttoptr i64 %931 to double*
  %940 = load double, double* %939
  %941 = fsub double %935, %940
  %942 = bitcast i8* %928 to double*
  store double %941, double* %942, align 1
  %943 = getelementptr inbounds i8, i8* %928, i64 8
  %944 = bitcast i8* %943 to i64*
  store i64 %938, i64* %944, align 1
  store %struct.Memory* %loadMem_445158, %struct.Memory** %MEMORY
  %loadMem_44515d = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 15
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %952 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %951, i64 0, i64 2
  %YMM2.i351 = bitcast %union.VectorReg* %952 to %"class.std::bitset"*
  %953 = bitcast %"class.std::bitset"* %YMM2.i351 to i8*
  %954 = bitcast %"class.std::bitset"* %YMM2.i351 to i8*
  %955 = load i64, i64* %RBP.i350
  %956 = sub i64 %955, 64
  %957 = load i64, i64* %PC.i349
  %958 = add i64 %957, 5
  store i64 %958, i64* %PC.i349
  %959 = bitcast i8* %954 to double*
  %960 = load double, double* %959, align 1
  %961 = getelementptr inbounds i8, i8* %954, i64 8
  %962 = bitcast i8* %961 to i64*
  %963 = load i64, i64* %962, align 1
  %964 = inttoptr i64 %956 to double*
  %965 = load double, double* %964
  %966 = fmul double %960, %965
  %967 = bitcast i8* %953 to double*
  store double %966, double* %967, align 1
  %968 = getelementptr inbounds i8, i8* %953, i64 8
  %969 = bitcast i8* %968 to i64*
  store i64 %963, i64* %969, align 1
  store %struct.Memory* %loadMem_44515d, %struct.Memory** %MEMORY
  %loadMem_445162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %974 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %973, i64 0, i64 1
  %YMM1.i347 = bitcast %union.VectorReg* %974 to %"class.std::bitset"*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %975, i64 0, i64 2
  %XMM2.i348 = bitcast %union.VectorReg* %976 to %union.vec128_t*
  %977 = bitcast %"class.std::bitset"* %YMM1.i347 to i8*
  %978 = bitcast %"class.std::bitset"* %YMM1.i347 to i8*
  %979 = bitcast %union.vec128_t* %XMM2.i348 to i8*
  %980 = load i64, i64* %PC.i346
  %981 = add i64 %980, 4
  store i64 %981, i64* %PC.i346
  %982 = bitcast i8* %978 to double*
  %983 = load double, double* %982, align 1
  %984 = getelementptr inbounds i8, i8* %978, i64 8
  %985 = bitcast i8* %984 to i64*
  %986 = load i64, i64* %985, align 1
  %987 = bitcast i8* %979 to double*
  %988 = load double, double* %987, align 1
  %989 = fadd double %983, %988
  %990 = bitcast i8* %977 to double*
  store double %989, double* %990, align 1
  %991 = getelementptr inbounds i8, i8* %977, i64 8
  %992 = bitcast i8* %991 to i64*
  store i64 %986, i64* %992, align 1
  store %struct.Memory* %loadMem_445162, %struct.Memory** %MEMORY
  %loadMem_445166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 15
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %999, i64 0, i64 1
  %XMM1.i345 = bitcast %union.VectorReg* %1000 to %union.vec128_t*
  %1001 = load i64, i64* %RBP.i344
  %1002 = sub i64 %1001, 64
  %1003 = bitcast %union.vec128_t* %XMM1.i345 to i8*
  %1004 = load i64, i64* %PC.i343
  %1005 = add i64 %1004, 5
  store i64 %1005, i64* %PC.i343
  %1006 = bitcast i8* %1003 to double*
  %1007 = load double, double* %1006, align 1
  %1008 = inttoptr i64 %1002 to double*
  store double %1007, double* %1008
  store %struct.Memory* %loadMem_445166, %struct.Memory** %MEMORY
  %loadMem_44516b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 15
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1016 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1015, i64 0, i64 1
  %YMM1.i342 = bitcast %union.VectorReg* %1016 to %"class.std::bitset"*
  %1017 = bitcast %"class.std::bitset"* %YMM1.i342 to i8*
  %1018 = load i64, i64* %RBP.i341
  %1019 = sub i64 %1018, 24
  %1020 = load i64, i64* %PC.i340
  %1021 = add i64 %1020, 5
  store i64 %1021, i64* %PC.i340
  %1022 = inttoptr i64 %1019 to double*
  %1023 = load double, double* %1022
  %1024 = bitcast i8* %1017 to double*
  store double %1023, double* %1024, align 1
  %1025 = getelementptr inbounds i8, i8* %1017, i64 8
  %1026 = bitcast i8* %1025 to double*
  store double 0.000000e+00, double* %1026, align 1
  store %struct.Memory* %loadMem_44516b, %struct.Memory** %MEMORY
  %loadMem_445170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 15
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1033, i64 0, i64 1
  %YMM1.i339 = bitcast %union.VectorReg* %1034 to %"class.std::bitset"*
  %1035 = bitcast %"class.std::bitset"* %YMM1.i339 to i8*
  %1036 = bitcast %"class.std::bitset"* %YMM1.i339 to i8*
  %1037 = load i64, i64* %RBP.i338
  %1038 = sub i64 %1037, 48
  %1039 = load i64, i64* %PC.i337
  %1040 = add i64 %1039, 5
  store i64 %1040, i64* %PC.i337
  %1041 = bitcast i8* %1036 to double*
  %1042 = load double, double* %1041, align 1
  %1043 = getelementptr inbounds i8, i8* %1036, i64 8
  %1044 = bitcast i8* %1043 to i64*
  %1045 = load i64, i64* %1044, align 1
  %1046 = inttoptr i64 %1038 to double*
  %1047 = load double, double* %1046
  %1048 = fmul double %1042, %1047
  %1049 = bitcast i8* %1035 to double*
  store double %1048, double* %1049, align 1
  %1050 = getelementptr inbounds i8, i8* %1035, i64 8
  %1051 = bitcast i8* %1050 to i64*
  store i64 %1045, i64* %1051, align 1
  store %struct.Memory* %loadMem_445170, %struct.Memory** %MEMORY
  %loadMem_445175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 15
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1057 to i64*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1059 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1058, i64 0, i64 2
  %YMM2.i336 = bitcast %union.VectorReg* %1059 to %"class.std::bitset"*
  %1060 = bitcast %"class.std::bitset"* %YMM2.i336 to i8*
  %1061 = load i64, i64* %RBP.i335
  %1062 = sub i64 %1061, 28
  %1063 = load i64, i64* %PC.i334
  %1064 = add i64 %1063, 5
  store i64 %1064, i64* %PC.i334
  %1065 = inttoptr i64 %1062 to i32*
  %1066 = load i32, i32* %1065
  %1067 = sitofp i32 %1066 to double
  %1068 = bitcast i8* %1060 to double*
  store double %1067, double* %1068, align 1
  store %struct.Memory* %loadMem_445175, %struct.Memory** %MEMORY
  %loadMem_44517a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 15
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1075, i64 0, i64 2
  %YMM2.i333 = bitcast %union.VectorReg* %1076 to %"class.std::bitset"*
  %1077 = bitcast %"class.std::bitset"* %YMM2.i333 to i8*
  %1078 = bitcast %"class.std::bitset"* %YMM2.i333 to i8*
  %1079 = load i64, i64* %RBP.i332
  %1080 = sub i64 %1079, 56
  %1081 = load i64, i64* %PC.i331
  %1082 = add i64 %1081, 5
  store i64 %1082, i64* %PC.i331
  %1083 = bitcast i8* %1078 to double*
  %1084 = load double, double* %1083, align 1
  %1085 = getelementptr inbounds i8, i8* %1078, i64 8
  %1086 = bitcast i8* %1085 to i64*
  %1087 = load i64, i64* %1086, align 1
  %1088 = inttoptr i64 %1080 to double*
  %1089 = load double, double* %1088
  %1090 = fmul double %1084, %1089
  %1091 = bitcast i8* %1077 to double*
  store double %1090, double* %1091, align 1
  %1092 = getelementptr inbounds i8, i8* %1077, i64 8
  %1093 = bitcast i8* %1092 to i64*
  store i64 %1087, i64* %1093, align 1
  store %struct.Memory* %loadMem_44517a, %struct.Memory** %MEMORY
  %loadMem_44517f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1097, i64 0, i64 1
  %YMM1.i329 = bitcast %union.VectorReg* %1098 to %"class.std::bitset"*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1100 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1099, i64 0, i64 2
  %XMM2.i330 = bitcast %union.VectorReg* %1100 to %union.vec128_t*
  %1101 = bitcast %"class.std::bitset"* %YMM1.i329 to i8*
  %1102 = bitcast %"class.std::bitset"* %YMM1.i329 to i8*
  %1103 = bitcast %union.vec128_t* %XMM2.i330 to i8*
  %1104 = load i64, i64* %PC.i328
  %1105 = add i64 %1104, 4
  store i64 %1105, i64* %PC.i328
  %1106 = bitcast i8* %1102 to double*
  %1107 = load double, double* %1106, align 1
  %1108 = getelementptr inbounds i8, i8* %1102, i64 8
  %1109 = bitcast i8* %1108 to i64*
  %1110 = load i64, i64* %1109, align 1
  %1111 = bitcast i8* %1103 to double*
  %1112 = load double, double* %1111, align 1
  %1113 = fadd double %1107, %1112
  %1114 = bitcast i8* %1101 to double*
  store double %1113, double* %1114, align 1
  %1115 = getelementptr inbounds i8, i8* %1101, i64 8
  %1116 = bitcast i8* %1115 to i64*
  store i64 %1110, i64* %1116, align 1
  store %struct.Memory* %loadMem_44517f, %struct.Memory** %MEMORY
  %loadMem_445183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 15
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1124 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1123, i64 0, i64 1
  %XMM1.i327 = bitcast %union.VectorReg* %1124 to %union.vec128_t*
  %1125 = load i64, i64* %RBP.i326
  %1126 = sub i64 %1125, 56
  %1127 = bitcast %union.vec128_t* %XMM1.i327 to i8*
  %1128 = load i64, i64* %PC.i325
  %1129 = add i64 %1128, 5
  store i64 %1129, i64* %PC.i325
  %1130 = bitcast i8* %1127 to double*
  %1131 = load double, double* %1130, align 1
  %1132 = inttoptr i64 %1126 to double*
  store double %1131, double* %1132
  store %struct.Memory* %loadMem_445183, %struct.Memory** %MEMORY
  %loadMem_445188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 15
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1139, i64 0, i64 1
  %YMM1.i324 = bitcast %union.VectorReg* %1140 to %"class.std::bitset"*
  %1141 = bitcast %"class.std::bitset"* %YMM1.i324 to i8*
  %1142 = load i64, i64* %RBP.i323
  %1143 = sub i64 %1142, 24
  %1144 = load i64, i64* %PC.i322
  %1145 = add i64 %1144, 5
  store i64 %1145, i64* %PC.i322
  %1146 = inttoptr i64 %1143 to double*
  %1147 = load double, double* %1146
  %1148 = bitcast i8* %1141 to double*
  store double %1147, double* %1148, align 1
  %1149 = getelementptr inbounds i8, i8* %1141, i64 8
  %1150 = bitcast i8* %1149 to double*
  store double 0.000000e+00, double* %1150, align 1
  store %struct.Memory* %loadMem_445188, %struct.Memory** %MEMORY
  %loadMem_44518d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 15
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1157, i64 0, i64 1
  %YMM1.i321 = bitcast %union.VectorReg* %1158 to %"class.std::bitset"*
  %1159 = bitcast %"class.std::bitset"* %YMM1.i321 to i8*
  %1160 = bitcast %"class.std::bitset"* %YMM1.i321 to i8*
  %1161 = load i64, i64* %RBP.i320
  %1162 = sub i64 %1161, 64
  %1163 = load i64, i64* %PC.i319
  %1164 = add i64 %1163, 5
  store i64 %1164, i64* %PC.i319
  %1165 = bitcast i8* %1160 to double*
  %1166 = load double, double* %1165, align 1
  %1167 = getelementptr inbounds i8, i8* %1160, i64 8
  %1168 = bitcast i8* %1167 to i64*
  %1169 = load i64, i64* %1168, align 1
  %1170 = inttoptr i64 %1162 to double*
  %1171 = load double, double* %1170
  %1172 = fmul double %1166, %1171
  %1173 = bitcast i8* %1159 to double*
  store double %1172, double* %1173, align 1
  %1174 = getelementptr inbounds i8, i8* %1159, i64 8
  %1175 = bitcast i8* %1174 to i64*
  store i64 %1169, i64* %1175, align 1
  store %struct.Memory* %loadMem_44518d, %struct.Memory** %MEMORY
  %loadMem_445192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 15
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1182, i64 0, i64 2
  %YMM2.i318 = bitcast %union.VectorReg* %1183 to %"class.std::bitset"*
  %1184 = bitcast %"class.std::bitset"* %YMM2.i318 to i8*
  %1185 = load i64, i64* %RBP.i317
  %1186 = sub i64 %1185, 28
  %1187 = load i64, i64* %PC.i316
  %1188 = add i64 %1187, 5
  store i64 %1188, i64* %PC.i316
  %1189 = inttoptr i64 %1186 to i32*
  %1190 = load i32, i32* %1189
  %1191 = sitofp i32 %1190 to double
  %1192 = bitcast i8* %1184 to double*
  store double %1191, double* %1192, align 1
  store %struct.Memory* %loadMem_445192, %struct.Memory** %MEMORY
  %loadMem_445197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 15
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1199, i64 0, i64 2
  %YMM2.i315 = bitcast %union.VectorReg* %1200 to %"class.std::bitset"*
  %1201 = bitcast %"class.std::bitset"* %YMM2.i315 to i8*
  %1202 = bitcast %"class.std::bitset"* %YMM2.i315 to i8*
  %1203 = load i64, i64* %RBP.i314
  %1204 = sub i64 %1203, 72
  %1205 = load i64, i64* %PC.i313
  %1206 = add i64 %1205, 5
  store i64 %1206, i64* %PC.i313
  %1207 = bitcast i8* %1202 to double*
  %1208 = load double, double* %1207, align 1
  %1209 = getelementptr inbounds i8, i8* %1202, i64 8
  %1210 = bitcast i8* %1209 to i64*
  %1211 = load i64, i64* %1210, align 1
  %1212 = inttoptr i64 %1204 to double*
  %1213 = load double, double* %1212
  %1214 = fmul double %1208, %1213
  %1215 = bitcast i8* %1201 to double*
  store double %1214, double* %1215, align 1
  %1216 = getelementptr inbounds i8, i8* %1201, i64 8
  %1217 = bitcast i8* %1216 to i64*
  store i64 %1211, i64* %1217, align 1
  store %struct.Memory* %loadMem_445197, %struct.Memory** %MEMORY
  %loadMem_44519c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1221, i64 0, i64 1
  %YMM1.i311 = bitcast %union.VectorReg* %1222 to %"class.std::bitset"*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1223, i64 0, i64 2
  %XMM2.i312 = bitcast %union.VectorReg* %1224 to %union.vec128_t*
  %1225 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %1226 = bitcast %"class.std::bitset"* %YMM1.i311 to i8*
  %1227 = bitcast %union.vec128_t* %XMM2.i312 to i8*
  %1228 = load i64, i64* %PC.i310
  %1229 = add i64 %1228, 4
  store i64 %1229, i64* %PC.i310
  %1230 = bitcast i8* %1226 to double*
  %1231 = load double, double* %1230, align 1
  %1232 = getelementptr inbounds i8, i8* %1226, i64 8
  %1233 = bitcast i8* %1232 to i64*
  %1234 = load i64, i64* %1233, align 1
  %1235 = bitcast i8* %1227 to double*
  %1236 = load double, double* %1235, align 1
  %1237 = fadd double %1231, %1236
  %1238 = bitcast i8* %1225 to double*
  store double %1237, double* %1238, align 1
  %1239 = getelementptr inbounds i8, i8* %1225, i64 8
  %1240 = bitcast i8* %1239 to i64*
  store i64 %1234, i64* %1240, align 1
  store %struct.Memory* %loadMem_44519c, %struct.Memory** %MEMORY
  %loadMem_4451a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 15
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1247, i64 0, i64 1
  %XMM1.i309 = bitcast %union.VectorReg* %1248 to %union.vec128_t*
  %1249 = load i64, i64* %RBP.i308
  %1250 = sub i64 %1249, 72
  %1251 = bitcast %union.vec128_t* %XMM1.i309 to i8*
  %1252 = load i64, i64* %PC.i307
  %1253 = add i64 %1252, 5
  store i64 %1253, i64* %PC.i307
  %1254 = bitcast i8* %1251 to double*
  %1255 = load double, double* %1254, align 1
  %1256 = inttoptr i64 %1250 to double*
  store double %1255, double* %1256
  store %struct.Memory* %loadMem_4451a0, %struct.Memory** %MEMORY
  %loadMem_4451a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1262 to i64*
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1263, i64 0, i64 1
  %YMM1.i306 = bitcast %union.VectorReg* %1264 to %"class.std::bitset"*
  %1265 = bitcast %"class.std::bitset"* %YMM1.i306 to i8*
  %1266 = load i64, i64* %RBP.i305
  %1267 = sub i64 %1266, 72
  %1268 = load i64, i64* %PC.i304
  %1269 = add i64 %1268, 5
  store i64 %1269, i64* %PC.i304
  %1270 = inttoptr i64 %1267 to double*
  %1271 = load double, double* %1270
  %1272 = bitcast i8* %1265 to double*
  store double %1271, double* %1272, align 1
  %1273 = getelementptr inbounds i8, i8* %1265, i64 8
  %1274 = bitcast i8* %1273 to double*
  store double 0.000000e+00, double* %1274, align 1
  store %struct.Memory* %loadMem_4451a5, %struct.Memory** %MEMORY
  %loadMem_4451aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1278, i64 0, i64 0
  %XMM0.i300 = bitcast %union.VectorReg* %1279 to %union.vec128_t*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1280, i64 0, i64 1
  %XMM1.i301 = bitcast %union.VectorReg* %1281 to %union.vec128_t*
  %1282 = bitcast %union.vec128_t* %XMM1.i301 to i8*
  %1283 = bitcast %union.vec128_t* %XMM0.i300 to i8*
  %1284 = load i64, i64* %PC.i299
  %1285 = add i64 %1284, 4
  store i64 %1285, i64* %PC.i299
  %1286 = bitcast i8* %1282 to double*
  %1287 = load double, double* %1286, align 1
  %1288 = bitcast i8* %1283 to double*
  %1289 = load double, double* %1288, align 1
  %1290 = fcmp uno double %1287, %1289
  br i1 %1290, label %1291, label %1303

; <label>:1291:                                   ; preds = %block_44512e
  %1292 = fadd double %1287, %1289
  %1293 = bitcast double %1292 to i64
  %1294 = and i64 %1293, 9221120237041090560
  %1295 = icmp eq i64 %1294, 9218868437227405312
  %1296 = and i64 %1293, 2251799813685247
  %1297 = icmp ne i64 %1296, 0
  %1298 = and i1 %1295, %1297
  br i1 %1298, label %1299, label %1309

; <label>:1299:                                   ; preds = %1291
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1301 = load i64, i64* %1300, align 8
  %1302 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1301, %struct.Memory* %loadMem_4451aa)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1303:                                   ; preds = %block_44512e
  %1304 = fcmp ogt double %1287, %1289
  br i1 %1304, label %1309, label %1305

; <label>:1305:                                   ; preds = %1303
  %1306 = fcmp olt double %1287, %1289
  br i1 %1306, label %1309, label %1307

; <label>:1307:                                   ; preds = %1305
  %1308 = fcmp oeq double %1287, %1289
  br i1 %1308, label %1309, label %1316

; <label>:1309:                                   ; preds = %1307, %1305, %1303, %1291
  %1310 = phi i8 [ 0, %1303 ], [ 0, %1305 ], [ 1, %1307 ], [ 1, %1291 ]
  %1311 = phi i8 [ 0, %1303 ], [ 0, %1305 ], [ 0, %1307 ], [ 1, %1291 ]
  %1312 = phi i8 [ 0, %1303 ], [ 1, %1305 ], [ 0, %1307 ], [ 1, %1291 ]
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1310, i8* %1313, align 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1311, i8* %1314, align 1
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1312, i8* %1315, align 1
  br label %1316

; <label>:1316:                                   ; preds = %1309, %1307
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1317, align 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1318, align 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1319, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1299, %1316
  %1320 = phi %struct.Memory* [ %1302, %1299 ], [ %loadMem_4451aa, %1316 ]
  store %struct.Memory* %1320, %struct.Memory** %MEMORY
  %loadMem_4451ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %PC.i298
  %1325 = add i64 %1324, 17
  %1326 = load i64, i64* %PC.i298
  %1327 = add i64 %1326, 6
  %1328 = load i64, i64* %PC.i298
  %1329 = add i64 %1328, 6
  store i64 %1329, i64* %PC.i298
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1331 = load i8, i8* %1330, align 1
  %1332 = icmp eq i8 %1331, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %BRANCH_TAKEN, align 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1335 = select i1 %1332, i64 %1325, i64 %1327
  store i64 %1335, i64* %1334, align 8
  store %struct.Memory* %loadMem_4451ae, %struct.Memory** %MEMORY
  %loadBr_4451ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4451ae = icmp eq i8 %loadBr_4451ae, 1
  br i1 %cmpBr_4451ae, label %block_.L_4451bf, label %block_4451b4

block_4451b4:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4451b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %PC.i297
  %1340 = add i64 %1339, 11
  %1341 = load i64, i64* %PC.i297
  %1342 = add i64 %1341, 6
  %1343 = load i64, i64* %PC.i297
  %1344 = add i64 %1343, 6
  store i64 %1344, i64* %PC.i297
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1346 = load i8, i8* %1345, align 1
  store i8 %1346, i8* %BRANCH_TAKEN, align 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1348 = icmp ne i8 %1346, 0
  %1349 = select i1 %1348, i64 %1340, i64 %1342
  store i64 %1349, i64* %1347, align 8
  store %struct.Memory* %loadMem_4451b4, %struct.Memory** %MEMORY
  %loadBr_4451b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4451b4 = icmp eq i8 %loadBr_4451b4, 1
  br i1 %cmpBr_4451b4, label %block_.L_4451bf, label %block_4451ba

block_4451ba:                                     ; preds = %block_4451b4
  %loadMem_4451ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %PC.i296
  %1354 = add i64 %1353, 75
  %1355 = load i64, i64* %PC.i296
  %1356 = add i64 %1355, 5
  store i64 %1356, i64* %PC.i296
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1354, i64* %1357, align 8
  store %struct.Memory* %loadMem_4451ba, %struct.Memory** %MEMORY
  br label %block_.L_445205

block_.L_4451bf:                                  ; preds = %block_4451b4, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4451bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 33
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1361, i64 0, i64 0
  %YMM0.i295 = bitcast %union.VectorReg* %1362 to %"class.std::bitset"*
  %1363 = bitcast %"class.std::bitset"* %YMM0.i295 to i8*
  %1364 = load i64, i64* %PC.i294
  %1365 = add i64 %1364, ptrtoint (%G_0xf619__rip__type* @G_0xf619__rip_ to i64)
  %1366 = load i64, i64* %PC.i294
  %1367 = add i64 %1366, 8
  store i64 %1367, i64* %PC.i294
  %1368 = inttoptr i64 %1365 to double*
  %1369 = load double, double* %1368
  %1370 = bitcast i8* %1363 to double*
  store double %1369, double* %1370, align 1
  %1371 = getelementptr inbounds i8, i8* %1363, i64 8
  %1372 = bitcast i8* %1371 to double*
  store double 0.000000e+00, double* %1372, align 1
  store %struct.Memory* %loadMem_4451bf, %struct.Memory** %MEMORY
  %loadMem_4451c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 15
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1380 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1379, i64 0, i64 1
  %YMM1.i293 = bitcast %union.VectorReg* %1380 to %"class.std::bitset"*
  %1381 = bitcast %"class.std::bitset"* %YMM1.i293 to i8*
  %1382 = load i64, i64* %RBP.i292
  %1383 = sub i64 %1382, 72
  %1384 = load i64, i64* %PC.i291
  %1385 = add i64 %1384, 5
  store i64 %1385, i64* %PC.i291
  %1386 = inttoptr i64 %1383 to double*
  %1387 = load double, double* %1386
  %1388 = bitcast i8* %1381 to double*
  store double %1387, double* %1388, align 1
  %1389 = getelementptr inbounds i8, i8* %1381, i64 8
  %1390 = bitcast i8* %1389 to double*
  store double 0.000000e+00, double* %1390, align 1
  store %struct.Memory* %loadMem_4451c7, %struct.Memory** %MEMORY
  %loadMem_4451cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 15
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1398 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1397, i64 0, i64 2
  %YMM2.i290 = bitcast %union.VectorReg* %1398 to %"class.std::bitset"*
  %1399 = bitcast %"class.std::bitset"* %YMM2.i290 to i8*
  %1400 = load i64, i64* %RBP.i289
  %1401 = sub i64 %1400, 48
  %1402 = load i64, i64* %PC.i288
  %1403 = add i64 %1402, 5
  store i64 %1403, i64* %PC.i288
  %1404 = inttoptr i64 %1401 to double*
  %1405 = load double, double* %1404
  %1406 = bitcast i8* %1399 to double*
  store double %1405, double* %1406, align 1
  %1407 = getelementptr inbounds i8, i8* %1399, i64 8
  %1408 = bitcast i8* %1407 to double*
  store double 0.000000e+00, double* %1408, align 1
  store %struct.Memory* %loadMem_4451cc, %struct.Memory** %MEMORY
  %loadMem_4451d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1413 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1412, i64 0, i64 2
  %YMM2.i286 = bitcast %union.VectorReg* %1413 to %"class.std::bitset"*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1415 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1414, i64 0, i64 1
  %XMM1.i287 = bitcast %union.VectorReg* %1415 to %union.vec128_t*
  %1416 = bitcast %"class.std::bitset"* %YMM2.i286 to i8*
  %1417 = bitcast %"class.std::bitset"* %YMM2.i286 to i8*
  %1418 = bitcast %union.vec128_t* %XMM1.i287 to i8*
  %1419 = load i64, i64* %PC.i285
  %1420 = add i64 %1419, 4
  store i64 %1420, i64* %PC.i285
  %1421 = bitcast i8* %1417 to double*
  %1422 = load double, double* %1421, align 1
  %1423 = getelementptr inbounds i8, i8* %1417, i64 8
  %1424 = bitcast i8* %1423 to i64*
  %1425 = load i64, i64* %1424, align 1
  %1426 = bitcast i8* %1418 to double*
  %1427 = load double, double* %1426, align 1
  %1428 = fdiv double %1422, %1427
  %1429 = bitcast i8* %1416 to double*
  store double %1428, double* %1429, align 1
  %1430 = getelementptr inbounds i8, i8* %1416, i64 8
  %1431 = bitcast i8* %1430 to i64*
  store i64 %1425, i64* %1431, align 1
  store %struct.Memory* %loadMem_4451d1, %struct.Memory** %MEMORY
  %loadMem_4451d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1438, i64 0, i64 2
  %XMM2.i284 = bitcast %union.VectorReg* %1439 to %union.vec128_t*
  %1440 = load i64, i64* %RBP.i283
  %1441 = sub i64 %1440, 48
  %1442 = bitcast %union.vec128_t* %XMM2.i284 to i8*
  %1443 = load i64, i64* %PC.i282
  %1444 = add i64 %1443, 5
  store i64 %1444, i64* %PC.i282
  %1445 = bitcast i8* %1442 to double*
  %1446 = load double, double* %1445, align 1
  %1447 = inttoptr i64 %1441 to double*
  store double %1446, double* %1447
  store %struct.Memory* %loadMem_4451d5, %struct.Memory** %MEMORY
  %loadMem_4451da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 15
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1454, i64 0, i64 1
  %YMM1.i281 = bitcast %union.VectorReg* %1455 to %"class.std::bitset"*
  %1456 = bitcast %"class.std::bitset"* %YMM1.i281 to i8*
  %1457 = load i64, i64* %RBP.i280
  %1458 = sub i64 %1457, 72
  %1459 = load i64, i64* %PC.i279
  %1460 = add i64 %1459, 5
  store i64 %1460, i64* %PC.i279
  %1461 = inttoptr i64 %1458 to double*
  %1462 = load double, double* %1461
  %1463 = bitcast i8* %1456 to double*
  store double %1462, double* %1463, align 1
  %1464 = getelementptr inbounds i8, i8* %1456, i64 8
  %1465 = bitcast i8* %1464 to double*
  store double 0.000000e+00, double* %1465, align 1
  store %struct.Memory* %loadMem_4451da, %struct.Memory** %MEMORY
  %loadMem_4451df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 15
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1472, i64 0, i64 2
  %YMM2.i278 = bitcast %union.VectorReg* %1473 to %"class.std::bitset"*
  %1474 = bitcast %"class.std::bitset"* %YMM2.i278 to i8*
  %1475 = load i64, i64* %RBP.i277
  %1476 = sub i64 %1475, 64
  %1477 = load i64, i64* %PC.i276
  %1478 = add i64 %1477, 5
  store i64 %1478, i64* %PC.i276
  %1479 = inttoptr i64 %1476 to double*
  %1480 = load double, double* %1479
  %1481 = bitcast i8* %1474 to double*
  store double %1480, double* %1481, align 1
  %1482 = getelementptr inbounds i8, i8* %1474, i64 8
  %1483 = bitcast i8* %1482 to double*
  store double 0.000000e+00, double* %1483, align 1
  store %struct.Memory* %loadMem_4451df, %struct.Memory** %MEMORY
  %loadMem_4451e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1487, i64 0, i64 2
  %YMM2.i274 = bitcast %union.VectorReg* %1488 to %"class.std::bitset"*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1490 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1489, i64 0, i64 1
  %XMM1.i275 = bitcast %union.VectorReg* %1490 to %union.vec128_t*
  %1491 = bitcast %"class.std::bitset"* %YMM2.i274 to i8*
  %1492 = bitcast %"class.std::bitset"* %YMM2.i274 to i8*
  %1493 = bitcast %union.vec128_t* %XMM1.i275 to i8*
  %1494 = load i64, i64* %PC.i273
  %1495 = add i64 %1494, 4
  store i64 %1495, i64* %PC.i273
  %1496 = bitcast i8* %1492 to double*
  %1497 = load double, double* %1496, align 1
  %1498 = getelementptr inbounds i8, i8* %1492, i64 8
  %1499 = bitcast i8* %1498 to i64*
  %1500 = load i64, i64* %1499, align 1
  %1501 = bitcast i8* %1493 to double*
  %1502 = load double, double* %1501, align 1
  %1503 = fdiv double %1497, %1502
  %1504 = bitcast i8* %1491 to double*
  store double %1503, double* %1504, align 1
  %1505 = getelementptr inbounds i8, i8* %1491, i64 8
  %1506 = bitcast i8* %1505 to i64*
  store i64 %1500, i64* %1506, align 1
  store %struct.Memory* %loadMem_4451e4, %struct.Memory** %MEMORY
  %loadMem_4451e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 15
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1513, i64 0, i64 2
  %XMM2.i272 = bitcast %union.VectorReg* %1514 to %union.vec128_t*
  %1515 = load i64, i64* %RBP.i271
  %1516 = sub i64 %1515, 64
  %1517 = bitcast %union.vec128_t* %XMM2.i272 to i8*
  %1518 = load i64, i64* %PC.i270
  %1519 = add i64 %1518, 5
  store i64 %1519, i64* %PC.i270
  %1520 = bitcast i8* %1517 to double*
  %1521 = load double, double* %1520, align 1
  %1522 = inttoptr i64 %1516 to double*
  store double %1521, double* %1522
  store %struct.Memory* %loadMem_4451e8, %struct.Memory** %MEMORY
  %loadMem_4451ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 15
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1529, i64 0, i64 1
  %YMM1.i269 = bitcast %union.VectorReg* %1530 to %"class.std::bitset"*
  %1531 = bitcast %"class.std::bitset"* %YMM1.i269 to i8*
  %1532 = load i64, i64* %RBP.i268
  %1533 = sub i64 %1532, 72
  %1534 = load i64, i64* %PC.i267
  %1535 = add i64 %1534, 5
  store i64 %1535, i64* %PC.i267
  %1536 = inttoptr i64 %1533 to double*
  %1537 = load double, double* %1536
  %1538 = bitcast i8* %1531 to double*
  store double %1537, double* %1538, align 1
  %1539 = getelementptr inbounds i8, i8* %1531, i64 8
  %1540 = bitcast i8* %1539 to double*
  store double 0.000000e+00, double* %1540, align 1
  store %struct.Memory* %loadMem_4451ed, %struct.Memory** %MEMORY
  %loadMem_4451f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 15
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1547, i64 0, i64 2
  %YMM2.i266 = bitcast %union.VectorReg* %1548 to %"class.std::bitset"*
  %1549 = bitcast %"class.std::bitset"* %YMM2.i266 to i8*
  %1550 = load i64, i64* %RBP.i265
  %1551 = sub i64 %1550, 56
  %1552 = load i64, i64* %PC.i264
  %1553 = add i64 %1552, 5
  store i64 %1553, i64* %PC.i264
  %1554 = inttoptr i64 %1551 to double*
  %1555 = load double, double* %1554
  %1556 = bitcast i8* %1549 to double*
  store double %1555, double* %1556, align 1
  %1557 = getelementptr inbounds i8, i8* %1549, i64 8
  %1558 = bitcast i8* %1557 to double*
  store double 0.000000e+00, double* %1558, align 1
  store %struct.Memory* %loadMem_4451f2, %struct.Memory** %MEMORY
  %loadMem_4451f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 33
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1563 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1562, i64 0, i64 2
  %YMM2.i262 = bitcast %union.VectorReg* %1563 to %"class.std::bitset"*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1564, i64 0, i64 1
  %XMM1.i263 = bitcast %union.VectorReg* %1565 to %union.vec128_t*
  %1566 = bitcast %"class.std::bitset"* %YMM2.i262 to i8*
  %1567 = bitcast %"class.std::bitset"* %YMM2.i262 to i8*
  %1568 = bitcast %union.vec128_t* %XMM1.i263 to i8*
  %1569 = load i64, i64* %PC.i261
  %1570 = add i64 %1569, 4
  store i64 %1570, i64* %PC.i261
  %1571 = bitcast i8* %1567 to double*
  %1572 = load double, double* %1571, align 1
  %1573 = getelementptr inbounds i8, i8* %1567, i64 8
  %1574 = bitcast i8* %1573 to i64*
  %1575 = load i64, i64* %1574, align 1
  %1576 = bitcast i8* %1568 to double*
  %1577 = load double, double* %1576, align 1
  %1578 = fdiv double %1572, %1577
  %1579 = bitcast i8* %1566 to double*
  store double %1578, double* %1579, align 1
  %1580 = getelementptr inbounds i8, i8* %1566, i64 8
  %1581 = bitcast i8* %1580 to i64*
  store i64 %1575, i64* %1581, align 1
  store %struct.Memory* %loadMem_4451f7, %struct.Memory** %MEMORY
  %loadMem_4451fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1588, i64 0, i64 2
  %XMM2.i260 = bitcast %union.VectorReg* %1589 to %union.vec128_t*
  %1590 = load i64, i64* %RBP.i259
  %1591 = sub i64 %1590, 56
  %1592 = bitcast %union.vec128_t* %XMM2.i260 to i8*
  %1593 = load i64, i64* %PC.i258
  %1594 = add i64 %1593, 5
  store i64 %1594, i64* %PC.i258
  %1595 = bitcast i8* %1592 to double*
  %1596 = load double, double* %1595, align 1
  %1597 = inttoptr i64 %1591 to double*
  store double %1596, double* %1597
  store %struct.Memory* %loadMem_4451fb, %struct.Memory** %MEMORY
  %loadMem_445200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 33
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 15
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1605 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1604, i64 0, i64 0
  %XMM0.i257 = bitcast %union.VectorReg* %1605 to %union.vec128_t*
  %1606 = load i64, i64* %RBP.i256
  %1607 = sub i64 %1606, 72
  %1608 = bitcast %union.vec128_t* %XMM0.i257 to i8*
  %1609 = load i64, i64* %PC.i255
  %1610 = add i64 %1609, 5
  store i64 %1610, i64* %PC.i255
  %1611 = bitcast i8* %1608 to double*
  %1612 = load double, double* %1611, align 1
  %1613 = inttoptr i64 %1607 to double*
  store double %1612, double* %1613
  store %struct.Memory* %loadMem_445200, %struct.Memory** %MEMORY
  br label %block_.L_445205

block_.L_445205:                                  ; preds = %block_.L_4451bf, %block_4451ba
  %loadMem_445205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1617, i64 0, i64 0
  %YMM0.i254 = bitcast %union.VectorReg* %1618 to %"class.std::bitset"*
  %1619 = bitcast %"class.std::bitset"* %YMM0.i254 to i8*
  %1620 = load i64, i64* %PC.i253
  %1621 = add i64 %1620, ptrtoint (%G_0xf64b__rip__type* @G_0xf64b__rip_ to i64)
  %1622 = load i64, i64* %PC.i253
  %1623 = add i64 %1622, 8
  store i64 %1623, i64* %PC.i253
  %1624 = inttoptr i64 %1621 to double*
  %1625 = load double, double* %1624
  %1626 = bitcast i8* %1619 to double*
  store double %1625, double* %1626, align 1
  %1627 = getelementptr inbounds i8, i8* %1619, i64 8
  %1628 = bitcast i8* %1627 to double*
  store double 0.000000e+00, double* %1628, align 1
  store %struct.Memory* %loadMem_445205, %struct.Memory** %MEMORY
  %loadMem_44520d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 15
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 1
  %YMM1.i252 = bitcast %union.VectorReg* %1636 to %"class.std::bitset"*
  %1637 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %1638 = load i64, i64* %RBP.i251
  %1639 = sub i64 %1638, 56
  %1640 = load i64, i64* %PC.i250
  %1641 = add i64 %1640, 5
  store i64 %1641, i64* %PC.i250
  %1642 = inttoptr i64 %1639 to double*
  %1643 = load double, double* %1642
  %1644 = bitcast i8* %1637 to double*
  store double %1643, double* %1644, align 1
  %1645 = getelementptr inbounds i8, i8* %1637, i64 8
  %1646 = bitcast i8* %1645 to double*
  store double 0.000000e+00, double* %1646, align 1
  store %struct.Memory* %loadMem_44520d, %struct.Memory** %MEMORY
  %loadMem_445212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 15
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1653, i64 0, i64 1
  %YMM1.i249 = bitcast %union.VectorReg* %1654 to %"class.std::bitset"*
  %1655 = bitcast %"class.std::bitset"* %YMM1.i249 to i8*
  %1656 = bitcast %"class.std::bitset"* %YMM1.i249 to i8*
  %1657 = load i64, i64* %RBP.i248
  %1658 = sub i64 %1657, 40
  %1659 = load i64, i64* %PC.i247
  %1660 = add i64 %1659, 5
  store i64 %1660, i64* %PC.i247
  %1661 = bitcast i8* %1656 to double*
  %1662 = load double, double* %1661, align 1
  %1663 = getelementptr inbounds i8, i8* %1656, i64 8
  %1664 = bitcast i8* %1663 to i64*
  %1665 = load i64, i64* %1664, align 1
  %1666 = inttoptr i64 %1658 to double*
  %1667 = load double, double* %1666
  %1668 = fsub double %1662, %1667
  %1669 = bitcast i8* %1655 to double*
  store double %1668, double* %1669, align 1
  %1670 = getelementptr inbounds i8, i8* %1655, i64 8
  %1671 = bitcast i8* %1670 to i64*
  store i64 %1665, i64* %1671, align 1
  store %struct.Memory* %loadMem_445212, %struct.Memory** %MEMORY
  %loadMem_445217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 15
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1678, i64 0, i64 1
  %YMM1.i246 = bitcast %union.VectorReg* %1679 to %"class.std::bitset"*
  %1680 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %1681 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %1682 = load i64, i64* %RBP.i245
  %1683 = sub i64 %1682, 56
  %1684 = load i64, i64* %PC.i244
  %1685 = add i64 %1684, 5
  store i64 %1685, i64* %PC.i244
  %1686 = bitcast i8* %1681 to double*
  %1687 = load double, double* %1686, align 1
  %1688 = getelementptr inbounds i8, i8* %1681, i64 8
  %1689 = bitcast i8* %1688 to i64*
  %1690 = load i64, i64* %1689, align 1
  %1691 = inttoptr i64 %1683 to double*
  %1692 = load double, double* %1691
  %1693 = fdiv double %1687, %1692
  %1694 = bitcast i8* %1680 to double*
  store double %1693, double* %1694, align 1
  %1695 = getelementptr inbounds i8, i8* %1680, i64 8
  %1696 = bitcast i8* %1695 to i64*
  store i64 %1690, i64* %1696, align 1
  store %struct.Memory* %loadMem_445217, %struct.Memory** %MEMORY
  %loadMem_44521c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1700, i64 0, i64 2
  %YMM2.i243 = bitcast %union.VectorReg* %1701 to %"class.std::bitset"*
  %1702 = bitcast %"class.std::bitset"* %YMM2.i243 to i8*
  %1703 = load i64, i64* %PC.i242
  %1704 = add i64 %1703, ptrtoint (%G_0x106ed__rip__type* @G_0x106ed__rip_ to i64)
  %1705 = load i64, i64* %PC.i242
  %1706 = add i64 %1705, 7
  store i64 %1706, i64* %PC.i242
  %1707 = inttoptr i64 %1704 to float*
  %1708 = load float, float* %1707
  %1709 = add i64 %1704, 4
  %1710 = inttoptr i64 %1709 to float*
  %1711 = load float, float* %1710
  %1712 = add i64 %1704, 8
  %1713 = inttoptr i64 %1712 to float*
  %1714 = load float, float* %1713
  %1715 = add i64 %1704, 12
  %1716 = inttoptr i64 %1715 to float*
  %1717 = load float, float* %1716
  %1718 = bitcast i8* %1702 to float*
  store float %1708, float* %1718, align 1
  %1719 = getelementptr inbounds i8, i8* %1702, i64 4
  %1720 = bitcast i8* %1719 to float*
  store float %1711, float* %1720, align 1
  %1721 = getelementptr inbounds i8, i8* %1702, i64 8
  %1722 = bitcast i8* %1721 to float*
  store float %1714, float* %1722, align 1
  %1723 = getelementptr inbounds i8, i8* %1702, i64 12
  %1724 = bitcast i8* %1723 to float*
  store float %1717, float* %1724, align 1
  store %struct.Memory* %loadMem_44521c, %struct.Memory** %MEMORY
  %loadMem_445223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1728, i64 0, i64 1
  %YMM1.i240 = bitcast %union.VectorReg* %1729 to %"class.std::bitset"*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1730, i64 0, i64 2
  %XMM2.i241 = bitcast %union.VectorReg* %1731 to %union.vec128_t*
  %1732 = bitcast %"class.std::bitset"* %YMM1.i240 to i8*
  %1733 = bitcast %"class.std::bitset"* %YMM1.i240 to i8*
  %1734 = bitcast %union.vec128_t* %XMM2.i241 to i8*
  %1735 = load i64, i64* %PC.i239
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %PC.i239
  %1737 = bitcast i8* %1733 to i64*
  %1738 = load i64, i64* %1737, align 1
  %1739 = getelementptr inbounds i8, i8* %1733, i64 8
  %1740 = bitcast i8* %1739 to i64*
  %1741 = load i64, i64* %1740, align 1
  %1742 = bitcast i8* %1734 to i64*
  %1743 = load i64, i64* %1742, align 1
  %1744 = getelementptr inbounds i8, i8* %1734, i64 8
  %1745 = bitcast i8* %1744 to i64*
  %1746 = load i64, i64* %1745, align 1
  %1747 = and i64 %1743, %1738
  %1748 = and i64 %1746, %1741
  %1749 = trunc i64 %1747 to i32
  %1750 = lshr i64 %1747, 32
  %1751 = trunc i64 %1750 to i32
  %1752 = bitcast i8* %1732 to i32*
  store i32 %1749, i32* %1752, align 1
  %1753 = getelementptr inbounds i8, i8* %1732, i64 4
  %1754 = bitcast i8* %1753 to i32*
  store i32 %1751, i32* %1754, align 1
  %1755 = trunc i64 %1748 to i32
  %1756 = getelementptr inbounds i8, i8* %1732, i64 8
  %1757 = bitcast i8* %1756 to i32*
  store i32 %1755, i32* %1757, align 1
  %1758 = lshr i64 %1748, 32
  %1759 = trunc i64 %1758 to i32
  %1760 = getelementptr inbounds i8, i8* %1732, i64 12
  %1761 = bitcast i8* %1760 to i32*
  store i32 %1759, i32* %1761, align 1
  store %struct.Memory* %loadMem_445223, %struct.Memory** %MEMORY
  %loadMem_445227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1766 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1765, i64 0, i64 0
  %XMM0.i232 = bitcast %union.VectorReg* %1766 to %union.vec128_t*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1768 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1767, i64 0, i64 1
  %XMM1.i233 = bitcast %union.VectorReg* %1768 to %union.vec128_t*
  %1769 = bitcast %union.vec128_t* %XMM0.i232 to i8*
  %1770 = bitcast %union.vec128_t* %XMM1.i233 to i8*
  %1771 = load i64, i64* %PC.i231
  %1772 = add i64 %1771, 4
  store i64 %1772, i64* %PC.i231
  %1773 = bitcast i8* %1769 to double*
  %1774 = load double, double* %1773, align 1
  %1775 = bitcast i8* %1770 to double*
  %1776 = load double, double* %1775, align 1
  %1777 = fcmp uno double %1774, %1776
  br i1 %1777, label %1778, label %1790

; <label>:1778:                                   ; preds = %block_.L_445205
  %1779 = fadd double %1774, %1776
  %1780 = bitcast double %1779 to i64
  %1781 = and i64 %1780, 9221120237041090560
  %1782 = icmp eq i64 %1781, 9218868437227405312
  %1783 = and i64 %1780, 2251799813685247
  %1784 = icmp ne i64 %1783, 0
  %1785 = and i1 %1782, %1784
  br i1 %1785, label %1786, label %1796

; <label>:1786:                                   ; preds = %1778
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1788 = load i64, i64* %1787, align 8
  %1789 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1788, %struct.Memory* %loadMem_445227)
  br label %routine_ucomisd__xmm1___xmm0.exit234

; <label>:1790:                                   ; preds = %block_.L_445205
  %1791 = fcmp ogt double %1774, %1776
  br i1 %1791, label %1796, label %1792

; <label>:1792:                                   ; preds = %1790
  %1793 = fcmp olt double %1774, %1776
  br i1 %1793, label %1796, label %1794

; <label>:1794:                                   ; preds = %1792
  %1795 = fcmp oeq double %1774, %1776
  br i1 %1795, label %1796, label %1803

; <label>:1796:                                   ; preds = %1794, %1792, %1790, %1778
  %1797 = phi i8 [ 0, %1790 ], [ 0, %1792 ], [ 1, %1794 ], [ 1, %1778 ]
  %1798 = phi i8 [ 0, %1790 ], [ 0, %1792 ], [ 0, %1794 ], [ 1, %1778 ]
  %1799 = phi i8 [ 0, %1790 ], [ 1, %1792 ], [ 0, %1794 ], [ 1, %1778 ]
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1797, i8* %1800, align 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1798, i8* %1801, align 1
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1799, i8* %1802, align 1
  br label %1803

; <label>:1803:                                   ; preds = %1796, %1794
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1804, align 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1805, align 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1806, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit234

routine_ucomisd__xmm1___xmm0.exit234:             ; preds = %1786, %1803
  %1807 = phi %struct.Memory* [ %1789, %1786 ], [ %loadMem_445227, %1803 ]
  store %struct.Memory* %1807, %struct.Memory** %MEMORY
  %loadMem_44522b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %PC.i230
  %1812 = add i64 %1811, 104
  %1813 = load i64, i64* %PC.i230
  %1814 = add i64 %1813, 6
  %1815 = load i64, i64* %PC.i230
  %1816 = add i64 %1815, 6
  store i64 %1816, i64* %PC.i230
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1818 = load i8, i8* %1817, align 1
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1820 = load i8, i8* %1819, align 1
  %1821 = or i8 %1820, %1818
  %1822 = icmp ne i8 %1821, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %BRANCH_TAKEN, align 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1825 = select i1 %1822, i64 %1812, i64 %1814
  store i64 %1825, i64* %1824, align 8
  store %struct.Memory* %loadMem_44522b, %struct.Memory** %MEMORY
  %loadBr_44522b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44522b = icmp eq i8 %loadBr_44522b, 1
  br i1 %cmpBr_44522b, label %block_.L_445293, label %block_445231

block_445231:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit234
  %loadMem_445231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 33
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 15
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1832, i64 0, i64 0
  %YMM0.i229 = bitcast %union.VectorReg* %1833 to %"class.std::bitset"*
  %1834 = bitcast %"class.std::bitset"* %YMM0.i229 to i8*
  %1835 = load i64, i64* %RBP.i228
  %1836 = sub i64 %1835, 56
  %1837 = load i64, i64* %PC.i227
  %1838 = add i64 %1837, 5
  store i64 %1838, i64* %PC.i227
  %1839 = inttoptr i64 %1836 to double*
  %1840 = load double, double* %1839
  %1841 = bitcast i8* %1834 to double*
  store double %1840, double* %1841, align 1
  %1842 = getelementptr inbounds i8, i8* %1834, i64 8
  %1843 = bitcast i8* %1842 to double*
  store double 0.000000e+00, double* %1843, align 1
  store %struct.Memory* %loadMem_445231, %struct.Memory** %MEMORY
  %loadMem_445236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 15
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1850, i64 0, i64 1
  %YMM1.i226 = bitcast %union.VectorReg* %1851 to %"class.std::bitset"*
  %1852 = bitcast %"class.std::bitset"* %YMM1.i226 to i8*
  %1853 = load i64, i64* %RBP.i225
  %1854 = sub i64 %1853, 16
  %1855 = load i64, i64* %PC.i224
  %1856 = add i64 %1855, 5
  store i64 %1856, i64* %PC.i224
  %1857 = inttoptr i64 %1854 to double*
  %1858 = load double, double* %1857
  %1859 = bitcast i8* %1852 to double*
  store double %1858, double* %1859, align 1
  %1860 = getelementptr inbounds i8, i8* %1852, i64 8
  %1861 = bitcast i8* %1860 to double*
  store double 0.000000e+00, double* %1861, align 1
  store %struct.Memory* %loadMem_445236, %struct.Memory** %MEMORY
  %loadMem_44523b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 33
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1864 to i64*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 15
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1868, i64 0, i64 2
  %YMM2.i223 = bitcast %union.VectorReg* %1869 to %"class.std::bitset"*
  %1870 = bitcast %"class.std::bitset"* %YMM2.i223 to i8*
  %1871 = load i64, i64* %RBP.i222
  %1872 = sub i64 %1871, 24
  %1873 = load i64, i64* %PC.i221
  %1874 = add i64 %1873, 5
  store i64 %1874, i64* %PC.i221
  %1875 = inttoptr i64 %1872 to double*
  %1876 = load double, double* %1875
  %1877 = bitcast i8* %1870 to double*
  store double %1876, double* %1877, align 1
  %1878 = getelementptr inbounds i8, i8* %1870, i64 8
  %1879 = bitcast i8* %1878 to double*
  store double 0.000000e+00, double* %1879, align 1
  store %struct.Memory* %loadMem_44523b, %struct.Memory** %MEMORY
  %loadMem_445240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1886, i64 0, i64 0
  %XMM0.i220 = bitcast %union.VectorReg* %1887 to %union.vec128_t*
  %1888 = load i64, i64* %RBP.i219
  %1889 = sub i64 %1888, 96
  %1890 = bitcast %union.vec128_t* %XMM0.i220 to i8*
  %1891 = load i64, i64* %PC.i218
  %1892 = add i64 %1891, 5
  store i64 %1892, i64* %PC.i218
  %1893 = bitcast i8* %1890 to double*
  %1894 = load double, double* %1893, align 1
  %1895 = inttoptr i64 %1889 to double*
  store double %1894, double* %1895
  store %struct.Memory* %loadMem_445240, %struct.Memory** %MEMORY
  %loadMem_445245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1900 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1899, i64 0, i64 0
  %YMM0.i216 = bitcast %union.VectorReg* %1900 to %"class.std::bitset"*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1901, i64 0, i64 2
  %XMM2.i217 = bitcast %union.VectorReg* %1902 to %union.vec128_t*
  %1903 = bitcast %"class.std::bitset"* %YMM0.i216 to i8*
  %1904 = bitcast %union.vec128_t* %XMM2.i217 to i8*
  %1905 = load i64, i64* %PC.i215
  %1906 = add i64 %1905, 3
  store i64 %1906, i64* %PC.i215
  %1907 = bitcast i8* %1904 to <2 x i32>*
  %1908 = load <2 x i32>, <2 x i32>* %1907, align 1
  %1909 = getelementptr inbounds i8, i8* %1904, i64 8
  %1910 = bitcast i8* %1909 to <2 x i32>*
  %1911 = load <2 x i32>, <2 x i32>* %1910, align 1
  %1912 = extractelement <2 x i32> %1908, i32 0
  %1913 = bitcast i8* %1903 to i32*
  store i32 %1912, i32* %1913, align 1
  %1914 = extractelement <2 x i32> %1908, i32 1
  %1915 = getelementptr inbounds i8, i8* %1903, i64 4
  %1916 = bitcast i8* %1915 to i32*
  store i32 %1914, i32* %1916, align 1
  %1917 = extractelement <2 x i32> %1911, i32 0
  %1918 = getelementptr inbounds i8, i8* %1903, i64 8
  %1919 = bitcast i8* %1918 to i32*
  store i32 %1917, i32* %1919, align 1
  %1920 = extractelement <2 x i32> %1911, i32 1
  %1921 = getelementptr inbounds i8, i8* %1903, i64 12
  %1922 = bitcast i8* %1921 to i32*
  store i32 %1920, i32* %1922, align 1
  store %struct.Memory* %loadMem_445245, %struct.Memory** %MEMORY
  %loadMem_445248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 15
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1930 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1929, i64 0, i64 1
  %XMM1.i214 = bitcast %union.VectorReg* %1930 to %union.vec128_t*
  %1931 = load i64, i64* %RBP.i213
  %1932 = sub i64 %1931, 104
  %1933 = bitcast %union.vec128_t* %XMM1.i214 to i8*
  %1934 = load i64, i64* %PC.i212
  %1935 = add i64 %1934, 5
  store i64 %1935, i64* %PC.i212
  %1936 = bitcast i8* %1933 to double*
  %1937 = load double, double* %1936, align 1
  %1938 = inttoptr i64 %1932 to double*
  store double %1937, double* %1938
  store %struct.Memory* %loadMem_445248, %struct.Memory** %MEMORY
  %loadMem1_44524d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1941 to i64*
  %1942 = load i64, i64* %PC.i211
  %1943 = add i64 %1942, -277853
  %1944 = load i64, i64* %PC.i211
  %1945 = add i64 %1944, 5
  %1946 = load i64, i64* %PC.i211
  %1947 = add i64 %1946, 5
  store i64 %1947, i64* %PC.i211
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1949 = load i64, i64* %1948, align 8
  %1950 = add i64 %1949, -8
  %1951 = inttoptr i64 %1950 to i64*
  store i64 %1945, i64* %1951
  store i64 %1950, i64* %1948, align 8
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1943, i64* %1952, align 8
  store %struct.Memory* %loadMem1_44524d, %struct.Memory** %MEMORY
  %loadMem2_44524d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44524d = load i64, i64* %3
  %1953 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_44524d)
  store %struct.Memory* %1953, %struct.Memory** %MEMORY
  %loadMem_445252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 15
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1960, i64 0, i64 1
  %YMM1.i207 = bitcast %union.VectorReg* %1961 to %"class.std::bitset"*
  %1962 = bitcast %"class.std::bitset"* %YMM1.i207 to i8*
  %1963 = load i64, i64* %RBP.i206
  %1964 = sub i64 %1963, 104
  %1965 = load i64, i64* %PC.i205
  %1966 = add i64 %1965, 5
  store i64 %1966, i64* %PC.i205
  %1967 = inttoptr i64 %1964 to double*
  %1968 = load double, double* %1967
  %1969 = bitcast i8* %1962 to double*
  store double %1968, double* %1969, align 1
  %1970 = getelementptr inbounds i8, i8* %1962, i64 8
  %1971 = bitcast i8* %1970 to double*
  store double 0.000000e+00, double* %1971, align 1
  store %struct.Memory* %loadMem_445252, %struct.Memory** %MEMORY
  %loadMem_445257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1975, i64 0, i64 1
  %YMM1.i203 = bitcast %union.VectorReg* %1976 to %"class.std::bitset"*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1977, i64 0, i64 0
  %XMM0.i204 = bitcast %union.VectorReg* %1978 to %union.vec128_t*
  %1979 = bitcast %"class.std::bitset"* %YMM1.i203 to i8*
  %1980 = bitcast %"class.std::bitset"* %YMM1.i203 to i8*
  %1981 = bitcast %union.vec128_t* %XMM0.i204 to i8*
  %1982 = load i64, i64* %PC.i202
  %1983 = add i64 %1982, 4
  store i64 %1983, i64* %PC.i202
  %1984 = bitcast i8* %1980 to double*
  %1985 = load double, double* %1984, align 1
  %1986 = getelementptr inbounds i8, i8* %1980, i64 8
  %1987 = bitcast i8* %1986 to i64*
  %1988 = load i64, i64* %1987, align 1
  %1989 = bitcast i8* %1981 to double*
  %1990 = load double, double* %1989, align 1
  %1991 = fmul double %1985, %1990
  %1992 = bitcast i8* %1979 to double*
  store double %1991, double* %1992, align 1
  %1993 = getelementptr inbounds i8, i8* %1979, i64 8
  %1994 = bitcast i8* %1993 to i64*
  store i64 %1988, i64* %1994, align 1
  store %struct.Memory* %loadMem_445257, %struct.Memory** %MEMORY
  %loadMem_44525b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 15
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2002 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2001, i64 0, i64 1
  %YMM1.i201 = bitcast %union.VectorReg* %2002 to %"class.std::bitset"*
  %2003 = bitcast %"class.std::bitset"* %YMM1.i201 to i8*
  %2004 = bitcast %"class.std::bitset"* %YMM1.i201 to i8*
  %2005 = load i64, i64* %RBP.i200
  %2006 = sub i64 %2005, 24
  %2007 = load i64, i64* %PC.i199
  %2008 = add i64 %2007, 5
  store i64 %2008, i64* %PC.i199
  %2009 = bitcast i8* %2004 to double*
  %2010 = load double, double* %2009, align 1
  %2011 = getelementptr inbounds i8, i8* %2004, i64 8
  %2012 = bitcast i8* %2011 to i64*
  %2013 = load i64, i64* %2012, align 1
  %2014 = inttoptr i64 %2006 to double*
  %2015 = load double, double* %2014
  %2016 = fsub double %2010, %2015
  %2017 = bitcast i8* %2003 to double*
  store double %2016, double* %2017, align 1
  %2018 = getelementptr inbounds i8, i8* %2003, i64 8
  %2019 = bitcast i8* %2018 to i64*
  store i64 %2013, i64* %2019, align 1
  store %struct.Memory* %loadMem_44525b, %struct.Memory** %MEMORY
  %loadMem_445260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 15
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %2025 to i64*
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2026, i64 0, i64 0
  %YMM0.i198 = bitcast %union.VectorReg* %2027 to %"class.std::bitset"*
  %2028 = bitcast %"class.std::bitset"* %YMM0.i198 to i8*
  %2029 = load i64, i64* %RBP.i197
  %2030 = sub i64 %2029, 16
  %2031 = load i64, i64* %PC.i196
  %2032 = add i64 %2031, 5
  store i64 %2032, i64* %PC.i196
  %2033 = inttoptr i64 %2030 to double*
  %2034 = load double, double* %2033
  %2035 = bitcast i8* %2028 to double*
  store double %2034, double* %2035, align 1
  %2036 = getelementptr inbounds i8, i8* %2028, i64 8
  %2037 = bitcast i8* %2036 to double*
  store double 0.000000e+00, double* %2037, align 1
  store %struct.Memory* %loadMem_445260, %struct.Memory** %MEMORY
  %loadMem_445265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 15
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2045 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2044, i64 0, i64 1
  %XMM1.i195 = bitcast %union.VectorReg* %2045 to %union.vec128_t*
  %2046 = load i64, i64* %RBP.i194
  %2047 = sub i64 %2046, 112
  %2048 = bitcast %union.vec128_t* %XMM1.i195 to i8*
  %2049 = load i64, i64* %PC.i193
  %2050 = add i64 %2049, 5
  store i64 %2050, i64* %PC.i193
  %2051 = bitcast i8* %2048 to double*
  %2052 = load double, double* %2051, align 1
  %2053 = inttoptr i64 %2047 to double*
  store double %2052, double* %2053
  store %struct.Memory* %loadMem_445265, %struct.Memory** %MEMORY
  %loadMem1_44526a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2056 to i64*
  %2057 = load i64, i64* %PC.i192
  %2058 = add i64 %2057, -1482
  %2059 = load i64, i64* %PC.i192
  %2060 = add i64 %2059, 5
  %2061 = load i64, i64* %PC.i192
  %2062 = add i64 %2061, 5
  store i64 %2062, i64* %PC.i192
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2064 = load i64, i64* %2063, align 8
  %2065 = add i64 %2064, -8
  %2066 = inttoptr i64 %2065 to i64*
  store i64 %2060, i64* %2066
  store i64 %2065, i64* %2063, align 8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2058, i64* %2067, align 8
  store %struct.Memory* %loadMem1_44526a, %struct.Memory** %MEMORY
  %loadMem2_44526a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44526a = load i64, i64* %3
  %call2_44526a = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_44526a, %struct.Memory* %loadMem2_44526a)
  store %struct.Memory* %call2_44526a, %struct.Memory** %MEMORY
  %loadMem_44526f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 15
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2075 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2074, i64 0, i64 1
  %YMM1.i191 = bitcast %union.VectorReg* %2075 to %"class.std::bitset"*
  %2076 = bitcast %"class.std::bitset"* %YMM1.i191 to i8*
  %2077 = load i64, i64* %RBP.i190
  %2078 = sub i64 %2077, 112
  %2079 = load i64, i64* %PC.i189
  %2080 = add i64 %2079, 5
  store i64 %2080, i64* %PC.i189
  %2081 = inttoptr i64 %2078 to double*
  %2082 = load double, double* %2081
  %2083 = bitcast i8* %2076 to double*
  store double %2082, double* %2083, align 1
  %2084 = getelementptr inbounds i8, i8* %2076, i64 8
  %2085 = bitcast i8* %2084 to double*
  store double 0.000000e+00, double* %2085, align 1
  store %struct.Memory* %loadMem_44526f, %struct.Memory** %MEMORY
  %loadMem_445274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2089, i64 0, i64 1
  %YMM1.i187 = bitcast %union.VectorReg* %2090 to %"class.std::bitset"*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2092 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2091, i64 0, i64 0
  %XMM0.i188 = bitcast %union.VectorReg* %2092 to %union.vec128_t*
  %2093 = bitcast %"class.std::bitset"* %YMM1.i187 to i8*
  %2094 = bitcast %"class.std::bitset"* %YMM1.i187 to i8*
  %2095 = bitcast %union.vec128_t* %XMM0.i188 to i8*
  %2096 = load i64, i64* %PC.i186
  %2097 = add i64 %2096, 4
  store i64 %2097, i64* %PC.i186
  %2098 = bitcast i8* %2094 to double*
  %2099 = load double, double* %2098, align 1
  %2100 = getelementptr inbounds i8, i8* %2094, i64 8
  %2101 = bitcast i8* %2100 to i64*
  %2102 = load i64, i64* %2101, align 1
  %2103 = bitcast i8* %2095 to double*
  %2104 = load double, double* %2103, align 1
  %2105 = fsub double %2099, %2104
  %2106 = bitcast i8* %2093 to double*
  store double %2105, double* %2106, align 1
  %2107 = getelementptr inbounds i8, i8* %2093, i64 8
  %2108 = bitcast i8* %2107 to i64*
  store i64 %2102, i64* %2108, align 1
  store %struct.Memory* %loadMem_445274, %struct.Memory** %MEMORY
  %loadMem_445278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2112, i64 0, i64 0
  %YMM0.i184 = bitcast %union.VectorReg* %2113 to %"class.std::bitset"*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2114, i64 0, i64 1
  %XMM1.i185 = bitcast %union.VectorReg* %2115 to %union.vec128_t*
  %2116 = bitcast %"class.std::bitset"* %YMM0.i184 to i8*
  %2117 = bitcast %union.vec128_t* %XMM1.i185 to i8*
  %2118 = load i64, i64* %PC.i183
  %2119 = add i64 %2118, 3
  store i64 %2119, i64* %PC.i183
  %2120 = bitcast i8* %2117 to <2 x i32>*
  %2121 = load <2 x i32>, <2 x i32>* %2120, align 1
  %2122 = getelementptr inbounds i8, i8* %2117, i64 8
  %2123 = bitcast i8* %2122 to <2 x i32>*
  %2124 = load <2 x i32>, <2 x i32>* %2123, align 1
  %2125 = extractelement <2 x i32> %2121, i32 0
  %2126 = bitcast i8* %2116 to i32*
  store i32 %2125, i32* %2126, align 1
  %2127 = extractelement <2 x i32> %2121, i32 1
  %2128 = getelementptr inbounds i8, i8* %2116, i64 4
  %2129 = bitcast i8* %2128 to i32*
  store i32 %2127, i32* %2129, align 1
  %2130 = extractelement <2 x i32> %2124, i32 0
  %2131 = getelementptr inbounds i8, i8* %2116, i64 8
  %2132 = bitcast i8* %2131 to i32*
  store i32 %2130, i32* %2132, align 1
  %2133 = extractelement <2 x i32> %2124, i32 1
  %2134 = getelementptr inbounds i8, i8* %2116, i64 12
  %2135 = bitcast i8* %2134 to i32*
  store i32 %2133, i32* %2135, align 1
  store %struct.Memory* %loadMem_445278, %struct.Memory** %MEMORY
  %loadMem1_44527b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %PC.i182
  %2140 = add i64 %2139, -278107
  %2141 = load i64, i64* %PC.i182
  %2142 = add i64 %2141, 5
  %2143 = load i64, i64* %PC.i182
  %2144 = add i64 %2143, 5
  store i64 %2144, i64* %PC.i182
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2146 = load i64, i64* %2145, align 8
  %2147 = add i64 %2146, -8
  %2148 = inttoptr i64 %2147 to i64*
  store i64 %2142, i64* %2148
  store i64 %2147, i64* %2145, align 8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2140, i64* %2149, align 8
  store %struct.Memory* %loadMem1_44527b, %struct.Memory** %MEMORY
  %loadMem2_44527b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44527b = load i64, i64* %3
  %2150 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_44527b)
  store %struct.Memory* %2150, %struct.Memory** %MEMORY
  %loadMem_445280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 15
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2157, i64 0, i64 1
  %YMM1.i178 = bitcast %union.VectorReg* %2158 to %"class.std::bitset"*
  %2159 = bitcast %"class.std::bitset"* %YMM1.i178 to i8*
  %2160 = load i64, i64* %RBP.i177
  %2161 = sub i64 %2160, 96
  %2162 = load i64, i64* %PC.i176
  %2163 = add i64 %2162, 5
  store i64 %2163, i64* %PC.i176
  %2164 = inttoptr i64 %2161 to double*
  %2165 = load double, double* %2164
  %2166 = bitcast i8* %2159 to double*
  store double %2165, double* %2166, align 1
  %2167 = getelementptr inbounds i8, i8* %2159, i64 8
  %2168 = bitcast i8* %2167 to double*
  store double 0.000000e+00, double* %2168, align 1
  store %struct.Memory* %loadMem_445280, %struct.Memory** %MEMORY
  %loadMem_445285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2173 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2172, i64 0, i64 1
  %YMM1.i174 = bitcast %union.VectorReg* %2173 to %"class.std::bitset"*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2175 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2174, i64 0, i64 0
  %XMM0.i175 = bitcast %union.VectorReg* %2175 to %union.vec128_t*
  %2176 = bitcast %"class.std::bitset"* %YMM1.i174 to i8*
  %2177 = bitcast %"class.std::bitset"* %YMM1.i174 to i8*
  %2178 = bitcast %union.vec128_t* %XMM0.i175 to i8*
  %2179 = load i64, i64* %PC.i173
  %2180 = add i64 %2179, 4
  store i64 %2180, i64* %PC.i173
  %2181 = bitcast i8* %2177 to double*
  %2182 = load double, double* %2181, align 1
  %2183 = getelementptr inbounds i8, i8* %2177, i64 8
  %2184 = bitcast i8* %2183 to i64*
  %2185 = load i64, i64* %2184, align 1
  %2186 = bitcast i8* %2178 to double*
  %2187 = load double, double* %2186, align 1
  %2188 = fmul double %2182, %2187
  %2189 = bitcast i8* %2176 to double*
  store double %2188, double* %2189, align 1
  %2190 = getelementptr inbounds i8, i8* %2176, i64 8
  %2191 = bitcast i8* %2190 to i64*
  store i64 %2185, i64* %2191, align 1
  store %struct.Memory* %loadMem_445285, %struct.Memory** %MEMORY
  %loadMem_445289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 33
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 15
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2198, i64 0, i64 1
  %XMM1.i172 = bitcast %union.VectorReg* %2199 to %union.vec128_t*
  %2200 = load i64, i64* %RBP.i171
  %2201 = sub i64 %2200, 8
  %2202 = bitcast %union.vec128_t* %XMM1.i172 to i8*
  %2203 = load i64, i64* %PC.i170
  %2204 = add i64 %2203, 5
  store i64 %2204, i64* %PC.i170
  %2205 = bitcast i8* %2202 to double*
  %2206 = load double, double* %2205, align 1
  %2207 = inttoptr i64 %2201 to double*
  store double %2206, double* %2207
  store %struct.Memory* %loadMem_445289, %struct.Memory** %MEMORY
  %loadMem_44528e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 33
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2210 to i64*
  %2211 = load i64, i64* %PC.i169
  %2212 = add i64 %2211, 341
  %2213 = load i64, i64* %PC.i169
  %2214 = add i64 %2213, 5
  store i64 %2214, i64* %PC.i169
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2212, i64* %2215, align 8
  store %struct.Memory* %loadMem_44528e, %struct.Memory** %MEMORY
  br label %block_.L_4453e3

block_.L_445293:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit234
  %loadMem_445293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 33
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 15
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2222, i64 0, i64 0
  %YMM0.i168 = bitcast %union.VectorReg* %2223 to %"class.std::bitset"*
  %2224 = bitcast %"class.std::bitset"* %YMM0.i168 to i8*
  %2225 = load i64, i64* %RBP.i167
  %2226 = sub i64 %2225, 56
  %2227 = load i64, i64* %PC.i166
  %2228 = add i64 %2227, 5
  store i64 %2228, i64* %PC.i166
  %2229 = inttoptr i64 %2226 to double*
  %2230 = load double, double* %2229
  %2231 = bitcast i8* %2224 to double*
  store double %2230, double* %2231, align 1
  %2232 = getelementptr inbounds i8, i8* %2224, i64 8
  %2233 = bitcast i8* %2232 to double*
  store double 0.000000e+00, double* %2233, align 1
  store %struct.Memory* %loadMem_445293, %struct.Memory** %MEMORY
  %loadMem_445298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 15
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2240, i64 0, i64 0
  %XMM0.i165 = bitcast %union.VectorReg* %2241 to %union.vec128_t*
  %2242 = load i64, i64* %RBP.i164
  %2243 = sub i64 %2242, 40
  %2244 = bitcast %union.vec128_t* %XMM0.i165 to i8*
  %2245 = load i64, i64* %PC.i163
  %2246 = add i64 %2245, 5
  store i64 %2246, i64* %PC.i163
  %2247 = bitcast i8* %2244 to double*
  %2248 = load double, double* %2247, align 1
  %2249 = inttoptr i64 %2243 to double*
  store double %2248, double* %2249
  store %struct.Memory* %loadMem_445298, %struct.Memory** %MEMORY
  %loadMem_44529d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 1
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 15
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %RBP.i162
  %2260 = sub i64 %2259, 28
  %2261 = load i64, i64* %PC.i160
  %2262 = add i64 %2261, 3
  store i64 %2262, i64* %PC.i160
  %2263 = inttoptr i64 %2260 to i32*
  %2264 = load i32, i32* %2263
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_44529d, %struct.Memory** %MEMORY
  %loadMem_4452a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 33
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2268 to i64*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 1
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RAX.i159
  %2273 = load i64, i64* %PC.i158
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC.i158
  %2275 = trunc i64 %2272 to i32
  %2276 = add i32 1, %2275
  %2277 = zext i32 %2276 to i64
  store i64 %2277, i64* %RAX.i159, align 8
  %2278 = icmp ult i32 %2276, %2275
  %2279 = icmp ult i32 %2276, 1
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2281, i8* %2282, align 1
  %2283 = and i32 %2276, 255
  %2284 = call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2287, i8* %2288, align 1
  %2289 = xor i64 1, %2272
  %2290 = trunc i64 %2289 to i32
  %2291 = xor i32 %2290, %2276
  %2292 = lshr i32 %2291, 4
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2294, i8* %2295, align 1
  %2296 = icmp eq i32 %2276, 0
  %2297 = zext i1 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2297, i8* %2298, align 1
  %2299 = lshr i32 %2276, 31
  %2300 = trunc i32 %2299 to i8
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2300, i8* %2301, align 1
  %2302 = lshr i32 %2275, 31
  %2303 = xor i32 %2299, %2302
  %2304 = add i32 %2303, %2299
  %2305 = icmp eq i32 %2304, 2
  %2306 = zext i1 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2306, i8* %2307, align 1
  store %struct.Memory* %loadMem_4452a0, %struct.Memory** %MEMORY
  %loadMem_4452a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 1
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %EAX.i156 = bitcast %union.anon* %2313 to i32*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 15
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %RBP.i157
  %2318 = sub i64 %2317, 28
  %2319 = load i32, i32* %EAX.i156
  %2320 = zext i32 %2319 to i64
  %2321 = load i64, i64* %PC.i155
  %2322 = add i64 %2321, 3
  store i64 %2322, i64* %PC.i155
  %2323 = inttoptr i64 %2318 to i32*
  store i32 %2319, i32* %2323
  store %struct.Memory* %loadMem_4452a3, %struct.Memory** %MEMORY
  %loadMem_4452a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %PC.i154
  %2328 = add i64 %2327, -386
  %2329 = load i64, i64* %PC.i154
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %PC.i154
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2328, i64* %2331, align 8
  store %struct.Memory* %loadMem_4452a6, %struct.Memory** %MEMORY
  br label %block_.L_445124

block_.L_4452ab:                                  ; preds = %block_.L_445124
  %loadMem_4452ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 11
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RDI.i153 = bitcast %union.anon* %2337 to i64*
  %2338 = load i64, i64* %PC.i152
  %2339 = add i64 %2338, 10
  store i64 %2339, i64* %PC.i152
  store i64 ptrtoint (%G__0x45a772_type* @G__0x45a772 to i64), i64* %RDI.i153, align 8
  store %struct.Memory* %loadMem_4452ab, %struct.Memory** %MEMORY
  %loadMem_4452b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %2346 = bitcast %union.anon* %2345 to %struct.anon.2*
  %AL.i151 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2346, i32 0, i32 0
  %2347 = load i64, i64* %PC.i150
  %2348 = add i64 %2347, 2
  store i64 %2348, i64* %PC.i150
  store i8 0, i8* %AL.i151, align 1
  store %struct.Memory* %loadMem_4452b5, %struct.Memory** %MEMORY
  %loadMem1_4452b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2351 to i64*
  %2352 = load i64, i64* %PC.i149
  %2353 = add i64 %2352, -26791
  %2354 = load i64, i64* %PC.i149
  %2355 = add i64 %2354, 5
  %2356 = load i64, i64* %PC.i149
  %2357 = add i64 %2356, 5
  store i64 %2357, i64* %PC.i149
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2359 = load i64, i64* %2358, align 8
  %2360 = add i64 %2359, -8
  %2361 = inttoptr i64 %2360 to i64*
  store i64 %2355, i64* %2361
  store i64 %2360, i64* %2358, align 8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2353, i64* %2362, align 8
  store %struct.Memory* %loadMem1_4452b7, %struct.Memory** %MEMORY
  %loadMem2_4452b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4452b7 = load i64, i64* %3
  %call2_4452b7 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_4452b7, %struct.Memory* %loadMem2_4452b7)
  store %struct.Memory* %call2_4452b7, %struct.Memory** %MEMORY
  %loadMem_4452bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %PC.i148
  %2367 = add i64 %2366, 287
  %2368 = load i64, i64* %PC.i148
  %2369 = add i64 %2368, 5
  store i64 %2369, i64* %PC.i148
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2367, i64* %2370, align 8
  store %struct.Memory* %loadMem_4452bc, %struct.Memory** %MEMORY
  br label %block_.L_4453db

block_.L_4452c1:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit417
  %loadMem_4452c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2375 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2374, i64 0, i64 0
  %YMM0.i147 = bitcast %union.VectorReg* %2375 to %"class.std::bitset"*
  %2376 = bitcast %"class.std::bitset"* %YMM0.i147 to i8*
  %2377 = load i64, i64* %PC.i146
  %2378 = add i64 %2377, ptrtoint (%G_0xf517__rip__type* @G_0xf517__rip_ to i64)
  %2379 = load i64, i64* %PC.i146
  %2380 = add i64 %2379, 8
  store i64 %2380, i64* %PC.i146
  %2381 = inttoptr i64 %2378 to double*
  %2382 = load double, double* %2381
  %2383 = bitcast i8* %2376 to double*
  store double %2382, double* %2383, align 1
  %2384 = getelementptr inbounds i8, i8* %2376, i64 8
  %2385 = bitcast i8* %2384 to double*
  store double 0.000000e+00, double* %2385, align 1
  store %struct.Memory* %loadMem_4452c1, %struct.Memory** %MEMORY
  %loadMem_4452c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 15
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2392, i64 0, i64 0
  %YMM0.i145 = bitcast %union.VectorReg* %2393 to %"class.std::bitset"*
  %2394 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %2395 = bitcast %"class.std::bitset"* %YMM0.i145 to i8*
  %2396 = load i64, i64* %RBP.i144
  %2397 = sub i64 %2396, 16
  %2398 = load i64, i64* %PC.i143
  %2399 = add i64 %2398, 5
  store i64 %2399, i64* %PC.i143
  %2400 = bitcast i8* %2395 to double*
  %2401 = load double, double* %2400, align 1
  %2402 = getelementptr inbounds i8, i8* %2395, i64 8
  %2403 = bitcast i8* %2402 to i64*
  %2404 = load i64, i64* %2403, align 1
  %2405 = inttoptr i64 %2397 to double*
  %2406 = load double, double* %2405
  %2407 = fdiv double %2401, %2406
  %2408 = bitcast i8* %2394 to double*
  store double %2407, double* %2408, align 1
  %2409 = getelementptr inbounds i8, i8* %2394, i64 8
  %2410 = bitcast i8* %2409 to i64*
  store i64 %2404, i64* %2410, align 1
  store %struct.Memory* %loadMem_4452c9, %struct.Memory** %MEMORY
  %loadMem_4452ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 15
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2416 to i64*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2417, i64 0, i64 0
  %XMM0.i142 = bitcast %union.VectorReg* %2418 to %union.vec128_t*
  %2419 = load i64, i64* %RBP.i141
  %2420 = sub i64 %2419, 88
  %2421 = bitcast %union.vec128_t* %XMM0.i142 to i8*
  %2422 = load i64, i64* %PC.i140
  %2423 = add i64 %2422, 5
  store i64 %2423, i64* %PC.i140
  %2424 = bitcast i8* %2421 to double*
  %2425 = load double, double* %2424, align 1
  %2426 = inttoptr i64 %2420 to double*
  store double %2425, double* %2426
  store %struct.Memory* %loadMem_4452ce, %struct.Memory** %MEMORY
  %loadMem_4452d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %2432 to i64*
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2434 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2433, i64 0, i64 0
  %XMM0.i139 = bitcast %union.VectorReg* %2434 to %union.vec128_t*
  %2435 = load i64, i64* %RBP.i138
  %2436 = sub i64 %2435, 80
  %2437 = bitcast %union.vec128_t* %XMM0.i139 to i8*
  %2438 = load i64, i64* %PC.i137
  %2439 = add i64 %2438, 5
  store i64 %2439, i64* %PC.i137
  %2440 = bitcast i8* %2437 to double*
  %2441 = load double, double* %2440, align 1
  %2442 = inttoptr i64 %2436 to double*
  store double %2441, double* %2442
  store %struct.Memory* %loadMem_4452d3, %struct.Memory** %MEMORY
  %loadMem_4452d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 33
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 15
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %2448 to i64*
  %2449 = load i64, i64* %RBP.i136
  %2450 = sub i64 %2449, 28
  %2451 = load i64, i64* %PC.i135
  %2452 = add i64 %2451, 7
  store i64 %2452, i64* %PC.i135
  %2453 = inttoptr i64 %2450 to i32*
  store i32 1, i32* %2453
  store %struct.Memory* %loadMem_4452d8, %struct.Memory** %MEMORY
  br label %block_.L_4452df

block_.L_4452df:                                  ; preds = %block_.L_4453bc, %block_.L_4452c1
  %loadMem_4452df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 15
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RBP.i134
  %2461 = sub i64 %2460, 28
  %2462 = load i64, i64* %PC.i133
  %2463 = add i64 %2462, 7
  store i64 %2463, i64* %PC.i133
  %2464 = inttoptr i64 %2461 to i32*
  %2465 = load i32, i32* %2464
  %2466 = sub i32 %2465, 10000
  %2467 = icmp ult i32 %2465, 10000
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2468, i8* %2469, align 1
  %2470 = and i32 %2466, 255
  %2471 = call i32 @llvm.ctpop.i32(i32 %2470)
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2474, i8* %2475, align 1
  %2476 = xor i32 %2465, 10000
  %2477 = xor i32 %2476, %2466
  %2478 = lshr i32 %2477, 4
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2480, i8* %2481, align 1
  %2482 = icmp eq i32 %2466, 0
  %2483 = zext i1 %2482 to i8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2483, i8* %2484, align 1
  %2485 = lshr i32 %2466, 31
  %2486 = trunc i32 %2485 to i8
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2486, i8* %2487, align 1
  %2488 = lshr i32 %2465, 31
  %2489 = xor i32 %2485, %2488
  %2490 = add i32 %2489, %2488
  %2491 = icmp eq i32 %2490, 2
  %2492 = zext i1 %2491 to i8
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2492, i8* %2493, align 1
  store %struct.Memory* %loadMem_4452df, %struct.Memory** %MEMORY
  %loadMem_4452e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 33
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2496 to i64*
  %2497 = load i64, i64* %PC.i132
  %2498 = add i64 %2497, 228
  %2499 = load i64, i64* %PC.i132
  %2500 = add i64 %2499, 6
  %2501 = load i64, i64* %PC.i132
  %2502 = add i64 %2501, 6
  store i64 %2502, i64* %PC.i132
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2504 = load i8, i8* %2503, align 1
  %2505 = icmp ne i8 %2504, 0
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2507 = load i8, i8* %2506, align 1
  %2508 = icmp ne i8 %2507, 0
  %2509 = xor i1 %2505, %2508
  %2510 = xor i1 %2509, true
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %BRANCH_TAKEN, align 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2513 = select i1 %2509, i64 %2500, i64 %2498
  store i64 %2513, i64* %2512, align 8
  store %struct.Memory* %loadMem_4452e6, %struct.Memory** %MEMORY
  %loadBr_4452e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4452e6 = icmp eq i8 %loadBr_4452e6, 1
  br i1 %cmpBr_4452e6, label %block_.L_4453ca, label %block_4452ec

block_4452ec:                                     ; preds = %block_.L_4452df
  %loadMem_4452ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2517, i64 0, i64 0
  %YMM0.i131 = bitcast %union.VectorReg* %2518 to %"class.std::bitset"*
  %2519 = bitcast %"class.std::bitset"* %YMM0.i131 to i8*
  %2520 = load i64, i64* %PC.i130
  %2521 = add i64 %2520, ptrtoint (%G_0xf564__rip__type* @G_0xf564__rip_ to i64)
  %2522 = load i64, i64* %PC.i130
  %2523 = add i64 %2522, 8
  store i64 %2523, i64* %PC.i130
  %2524 = inttoptr i64 %2521 to double*
  %2525 = load double, double* %2524
  %2526 = bitcast i8* %2519 to double*
  store double %2525, double* %2526, align 1
  %2527 = getelementptr inbounds i8, i8* %2519, i64 8
  %2528 = bitcast i8* %2527 to double*
  store double 0.000000e+00, double* %2528, align 1
  store %struct.Memory* %loadMem_4452ec, %struct.Memory** %MEMORY
  %loadMem_4452f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2535, i64 0, i64 1
  %YMM1.i129 = bitcast %union.VectorReg* %2536 to %"class.std::bitset"*
  %2537 = bitcast %"class.std::bitset"* %YMM1.i129 to i8*
  %2538 = load i64, i64* %RBP.i128
  %2539 = sub i64 %2538, 24
  %2540 = load i64, i64* %PC.i127
  %2541 = add i64 %2540, 5
  store i64 %2541, i64* %PC.i127
  %2542 = inttoptr i64 %2539 to double*
  %2543 = load double, double* %2542
  %2544 = bitcast i8* %2537 to double*
  store double %2543, double* %2544, align 1
  %2545 = getelementptr inbounds i8, i8* %2537, i64 8
  %2546 = bitcast i8* %2545 to double*
  store double 0.000000e+00, double* %2546, align 1
  store %struct.Memory* %loadMem_4452f4, %struct.Memory** %MEMORY
  %loadMem_4452f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 33
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 15
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2553, i64 0, i64 2
  %YMM2.i126 = bitcast %union.VectorReg* %2554 to %"class.std::bitset"*
  %2555 = bitcast %"class.std::bitset"* %YMM2.i126 to i8*
  %2556 = load i64, i64* %RBP.i125
  %2557 = sub i64 %2556, 16
  %2558 = load i64, i64* %PC.i124
  %2559 = add i64 %2558, 5
  store i64 %2559, i64* %PC.i124
  %2560 = inttoptr i64 %2557 to double*
  %2561 = load double, double* %2560
  %2562 = bitcast i8* %2555 to double*
  store double %2561, double* %2562, align 1
  %2563 = getelementptr inbounds i8, i8* %2555, i64 8
  %2564 = bitcast i8* %2563 to double*
  store double 0.000000e+00, double* %2564, align 1
  store %struct.Memory* %loadMem_4452f9, %struct.Memory** %MEMORY
  %loadMem_4452fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 15
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2571, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2572 to %"class.std::bitset"*
  %2573 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2574 = load i64, i64* %RBP.i123
  %2575 = sub i64 %2574, 28
  %2576 = load i64, i64* %PC.i122
  %2577 = add i64 %2576, 5
  store i64 %2577, i64* %PC.i122
  %2578 = inttoptr i64 %2575 to i32*
  %2579 = load i32, i32* %2578
  %2580 = sitofp i32 %2579 to double
  %2581 = bitcast i8* %2573 to double*
  store double %2580, double* %2581, align 1
  store %struct.Memory* %loadMem_4452fe, %struct.Memory** %MEMORY
  %loadMem_445303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2586 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2585, i64 0, i64 2
  %YMM2.i121 = bitcast %union.VectorReg* %2586 to %"class.std::bitset"*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2588 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2587, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2588 to %union.vec128_t*
  %2589 = bitcast %"class.std::bitset"* %YMM2.i121 to i8*
  %2590 = bitcast %"class.std::bitset"* %YMM2.i121 to i8*
  %2591 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2592 = load i64, i64* %PC.i120
  %2593 = add i64 %2592, 4
  store i64 %2593, i64* %PC.i120
  %2594 = bitcast i8* %2590 to double*
  %2595 = load double, double* %2594, align 1
  %2596 = getelementptr inbounds i8, i8* %2590, i64 8
  %2597 = bitcast i8* %2596 to i64*
  %2598 = load i64, i64* %2597, align 1
  %2599 = bitcast i8* %2591 to double*
  %2600 = load double, double* %2599, align 1
  %2601 = fadd double %2595, %2600
  %2602 = bitcast i8* %2589 to double*
  store double %2601, double* %2602, align 1
  %2603 = getelementptr inbounds i8, i8* %2589, i64 8
  %2604 = bitcast i8* %2603 to i64*
  store i64 %2598, i64* %2604, align 1
  store %struct.Memory* %loadMem_445303, %struct.Memory** %MEMORY
  %loadMem_445307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2608, i64 0, i64 1
  %YMM1.i118 = bitcast %union.VectorReg* %2609 to %"class.std::bitset"*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2611 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2610, i64 0, i64 2
  %XMM2.i119 = bitcast %union.VectorReg* %2611 to %union.vec128_t*
  %2612 = bitcast %"class.std::bitset"* %YMM1.i118 to i8*
  %2613 = bitcast %"class.std::bitset"* %YMM1.i118 to i8*
  %2614 = bitcast %union.vec128_t* %XMM2.i119 to i8*
  %2615 = load i64, i64* %PC.i117
  %2616 = add i64 %2615, 4
  store i64 %2616, i64* %PC.i117
  %2617 = bitcast i8* %2613 to double*
  %2618 = load double, double* %2617, align 1
  %2619 = getelementptr inbounds i8, i8* %2613, i64 8
  %2620 = bitcast i8* %2619 to i64*
  %2621 = load i64, i64* %2620, align 1
  %2622 = bitcast i8* %2614 to double*
  %2623 = load double, double* %2622, align 1
  %2624 = fdiv double %2618, %2623
  %2625 = bitcast i8* %2612 to double*
  store double %2624, double* %2625, align 1
  %2626 = getelementptr inbounds i8, i8* %2612, i64 8
  %2627 = bitcast i8* %2626 to i64*
  store i64 %2621, i64* %2627, align 1
  store %struct.Memory* %loadMem_445307, %struct.Memory** %MEMORY
  %loadMem_44530b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 15
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2634, i64 0, i64 1
  %YMM1.i116 = bitcast %union.VectorReg* %2635 to %"class.std::bitset"*
  %2636 = bitcast %"class.std::bitset"* %YMM1.i116 to i8*
  %2637 = bitcast %"class.std::bitset"* %YMM1.i116 to i8*
  %2638 = load i64, i64* %RBP.i115
  %2639 = sub i64 %2638, 88
  %2640 = load i64, i64* %PC.i114
  %2641 = add i64 %2640, 5
  store i64 %2641, i64* %PC.i114
  %2642 = bitcast i8* %2637 to double*
  %2643 = load double, double* %2642, align 1
  %2644 = getelementptr inbounds i8, i8* %2637, i64 8
  %2645 = bitcast i8* %2644 to i64*
  %2646 = load i64, i64* %2645, align 1
  %2647 = inttoptr i64 %2639 to double*
  %2648 = load double, double* %2647
  %2649 = fmul double %2643, %2648
  %2650 = bitcast i8* %2636 to double*
  store double %2649, double* %2650, align 1
  %2651 = getelementptr inbounds i8, i8* %2636, i64 8
  %2652 = bitcast i8* %2651 to i64*
  store i64 %2646, i64* %2652, align 1
  store %struct.Memory* %loadMem_44530b, %struct.Memory** %MEMORY
  %loadMem_445310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 15
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2659, i64 0, i64 1
  %XMM1.i113 = bitcast %union.VectorReg* %2660 to %union.vec128_t*
  %2661 = load i64, i64* %RBP.i112
  %2662 = sub i64 %2661, 88
  %2663 = bitcast %union.vec128_t* %XMM1.i113 to i8*
  %2664 = load i64, i64* %PC.i111
  %2665 = add i64 %2664, 5
  store i64 %2665, i64* %PC.i111
  %2666 = bitcast i8* %2663 to double*
  %2667 = load double, double* %2666, align 1
  %2668 = inttoptr i64 %2662 to double*
  store double %2667, double* %2668
  store %struct.Memory* %loadMem_445310, %struct.Memory** %MEMORY
  %loadMem_445315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 33
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 15
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2675, i64 0, i64 1
  %YMM1.i110 = bitcast %union.VectorReg* %2676 to %"class.std::bitset"*
  %2677 = bitcast %"class.std::bitset"* %YMM1.i110 to i8*
  %2678 = load i64, i64* %RBP.i109
  %2679 = sub i64 %2678, 88
  %2680 = load i64, i64* %PC.i108
  %2681 = add i64 %2680, 5
  store i64 %2681, i64* %PC.i108
  %2682 = inttoptr i64 %2679 to double*
  %2683 = load double, double* %2682
  %2684 = bitcast i8* %2677 to double*
  store double %2683, double* %2684, align 1
  %2685 = getelementptr inbounds i8, i8* %2677, i64 8
  %2686 = bitcast i8* %2685 to double*
  store double 0.000000e+00, double* %2686, align 1
  store %struct.Memory* %loadMem_445315, %struct.Memory** %MEMORY
  %loadMem_44531a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 33
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2689 to i64*
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 15
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2694 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2693, i64 0, i64 1
  %YMM1.i107 = bitcast %union.VectorReg* %2694 to %"class.std::bitset"*
  %2695 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %2696 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %2697 = load i64, i64* %RBP.i106
  %2698 = sub i64 %2697, 80
  %2699 = load i64, i64* %PC.i105
  %2700 = add i64 %2699, 5
  store i64 %2700, i64* %PC.i105
  %2701 = bitcast i8* %2696 to double*
  %2702 = load double, double* %2701, align 1
  %2703 = getelementptr inbounds i8, i8* %2696, i64 8
  %2704 = bitcast i8* %2703 to i64*
  %2705 = load i64, i64* %2704, align 1
  %2706 = inttoptr i64 %2698 to double*
  %2707 = load double, double* %2706
  %2708 = fadd double %2702, %2707
  %2709 = bitcast i8* %2695 to double*
  store double %2708, double* %2709, align 1
  %2710 = getelementptr inbounds i8, i8* %2695, i64 8
  %2711 = bitcast i8* %2710 to i64*
  store i64 %2705, i64* %2711, align 1
  store %struct.Memory* %loadMem_44531a, %struct.Memory** %MEMORY
  %loadMem_44531f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 15
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2718, i64 0, i64 1
  %XMM1.i104 = bitcast %union.VectorReg* %2719 to %union.vec128_t*
  %2720 = load i64, i64* %RBP.i103
  %2721 = sub i64 %2720, 80
  %2722 = bitcast %union.vec128_t* %XMM1.i104 to i8*
  %2723 = load i64, i64* %PC.i102
  %2724 = add i64 %2723, 5
  store i64 %2724, i64* %PC.i102
  %2725 = bitcast i8* %2722 to double*
  %2726 = load double, double* %2725, align 1
  %2727 = inttoptr i64 %2721 to double*
  store double %2726, double* %2727
  store %struct.Memory* %loadMem_44531f, %struct.Memory** %MEMORY
  %loadMem_445324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 15
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2735 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2734, i64 0, i64 1
  %YMM1.i101 = bitcast %union.VectorReg* %2735 to %"class.std::bitset"*
  %2736 = bitcast %"class.std::bitset"* %YMM1.i101 to i8*
  %2737 = load i64, i64* %RBP.i100
  %2738 = sub i64 %2737, 88
  %2739 = load i64, i64* %PC.i99
  %2740 = add i64 %2739, 5
  store i64 %2740, i64* %PC.i99
  %2741 = inttoptr i64 %2738 to double*
  %2742 = load double, double* %2741
  %2743 = bitcast i8* %2736 to double*
  store double %2742, double* %2743, align 1
  %2744 = getelementptr inbounds i8, i8* %2736, i64 8
  %2745 = bitcast i8* %2744 to double*
  store double 0.000000e+00, double* %2745, align 1
  store %struct.Memory* %loadMem_445324, %struct.Memory** %MEMORY
  %loadMem_445329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 15
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2752, i64 0, i64 1
  %YMM1.i98 = bitcast %union.VectorReg* %2753 to %"class.std::bitset"*
  %2754 = bitcast %"class.std::bitset"* %YMM1.i98 to i8*
  %2755 = bitcast %"class.std::bitset"* %YMM1.i98 to i8*
  %2756 = load i64, i64* %RBP.i97
  %2757 = sub i64 %2756, 80
  %2758 = load i64, i64* %PC.i96
  %2759 = add i64 %2758, 5
  store i64 %2759, i64* %PC.i96
  %2760 = bitcast i8* %2755 to double*
  %2761 = load double, double* %2760, align 1
  %2762 = getelementptr inbounds i8, i8* %2755, i64 8
  %2763 = bitcast i8* %2762 to i64*
  %2764 = load i64, i64* %2763, align 1
  %2765 = inttoptr i64 %2757 to double*
  %2766 = load double, double* %2765
  %2767 = fdiv double %2761, %2766
  %2768 = bitcast i8* %2754 to double*
  store double %2767, double* %2768, align 1
  %2769 = getelementptr inbounds i8, i8* %2754, i64 8
  %2770 = bitcast i8* %2769 to i64*
  store i64 %2764, i64* %2770, align 1
  store %struct.Memory* %loadMem_445329, %struct.Memory** %MEMORY
  %loadMem_44532e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2775 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2774, i64 0, i64 2
  %YMM2.i95 = bitcast %union.VectorReg* %2775 to %"class.std::bitset"*
  %2776 = bitcast %"class.std::bitset"* %YMM2.i95 to i8*
  %2777 = load i64, i64* %PC.i94
  %2778 = add i64 %2777, ptrtoint (%G_0x105db__rip__type* @G_0x105db__rip_ to i64)
  %2779 = load i64, i64* %PC.i94
  %2780 = add i64 %2779, 7
  store i64 %2780, i64* %PC.i94
  %2781 = inttoptr i64 %2778 to float*
  %2782 = load float, float* %2781
  %2783 = add i64 %2778, 4
  %2784 = inttoptr i64 %2783 to float*
  %2785 = load float, float* %2784
  %2786 = add i64 %2778, 8
  %2787 = inttoptr i64 %2786 to float*
  %2788 = load float, float* %2787
  %2789 = add i64 %2778, 12
  %2790 = inttoptr i64 %2789 to float*
  %2791 = load float, float* %2790
  %2792 = bitcast i8* %2776 to float*
  store float %2782, float* %2792, align 1
  %2793 = getelementptr inbounds i8, i8* %2776, i64 4
  %2794 = bitcast i8* %2793 to float*
  store float %2785, float* %2794, align 1
  %2795 = getelementptr inbounds i8, i8* %2776, i64 8
  %2796 = bitcast i8* %2795 to float*
  store float %2788, float* %2796, align 1
  %2797 = getelementptr inbounds i8, i8* %2776, i64 12
  %2798 = bitcast i8* %2797 to float*
  store float %2791, float* %2798, align 1
  store %struct.Memory* %loadMem_44532e, %struct.Memory** %MEMORY
  %loadMem_445335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 33
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2803 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2802, i64 0, i64 1
  %YMM1.i92 = bitcast %union.VectorReg* %2803 to %"class.std::bitset"*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2805 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2804, i64 0, i64 2
  %XMM2.i93 = bitcast %union.VectorReg* %2805 to %union.vec128_t*
  %2806 = bitcast %"class.std::bitset"* %YMM1.i92 to i8*
  %2807 = bitcast %"class.std::bitset"* %YMM1.i92 to i8*
  %2808 = bitcast %union.vec128_t* %XMM2.i93 to i8*
  %2809 = load i64, i64* %PC.i91
  %2810 = add i64 %2809, 4
  store i64 %2810, i64* %PC.i91
  %2811 = bitcast i8* %2807 to i64*
  %2812 = load i64, i64* %2811, align 1
  %2813 = getelementptr inbounds i8, i8* %2807, i64 8
  %2814 = bitcast i8* %2813 to i64*
  %2815 = load i64, i64* %2814, align 1
  %2816 = bitcast i8* %2808 to i64*
  %2817 = load i64, i64* %2816, align 1
  %2818 = getelementptr inbounds i8, i8* %2808, i64 8
  %2819 = bitcast i8* %2818 to i64*
  %2820 = load i64, i64* %2819, align 1
  %2821 = and i64 %2817, %2812
  %2822 = and i64 %2820, %2815
  %2823 = trunc i64 %2821 to i32
  %2824 = lshr i64 %2821, 32
  %2825 = trunc i64 %2824 to i32
  %2826 = bitcast i8* %2806 to i32*
  store i32 %2823, i32* %2826, align 1
  %2827 = getelementptr inbounds i8, i8* %2806, i64 4
  %2828 = bitcast i8* %2827 to i32*
  store i32 %2825, i32* %2828, align 1
  %2829 = trunc i64 %2822 to i32
  %2830 = getelementptr inbounds i8, i8* %2806, i64 8
  %2831 = bitcast i8* %2830 to i32*
  store i32 %2829, i32* %2831, align 1
  %2832 = lshr i64 %2822, 32
  %2833 = trunc i64 %2832 to i32
  %2834 = getelementptr inbounds i8, i8* %2806, i64 12
  %2835 = bitcast i8* %2834 to i32*
  store i32 %2833, i32* %2835, align 1
  store %struct.Memory* %loadMem_445335, %struct.Memory** %MEMORY
  %loadMem_445339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 33
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2840 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2839, i64 0, i64 0
  %XMM0.i86 = bitcast %union.VectorReg* %2840 to %union.vec128_t*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2841, i64 0, i64 1
  %XMM1.i87 = bitcast %union.VectorReg* %2842 to %union.vec128_t*
  %2843 = bitcast %union.vec128_t* %XMM0.i86 to i8*
  %2844 = bitcast %union.vec128_t* %XMM1.i87 to i8*
  %2845 = load i64, i64* %PC.i85
  %2846 = add i64 %2845, 4
  store i64 %2846, i64* %PC.i85
  %2847 = bitcast i8* %2843 to double*
  %2848 = load double, double* %2847, align 1
  %2849 = bitcast i8* %2844 to double*
  %2850 = load double, double* %2849, align 1
  %2851 = fcmp uno double %2848, %2850
  br i1 %2851, label %2852, label %2864

; <label>:2852:                                   ; preds = %block_4452ec
  %2853 = fadd double %2848, %2850
  %2854 = bitcast double %2853 to i64
  %2855 = and i64 %2854, 9221120237041090560
  %2856 = icmp eq i64 %2855, 9218868437227405312
  %2857 = and i64 %2854, 2251799813685247
  %2858 = icmp ne i64 %2857, 0
  %2859 = and i1 %2856, %2858
  br i1 %2859, label %2860, label %2870

; <label>:2860:                                   ; preds = %2852
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2862 = load i64, i64* %2861, align 8
  %2863 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2862, %struct.Memory* %loadMem_445339)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:2864:                                   ; preds = %block_4452ec
  %2865 = fcmp ogt double %2848, %2850
  br i1 %2865, label %2870, label %2866

; <label>:2866:                                   ; preds = %2864
  %2867 = fcmp olt double %2848, %2850
  br i1 %2867, label %2870, label %2868

; <label>:2868:                                   ; preds = %2866
  %2869 = fcmp oeq double %2848, %2850
  br i1 %2869, label %2870, label %2877

; <label>:2870:                                   ; preds = %2868, %2866, %2864, %2852
  %2871 = phi i8 [ 0, %2864 ], [ 0, %2866 ], [ 1, %2868 ], [ 1, %2852 ]
  %2872 = phi i8 [ 0, %2864 ], [ 0, %2866 ], [ 0, %2868 ], [ 1, %2852 ]
  %2873 = phi i8 [ 0, %2864 ], [ 1, %2866 ], [ 0, %2868 ], [ 1, %2852 ]
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2871, i8* %2874, align 1
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2872, i8* %2875, align 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2873, i8* %2876, align 1
  br label %2877

; <label>:2877:                                   ; preds = %2870, %2868
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2878, align 1
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2879, align 1
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2880, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %2860, %2877
  %2881 = phi %struct.Memory* [ %2863, %2860 ], [ %loadMem_445339, %2877 ]
  store %struct.Memory* %2881, %struct.Memory** %MEMORY
  %loadMem_44533d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 33
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %PC.i84
  %2886 = add i64 %2885, 122
  %2887 = load i64, i64* %PC.i84
  %2888 = add i64 %2887, 6
  %2889 = load i64, i64* %PC.i84
  %2890 = add i64 %2889, 6
  store i64 %2890, i64* %PC.i84
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2892 = load i8, i8* %2891, align 1
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2894 = load i8, i8* %2893, align 1
  %2895 = or i8 %2894, %2892
  %2896 = icmp ne i8 %2895, 0
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %BRANCH_TAKEN, align 1
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2899 = select i1 %2896, i64 %2886, i64 %2888
  store i64 %2899, i64* %2898, align 8
  store %struct.Memory* %loadMem_44533d, %struct.Memory** %MEMORY
  %loadBr_44533d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44533d = icmp eq i8 %loadBr_44533d, 1
  br i1 %cmpBr_44533d, label %block_.L_4453b7, label %block_445343

block_445343:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_445343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 15
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2906, i64 0, i64 0
  %YMM0.i83 = bitcast %union.VectorReg* %2907 to %"class.std::bitset"*
  %2908 = bitcast %"class.std::bitset"* %YMM0.i83 to i8*
  %2909 = load i64, i64* %RBP.i82
  %2910 = sub i64 %2909, 80
  %2911 = load i64, i64* %PC.i81
  %2912 = add i64 %2911, 5
  store i64 %2912, i64* %PC.i81
  %2913 = inttoptr i64 %2910 to double*
  %2914 = load double, double* %2913
  %2915 = bitcast i8* %2908 to double*
  store double %2914, double* %2915, align 1
  %2916 = getelementptr inbounds i8, i8* %2908, i64 8
  %2917 = bitcast i8* %2916 to double*
  store double 0.000000e+00, double* %2917, align 1
  store %struct.Memory* %loadMem_445343, %struct.Memory** %MEMORY
  %loadMem_445348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 15
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2925 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2924, i64 0, i64 1
  %YMM1.i80 = bitcast %union.VectorReg* %2925 to %"class.std::bitset"*
  %2926 = bitcast %"class.std::bitset"* %YMM1.i80 to i8*
  %2927 = load i64, i64* %RBP.i79
  %2928 = sub i64 %2927, 16
  %2929 = load i64, i64* %PC.i78
  %2930 = add i64 %2929, 5
  store i64 %2930, i64* %PC.i78
  %2931 = inttoptr i64 %2928 to double*
  %2932 = load double, double* %2931
  %2933 = bitcast i8* %2926 to double*
  store double %2932, double* %2933, align 1
  %2934 = getelementptr inbounds i8, i8* %2926, i64 8
  %2935 = bitcast i8* %2934 to double*
  store double 0.000000e+00, double* %2935, align 1
  store %struct.Memory* %loadMem_445348, %struct.Memory** %MEMORY
  %loadMem_44534d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 33
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 15
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2943 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2942, i64 0, i64 2
  %YMM2.i77 = bitcast %union.VectorReg* %2943 to %"class.std::bitset"*
  %2944 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %2945 = load i64, i64* %RBP.i76
  %2946 = sub i64 %2945, 24
  %2947 = load i64, i64* %PC.i75
  %2948 = add i64 %2947, 5
  store i64 %2948, i64* %PC.i75
  %2949 = inttoptr i64 %2946 to double*
  %2950 = load double, double* %2949
  %2951 = bitcast i8* %2944 to double*
  store double %2950, double* %2951, align 1
  %2952 = getelementptr inbounds i8, i8* %2944, i64 8
  %2953 = bitcast i8* %2952 to double*
  store double 0.000000e+00, double* %2953, align 1
  store %struct.Memory* %loadMem_44534d, %struct.Memory** %MEMORY
  %loadMem_445352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 15
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2960, i64 0, i64 0
  %XMM0.i74 = bitcast %union.VectorReg* %2961 to %union.vec128_t*
  %2962 = load i64, i64* %RBP.i73
  %2963 = sub i64 %2962, 120
  %2964 = bitcast %union.vec128_t* %XMM0.i74 to i8*
  %2965 = load i64, i64* %PC.i72
  %2966 = add i64 %2965, 5
  store i64 %2966, i64* %PC.i72
  %2967 = bitcast i8* %2964 to double*
  %2968 = load double, double* %2967, align 1
  %2969 = inttoptr i64 %2963 to double*
  store double %2968, double* %2969
  store %struct.Memory* %loadMem_445352, %struct.Memory** %MEMORY
  %loadMem_445357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2974 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2973, i64 0, i64 0
  %YMM0.i70 = bitcast %union.VectorReg* %2974 to %"class.std::bitset"*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2975, i64 0, i64 2
  %XMM2.i71 = bitcast %union.VectorReg* %2976 to %union.vec128_t*
  %2977 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %2978 = bitcast %union.vec128_t* %XMM2.i71 to i8*
  %2979 = load i64, i64* %PC.i69
  %2980 = add i64 %2979, 3
  store i64 %2980, i64* %PC.i69
  %2981 = bitcast i8* %2978 to <2 x i32>*
  %2982 = load <2 x i32>, <2 x i32>* %2981, align 1
  %2983 = getelementptr inbounds i8, i8* %2978, i64 8
  %2984 = bitcast i8* %2983 to <2 x i32>*
  %2985 = load <2 x i32>, <2 x i32>* %2984, align 1
  %2986 = extractelement <2 x i32> %2982, i32 0
  %2987 = bitcast i8* %2977 to i32*
  store i32 %2986, i32* %2987, align 1
  %2988 = extractelement <2 x i32> %2982, i32 1
  %2989 = getelementptr inbounds i8, i8* %2977, i64 4
  %2990 = bitcast i8* %2989 to i32*
  store i32 %2988, i32* %2990, align 1
  %2991 = extractelement <2 x i32> %2985, i32 0
  %2992 = getelementptr inbounds i8, i8* %2977, i64 8
  %2993 = bitcast i8* %2992 to i32*
  store i32 %2991, i32* %2993, align 1
  %2994 = extractelement <2 x i32> %2985, i32 1
  %2995 = getelementptr inbounds i8, i8* %2977, i64 12
  %2996 = bitcast i8* %2995 to i32*
  store i32 %2994, i32* %2996, align 1
  store %struct.Memory* %loadMem_445357, %struct.Memory** %MEMORY
  %loadMem_44535a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 15
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3004 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3003, i64 0, i64 1
  %XMM1.i68 = bitcast %union.VectorReg* %3004 to %union.vec128_t*
  %3005 = load i64, i64* %RBP.i67
  %3006 = sub i64 %3005, 128
  %3007 = bitcast %union.vec128_t* %XMM1.i68 to i8*
  %3008 = load i64, i64* %PC.i66
  %3009 = add i64 %3008, 5
  store i64 %3009, i64* %PC.i66
  %3010 = bitcast i8* %3007 to double*
  %3011 = load double, double* %3010, align 1
  %3012 = inttoptr i64 %3006 to double*
  store double %3011, double* %3012
  store %struct.Memory* %loadMem_44535a, %struct.Memory** %MEMORY
  %loadMem1_44535f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3015 to i64*
  %3016 = load i64, i64* %PC.i65
  %3017 = add i64 %3016, -278127
  %3018 = load i64, i64* %PC.i65
  %3019 = add i64 %3018, 5
  %3020 = load i64, i64* %PC.i65
  %3021 = add i64 %3020, 5
  store i64 %3021, i64* %PC.i65
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3023 = load i64, i64* %3022, align 8
  %3024 = add i64 %3023, -8
  %3025 = inttoptr i64 %3024 to i64*
  store i64 %3019, i64* %3025
  store i64 %3024, i64* %3022, align 8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3017, i64* %3026, align 8
  store %struct.Memory* %loadMem1_44535f, %struct.Memory** %MEMORY
  %loadMem2_44535f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44535f = load i64, i64* %3
  %3027 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_44535f)
  store %struct.Memory* %3027, %struct.Memory** %MEMORY
  %loadMem_445364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 33
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 15
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3035 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3034, i64 0, i64 1
  %YMM1.i62 = bitcast %union.VectorReg* %3035 to %"class.std::bitset"*
  %3036 = bitcast %"class.std::bitset"* %YMM1.i62 to i8*
  %3037 = load i64, i64* %RBP.i61
  %3038 = sub i64 %3037, 128
  %3039 = load i64, i64* %PC.i60
  %3040 = add i64 %3039, 5
  store i64 %3040, i64* %PC.i60
  %3041 = inttoptr i64 %3038 to double*
  %3042 = load double, double* %3041
  %3043 = bitcast i8* %3036 to double*
  store double %3042, double* %3043, align 1
  %3044 = getelementptr inbounds i8, i8* %3036, i64 8
  %3045 = bitcast i8* %3044 to double*
  store double 0.000000e+00, double* %3045, align 1
  store %struct.Memory* %loadMem_445364, %struct.Memory** %MEMORY
  %loadMem_445369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3050 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3049, i64 0, i64 1
  %YMM1.i58 = bitcast %union.VectorReg* %3050 to %"class.std::bitset"*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3051, i64 0, i64 0
  %XMM0.i59 = bitcast %union.VectorReg* %3052 to %union.vec128_t*
  %3053 = bitcast %"class.std::bitset"* %YMM1.i58 to i8*
  %3054 = bitcast %"class.std::bitset"* %YMM1.i58 to i8*
  %3055 = bitcast %union.vec128_t* %XMM0.i59 to i8*
  %3056 = load i64, i64* %PC.i57
  %3057 = add i64 %3056, 4
  store i64 %3057, i64* %PC.i57
  %3058 = bitcast i8* %3054 to double*
  %3059 = load double, double* %3058, align 1
  %3060 = getelementptr inbounds i8, i8* %3054, i64 8
  %3061 = bitcast i8* %3060 to i64*
  %3062 = load i64, i64* %3061, align 1
  %3063 = bitcast i8* %3055 to double*
  %3064 = load double, double* %3063, align 1
  %3065 = fmul double %3059, %3064
  %3066 = bitcast i8* %3053 to double*
  store double %3065, double* %3066, align 1
  %3067 = getelementptr inbounds i8, i8* %3053, i64 8
  %3068 = bitcast i8* %3067 to i64*
  store i64 %3062, i64* %3068, align 1
  store %struct.Memory* %loadMem_445369, %struct.Memory** %MEMORY
  %loadMem_44536d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 33
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3071 to i64*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 15
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3075, i64 0, i64 1
  %YMM1.i56 = bitcast %union.VectorReg* %3076 to %"class.std::bitset"*
  %3077 = bitcast %"class.std::bitset"* %YMM1.i56 to i8*
  %3078 = bitcast %"class.std::bitset"* %YMM1.i56 to i8*
  %3079 = load i64, i64* %RBP.i55
  %3080 = sub i64 %3079, 24
  %3081 = load i64, i64* %PC.i54
  %3082 = add i64 %3081, 5
  store i64 %3082, i64* %PC.i54
  %3083 = bitcast i8* %3078 to double*
  %3084 = load double, double* %3083, align 1
  %3085 = getelementptr inbounds i8, i8* %3078, i64 8
  %3086 = bitcast i8* %3085 to i64*
  %3087 = load i64, i64* %3086, align 1
  %3088 = inttoptr i64 %3080 to double*
  %3089 = load double, double* %3088
  %3090 = fsub double %3084, %3089
  %3091 = bitcast i8* %3077 to double*
  store double %3090, double* %3091, align 1
  %3092 = getelementptr inbounds i8, i8* %3077, i64 8
  %3093 = bitcast i8* %3092 to i64*
  store i64 %3087, i64* %3093, align 1
  store %struct.Memory* %loadMem_44536d, %struct.Memory** %MEMORY
  %loadMem_445372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 15
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3100, i64 0, i64 0
  %YMM0.i53 = bitcast %union.VectorReg* %3101 to %"class.std::bitset"*
  %3102 = bitcast %"class.std::bitset"* %YMM0.i53 to i8*
  %3103 = load i64, i64* %RBP.i52
  %3104 = sub i64 %3103, 16
  %3105 = load i64, i64* %PC.i51
  %3106 = add i64 %3105, 5
  store i64 %3106, i64* %PC.i51
  %3107 = inttoptr i64 %3104 to double*
  %3108 = load double, double* %3107
  %3109 = bitcast i8* %3102 to double*
  store double %3108, double* %3109, align 1
  %3110 = getelementptr inbounds i8, i8* %3102, i64 8
  %3111 = bitcast i8* %3110 to double*
  store double 0.000000e+00, double* %3111, align 1
  store %struct.Memory* %loadMem_445372, %struct.Memory** %MEMORY
  %loadMem_445377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 15
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3118, i64 0, i64 1
  %XMM1.i50 = bitcast %union.VectorReg* %3119 to %union.vec128_t*
  %3120 = load i64, i64* %RBP.i49
  %3121 = sub i64 %3120, 136
  %3122 = bitcast %union.vec128_t* %XMM1.i50 to i8*
  %3123 = load i64, i64* %PC.i48
  %3124 = add i64 %3123, 8
  store i64 %3124, i64* %PC.i48
  %3125 = bitcast i8* %3122 to double*
  %3126 = load double, double* %3125, align 1
  %3127 = inttoptr i64 %3121 to double*
  store double %3126, double* %3127
  store %struct.Memory* %loadMem_445377, %struct.Memory** %MEMORY
  %loadMem1_44537f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %PC.i47
  %3132 = add i64 %3131, -1759
  %3133 = load i64, i64* %PC.i47
  %3134 = add i64 %3133, 5
  %3135 = load i64, i64* %PC.i47
  %3136 = add i64 %3135, 5
  store i64 %3136, i64* %PC.i47
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3138 = load i64, i64* %3137, align 8
  %3139 = add i64 %3138, -8
  %3140 = inttoptr i64 %3139 to i64*
  store i64 %3134, i64* %3140
  store i64 %3139, i64* %3137, align 8
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3132, i64* %3141, align 8
  store %struct.Memory* %loadMem1_44537f, %struct.Memory** %MEMORY
  %loadMem2_44537f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44537f = load i64, i64* %3
  %call2_44537f = call %struct.Memory* @sub_444ca0.Gammln(%struct.State* %0, i64 %loadPC_44537f, %struct.Memory* %loadMem2_44537f)
  store %struct.Memory* %call2_44537f, %struct.Memory** %MEMORY
  %loadMem_445384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 33
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 15
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3148, i64 0, i64 1
  %YMM1.i46 = bitcast %union.VectorReg* %3149 to %"class.std::bitset"*
  %3150 = bitcast %"class.std::bitset"* %YMM1.i46 to i8*
  %3151 = load i64, i64* %RBP.i45
  %3152 = sub i64 %3151, 136
  %3153 = load i64, i64* %PC.i44
  %3154 = add i64 %3153, 8
  store i64 %3154, i64* %PC.i44
  %3155 = inttoptr i64 %3152 to double*
  %3156 = load double, double* %3155
  %3157 = bitcast i8* %3150 to double*
  store double %3156, double* %3157, align 1
  %3158 = getelementptr inbounds i8, i8* %3150, i64 8
  %3159 = bitcast i8* %3158 to double*
  store double 0.000000e+00, double* %3159, align 1
  store %struct.Memory* %loadMem_445384, %struct.Memory** %MEMORY
  %loadMem_44538c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3164 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3163, i64 0, i64 1
  %YMM1.i42 = bitcast %union.VectorReg* %3164 to %"class.std::bitset"*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3165, i64 0, i64 0
  %XMM0.i43 = bitcast %union.VectorReg* %3166 to %union.vec128_t*
  %3167 = bitcast %"class.std::bitset"* %YMM1.i42 to i8*
  %3168 = bitcast %"class.std::bitset"* %YMM1.i42 to i8*
  %3169 = bitcast %union.vec128_t* %XMM0.i43 to i8*
  %3170 = load i64, i64* %PC.i41
  %3171 = add i64 %3170, 4
  store i64 %3171, i64* %PC.i41
  %3172 = bitcast i8* %3168 to double*
  %3173 = load double, double* %3172, align 1
  %3174 = getelementptr inbounds i8, i8* %3168, i64 8
  %3175 = bitcast i8* %3174 to i64*
  %3176 = load i64, i64* %3175, align 1
  %3177 = bitcast i8* %3169 to double*
  %3178 = load double, double* %3177, align 1
  %3179 = fsub double %3173, %3178
  %3180 = bitcast i8* %3167 to double*
  store double %3179, double* %3180, align 1
  %3181 = getelementptr inbounds i8, i8* %3167, i64 8
  %3182 = bitcast i8* %3181 to i64*
  store i64 %3176, i64* %3182, align 1
  store %struct.Memory* %loadMem_44538c, %struct.Memory** %MEMORY
  %loadMem_445390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3186, i64 0, i64 0
  %YMM0.i39 = bitcast %union.VectorReg* %3187 to %"class.std::bitset"*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3189 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3188, i64 0, i64 1
  %XMM1.i40 = bitcast %union.VectorReg* %3189 to %union.vec128_t*
  %3190 = bitcast %"class.std::bitset"* %YMM0.i39 to i8*
  %3191 = bitcast %union.vec128_t* %XMM1.i40 to i8*
  %3192 = load i64, i64* %PC.i38
  %3193 = add i64 %3192, 3
  store i64 %3193, i64* %PC.i38
  %3194 = bitcast i8* %3191 to <2 x i32>*
  %3195 = load <2 x i32>, <2 x i32>* %3194, align 1
  %3196 = getelementptr inbounds i8, i8* %3191, i64 8
  %3197 = bitcast i8* %3196 to <2 x i32>*
  %3198 = load <2 x i32>, <2 x i32>* %3197, align 1
  %3199 = extractelement <2 x i32> %3195, i32 0
  %3200 = bitcast i8* %3190 to i32*
  store i32 %3199, i32* %3200, align 1
  %3201 = extractelement <2 x i32> %3195, i32 1
  %3202 = getelementptr inbounds i8, i8* %3190, i64 4
  %3203 = bitcast i8* %3202 to i32*
  store i32 %3201, i32* %3203, align 1
  %3204 = extractelement <2 x i32> %3198, i32 0
  %3205 = getelementptr inbounds i8, i8* %3190, i64 8
  %3206 = bitcast i8* %3205 to i32*
  store i32 %3204, i32* %3206, align 1
  %3207 = extractelement <2 x i32> %3198, i32 1
  %3208 = getelementptr inbounds i8, i8* %3190, i64 12
  %3209 = bitcast i8* %3208 to i32*
  store i32 %3207, i32* %3209, align 1
  store %struct.Memory* %loadMem_445390, %struct.Memory** %MEMORY
  %loadMem1_445393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %PC.i37
  %3214 = add i64 %3213, -278387
  %3215 = load i64, i64* %PC.i37
  %3216 = add i64 %3215, 5
  %3217 = load i64, i64* %PC.i37
  %3218 = add i64 %3217, 5
  store i64 %3218, i64* %PC.i37
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3220 = load i64, i64* %3219, align 8
  %3221 = add i64 %3220, -8
  %3222 = inttoptr i64 %3221 to i64*
  store i64 %3216, i64* %3222
  store i64 %3221, i64* %3219, align 8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3214, i64* %3223, align 8
  store %struct.Memory* %loadMem1_445393, %struct.Memory** %MEMORY
  %loadMem2_445393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_445393 = load i64, i64* %3
  %3224 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_445393)
  store %struct.Memory* %3224, %struct.Memory** %MEMORY
  %loadMem_445398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3229 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3228, i64 0, i64 1
  %YMM1.i33 = bitcast %union.VectorReg* %3229 to %"class.std::bitset"*
  %3230 = bitcast %"class.std::bitset"* %YMM1.i33 to i8*
  %3231 = load i64, i64* %PC.i32
  %3232 = add i64 %3231, ptrtoint (%G_0xf440__rip__type* @G_0xf440__rip_ to i64)
  %3233 = load i64, i64* %PC.i32
  %3234 = add i64 %3233, 8
  store i64 %3234, i64* %PC.i32
  %3235 = inttoptr i64 %3232 to double*
  %3236 = load double, double* %3235
  %3237 = bitcast i8* %3230 to double*
  store double %3236, double* %3237, align 1
  %3238 = getelementptr inbounds i8, i8* %3230, i64 8
  %3239 = bitcast i8* %3238 to double*
  store double 0.000000e+00, double* %3239, align 1
  store %struct.Memory* %loadMem_445398, %struct.Memory** %MEMORY
  %loadMem_4453a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3247 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3246, i64 0, i64 2
  %YMM2.i31 = bitcast %union.VectorReg* %3247 to %"class.std::bitset"*
  %3248 = bitcast %"class.std::bitset"* %YMM2.i31 to i8*
  %3249 = load i64, i64* %RBP.i30
  %3250 = sub i64 %3249, 120
  %3251 = load i64, i64* %PC.i29
  %3252 = add i64 %3251, 5
  store i64 %3252, i64* %PC.i29
  %3253 = inttoptr i64 %3250 to double*
  %3254 = load double, double* %3253
  %3255 = bitcast i8* %3248 to double*
  store double %3254, double* %3255, align 1
  %3256 = getelementptr inbounds i8, i8* %3248, i64 8
  %3257 = bitcast i8* %3256 to double*
  store double 0.000000e+00, double* %3257, align 1
  store %struct.Memory* %loadMem_4453a0, %struct.Memory** %MEMORY
  %loadMem_4453a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3261, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3262 to %"class.std::bitset"*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3263, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %3264 to %union.vec128_t*
  %3265 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3266 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3267 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %3268 = load i64, i64* %PC.i27
  %3269 = add i64 %3268, 4
  store i64 %3269, i64* %PC.i27
  %3270 = bitcast i8* %3266 to double*
  %3271 = load double, double* %3270, align 1
  %3272 = getelementptr inbounds i8, i8* %3266, i64 8
  %3273 = bitcast i8* %3272 to i64*
  %3274 = load i64, i64* %3273, align 1
  %3275 = bitcast i8* %3267 to double*
  %3276 = load double, double* %3275, align 1
  %3277 = fmul double %3271, %3276
  %3278 = bitcast i8* %3265 to double*
  store double %3277, double* %3278, align 1
  %3279 = getelementptr inbounds i8, i8* %3265, i64 8
  %3280 = bitcast i8* %3279 to i64*
  store i64 %3274, i64* %3280, align 1
  store %struct.Memory* %loadMem_4453a5, %struct.Memory** %MEMORY
  %loadMem_4453a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3284, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3285 to %"class.std::bitset"*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3286, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3287 to %union.vec128_t*
  %3288 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3289 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3290 = bitcast %union.vec128_t* %XMM2.i to i8*
  %3291 = load i64, i64* %PC.i26
  %3292 = add i64 %3291, 4
  store i64 %3292, i64* %PC.i26
  %3293 = bitcast i8* %3289 to double*
  %3294 = load double, double* %3293, align 1
  %3295 = getelementptr inbounds i8, i8* %3289, i64 8
  %3296 = bitcast i8* %3295 to i64*
  %3297 = load i64, i64* %3296, align 1
  %3298 = bitcast i8* %3290 to double*
  %3299 = load double, double* %3298, align 1
  %3300 = fsub double %3294, %3299
  %3301 = bitcast i8* %3288 to double*
  store double %3300, double* %3301, align 1
  %3302 = getelementptr inbounds i8, i8* %3288, i64 8
  %3303 = bitcast i8* %3302 to i64*
  store i64 %3297, i64* %3303, align 1
  store %struct.Memory* %loadMem_4453a9, %struct.Memory** %MEMORY
  %loadMem_4453ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 15
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3310, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3311 to %union.vec128_t*
  %3312 = load i64, i64* %RBP.i25
  %3313 = sub i64 %3312, 8
  %3314 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3315 = load i64, i64* %PC.i24
  %3316 = add i64 %3315, 5
  store i64 %3316, i64* %PC.i24
  %3317 = bitcast i8* %3314 to double*
  %3318 = load double, double* %3317, align 1
  %3319 = inttoptr i64 %3313 to double*
  store double %3318, double* %3319
  store %struct.Memory* %loadMem_4453ad, %struct.Memory** %MEMORY
  %loadMem_4453b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %PC.i23
  %3324 = add i64 %3323, 49
  %3325 = load i64, i64* %PC.i23
  %3326 = add i64 %3325, 5
  store i64 %3326, i64* %PC.i23
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3324, i64* %3327, align 8
  store %struct.Memory* %loadMem_4453b2, %struct.Memory** %MEMORY
  br label %block_.L_4453e3

block_.L_4453b7:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4453b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %PC.i22
  %3332 = add i64 %3331, 5
  %3333 = load i64, i64* %PC.i22
  %3334 = add i64 %3333, 5
  store i64 %3334, i64* %PC.i22
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3332, i64* %3335, align 8
  store %struct.Memory* %loadMem_4453b7, %struct.Memory** %MEMORY
  br label %block_.L_4453bc

block_.L_4453bc:                                  ; preds = %block_.L_4453b7
  %loadMem_4453bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 15
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %RBP.i21
  %3346 = sub i64 %3345, 28
  %3347 = load i64, i64* %PC.i19
  %3348 = add i64 %3347, 3
  store i64 %3348, i64* %PC.i19
  %3349 = inttoptr i64 %3346 to i32*
  %3350 = load i32, i32* %3349
  %3351 = zext i32 %3350 to i64
  store i64 %3351, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_4453bc, %struct.Memory** %MEMORY
  %loadMem_4453bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 33
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 1
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3357 to i64*
  %3358 = load i64, i64* %RAX.i
  %3359 = load i64, i64* %PC.i18
  %3360 = add i64 %3359, 3
  store i64 %3360, i64* %PC.i18
  %3361 = trunc i64 %3358 to i32
  %3362 = add i32 1, %3361
  %3363 = zext i32 %3362 to i64
  store i64 %3363, i64* %RAX.i, align 8
  %3364 = icmp ult i32 %3362, %3361
  %3365 = icmp ult i32 %3362, 1
  %3366 = or i1 %3364, %3365
  %3367 = zext i1 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3367, i8* %3368, align 1
  %3369 = and i32 %3362, 255
  %3370 = call i32 @llvm.ctpop.i32(i32 %3369)
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = xor i8 %3372, 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3373, i8* %3374, align 1
  %3375 = xor i64 1, %3358
  %3376 = trunc i64 %3375 to i32
  %3377 = xor i32 %3376, %3362
  %3378 = lshr i32 %3377, 4
  %3379 = trunc i32 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3380, i8* %3381, align 1
  %3382 = icmp eq i32 %3362, 0
  %3383 = zext i1 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3383, i8* %3384, align 1
  %3385 = lshr i32 %3362, 31
  %3386 = trunc i32 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3386, i8* %3387, align 1
  %3388 = lshr i32 %3361, 31
  %3389 = xor i32 %3385, %3388
  %3390 = add i32 %3389, %3385
  %3391 = icmp eq i32 %3390, 2
  %3392 = zext i1 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3392, i8* %3393, align 1
  store %struct.Memory* %loadMem_4453bf, %struct.Memory** %MEMORY
  %loadMem_4453c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 1
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3399 to i32*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 15
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RBP.i17
  %3404 = sub i64 %3403, 28
  %3405 = load i32, i32* %EAX.i
  %3406 = zext i32 %3405 to i64
  %3407 = load i64, i64* %PC.i16
  %3408 = add i64 %3407, 3
  store i64 %3408, i64* %PC.i16
  %3409 = inttoptr i64 %3404 to i32*
  store i32 %3405, i32* %3409
  store %struct.Memory* %loadMem_4453c2, %struct.Memory** %MEMORY
  %loadMem_4453c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3412 to i64*
  %3413 = load i64, i64* %PC.i15
  %3414 = add i64 %3413, -230
  %3415 = load i64, i64* %PC.i15
  %3416 = add i64 %3415, 5
  store i64 %3416, i64* %PC.i15
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3414, i64* %3417, align 8
  store %struct.Memory* %loadMem_4453c5, %struct.Memory** %MEMORY
  br label %block_.L_4452df

block_.L_4453ca:                                  ; preds = %block_.L_4452df
  %loadMem_4453ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 11
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %PC.i14
  %3425 = add i64 %3424, 10
  store i64 %3425, i64* %PC.i14
  store i64 ptrtoint (%G__0x45a7b8_type* @G__0x45a7b8 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4453ca, %struct.Memory** %MEMORY
  %loadMem_4453d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 1
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %3432 = bitcast %union.anon* %3431 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3432, i32 0, i32 0
  %3433 = load i64, i64* %PC.i13
  %3434 = add i64 %3433, 2
  store i64 %3434, i64* %PC.i13
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4453d4, %struct.Memory** %MEMORY
  %loadMem1_4453d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %PC.i12
  %3439 = add i64 %3438, -27078
  %3440 = load i64, i64* %PC.i12
  %3441 = add i64 %3440, 5
  %3442 = load i64, i64* %PC.i12
  %3443 = add i64 %3442, 5
  store i64 %3443, i64* %PC.i12
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3445 = load i64, i64* %3444, align 8
  %3446 = add i64 %3445, -8
  %3447 = inttoptr i64 %3446 to i64*
  store i64 %3441, i64* %3447
  store i64 %3446, i64* %3444, align 8
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3439, i64* %3448, align 8
  store %struct.Memory* %loadMem1_4453d6, %struct.Memory** %MEMORY
  %loadMem2_4453d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4453d6 = load i64, i64* %3
  %call2_4453d6 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_4453d6, %struct.Memory* %loadMem2_4453d6)
  store %struct.Memory* %call2_4453d6, %struct.Memory** %MEMORY
  br label %block_.L_4453db

block_.L_4453db:                                  ; preds = %block_.L_4453ca, %block_.L_4452ab
  %loadMem_4453db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3452, i64 0, i64 0
  %YMM0.i10 = bitcast %union.VectorReg* %3453 to %"class.std::bitset"*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3455 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3454, i64 0, i64 0
  %XMM0.i11 = bitcast %union.VectorReg* %3455 to %union.vec128_t*
  %3456 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %3457 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %3458 = bitcast %union.vec128_t* %XMM0.i11 to i8*
  %3459 = load i64, i64* %PC.i9
  %3460 = add i64 %3459, 3
  store i64 %3460, i64* %PC.i9
  %3461 = bitcast i8* %3457 to i64*
  %3462 = load i64, i64* %3461, align 1
  %3463 = getelementptr inbounds i8, i8* %3457, i64 8
  %3464 = bitcast i8* %3463 to i64*
  %3465 = load i64, i64* %3464, align 1
  %3466 = bitcast i8* %3458 to i64*
  %3467 = load i64, i64* %3466, align 1
  %3468 = getelementptr inbounds i8, i8* %3458, i64 8
  %3469 = bitcast i8* %3468 to i64*
  %3470 = load i64, i64* %3469, align 1
  %3471 = xor i64 %3467, %3462
  %3472 = xor i64 %3470, %3465
  %3473 = trunc i64 %3471 to i32
  %3474 = lshr i64 %3471, 32
  %3475 = trunc i64 %3474 to i32
  %3476 = bitcast i8* %3456 to i32*
  store i32 %3473, i32* %3476, align 1
  %3477 = getelementptr inbounds i8, i8* %3456, i64 4
  %3478 = bitcast i8* %3477 to i32*
  store i32 %3475, i32* %3478, align 1
  %3479 = trunc i64 %3472 to i32
  %3480 = getelementptr inbounds i8, i8* %3456, i64 8
  %3481 = bitcast i8* %3480 to i32*
  store i32 %3479, i32* %3481, align 1
  %3482 = lshr i64 %3472, 32
  %3483 = trunc i64 %3482 to i32
  %3484 = getelementptr inbounds i8, i8* %3456, i64 12
  %3485 = bitcast i8* %3484 to i32*
  store i32 %3483, i32* %3485, align 1
  store %struct.Memory* %loadMem_4453db, %struct.Memory** %MEMORY
  %loadMem_4453de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 33
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 15
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3493 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3492, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3493 to %union.vec128_t*
  %3494 = load i64, i64* %RBP.i8
  %3495 = sub i64 %3494, 8
  %3496 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3497 = load i64, i64* %PC.i7
  %3498 = add i64 %3497, 5
  store i64 %3498, i64* %PC.i7
  %3499 = bitcast i8* %3496 to double*
  %3500 = load double, double* %3499, align 1
  %3501 = inttoptr i64 %3495 to double*
  store double %3500, double* %3501
  store %struct.Memory* %loadMem_4453de, %struct.Memory** %MEMORY
  br label %block_.L_4453e3

block_.L_4453e3:                                  ; preds = %block_.L_4453db, %block_445343, %block_445231
  %loadMem_4453e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 33
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 15
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3509 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3508, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3509 to %"class.std::bitset"*
  %3510 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3511 = load i64, i64* %RBP.i6
  %3512 = sub i64 %3511, 8
  %3513 = load i64, i64* %PC.i5
  %3514 = add i64 %3513, 5
  store i64 %3514, i64* %PC.i5
  %3515 = inttoptr i64 %3512 to double*
  %3516 = load double, double* %3515
  %3517 = bitcast i8* %3510 to double*
  store double %3516, double* %3517, align 1
  %3518 = getelementptr inbounds i8, i8* %3510, i64 8
  %3519 = bitcast i8* %3518 to double*
  store double 0.000000e+00, double* %3519, align 1
  store %struct.Memory* %loadMem_4453e3, %struct.Memory** %MEMORY
  %loadMem_4453e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3522 to i64*
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 13
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3525 to i64*
  %3526 = load i64, i64* %RSP.i
  %3527 = load i64, i64* %PC.i4
  %3528 = add i64 %3527, 7
  store i64 %3528, i64* %PC.i4
  %3529 = add i64 144, %3526
  store i64 %3529, i64* %RSP.i, align 8
  %3530 = icmp ult i64 %3529, %3526
  %3531 = icmp ult i64 %3529, 144
  %3532 = or i1 %3530, %3531
  %3533 = zext i1 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3533, i8* %3534, align 1
  %3535 = trunc i64 %3529 to i32
  %3536 = and i32 %3535, 255
  %3537 = call i32 @llvm.ctpop.i32(i32 %3536)
  %3538 = trunc i32 %3537 to i8
  %3539 = and i8 %3538, 1
  %3540 = xor i8 %3539, 1
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3540, i8* %3541, align 1
  %3542 = xor i64 144, %3526
  %3543 = xor i64 %3542, %3529
  %3544 = lshr i64 %3543, 4
  %3545 = trunc i64 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3546, i8* %3547, align 1
  %3548 = icmp eq i64 %3529, 0
  %3549 = zext i1 %3548 to i8
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3549, i8* %3550, align 1
  %3551 = lshr i64 %3529, 63
  %3552 = trunc i64 %3551 to i8
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3552, i8* %3553, align 1
  %3554 = lshr i64 %3526, 63
  %3555 = xor i64 %3551, %3554
  %3556 = add i64 %3555, %3551
  %3557 = icmp eq i64 %3556, 2
  %3558 = zext i1 %3557 to i8
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3558, i8* %3559, align 1
  store %struct.Memory* %loadMem_4453e8, %struct.Memory** %MEMORY
  %loadMem_4453ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 33
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 15
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3565 to i64*
  %3566 = load i64, i64* %PC.i2
  %3567 = add i64 %3566, 1
  store i64 %3567, i64* %PC.i2
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3569 = load i64, i64* %3568, align 8
  %3570 = add i64 %3569, 8
  %3571 = inttoptr i64 %3569 to i64*
  %3572 = load i64, i64* %3571
  store i64 %3572, i64* %RBP.i3, align 8
  store i64 %3570, i64* %3568, align 8
  store %struct.Memory* %loadMem_4453ef, %struct.Memory** %MEMORY
  %loadMem_4453f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %PC.i1
  %3577 = add i64 %3576, 1
  store i64 %3577, i64* %PC.i1
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3580 = load i64, i64* %3579, align 8
  %3581 = inttoptr i64 %3580 to i64*
  %3582 = load i64, i64* %3581
  store i64 %3582, i64* %3578, align 8
  %3583 = add i64 %3580, 8
  store i64 %3583, i64* %3579, align 8
  store %struct.Memory* %loadMem_4453f0, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4453f0
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_ucomisd_MINUS0x10__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %13 to double*
  %19 = load double, double* %18
  %20 = fcmp uno double %17, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd double %17, %19
  %23 = bitcast double %22 to i64
  %24 = and i64 %23, 9221120237041090560
  %25 = icmp eq i64 %24, 9218868437227405312
  %26 = and i64 %23, 2251799813685247
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt double %17, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt double %17, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq double %17, %19
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
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jb_.L_4450b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45a72f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a72f_type* @G__0x45a72f to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.Die(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_ucomisd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %13 to double*
  %19 = load double, double* %18
  %20 = fcmp uno double %17, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd double %17, %19
  %23 = bitcast double %22 to i64
  %24 = and i64 %23, 9221120237041090560
  %25 = icmp eq i64 %24, 9218868437227405312
  %26 = and i64 %23, 2251799813685247
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt double %17, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt double %17, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq double %17, %19
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
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jbe_.L_4450d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a750___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a750_type* @G__0x45a750 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0xf705__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf705__rip__type* @G_0xf705__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_jbe_.L_4452c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xf6e9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf6e9__rip__type* @G_0xf6e9__rip_ to i64)
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x64__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 100
  %16 = icmp ult i32 %14, 100
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
  %25 = xor i32 %14, 100
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

define %struct.Memory* @routine_jge_.L_4452ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x1c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_subsd_MINUS0x10__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_mulsd_MINUS0x40__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_mulsd_MINUS0x48__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_jne_.L_4451bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_4451bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_445205(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xf619__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf619__rip__type* @G_0xf619__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
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

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
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

define %struct.Memory* @routine_movsd_0xf64b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf64b__rip__type* @G_0xf64b__rip_ to i64)
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

define %struct.Memory* @routine_subsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x106ed__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x106ed__rip__type* @G_0x106ed__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pand__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %25 = and i64 %21, %16
  %26 = and i64 %24, %19
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

define %struct.Memory* @routine_jbe_.L_445293(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 104
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

define %struct.Memory* @routine_callq_.log_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_subsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fsub double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 112
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

define %struct.Memory* @routine_callq_.Gammln(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_callq_.exp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_jmpq_.L_4453e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_445124(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45a772___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a772_type* @G__0x45a772 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4453db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xf517__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf517__rip__type* @G_0xf517__rip_ to i64)
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

define %struct.Memory* @routine_divsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2710__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 10000
  %16 = icmp ult i32 %14, 10000
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
  %25 = xor i32 %14, 10000
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

define %struct.Memory* @routine_jge_.L_4453ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xf564__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf564__rip__type* @G_0xf564__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x1c__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
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

define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
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

define %struct.Memory* @routine_mulsd_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
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

define %struct.Memory* @routine_addsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_divsd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
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
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps_0x105db__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x105db__rip__type* @G_0x105db__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = add i64 %10, 4
  %16 = inttoptr i64 %15 to float*
  %17 = load float, float* %16
  %18 = add i64 %10, 8
  %19 = inttoptr i64 %18 to float*
  %20 = load float, float* %19
  %21 = add i64 %10, 12
  %22 = inttoptr i64 %21 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %8 to float*
  store float %14, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %8, i64 4
  %26 = bitcast i8* %25 to float*
  store float %17, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %8, i64 8
  %28 = bitcast i8* %27 to float*
  store float %20, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %8, i64 12
  %30 = bitcast i8* %29 to float*
  store float %23, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_4453b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 120
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 136
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

define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
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

define %struct.Memory* @routine_movsd_0xf440__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xf440__rip__type* @G_0xf440__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_4453bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4452df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45a7b8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a7b8_type* @G__0x45a7b8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_movsd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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
