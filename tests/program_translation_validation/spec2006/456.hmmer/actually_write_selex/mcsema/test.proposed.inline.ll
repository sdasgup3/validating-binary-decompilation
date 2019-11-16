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
%G__0x456fc4_type = type <{ [8 x i8] }>
%G__0x45992c_type = type <{ [8 x i8] }>
%G__0x459931_type = type <{ [8 x i8] }>
%G__0x4599e3_type = type <{ [8 x i8] }>
%G__0x4599e8_type = type <{ [8 x i8] }>
%G__0x459c9f_type = type <{ [8 x i8] }>
%G__0x459ca5_type = type <{ [8 x i8] }>
%G__0x459cae_type = type <{ [8 x i8] }>
%G__0x459cb7_type = type <{ [8 x i8] }>
%G__0x459cc0_type = type <{ [8 x i8] }>
%G__0x459cc9_type = type <{ [8 x i8] }>
%G__0x459cd9_type = type <{ [8 x i8] }>
%G__0x459ce4_type = type <{ [8 x i8] }>
%G__0x459cf4_type = type <{ [8 x i8] }>
%G__0x459cff_type = type <{ [8 x i8] }>
%G__0x459d0f_type = type <{ [8 x i8] }>
%G__0x459d1a_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x45b16d_type = type <{ [8 x i8] }>
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
@G__0x456fc4 = global %G__0x456fc4_type zeroinitializer
@G__0x45992c = global %G__0x45992c_type zeroinitializer
@G__0x459931 = global %G__0x459931_type zeroinitializer
@G__0x4599e3 = global %G__0x4599e3_type zeroinitializer
@G__0x4599e8 = global %G__0x4599e8_type zeroinitializer
@G__0x459c9f = global %G__0x459c9f_type zeroinitializer
@G__0x459ca5 = global %G__0x459ca5_type zeroinitializer
@G__0x459cae = global %G__0x459cae_type zeroinitializer
@G__0x459cb7 = global %G__0x459cb7_type zeroinitializer
@G__0x459cc0 = global %G__0x459cc0_type zeroinitializer
@G__0x459cc9 = global %G__0x459cc9_type zeroinitializer
@G__0x459cd9 = global %G__0x459cd9_type zeroinitializer
@G__0x459ce4 = global %G__0x459ce4_type zeroinitializer
@G__0x459cf4 = global %G__0x459cf4_type zeroinitializer
@G__0x459cff = global %G__0x459cff_type zeroinitializer
@G__0x459d0f = global %G__0x459d0f_type zeroinitializer
@G__0x459d1a = global %G__0x459d1a_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x45b16d = global %G__0x45b16d_type zeroinitializer

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

declare %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @actually_write_selex(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_43bf80 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43bf80, %struct.Memory** %MEMORY
  %loadMem_43bf81 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43bf81, %struct.Memory** %MEMORY
  %loadMem_43bf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i34 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i34
  %36 = load i64, i64* %PC.i33
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i33
  %38 = sub i64 %35, 288
  store i64 %38, i64* %RSP.i34, align 8
  %39 = icmp ult i64 %35, 288
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
  %49 = xor i64 288, %35
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
  store %struct.Memory* %loadMem_43bf84, %struct.Memory** %MEMORY
  %loadMem_43bf8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i109 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i110
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i109
  %79 = load i64, i64* %PC.i108
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i108
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_43bf8b, %struct.Memory** %MEMORY
  %loadMem_43bf8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i191 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i192
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i191
  %94 = load i64, i64* %PC.i190
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i190
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_43bf8f, %struct.Memory** %MEMORY
  %loadMem_43bf93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %102 to i32*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i276
  %107 = sub i64 %106, 20
  %108 = load i32, i32* %EDX.i
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC.i275
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC.i275
  %112 = inttoptr i64 %107 to i32*
  store i32 %108, i32* %112
  store %struct.Memory* %loadMem_43bf93, %struct.Memory** %MEMORY
  %loadMem_43bf96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 15
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RBP.i339
  %120 = sub i64 %119, 28
  %121 = load i64, i64* %PC.i338
  %122 = add i64 %121, 7
  store i64 %122, i64* %PC.i338
  %123 = inttoptr i64 %120 to i32*
  store i32 0, i32* %123
  store %struct.Memory* %loadMem_43bf96, %struct.Memory** %MEMORY
  %loadMem_43bf9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RDX.i402 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 15
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %RBP.i403
  %134 = sub i64 %133, 20
  %135 = load i64, i64* %PC.i401
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC.i401
  %137 = inttoptr i64 %134 to i32*
  %138 = load i32, i32* %137
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RDX.i402, align 8
  store %struct.Memory* %loadMem_43bf9d, %struct.Memory** %MEMORY
  %loadMem_43bfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RDX.i431
  %147 = load i64, i64* %PC.i430
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC.i430
  %149 = trunc i64 %146 to i32
  %150 = add i32 101, %149
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RDX.i431, align 8
  %152 = icmp ult i32 %150, %149
  %153 = icmp ult i32 %150, 101
  %154 = or i1 %152, %153
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %155, i8* %156, align 1
  %157 = and i32 %150, 255
  %158 = call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %161, i8* %162, align 1
  %163 = xor i64 101, %146
  %164 = trunc i64 %163 to i32
  %165 = xor i32 %164, %150
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %168, i8* %169, align 1
  %170 = icmp eq i32 %150, 0
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %171, i8* %172, align 1
  %173 = lshr i32 %150, 31
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %174, i8* %175, align 1
  %176 = lshr i32 %149, 31
  %177 = xor i32 %173, %176
  %178 = add i32 %177, %173
  %179 = icmp eq i32 %178, 2
  %180 = zext i1 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %180, i8* %181, align 1
  store %struct.Memory* %loadMem_43bfa0, %struct.Memory** %MEMORY
  %loadMem_43bfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %EDX.i453 = bitcast %union.anon* %187 to i32*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RSI.i454 = bitcast %union.anon* %190 to i64*
  %191 = load i32, i32* %EDX.i453
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %PC.i452
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC.i452
  %195 = shl i64 %192, 32
  %196 = ashr exact i64 %195, 32
  store i64 %196, i64* %RSI.i454, align 8
  store %struct.Memory* %loadMem_43bfa3, %struct.Memory** %MEMORY
  %loadMem_43bfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 9
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RSI.i648 = bitcast %union.anon* %202 to i64*
  %203 = load i64, i64* %RSI.i648
  %204 = load i64, i64* %PC.i647
  %205 = add i64 %204, 4
  store i64 %205, i64* %PC.i647
  store %struct.Memory* %loadMem_43bfa6, %struct.Memory** %MEMORY
  %loadMem_43bfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 9
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RSI.i674 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 11
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RDI.i675 = bitcast %union.anon* %214 to i64*
  %215 = load i64, i64* %RSI.i674
  %216 = load i64, i64* %PC.i673
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC.i673
  store i64 %215, i64* %RDI.i675, align 8
  store %struct.Memory* %loadMem_43bfaa, %struct.Memory** %MEMORY
  %loadMem1_43bfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %PC.i711
  %222 = add i64 %221, -240093
  %223 = load i64, i64* %PC.i711
  %224 = add i64 %223, 5
  %225 = load i64, i64* %PC.i711
  %226 = add i64 %225, 5
  store i64 %226, i64* %PC.i711
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %228, -8
  %230 = inttoptr i64 %229 to i64*
  store i64 %224, i64* %230
  store i64 %229, i64* %227, align 8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %222, i64* %231, align 8
  store %struct.Memory* %loadMem1_43bfad, %struct.Memory** %MEMORY
  %loadMem2_43bfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43bfad = load i64, i64* %3
  %232 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_43bfad)
  store %struct.Memory* %232, %struct.Memory** %MEMORY
  %loadMem_43bfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i738
  %243 = sub i64 %242, 40
  %244 = load i64, i64* %RAX.i737
  %245 = load i64, i64* %PC.i736
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC.i736
  %247 = inttoptr i64 %243 to i64*
  store i64 %244, i64* %247
  store %struct.Memory* %loadMem_43bfb2, %struct.Memory** %MEMORY
  %loadMem_43bfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RBP.i776
  %255 = sub i64 %254, 32
  %256 = load i64, i64* %PC.i775
  %257 = add i64 %256, 7
  store i64 %257, i64* %PC.i775
  %258 = inttoptr i64 %255 to i32*
  store i32 0, i32* %258
  store %struct.Memory* %loadMem_43bfb6, %struct.Memory** %MEMORY
  %loadMem_43bfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i802 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i802
  %266 = sub i64 %265, 24
  %267 = load i64, i64* %PC.i801
  %268 = add i64 %267, 7
  store i64 %268, i64* %PC.i801
  %269 = inttoptr i64 %266 to i32*
  store i32 0, i32* %269
  store %struct.Memory* %loadMem_43bfbd, %struct.Memory** %MEMORY
  br label %block_.L_43bfc4

block_.L_43bfc4:                                  ; preds = %block_.L_43c002, %entry
  %loadMem_43bfc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 15
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %RBP.i840
  %280 = sub i64 %279, 24
  %281 = load i64, i64* %PC.i838
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC.i838
  %283 = inttoptr i64 %280 to i32*
  %284 = load i32, i32* %283
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX.i839, align 8
  store %struct.Memory* %loadMem_43bfc4, %struct.Memory** %MEMORY
  %loadMem_43bfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RCX.i865 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 15
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %RBP.i866
  %296 = sub i64 %295, 16
  %297 = load i64, i64* %PC.i864
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC.i864
  %299 = inttoptr i64 %296 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %RCX.i865, align 8
  store %struct.Memory* %loadMem_43bfc7, %struct.Memory** %MEMORY
  %loadMem_43bfcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %303 to i64*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %EAX.i891 = bitcast %union.anon* %306 to i32*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RCX.i892 = bitcast %union.anon* %309 to i64*
  %310 = load i32, i32* %EAX.i891
  %311 = zext i32 %310 to i64
  %312 = load i64, i64* %RCX.i892
  %313 = add i64 %312, 28
  %314 = load i64, i64* %PC.i890
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC.i890
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316
  %318 = sub i32 %310, %317
  %319 = icmp ult i32 %310, %317
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %320, i8* %321, align 1
  %322 = and i32 %318, 255
  %323 = call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %326, i8* %327, align 1
  %328 = xor i32 %317, %310
  %329 = xor i32 %328, %318
  %330 = lshr i32 %329, 4
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %332, i8* %333, align 1
  %334 = icmp eq i32 %318, 0
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %335, i8* %336, align 1
  %337 = lshr i32 %318, 31
  %338 = trunc i32 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %338, i8* %339, align 1
  %340 = lshr i32 %310, 31
  %341 = lshr i32 %317, 31
  %342 = xor i32 %341, %340
  %343 = xor i32 %337, %340
  %344 = add i32 %343, %342
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %346, i8* %347, align 1
  store %struct.Memory* %loadMem_43bfcb, %struct.Memory** %MEMORY
  %loadMem_43bfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %PC.i916
  %352 = add i64 %351, 66
  %353 = load i64, i64* %PC.i916
  %354 = add i64 %353, 6
  %355 = load i64, i64* %PC.i916
  %356 = add i64 %355, 6
  store i64 %356, i64* %PC.i916
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %358 = load i8, i8* %357, align 1
  %359 = icmp ne i8 %358, 0
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %361 = load i8, i8* %360, align 1
  %362 = icmp ne i8 %361, 0
  %363 = xor i1 %359, %362
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %BRANCH_TAKEN, align 1
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %367 = select i1 %363, i64 %354, i64 %352
  store i64 %367, i64* %366, align 8
  store %struct.Memory* %loadMem_43bfce, %struct.Memory** %MEMORY
  %loadBr_43bfce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bfce = icmp eq i8 %loadBr_43bfce, 1
  br i1 %cmpBr_43bfce, label %block_.L_43c010, label %block_43bfd4

block_43bfd4:                                     ; preds = %block_.L_43bfc4
  %loadMem_43bfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RAX.i941 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i942 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i942
  %378 = sub i64 %377, 16
  %379 = load i64, i64* %PC.i940
  %380 = add i64 %379, 4
  store i64 %380, i64* %PC.i940
  %381 = inttoptr i64 %378 to i64*
  %382 = load i64, i64* %381
  store i64 %382, i64* %RAX.i941, align 8
  store %struct.Memory* %loadMem_43bfd4, %struct.Memory** %MEMORY
  %loadMem_43bfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RAX.i970 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %RAX.i970
  %390 = add i64 %389, 8
  %391 = load i64, i64* %PC.i969
  %392 = add i64 %391, 4
  store i64 %392, i64* %PC.i969
  %393 = inttoptr i64 %390 to i64*
  %394 = load i64, i64* %393
  store i64 %394, i64* %RAX.i970, align 8
  store %struct.Memory* %loadMem_43bfd8, %struct.Memory** %MEMORY
  %loadMem_43bfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i1034 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 5
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %RCX.i1035 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 15
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RBP.i1036 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %RBP.i1036
  %405 = sub i64 %404, 24
  %406 = load i64, i64* %PC.i1034
  %407 = add i64 %406, 4
  store i64 %407, i64* %PC.i1034
  %408 = inttoptr i64 %405 to i32*
  %409 = load i32, i32* %408
  %410 = sext i32 %409 to i64
  store i64 %410, i64* %RCX.i1035, align 8
  store %struct.Memory* %loadMem_43bfdc, %struct.Memory** %MEMORY
  %loadMem_43bfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i1038 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RAX.i1039 = bitcast %union.anon* %416 to i64*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 5
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RCX.i1040 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 11
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RDI.i1041 = bitcast %union.anon* %422 to i64*
  %423 = load i64, i64* %RAX.i1039
  %424 = load i64, i64* %RCX.i1040
  %425 = mul i64 %424, 8
  %426 = add i64 %425, %423
  %427 = load i64, i64* %PC.i1038
  %428 = add i64 %427, 4
  store i64 %428, i64* %PC.i1038
  %429 = inttoptr i64 %426 to i64*
  %430 = load i64, i64* %429
  store i64 %430, i64* %RDI.i1041, align 8
  store %struct.Memory* %loadMem_43bfe0, %struct.Memory** %MEMORY
  %loadMem1_43bfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i1037 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %PC.i1037
  %435 = add i64 %434, -240516
  %436 = load i64, i64* %PC.i1037
  %437 = add i64 %436, 5
  %438 = load i64, i64* %PC.i1037
  %439 = add i64 %438, 5
  store i64 %439, i64* %PC.i1037
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = add i64 %441, -8
  %443 = inttoptr i64 %442 to i64*
  store i64 %437, i64* %443
  store i64 %442, i64* %440, align 8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %435, i64* %444, align 8
  store %struct.Memory* %loadMem1_43bfe4, %struct.Memory** %MEMORY
  %loadMem2_43bfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43bfe4 = load i64, i64* %3
  %445 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_43bfe4)
  store %struct.Memory* %445, %struct.Memory** %MEMORY
  %loadMem_43bfe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i1031 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %EAX.i1032 = bitcast %union.anon* %451 to i32*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 7
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RDX.i1033 = bitcast %union.anon* %454 to i64*
  %455 = load i32, i32* %EAX.i1032
  %456 = zext i32 %455 to i64
  %457 = load i64, i64* %PC.i1031
  %458 = add i64 %457, 2
  store i64 %458, i64* %PC.i1031
  %459 = and i64 %456, 4294967295
  store i64 %459, i64* %RDX.i1033, align 8
  store %struct.Memory* %loadMem_43bfe9, %struct.Memory** %MEMORY
  %loadMem_43bfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i1028 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 7
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %EDX.i1029 = bitcast %union.anon* %465 to i32*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 15
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RBP.i1030 = bitcast %union.anon* %468 to i64*
  %469 = load i64, i64* %RBP.i1030
  %470 = sub i64 %469, 28
  %471 = load i32, i32* %EDX.i1029
  %472 = zext i32 %471 to i64
  %473 = load i64, i64* %PC.i1028
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC.i1028
  %475 = inttoptr i64 %470 to i32*
  store i32 %471, i32* %475
  store %struct.Memory* %loadMem_43bfeb, %struct.Memory** %MEMORY
  %loadMem_43bfee = load %struct.Memory*, %struct.Memory** %MEMORY
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 33
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %PC.i1025 = bitcast %union.anon* %478 to i64*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 7
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %EDX.i1026 = bitcast %union.anon* %481 to i32*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 15
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %RBP.i1027 = bitcast %union.anon* %484 to i64*
  %485 = load i32, i32* %EDX.i1026
  %486 = zext i32 %485 to i64
  %487 = load i64, i64* %RBP.i1027
  %488 = sub i64 %487, 32
  %489 = load i64, i64* %PC.i1025
  %490 = add i64 %489, 3
  store i64 %490, i64* %PC.i1025
  %491 = inttoptr i64 %488 to i32*
  %492 = load i32, i32* %491
  %493 = sub i32 %485, %492
  %494 = icmp ult i32 %485, %492
  %495 = zext i1 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %495, i8* %496, align 1
  %497 = and i32 %493, 255
  %498 = call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %501, i8* %502, align 1
  %503 = xor i32 %492, %485
  %504 = xor i32 %503, %493
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %507, i8* %508, align 1
  %509 = icmp eq i32 %493, 0
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %510, i8* %511, align 1
  %512 = lshr i32 %493, 31
  %513 = trunc i32 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %513, i8* %514, align 1
  %515 = lshr i32 %485, 31
  %516 = lshr i32 %492, 31
  %517 = xor i32 %516, %515
  %518 = xor i32 %512, %515
  %519 = add i32 %518, %517
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %521, i8* %522, align 1
  store %struct.Memory* %loadMem_43bfee, %struct.Memory** %MEMORY
  %loadMem_43bff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i1024 = bitcast %union.anon* %525 to i64*
  %526 = load i64, i64* %PC.i1024
  %527 = add i64 %526, 12
  %528 = load i64, i64* %PC.i1024
  %529 = add i64 %528, 6
  %530 = load i64, i64* %PC.i1024
  %531 = add i64 %530, 6
  store i64 %531, i64* %PC.i1024
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %533 = load i8, i8* %532, align 1
  %534 = icmp ne i8 %533, 0
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %536 = load i8, i8* %535, align 1
  %537 = icmp ne i8 %536, 0
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %539 = load i8, i8* %538, align 1
  %540 = icmp ne i8 %539, 0
  %541 = xor i1 %537, %540
  %542 = or i1 %534, %541
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %BRANCH_TAKEN, align 1
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %545 = select i1 %542, i64 %527, i64 %529
  store i64 %545, i64* %544, align 8
  store %struct.Memory* %loadMem_43bff1, %struct.Memory** %MEMORY
  %loadBr_43bff1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43bff1 = icmp eq i8 %loadBr_43bff1, 1
  br i1 %cmpBr_43bff1, label %block_.L_43bffd, label %block_43bff7

block_43bff7:                                     ; preds = %block_43bfd4
  %loadMem_43bff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i1021 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RAX.i1022 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 15
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RBP.i1023 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RBP.i1023
  %556 = sub i64 %555, 28
  %557 = load i64, i64* %PC.i1021
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC.i1021
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RAX.i1022, align 8
  store %struct.Memory* %loadMem_43bff7, %struct.Memory** %MEMORY
  %loadMem_43bffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i1018 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %EAX.i1019 = bitcast %union.anon* %567 to i32*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 15
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RBP.i1020 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %RBP.i1020
  %572 = sub i64 %571, 32
  %573 = load i32, i32* %EAX.i1019
  %574 = zext i32 %573 to i64
  %575 = load i64, i64* %PC.i1018
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC.i1018
  %577 = inttoptr i64 %572 to i32*
  store i32 %573, i32* %577
  store %struct.Memory* %loadMem_43bffa, %struct.Memory** %MEMORY
  br label %block_.L_43bffd

block_.L_43bffd:                                  ; preds = %block_43bff7, %block_43bfd4
  %loadMem_43bffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i1017 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %PC.i1017
  %582 = add i64 %581, 5
  %583 = load i64, i64* %PC.i1017
  %584 = add i64 %583, 5
  store i64 %584, i64* %PC.i1017
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %582, i64* %585, align 8
  store %struct.Memory* %loadMem_43bffd, %struct.Memory** %MEMORY
  br label %block_.L_43c002

block_.L_43c002:                                  ; preds = %block_.L_43bffd
  %loadMem_43c002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i1014 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RAX.i1015 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 15
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RBP.i1016 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RBP.i1016
  %596 = sub i64 %595, 24
  %597 = load i64, i64* %PC.i1014
  %598 = add i64 %597, 3
  store i64 %598, i64* %PC.i1014
  %599 = inttoptr i64 %596 to i32*
  %600 = load i32, i32* %599
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RAX.i1015, align 8
  store %struct.Memory* %loadMem_43c002, %struct.Memory** %MEMORY
  %loadMem_43c005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i1012 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 1
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RAX.i1013 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %RAX.i1013
  %609 = load i64, i64* %PC.i1012
  %610 = add i64 %609, 3
  store i64 %610, i64* %PC.i1012
  %611 = trunc i64 %608 to i32
  %612 = add i32 1, %611
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RAX.i1013, align 8
  %614 = icmp ult i32 %612, %611
  %615 = icmp ult i32 %612, 1
  %616 = or i1 %614, %615
  %617 = zext i1 %616 to i8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %617, i8* %618, align 1
  %619 = and i32 %612, 255
  %620 = call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %623, i8* %624, align 1
  %625 = xor i64 1, %608
  %626 = trunc i64 %625 to i32
  %627 = xor i32 %626, %612
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %630, i8* %631, align 1
  %632 = icmp eq i32 %612, 0
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %633, i8* %634, align 1
  %635 = lshr i32 %612, 31
  %636 = trunc i32 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %636, i8* %637, align 1
  %638 = lshr i32 %611, 31
  %639 = xor i32 %635, %638
  %640 = add i32 %639, %635
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %642, i8* %643, align 1
  store %struct.Memory* %loadMem_43c005, %struct.Memory** %MEMORY
  %loadMem_43c008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i1009 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 1
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %EAX.i1010 = bitcast %union.anon* %649 to i32*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 15
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RBP.i1011 = bitcast %union.anon* %652 to i64*
  %653 = load i64, i64* %RBP.i1011
  %654 = sub i64 %653, 24
  %655 = load i32, i32* %EAX.i1010
  %656 = zext i32 %655 to i64
  %657 = load i64, i64* %PC.i1009
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC.i1009
  %659 = inttoptr i64 %654 to i32*
  store i32 %655, i32* %659
  store %struct.Memory* %loadMem_43c008, %struct.Memory** %MEMORY
  %loadMem_43c00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i1008
  %664 = add i64 %663, -71
  %665 = load i64, i64* %PC.i1008
  %666 = add i64 %665, 5
  store i64 %666, i64* %PC.i1008
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %664, i64* %667, align 8
  store %struct.Memory* %loadMem_43c00b, %struct.Memory** %MEMORY
  br label %block_.L_43bfc4

block_.L_43c010:                                  ; preds = %block_.L_43bfc4
  %loadMem_43c010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 15
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RBP.i1007 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %RBP.i1007
  %675 = sub i64 %674, 32
  %676 = load i64, i64* %PC.i1006
  %677 = add i64 %676, 4
  store i64 %677, i64* %PC.i1006
  %678 = inttoptr i64 %675 to i32*
  %679 = load i32, i32* %678
  %680 = sub i32 %679, 6
  %681 = icmp ult i32 %679, 6
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %682, i8* %683, align 1
  %684 = and i32 %680, 255
  %685 = call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %688, i8* %689, align 1
  %690 = xor i32 %679, 6
  %691 = xor i32 %690, %680
  %692 = lshr i32 %691, 4
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %694, i8* %695, align 1
  %696 = icmp eq i32 %680, 0
  %697 = zext i1 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %697, i8* %698, align 1
  %699 = lshr i32 %680, 31
  %700 = trunc i32 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %700, i8* %701, align 1
  %702 = lshr i32 %679, 31
  %703 = xor i32 %699, %702
  %704 = add i32 %703, %702
  %705 = icmp eq i32 %704, 2
  %706 = zext i1 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %706, i8* %707, align 1
  store %struct.Memory* %loadMem_43c010, %struct.Memory** %MEMORY
  %loadMem_43c014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %710 to i64*
  %711 = load i64, i64* %PC.i1005
  %712 = add i64 %711, 13
  %713 = load i64, i64* %PC.i1005
  %714 = add i64 %713, 6
  %715 = load i64, i64* %PC.i1005
  %716 = add i64 %715, 6
  store i64 %716, i64* %PC.i1005
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %718 = load i8, i8* %717, align 1
  %719 = icmp ne i8 %718, 0
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %721 = load i8, i8* %720, align 1
  %722 = icmp ne i8 %721, 0
  %723 = xor i1 %719, %722
  %724 = xor i1 %723, true
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %BRANCH_TAKEN, align 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %727 = select i1 %723, i64 %714, i64 %712
  store i64 %727, i64* %726, align 8
  store %struct.Memory* %loadMem_43c014, %struct.Memory** %MEMORY
  %loadBr_43c014 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c014 = icmp eq i8 %loadBr_43c014, 1
  br i1 %cmpBr_43c014, label %block_.L_43c021, label %block_43c01a

block_43c01a:                                     ; preds = %block_.L_43c010
  %loadMem_43c01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i1003 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i1004 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %RBP.i1004
  %735 = sub i64 %734, 32
  %736 = load i64, i64* %PC.i1003
  %737 = add i64 %736, 7
  store i64 %737, i64* %PC.i1003
  %738 = inttoptr i64 %735 to i32*
  store i32 6, i32* %738
  store %struct.Memory* %loadMem_43c01a, %struct.Memory** %MEMORY
  br label %block_.L_43c021

block_.L_43c021:                                  ; preds = %block_43c01a, %block_.L_43c010
  %loadMem_43c021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i1001 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i1002 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RBP.i1002
  %746 = sub i64 %745, 24
  %747 = load i64, i64* %PC.i1001
  %748 = add i64 %747, 7
  store i64 %748, i64* %PC.i1001
  %749 = inttoptr i64 %746 to i32*
  store i32 0, i32* %749
  store %struct.Memory* %loadMem_43c021, %struct.Memory** %MEMORY
  br label %block_.L_43c028

block_.L_43c028:                                  ; preds = %block_43c03b, %block_.L_43c021
  %loadMem_43c028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RAX.i999 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 15
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RBP.i1000 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %RBP.i1000
  %760 = sub i64 %759, 24
  %761 = load i64, i64* %PC.i998
  %762 = add i64 %761, 3
  store i64 %762, i64* %PC.i998
  %763 = inttoptr i64 %760 to i32*
  %764 = load i32, i32* %763
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RAX.i999, align 8
  store %struct.Memory* %loadMem_43c028, %struct.Memory** %MEMORY
  %loadMem_43c02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 5
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RCX.i996 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 15
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RBP.i997 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %RBP.i997
  %776 = sub i64 %775, 16
  %777 = load i64, i64* %PC.i995
  %778 = add i64 %777, 4
  store i64 %778, i64* %PC.i995
  %779 = inttoptr i64 %776 to i64*
  %780 = load i64, i64* %779
  store i64 %780, i64* %RCX.i996, align 8
  store %struct.Memory* %loadMem_43c02b, %struct.Memory** %MEMORY
  %loadMem_43c02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %EAX.i993 = bitcast %union.anon* %786 to i32*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 5
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RCX.i994 = bitcast %union.anon* %789 to i64*
  %790 = load i32, i32* %EAX.i993
  %791 = zext i32 %790 to i64
  %792 = load i64, i64* %RCX.i994
  %793 = add i64 %792, 184
  %794 = load i64, i64* %PC.i992
  %795 = add i64 %794, 6
  store i64 %795, i64* %PC.i992
  %796 = inttoptr i64 %793 to i32*
  %797 = load i32, i32* %796
  %798 = sub i32 %790, %797
  %799 = icmp ult i32 %790, %797
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %800, i8* %801, align 1
  %802 = and i32 %798, 255
  %803 = call i32 @llvm.ctpop.i32(i32 %802)
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %806, i8* %807, align 1
  %808 = xor i32 %797, %790
  %809 = xor i32 %808, %798
  %810 = lshr i32 %809, 4
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %812, i8* %813, align 1
  %814 = icmp eq i32 %798, 0
  %815 = zext i1 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %815, i8* %816, align 1
  %817 = lshr i32 %798, 31
  %818 = trunc i32 %817 to i8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %818, i8* %819, align 1
  %820 = lshr i32 %790, 31
  %821 = lshr i32 %797, 31
  %822 = xor i32 %821, %820
  %823 = xor i32 %817, %820
  %824 = add i32 %823, %822
  %825 = icmp eq i32 %824, 2
  %826 = zext i1 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %826, i8* %827, align 1
  store %struct.Memory* %loadMem_43c02f, %struct.Memory** %MEMORY
  %loadMem_43c035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %830 to i64*
  %831 = load i64, i64* %PC.i991
  %832 = add i64 %831, 63
  %833 = load i64, i64* %PC.i991
  %834 = add i64 %833, 6
  %835 = load i64, i64* %PC.i991
  %836 = add i64 %835, 6
  store i64 %836, i64* %PC.i991
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %838 = load i8, i8* %837, align 1
  %839 = icmp ne i8 %838, 0
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %841 = load i8, i8* %840, align 1
  %842 = icmp ne i8 %841, 0
  %843 = xor i1 %839, %842
  %844 = xor i1 %843, true
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %BRANCH_TAKEN, align 1
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %847 = select i1 %843, i64 %834, i64 %832
  store i64 %847, i64* %846, align 8
  store %struct.Memory* %loadMem_43c035, %struct.Memory** %MEMORY
  %loadBr_43c035 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c035 = icmp eq i8 %loadBr_43c035, 1
  br i1 %cmpBr_43c035, label %block_.L_43c074, label %block_43c03b

block_43c03b:                                     ; preds = %block_.L_43c028
  %loadMem_43c03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 9
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RSI.i990 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %PC.i989
  %855 = add i64 %854, 10
  store i64 %855, i64* %PC.i989
  store i64 ptrtoint (%G__0x459c9f_type* @G__0x459c9f to i64), i64* %RSI.i990, align 8
  store %struct.Memory* %loadMem_43c03b, %struct.Memory** %MEMORY
  %loadMem_43c045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 11
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RDI.i987 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 15
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RBP.i988 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %RBP.i988
  %866 = sub i64 %865, 8
  %867 = load i64, i64* %PC.i986
  %868 = add i64 %867, 4
  store i64 %868, i64* %PC.i986
  %869 = inttoptr i64 %866 to i64*
  %870 = load i64, i64* %869
  store i64 %870, i64* %RDI.i987, align 8
  store %struct.Memory* %loadMem_43c045, %struct.Memory** %MEMORY
  %loadMem_43c049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 1
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RAX.i984 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 15
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RBP.i985 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RBP.i985
  %881 = sub i64 %880, 16
  %882 = load i64, i64* %PC.i983
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC.i983
  %884 = inttoptr i64 %881 to i64*
  %885 = load i64, i64* %884
  store i64 %885, i64* %RAX.i984, align 8
  store %struct.Memory* %loadMem_43c049, %struct.Memory** %MEMORY
  %loadMem_43c04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RAX.i982 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RAX.i982
  %893 = add i64 %892, 176
  %894 = load i64, i64* %PC.i981
  %895 = add i64 %894, 7
  store i64 %895, i64* %PC.i981
  %896 = inttoptr i64 %893 to i64*
  %897 = load i64, i64* %896
  store i64 %897, i64* %RAX.i982, align 8
  store %struct.Memory* %loadMem_43c04d, %struct.Memory** %MEMORY
  %loadMem_43c054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i979 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i980 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i980
  %908 = sub i64 %907, 24
  %909 = load i64, i64* %PC.i978
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC.i978
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RCX.i979, align 8
  store %struct.Memory* %loadMem_43c054, %struct.Memory** %MEMORY
  %loadMem_43c058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RAX.i975 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 5
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RCX.i976 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 7
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RDX.i977 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %RAX.i975
  %927 = load i64, i64* %RCX.i976
  %928 = mul i64 %927, 8
  %929 = add i64 %928, %926
  %930 = load i64, i64* %PC.i974
  %931 = add i64 %930, 4
  store i64 %931, i64* %PC.i974
  %932 = inttoptr i64 %929 to i64*
  %933 = load i64, i64* %932
  store i64 %933, i64* %RDX.i977, align 8
  store %struct.Memory* %loadMem_43c058, %struct.Memory** %MEMORY
  %loadMem_43c05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 1
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %940 = bitcast %union.anon* %939 to %struct.anon.2*
  %AL.i973 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %940, i32 0, i32 0
  %941 = load i64, i64* %PC.i972
  %942 = add i64 %941, 2
  store i64 %942, i64* %PC.i972
  store i8 0, i8* %AL.i973, align 1
  store %struct.Memory* %loadMem_43c05c, %struct.Memory** %MEMORY
  %loadMem1_43c05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %PC.i971
  %947 = add i64 %946, -240366
  %948 = load i64, i64* %PC.i971
  %949 = add i64 %948, 5
  %950 = load i64, i64* %PC.i971
  %951 = add i64 %950, 5
  store i64 %951, i64* %PC.i971
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %953 = load i64, i64* %952, align 8
  %954 = add i64 %953, -8
  %955 = inttoptr i64 %954 to i64*
  store i64 %949, i64* %955
  store i64 %954, i64* %952, align 8
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %947, i64* %956, align 8
  store %struct.Memory* %loadMem1_43c05e, %struct.Memory** %MEMORY
  %loadMem2_43c05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c05e = load i64, i64* %3
  %957 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c05e)
  store %struct.Memory* %957, %struct.Memory** %MEMORY
  %loadMem_43c063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 1
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %EAX.i967 = bitcast %union.anon* %963 to i32*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 15
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RBP.i968 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RBP.i968
  %968 = sub i64 %967, 48
  %969 = load i32, i32* %EAX.i967
  %970 = zext i32 %969 to i64
  %971 = load i64, i64* %PC.i966
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i966
  %973 = inttoptr i64 %968 to i32*
  store i32 %969, i32* %973
  store %struct.Memory* %loadMem_43c063, %struct.Memory** %MEMORY
  %loadMem_43c066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 1
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RAX.i964 = bitcast %union.anon* %979 to i64*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 15
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %RBP.i965 = bitcast %union.anon* %982 to i64*
  %983 = load i64, i64* %RBP.i965
  %984 = sub i64 %983, 24
  %985 = load i64, i64* %PC.i963
  %986 = add i64 %985, 3
  store i64 %986, i64* %PC.i963
  %987 = inttoptr i64 %984 to i32*
  %988 = load i32, i32* %987
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RAX.i964, align 8
  store %struct.Memory* %loadMem_43c066, %struct.Memory** %MEMORY
  %loadMem_43c069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 1
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RAX.i962 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RAX.i962
  %997 = load i64, i64* %PC.i961
  %998 = add i64 %997, 3
  store i64 %998, i64* %PC.i961
  %999 = trunc i64 %996 to i32
  %1000 = add i32 1, %999
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i962, align 8
  %1002 = icmp ult i32 %1000, %999
  %1003 = icmp ult i32 %1000, 1
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1005, i8* %1006, align 1
  %1007 = and i32 %1000, 255
  %1008 = call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1011, i8* %1012, align 1
  %1013 = xor i64 1, %996
  %1014 = trunc i64 %1013 to i32
  %1015 = xor i32 %1014, %1000
  %1016 = lshr i32 %1015, 4
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1018, i8* %1019, align 1
  %1020 = icmp eq i32 %1000, 0
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1021, i8* %1022, align 1
  %1023 = lshr i32 %1000, 31
  %1024 = trunc i32 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1024, i8* %1025, align 1
  %1026 = lshr i32 %999, 31
  %1027 = xor i32 %1023, %1026
  %1028 = add i32 %1027, %1023
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1030, i8* %1031, align 1
  store %struct.Memory* %loadMem_43c069, %struct.Memory** %MEMORY
  %loadMem_43c06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 1
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %EAX.i959 = bitcast %union.anon* %1037 to i32*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i960 = bitcast %union.anon* %1040 to i64*
  %1041 = load i64, i64* %RBP.i960
  %1042 = sub i64 %1041, 24
  %1043 = load i32, i32* %EAX.i959
  %1044 = zext i32 %1043 to i64
  %1045 = load i64, i64* %PC.i958
  %1046 = add i64 %1045, 3
  store i64 %1046, i64* %PC.i958
  %1047 = inttoptr i64 %1042 to i32*
  store i32 %1043, i32* %1047
  store %struct.Memory* %loadMem_43c06c, %struct.Memory** %MEMORY
  %loadMem_43c06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %PC.i957
  %1052 = add i64 %1051, -71
  %1053 = load i64, i64* %PC.i957
  %1054 = add i64 %1053, 5
  store i64 %1054, i64* %PC.i957
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1052, i64* %1055, align 8
  store %struct.Memory* %loadMem_43c06f, %struct.Memory** %MEMORY
  br label %block_.L_43c028

block_.L_43c074:                                  ; preds = %block_.L_43c028
  %loadMem_43c074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 1
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 15
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RBP.i956 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RBP.i956
  %1066 = sub i64 %1065, 16
  %1067 = load i64, i64* %PC.i954
  %1068 = add i64 %1067, 4
  store i64 %1068, i64* %PC.i954
  %1069 = inttoptr i64 %1066 to i64*
  %1070 = load i64, i64* %1069
  store i64 %1070, i64* %RAX.i955, align 8
  store %struct.Memory* %loadMem_43c074, %struct.Memory** %MEMORY
  %loadMem_43c078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 1
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RAX.i953
  %1078 = add i64 %1077, 184
  %1079 = load i64, i64* %PC.i952
  %1080 = add i64 %1079, 7
  store i64 %1080, i64* %PC.i952
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1083, align 1
  %1084 = and i32 %1082, 255
  %1085 = call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1088, i8* %1089, align 1
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1090, align 1
  %1091 = icmp eq i32 %1082, 0
  %1092 = zext i1 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1092, i8* %1093, align 1
  %1094 = lshr i32 %1082, 31
  %1095 = trunc i32 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1095, i8* %1096, align 1
  %1097 = lshr i32 %1082, 31
  %1098 = xor i32 %1094, %1097
  %1099 = add i32 %1098, %1097
  %1100 = icmp eq i32 %1099, 2
  %1101 = zext i1 %1100 to i8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1101, i8* %1102, align 1
  store %struct.Memory* %loadMem_43c078, %struct.Memory** %MEMORY
  %loadMem_43c07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %PC.i951
  %1107 = add i64 %1106, 30
  %1108 = load i64, i64* %PC.i951
  %1109 = add i64 %1108, 6
  %1110 = load i64, i64* %PC.i951
  %1111 = add i64 %1110, 6
  store i64 %1111, i64* %PC.i951
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1113 = load i8, i8* %1112, align 1
  %1114 = icmp ne i8 %1113, 0
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1116 = load i8, i8* %1115, align 1
  %1117 = icmp ne i8 %1116, 0
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1119 = load i8, i8* %1118, align 1
  %1120 = icmp ne i8 %1119, 0
  %1121 = xor i1 %1117, %1120
  %1122 = or i1 %1114, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %BRANCH_TAKEN, align 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1125 = select i1 %1122, i64 %1107, i64 %1109
  store i64 %1125, i64* %1124, align 8
  store %struct.Memory* %loadMem_43c07f, %struct.Memory** %MEMORY
  %loadBr_43c07f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c07f = icmp eq i8 %loadBr_43c07f, 1
  br i1 %cmpBr_43c07f, label %block_.L_43c09d, label %block_43c085

block_43c085:                                     ; preds = %block_.L_43c074
  %loadMem_43c085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 9
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RSI.i950 = bitcast %union.anon* %1131 to i64*
  %1132 = load i64, i64* %PC.i949
  %1133 = add i64 %1132, 10
  store i64 %1133, i64* %PC.i949
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i950, align 8
  store %struct.Memory* %loadMem_43c085, %struct.Memory** %MEMORY
  %loadMem_43c08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 11
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RDI.i947 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 15
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %RBP.i948
  %1144 = sub i64 %1143, 8
  %1145 = load i64, i64* %PC.i946
  %1146 = add i64 %1145, 4
  store i64 %1146, i64* %PC.i946
  %1147 = inttoptr i64 %1144 to i64*
  %1148 = load i64, i64* %1147
  store i64 %1148, i64* %RDI.i947, align 8
  store %struct.Memory* %loadMem_43c08f, %struct.Memory** %MEMORY
  %loadMem_43c093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 1
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %1155 = bitcast %union.anon* %1154 to %struct.anon.2*
  %AL.i945 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1155, i32 0, i32 0
  %1156 = load i64, i64* %PC.i944
  %1157 = add i64 %1156, 2
  store i64 %1157, i64* %PC.i944
  store i8 0, i8* %AL.i945, align 1
  store %struct.Memory* %loadMem_43c093, %struct.Memory** %MEMORY
  %loadMem1_43c095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %1160 to i64*
  %1161 = load i64, i64* %PC.i943
  %1162 = add i64 %1161, -240421
  %1163 = load i64, i64* %PC.i943
  %1164 = add i64 %1163, 5
  %1165 = load i64, i64* %PC.i943
  %1166 = add i64 %1165, 5
  store i64 %1166, i64* %PC.i943
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1168 = load i64, i64* %1167, align 8
  %1169 = add i64 %1168, -8
  %1170 = inttoptr i64 %1169 to i64*
  store i64 %1164, i64* %1170
  store i64 %1169, i64* %1167, align 8
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1162, i64* %1171, align 8
  store %struct.Memory* %loadMem1_43c095, %struct.Memory** %MEMORY
  %loadMem2_43c095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c095 = load i64, i64* %3
  %1172 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c095)
  store %struct.Memory* %1172, %struct.Memory** %MEMORY
  %loadMem_43c09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 1
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %EAX.i938 = bitcast %union.anon* %1178 to i32*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 15
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %1181 to i64*
  %1182 = load i64, i64* %RBP.i939
  %1183 = sub i64 %1182, 52
  %1184 = load i32, i32* %EAX.i938
  %1185 = zext i32 %1184 to i64
  %1186 = load i64, i64* %PC.i937
  %1187 = add i64 %1186, 3
  store i64 %1187, i64* %PC.i937
  %1188 = inttoptr i64 %1183 to i32*
  store i32 %1184, i32* %1188
  store %struct.Memory* %loadMem_43c09a, %struct.Memory** %MEMORY
  br label %block_.L_43c09d

block_.L_43c09d:                                  ; preds = %block_43c085, %block_.L_43c074
  %loadMem_43c09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 33
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %1191 to i64*
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 1
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %RAX.i935 = bitcast %union.anon* %1194 to i64*
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 15
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %1197 to i64*
  %1198 = load i64, i64* %RBP.i936
  %1199 = sub i64 %1198, 16
  %1200 = load i64, i64* %PC.i934
  %1201 = add i64 %1200, 4
  store i64 %1201, i64* %PC.i934
  %1202 = inttoptr i64 %1199 to i64*
  %1203 = load i64, i64* %1202
  store i64 %1203, i64* %RAX.i935, align 8
  store %struct.Memory* %loadMem_43c09d, %struct.Memory** %MEMORY
  %loadMem_43c0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 1
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RAX.i933 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RAX.i933
  %1211 = add i64 %1210, 40
  %1212 = load i64, i64* %PC.i932
  %1213 = add i64 %1212, 5
  store i64 %1213, i64* %PC.i932
  %1214 = inttoptr i64 %1211 to i64*
  %1215 = load i64, i64* %1214
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1216, align 1
  %1217 = trunc i64 %1215 to i32
  %1218 = and i32 %1217, 255
  %1219 = call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1222, i8* %1223, align 1
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1224, align 1
  %1225 = icmp eq i64 %1215, 0
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1226, i8* %1227, align 1
  %1228 = lshr i64 %1215, 63
  %1229 = trunc i64 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1229, i8* %1230, align 1
  %1231 = lshr i64 %1215, 63
  %1232 = xor i64 %1228, %1231
  %1233 = add i64 %1232, %1231
  %1234 = icmp eq i64 %1233, 2
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1235, i8* %1236, align 1
  store %struct.Memory* %loadMem_43c0a1, %struct.Memory** %MEMORY
  %loadMem_43c0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %PC.i931
  %1241 = add i64 %1240, 38
  %1242 = load i64, i64* %PC.i931
  %1243 = add i64 %1242, 6
  %1244 = load i64, i64* %PC.i931
  %1245 = add i64 %1244, 6
  store i64 %1245, i64* %PC.i931
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1247 = load i8, i8* %1246, align 1
  store i8 %1247, i8* %BRANCH_TAKEN, align 1
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1249 = icmp ne i8 %1247, 0
  %1250 = select i1 %1249, i64 %1241, i64 %1243
  store i64 %1250, i64* %1248, align 8
  store %struct.Memory* %loadMem_43c0a6, %struct.Memory** %MEMORY
  %loadBr_43c0a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c0a6 = icmp eq i8 %loadBr_43c0a6, 1
  br i1 %cmpBr_43c0a6, label %block_.L_43c0cc, label %block_43c0ac

block_43c0ac:                                     ; preds = %block_.L_43c09d
  %loadMem_43c0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 9
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RSI.i930 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %PC.i929
  %1258 = add i64 %1257, 10
  store i64 %1258, i64* %PC.i929
  store i64 ptrtoint (%G__0x459ca5_type* @G__0x459ca5 to i64), i64* %RSI.i930, align 8
  store %struct.Memory* %loadMem_43c0ac, %struct.Memory** %MEMORY
  %loadMem_43c0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 11
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RDI.i927 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 15
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %RBP.i928
  %1269 = sub i64 %1268, 8
  %1270 = load i64, i64* %PC.i926
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %PC.i926
  %1272 = inttoptr i64 %1269 to i64*
  %1273 = load i64, i64* %1272
  store i64 %1273, i64* %RDI.i927, align 8
  store %struct.Memory* %loadMem_43c0b6, %struct.Memory** %MEMORY
  %loadMem_43c0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 33
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 1
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RAX.i924 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 15
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %1282 to i64*
  %1283 = load i64, i64* %RBP.i925
  %1284 = sub i64 %1283, 16
  %1285 = load i64, i64* %PC.i923
  %1286 = add i64 %1285, 4
  store i64 %1286, i64* %PC.i923
  %1287 = inttoptr i64 %1284 to i64*
  %1288 = load i64, i64* %1287
  store i64 %1288, i64* %RAX.i924, align 8
  store %struct.Memory* %loadMem_43c0ba, %struct.Memory** %MEMORY
  %loadMem_43c0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 33
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 1
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RAX.i921 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 7
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %RDX.i922 = bitcast %union.anon* %1297 to i64*
  %1298 = load i64, i64* %RAX.i921
  %1299 = add i64 %1298, 40
  %1300 = load i64, i64* %PC.i920
  %1301 = add i64 %1300, 4
  store i64 %1301, i64* %PC.i920
  %1302 = inttoptr i64 %1299 to i64*
  %1303 = load i64, i64* %1302
  store i64 %1303, i64* %RDX.i922, align 8
  store %struct.Memory* %loadMem_43c0be, %struct.Memory** %MEMORY
  %loadMem_43c0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 1
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %1310 = bitcast %union.anon* %1309 to %struct.anon.2*
  %AL.i919 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1310, i32 0, i32 0
  %1311 = load i64, i64* %PC.i918
  %1312 = add i64 %1311, 2
  store i64 %1312, i64* %PC.i918
  store i8 0, i8* %AL.i919, align 1
  store %struct.Memory* %loadMem_43c0c2, %struct.Memory** %MEMORY
  %loadMem1_43c0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %1315 to i64*
  %1316 = load i64, i64* %PC.i917
  %1317 = add i64 %1316, -240468
  %1318 = load i64, i64* %PC.i917
  %1319 = add i64 %1318, 5
  %1320 = load i64, i64* %PC.i917
  %1321 = add i64 %1320, 5
  store i64 %1321, i64* %PC.i917
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1323 = load i64, i64* %1322, align 8
  %1324 = add i64 %1323, -8
  %1325 = inttoptr i64 %1324 to i64*
  store i64 %1319, i64* %1325
  store i64 %1324, i64* %1322, align 8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1317, i64* %1326, align 8
  store %struct.Memory* %loadMem1_43c0c4, %struct.Memory** %MEMORY
  %loadMem2_43c0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c0c4 = load i64, i64* %3
  %1327 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c0c4)
  store %struct.Memory* %1327, %struct.Memory** %MEMORY
  %loadMem_43c0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 1
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %EAX.i914 = bitcast %union.anon* %1333 to i32*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 15
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %1336 to i64*
  %1337 = load i64, i64* %RBP.i915
  %1338 = sub i64 %1337, 56
  %1339 = load i32, i32* %EAX.i914
  %1340 = zext i32 %1339 to i64
  %1341 = load i64, i64* %PC.i913
  %1342 = add i64 %1341, 3
  store i64 %1342, i64* %PC.i913
  %1343 = inttoptr i64 %1338 to i32*
  store i32 %1339, i32* %1343
  store %struct.Memory* %loadMem_43c0c9, %struct.Memory** %MEMORY
  br label %block_.L_43c0cc

block_.L_43c0cc:                                  ; preds = %block_43c0ac, %block_.L_43c09d
  %loadMem_43c0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 1
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 15
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %RBP.i912
  %1354 = sub i64 %1353, 16
  %1355 = load i64, i64* %PC.i910
  %1356 = add i64 %1355, 4
  store i64 %1356, i64* %PC.i910
  %1357 = inttoptr i64 %1354 to i64*
  %1358 = load i64, i64* %1357
  store i64 %1358, i64* %RAX.i911, align 8
  store %struct.Memory* %loadMem_43c0cc, %struct.Memory** %MEMORY
  %loadMem_43c0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 1
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RAX.i909 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %RAX.i909
  %1366 = add i64 %1365, 56
  %1367 = load i64, i64* %PC.i908
  %1368 = add i64 %1367, 5
  store i64 %1368, i64* %PC.i908
  %1369 = inttoptr i64 %1366 to i64*
  %1370 = load i64, i64* %1369
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1371, align 1
  %1372 = trunc i64 %1370 to i32
  %1373 = and i32 %1372, 255
  %1374 = call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1377, i8* %1378, align 1
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1379, align 1
  %1380 = icmp eq i64 %1370, 0
  %1381 = zext i1 %1380 to i8
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1381, i8* %1382, align 1
  %1383 = lshr i64 %1370, 63
  %1384 = trunc i64 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1384, i8* %1385, align 1
  %1386 = lshr i64 %1370, 63
  %1387 = xor i64 %1383, %1386
  %1388 = add i64 %1387, %1386
  %1389 = icmp eq i64 %1388, 2
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1390, i8* %1391, align 1
  store %struct.Memory* %loadMem_43c0d0, %struct.Memory** %MEMORY
  %loadMem_43c0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %PC.i907
  %1396 = add i64 %1395, 38
  %1397 = load i64, i64* %PC.i907
  %1398 = add i64 %1397, 6
  %1399 = load i64, i64* %PC.i907
  %1400 = add i64 %1399, 6
  store i64 %1400, i64* %PC.i907
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1402 = load i8, i8* %1401, align 1
  store i8 %1402, i8* %BRANCH_TAKEN, align 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1404 = icmp ne i8 %1402, 0
  %1405 = select i1 %1404, i64 %1396, i64 %1398
  store i64 %1405, i64* %1403, align 8
  store %struct.Memory* %loadMem_43c0d5, %struct.Memory** %MEMORY
  %loadBr_43c0d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c0d5 = icmp eq i8 %loadBr_43c0d5, 1
  br i1 %cmpBr_43c0d5, label %block_.L_43c0fb, label %block_43c0db

block_43c0db:                                     ; preds = %block_.L_43c0cc
  %loadMem_43c0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 9
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RSI.i906 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %PC.i905
  %1413 = add i64 %1412, 10
  store i64 %1413, i64* %PC.i905
  store i64 ptrtoint (%G__0x459cae_type* @G__0x459cae to i64), i64* %RSI.i906, align 8
  store %struct.Memory* %loadMem_43c0db, %struct.Memory** %MEMORY
  %loadMem_43c0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 11
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RDI.i903 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 15
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RBP.i904
  %1424 = sub i64 %1423, 8
  %1425 = load i64, i64* %PC.i902
  %1426 = add i64 %1425, 4
  store i64 %1426, i64* %PC.i902
  %1427 = inttoptr i64 %1424 to i64*
  %1428 = load i64, i64* %1427
  store i64 %1428, i64* %RDI.i903, align 8
  store %struct.Memory* %loadMem_43c0e5, %struct.Memory** %MEMORY
  %loadMem_43c0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 1
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RAX.i900 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %RBP.i901
  %1439 = sub i64 %1438, 16
  %1440 = load i64, i64* %PC.i899
  %1441 = add i64 %1440, 4
  store i64 %1441, i64* %PC.i899
  %1442 = inttoptr i64 %1439 to i64*
  %1443 = load i64, i64* %1442
  store i64 %1443, i64* %RAX.i900, align 8
  store %struct.Memory* %loadMem_43c0e9, %struct.Memory** %MEMORY
  %loadMem_43c0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 33
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 1
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 7
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RDX.i898 = bitcast %union.anon* %1452 to i64*
  %1453 = load i64, i64* %RAX.i897
  %1454 = add i64 %1453, 56
  %1455 = load i64, i64* %PC.i896
  %1456 = add i64 %1455, 4
  store i64 %1456, i64* %PC.i896
  %1457 = inttoptr i64 %1454 to i64*
  %1458 = load i64, i64* %1457
  store i64 %1458, i64* %RDX.i898, align 8
  store %struct.Memory* %loadMem_43c0ed, %struct.Memory** %MEMORY
  %loadMem_43c0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 1
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %1465 = bitcast %union.anon* %1464 to %struct.anon.2*
  %AL.i895 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1465, i32 0, i32 0
  %1466 = load i64, i64* %PC.i894
  %1467 = add i64 %1466, 2
  store i64 %1467, i64* %PC.i894
  store i8 0, i8* %AL.i895, align 1
  store %struct.Memory* %loadMem_43c0f1, %struct.Memory** %MEMORY
  %loadMem1_43c0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %PC.i893
  %1472 = add i64 %1471, -240515
  %1473 = load i64, i64* %PC.i893
  %1474 = add i64 %1473, 5
  %1475 = load i64, i64* %PC.i893
  %1476 = add i64 %1475, 5
  store i64 %1476, i64* %PC.i893
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1478 = load i64, i64* %1477, align 8
  %1479 = add i64 %1478, -8
  %1480 = inttoptr i64 %1479 to i64*
  store i64 %1474, i64* %1480
  store i64 %1479, i64* %1477, align 8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1472, i64* %1481, align 8
  store %struct.Memory* %loadMem1_43c0f3, %struct.Memory** %MEMORY
  %loadMem2_43c0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c0f3 = load i64, i64* %3
  %1482 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c0f3)
  store %struct.Memory* %1482, %struct.Memory** %MEMORY
  %loadMem_43c0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %EAX.i888 = bitcast %union.anon* %1488 to i32*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 15
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RBP.i889
  %1493 = sub i64 %1492, 60
  %1494 = load i32, i32* %EAX.i888
  %1495 = zext i32 %1494 to i64
  %1496 = load i64, i64* %PC.i887
  %1497 = add i64 %1496, 3
  store i64 %1497, i64* %PC.i887
  %1498 = inttoptr i64 %1493 to i32*
  store i32 %1494, i32* %1498
  store %struct.Memory* %loadMem_43c0f8, %struct.Memory** %MEMORY
  br label %block_.L_43c0fb

block_.L_43c0fb:                                  ; preds = %block_43c0db, %block_.L_43c0cc
  %loadMem_43c0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RAX.i885 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 15
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RBP.i886 = bitcast %union.anon* %1507 to i64*
  %1508 = load i64, i64* %RBP.i886
  %1509 = sub i64 %1508, 16
  %1510 = load i64, i64* %PC.i884
  %1511 = add i64 %1510, 4
  store i64 %1511, i64* %PC.i884
  %1512 = inttoptr i64 %1509 to i64*
  %1513 = load i64, i64* %1512
  store i64 %1513, i64* %RAX.i885, align 8
  store %struct.Memory* %loadMem_43c0fb, %struct.Memory** %MEMORY
  %loadMem_43c0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RAX.i883
  %1521 = add i64 %1520, 48
  %1522 = load i64, i64* %PC.i882
  %1523 = add i64 %1522, 5
  store i64 %1523, i64* %PC.i882
  %1524 = inttoptr i64 %1521 to i64*
  %1525 = load i64, i64* %1524
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1526, align 1
  %1527 = trunc i64 %1525 to i32
  %1528 = and i32 %1527, 255
  %1529 = call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1532, i8* %1533, align 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1534, align 1
  %1535 = icmp eq i64 %1525, 0
  %1536 = zext i1 %1535 to i8
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1536, i8* %1537, align 1
  %1538 = lshr i64 %1525, 63
  %1539 = trunc i64 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1539, i8* %1540, align 1
  %1541 = lshr i64 %1525, 63
  %1542 = xor i64 %1538, %1541
  %1543 = add i64 %1542, %1541
  %1544 = icmp eq i64 %1543, 2
  %1545 = zext i1 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1545, i8* %1546, align 1
  store %struct.Memory* %loadMem_43c0ff, %struct.Memory** %MEMORY
  %loadMem_43c104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 33
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %PC.i881
  %1551 = add i64 %1550, 38
  %1552 = load i64, i64* %PC.i881
  %1553 = add i64 %1552, 6
  %1554 = load i64, i64* %PC.i881
  %1555 = add i64 %1554, 6
  store i64 %1555, i64* %PC.i881
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1557 = load i8, i8* %1556, align 1
  store i8 %1557, i8* %BRANCH_TAKEN, align 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1559 = icmp ne i8 %1557, 0
  %1560 = select i1 %1559, i64 %1551, i64 %1553
  store i64 %1560, i64* %1558, align 8
  store %struct.Memory* %loadMem_43c104, %struct.Memory** %MEMORY
  %loadBr_43c104 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c104 = icmp eq i8 %loadBr_43c104, 1
  br i1 %cmpBr_43c104, label %block_.L_43c12a, label %block_43c10a

block_43c10a:                                     ; preds = %block_.L_43c0fb
  %loadMem_43c10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 9
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RSI.i880 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %PC.i879
  %1568 = add i64 %1567, 10
  store i64 %1568, i64* %PC.i879
  store i64 ptrtoint (%G__0x459cb7_type* @G__0x459cb7 to i64), i64* %RSI.i880, align 8
  store %struct.Memory* %loadMem_43c10a, %struct.Memory** %MEMORY
  %loadMem_43c114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 11
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RDI.i877 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 15
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RBP.i878
  %1579 = sub i64 %1578, 8
  %1580 = load i64, i64* %PC.i876
  %1581 = add i64 %1580, 4
  store i64 %1581, i64* %PC.i876
  %1582 = inttoptr i64 %1579 to i64*
  %1583 = load i64, i64* %1582
  store i64 %1583, i64* %RDI.i877, align 8
  store %struct.Memory* %loadMem_43c114, %struct.Memory** %MEMORY
  %loadMem_43c118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 1
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RAX.i874 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RBP.i875
  %1594 = sub i64 %1593, 16
  %1595 = load i64, i64* %PC.i873
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %PC.i873
  %1597 = inttoptr i64 %1594 to i64*
  %1598 = load i64, i64* %1597
  store i64 %1598, i64* %RAX.i874, align 8
  store %struct.Memory* %loadMem_43c118, %struct.Memory** %MEMORY
  %loadMem_43c11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RAX.i871 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 7
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RDX.i872 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RAX.i871
  %1609 = add i64 %1608, 48
  %1610 = load i64, i64* %PC.i870
  %1611 = add i64 %1610, 4
  store i64 %1611, i64* %PC.i870
  %1612 = inttoptr i64 %1609 to i64*
  %1613 = load i64, i64* %1612
  store i64 %1613, i64* %RDX.i872, align 8
  store %struct.Memory* %loadMem_43c11c, %struct.Memory** %MEMORY
  %loadMem_43c120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 1
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %1620 = bitcast %union.anon* %1619 to %struct.anon.2*
  %AL.i869 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1620, i32 0, i32 0
  %1621 = load i64, i64* %PC.i868
  %1622 = add i64 %1621, 2
  store i64 %1622, i64* %PC.i868
  store i8 0, i8* %AL.i869, align 1
  store %struct.Memory* %loadMem_43c120, %struct.Memory** %MEMORY
  %loadMem1_43c122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1625 to i64*
  %1626 = load i64, i64* %PC.i867
  %1627 = add i64 %1626, -240562
  %1628 = load i64, i64* %PC.i867
  %1629 = add i64 %1628, 5
  %1630 = load i64, i64* %PC.i867
  %1631 = add i64 %1630, 5
  store i64 %1631, i64* %PC.i867
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1633 = load i64, i64* %1632, align 8
  %1634 = add i64 %1633, -8
  %1635 = inttoptr i64 %1634 to i64*
  store i64 %1629, i64* %1635
  store i64 %1634, i64* %1632, align 8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1627, i64* %1636, align 8
  store %struct.Memory* %loadMem1_43c122, %struct.Memory** %MEMORY
  %loadMem2_43c122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c122 = load i64, i64* %3
  %1637 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c122)
  store %struct.Memory* %1637, %struct.Memory** %MEMORY
  %loadMem_43c127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 1
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %EAX.i862 = bitcast %union.anon* %1643 to i32*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 15
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RBP.i863
  %1648 = sub i64 %1647, 64
  %1649 = load i32, i32* %EAX.i862
  %1650 = zext i32 %1649 to i64
  %1651 = load i64, i64* %PC.i861
  %1652 = add i64 %1651, 3
  store i64 %1652, i64* %PC.i861
  %1653 = inttoptr i64 %1648 to i32*
  store i32 %1649, i32* %1653
  store %struct.Memory* %loadMem_43c127, %struct.Memory** %MEMORY
  br label %block_.L_43c12a

block_.L_43c12a:                                  ; preds = %block_43c10a, %block_.L_43c0fb
  %loadMem_43c12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 1
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 15
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %RBP.i860
  %1664 = sub i64 %1663, 16
  %1665 = load i64, i64* %PC.i858
  %1666 = add i64 %1665, 4
  store i64 %1666, i64* %PC.i858
  %1667 = inttoptr i64 %1664 to i64*
  %1668 = load i64, i64* %1667
  store i64 %1668, i64* %RAX.i859, align 8
  store %struct.Memory* %loadMem_43c12a, %struct.Memory** %MEMORY
  %loadMem_43c12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 33
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 1
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %RAX.i857
  %1676 = add i64 %1675, 64
  %1677 = load i64, i64* %PC.i856
  %1678 = add i64 %1677, 5
  store i64 %1678, i64* %PC.i856
  %1679 = inttoptr i64 %1676 to i64*
  %1680 = load i64, i64* %1679
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1681, align 1
  %1682 = trunc i64 %1680 to i32
  %1683 = and i32 %1682, 255
  %1684 = call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1687, i8* %1688, align 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1689, align 1
  %1690 = icmp eq i64 %1680, 0
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i64 %1680, 63
  %1694 = trunc i64 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1694, i8* %1695, align 1
  %1696 = lshr i64 %1680, 63
  %1697 = xor i64 %1693, %1696
  %1698 = add i64 %1697, %1696
  %1699 = icmp eq i64 %1698, 2
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1700, i8* %1701, align 1
  store %struct.Memory* %loadMem_43c12e, %struct.Memory** %MEMORY
  %loadMem_43c133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %PC.i855
  %1706 = add i64 %1705, 38
  %1707 = load i64, i64* %PC.i855
  %1708 = add i64 %1707, 6
  %1709 = load i64, i64* %PC.i855
  %1710 = add i64 %1709, 6
  store i64 %1710, i64* %PC.i855
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1712 = load i8, i8* %1711, align 1
  store i8 %1712, i8* %BRANCH_TAKEN, align 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1714 = icmp ne i8 %1712, 0
  %1715 = select i1 %1714, i64 %1706, i64 %1708
  store i64 %1715, i64* %1713, align 8
  store %struct.Memory* %loadMem_43c133, %struct.Memory** %MEMORY
  %loadBr_43c133 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c133 = icmp eq i8 %loadBr_43c133, 1
  br i1 %cmpBr_43c133, label %block_.L_43c159, label %block_43c139

block_43c139:                                     ; preds = %block_.L_43c12a
  %loadMem_43c139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 9
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RSI.i854 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %PC.i853
  %1723 = add i64 %1722, 10
  store i64 %1723, i64* %PC.i853
  store i64 ptrtoint (%G__0x459cc0_type* @G__0x459cc0 to i64), i64* %RSI.i854, align 8
  store %struct.Memory* %loadMem_43c139, %struct.Memory** %MEMORY
  %loadMem_43c143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 11
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RDI.i851 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 15
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %RBP.i852
  %1734 = sub i64 %1733, 8
  %1735 = load i64, i64* %PC.i850
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %PC.i850
  %1737 = inttoptr i64 %1734 to i64*
  %1738 = load i64, i64* %1737
  store i64 %1738, i64* %RDI.i851, align 8
  store %struct.Memory* %loadMem_43c143, %struct.Memory** %MEMORY
  %loadMem_43c147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 1
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RAX.i848 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 15
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %RBP.i849
  %1749 = sub i64 %1748, 16
  %1750 = load i64, i64* %PC.i847
  %1751 = add i64 %1750, 4
  store i64 %1751, i64* %PC.i847
  %1752 = inttoptr i64 %1749 to i64*
  %1753 = load i64, i64* %1752
  store i64 %1753, i64* %RAX.i848, align 8
  store %struct.Memory* %loadMem_43c147, %struct.Memory** %MEMORY
  %loadMem_43c14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 1
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RAX.i845 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 7
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %RAX.i845
  %1764 = add i64 %1763, 64
  %1765 = load i64, i64* %PC.i844
  %1766 = add i64 %1765, 4
  store i64 %1766, i64* %PC.i844
  %1767 = inttoptr i64 %1764 to i64*
  %1768 = load i64, i64* %1767
  store i64 %1768, i64* %RDX.i846, align 8
  store %struct.Memory* %loadMem_43c14b, %struct.Memory** %MEMORY
  %loadMem_43c14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 1
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %1775 = bitcast %union.anon* %1774 to %struct.anon.2*
  %AL.i843 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1775, i32 0, i32 0
  %1776 = load i64, i64* %PC.i842
  %1777 = add i64 %1776, 2
  store i64 %1777, i64* %PC.i842
  store i8 0, i8* %AL.i843, align 1
  store %struct.Memory* %loadMem_43c14f, %struct.Memory** %MEMORY
  %loadMem1_43c151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1780 to i64*
  %1781 = load i64, i64* %PC.i841
  %1782 = add i64 %1781, -240609
  %1783 = load i64, i64* %PC.i841
  %1784 = add i64 %1783, 5
  %1785 = load i64, i64* %PC.i841
  %1786 = add i64 %1785, 5
  store i64 %1786, i64* %PC.i841
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1788 = load i64, i64* %1787, align 8
  %1789 = add i64 %1788, -8
  %1790 = inttoptr i64 %1789 to i64*
  store i64 %1784, i64* %1790
  store i64 %1789, i64* %1787, align 8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1782, i64* %1791, align 8
  store %struct.Memory* %loadMem1_43c151, %struct.Memory** %MEMORY
  %loadMem2_43c151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c151 = load i64, i64* %3
  %1792 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c151)
  store %struct.Memory* %1792, %struct.Memory** %MEMORY
  %loadMem_43c156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 33
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 1
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %EAX.i836 = bitcast %union.anon* %1798 to i32*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 15
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %RBP.i837
  %1803 = sub i64 %1802, 68
  %1804 = load i32, i32* %EAX.i836
  %1805 = zext i32 %1804 to i64
  %1806 = load i64, i64* %PC.i835
  %1807 = add i64 %1806, 3
  store i64 %1807, i64* %PC.i835
  %1808 = inttoptr i64 %1803 to i32*
  store i32 %1804, i32* %1808
  store %struct.Memory* %loadMem_43c156, %struct.Memory** %MEMORY
  br label %block_.L_43c159

block_.L_43c159:                                  ; preds = %block_43c139, %block_.L_43c12a
  %loadMem_43c159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 15
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RBP.i834
  %1819 = sub i64 %1818, 16
  %1820 = load i64, i64* %PC.i832
  %1821 = add i64 %1820, 4
  store i64 %1821, i64* %PC.i832
  %1822 = inttoptr i64 %1819 to i64*
  %1823 = load i64, i64* %1822
  store i64 %1823, i64* %RAX.i833, align 8
  store %struct.Memory* %loadMem_43c159, %struct.Memory** %MEMORY
  %loadMem_43c15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 1
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RAX.i831 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RAX.i831
  %1831 = add i64 %1830, 160
  %1832 = load i64, i64* %PC.i830
  %1833 = add i64 %1832, 7
  store i64 %1833, i64* %PC.i830
  %1834 = inttoptr i64 %1831 to i32*
  %1835 = load i32, i32* %1834
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1836, align 1
  %1837 = and i32 %1835, 255
  %1838 = call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1841, i8* %1842, align 1
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1843, align 1
  %1844 = icmp eq i32 %1835, 0
  %1845 = zext i1 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1845, i8* %1846, align 1
  %1847 = lshr i32 %1835, 31
  %1848 = trunc i32 %1847 to i8
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1848, i8* %1849, align 1
  %1850 = lshr i32 %1835, 31
  %1851 = xor i32 %1847, %1850
  %1852 = add i32 %1851, %1850
  %1853 = icmp eq i32 %1852, 2
  %1854 = zext i1 %1853 to i8
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1854, i8* %1855, align 1
  store %struct.Memory* %loadMem_43c15d, %struct.Memory** %MEMORY
  %loadMem_43c164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %PC.i829
  %1860 = add i64 %1859, 76
  %1861 = load i64, i64* %PC.i829
  %1862 = add i64 %1861, 6
  %1863 = load i64, i64* %PC.i829
  %1864 = add i64 %1863, 6
  store i64 %1864, i64* %PC.i829
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1866 = load i8, i8* %1865, align 1
  store i8 %1866, i8* %BRANCH_TAKEN, align 1
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1868 = icmp ne i8 %1866, 0
  %1869 = select i1 %1868, i64 %1860, i64 %1862
  store i64 %1869, i64* %1867, align 8
  store %struct.Memory* %loadMem_43c164, %struct.Memory** %MEMORY
  %loadBr_43c164 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c164 = icmp eq i8 %loadBr_43c164, 1
  br i1 %cmpBr_43c164, label %block_.L_43c1b0, label %block_43c16a

block_43c16a:                                     ; preds = %block_.L_43c159
  %loadMem_43c16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 33
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 1
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %1875 to i64*
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 15
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %RBP.i828
  %1880 = sub i64 %1879, 16
  %1881 = load i64, i64* %PC.i826
  %1882 = add i64 %1881, 4
  store i64 %1882, i64* %PC.i826
  %1883 = inttoptr i64 %1880 to i64*
  %1884 = load i64, i64* %1883
  store i64 %1884, i64* %RAX.i827, align 8
  store %struct.Memory* %loadMem_43c16a, %struct.Memory** %MEMORY
  %loadMem_43c16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 1
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RAX.i825 = bitcast %union.anon* %1890 to i64*
  %1891 = load i64, i64* %RAX.i825
  %1892 = add i64 %1891, 164
  %1893 = load i64, i64* %PC.i824
  %1894 = add i64 %1893, 7
  store i64 %1894, i64* %PC.i824
  %1895 = inttoptr i64 %1892 to i32*
  %1896 = load i32, i32* %1895
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1897, align 1
  %1898 = and i32 %1896, 255
  %1899 = call i32 @llvm.ctpop.i32(i32 %1898)
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = xor i8 %1901, 1
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1902, i8* %1903, align 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1904, align 1
  %1905 = icmp eq i32 %1896, 0
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i32 %1896, 31
  %1909 = trunc i32 %1908 to i8
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1909, i8* %1910, align 1
  %1911 = lshr i32 %1896, 31
  %1912 = xor i32 %1908, %1911
  %1913 = add i32 %1912, %1911
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1915, i8* %1916, align 1
  store %struct.Memory* %loadMem_43c16e, %struct.Memory** %MEMORY
  %loadMem_43c175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1919 to i64*
  %1920 = load i64, i64* %PC.i823
  %1921 = add i64 %1920, 59
  %1922 = load i64, i64* %PC.i823
  %1923 = add i64 %1922, 6
  %1924 = load i64, i64* %PC.i823
  %1925 = add i64 %1924, 6
  store i64 %1925, i64* %PC.i823
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1927 = load i8, i8* %1926, align 1
  store i8 %1927, i8* %BRANCH_TAKEN, align 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1929 = icmp ne i8 %1927, 0
  %1930 = select i1 %1929, i64 %1921, i64 %1923
  store i64 %1930, i64* %1928, align 8
  store %struct.Memory* %loadMem_43c175, %struct.Memory** %MEMORY
  %loadBr_43c175 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c175 = icmp eq i8 %loadBr_43c175, 1
  br i1 %cmpBr_43c175, label %block_.L_43c1b0, label %block_43c17b

block_43c17b:                                     ; preds = %block_43c16a
  %loadMem_43c17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 9
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RSI.i822 = bitcast %union.anon* %1936 to i64*
  %1937 = load i64, i64* %PC.i821
  %1938 = add i64 %1937, 10
  store i64 %1938, i64* %PC.i821
  store i64 ptrtoint (%G__0x459cc9_type* @G__0x459cc9 to i64), i64* %RSI.i822, align 8
  store %struct.Memory* %loadMem_43c17b, %struct.Memory** %MEMORY
  %loadMem_43c185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 11
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RDI.i819 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RBP.i820
  %1949 = sub i64 %1948, 8
  %1950 = load i64, i64* %PC.i818
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i818
  %1952 = inttoptr i64 %1949 to i64*
  %1953 = load i64, i64* %1952
  store i64 %1953, i64* %RDI.i819, align 8
  store %struct.Memory* %loadMem_43c185, %struct.Memory** %MEMORY
  %loadMem_43c189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 1
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RAX.i816 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 15
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %1962 to i64*
  %1963 = load i64, i64* %RBP.i817
  %1964 = sub i64 %1963, 16
  %1965 = load i64, i64* %PC.i815
  %1966 = add i64 %1965, 4
  store i64 %1966, i64* %PC.i815
  %1967 = inttoptr i64 %1964 to i64*
  %1968 = load i64, i64* %1967
  store i64 %1968, i64* %RAX.i816, align 8
  store %struct.Memory* %loadMem_43c189, %struct.Memory** %MEMORY
  %loadMem_43c18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 33
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1971 to i64*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 1
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1976 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1975, i64 0, i64 0
  %YMM0.i814 = bitcast %union.VectorReg* %1976 to %"class.std::bitset"*
  %1977 = bitcast %"class.std::bitset"* %YMM0.i814 to i8*
  %1978 = load i64, i64* %RAX.i813
  %1979 = add i64 %1978, 136
  %1980 = load i64, i64* %PC.i812
  %1981 = add i64 %1980, 8
  store i64 %1981, i64* %PC.i812
  %1982 = inttoptr i64 %1979 to float*
  %1983 = load float, float* %1982
  %1984 = fpext float %1983 to double
  %1985 = bitcast i8* %1977 to double*
  store double %1984, double* %1985, align 1
  store %struct.Memory* %loadMem_43c18d, %struct.Memory** %MEMORY
  %loadMem_43c195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 1
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 15
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %RBP.i811
  %1996 = sub i64 %1995, 16
  %1997 = load i64, i64* %PC.i809
  %1998 = add i64 %1997, 4
  store i64 %1998, i64* %PC.i809
  %1999 = inttoptr i64 %1996 to i64*
  %2000 = load i64, i64* %1999
  store i64 %2000, i64* %RAX.i810, align 8
  store %struct.Memory* %loadMem_43c195, %struct.Memory** %MEMORY
  %loadMem_43c199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 1
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2007, i64 0, i64 1
  %YMM1.i808 = bitcast %union.VectorReg* %2008 to %"class.std::bitset"*
  %2009 = bitcast %"class.std::bitset"* %YMM1.i808 to i8*
  %2010 = load i64, i64* %RAX.i807
  %2011 = add i64 %2010, 140
  %2012 = load i64, i64* %PC.i806
  %2013 = add i64 %2012, 8
  store i64 %2013, i64* %PC.i806
  %2014 = inttoptr i64 %2011 to float*
  %2015 = load float, float* %2014
  %2016 = fpext float %2015 to double
  %2017 = bitcast i8* %2009 to double*
  store double %2016, double* %2017, align 1
  store %struct.Memory* %loadMem_43c199, %struct.Memory** %MEMORY
  %loadMem_43c1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 33
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 1
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %2024 = bitcast %union.anon* %2023 to %struct.anon.2*
  %AL.i805 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2024, i32 0, i32 0
  %2025 = load i64, i64* %PC.i804
  %2026 = add i64 %2025, 2
  store i64 %2026, i64* %PC.i804
  store i8 2, i8* %AL.i805, align 1
  store %struct.Memory* %loadMem_43c1a1, %struct.Memory** %MEMORY
  %loadMem1_43c1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %2029 to i64*
  %2030 = load i64, i64* %PC.i803
  %2031 = add i64 %2030, -240691
  %2032 = load i64, i64* %PC.i803
  %2033 = add i64 %2032, 5
  %2034 = load i64, i64* %PC.i803
  %2035 = add i64 %2034, 5
  store i64 %2035, i64* %PC.i803
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2037 = load i64, i64* %2036, align 8
  %2038 = add i64 %2037, -8
  %2039 = inttoptr i64 %2038 to i64*
  store i64 %2033, i64* %2039
  store i64 %2038, i64* %2036, align 8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2031, i64* %2040, align 8
  store %struct.Memory* %loadMem1_43c1a3, %struct.Memory** %MEMORY
  %loadMem2_43c1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c1a3 = load i64, i64* %3
  %2041 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c1a3)
  store %struct.Memory* %2041, %struct.Memory** %MEMORY
  %loadMem_43c1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 1
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %EAX.i799 = bitcast %union.anon* %2047 to i32*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 15
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RBP.i800 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %RBP.i800
  %2052 = sub i64 %2051, 72
  %2053 = load i32, i32* %EAX.i799
  %2054 = zext i32 %2053 to i64
  %2055 = load i64, i64* %PC.i798
  %2056 = add i64 %2055, 3
  store i64 %2056, i64* %PC.i798
  %2057 = inttoptr i64 %2052 to i32*
  store i32 %2053, i32* %2057
  store %struct.Memory* %loadMem_43c1a8, %struct.Memory** %MEMORY
  %loadMem_43c1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %PC.i797
  %2062 = add i64 %2061, 63
  %2063 = load i64, i64* %PC.i797
  %2064 = add i64 %2063, 5
  store i64 %2064, i64* %PC.i797
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2062, i64* %2065, align 8
  store %struct.Memory* %loadMem_43c1ab, %struct.Memory** %MEMORY
  br label %block_.L_43c1ea

block_.L_43c1b0:                                  ; preds = %block_43c16a, %block_.L_43c159
  %loadMem_43c1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 1
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 15
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %2074 to i64*
  %2075 = load i64, i64* %RBP.i796
  %2076 = sub i64 %2075, 16
  %2077 = load i64, i64* %PC.i794
  %2078 = add i64 %2077, 4
  store i64 %2078, i64* %PC.i794
  %2079 = inttoptr i64 %2076 to i64*
  %2080 = load i64, i64* %2079
  store i64 %2080, i64* %RAX.i795, align 8
  store %struct.Memory* %loadMem_43c1b0, %struct.Memory** %MEMORY
  %loadMem_43c1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 33
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %2083 to i64*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 1
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %2086 to i64*
  %2087 = load i64, i64* %RAX.i793
  %2088 = add i64 %2087, 160
  %2089 = load i64, i64* %PC.i792
  %2090 = add i64 %2089, 7
  store i64 %2090, i64* %PC.i792
  %2091 = inttoptr i64 %2088 to i32*
  %2092 = load i32, i32* %2091
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2093, align 1
  %2094 = and i32 %2092, 255
  %2095 = call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2098, i8* %2099, align 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2100, align 1
  %2101 = icmp eq i32 %2092, 0
  %2102 = zext i1 %2101 to i8
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2102, i8* %2103, align 1
  %2104 = lshr i32 %2092, 31
  %2105 = trunc i32 %2104 to i8
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2105, i8* %2106, align 1
  %2107 = lshr i32 %2092, 31
  %2108 = xor i32 %2104, %2107
  %2109 = add i32 %2108, %2107
  %2110 = icmp eq i32 %2109, 2
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2111, i8* %2112, align 1
  store %struct.Memory* %loadMem_43c1b4, %struct.Memory** %MEMORY
  %loadMem_43c1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %PC.i791
  %2117 = add i64 %2116, 42
  %2118 = load i64, i64* %PC.i791
  %2119 = add i64 %2118, 6
  %2120 = load i64, i64* %PC.i791
  %2121 = add i64 %2120, 6
  store i64 %2121, i64* %PC.i791
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2123 = load i8, i8* %2122, align 1
  store i8 %2123, i8* %BRANCH_TAKEN, align 1
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2125 = icmp ne i8 %2123, 0
  %2126 = select i1 %2125, i64 %2117, i64 %2119
  store i64 %2126, i64* %2124, align 8
  store %struct.Memory* %loadMem_43c1bb, %struct.Memory** %MEMORY
  %loadBr_43c1bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c1bb = icmp eq i8 %loadBr_43c1bb, 1
  br i1 %cmpBr_43c1bb, label %block_.L_43c1e5, label %block_43c1c1

block_43c1c1:                                     ; preds = %block_.L_43c1b0
  %loadMem_43c1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 9
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RSI.i790 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %PC.i789
  %2134 = add i64 %2133, 10
  store i64 %2134, i64* %PC.i789
  store i64 ptrtoint (%G__0x459cd9_type* @G__0x459cd9 to i64), i64* %RSI.i790, align 8
  store %struct.Memory* %loadMem_43c1c1, %struct.Memory** %MEMORY
  %loadMem_43c1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 11
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RDI.i787 = bitcast %union.anon* %2140 to i64*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 15
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %2143 to i64*
  %2144 = load i64, i64* %RBP.i788
  %2145 = sub i64 %2144, 8
  %2146 = load i64, i64* %PC.i786
  %2147 = add i64 %2146, 4
  store i64 %2147, i64* %PC.i786
  %2148 = inttoptr i64 %2145 to i64*
  %2149 = load i64, i64* %2148
  store i64 %2149, i64* %RDI.i787, align 8
  store %struct.Memory* %loadMem_43c1cb, %struct.Memory** %MEMORY
  %loadMem_43c1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 1
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 15
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %2158 to i64*
  %2159 = load i64, i64* %RBP.i785
  %2160 = sub i64 %2159, 16
  %2161 = load i64, i64* %PC.i783
  %2162 = add i64 %2161, 4
  store i64 %2162, i64* %PC.i783
  %2163 = inttoptr i64 %2160 to i64*
  %2164 = load i64, i64* %2163
  store i64 %2164, i64* %RAX.i784, align 8
  store %struct.Memory* %loadMem_43c1cf, %struct.Memory** %MEMORY
  %loadMem_43c1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 1
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2171, i64 0, i64 0
  %YMM0.i782 = bitcast %union.VectorReg* %2172 to %"class.std::bitset"*
  %2173 = bitcast %"class.std::bitset"* %YMM0.i782 to i8*
  %2174 = load i64, i64* %RAX.i781
  %2175 = add i64 %2174, 136
  %2176 = load i64, i64* %PC.i780
  %2177 = add i64 %2176, 8
  store i64 %2177, i64* %PC.i780
  %2178 = inttoptr i64 %2175 to float*
  %2179 = load float, float* %2178
  %2180 = fpext float %2179 to double
  %2181 = bitcast i8* %2173 to double*
  store double %2180, double* %2181, align 1
  store %struct.Memory* %loadMem_43c1d3, %struct.Memory** %MEMORY
  %loadMem_43c1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 1
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %2188 = bitcast %union.anon* %2187 to %struct.anon.2*
  %AL.i779 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2188, i32 0, i32 0
  %2189 = load i64, i64* %PC.i778
  %2190 = add i64 %2189, 2
  store i64 %2190, i64* %PC.i778
  store i8 1, i8* %AL.i779, align 1
  store %struct.Memory* %loadMem_43c1db, %struct.Memory** %MEMORY
  %loadMem1_43c1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 33
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %2193 to i64*
  %2194 = load i64, i64* %PC.i777
  %2195 = add i64 %2194, -240749
  %2196 = load i64, i64* %PC.i777
  %2197 = add i64 %2196, 5
  %2198 = load i64, i64* %PC.i777
  %2199 = add i64 %2198, 5
  store i64 %2199, i64* %PC.i777
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2201 = load i64, i64* %2200, align 8
  %2202 = add i64 %2201, -8
  %2203 = inttoptr i64 %2202 to i64*
  store i64 %2197, i64* %2203
  store i64 %2202, i64* %2200, align 8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2195, i64* %2204, align 8
  store %struct.Memory* %loadMem1_43c1dd, %struct.Memory** %MEMORY
  %loadMem2_43c1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c1dd = load i64, i64* %3
  %2205 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c1dd)
  store %struct.Memory* %2205, %struct.Memory** %MEMORY
  %loadMem_43c1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 33
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %2208 to i64*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 1
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %EAX.i773 = bitcast %union.anon* %2211 to i32*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 15
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %RBP.i774
  %2216 = sub i64 %2215, 76
  %2217 = load i32, i32* %EAX.i773
  %2218 = zext i32 %2217 to i64
  %2219 = load i64, i64* %PC.i772
  %2220 = add i64 %2219, 3
  store i64 %2220, i64* %PC.i772
  %2221 = inttoptr i64 %2216 to i32*
  store i32 %2217, i32* %2221
  store %struct.Memory* %loadMem_43c1e2, %struct.Memory** %MEMORY
  br label %block_.L_43c1e5

block_.L_43c1e5:                                  ; preds = %block_43c1c1, %block_.L_43c1b0
  %loadMem_43c1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %PC.i771
  %2226 = add i64 %2225, 5
  %2227 = load i64, i64* %PC.i771
  %2228 = add i64 %2227, 5
  store i64 %2228, i64* %PC.i771
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2226, i64* %2229, align 8
  store %struct.Memory* %loadMem_43c1e5, %struct.Memory** %MEMORY
  br label %block_.L_43c1ea

block_.L_43c1ea:                                  ; preds = %block_.L_43c1e5, %block_43c17b
  %loadMem_43c1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 33
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %2232 to i64*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 1
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 15
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RBP.i770
  %2240 = sub i64 %2239, 16
  %2241 = load i64, i64* %PC.i768
  %2242 = add i64 %2241, 4
  store i64 %2242, i64* %PC.i768
  %2243 = inttoptr i64 %2240 to i64*
  %2244 = load i64, i64* %2243
  store i64 %2244, i64* %RAX.i769, align 8
  store %struct.Memory* %loadMem_43c1ea, %struct.Memory** %MEMORY
  %loadMem_43c1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 1
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %RAX.i767
  %2252 = add i64 %2251, 168
  %2253 = load i64, i64* %PC.i766
  %2254 = add i64 %2253, 7
  store i64 %2254, i64* %PC.i766
  %2255 = inttoptr i64 %2252 to i32*
  %2256 = load i32, i32* %2255
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2257, align 1
  %2258 = and i32 %2256, 255
  %2259 = call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2262, i8* %2263, align 1
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2264, align 1
  %2265 = icmp eq i32 %2256, 0
  %2266 = zext i1 %2265 to i8
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2266, i8* %2267, align 1
  %2268 = lshr i32 %2256, 31
  %2269 = trunc i32 %2268 to i8
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2269, i8* %2270, align 1
  %2271 = lshr i32 %2256, 31
  %2272 = xor i32 %2268, %2271
  %2273 = add i32 %2272, %2271
  %2274 = icmp eq i32 %2273, 2
  %2275 = zext i1 %2274 to i8
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2275, i8* %2276, align 1
  store %struct.Memory* %loadMem_43c1ee, %struct.Memory** %MEMORY
  %loadMem_43c1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %PC.i765
  %2281 = add i64 %2280, 76
  %2282 = load i64, i64* %PC.i765
  %2283 = add i64 %2282, 6
  %2284 = load i64, i64* %PC.i765
  %2285 = add i64 %2284, 6
  store i64 %2285, i64* %PC.i765
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2287 = load i8, i8* %2286, align 1
  store i8 %2287, i8* %BRANCH_TAKEN, align 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2289 = icmp ne i8 %2287, 0
  %2290 = select i1 %2289, i64 %2281, i64 %2283
  store i64 %2290, i64* %2288, align 8
  store %struct.Memory* %loadMem_43c1f5, %struct.Memory** %MEMORY
  %loadBr_43c1f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c1f5 = icmp eq i8 %loadBr_43c1f5, 1
  br i1 %cmpBr_43c1f5, label %block_.L_43c241, label %block_43c1fb

block_43c1fb:                                     ; preds = %block_.L_43c1ea
  %loadMem_43c1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 1
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 15
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %2299 to i64*
  %2300 = load i64, i64* %RBP.i764
  %2301 = sub i64 %2300, 16
  %2302 = load i64, i64* %PC.i762
  %2303 = add i64 %2302, 4
  store i64 %2303, i64* %PC.i762
  %2304 = inttoptr i64 %2301 to i64*
  %2305 = load i64, i64* %2304
  store i64 %2305, i64* %RAX.i763, align 8
  store %struct.Memory* %loadMem_43c1fb, %struct.Memory** %MEMORY
  %loadMem_43c1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 33
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 1
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %2311 to i64*
  %2312 = load i64, i64* %RAX.i761
  %2313 = add i64 %2312, 172
  %2314 = load i64, i64* %PC.i760
  %2315 = add i64 %2314, 7
  store i64 %2315, i64* %PC.i760
  %2316 = inttoptr i64 %2313 to i32*
  %2317 = load i32, i32* %2316
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2318, align 1
  %2319 = and i32 %2317, 255
  %2320 = call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2323, i8* %2324, align 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2325, align 1
  %2326 = icmp eq i32 %2317, 0
  %2327 = zext i1 %2326 to i8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2327, i8* %2328, align 1
  %2329 = lshr i32 %2317, 31
  %2330 = trunc i32 %2329 to i8
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2330, i8* %2331, align 1
  %2332 = lshr i32 %2317, 31
  %2333 = xor i32 %2329, %2332
  %2334 = add i32 %2333, %2332
  %2335 = icmp eq i32 %2334, 2
  %2336 = zext i1 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2336, i8* %2337, align 1
  store %struct.Memory* %loadMem_43c1ff, %struct.Memory** %MEMORY
  %loadMem_43c206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %PC.i759
  %2342 = add i64 %2341, 59
  %2343 = load i64, i64* %PC.i759
  %2344 = add i64 %2343, 6
  %2345 = load i64, i64* %PC.i759
  %2346 = add i64 %2345, 6
  store i64 %2346, i64* %PC.i759
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2348 = load i8, i8* %2347, align 1
  store i8 %2348, i8* %BRANCH_TAKEN, align 1
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2350 = icmp ne i8 %2348, 0
  %2351 = select i1 %2350, i64 %2342, i64 %2344
  store i64 %2351, i64* %2349, align 8
  store %struct.Memory* %loadMem_43c206, %struct.Memory** %MEMORY
  %loadBr_43c206 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c206 = icmp eq i8 %loadBr_43c206, 1
  br i1 %cmpBr_43c206, label %block_.L_43c241, label %block_43c20c

block_43c20c:                                     ; preds = %block_43c1fb
  %loadMem_43c20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 9
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RSI.i758 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %PC.i757
  %2359 = add i64 %2358, 10
  store i64 %2359, i64* %PC.i757
  store i64 ptrtoint (%G__0x459ce4_type* @G__0x459ce4 to i64), i64* %RSI.i758, align 8
  store %struct.Memory* %loadMem_43c20c, %struct.Memory** %MEMORY
  %loadMem_43c216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 11
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RDI.i755 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 15
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %2368 to i64*
  %2369 = load i64, i64* %RBP.i756
  %2370 = sub i64 %2369, 8
  %2371 = load i64, i64* %PC.i754
  %2372 = add i64 %2371, 4
  store i64 %2372, i64* %PC.i754
  %2373 = inttoptr i64 %2370 to i64*
  %2374 = load i64, i64* %2373
  store i64 %2374, i64* %RDI.i755, align 8
  store %struct.Memory* %loadMem_43c216, %struct.Memory** %MEMORY
  %loadMem_43c21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 1
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 15
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RBP.i753
  %2385 = sub i64 %2384, 16
  %2386 = load i64, i64* %PC.i751
  %2387 = add i64 %2386, 4
  store i64 %2387, i64* %PC.i751
  %2388 = inttoptr i64 %2385 to i64*
  %2389 = load i64, i64* %2388
  store i64 %2389, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_43c21a, %struct.Memory** %MEMORY
  %loadMem_43c21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 1
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %2395 to i64*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2397 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2396, i64 0, i64 0
  %YMM0.i750 = bitcast %union.VectorReg* %2397 to %"class.std::bitset"*
  %2398 = bitcast %"class.std::bitset"* %YMM0.i750 to i8*
  %2399 = load i64, i64* %RAX.i749
  %2400 = add i64 %2399, 144
  %2401 = load i64, i64* %PC.i748
  %2402 = add i64 %2401, 8
  store i64 %2402, i64* %PC.i748
  %2403 = inttoptr i64 %2400 to float*
  %2404 = load float, float* %2403
  %2405 = fpext float %2404 to double
  %2406 = bitcast i8* %2398 to double*
  store double %2405, double* %2406, align 1
  store %struct.Memory* %loadMem_43c21e, %struct.Memory** %MEMORY
  %loadMem_43c226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 1
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 15
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %RBP.i747
  %2417 = sub i64 %2416, 16
  %2418 = load i64, i64* %PC.i745
  %2419 = add i64 %2418, 4
  store i64 %2419, i64* %PC.i745
  %2420 = inttoptr i64 %2417 to i64*
  %2421 = load i64, i64* %2420
  store i64 %2421, i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_43c226, %struct.Memory** %MEMORY
  %loadMem_43c22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 1
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2428, i64 0, i64 1
  %YMM1.i744 = bitcast %union.VectorReg* %2429 to %"class.std::bitset"*
  %2430 = bitcast %"class.std::bitset"* %YMM1.i744 to i8*
  %2431 = load i64, i64* %RAX.i743
  %2432 = add i64 %2431, 148
  %2433 = load i64, i64* %PC.i742
  %2434 = add i64 %2433, 8
  store i64 %2434, i64* %PC.i742
  %2435 = inttoptr i64 %2432 to float*
  %2436 = load float, float* %2435
  %2437 = fpext float %2436 to double
  %2438 = bitcast i8* %2430 to double*
  store double %2437, double* %2438, align 1
  store %struct.Memory* %loadMem_43c22a, %struct.Memory** %MEMORY
  %loadMem_43c232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 1
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %2445 = bitcast %union.anon* %2444 to %struct.anon.2*
  %AL.i741 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2445, i32 0, i32 0
  %2446 = load i64, i64* %PC.i740
  %2447 = add i64 %2446, 2
  store i64 %2447, i64* %PC.i740
  store i8 2, i8* %AL.i741, align 1
  store %struct.Memory* %loadMem_43c232, %struct.Memory** %MEMORY
  %loadMem1_43c234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2450 to i64*
  %2451 = load i64, i64* %PC.i739
  %2452 = add i64 %2451, -240836
  %2453 = load i64, i64* %PC.i739
  %2454 = add i64 %2453, 5
  %2455 = load i64, i64* %PC.i739
  %2456 = add i64 %2455, 5
  store i64 %2456, i64* %PC.i739
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2458 = load i64, i64* %2457, align 8
  %2459 = add i64 %2458, -8
  %2460 = inttoptr i64 %2459 to i64*
  store i64 %2454, i64* %2460
  store i64 %2459, i64* %2457, align 8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2452, i64* %2461, align 8
  store %struct.Memory* %loadMem1_43c234, %struct.Memory** %MEMORY
  %loadMem2_43c234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c234 = load i64, i64* %3
  %2462 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c234)
  store %struct.Memory* %2462, %struct.Memory** %MEMORY
  %loadMem_43c239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %EAX.i734 = bitcast %union.anon* %2468 to i32*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 15
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RBP.i735
  %2473 = sub i64 %2472, 80
  %2474 = load i32, i32* %EAX.i734
  %2475 = zext i32 %2474 to i64
  %2476 = load i64, i64* %PC.i733
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %PC.i733
  %2478 = inttoptr i64 %2473 to i32*
  store i32 %2474, i32* %2478
  store %struct.Memory* %loadMem_43c239, %struct.Memory** %MEMORY
  %loadMem_43c23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 33
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2481 to i64*
  %2482 = load i64, i64* %PC.i732
  %2483 = add i64 %2482, 63
  %2484 = load i64, i64* %PC.i732
  %2485 = add i64 %2484, 5
  store i64 %2485, i64* %PC.i732
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2483, i64* %2486, align 8
  store %struct.Memory* %loadMem_43c23c, %struct.Memory** %MEMORY
  br label %block_.L_43c27b

block_.L_43c241:                                  ; preds = %block_43c1fb, %block_.L_43c1ea
  %loadMem_43c241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i731
  %2497 = sub i64 %2496, 16
  %2498 = load i64, i64* %PC.i729
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %PC.i729
  %2500 = inttoptr i64 %2497 to i64*
  %2501 = load i64, i64* %2500
  store i64 %2501, i64* %RAX.i730, align 8
  store %struct.Memory* %loadMem_43c241, %struct.Memory** %MEMORY
  %loadMem_43c245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 33
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 1
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RAX.i728
  %2509 = add i64 %2508, 168
  %2510 = load i64, i64* %PC.i727
  %2511 = add i64 %2510, 7
  store i64 %2511, i64* %PC.i727
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
  store %struct.Memory* %loadMem_43c245, %struct.Memory** %MEMORY
  %loadMem_43c24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %PC.i726
  %2538 = add i64 %2537, 42
  %2539 = load i64, i64* %PC.i726
  %2540 = add i64 %2539, 6
  %2541 = load i64, i64* %PC.i726
  %2542 = add i64 %2541, 6
  store i64 %2542, i64* %PC.i726
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2544 = load i8, i8* %2543, align 1
  store i8 %2544, i8* %BRANCH_TAKEN, align 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2546 = icmp ne i8 %2544, 0
  %2547 = select i1 %2546, i64 %2538, i64 %2540
  store i64 %2547, i64* %2545, align 8
  store %struct.Memory* %loadMem_43c24c, %struct.Memory** %MEMORY
  %loadBr_43c24c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c24c = icmp eq i8 %loadBr_43c24c, 1
  br i1 %cmpBr_43c24c, label %block_.L_43c276, label %block_43c252

block_43c252:                                     ; preds = %block_.L_43c241
  %loadMem_43c252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 9
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RSI.i725 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %PC.i724
  %2555 = add i64 %2554, 10
  store i64 %2555, i64* %PC.i724
  store i64 ptrtoint (%G__0x459cf4_type* @G__0x459cf4 to i64), i64* %RSI.i725, align 8
  store %struct.Memory* %loadMem_43c252, %struct.Memory** %MEMORY
  %loadMem_43c25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 11
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RDI.i722 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 15
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %2564 to i64*
  %2565 = load i64, i64* %RBP.i723
  %2566 = sub i64 %2565, 8
  %2567 = load i64, i64* %PC.i721
  %2568 = add i64 %2567, 4
  store i64 %2568, i64* %PC.i721
  %2569 = inttoptr i64 %2566 to i64*
  %2570 = load i64, i64* %2569
  store i64 %2570, i64* %RDI.i722, align 8
  store %struct.Memory* %loadMem_43c25c, %struct.Memory** %MEMORY
  %loadMem_43c260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 33
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 1
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 15
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %RBP.i720
  %2581 = sub i64 %2580, 16
  %2582 = load i64, i64* %PC.i718
  %2583 = add i64 %2582, 4
  store i64 %2583, i64* %PC.i718
  %2584 = inttoptr i64 %2581 to i64*
  %2585 = load i64, i64* %2584
  store i64 %2585, i64* %RAX.i719, align 8
  store %struct.Memory* %loadMem_43c260, %struct.Memory** %MEMORY
  %loadMem_43c264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 1
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RAX.i716 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2592, i64 0, i64 0
  %YMM0.i717 = bitcast %union.VectorReg* %2593 to %"class.std::bitset"*
  %2594 = bitcast %"class.std::bitset"* %YMM0.i717 to i8*
  %2595 = load i64, i64* %RAX.i716
  %2596 = add i64 %2595, 144
  %2597 = load i64, i64* %PC.i715
  %2598 = add i64 %2597, 8
  store i64 %2598, i64* %PC.i715
  %2599 = inttoptr i64 %2596 to float*
  %2600 = load float, float* %2599
  %2601 = fpext float %2600 to double
  %2602 = bitcast i8* %2594 to double*
  store double %2601, double* %2602, align 1
  store %struct.Memory* %loadMem_43c264, %struct.Memory** %MEMORY
  %loadMem_43c26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 1
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %2609 = bitcast %union.anon* %2608 to %struct.anon.2*
  %AL.i714 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2609, i32 0, i32 0
  %2610 = load i64, i64* %PC.i713
  %2611 = add i64 %2610, 2
  store i64 %2611, i64* %PC.i713
  store i8 1, i8* %AL.i714, align 1
  store %struct.Memory* %loadMem_43c26c, %struct.Memory** %MEMORY
  %loadMem1_43c26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %PC.i712
  %2616 = add i64 %2615, -240894
  %2617 = load i64, i64* %PC.i712
  %2618 = add i64 %2617, 5
  %2619 = load i64, i64* %PC.i712
  %2620 = add i64 %2619, 5
  store i64 %2620, i64* %PC.i712
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2622 = load i64, i64* %2621, align 8
  %2623 = add i64 %2622, -8
  %2624 = inttoptr i64 %2623 to i64*
  store i64 %2618, i64* %2624
  store i64 %2623, i64* %2621, align 8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2616, i64* %2625, align 8
  store %struct.Memory* %loadMem1_43c26e, %struct.Memory** %MEMORY
  %loadMem2_43c26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c26e = load i64, i64* %3
  %2626 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c26e)
  store %struct.Memory* %2626, %struct.Memory** %MEMORY
  %loadMem_43c273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 1
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %EAX.i709 = bitcast %union.anon* %2632 to i32*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 15
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %RBP.i710
  %2637 = sub i64 %2636, 84
  %2638 = load i32, i32* %EAX.i709
  %2639 = zext i32 %2638 to i64
  %2640 = load i64, i64* %PC.i708
  %2641 = add i64 %2640, 3
  store i64 %2641, i64* %PC.i708
  %2642 = inttoptr i64 %2637 to i32*
  store i32 %2638, i32* %2642
  store %struct.Memory* %loadMem_43c273, %struct.Memory** %MEMORY
  br label %block_.L_43c276

block_.L_43c276:                                  ; preds = %block_43c252, %block_.L_43c241
  %loadMem_43c276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2645 to i64*
  %2646 = load i64, i64* %PC.i707
  %2647 = add i64 %2646, 5
  %2648 = load i64, i64* %PC.i707
  %2649 = add i64 %2648, 5
  store i64 %2649, i64* %PC.i707
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2647, i64* %2650, align 8
  store %struct.Memory* %loadMem_43c276, %struct.Memory** %MEMORY
  br label %block_.L_43c27b

block_.L_43c27b:                                  ; preds = %block_.L_43c276, %block_43c20c
  %loadMem_43c27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 1
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 15
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %2659 to i64*
  %2660 = load i64, i64* %RBP.i706
  %2661 = sub i64 %2660, 16
  %2662 = load i64, i64* %PC.i704
  %2663 = add i64 %2662, 4
  store i64 %2663, i64* %PC.i704
  %2664 = inttoptr i64 %2661 to i64*
  %2665 = load i64, i64* %2664
  store i64 %2665, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_43c27b, %struct.Memory** %MEMORY
  %loadMem_43c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 1
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %RAX.i703
  %2673 = add i64 %2672, 152
  %2674 = load i64, i64* %PC.i702
  %2675 = add i64 %2674, 7
  store i64 %2675, i64* %PC.i702
  %2676 = inttoptr i64 %2673 to i32*
  %2677 = load i32, i32* %2676
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2678, align 1
  %2679 = and i32 %2677, 255
  %2680 = call i32 @llvm.ctpop.i32(i32 %2679)
  %2681 = trunc i32 %2680 to i8
  %2682 = and i8 %2681, 1
  %2683 = xor i8 %2682, 1
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2683, i8* %2684, align 1
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2685, align 1
  %2686 = icmp eq i32 %2677, 0
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2687, i8* %2688, align 1
  %2689 = lshr i32 %2677, 31
  %2690 = trunc i32 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2690, i8* %2691, align 1
  %2692 = lshr i32 %2677, 31
  %2693 = xor i32 %2689, %2692
  %2694 = add i32 %2693, %2692
  %2695 = icmp eq i32 %2694, 2
  %2696 = zext i1 %2695 to i8
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2696, i8* %2697, align 1
  store %struct.Memory* %loadMem_43c27f, %struct.Memory** %MEMORY
  %loadMem_43c286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %PC.i701
  %2702 = add i64 %2701, 76
  %2703 = load i64, i64* %PC.i701
  %2704 = add i64 %2703, 6
  %2705 = load i64, i64* %PC.i701
  %2706 = add i64 %2705, 6
  store i64 %2706, i64* %PC.i701
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2708 = load i8, i8* %2707, align 1
  store i8 %2708, i8* %BRANCH_TAKEN, align 1
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2710 = icmp ne i8 %2708, 0
  %2711 = select i1 %2710, i64 %2702, i64 %2704
  store i64 %2711, i64* %2709, align 8
  store %struct.Memory* %loadMem_43c286, %struct.Memory** %MEMORY
  %loadBr_43c286 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c286 = icmp eq i8 %loadBr_43c286, 1
  br i1 %cmpBr_43c286, label %block_.L_43c2d2, label %block_43c28c

block_43c28c:                                     ; preds = %block_.L_43c27b
  %loadMem_43c28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 1
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 15
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %RBP.i700
  %2722 = sub i64 %2721, 16
  %2723 = load i64, i64* %PC.i698
  %2724 = add i64 %2723, 4
  store i64 %2724, i64* %PC.i698
  %2725 = inttoptr i64 %2722 to i64*
  %2726 = load i64, i64* %2725
  store i64 %2726, i64* %RAX.i699, align 8
  store %struct.Memory* %loadMem_43c28c, %struct.Memory** %MEMORY
  %loadMem_43c290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 1
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RAX.i697 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RAX.i697
  %2734 = add i64 %2733, 156
  %2735 = load i64, i64* %PC.i696
  %2736 = add i64 %2735, 7
  store i64 %2736, i64* %PC.i696
  %2737 = inttoptr i64 %2734 to i32*
  %2738 = load i32, i32* %2737
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2739, align 1
  %2740 = and i32 %2738, 255
  %2741 = call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2744, i8* %2745, align 1
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2746, align 1
  %2747 = icmp eq i32 %2738, 0
  %2748 = zext i1 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2748, i8* %2749, align 1
  %2750 = lshr i32 %2738, 31
  %2751 = trunc i32 %2750 to i8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2751, i8* %2752, align 1
  %2753 = lshr i32 %2738, 31
  %2754 = xor i32 %2750, %2753
  %2755 = add i32 %2754, %2753
  %2756 = icmp eq i32 %2755, 2
  %2757 = zext i1 %2756 to i8
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2757, i8* %2758, align 1
  store %struct.Memory* %loadMem_43c290, %struct.Memory** %MEMORY
  %loadMem_43c297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %PC.i695
  %2763 = add i64 %2762, 59
  %2764 = load i64, i64* %PC.i695
  %2765 = add i64 %2764, 6
  %2766 = load i64, i64* %PC.i695
  %2767 = add i64 %2766, 6
  store i64 %2767, i64* %PC.i695
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2769 = load i8, i8* %2768, align 1
  store i8 %2769, i8* %BRANCH_TAKEN, align 1
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2771 = icmp ne i8 %2769, 0
  %2772 = select i1 %2771, i64 %2763, i64 %2765
  store i64 %2772, i64* %2770, align 8
  store %struct.Memory* %loadMem_43c297, %struct.Memory** %MEMORY
  %loadBr_43c297 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c297 = icmp eq i8 %loadBr_43c297, 1
  br i1 %cmpBr_43c297, label %block_.L_43c2d2, label %block_43c29d

block_43c29d:                                     ; preds = %block_43c28c
  %loadMem_43c29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 33
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 9
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RSI.i694 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %PC.i693
  %2780 = add i64 %2779, 10
  store i64 %2780, i64* %PC.i693
  store i64 ptrtoint (%G__0x459cff_type* @G__0x459cff to i64), i64* %RSI.i694, align 8
  store %struct.Memory* %loadMem_43c29d, %struct.Memory** %MEMORY
  %loadMem_43c2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 11
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RDI.i691 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 15
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RBP.i692
  %2791 = sub i64 %2790, 8
  %2792 = load i64, i64* %PC.i690
  %2793 = add i64 %2792, 4
  store i64 %2793, i64* %PC.i690
  %2794 = inttoptr i64 %2791 to i64*
  %2795 = load i64, i64* %2794
  store i64 %2795, i64* %RDI.i691, align 8
  store %struct.Memory* %loadMem_43c2a7, %struct.Memory** %MEMORY
  %loadMem_43c2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 33
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 1
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 15
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %2804 to i64*
  %2805 = load i64, i64* %RBP.i689
  %2806 = sub i64 %2805, 16
  %2807 = load i64, i64* %PC.i687
  %2808 = add i64 %2807, 4
  store i64 %2808, i64* %PC.i687
  %2809 = inttoptr i64 %2806 to i64*
  %2810 = load i64, i64* %2809
  store i64 %2810, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_43c2ab, %struct.Memory** %MEMORY
  %loadMem_43c2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 1
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2816 to i64*
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2818 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2817, i64 0, i64 0
  %YMM0.i686 = bitcast %union.VectorReg* %2818 to %"class.std::bitset"*
  %2819 = bitcast %"class.std::bitset"* %YMM0.i686 to i8*
  %2820 = load i64, i64* %RAX.i685
  %2821 = add i64 %2820, 128
  %2822 = load i64, i64* %PC.i684
  %2823 = add i64 %2822, 8
  store i64 %2823, i64* %PC.i684
  %2824 = inttoptr i64 %2821 to float*
  %2825 = load float, float* %2824
  %2826 = fpext float %2825 to double
  %2827 = bitcast i8* %2819 to double*
  store double %2826, double* %2827, align 1
  store %struct.Memory* %loadMem_43c2af, %struct.Memory** %MEMORY
  %loadMem_43c2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 1
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 15
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %RBP.i683
  %2838 = sub i64 %2837, 16
  %2839 = load i64, i64* %PC.i681
  %2840 = add i64 %2839, 4
  store i64 %2840, i64* %PC.i681
  %2841 = inttoptr i64 %2838 to i64*
  %2842 = load i64, i64* %2841
  store i64 %2842, i64* %RAX.i682, align 8
  store %struct.Memory* %loadMem_43c2b7, %struct.Memory** %MEMORY
  %loadMem_43c2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 1
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2849, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2850 to %"class.std::bitset"*
  %2851 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2852 = load i64, i64* %RAX.i680
  %2853 = add i64 %2852, 132
  %2854 = load i64, i64* %PC.i679
  %2855 = add i64 %2854, 8
  store i64 %2855, i64* %PC.i679
  %2856 = inttoptr i64 %2853 to float*
  %2857 = load float, float* %2856
  %2858 = fpext float %2857 to double
  %2859 = bitcast i8* %2851 to double*
  store double %2858, double* %2859, align 1
  store %struct.Memory* %loadMem_43c2bb, %struct.Memory** %MEMORY
  %loadMem_43c2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 1
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %2866 = bitcast %union.anon* %2865 to %struct.anon.2*
  %AL.i678 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2866, i32 0, i32 0
  %2867 = load i64, i64* %PC.i677
  %2868 = add i64 %2867, 2
  store i64 %2868, i64* %PC.i677
  store i8 2, i8* %AL.i678, align 1
  store %struct.Memory* %loadMem_43c2c3, %struct.Memory** %MEMORY
  %loadMem1_43c2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %PC.i676
  %2873 = add i64 %2872, -240981
  %2874 = load i64, i64* %PC.i676
  %2875 = add i64 %2874, 5
  %2876 = load i64, i64* %PC.i676
  %2877 = add i64 %2876, 5
  store i64 %2877, i64* %PC.i676
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2879 = load i64, i64* %2878, align 8
  %2880 = add i64 %2879, -8
  %2881 = inttoptr i64 %2880 to i64*
  store i64 %2875, i64* %2881
  store i64 %2880, i64* %2878, align 8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2873, i64* %2882, align 8
  store %struct.Memory* %loadMem1_43c2c5, %struct.Memory** %MEMORY
  %loadMem2_43c2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c2c5 = load i64, i64* %3
  %2883 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c2c5)
  store %struct.Memory* %2883, %struct.Memory** %MEMORY
  %loadMem_43c2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 1
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %EAX.i671 = bitcast %union.anon* %2889 to i32*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 15
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %RBP.i672
  %2894 = sub i64 %2893, 88
  %2895 = load i32, i32* %EAX.i671
  %2896 = zext i32 %2895 to i64
  %2897 = load i64, i64* %PC.i670
  %2898 = add i64 %2897, 3
  store i64 %2898, i64* %PC.i670
  %2899 = inttoptr i64 %2894 to i32*
  store i32 %2895, i32* %2899
  store %struct.Memory* %loadMem_43c2ca, %struct.Memory** %MEMORY
  %loadMem_43c2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %PC.i669
  %2904 = add i64 %2903, 63
  %2905 = load i64, i64* %PC.i669
  %2906 = add i64 %2905, 5
  store i64 %2906, i64* %PC.i669
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2904, i64* %2907, align 8
  store %struct.Memory* %loadMem_43c2cd, %struct.Memory** %MEMORY
  br label %block_.L_43c30c

block_.L_43c2d2:                                  ; preds = %block_43c28c, %block_.L_43c27b
  %loadMem_43c2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 15
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RBP.i668
  %2918 = sub i64 %2917, 16
  %2919 = load i64, i64* %PC.i666
  %2920 = add i64 %2919, 4
  store i64 %2920, i64* %PC.i666
  %2921 = inttoptr i64 %2918 to i64*
  %2922 = load i64, i64* %2921
  store i64 %2922, i64* %RAX.i667, align 8
  store %struct.Memory* %loadMem_43c2d2, %struct.Memory** %MEMORY
  %loadMem_43c2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %2928 to i64*
  %2929 = load i64, i64* %RAX.i665
  %2930 = add i64 %2929, 152
  %2931 = load i64, i64* %PC.i664
  %2932 = add i64 %2931, 7
  store i64 %2932, i64* %PC.i664
  %2933 = inttoptr i64 %2930 to i32*
  %2934 = load i32, i32* %2933
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2935, align 1
  %2936 = and i32 %2934, 255
  %2937 = call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2940, i8* %2941, align 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2942, align 1
  %2943 = icmp eq i32 %2934, 0
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2934, 31
  %2947 = trunc i32 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2934, 31
  %2950 = xor i32 %2946, %2949
  %2951 = add i32 %2950, %2949
  %2952 = icmp eq i32 %2951, 2
  %2953 = zext i1 %2952 to i8
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2953, i8* %2954, align 1
  store %struct.Memory* %loadMem_43c2d6, %struct.Memory** %MEMORY
  %loadMem_43c2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i663
  %2959 = add i64 %2958, 42
  %2960 = load i64, i64* %PC.i663
  %2961 = add i64 %2960, 6
  %2962 = load i64, i64* %PC.i663
  %2963 = add i64 %2962, 6
  store i64 %2963, i64* %PC.i663
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2965 = load i8, i8* %2964, align 1
  store i8 %2965, i8* %BRANCH_TAKEN, align 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2967 = icmp ne i8 %2965, 0
  %2968 = select i1 %2967, i64 %2959, i64 %2961
  store i64 %2968, i64* %2966, align 8
  store %struct.Memory* %loadMem_43c2dd, %struct.Memory** %MEMORY
  %loadBr_43c2dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c2dd = icmp eq i8 %loadBr_43c2dd, 1
  br i1 %cmpBr_43c2dd, label %block_.L_43c307, label %block_43c2e3

block_43c2e3:                                     ; preds = %block_.L_43c2d2
  %loadMem_43c2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 9
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RSI.i662 = bitcast %union.anon* %2974 to i64*
  %2975 = load i64, i64* %PC.i661
  %2976 = add i64 %2975, 10
  store i64 %2976, i64* %PC.i661
  store i64 ptrtoint (%G__0x459d0f_type* @G__0x459d0f to i64), i64* %RSI.i662, align 8
  store %struct.Memory* %loadMem_43c2e3, %struct.Memory** %MEMORY
  %loadMem_43c2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 33
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 11
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %RDI.i659 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 15
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %RBP.i660
  %2987 = sub i64 %2986, 8
  %2988 = load i64, i64* %PC.i658
  %2989 = add i64 %2988, 4
  store i64 %2989, i64* %PC.i658
  %2990 = inttoptr i64 %2987 to i64*
  %2991 = load i64, i64* %2990
  store i64 %2991, i64* %RDI.i659, align 8
  store %struct.Memory* %loadMem_43c2ed, %struct.Memory** %MEMORY
  %loadMem_43c2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 1
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 15
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %RBP.i657
  %3002 = sub i64 %3001, 16
  %3003 = load i64, i64* %PC.i655
  %3004 = add i64 %3003, 4
  store i64 %3004, i64* %PC.i655
  %3005 = inttoptr i64 %3002 to i64*
  %3006 = load i64, i64* %3005
  store i64 %3006, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_43c2f1, %struct.Memory** %MEMORY
  %loadMem_43c2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3013, i64 0, i64 0
  %YMM0.i654 = bitcast %union.VectorReg* %3014 to %"class.std::bitset"*
  %3015 = bitcast %"class.std::bitset"* %YMM0.i654 to i8*
  %3016 = load i64, i64* %RAX.i653
  %3017 = add i64 %3016, 128
  %3018 = load i64, i64* %PC.i652
  %3019 = add i64 %3018, 8
  store i64 %3019, i64* %PC.i652
  %3020 = inttoptr i64 %3017 to float*
  %3021 = load float, float* %3020
  %3022 = fpext float %3021 to double
  %3023 = bitcast i8* %3015 to double*
  store double %3022, double* %3023, align 1
  store %struct.Memory* %loadMem_43c2f5, %struct.Memory** %MEMORY
  %loadMem_43c2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 1
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %3030 = bitcast %union.anon* %3029 to %struct.anon.2*
  %AL.i651 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3030, i32 0, i32 0
  %3031 = load i64, i64* %PC.i650
  %3032 = add i64 %3031, 2
  store i64 %3032, i64* %PC.i650
  store i8 1, i8* %AL.i651, align 1
  store %struct.Memory* %loadMem_43c2fd, %struct.Memory** %MEMORY
  %loadMem1_43c2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %PC.i649
  %3037 = add i64 %3036, -241039
  %3038 = load i64, i64* %PC.i649
  %3039 = add i64 %3038, 5
  %3040 = load i64, i64* %PC.i649
  %3041 = add i64 %3040, 5
  store i64 %3041, i64* %PC.i649
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3043 = load i64, i64* %3042, align 8
  %3044 = add i64 %3043, -8
  %3045 = inttoptr i64 %3044 to i64*
  store i64 %3039, i64* %3045
  store i64 %3044, i64* %3042, align 8
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3037, i64* %3046, align 8
  store %struct.Memory* %loadMem1_43c2ff, %struct.Memory** %MEMORY
  %loadMem2_43c2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c2ff = load i64, i64* %3
  %3047 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c2ff)
  store %struct.Memory* %3047, %struct.Memory** %MEMORY
  %loadMem_43c304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 33
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 1
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %EAX.i645 = bitcast %union.anon* %3053 to i32*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 15
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %RBP.i646
  %3058 = sub i64 %3057, 92
  %3059 = load i32, i32* %EAX.i645
  %3060 = zext i32 %3059 to i64
  %3061 = load i64, i64* %PC.i644
  %3062 = add i64 %3061, 3
  store i64 %3062, i64* %PC.i644
  %3063 = inttoptr i64 %3058 to i32*
  store i32 %3059, i32* %3063
  store %struct.Memory* %loadMem_43c304, %struct.Memory** %MEMORY
  br label %block_.L_43c307

block_.L_43c307:                                  ; preds = %block_43c2e3, %block_.L_43c2d2
  %loadMem_43c307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %3066 to i64*
  %3067 = load i64, i64* %PC.i643
  %3068 = add i64 %3067, 5
  %3069 = load i64, i64* %PC.i643
  %3070 = add i64 %3069, 5
  store i64 %3070, i64* %PC.i643
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3068, i64* %3071, align 8
  store %struct.Memory* %loadMem_43c307, %struct.Memory** %MEMORY
  br label %block_.L_43c30c

block_.L_43c30c:                                  ; preds = %block_.L_43c307, %block_43c29d
  %loadMem_43c30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 15
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %3077 to i64*
  %3078 = load i64, i64* %RBP.i642
  %3079 = sub i64 %3078, 24
  %3080 = load i64, i64* %PC.i641
  %3081 = add i64 %3080, 7
  store i64 %3081, i64* %PC.i641
  %3082 = inttoptr i64 %3079 to i32*
  store i32 0, i32* %3082
  store %struct.Memory* %loadMem_43c30c, %struct.Memory** %MEMORY
  br label %block_.L_43c313

block_.L_43c313:                                  ; preds = %block_.L_43c41f, %block_.L_43c30c
  %loadMem_43c313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 33
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 1
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 15
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %RBP.i640
  %3093 = sub i64 %3092, 24
  %3094 = load i64, i64* %PC.i638
  %3095 = add i64 %3094, 3
  store i64 %3095, i64* %PC.i638
  %3096 = inttoptr i64 %3093 to i32*
  %3097 = load i32, i32* %3096
  %3098 = zext i32 %3097 to i64
  store i64 %3098, i64* %RAX.i639, align 8
  store %struct.Memory* %loadMem_43c313, %struct.Memory** %MEMORY
  %loadMem_43c316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 5
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 15
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %3107 to i64*
  %3108 = load i64, i64* %RBP.i637
  %3109 = sub i64 %3108, 16
  %3110 = load i64, i64* %PC.i635
  %3111 = add i64 %3110, 4
  store i64 %3111, i64* %PC.i635
  %3112 = inttoptr i64 %3109 to i64*
  %3113 = load i64, i64* %3112
  store i64 %3113, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_43c316, %struct.Memory** %MEMORY
  %loadMem_43c31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 1
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %EAX.i633 = bitcast %union.anon* %3119 to i32*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 5
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RCX.i634 = bitcast %union.anon* %3122 to i64*
  %3123 = load i32, i32* %EAX.i633
  %3124 = zext i32 %3123 to i64
  %3125 = load i64, i64* %RCX.i634
  %3126 = add i64 %3125, 28
  %3127 = load i64, i64* %PC.i632
  %3128 = add i64 %3127, 3
  store i64 %3128, i64* %PC.i632
  %3129 = inttoptr i64 %3126 to i32*
  %3130 = load i32, i32* %3129
  %3131 = sub i32 %3123, %3130
  %3132 = icmp ult i32 %3123, %3130
  %3133 = zext i1 %3132 to i8
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3133, i8* %3134, align 1
  %3135 = and i32 %3131, 255
  %3136 = call i32 @llvm.ctpop.i32(i32 %3135)
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  %3139 = xor i8 %3138, 1
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3139, i8* %3140, align 1
  %3141 = xor i32 %3130, %3123
  %3142 = xor i32 %3141, %3131
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3145, i8* %3146, align 1
  %3147 = icmp eq i32 %3131, 0
  %3148 = zext i1 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3148, i8* %3149, align 1
  %3150 = lshr i32 %3131, 31
  %3151 = trunc i32 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3151, i8* %3152, align 1
  %3153 = lshr i32 %3123, 31
  %3154 = lshr i32 %3130, 31
  %3155 = xor i32 %3154, %3153
  %3156 = xor i32 %3150, %3153
  %3157 = add i32 %3156, %3155
  %3158 = icmp eq i32 %3157, 2
  %3159 = zext i1 %3158 to i8
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3159, i8* %3160, align 1
  store %struct.Memory* %loadMem_43c31a, %struct.Memory** %MEMORY
  %loadMem_43c31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3163 to i64*
  %3164 = load i64, i64* %PC.i631
  %3165 = add i64 %3164, 383
  %3166 = load i64, i64* %PC.i631
  %3167 = add i64 %3166, 6
  %3168 = load i64, i64* %PC.i631
  %3169 = add i64 %3168, 6
  store i64 %3169, i64* %PC.i631
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3171 = load i8, i8* %3170, align 1
  %3172 = icmp ne i8 %3171, 0
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3174 = load i8, i8* %3173, align 1
  %3175 = icmp ne i8 %3174, 0
  %3176 = xor i1 %3172, %3175
  %3177 = xor i1 %3176, true
  %3178 = zext i1 %3177 to i8
  store i8 %3178, i8* %BRANCH_TAKEN, align 1
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3180 = select i1 %3176, i64 %3167, i64 %3165
  store i64 %3180, i64* %3179, align 8
  store %struct.Memory* %loadMem_43c31d, %struct.Memory** %MEMORY
  %loadBr_43c31d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c31d = icmp eq i8 %loadBr_43c31d, 1
  br i1 %cmpBr_43c31d, label %block_.L_43c49c, label %block_43c323

block_43c323:                                     ; preds = %block_.L_43c313
  %loadMem_43c323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 33
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 11
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RDI.i629 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 15
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %3189 to i64*
  %3190 = load i64, i64* %RBP.i630
  %3191 = sub i64 %3190, 8
  %3192 = load i64, i64* %PC.i628
  %3193 = add i64 %3192, 4
  store i64 %3193, i64* %PC.i628
  %3194 = inttoptr i64 %3191 to i64*
  %3195 = load i64, i64* %3194
  store i64 %3195, i64* %RDI.i629, align 8
  store %struct.Memory* %loadMem_43c323, %struct.Memory** %MEMORY
  %loadMem_43c327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 7
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 15
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %3204 to i64*
  %3205 = load i64, i64* %RBP.i627
  %3206 = sub i64 %3205, 32
  %3207 = load i64, i64* %PC.i625
  %3208 = add i64 %3207, 3
  store i64 %3208, i64* %PC.i625
  %3209 = inttoptr i64 %3206 to i32*
  %3210 = load i32, i32* %3209
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %RDX.i626, align 8
  store %struct.Memory* %loadMem_43c327, %struct.Memory** %MEMORY
  %loadMem_43c32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 33
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 5
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 15
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %RBP.i624
  %3222 = sub i64 %3221, 32
  %3223 = load i64, i64* %PC.i622
  %3224 = add i64 %3223, 3
  store i64 %3224, i64* %PC.i622
  %3225 = inttoptr i64 %3222 to i32*
  %3226 = load i32, i32* %3225
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RCX.i623, align 8
  store %struct.Memory* %loadMem_43c32a, %struct.Memory** %MEMORY
  %loadMem_43c32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 1
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 15
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %3236 to i64*
  %3237 = load i64, i64* %RBP.i621
  %3238 = sub i64 %3237, 16
  %3239 = load i64, i64* %PC.i619
  %3240 = add i64 %3239, 4
  store i64 %3240, i64* %PC.i619
  %3241 = inttoptr i64 %3238 to i64*
  %3242 = load i64, i64* %3241
  store i64 %3242, i64* %RAX.i620, align 8
  store %struct.Memory* %loadMem_43c32d, %struct.Memory** %MEMORY
  %loadMem_43c331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 33
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 1
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %RAX.i618
  %3250 = add i64 %3249, 8
  %3251 = load i64, i64* %PC.i617
  %3252 = add i64 %3251, 4
  store i64 %3252, i64* %PC.i617
  %3253 = inttoptr i64 %3250 to i64*
  %3254 = load i64, i64* %3253
  store i64 %3254, i64* %RAX.i618, align 8
  store %struct.Memory* %loadMem_43c331, %struct.Memory** %MEMORY
  %loadMem_43c335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 9
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RSI.i615 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 15
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %3263 to i64*
  %3264 = load i64, i64* %RBP.i616
  %3265 = sub i64 %3264, 24
  %3266 = load i64, i64* %PC.i614
  %3267 = add i64 %3266, 4
  store i64 %3267, i64* %PC.i614
  %3268 = inttoptr i64 %3265 to i32*
  %3269 = load i32, i32* %3268
  %3270 = sext i32 %3269 to i64
  store i64 %3270, i64* %RSI.i615, align 8
  store %struct.Memory* %loadMem_43c335, %struct.Memory** %MEMORY
  %loadMem_43c339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 1
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 9
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RSI.i612 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 17
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %R8.i613 = bitcast %union.anon* %3282 to i64*
  %3283 = load i64, i64* %RAX.i611
  %3284 = load i64, i64* %RSI.i612
  %3285 = mul i64 %3284, 8
  %3286 = add i64 %3285, %3283
  %3287 = load i64, i64* %PC.i610
  %3288 = add i64 %3287, 4
  store i64 %3288, i64* %PC.i610
  %3289 = inttoptr i64 %3286 to i64*
  %3290 = load i64, i64* %3289
  store i64 %3290, i64* %R8.i613, align 8
  store %struct.Memory* %loadMem_43c339, %struct.Memory** %MEMORY
  %loadMem_43c33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 1
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 15
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %RBP.i609
  %3301 = sub i64 %3300, 16
  %3302 = load i64, i64* %PC.i607
  %3303 = add i64 %3302, 4
  store i64 %3303, i64* %PC.i607
  %3304 = inttoptr i64 %3301 to i64*
  %3305 = load i64, i64* %3304
  store i64 %3305, i64* %RAX.i608, align 8
  store %struct.Memory* %loadMem_43c33d, %struct.Memory** %MEMORY
  %loadMem_43c341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 33
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3308 to i64*
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 1
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %3311 to i64*
  %3312 = load i64, i64* %RAX.i606
  %3313 = add i64 %3312, 16
  %3314 = load i64, i64* %PC.i605
  %3315 = add i64 %3314, 4
  store i64 %3315, i64* %PC.i605
  %3316 = inttoptr i64 %3313 to i64*
  %3317 = load i64, i64* %3316
  store i64 %3317, i64* %RAX.i606, align 8
  store %struct.Memory* %loadMem_43c341, %struct.Memory** %MEMORY
  %loadMem_43c345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 33
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3320 to i64*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 9
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RSI.i603 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 15
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %RBP.i604
  %3328 = sub i64 %3327, 24
  %3329 = load i64, i64* %PC.i602
  %3330 = add i64 %3329, 4
  store i64 %3330, i64* %PC.i602
  %3331 = inttoptr i64 %3328 to i32*
  %3332 = load i32, i32* %3331
  %3333 = sext i32 %3332 to i64
  store i64 %3333, i64* %RSI.i603, align 8
  store %struct.Memory* %loadMem_43c345, %struct.Memory** %MEMORY
  %loadMem_43c349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 33
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 1
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 9
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RSI.i600 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3343, i64 0, i64 0
  %YMM0.i601 = bitcast %union.VectorReg* %3344 to %"class.std::bitset"*
  %3345 = bitcast %"class.std::bitset"* %YMM0.i601 to i8*
  %3346 = load i64, i64* %RAX.i599
  %3347 = load i64, i64* %RSI.i600
  %3348 = mul i64 %3347, 4
  %3349 = add i64 %3348, %3346
  %3350 = load i64, i64* %PC.i598
  %3351 = add i64 %3350, 5
  store i64 %3351, i64* %PC.i598
  %3352 = inttoptr i64 %3349 to float*
  %3353 = load float, float* %3352
  %3354 = fpext float %3353 to double
  %3355 = bitcast i8* %3345 to double*
  store double %3354, double* %3355, align 1
  store %struct.Memory* %loadMem_43c349, %struct.Memory** %MEMORY
  %loadMem_43c34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 1
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 15
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %RBP.i597
  %3366 = sub i64 %3365, 16
  %3367 = load i64, i64* %PC.i595
  %3368 = add i64 %3367, 4
  store i64 %3368, i64* %PC.i595
  %3369 = inttoptr i64 %3366 to i64*
  %3370 = load i64, i64* %3369
  store i64 %3370, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_43c34e, %struct.Memory** %MEMORY
  %loadMem_43c352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 1
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %3376 to i64*
  %3377 = load i64, i64* %RAX.i594
  %3378 = add i64 %3377, 96
  %3379 = load i64, i64* %PC.i593
  %3380 = add i64 %3379, 5
  store i64 %3380, i64* %PC.i593
  %3381 = inttoptr i64 %3378 to i64*
  %3382 = load i64, i64* %3381
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3383, align 1
  %3384 = trunc i64 %3382 to i32
  %3385 = and i32 %3384, 255
  %3386 = call i32 @llvm.ctpop.i32(i32 %3385)
  %3387 = trunc i32 %3386 to i8
  %3388 = and i8 %3387, 1
  %3389 = xor i8 %3388, 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3389, i8* %3390, align 1
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3391, align 1
  %3392 = icmp eq i64 %3382, 0
  %3393 = zext i1 %3392 to i8
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3393, i8* %3394, align 1
  %3395 = lshr i64 %3382, 63
  %3396 = trunc i64 %3395 to i8
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3396, i8* %3397, align 1
  %3398 = lshr i64 %3382, 63
  %3399 = xor i64 %3395, %3398
  %3400 = add i64 %3399, %3398
  %3401 = icmp eq i64 %3400, 2
  %3402 = zext i1 %3401 to i8
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3402, i8* %3403, align 1
  store %struct.Memory* %loadMem_43c352, %struct.Memory** %MEMORY
  %loadMem_43c357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 11
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RDI.i591 = bitcast %union.anon* %3409 to i64*
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 15
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %RBP.i592 = bitcast %union.anon* %3412 to i64*
  %3413 = load i64, i64* %RBP.i592
  %3414 = sub i64 %3413, 104
  %3415 = load i64, i64* %RDI.i591
  %3416 = load i64, i64* %PC.i590
  %3417 = add i64 %3416, 4
  store i64 %3417, i64* %PC.i590
  %3418 = inttoptr i64 %3414 to i64*
  store i64 %3415, i64* %3418
  store %struct.Memory* %loadMem_43c357, %struct.Memory** %MEMORY
  %loadMem_43c35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 7
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %EDX.i588 = bitcast %union.anon* %3424 to i32*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 15
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %RBP.i589
  %3429 = sub i64 %3428, 108
  %3430 = load i32, i32* %EDX.i588
  %3431 = zext i32 %3430 to i64
  %3432 = load i64, i64* %PC.i587
  %3433 = add i64 %3432, 3
  store i64 %3433, i64* %PC.i587
  %3434 = inttoptr i64 %3429 to i32*
  store i32 %3430, i32* %3434
  store %struct.Memory* %loadMem_43c35b, %struct.Memory** %MEMORY
  %loadMem_43c35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 33
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3437 to i64*
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 5
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %ECX.i585 = bitcast %union.anon* %3440 to i32*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 15
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3443 to i64*
  %3444 = load i64, i64* %RBP.i586
  %3445 = sub i64 %3444, 112
  %3446 = load i32, i32* %ECX.i585
  %3447 = zext i32 %3446 to i64
  %3448 = load i64, i64* %PC.i584
  %3449 = add i64 %3448, 3
  store i64 %3449, i64* %PC.i584
  %3450 = inttoptr i64 %3445 to i32*
  store i32 %3446, i32* %3450
  store %struct.Memory* %loadMem_43c35e, %struct.Memory** %MEMORY
  %loadMem_43c361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 15
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %3456 to i64*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 17
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %R8.i583 = bitcast %union.anon* %3459 to i64*
  %3460 = load i64, i64* %RBP.i582
  %3461 = sub i64 %3460, 120
  %3462 = load i64, i64* %R8.i583
  %3463 = load i64, i64* %PC.i581
  %3464 = add i64 %3463, 4
  store i64 %3464, i64* %PC.i581
  %3465 = inttoptr i64 %3461 to i64*
  store i64 %3462, i64* %3465
  store %struct.Memory* %loadMem_43c361, %struct.Memory** %MEMORY
  %loadMem_43c365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 15
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3472, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3473 to %union.vec128_t*
  %3474 = load i64, i64* %RBP.i580
  %3475 = sub i64 %3474, 128
  %3476 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3477 = load i64, i64* %PC.i579
  %3478 = add i64 %3477, 5
  store i64 %3478, i64* %PC.i579
  %3479 = bitcast i8* %3476 to double*
  %3480 = load double, double* %3479, align 1
  %3481 = inttoptr i64 %3475 to double*
  store double %3480, double* %3481
  store %struct.Memory* %loadMem_43c365, %struct.Memory** %MEMORY
  %loadMem_43c36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %PC.i578
  %3486 = add i64 %3485, 57
  %3487 = load i64, i64* %PC.i578
  %3488 = add i64 %3487, 6
  %3489 = load i64, i64* %PC.i578
  %3490 = add i64 %3489, 6
  store i64 %3490, i64* %PC.i578
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3492 = load i8, i8* %3491, align 1
  store i8 %3492, i8* %BRANCH_TAKEN, align 1
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3494 = icmp ne i8 %3492, 0
  %3495 = select i1 %3494, i64 %3486, i64 %3488
  store i64 %3495, i64* %3493, align 8
  store %struct.Memory* %loadMem_43c36a, %struct.Memory** %MEMORY
  %loadBr_43c36a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c36a = icmp eq i8 %loadBr_43c36a, 1
  br i1 %cmpBr_43c36a, label %block_.L_43c3a3, label %block_43c370

block_43c370:                                     ; preds = %block_43c323
  %loadMem_43c370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 1
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 15
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %RBP.i577
  %3506 = sub i64 %3505, 16
  %3507 = load i64, i64* %PC.i575
  %3508 = add i64 %3507, 4
  store i64 %3508, i64* %PC.i575
  %3509 = inttoptr i64 %3506 to i64*
  %3510 = load i64, i64* %3509
  store i64 %3510, i64* %RAX.i576, align 8
  store %struct.Memory* %loadMem_43c370, %struct.Memory** %MEMORY
  %loadMem_43c374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 1
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %3516 to i64*
  %3517 = load i64, i64* %RAX.i574
  %3518 = add i64 %3517, 96
  %3519 = load i64, i64* %PC.i573
  %3520 = add i64 %3519, 4
  store i64 %3520, i64* %PC.i573
  %3521 = inttoptr i64 %3518 to i64*
  %3522 = load i64, i64* %3521
  store i64 %3522, i64* %RAX.i574, align 8
  store %struct.Memory* %loadMem_43c374, %struct.Memory** %MEMORY
  %loadMem_43c378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 5
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RCX.i571 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 15
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %3531 to i64*
  %3532 = load i64, i64* %RBP.i572
  %3533 = sub i64 %3532, 24
  %3534 = load i64, i64* %PC.i570
  %3535 = add i64 %3534, 4
  store i64 %3535, i64* %PC.i570
  %3536 = inttoptr i64 %3533 to i32*
  %3537 = load i32, i32* %3536
  %3538 = sext i32 %3537 to i64
  store i64 %3538, i64* %RCX.i571, align 8
  store %struct.Memory* %loadMem_43c378, %struct.Memory** %MEMORY
  %loadMem_43c37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 1
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 5
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %RCX.i569 = bitcast %union.anon* %3547 to i64*
  %3548 = load i64, i64* %RAX.i568
  %3549 = load i64, i64* %RCX.i569
  %3550 = mul i64 %3549, 8
  %3551 = add i64 %3550, %3548
  %3552 = load i64, i64* %PC.i567
  %3553 = add i64 %3552, 5
  store i64 %3553, i64* %PC.i567
  %3554 = inttoptr i64 %3551 to i64*
  %3555 = load i64, i64* %3554
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3556, align 1
  %3557 = trunc i64 %3555 to i32
  %3558 = and i32 %3557, 255
  %3559 = call i32 @llvm.ctpop.i32(i32 %3558)
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  %3562 = xor i8 %3561, 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3562, i8* %3563, align 1
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3564, align 1
  %3565 = icmp eq i64 %3555, 0
  %3566 = zext i1 %3565 to i8
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3566, i8* %3567, align 1
  %3568 = lshr i64 %3555, 63
  %3569 = trunc i64 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3569, i8* %3570, align 1
  %3571 = lshr i64 %3555, 63
  %3572 = xor i64 %3568, %3571
  %3573 = add i64 %3572, %3571
  %3574 = icmp eq i64 %3573, 2
  %3575 = zext i1 %3574 to i8
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3575, i8* %3576, align 1
  store %struct.Memory* %loadMem_43c37c, %struct.Memory** %MEMORY
  %loadMem_43c381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3579 to i64*
  %3580 = load i64, i64* %PC.i566
  %3581 = add i64 %3580, 34
  %3582 = load i64, i64* %PC.i566
  %3583 = add i64 %3582, 6
  %3584 = load i64, i64* %PC.i566
  %3585 = add i64 %3584, 6
  store i64 %3585, i64* %PC.i566
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3587 = load i8, i8* %3586, align 1
  store i8 %3587, i8* %BRANCH_TAKEN, align 1
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3589 = icmp ne i8 %3587, 0
  %3590 = select i1 %3589, i64 %3581, i64 %3583
  store i64 %3590, i64* %3588, align 8
  store %struct.Memory* %loadMem_43c381, %struct.Memory** %MEMORY
  %loadBr_43c381 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c381 = icmp eq i8 %loadBr_43c381, 1
  br i1 %cmpBr_43c381, label %block_.L_43c3a3, label %block_43c387

block_43c387:                                     ; preds = %block_43c370
  %loadMem_43c387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 1
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 15
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RBP.i565
  %3601 = sub i64 %3600, 16
  %3602 = load i64, i64* %PC.i563
  %3603 = add i64 %3602, 4
  store i64 %3603, i64* %PC.i563
  %3604 = inttoptr i64 %3601 to i64*
  %3605 = load i64, i64* %3604
  store i64 %3605, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_43c387, %struct.Memory** %MEMORY
  %loadMem_43c38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 33
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 1
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %3611 to i64*
  %3612 = load i64, i64* %RAX.i562
  %3613 = add i64 %3612, 96
  %3614 = load i64, i64* %PC.i561
  %3615 = add i64 %3614, 4
  store i64 %3615, i64* %PC.i561
  %3616 = inttoptr i64 %3613 to i64*
  %3617 = load i64, i64* %3616
  store i64 %3617, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_43c38b, %struct.Memory** %MEMORY
  %loadMem_43c38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 33
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3620 to i64*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 5
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 15
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %3626 to i64*
  %3627 = load i64, i64* %RBP.i560
  %3628 = sub i64 %3627, 24
  %3629 = load i64, i64* %PC.i558
  %3630 = add i64 %3629, 4
  store i64 %3630, i64* %PC.i558
  %3631 = inttoptr i64 %3628 to i32*
  %3632 = load i32, i32* %3631
  %3633 = sext i32 %3632 to i64
  store i64 %3633, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_43c38f, %struct.Memory** %MEMORY
  %loadMem_43c393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 1
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 5
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %3642 to i64*
  %3643 = load i64, i64* %RAX.i556
  %3644 = load i64, i64* %RCX.i557
  %3645 = mul i64 %3644, 8
  %3646 = add i64 %3645, %3643
  %3647 = load i64, i64* %PC.i555
  %3648 = add i64 %3647, 4
  store i64 %3648, i64* %PC.i555
  %3649 = inttoptr i64 %3646 to i64*
  %3650 = load i64, i64* %3649
  store i64 %3650, i64* %RAX.i556, align 8
  store %struct.Memory* %loadMem_43c393, %struct.Memory** %MEMORY
  %loadMem_43c397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 1
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 15
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %3659 to i64*
  %3660 = load i64, i64* %RBP.i554
  %3661 = sub i64 %3660, 136
  %3662 = load i64, i64* %RAX.i553
  %3663 = load i64, i64* %PC.i552
  %3664 = add i64 %3663, 7
  store i64 %3664, i64* %PC.i552
  %3665 = inttoptr i64 %3661 to i64*
  store i64 %3662, i64* %3665
  store %struct.Memory* %loadMem_43c397, %struct.Memory** %MEMORY
  %loadMem_43c39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3668 to i64*
  %3669 = load i64, i64* %PC.i551
  %3670 = add i64 %3669, 27
  %3671 = load i64, i64* %PC.i551
  %3672 = add i64 %3671, 5
  store i64 %3672, i64* %PC.i551
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3670, i64* %3673, align 8
  store %struct.Memory* %loadMem_43c39e, %struct.Memory** %MEMORY
  br label %block_.L_43c3b9

block_.L_43c3a3:                                  ; preds = %block_43c370, %block_43c323
  %loadMem_43c3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 33
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 1
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %PC.i549
  %3681 = add i64 %3680, 10
  store i64 %3681, i64* %PC.i549
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_43c3a3, %struct.Memory** %MEMORY
  %loadMem_43c3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 1
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 15
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %RBP.i548
  %3692 = sub i64 %3691, 136
  %3693 = load i64, i64* %RAX.i547
  %3694 = load i64, i64* %PC.i546
  %3695 = add i64 %3694, 7
  store i64 %3695, i64* %PC.i546
  %3696 = inttoptr i64 %3692 to i64*
  store i64 %3693, i64* %3696
  store %struct.Memory* %loadMem_43c3ad, %struct.Memory** %MEMORY
  %loadMem_43c3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %PC.i545
  %3701 = add i64 %3700, 5
  %3702 = load i64, i64* %PC.i545
  %3703 = add i64 %3702, 5
  store i64 %3703, i64* %PC.i545
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3701, i64* %3704, align 8
  store %struct.Memory* %loadMem_43c3b4, %struct.Memory** %MEMORY
  br label %block_.L_43c3b9

block_.L_43c3b9:                                  ; preds = %block_.L_43c3a3, %block_43c387
  %loadMem_43c3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 1
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 15
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %3713 to i64*
  %3714 = load i64, i64* %RBP.i544
  %3715 = sub i64 %3714, 136
  %3716 = load i64, i64* %PC.i542
  %3717 = add i64 %3716, 7
  store i64 %3717, i64* %PC.i542
  %3718 = inttoptr i64 %3715 to i64*
  %3719 = load i64, i64* %3718
  store i64 %3719, i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_43c3b9, %struct.Memory** %MEMORY
  %loadMem_43c3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 33
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3722 to i64*
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 5
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 15
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3728 to i64*
  %3729 = load i64, i64* %RBP.i541
  %3730 = sub i64 %3729, 16
  %3731 = load i64, i64* %PC.i539
  %3732 = add i64 %3731, 4
  store i64 %3732, i64* %PC.i539
  %3733 = inttoptr i64 %3730 to i64*
  %3734 = load i64, i64* %3733
  store i64 %3734, i64* %RCX.i540, align 8
  store %struct.Memory* %loadMem_43c3c0, %struct.Memory** %MEMORY
  %loadMem_43c3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 5
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %3740 to i64*
  %3741 = load i64, i64* %RCX.i538
  %3742 = add i64 %3741, 104
  %3743 = load i64, i64* %PC.i537
  %3744 = add i64 %3743, 5
  store i64 %3744, i64* %PC.i537
  %3745 = inttoptr i64 %3742 to i64*
  %3746 = load i64, i64* %3745
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3747, align 1
  %3748 = trunc i64 %3746 to i32
  %3749 = and i32 %3748, 255
  %3750 = call i32 @llvm.ctpop.i32(i32 %3749)
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = xor i8 %3752, 1
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3753, i8* %3754, align 1
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3755, align 1
  %3756 = icmp eq i64 %3746, 0
  %3757 = zext i1 %3756 to i8
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3757, i8* %3758, align 1
  %3759 = lshr i64 %3746, 63
  %3760 = trunc i64 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3760, i8* %3761, align 1
  %3762 = lshr i64 %3746, 63
  %3763 = xor i64 %3759, %3762
  %3764 = add i64 %3763, %3762
  %3765 = icmp eq i64 %3764, 2
  %3766 = zext i1 %3765 to i8
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3766, i8* %3767, align 1
  store %struct.Memory* %loadMem_43c3c4, %struct.Memory** %MEMORY
  %loadMem_43c3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 1
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 15
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %RBP.i536
  %3778 = sub i64 %3777, 144
  %3779 = load i64, i64* %RAX.i535
  %3780 = load i64, i64* %PC.i534
  %3781 = add i64 %3780, 7
  store i64 %3781, i64* %PC.i534
  %3782 = inttoptr i64 %3778 to i64*
  store i64 %3779, i64* %3782
  store %struct.Memory* %loadMem_43c3c9, %struct.Memory** %MEMORY
  %loadMem_43c3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %PC.i533
  %3787 = add i64 %3786, 57
  %3788 = load i64, i64* %PC.i533
  %3789 = add i64 %3788, 6
  %3790 = load i64, i64* %PC.i533
  %3791 = add i64 %3790, 6
  store i64 %3791, i64* %PC.i533
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3793 = load i8, i8* %3792, align 1
  store i8 %3793, i8* %BRANCH_TAKEN, align 1
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3795 = icmp ne i8 %3793, 0
  %3796 = select i1 %3795, i64 %3787, i64 %3789
  store i64 %3796, i64* %3794, align 8
  store %struct.Memory* %loadMem_43c3d0, %struct.Memory** %MEMORY
  %loadBr_43c3d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c3d0 = icmp eq i8 %loadBr_43c3d0, 1
  br i1 %cmpBr_43c3d0, label %block_.L_43c409, label %block_43c3d6

block_43c3d6:                                     ; preds = %block_.L_43c3b9
  %loadMem_43c3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 1
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 15
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %RBP.i532
  %3807 = sub i64 %3806, 16
  %3808 = load i64, i64* %PC.i530
  %3809 = add i64 %3808, 4
  store i64 %3809, i64* %PC.i530
  %3810 = inttoptr i64 %3807 to i64*
  %3811 = load i64, i64* %3810
  store i64 %3811, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_43c3d6, %struct.Memory** %MEMORY
  %loadMem_43c3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 33
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 1
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %RAX.i529
  %3819 = add i64 %3818, 104
  %3820 = load i64, i64* %PC.i528
  %3821 = add i64 %3820, 4
  store i64 %3821, i64* %PC.i528
  %3822 = inttoptr i64 %3819 to i64*
  %3823 = load i64, i64* %3822
  store i64 %3823, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_43c3da, %struct.Memory** %MEMORY
  %loadMem_43c3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 33
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3826 to i64*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 5
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %3829 to i64*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 15
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3832 to i64*
  %3833 = load i64, i64* %RBP.i527
  %3834 = sub i64 %3833, 24
  %3835 = load i64, i64* %PC.i525
  %3836 = add i64 %3835, 4
  store i64 %3836, i64* %PC.i525
  %3837 = inttoptr i64 %3834 to i32*
  %3838 = load i32, i32* %3837
  %3839 = sext i32 %3838 to i64
  store i64 %3839, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_43c3de, %struct.Memory** %MEMORY
  %loadMem_43c3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3841 = getelementptr inbounds %struct.GPR, %struct.GPR* %3840, i32 0, i32 33
  %3842 = getelementptr inbounds %struct.Reg, %struct.Reg* %3841, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3842 to i64*
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 1
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 5
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %RAX.i523
  %3850 = load i64, i64* %RCX.i524
  %3851 = mul i64 %3850, 8
  %3852 = add i64 %3851, %3849
  %3853 = load i64, i64* %PC.i522
  %3854 = add i64 %3853, 5
  store i64 %3854, i64* %PC.i522
  %3855 = inttoptr i64 %3852 to i64*
  %3856 = load i64, i64* %3855
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3857, align 1
  %3858 = trunc i64 %3856 to i32
  %3859 = and i32 %3858, 255
  %3860 = call i32 @llvm.ctpop.i32(i32 %3859)
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  %3863 = xor i8 %3862, 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3863, i8* %3864, align 1
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3865, align 1
  %3866 = icmp eq i64 %3856, 0
  %3867 = zext i1 %3866 to i8
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3867, i8* %3868, align 1
  %3869 = lshr i64 %3856, 63
  %3870 = trunc i64 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3870, i8* %3871, align 1
  %3872 = lshr i64 %3856, 63
  %3873 = xor i64 %3869, %3872
  %3874 = add i64 %3873, %3872
  %3875 = icmp eq i64 %3874, 2
  %3876 = zext i1 %3875 to i8
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3876, i8* %3877, align 1
  store %struct.Memory* %loadMem_43c3e2, %struct.Memory** %MEMORY
  %loadMem_43c3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3880 to i64*
  %3881 = load i64, i64* %PC.i521
  %3882 = add i64 %3881, 34
  %3883 = load i64, i64* %PC.i521
  %3884 = add i64 %3883, 6
  %3885 = load i64, i64* %PC.i521
  %3886 = add i64 %3885, 6
  store i64 %3886, i64* %PC.i521
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3888 = load i8, i8* %3887, align 1
  store i8 %3888, i8* %BRANCH_TAKEN, align 1
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3890 = icmp ne i8 %3888, 0
  %3891 = select i1 %3890, i64 %3882, i64 %3884
  store i64 %3891, i64* %3889, align 8
  store %struct.Memory* %loadMem_43c3e7, %struct.Memory** %MEMORY
  %loadBr_43c3e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c3e7 = icmp eq i8 %loadBr_43c3e7, 1
  br i1 %cmpBr_43c3e7, label %block_.L_43c409, label %block_43c3ed

block_43c3ed:                                     ; preds = %block_43c3d6
  %loadMem_43c3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 1
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 15
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %3900 to i64*
  %3901 = load i64, i64* %RBP.i520
  %3902 = sub i64 %3901, 16
  %3903 = load i64, i64* %PC.i518
  %3904 = add i64 %3903, 4
  store i64 %3904, i64* %PC.i518
  %3905 = inttoptr i64 %3902 to i64*
  %3906 = load i64, i64* %3905
  store i64 %3906, i64* %RAX.i519, align 8
  store %struct.Memory* %loadMem_43c3ed, %struct.Memory** %MEMORY
  %loadMem_43c3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 1
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %RAX.i517
  %3914 = add i64 %3913, 104
  %3915 = load i64, i64* %PC.i516
  %3916 = add i64 %3915, 4
  store i64 %3916, i64* %PC.i516
  %3917 = inttoptr i64 %3914 to i64*
  %3918 = load i64, i64* %3917
  store i64 %3918, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_43c3f1, %struct.Memory** %MEMORY
  %loadMem_43c3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 33
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3921 to i64*
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 5
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %3924 to i64*
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 15
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %3927 to i64*
  %3928 = load i64, i64* %RBP.i515
  %3929 = sub i64 %3928, 24
  %3930 = load i64, i64* %PC.i513
  %3931 = add i64 %3930, 4
  store i64 %3931, i64* %PC.i513
  %3932 = inttoptr i64 %3929 to i32*
  %3933 = load i32, i32* %3932
  %3934 = sext i32 %3933 to i64
  store i64 %3934, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_43c3f5, %struct.Memory** %MEMORY
  %loadMem_43c3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 5
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RCX.i512 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RAX.i511
  %3945 = load i64, i64* %RCX.i512
  %3946 = mul i64 %3945, 8
  %3947 = add i64 %3946, %3944
  %3948 = load i64, i64* %PC.i510
  %3949 = add i64 %3948, 4
  store i64 %3949, i64* %PC.i510
  %3950 = inttoptr i64 %3947 to i64*
  %3951 = load i64, i64* %3950
  store i64 %3951, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_43c3f9, %struct.Memory** %MEMORY
  %loadMem_43c3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 1
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 15
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %3960 to i64*
  %3961 = load i64, i64* %RBP.i509
  %3962 = sub i64 %3961, 152
  %3963 = load i64, i64* %RAX.i508
  %3964 = load i64, i64* %PC.i507
  %3965 = add i64 %3964, 7
  store i64 %3965, i64* %PC.i507
  %3966 = inttoptr i64 %3962 to i64*
  store i64 %3963, i64* %3966
  store %struct.Memory* %loadMem_43c3fd, %struct.Memory** %MEMORY
  %loadMem_43c404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3969 to i64*
  %3970 = load i64, i64* %PC.i506
  %3971 = add i64 %3970, 27
  %3972 = load i64, i64* %PC.i506
  %3973 = add i64 %3972, 5
  store i64 %3973, i64* %PC.i506
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3971, i64* %3974, align 8
  store %struct.Memory* %loadMem_43c404, %struct.Memory** %MEMORY
  br label %block_.L_43c41f

block_.L_43c409:                                  ; preds = %block_43c3d6, %block_.L_43c3b9
  %loadMem_43c409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 33
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 1
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %PC.i504
  %3982 = add i64 %3981, 10
  store i64 %3982, i64* %PC.i504
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_43c409, %struct.Memory** %MEMORY
  %loadMem_43c413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 1
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 15
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %3991 to i64*
  %3992 = load i64, i64* %RBP.i503
  %3993 = sub i64 %3992, 152
  %3994 = load i64, i64* %RAX.i502
  %3995 = load i64, i64* %PC.i501
  %3996 = add i64 %3995, 7
  store i64 %3996, i64* %PC.i501
  %3997 = inttoptr i64 %3993 to i64*
  store i64 %3994, i64* %3997
  store %struct.Memory* %loadMem_43c413, %struct.Memory** %MEMORY
  %loadMem_43c41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4000 to i64*
  %4001 = load i64, i64* %PC.i500
  %4002 = add i64 %4001, 5
  %4003 = load i64, i64* %PC.i500
  %4004 = add i64 %4003, 5
  store i64 %4004, i64* %PC.i500
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4002, i64* %4005, align 8
  store %struct.Memory* %loadMem_43c41a, %struct.Memory** %MEMORY
  br label %block_.L_43c41f

block_.L_43c41f:                                  ; preds = %block_.L_43c409, %block_43c3ed
  %loadMem_43c41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 1
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %4011 to i64*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 15
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %4014 to i64*
  %4015 = load i64, i64* %RBP.i499
  %4016 = sub i64 %4015, 152
  %4017 = load i64, i64* %PC.i497
  %4018 = add i64 %4017, 7
  store i64 %4018, i64* %PC.i497
  %4019 = inttoptr i64 %4016 to i64*
  %4020 = load i64, i64* %4019
  store i64 %4020, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_43c41f, %struct.Memory** %MEMORY
  %loadMem_43c426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 33
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 9
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RSI.i496 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %PC.i495
  %4028 = add i64 %4027, 10
  store i64 %4028, i64* %PC.i495
  store i64 ptrtoint (%G__0x459d1a_type* @G__0x459d1a to i64), i64* %RSI.i496, align 8
  store %struct.Memory* %loadMem_43c426, %struct.Memory** %MEMORY
  %loadMem_43c430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 19
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %R9.i494 = bitcast %union.anon* %4034 to i64*
  %4035 = load i64, i64* %PC.i493
  %4036 = add i64 %4035, 10
  store i64 %4036, i64* %PC.i493
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R9.i494, align 8
  store %struct.Memory* %loadMem_43c430, %struct.Memory** %MEMORY
  %loadMem_43c43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 33
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4039 to i64*
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 5
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %ECX.i491 = bitcast %union.anon* %4042 to i32*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 5
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %4045 to i64*
  %4046 = load i64, i64* %RCX.i492
  %4047 = load i32, i32* %ECX.i491
  %4048 = zext i32 %4047 to i64
  %4049 = load i64, i64* %PC.i490
  %4050 = add i64 %4049, 2
  store i64 %4050, i64* %PC.i490
  %4051 = xor i64 %4048, %4046
  %4052 = trunc i64 %4051 to i32
  %4053 = and i64 %4051, 4294967295
  store i64 %4053, i64* %RCX.i492, align 8
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4054, align 1
  %4055 = and i32 %4052, 255
  %4056 = call i32 @llvm.ctpop.i32(i32 %4055)
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = xor i8 %4058, 1
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4059, i8* %4060, align 1
  %4061 = icmp eq i32 %4052, 0
  %4062 = zext i1 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4062, i8* %4063, align 1
  %4064 = lshr i32 %4052, 31
  %4065 = trunc i32 %4064 to i8
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4065, i8* %4066, align 1
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4067, align 1
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4068, align 1
  store %struct.Memory* %loadMem_43c43a, %struct.Memory** %MEMORY
  %loadMem_43c43c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 33
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4071 to i64*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 11
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %RDI.i488 = bitcast %union.anon* %4074 to i64*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 15
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %4077 to i64*
  %4078 = load i64, i64* %RBP.i489
  %4079 = sub i64 %4078, 104
  %4080 = load i64, i64* %PC.i487
  %4081 = add i64 %4080, 4
  store i64 %4081, i64* %PC.i487
  %4082 = inttoptr i64 %4079 to i64*
  %4083 = load i64, i64* %4082
  store i64 %4083, i64* %RDI.i488, align 8
  store %struct.Memory* %loadMem_43c43c, %struct.Memory** %MEMORY
  %loadMem_43c440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 7
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RDX.i485 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 15
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RBP.i486
  %4094 = sub i64 %4093, 108
  %4095 = load i64, i64* %PC.i484
  %4096 = add i64 %4095, 3
  store i64 %4096, i64* %PC.i484
  %4097 = inttoptr i64 %4094 to i32*
  %4098 = load i32, i32* %4097
  %4099 = zext i32 %4098 to i64
  store i64 %4099, i64* %RDX.i485, align 8
  store %struct.Memory* %loadMem_43c440, %struct.Memory** %MEMORY
  %loadMem_43c443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 33
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4102 to i64*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 17
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %R8D.i482 = bitcast %union.anon* %4105 to i32*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 15
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %4108 to i64*
  %4109 = bitcast i32* %R8D.i482 to i64*
  %4110 = load i64, i64* %RBP.i483
  %4111 = sub i64 %4110, 112
  %4112 = load i64, i64* %PC.i481
  %4113 = add i64 %4112, 4
  store i64 %4113, i64* %PC.i481
  %4114 = inttoptr i64 %4111 to i32*
  %4115 = load i32, i32* %4114
  %4116 = zext i32 %4115 to i64
  store i64 %4116, i64* %4109, align 8
  store %struct.Memory* %loadMem_43c443, %struct.Memory** %MEMORY
  %loadMem_43c447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 5
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4122 to i32*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 15
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RBP.i480
  %4127 = sub i64 %4126, 156
  %4128 = load i32, i32* %ECX.i
  %4129 = zext i32 %4128 to i64
  %4130 = load i64, i64* %PC.i479
  %4131 = add i64 %4130, 6
  store i64 %4131, i64* %PC.i479
  %4132 = inttoptr i64 %4127 to i32*
  store i32 %4128, i32* %4132
  store %struct.Memory* %loadMem_43c447, %struct.Memory** %MEMORY
  %loadMem_43c44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 17
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4138 to i32*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 5
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %4141 to i64*
  %4142 = load i32, i32* %R8D.i
  %4143 = zext i32 %4142 to i64
  %4144 = load i64, i64* %PC.i477
  %4145 = add i64 %4144, 3
  store i64 %4145, i64* %PC.i477
  %4146 = and i64 %4143, 4294967295
  store i64 %4146, i64* %RCX.i478, align 8
  store %struct.Memory* %loadMem_43c44d, %struct.Memory** %MEMORY
  %loadMem_43c450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 15
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %4152 to i64*
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 17
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %R8.i476 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %RBP.i475
  %4157 = sub i64 %4156, 120
  %4158 = load i64, i64* %PC.i474
  %4159 = add i64 %4158, 4
  store i64 %4159, i64* %PC.i474
  %4160 = inttoptr i64 %4157 to i64*
  %4161 = load i64, i64* %4160
  store i64 %4161, i64* %R8.i476, align 8
  store %struct.Memory* %loadMem_43c450, %struct.Memory** %MEMORY
  %loadMem_43c454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 33
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4164 to i64*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 15
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4169 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4168, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4169 to %"class.std::bitset"*
  %4170 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4171 = load i64, i64* %RBP.i473
  %4172 = sub i64 %4171, 128
  %4173 = load i64, i64* %PC.i472
  %4174 = add i64 %4173, 5
  store i64 %4174, i64* %PC.i472
  %4175 = inttoptr i64 %4172 to double*
  %4176 = load double, double* %4175
  %4177 = bitcast i8* %4170 to double*
  store double %4176, double* %4177, align 1
  %4178 = getelementptr inbounds i8, i8* %4170, i64 8
  %4179 = bitcast i8* %4178 to double*
  store double 0.000000e+00, double* %4179, align 1
  store %struct.Memory* %loadMem_43c454, %struct.Memory** %MEMORY
  %loadMem_43c459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 33
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 15
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 21
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %R10.i471 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %RBP.i470
  %4190 = sub i64 %4189, 144
  %4191 = load i64, i64* %PC.i469
  %4192 = add i64 %4191, 7
  store i64 %4192, i64* %PC.i469
  %4193 = inttoptr i64 %4190 to i64*
  %4194 = load i64, i64* %4193
  store i64 %4194, i64* %R10.i471, align 8
  store %struct.Memory* %loadMem_43c459, %struct.Memory** %MEMORY
  %loadMem_43c460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 13
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RSP.i468 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 21
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %R10.i = bitcast %union.anon* %4203 to i64*
  %4204 = load i64, i64* %RSP.i468
  %4205 = load i64, i64* %R10.i
  %4206 = load i64, i64* %PC.i467
  %4207 = add i64 %4206, 4
  store i64 %4207, i64* %PC.i467
  %4208 = inttoptr i64 %4204 to i64*
  store i64 %4205, i64* %4208
  store %struct.Memory* %loadMem_43c460, %struct.Memory** %MEMORY
  %loadMem_43c464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 33
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 13
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RSP.i466 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %RSP.i466
  %4216 = add i64 %4215, 8
  %4217 = load i64, i64* %PC.i465
  %4218 = add i64 %4217, 8
  store i64 %4218, i64* %PC.i465
  %4219 = inttoptr i64 %4216 to i32*
  store i32 0, i32* %4219
  store %struct.Memory* %loadMem_43c464, %struct.Memory** %MEMORY
  %loadMem_43c46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 33
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 13
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RSP.i464 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %RSP.i464
  %4227 = add i64 %4226, 16
  %4228 = load i64, i64* %PC.i463
  %4229 = add i64 %4228, 8
  store i64 %4229, i64* %PC.i463
  %4230 = inttoptr i64 %4227 to i32*
  store i32 0, i32* %4230
  store %struct.Memory* %loadMem_43c46c, %struct.Memory** %MEMORY
  %loadMem_43c474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 13
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %RSP.i462 = bitcast %union.anon* %4236 to i64*
  %4237 = load i64, i64* %RSP.i462
  %4238 = add i64 %4237, 24
  %4239 = load i64, i64* %PC.i461
  %4240 = add i64 %4239, 8
  store i64 %4240, i64* %PC.i461
  %4241 = inttoptr i64 %4238 to i32*
  store i32 0, i32* %4241
  store %struct.Memory* %loadMem_43c474, %struct.Memory** %MEMORY
  %loadMem_43c47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 33
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 1
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 13
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %RSP.i460 = bitcast %union.anon* %4250 to i64*
  %4251 = load i64, i64* %RSP.i460
  %4252 = add i64 %4251, 32
  %4253 = load i64, i64* %RAX.i459
  %4254 = load i64, i64* %PC.i458
  %4255 = add i64 %4254, 5
  store i64 %4255, i64* %PC.i458
  %4256 = inttoptr i64 %4252 to i64*
  store i64 %4253, i64* %4256
  store %struct.Memory* %loadMem_43c47c, %struct.Memory** %MEMORY
  %loadMem_43c481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 33
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 1
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %4263 = bitcast %union.anon* %4262 to %struct.anon.2*
  %AL.i457 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4263, i32 0, i32 0
  %4264 = load i64, i64* %PC.i456
  %4265 = add i64 %4264, 2
  store i64 %4265, i64* %PC.i456
  store i8 1, i8* %AL.i457, align 1
  store %struct.Memory* %loadMem_43c481, %struct.Memory** %MEMORY
  %loadMem1_43c483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 33
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4268 to i64*
  %4269 = load i64, i64* %PC.i455
  %4270 = add i64 %4269, -241427
  %4271 = load i64, i64* %PC.i455
  %4272 = add i64 %4271, 5
  %4273 = load i64, i64* %PC.i455
  %4274 = add i64 %4273, 5
  store i64 %4274, i64* %PC.i455
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4276 = load i64, i64* %4275, align 8
  %4277 = add i64 %4276, -8
  %4278 = inttoptr i64 %4277 to i64*
  store i64 %4272, i64* %4278
  store i64 %4277, i64* %4275, align 8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4270, i64* %4279, align 8
  store %struct.Memory* %loadMem1_43c483, %struct.Memory** %MEMORY
  %loadMem2_43c483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c483 = load i64, i64* %3
  %4280 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c483)
  store %struct.Memory* %4280, %struct.Memory** %MEMORY
  %loadMem_43c488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 1
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %4286 to i32*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 15
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RBP.i451
  %4291 = sub i64 %4290, 160
  %4292 = load i32, i32* %EAX.i450
  %4293 = zext i32 %4292 to i64
  %4294 = load i64, i64* %PC.i449
  %4295 = add i64 %4294, 6
  store i64 %4295, i64* %PC.i449
  %4296 = inttoptr i64 %4291 to i32*
  store i32 %4292, i32* %4296
  store %struct.Memory* %loadMem_43c488, %struct.Memory** %MEMORY
  %loadMem_43c48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 1
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 15
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %RBP.i448
  %4307 = sub i64 %4306, 24
  %4308 = load i64, i64* %PC.i446
  %4309 = add i64 %4308, 3
  store i64 %4309, i64* %PC.i446
  %4310 = inttoptr i64 %4307 to i32*
  %4311 = load i32, i32* %4310
  %4312 = zext i32 %4311 to i64
  store i64 %4312, i64* %RAX.i447, align 8
  store %struct.Memory* %loadMem_43c48e, %struct.Memory** %MEMORY
  %loadMem_43c491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 33
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4315 to i64*
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 1
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %4318 to i64*
  %4319 = load i64, i64* %RAX.i445
  %4320 = load i64, i64* %PC.i444
  %4321 = add i64 %4320, 3
  store i64 %4321, i64* %PC.i444
  %4322 = trunc i64 %4319 to i32
  %4323 = add i32 1, %4322
  %4324 = zext i32 %4323 to i64
  store i64 %4324, i64* %RAX.i445, align 8
  %4325 = icmp ult i32 %4323, %4322
  %4326 = icmp ult i32 %4323, 1
  %4327 = or i1 %4325, %4326
  %4328 = zext i1 %4327 to i8
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4328, i8* %4329, align 1
  %4330 = and i32 %4323, 255
  %4331 = call i32 @llvm.ctpop.i32(i32 %4330)
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  %4334 = xor i8 %4333, 1
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4334, i8* %4335, align 1
  %4336 = xor i64 1, %4319
  %4337 = trunc i64 %4336 to i32
  %4338 = xor i32 %4337, %4323
  %4339 = lshr i32 %4338, 4
  %4340 = trunc i32 %4339 to i8
  %4341 = and i8 %4340, 1
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4341, i8* %4342, align 1
  %4343 = icmp eq i32 %4323, 0
  %4344 = zext i1 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4344, i8* %4345, align 1
  %4346 = lshr i32 %4323, 31
  %4347 = trunc i32 %4346 to i8
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4347, i8* %4348, align 1
  %4349 = lshr i32 %4322, 31
  %4350 = xor i32 %4346, %4349
  %4351 = add i32 %4350, %4346
  %4352 = icmp eq i32 %4351, 2
  %4353 = zext i1 %4352 to i8
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4353, i8* %4354, align 1
  store %struct.Memory* %loadMem_43c491, %struct.Memory** %MEMORY
  %loadMem_43c494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 1
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %4360 to i32*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 15
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %4363 to i64*
  %4364 = load i64, i64* %RBP.i443
  %4365 = sub i64 %4364, 24
  %4366 = load i32, i32* %EAX.i442
  %4367 = zext i32 %4366 to i64
  %4368 = load i64, i64* %PC.i441
  %4369 = add i64 %4368, 3
  store i64 %4369, i64* %PC.i441
  %4370 = inttoptr i64 %4365 to i32*
  store i32 %4366, i32* %4370
  store %struct.Memory* %loadMem_43c494, %struct.Memory** %MEMORY
  %loadMem_43c497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 33
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4373 to i64*
  %4374 = load i64, i64* %PC.i440
  %4375 = add i64 %4374, -388
  %4376 = load i64, i64* %PC.i440
  %4377 = add i64 %4376, 5
  store i64 %4377, i64* %PC.i440
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4375, i64* %4378, align 8
  store %struct.Memory* %loadMem_43c497, %struct.Memory** %MEMORY
  br label %block_.L_43c313

block_.L_43c49c:                                  ; preds = %block_.L_43c313
  %loadMem_43c49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 33
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 9
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %RSI.i439 = bitcast %union.anon* %4384 to i64*
  %4385 = load i64, i64* %PC.i438
  %4386 = add i64 %4385, 10
  store i64 %4386, i64* %PC.i438
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i439, align 8
  store %struct.Memory* %loadMem_43c49c, %struct.Memory** %MEMORY
  %loadMem_43c4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 33
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4389 to i64*
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 11
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %RDI.i436 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 15
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %4395 to i64*
  %4396 = load i64, i64* %RBP.i437
  %4397 = sub i64 %4396, 8
  %4398 = load i64, i64* %PC.i435
  %4399 = add i64 %4398, 4
  store i64 %4399, i64* %PC.i435
  %4400 = inttoptr i64 %4397 to i64*
  %4401 = load i64, i64* %4400
  store i64 %4401, i64* %RDI.i436, align 8
  store %struct.Memory* %loadMem_43c4a6, %struct.Memory** %MEMORY
  %loadMem_43c4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 33
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4404 to i64*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 1
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %4408 = bitcast %union.anon* %4407 to %struct.anon.2*
  %AL.i434 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4408, i32 0, i32 0
  %4409 = load i64, i64* %PC.i433
  %4410 = add i64 %4409, 2
  store i64 %4410, i64* %PC.i433
  store i8 0, i8* %AL.i434, align 1
  store %struct.Memory* %loadMem_43c4aa, %struct.Memory** %MEMORY
  %loadMem1_43c4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %PC.i432
  %4415 = add i64 %4414, -241468
  %4416 = load i64, i64* %PC.i432
  %4417 = add i64 %4416, 5
  %4418 = load i64, i64* %PC.i432
  %4419 = add i64 %4418, 5
  store i64 %4419, i64* %PC.i432
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4421 = load i64, i64* %4420, align 8
  %4422 = add i64 %4421, -8
  %4423 = inttoptr i64 %4422 to i64*
  store i64 %4417, i64* %4423
  store i64 %4422, i64* %4420, align 8
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4415, i64* %4424, align 8
  store %struct.Memory* %loadMem1_43c4ac, %struct.Memory** %MEMORY
  %loadMem2_43c4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c4ac = load i64, i64* %3
  %4425 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c4ac)
  store %struct.Memory* %4425, %struct.Memory** %MEMORY
  %loadMem_43c4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 33
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 15
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RBP.i429
  %4433 = sub i64 %4432, 44
  %4434 = load i64, i64* %PC.i428
  %4435 = add i64 %4434, 7
  store i64 %4435, i64* %PC.i428
  %4436 = inttoptr i64 %4433 to i32*
  store i32 0, i32* %4436
  store %struct.Memory* %loadMem_43c4b1, %struct.Memory** %MEMORY
  %loadMem_43c4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 33
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4439 to i64*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 1
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %4442 to i32*
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 15
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %4445 to i64*
  %4446 = load i64, i64* %RBP.i427
  %4447 = sub i64 %4446, 164
  %4448 = load i32, i32* %EAX.i426
  %4449 = zext i32 %4448 to i64
  %4450 = load i64, i64* %PC.i425
  %4451 = add i64 %4450, 6
  store i64 %4451, i64* %PC.i425
  %4452 = inttoptr i64 %4447 to i32*
  store i32 %4448, i32* %4452
  store %struct.Memory* %loadMem_43c4b8, %struct.Memory** %MEMORY
  br label %block_.L_43c4be

block_.L_43c4be:                                  ; preds = %block_.L_43c78e, %block_.L_43c49c
  %loadMem_43c4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 33
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 1
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %4458 to i64*
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 15
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %4461 to i64*
  %4462 = load i64, i64* %RBP.i424
  %4463 = sub i64 %4462, 44
  %4464 = load i64, i64* %PC.i422
  %4465 = add i64 %4464, 3
  store i64 %4465, i64* %PC.i422
  %4466 = inttoptr i64 %4463 to i32*
  %4467 = load i32, i32* %4466
  %4468 = zext i32 %4467 to i64
  store i64 %4468, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_43c4be, %struct.Memory** %MEMORY
  %loadMem_43c4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 33
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4471 to i64*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 5
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 15
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %4477 to i64*
  %4478 = load i64, i64* %RBP.i421
  %4479 = sub i64 %4478, 16
  %4480 = load i64, i64* %PC.i419
  %4481 = add i64 %4480, 4
  store i64 %4481, i64* %PC.i419
  %4482 = inttoptr i64 %4479 to i64*
  %4483 = load i64, i64* %4482
  store i64 %4483, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_43c4c1, %struct.Memory** %MEMORY
  %loadMem_43c4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 33
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 1
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %4489 to i32*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 5
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %4492 to i64*
  %4493 = load i32, i32* %EAX.i417
  %4494 = zext i32 %4493 to i64
  %4495 = load i64, i64* %RCX.i418
  %4496 = add i64 %4495, 24
  %4497 = load i64, i64* %PC.i416
  %4498 = add i64 %4497, 3
  store i64 %4498, i64* %PC.i416
  %4499 = inttoptr i64 %4496 to i32*
  %4500 = load i32, i32* %4499
  %4501 = sub i32 %4493, %4500
  %4502 = icmp ult i32 %4493, %4500
  %4503 = zext i1 %4502 to i8
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4503, i8* %4504, align 1
  %4505 = and i32 %4501, 255
  %4506 = call i32 @llvm.ctpop.i32(i32 %4505)
  %4507 = trunc i32 %4506 to i8
  %4508 = and i8 %4507, 1
  %4509 = xor i8 %4508, 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4509, i8* %4510, align 1
  %4511 = xor i32 %4500, %4493
  %4512 = xor i32 %4511, %4501
  %4513 = lshr i32 %4512, 4
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4515, i8* %4516, align 1
  %4517 = icmp eq i32 %4501, 0
  %4518 = zext i1 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4518, i8* %4519, align 1
  %4520 = lshr i32 %4501, 31
  %4521 = trunc i32 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4521, i8* %4522, align 1
  %4523 = lshr i32 %4493, 31
  %4524 = lshr i32 %4500, 31
  %4525 = xor i32 %4524, %4523
  %4526 = xor i32 %4520, %4523
  %4527 = add i32 %4526, %4525
  %4528 = icmp eq i32 %4527, 2
  %4529 = zext i1 %4528 to i8
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4529, i8* %4530, align 1
  store %struct.Memory* %loadMem_43c4c5, %struct.Memory** %MEMORY
  %loadMem_43c4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 33
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4533 to i64*
  %4534 = load i64, i64* %PC.i415
  %4535 = add i64 %4534, 724
  %4536 = load i64, i64* %PC.i415
  %4537 = add i64 %4536, 6
  %4538 = load i64, i64* %PC.i415
  %4539 = add i64 %4538, 6
  store i64 %4539, i64* %PC.i415
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4541 = load i8, i8* %4540, align 1
  %4542 = icmp ne i8 %4541, 0
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4544 = load i8, i8* %4543, align 1
  %4545 = icmp ne i8 %4544, 0
  %4546 = xor i1 %4542, %4545
  %4547 = xor i1 %4546, true
  %4548 = zext i1 %4547 to i8
  store i8 %4548, i8* %BRANCH_TAKEN, align 1
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4550 = select i1 %4546, i64 %4537, i64 %4535
  store i64 %4550, i64* %4549, align 8
  store %struct.Memory* %loadMem_43c4c8, %struct.Memory** %MEMORY
  %loadBr_43c4c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c4c8 = icmp eq i8 %loadBr_43c4c8, 1
  br i1 %cmpBr_43c4c8, label %block_.L_43c79c, label %block_43c4ce

block_43c4ce:                                     ; preds = %block_.L_43c4be
  %loadMem_43c4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 33
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 15
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %RBP.i414
  %4558 = sub i64 %4557, 44
  %4559 = load i64, i64* %PC.i413
  %4560 = add i64 %4559, 4
  store i64 %4560, i64* %PC.i413
  %4561 = inttoptr i64 %4558 to i32*
  %4562 = load i32, i32* %4561
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4563, align 1
  %4564 = and i32 %4562, 255
  %4565 = call i32 @llvm.ctpop.i32(i32 %4564)
  %4566 = trunc i32 %4565 to i8
  %4567 = and i8 %4566, 1
  %4568 = xor i8 %4567, 1
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4568, i8* %4569, align 1
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4570, align 1
  %4571 = icmp eq i32 %4562, 0
  %4572 = zext i1 %4571 to i8
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4572, i8* %4573, align 1
  %4574 = lshr i32 %4562, 31
  %4575 = trunc i32 %4574 to i8
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4575, i8* %4576, align 1
  %4577 = lshr i32 %4562, 31
  %4578 = xor i32 %4574, %4577
  %4579 = add i32 %4578, %4577
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4581, i8* %4582, align 1
  store %struct.Memory* %loadMem_43c4ce, %struct.Memory** %MEMORY
  %loadMem_43c4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %PC.i412
  %4587 = add i64 %4586, 33
  %4588 = load i64, i64* %PC.i412
  %4589 = add i64 %4588, 6
  %4590 = load i64, i64* %PC.i412
  %4591 = add i64 %4590, 6
  store i64 %4591, i64* %PC.i412
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4593 = load i8, i8* %4592, align 1
  %4594 = icmp ne i8 %4593, 0
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4596 = load i8, i8* %4595, align 1
  %4597 = icmp ne i8 %4596, 0
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4599 = load i8, i8* %4598, align 1
  %4600 = icmp ne i8 %4599, 0
  %4601 = xor i1 %4597, %4600
  %4602 = or i1 %4594, %4601
  %4603 = zext i1 %4602 to i8
  store i8 %4603, i8* %BRANCH_TAKEN, align 1
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4605 = select i1 %4602, i64 %4587, i64 %4589
  store i64 %4605, i64* %4604, align 8
  store %struct.Memory* %loadMem_43c4d2, %struct.Memory** %MEMORY
  %loadBr_43c4d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c4d2 = icmp eq i8 %loadBr_43c4d2, 1
  br i1 %cmpBr_43c4d2, label %block_.L_43c4f3, label %block_43c4d8

block_43c4d8:                                     ; preds = %block_43c4ce
  %loadMem_43c4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 33
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4608 to i64*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 9
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %RSI.i411 = bitcast %union.anon* %4611 to i64*
  %4612 = load i64, i64* %PC.i410
  %4613 = add i64 %4612, 10
  store i64 %4613, i64* %PC.i410
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i411, align 8
  store %struct.Memory* %loadMem_43c4d8, %struct.Memory** %MEMORY
  %loadMem_43c4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 11
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RDI.i408 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 15
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %4622 to i64*
  %4623 = load i64, i64* %RBP.i409
  %4624 = sub i64 %4623, 8
  %4625 = load i64, i64* %PC.i407
  %4626 = add i64 %4625, 4
  store i64 %4626, i64* %PC.i407
  %4627 = inttoptr i64 %4624 to i64*
  %4628 = load i64, i64* %4627
  store i64 %4628, i64* %RDI.i408, align 8
  store %struct.Memory* %loadMem_43c4e2, %struct.Memory** %MEMORY
  %loadMem_43c4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 1
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %4635 = bitcast %union.anon* %4634 to %struct.anon.2*
  %AL.i406 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4635, i32 0, i32 0
  %4636 = load i64, i64* %PC.i405
  %4637 = add i64 %4636, 2
  store i64 %4637, i64* %PC.i405
  store i8 0, i8* %AL.i406, align 1
  store %struct.Memory* %loadMem_43c4e6, %struct.Memory** %MEMORY
  %loadMem1_43c4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 33
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %PC.i404
  %4642 = add i64 %4641, -241528
  %4643 = load i64, i64* %PC.i404
  %4644 = add i64 %4643, 5
  %4645 = load i64, i64* %PC.i404
  %4646 = add i64 %4645, 5
  store i64 %4646, i64* %PC.i404
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4648 = load i64, i64* %4647, align 8
  %4649 = add i64 %4648, -8
  %4650 = inttoptr i64 %4649 to i64*
  store i64 %4644, i64* %4650
  store i64 %4649, i64* %4647, align 8
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4642, i64* %4651, align 8
  store %struct.Memory* %loadMem1_43c4e8, %struct.Memory** %MEMORY
  %loadMem2_43c4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c4e8 = load i64, i64* %3
  %4652 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c4e8)
  store %struct.Memory* %4652, %struct.Memory** %MEMORY
  %loadMem_43c4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 33
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4655 to i64*
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 1
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %4658 to i32*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 15
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %4661 to i64*
  %4662 = load i64, i64* %RBP.i400
  %4663 = sub i64 %4662, 168
  %4664 = load i32, i32* %EAX.i399
  %4665 = zext i32 %4664 to i64
  %4666 = load i64, i64* %PC.i398
  %4667 = add i64 %4666, 6
  store i64 %4667, i64* %PC.i398
  %4668 = inttoptr i64 %4663 to i32*
  store i32 %4664, i32* %4668
  store %struct.Memory* %loadMem_43c4ed, %struct.Memory** %MEMORY
  br label %block_.L_43c4f3

block_.L_43c4f3:                                  ; preds = %block_43c4d8, %block_43c4ce
  %loadMem_43c4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 33
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4671 to i64*
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 1
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 15
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %4677 to i64*
  %4678 = load i64, i64* %RBP.i397
  %4679 = sub i64 %4678, 16
  %4680 = load i64, i64* %PC.i395
  %4681 = add i64 %4680, 4
  store i64 %4681, i64* %PC.i395
  %4682 = inttoptr i64 %4679 to i64*
  %4683 = load i64, i64* %4682
  store i64 %4683, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_43c4f3, %struct.Memory** %MEMORY
  %loadMem_43c4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 1
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %4689 to i64*
  %4690 = load i64, i64* %RAX.i394
  %4691 = add i64 %4690, 72
  %4692 = load i64, i64* %PC.i393
  %4693 = add i64 %4692, 5
  store i64 %4693, i64* %PC.i393
  %4694 = inttoptr i64 %4691 to i64*
  %4695 = load i64, i64* %4694
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4696, align 1
  %4697 = trunc i64 %4695 to i32
  %4698 = and i32 %4697, 255
  %4699 = call i32 @llvm.ctpop.i32(i32 %4698)
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  %4702 = xor i8 %4701, 1
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4702, i8* %4703, align 1
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4704, align 1
  %4705 = icmp eq i64 %4695, 0
  %4706 = zext i1 %4705 to i8
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4706, i8* %4707, align 1
  %4708 = lshr i64 %4695, 63
  %4709 = trunc i64 %4708 to i8
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4709, i8* %4710, align 1
  %4711 = lshr i64 %4695, 63
  %4712 = xor i64 %4708, %4711
  %4713 = add i64 %4712, %4711
  %4714 = icmp eq i64 %4713, 2
  %4715 = zext i1 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4715, i8* %4716, align 1
  store %struct.Memory* %loadMem_43c4f7, %struct.Memory** %MEMORY
  %loadMem_43c4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4719 to i64*
  %4720 = load i64, i64* %PC.i392
  %4721 = add i64 %4720, 103
  %4722 = load i64, i64* %PC.i392
  %4723 = add i64 %4722, 6
  %4724 = load i64, i64* %PC.i392
  %4725 = add i64 %4724, 6
  store i64 %4725, i64* %PC.i392
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4727 = load i8, i8* %4726, align 1
  store i8 %4727, i8* %BRANCH_TAKEN, align 1
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4729 = icmp ne i8 %4727, 0
  %4730 = select i1 %4729, i64 %4721, i64 %4723
  store i64 %4730, i64* %4728, align 8
  store %struct.Memory* %loadMem_43c4fc, %struct.Memory** %MEMORY
  %loadBr_43c4fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c4fc = icmp eq i8 %loadBr_43c4fc, 1
  br i1 %cmpBr_43c4fc, label %block_.L_43c563, label %block_43c502

block_43c502:                                     ; preds = %block_.L_43c4f3
  %loadMem_43c502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 11
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 15
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %RBP.i391
  %4741 = sub i64 %4740, 40
  %4742 = load i64, i64* %PC.i389
  %4743 = add i64 %4742, 4
  store i64 %4743, i64* %PC.i389
  %4744 = inttoptr i64 %4741 to i64*
  %4745 = load i64, i64* %4744
  store i64 %4745, i64* %RDI.i390, align 8
  store %struct.Memory* %loadMem_43c502, %struct.Memory** %MEMORY
  %loadMem_43c506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 33
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4748 to i64*
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 1
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 15
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %4754 to i64*
  %4755 = load i64, i64* %RBP.i388
  %4756 = sub i64 %4755, 16
  %4757 = load i64, i64* %PC.i386
  %4758 = add i64 %4757, 4
  store i64 %4758, i64* %PC.i386
  %4759 = inttoptr i64 %4756 to i64*
  %4760 = load i64, i64* %4759
  store i64 %4760, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_43c506, %struct.Memory** %MEMORY
  %loadMem_43c50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 33
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %4763 to i64*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 1
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %4766 to i64*
  %4767 = load i64, i64* %RAX.i385
  %4768 = add i64 %4767, 72
  %4769 = load i64, i64* %PC.i384
  %4770 = add i64 %4769, 4
  store i64 %4770, i64* %PC.i384
  %4771 = inttoptr i64 %4768 to i64*
  %4772 = load i64, i64* %4771
  store i64 %4772, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_43c50a, %struct.Memory** %MEMORY
  %loadMem_43c50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 5
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 15
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %4781 to i64*
  %4782 = load i64, i64* %RBP.i383
  %4783 = sub i64 %4782, 44
  %4784 = load i64, i64* %PC.i381
  %4785 = add i64 %4784, 4
  store i64 %4785, i64* %PC.i381
  %4786 = inttoptr i64 %4783 to i32*
  %4787 = load i32, i32* %4786
  %4788 = sext i32 %4787 to i64
  store i64 %4788, i64* %RCX.i382, align 8
  store %struct.Memory* %loadMem_43c50e, %struct.Memory** %MEMORY
  %loadMem_43c512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 33
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4791 to i64*
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 1
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %4794 to i64*
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 5
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %4797 to i64*
  %4798 = load i64, i64* %RAX.i379
  %4799 = load i64, i64* %RCX.i380
  %4800 = load i64, i64* %PC.i378
  %4801 = add i64 %4800, 3
  store i64 %4801, i64* %PC.i378
  %4802 = add i64 %4799, %4798
  store i64 %4802, i64* %RAX.i379, align 8
  %4803 = icmp ult i64 %4802, %4798
  %4804 = icmp ult i64 %4802, %4799
  %4805 = or i1 %4803, %4804
  %4806 = zext i1 %4805 to i8
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4806, i8* %4807, align 1
  %4808 = trunc i64 %4802 to i32
  %4809 = and i32 %4808, 255
  %4810 = call i32 @llvm.ctpop.i32(i32 %4809)
  %4811 = trunc i32 %4810 to i8
  %4812 = and i8 %4811, 1
  %4813 = xor i8 %4812, 1
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4813, i8* %4814, align 1
  %4815 = xor i64 %4799, %4798
  %4816 = xor i64 %4815, %4802
  %4817 = lshr i64 %4816, 4
  %4818 = trunc i64 %4817 to i8
  %4819 = and i8 %4818, 1
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4819, i8* %4820, align 1
  %4821 = icmp eq i64 %4802, 0
  %4822 = zext i1 %4821 to i8
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4822, i8* %4823, align 1
  %4824 = lshr i64 %4802, 63
  %4825 = trunc i64 %4824 to i8
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4825, i8* %4826, align 1
  %4827 = lshr i64 %4798, 63
  %4828 = lshr i64 %4799, 63
  %4829 = xor i64 %4824, %4827
  %4830 = xor i64 %4824, %4828
  %4831 = add i64 %4829, %4830
  %4832 = icmp eq i64 %4831, 2
  %4833 = zext i1 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4833, i8* %4834, align 1
  store %struct.Memory* %loadMem_43c512, %struct.Memory** %MEMORY
  %loadMem_43c515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 33
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 7
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 15
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %4843 to i64*
  %4844 = load i64, i64* %RBP.i377
  %4845 = sub i64 %4844, 20
  %4846 = load i64, i64* %PC.i375
  %4847 = add i64 %4846, 4
  store i64 %4847, i64* %PC.i375
  %4848 = inttoptr i64 %4845 to i32*
  %4849 = load i32, i32* %4848
  %4850 = sext i32 %4849 to i64
  store i64 %4850, i64* %RDX.i376, align 8
  store %struct.Memory* %loadMem_43c515, %struct.Memory** %MEMORY
  %loadMem_43c519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 33
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4853 to i64*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 1
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %4856 to i64*
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 9
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %RSI.i374 = bitcast %union.anon* %4859 to i64*
  %4860 = load i64, i64* %RAX.i373
  %4861 = load i64, i64* %PC.i372
  %4862 = add i64 %4861, 3
  store i64 %4862, i64* %PC.i372
  store i64 %4860, i64* %RSI.i374, align 8
  store %struct.Memory* %loadMem_43c519, %struct.Memory** %MEMORY
  %loadMem1_43c51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 33
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4865 to i64*
  %4866 = load i64, i64* %PC.i371
  %4867 = add i64 %4866, -242028
  %4868 = load i64, i64* %PC.i371
  %4869 = add i64 %4868, 5
  %4870 = load i64, i64* %PC.i371
  %4871 = add i64 %4870, 5
  store i64 %4871, i64* %PC.i371
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4873 = load i64, i64* %4872, align 8
  %4874 = add i64 %4873, -8
  %4875 = inttoptr i64 %4874 to i64*
  store i64 %4869, i64* %4875
  store i64 %4874, i64* %4872, align 8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4867, i64* %4876, align 8
  store %struct.Memory* %loadMem1_43c51c, %struct.Memory** %MEMORY
  %loadMem2_43c51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c51c = load i64, i64* %3
  %call2_43c51c = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64 %loadPC_43c51c, %struct.Memory* %loadMem2_43c51c)
  store %struct.Memory* %call2_43c51c, %struct.Memory** %MEMORY
  %loadMem_43c521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 9
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RSI.i370 = bitcast %union.anon* %4882 to i64*
  %4883 = load i64, i64* %PC.i369
  %4884 = add i64 %4883, 10
  store i64 %4884, i64* %PC.i369
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i370, align 8
  store %struct.Memory* %loadMem_43c521, %struct.Memory** %MEMORY
  %loadMem_43c52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 33
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4887 to i64*
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 17
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %R8.i368 = bitcast %union.anon* %4890 to i64*
  %4891 = load i64, i64* %PC.i367
  %4892 = add i64 %4891, 10
  store i64 %4892, i64* %PC.i367
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %R8.i368, align 8
  store %struct.Memory* %loadMem_43c52b, %struct.Memory** %MEMORY
  %loadMem_43c535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 5
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 15
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %4901 to i64*
  %4902 = load i64, i64* %RBP.i366
  %4903 = sub i64 %4902, 40
  %4904 = load i64, i64* %PC.i364
  %4905 = add i64 %4904, 4
  store i64 %4905, i64* %PC.i364
  %4906 = inttoptr i64 %4903 to i64*
  %4907 = load i64, i64* %4906
  store i64 %4907, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_43c535, %struct.Memory** %MEMORY
  %loadMem_43c539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 33
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 7
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 15
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %RBP.i363
  %4918 = sub i64 %4917, 20
  %4919 = load i64, i64* %PC.i361
  %4920 = add i64 %4919, 4
  store i64 %4920, i64* %PC.i361
  %4921 = inttoptr i64 %4918 to i32*
  %4922 = load i32, i32* %4921
  %4923 = sext i32 %4922 to i64
  store i64 %4923, i64* %RDX.i362, align 8
  store %struct.Memory* %loadMem_43c539, %struct.Memory** %MEMORY
  %loadMem_43c53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4925 = getelementptr inbounds %struct.GPR, %struct.GPR* %4924, i32 0, i32 33
  %4926 = getelementptr inbounds %struct.Reg, %struct.Reg* %4925, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4926 to i64*
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 5
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 7
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %4932 to i64*
  %4933 = load i64, i64* %RCX.i359
  %4934 = load i64, i64* %RDX.i360
  %4935 = add i64 %4934, %4933
  %4936 = load i64, i64* %PC.i358
  %4937 = add i64 %4936, 4
  store i64 %4937, i64* %PC.i358
  %4938 = inttoptr i64 %4935 to i8*
  store i8 0, i8* %4938
  store %struct.Memory* %loadMem_43c53d, %struct.Memory** %MEMORY
  %loadMem_43c541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 33
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 11
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RDI.i356 = bitcast %union.anon* %4944 to i64*
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 15
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %RBP.i357
  %4949 = sub i64 %4948, 8
  %4950 = load i64, i64* %PC.i355
  %4951 = add i64 %4950, 4
  store i64 %4951, i64* %PC.i355
  %4952 = inttoptr i64 %4949 to i64*
  %4953 = load i64, i64* %4952
  store i64 %4953, i64* %RDI.i356, align 8
  store %struct.Memory* %loadMem_43c541, %struct.Memory** %MEMORY
  %loadMem_43c545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 33
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 7
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %RDX.i353 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 15
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %4962 to i64*
  %4963 = load i64, i64* %RBP.i354
  %4964 = sub i64 %4963, 32
  %4965 = load i64, i64* %PC.i352
  %4966 = add i64 %4965, 3
  store i64 %4966, i64* %PC.i352
  %4967 = inttoptr i64 %4964 to i32*
  %4968 = load i32, i32* %4967
  %4969 = zext i32 %4968 to i64
  store i64 %4969, i64* %RDX.i353, align 8
  store %struct.Memory* %loadMem_43c545, %struct.Memory** %MEMORY
  %loadMem_43c548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 33
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4972 to i64*
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 5
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 15
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %4978 to i64*
  %4979 = load i64, i64* %RBP.i351
  %4980 = sub i64 %4979, 32
  %4981 = load i64, i64* %PC.i349
  %4982 = add i64 %4981, 3
  store i64 %4982, i64* %PC.i349
  %4983 = inttoptr i64 %4980 to i32*
  %4984 = load i32, i32* %4983
  %4985 = zext i32 %4984 to i64
  store i64 %4985, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_43c548, %struct.Memory** %MEMORY
  %loadMem_43c54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 15
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 19
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %R9.i348 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %RBP.i347
  %4996 = sub i64 %4995, 40
  %4997 = load i64, i64* %PC.i346
  %4998 = add i64 %4997, 4
  store i64 %4998, i64* %PC.i346
  %4999 = inttoptr i64 %4996 to i64*
  %5000 = load i64, i64* %4999
  store i64 %5000, i64* %R9.i348, align 8
  store %struct.Memory* %loadMem_43c54b, %struct.Memory** %MEMORY
  %loadMem_43c54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 33
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5003 to i64*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 1
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 15
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %RBP.i345
  %5011 = sub i64 %5010, 176
  %5012 = load i64, i64* %RAX.i344
  %5013 = load i64, i64* %PC.i343
  %5014 = add i64 %5013, 7
  store i64 %5014, i64* %PC.i343
  %5015 = inttoptr i64 %5011 to i64*
  store i64 %5012, i64* %5015
  store %struct.Memory* %loadMem_43c54f, %struct.Memory** %MEMORY
  %loadMem_43c556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5017 = getelementptr inbounds %struct.GPR, %struct.GPR* %5016, i32 0, i32 33
  %5018 = getelementptr inbounds %struct.Reg, %struct.Reg* %5017, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5018 to i64*
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 1
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %5022 = bitcast %union.anon* %5021 to %struct.anon.2*
  %AL.i342 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5022, i32 0, i32 0
  %5023 = load i64, i64* %PC.i341
  %5024 = add i64 %5023, 2
  store i64 %5024, i64* %PC.i341
  store i8 0, i8* %AL.i342, align 1
  store %struct.Memory* %loadMem_43c556, %struct.Memory** %MEMORY
  %loadMem1_43c558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 33
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5027 to i64*
  %5028 = load i64, i64* %PC.i340
  %5029 = add i64 %5028, -241640
  %5030 = load i64, i64* %PC.i340
  %5031 = add i64 %5030, 5
  %5032 = load i64, i64* %PC.i340
  %5033 = add i64 %5032, 5
  store i64 %5033, i64* %PC.i340
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5035 = load i64, i64* %5034, align 8
  %5036 = add i64 %5035, -8
  %5037 = inttoptr i64 %5036 to i64*
  store i64 %5031, i64* %5037
  store i64 %5036, i64* %5034, align 8
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5029, i64* %5038, align 8
  store %struct.Memory* %loadMem1_43c558, %struct.Memory** %MEMORY
  %loadMem2_43c558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c558 = load i64, i64* %3
  %5039 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c558)
  store %struct.Memory* %5039, %struct.Memory** %MEMORY
  %loadMem_43c55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 1
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %5045 to i32*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 15
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %5048 to i64*
  %5049 = load i64, i64* %RBP.i337
  %5050 = sub i64 %5049, 180
  %5051 = load i32, i32* %EAX.i336
  %5052 = zext i32 %5051 to i64
  %5053 = load i64, i64* %PC.i335
  %5054 = add i64 %5053, 6
  store i64 %5054, i64* %PC.i335
  %5055 = inttoptr i64 %5050 to i32*
  store i32 %5051, i32* %5055
  store %struct.Memory* %loadMem_43c55d, %struct.Memory** %MEMORY
  br label %block_.L_43c563

block_.L_43c563:                                  ; preds = %block_43c502, %block_.L_43c4f3
  %loadMem_43c563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 1
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %5061 to i64*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 15
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %5064 to i64*
  %5065 = load i64, i64* %RBP.i334
  %5066 = sub i64 %5065, 16
  %5067 = load i64, i64* %PC.i332
  %5068 = add i64 %5067, 4
  store i64 %5068, i64* %PC.i332
  %5069 = inttoptr i64 %5066 to i64*
  %5070 = load i64, i64* %5069
  store i64 %5070, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_43c563, %struct.Memory** %MEMORY
  %loadMem_43c567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 1
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %RAX.i331
  %5078 = add i64 %5077, 88
  %5079 = load i64, i64* %PC.i330
  %5080 = add i64 %5079, 5
  store i64 %5080, i64* %PC.i330
  %5081 = inttoptr i64 %5078 to i64*
  %5082 = load i64, i64* %5081
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5083, align 1
  %5084 = trunc i64 %5082 to i32
  %5085 = and i32 %5084, 255
  %5086 = call i32 @llvm.ctpop.i32(i32 %5085)
  %5087 = trunc i32 %5086 to i8
  %5088 = and i8 %5087, 1
  %5089 = xor i8 %5088, 1
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5089, i8* %5090, align 1
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5091, align 1
  %5092 = icmp eq i64 %5082, 0
  %5093 = zext i1 %5092 to i8
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5093, i8* %5094, align 1
  %5095 = lshr i64 %5082, 63
  %5096 = trunc i64 %5095 to i8
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5096, i8* %5097, align 1
  %5098 = lshr i64 %5082, 63
  %5099 = xor i64 %5095, %5098
  %5100 = add i64 %5099, %5098
  %5101 = icmp eq i64 %5100, 2
  %5102 = zext i1 %5101 to i8
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5102, i8* %5103, align 1
  store %struct.Memory* %loadMem_43c567, %struct.Memory** %MEMORY
  %loadMem_43c56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5106 to i64*
  %5107 = load i64, i64* %PC.i329
  %5108 = add i64 %5107, 103
  %5109 = load i64, i64* %PC.i329
  %5110 = add i64 %5109, 6
  %5111 = load i64, i64* %PC.i329
  %5112 = add i64 %5111, 6
  store i64 %5112, i64* %PC.i329
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5114 = load i8, i8* %5113, align 1
  store i8 %5114, i8* %BRANCH_TAKEN, align 1
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5116 = icmp ne i8 %5114, 0
  %5117 = select i1 %5116, i64 %5108, i64 %5110
  store i64 %5117, i64* %5115, align 8
  store %struct.Memory* %loadMem_43c56c, %struct.Memory** %MEMORY
  %loadBr_43c56c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c56c = icmp eq i8 %loadBr_43c56c, 1
  br i1 %cmpBr_43c56c, label %block_.L_43c5d3, label %block_43c572

block_43c572:                                     ; preds = %block_.L_43c563
  %loadMem_43c572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 11
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RDI.i327 = bitcast %union.anon* %5123 to i64*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 15
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5126 to i64*
  %5127 = load i64, i64* %RBP.i328
  %5128 = sub i64 %5127, 40
  %5129 = load i64, i64* %PC.i326
  %5130 = add i64 %5129, 4
  store i64 %5130, i64* %PC.i326
  %5131 = inttoptr i64 %5128 to i64*
  %5132 = load i64, i64* %5131
  store i64 %5132, i64* %RDI.i327, align 8
  store %struct.Memory* %loadMem_43c572, %struct.Memory** %MEMORY
  %loadMem_43c576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 33
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5135 to i64*
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 1
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 15
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5141 to i64*
  %5142 = load i64, i64* %RBP.i325
  %5143 = sub i64 %5142, 16
  %5144 = load i64, i64* %PC.i323
  %5145 = add i64 %5144, 4
  store i64 %5145, i64* %PC.i323
  %5146 = inttoptr i64 %5143 to i64*
  %5147 = load i64, i64* %5146
  store i64 %5147, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_43c576, %struct.Memory** %MEMORY
  %loadMem_43c57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 1
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %5153 to i64*
  %5154 = load i64, i64* %RAX.i322
  %5155 = add i64 %5154, 88
  %5156 = load i64, i64* %PC.i321
  %5157 = add i64 %5156, 4
  store i64 %5157, i64* %PC.i321
  %5158 = inttoptr i64 %5155 to i64*
  %5159 = load i64, i64* %5158
  store i64 %5159, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_43c57a, %struct.Memory** %MEMORY
  %loadMem_43c57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 5
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 15
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %5168 to i64*
  %5169 = load i64, i64* %RBP.i320
  %5170 = sub i64 %5169, 44
  %5171 = load i64, i64* %PC.i318
  %5172 = add i64 %5171, 4
  store i64 %5172, i64* %PC.i318
  %5173 = inttoptr i64 %5170 to i32*
  %5174 = load i32, i32* %5173
  %5175 = sext i32 %5174 to i64
  store i64 %5175, i64* %RCX.i319, align 8
  store %struct.Memory* %loadMem_43c57e, %struct.Memory** %MEMORY
  %loadMem_43c582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 33
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %5178 to i64*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 1
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %5181 to i64*
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 5
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %5184 to i64*
  %5185 = load i64, i64* %RAX.i316
  %5186 = load i64, i64* %RCX.i317
  %5187 = load i64, i64* %PC.i315
  %5188 = add i64 %5187, 3
  store i64 %5188, i64* %PC.i315
  %5189 = add i64 %5186, %5185
  store i64 %5189, i64* %RAX.i316, align 8
  %5190 = icmp ult i64 %5189, %5185
  %5191 = icmp ult i64 %5189, %5186
  %5192 = or i1 %5190, %5191
  %5193 = zext i1 %5192 to i8
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5193, i8* %5194, align 1
  %5195 = trunc i64 %5189 to i32
  %5196 = and i32 %5195, 255
  %5197 = call i32 @llvm.ctpop.i32(i32 %5196)
  %5198 = trunc i32 %5197 to i8
  %5199 = and i8 %5198, 1
  %5200 = xor i8 %5199, 1
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5200, i8* %5201, align 1
  %5202 = xor i64 %5186, %5185
  %5203 = xor i64 %5202, %5189
  %5204 = lshr i64 %5203, 4
  %5205 = trunc i64 %5204 to i8
  %5206 = and i8 %5205, 1
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5206, i8* %5207, align 1
  %5208 = icmp eq i64 %5189, 0
  %5209 = zext i1 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5209, i8* %5210, align 1
  %5211 = lshr i64 %5189, 63
  %5212 = trunc i64 %5211 to i8
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5212, i8* %5213, align 1
  %5214 = lshr i64 %5185, 63
  %5215 = lshr i64 %5186, 63
  %5216 = xor i64 %5211, %5214
  %5217 = xor i64 %5211, %5215
  %5218 = add i64 %5216, %5217
  %5219 = icmp eq i64 %5218, 2
  %5220 = zext i1 %5219 to i8
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5220, i8* %5221, align 1
  store %struct.Memory* %loadMem_43c582, %struct.Memory** %MEMORY
  %loadMem_43c585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 7
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 15
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %5230 to i64*
  %5231 = load i64, i64* %RBP.i314
  %5232 = sub i64 %5231, 20
  %5233 = load i64, i64* %PC.i312
  %5234 = add i64 %5233, 4
  store i64 %5234, i64* %PC.i312
  %5235 = inttoptr i64 %5232 to i32*
  %5236 = load i32, i32* %5235
  %5237 = sext i32 %5236 to i64
  store i64 %5237, i64* %RDX.i313, align 8
  store %struct.Memory* %loadMem_43c585, %struct.Memory** %MEMORY
  %loadMem_43c589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 33
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5240 to i64*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 1
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %5243 to i64*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 9
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %RSI.i311 = bitcast %union.anon* %5246 to i64*
  %5247 = load i64, i64* %RAX.i310
  %5248 = load i64, i64* %PC.i309
  %5249 = add i64 %5248, 3
  store i64 %5249, i64* %PC.i309
  store i64 %5247, i64* %RSI.i311, align 8
  store %struct.Memory* %loadMem_43c589, %struct.Memory** %MEMORY
  %loadMem1_43c58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 33
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5252 to i64*
  %5253 = load i64, i64* %PC.i308
  %5254 = add i64 %5253, -242140
  %5255 = load i64, i64* %PC.i308
  %5256 = add i64 %5255, 5
  %5257 = load i64, i64* %PC.i308
  %5258 = add i64 %5257, 5
  store i64 %5258, i64* %PC.i308
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5260 = load i64, i64* %5259, align 8
  %5261 = add i64 %5260, -8
  %5262 = inttoptr i64 %5261 to i64*
  store i64 %5256, i64* %5262
  store i64 %5261, i64* %5259, align 8
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5254, i64* %5263, align 8
  store %struct.Memory* %loadMem1_43c58c, %struct.Memory** %MEMORY
  %loadMem2_43c58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c58c = load i64, i64* %3
  %call2_43c58c = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64 %loadPC_43c58c, %struct.Memory* %loadMem2_43c58c)
  store %struct.Memory* %call2_43c58c, %struct.Memory** %MEMORY
  %loadMem_43c591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 33
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 9
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %RSI.i307 = bitcast %union.anon* %5269 to i64*
  %5270 = load i64, i64* %PC.i306
  %5271 = add i64 %5270, 10
  store i64 %5271, i64* %PC.i306
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i307, align 8
  store %struct.Memory* %loadMem_43c591, %struct.Memory** %MEMORY
  %loadMem_43c59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 17
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %R8.i305 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %PC.i304
  %5279 = add i64 %5278, 10
  store i64 %5279, i64* %PC.i304
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %R8.i305, align 8
  store %struct.Memory* %loadMem_43c59b, %struct.Memory** %MEMORY
  %loadMem_43c5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 33
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5282 to i64*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 5
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 15
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %5288 to i64*
  %5289 = load i64, i64* %RBP.i303
  %5290 = sub i64 %5289, 40
  %5291 = load i64, i64* %PC.i301
  %5292 = add i64 %5291, 4
  store i64 %5292, i64* %PC.i301
  %5293 = inttoptr i64 %5290 to i64*
  %5294 = load i64, i64* %5293
  store i64 %5294, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_43c5a5, %struct.Memory** %MEMORY
  %loadMem_43c5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 33
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5297 to i64*
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 7
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %5300 to i64*
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 15
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %5303 to i64*
  %5304 = load i64, i64* %RBP.i300
  %5305 = sub i64 %5304, 20
  %5306 = load i64, i64* %PC.i298
  %5307 = add i64 %5306, 4
  store i64 %5307, i64* %PC.i298
  %5308 = inttoptr i64 %5305 to i32*
  %5309 = load i32, i32* %5308
  %5310 = sext i32 %5309 to i64
  store i64 %5310, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_43c5a9, %struct.Memory** %MEMORY
  %loadMem_43c5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 33
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 5
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %5316 to i64*
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 7
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %5319 to i64*
  %5320 = load i64, i64* %RCX.i296
  %5321 = load i64, i64* %RDX.i297
  %5322 = add i64 %5321, %5320
  %5323 = load i64, i64* %PC.i295
  %5324 = add i64 %5323, 4
  store i64 %5324, i64* %PC.i295
  %5325 = inttoptr i64 %5322 to i8*
  store i8 0, i8* %5325
  store %struct.Memory* %loadMem_43c5ad, %struct.Memory** %MEMORY
  %loadMem_43c5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 33
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5328 to i64*
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 11
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %RDI.i293 = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 15
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %5334 to i64*
  %5335 = load i64, i64* %RBP.i294
  %5336 = sub i64 %5335, 8
  %5337 = load i64, i64* %PC.i292
  %5338 = add i64 %5337, 4
  store i64 %5338, i64* %PC.i292
  %5339 = inttoptr i64 %5336 to i64*
  %5340 = load i64, i64* %5339
  store i64 %5340, i64* %RDI.i293, align 8
  store %struct.Memory* %loadMem_43c5b1, %struct.Memory** %MEMORY
  %loadMem_43c5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 33
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5343 to i64*
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 7
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %5346 to i64*
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 15
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %5349 to i64*
  %5350 = load i64, i64* %RBP.i291
  %5351 = sub i64 %5350, 32
  %5352 = load i64, i64* %PC.i289
  %5353 = add i64 %5352, 3
  store i64 %5353, i64* %PC.i289
  %5354 = inttoptr i64 %5351 to i32*
  %5355 = load i32, i32* %5354
  %5356 = zext i32 %5355 to i64
  store i64 %5356, i64* %RDX.i290, align 8
  store %struct.Memory* %loadMem_43c5b5, %struct.Memory** %MEMORY
  %loadMem_43c5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5358 = getelementptr inbounds %struct.GPR, %struct.GPR* %5357, i32 0, i32 33
  %5359 = getelementptr inbounds %struct.Reg, %struct.Reg* %5358, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5359 to i64*
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 5
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %5362 to i64*
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 15
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %5365 to i64*
  %5366 = load i64, i64* %RBP.i288
  %5367 = sub i64 %5366, 32
  %5368 = load i64, i64* %PC.i286
  %5369 = add i64 %5368, 3
  store i64 %5369, i64* %PC.i286
  %5370 = inttoptr i64 %5367 to i32*
  %5371 = load i32, i32* %5370
  %5372 = zext i32 %5371 to i64
  store i64 %5372, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_43c5b8, %struct.Memory** %MEMORY
  %loadMem_43c5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 33
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5375 to i64*
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 15
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %5378 to i64*
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 19
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %R9.i285 = bitcast %union.anon* %5381 to i64*
  %5382 = load i64, i64* %RBP.i284
  %5383 = sub i64 %5382, 40
  %5384 = load i64, i64* %PC.i283
  %5385 = add i64 %5384, 4
  store i64 %5385, i64* %PC.i283
  %5386 = inttoptr i64 %5383 to i64*
  %5387 = load i64, i64* %5386
  store i64 %5387, i64* %R9.i285, align 8
  store %struct.Memory* %loadMem_43c5bb, %struct.Memory** %MEMORY
  %loadMem_43c5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 33
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5390 to i64*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 1
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %5393 to i64*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 15
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %5396 to i64*
  %5397 = load i64, i64* %RBP.i282
  %5398 = sub i64 %5397, 192
  %5399 = load i64, i64* %RAX.i281
  %5400 = load i64, i64* %PC.i280
  %5401 = add i64 %5400, 7
  store i64 %5401, i64* %PC.i280
  %5402 = inttoptr i64 %5398 to i64*
  store i64 %5399, i64* %5402
  store %struct.Memory* %loadMem_43c5bf, %struct.Memory** %MEMORY
  %loadMem_43c5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 33
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 1
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %5409 = bitcast %union.anon* %5408 to %struct.anon.2*
  %AL.i279 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5409, i32 0, i32 0
  %5410 = load i64, i64* %PC.i278
  %5411 = add i64 %5410, 2
  store i64 %5411, i64* %PC.i278
  store i8 0, i8* %AL.i279, align 1
  store %struct.Memory* %loadMem_43c5c6, %struct.Memory** %MEMORY
  %loadMem1_43c5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5414 to i64*
  %5415 = load i64, i64* %PC.i277
  %5416 = add i64 %5415, -241752
  %5417 = load i64, i64* %PC.i277
  %5418 = add i64 %5417, 5
  %5419 = load i64, i64* %PC.i277
  %5420 = add i64 %5419, 5
  store i64 %5420, i64* %PC.i277
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5422 = load i64, i64* %5421, align 8
  %5423 = add i64 %5422, -8
  %5424 = inttoptr i64 %5423 to i64*
  store i64 %5418, i64* %5424
  store i64 %5423, i64* %5421, align 8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5416, i64* %5425, align 8
  store %struct.Memory* %loadMem1_43c5c8, %struct.Memory** %MEMORY
  %loadMem2_43c5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c5c8 = load i64, i64* %3
  %5426 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c5c8)
  store %struct.Memory* %5426, %struct.Memory** %MEMORY
  %loadMem_43c5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 33
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5429 to i64*
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5431 = getelementptr inbounds %struct.GPR, %struct.GPR* %5430, i32 0, i32 1
  %5432 = getelementptr inbounds %struct.Reg, %struct.Reg* %5431, i32 0, i32 0
  %EAX.i273 = bitcast %union.anon* %5432 to i32*
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 15
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %5435 to i64*
  %5436 = load i64, i64* %RBP.i274
  %5437 = sub i64 %5436, 196
  %5438 = load i32, i32* %EAX.i273
  %5439 = zext i32 %5438 to i64
  %5440 = load i64, i64* %PC.i272
  %5441 = add i64 %5440, 6
  store i64 %5441, i64* %PC.i272
  %5442 = inttoptr i64 %5437 to i32*
  store i32 %5438, i32* %5442
  store %struct.Memory* %loadMem_43c5cd, %struct.Memory** %MEMORY
  br label %block_.L_43c5d3

block_.L_43c5d3:                                  ; preds = %block_43c572, %block_.L_43c563
  %loadMem_43c5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 33
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5445 to i64*
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 15
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5448 to i64*
  %5449 = load i64, i64* %RBP.i271
  %5450 = sub i64 %5449, 24
  %5451 = load i64, i64* %PC.i270
  %5452 = add i64 %5451, 7
  store i64 %5452, i64* %PC.i270
  %5453 = inttoptr i64 %5450 to i32*
  store i32 0, i32* %5453
  store %struct.Memory* %loadMem_43c5d3, %struct.Memory** %MEMORY
  br label %block_.L_43c5da

block_.L_43c5da:                                  ; preds = %block_.L_43c77b, %block_.L_43c5d3
  %loadMem_43c5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 33
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5456 to i64*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 1
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %5459 to i64*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 15
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %5462 to i64*
  %5463 = load i64, i64* %RBP.i269
  %5464 = sub i64 %5463, 24
  %5465 = load i64, i64* %PC.i267
  %5466 = add i64 %5465, 3
  store i64 %5466, i64* %PC.i267
  %5467 = inttoptr i64 %5464 to i32*
  %5468 = load i32, i32* %5467
  %5469 = zext i32 %5468 to i64
  store i64 %5469, i64* %RAX.i268, align 8
  store %struct.Memory* %loadMem_43c5da, %struct.Memory** %MEMORY
  %loadMem_43c5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 5
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %5475 to i64*
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 15
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %5478 to i64*
  %5479 = load i64, i64* %RBP.i266
  %5480 = sub i64 %5479, 16
  %5481 = load i64, i64* %PC.i264
  %5482 = add i64 %5481, 4
  store i64 %5482, i64* %PC.i264
  %5483 = inttoptr i64 %5480 to i64*
  %5484 = load i64, i64* %5483
  store i64 %5484, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_43c5dd, %struct.Memory** %MEMORY
  %loadMem_43c5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5487 to i64*
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 1
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %EAX.i262 = bitcast %union.anon* %5490 to i32*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 5
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %5493 to i64*
  %5494 = load i32, i32* %EAX.i262
  %5495 = zext i32 %5494 to i64
  %5496 = load i64, i64* %RCX.i263
  %5497 = add i64 %5496, 28
  %5498 = load i64, i64* %PC.i261
  %5499 = add i64 %5498, 3
  store i64 %5499, i64* %PC.i261
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
  store %struct.Memory* %loadMem_43c5e1, %struct.Memory** %MEMORY
  %loadMem_43c5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5534 to i64*
  %5535 = load i64, i64* %PC.i260
  %5536 = add i64 %5535, 421
  %5537 = load i64, i64* %PC.i260
  %5538 = add i64 %5537, 6
  %5539 = load i64, i64* %PC.i260
  %5540 = add i64 %5539, 6
  store i64 %5540, i64* %PC.i260
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5542 = load i8, i8* %5541, align 1
  %5543 = icmp ne i8 %5542, 0
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5545 = load i8, i8* %5544, align 1
  %5546 = icmp ne i8 %5545, 0
  %5547 = xor i1 %5543, %5546
  %5548 = xor i1 %5547, true
  %5549 = zext i1 %5548 to i8
  store i8 %5549, i8* %BRANCH_TAKEN, align 1
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5551 = select i1 %5547, i64 %5538, i64 %5536
  store i64 %5551, i64* %5550, align 8
  store %struct.Memory* %loadMem_43c5e4, %struct.Memory** %MEMORY
  %loadBr_43c5e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c5e4 = icmp eq i8 %loadBr_43c5e4, 1
  br i1 %cmpBr_43c5e4, label %block_.L_43c789, label %block_43c5ea

block_43c5ea:                                     ; preds = %block_.L_43c5da
  %loadMem_43c5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 33
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 11
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RDI.i258 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 15
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %5560 to i64*
  %5561 = load i64, i64* %RBP.i259
  %5562 = sub i64 %5561, 40
  %5563 = load i64, i64* %PC.i257
  %5564 = add i64 %5563, 4
  store i64 %5564, i64* %PC.i257
  %5565 = inttoptr i64 %5562 to i64*
  %5566 = load i64, i64* %5565
  store i64 %5566, i64* %RDI.i258, align 8
  store %struct.Memory* %loadMem_43c5ea, %struct.Memory** %MEMORY
  %loadMem_43c5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5568 = getelementptr inbounds %struct.GPR, %struct.GPR* %5567, i32 0, i32 33
  %5569 = getelementptr inbounds %struct.Reg, %struct.Reg* %5568, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5569 to i64*
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 1
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %5572 to i64*
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 15
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %5575 to i64*
  %5576 = load i64, i64* %RBP.i256
  %5577 = sub i64 %5576, 16
  %5578 = load i64, i64* %PC.i254
  %5579 = add i64 %5578, 4
  store i64 %5579, i64* %PC.i254
  %5580 = inttoptr i64 %5577 to i64*
  %5581 = load i64, i64* %5580
  store i64 %5581, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_43c5ee, %struct.Memory** %MEMORY
  %loadMem_43c5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 33
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5584 to i64*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 1
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %5587 to i64*
  %5588 = load i64, i64* %RAX.i253
  %5589 = load i64, i64* %PC.i252
  %5590 = add i64 %5589, 3
  store i64 %5590, i64* %PC.i252
  %5591 = inttoptr i64 %5588 to i64*
  %5592 = load i64, i64* %5591
  store i64 %5592, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_43c5f2, %struct.Memory** %MEMORY
  %loadMem_43c5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 5
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 15
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %5601 to i64*
  %5602 = load i64, i64* %RBP.i251
  %5603 = sub i64 %5602, 24
  %5604 = load i64, i64* %PC.i249
  %5605 = add i64 %5604, 4
  store i64 %5605, i64* %PC.i249
  %5606 = inttoptr i64 %5603 to i32*
  %5607 = load i32, i32* %5606
  %5608 = sext i32 %5607 to i64
  store i64 %5608, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_43c5f5, %struct.Memory** %MEMORY
  %loadMem_43c5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 33
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5611 to i64*
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 1
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %5614 to i64*
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 5
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %5617 to i64*
  %5618 = load i64, i64* %RAX.i247
  %5619 = load i64, i64* %RCX.i248
  %5620 = mul i64 %5619, 8
  %5621 = add i64 %5620, %5618
  %5622 = load i64, i64* %PC.i246
  %5623 = add i64 %5622, 4
  store i64 %5623, i64* %PC.i246
  %5624 = inttoptr i64 %5621 to i64*
  %5625 = load i64, i64* %5624
  store i64 %5625, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_43c5f9, %struct.Memory** %MEMORY
  %loadMem_43c5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 33
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5628 to i64*
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 5
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %5631 to i64*
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 15
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %5634 to i64*
  %5635 = load i64, i64* %RBP.i245
  %5636 = sub i64 %5635, 44
  %5637 = load i64, i64* %PC.i243
  %5638 = add i64 %5637, 4
  store i64 %5638, i64* %PC.i243
  %5639 = inttoptr i64 %5636 to i32*
  %5640 = load i32, i32* %5639
  %5641 = sext i32 %5640 to i64
  store i64 %5641, i64* %RCX.i244, align 8
  store %struct.Memory* %loadMem_43c5fd, %struct.Memory** %MEMORY
  %loadMem_43c601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 1
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 5
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %5650 to i64*
  %5651 = load i64, i64* %RAX.i241
  %5652 = load i64, i64* %RCX.i242
  %5653 = load i64, i64* %PC.i240
  %5654 = add i64 %5653, 3
  store i64 %5654, i64* %PC.i240
  %5655 = add i64 %5652, %5651
  store i64 %5655, i64* %RAX.i241, align 8
  %5656 = icmp ult i64 %5655, %5651
  %5657 = icmp ult i64 %5655, %5652
  %5658 = or i1 %5656, %5657
  %5659 = zext i1 %5658 to i8
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5659, i8* %5660, align 1
  %5661 = trunc i64 %5655 to i32
  %5662 = and i32 %5661, 255
  %5663 = call i32 @llvm.ctpop.i32(i32 %5662)
  %5664 = trunc i32 %5663 to i8
  %5665 = and i8 %5664, 1
  %5666 = xor i8 %5665, 1
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5666, i8* %5667, align 1
  %5668 = xor i64 %5652, %5651
  %5669 = xor i64 %5668, %5655
  %5670 = lshr i64 %5669, 4
  %5671 = trunc i64 %5670 to i8
  %5672 = and i8 %5671, 1
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5672, i8* %5673, align 1
  %5674 = icmp eq i64 %5655, 0
  %5675 = zext i1 %5674 to i8
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5675, i8* %5676, align 1
  %5677 = lshr i64 %5655, 63
  %5678 = trunc i64 %5677 to i8
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5678, i8* %5679, align 1
  %5680 = lshr i64 %5651, 63
  %5681 = lshr i64 %5652, 63
  %5682 = xor i64 %5677, %5680
  %5683 = xor i64 %5677, %5681
  %5684 = add i64 %5682, %5683
  %5685 = icmp eq i64 %5684, 2
  %5686 = zext i1 %5685 to i8
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5686, i8* %5687, align 1
  store %struct.Memory* %loadMem_43c601, %struct.Memory** %MEMORY
  %loadMem_43c604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 33
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 7
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %5693 to i64*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 15
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5696 to i64*
  %5697 = load i64, i64* %RBP.i239
  %5698 = sub i64 %5697, 20
  %5699 = load i64, i64* %PC.i237
  %5700 = add i64 %5699, 4
  store i64 %5700, i64* %PC.i237
  %5701 = inttoptr i64 %5698 to i32*
  %5702 = load i32, i32* %5701
  %5703 = sext i32 %5702 to i64
  store i64 %5703, i64* %RDX.i238, align 8
  store %struct.Memory* %loadMem_43c604, %struct.Memory** %MEMORY
  %loadMem_43c608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 33
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %5706 to i64*
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5708 = getelementptr inbounds %struct.GPR, %struct.GPR* %5707, i32 0, i32 1
  %5709 = getelementptr inbounds %struct.Reg, %struct.Reg* %5708, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %5709 to i64*
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 9
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %5712 to i64*
  %5713 = load i64, i64* %RAX.i235
  %5714 = load i64, i64* %PC.i234
  %5715 = add i64 %5714, 3
  store i64 %5715, i64* %PC.i234
  store i64 %5713, i64* %RSI.i236, align 8
  store %struct.Memory* %loadMem_43c608, %struct.Memory** %MEMORY
  %loadMem1_43c60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 33
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5718 to i64*
  %5719 = load i64, i64* %PC.i233
  %5720 = add i64 %5719, -242267
  %5721 = load i64, i64* %PC.i233
  %5722 = add i64 %5721, 5
  %5723 = load i64, i64* %PC.i233
  %5724 = add i64 %5723, 5
  store i64 %5724, i64* %PC.i233
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5726 = load i64, i64* %5725, align 8
  %5727 = add i64 %5726, -8
  %5728 = inttoptr i64 %5727 to i64*
  store i64 %5722, i64* %5728
  store i64 %5727, i64* %5725, align 8
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5720, i64* %5729, align 8
  store %struct.Memory* %loadMem1_43c60b, %struct.Memory** %MEMORY
  %loadMem2_43c60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c60b = load i64, i64* %3
  %call2_43c60b = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64 %loadPC_43c60b, %struct.Memory* %loadMem2_43c60b)
  store %struct.Memory* %call2_43c60b, %struct.Memory** %MEMORY
  %loadMem_43c610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 33
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5732 to i64*
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 9
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %RSI.i232 = bitcast %union.anon* %5735 to i64*
  %5736 = load i64, i64* %PC.i231
  %5737 = add i64 %5736, 10
  store i64 %5737, i64* %PC.i231
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i232, align 8
  store %struct.Memory* %loadMem_43c610, %struct.Memory** %MEMORY
  %loadMem_43c61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 33
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %5740 to i64*
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 5
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %RCX.i229 = bitcast %union.anon* %5743 to i64*
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 15
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %5746 to i64*
  %5747 = load i64, i64* %RBP.i230
  %5748 = sub i64 %5747, 40
  %5749 = load i64, i64* %PC.i228
  %5750 = add i64 %5749, 4
  store i64 %5750, i64* %PC.i228
  %5751 = inttoptr i64 %5748 to i64*
  %5752 = load i64, i64* %5751
  store i64 %5752, i64* %RCX.i229, align 8
  store %struct.Memory* %loadMem_43c61a, %struct.Memory** %MEMORY
  %loadMem_43c61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5754 = getelementptr inbounds %struct.GPR, %struct.GPR* %5753, i32 0, i32 33
  %5755 = getelementptr inbounds %struct.Reg, %struct.Reg* %5754, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %5755 to i64*
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 7
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 15
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %5761 to i64*
  %5762 = load i64, i64* %RBP.i227
  %5763 = sub i64 %5762, 20
  %5764 = load i64, i64* %PC.i225
  %5765 = add i64 %5764, 4
  store i64 %5765, i64* %PC.i225
  %5766 = inttoptr i64 %5763 to i32*
  %5767 = load i32, i32* %5766
  %5768 = sext i32 %5767 to i64
  store i64 %5768, i64* %RDX.i226, align 8
  store %struct.Memory* %loadMem_43c61e, %struct.Memory** %MEMORY
  %loadMem_43c622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 33
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %5771 to i64*
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5773 = getelementptr inbounds %struct.GPR, %struct.GPR* %5772, i32 0, i32 5
  %5774 = getelementptr inbounds %struct.Reg, %struct.Reg* %5773, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %5774 to i64*
  %5775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5776 = getelementptr inbounds %struct.GPR, %struct.GPR* %5775, i32 0, i32 7
  %5777 = getelementptr inbounds %struct.Reg, %struct.Reg* %5776, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %5777 to i64*
  %5778 = load i64, i64* %RCX.i223
  %5779 = load i64, i64* %RDX.i224
  %5780 = add i64 %5779, %5778
  %5781 = load i64, i64* %PC.i222
  %5782 = add i64 %5781, 4
  store i64 %5782, i64* %PC.i222
  %5783 = inttoptr i64 %5780 to i8*
  store i8 0, i8* %5783
  store %struct.Memory* %loadMem_43c622, %struct.Memory** %MEMORY
  %loadMem_43c626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 33
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5786 to i64*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 11
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %RDI.i220 = bitcast %union.anon* %5789 to i64*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 15
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %5792 to i64*
  %5793 = load i64, i64* %RBP.i221
  %5794 = sub i64 %5793, 8
  %5795 = load i64, i64* %PC.i219
  %5796 = add i64 %5795, 4
  store i64 %5796, i64* %PC.i219
  %5797 = inttoptr i64 %5794 to i64*
  %5798 = load i64, i64* %5797
  store i64 %5798, i64* %RDI.i220, align 8
  store %struct.Memory* %loadMem_43c626, %struct.Memory** %MEMORY
  %loadMem_43c62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 33
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 7
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %5804 to i64*
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5806 = getelementptr inbounds %struct.GPR, %struct.GPR* %5805, i32 0, i32 15
  %5807 = getelementptr inbounds %struct.Reg, %struct.Reg* %5806, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %5807 to i64*
  %5808 = load i64, i64* %RBP.i218
  %5809 = sub i64 %5808, 32
  %5810 = load i64, i64* %PC.i216
  %5811 = add i64 %5810, 3
  store i64 %5811, i64* %PC.i216
  %5812 = inttoptr i64 %5809 to i32*
  %5813 = load i32, i32* %5812
  %5814 = zext i32 %5813 to i64
  store i64 %5814, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_43c62a, %struct.Memory** %MEMORY
  %loadMem_43c62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 33
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %5817 to i64*
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 5
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %5820 to i64*
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 15
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %5823 to i64*
  %5824 = load i64, i64* %RBP.i215
  %5825 = sub i64 %5824, 32
  %5826 = load i64, i64* %PC.i213
  %5827 = add i64 %5826, 3
  store i64 %5827, i64* %PC.i213
  %5828 = inttoptr i64 %5825 to i32*
  %5829 = load i32, i32* %5828
  %5830 = zext i32 %5829 to i64
  store i64 %5830, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_43c62d, %struct.Memory** %MEMORY
  %loadMem_43c630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 15
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 17
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %R8.i212 = bitcast %union.anon* %5839 to i64*
  %5840 = load i64, i64* %RBP.i211
  %5841 = sub i64 %5840, 16
  %5842 = load i64, i64* %PC.i210
  %5843 = add i64 %5842, 4
  store i64 %5843, i64* %PC.i210
  %5844 = inttoptr i64 %5841 to i64*
  %5845 = load i64, i64* %5844
  store i64 %5845, i64* %R8.i212, align 8
  store %struct.Memory* %loadMem_43c630, %struct.Memory** %MEMORY
  %loadMem_43c634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 33
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 17
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %R8.i209 = bitcast %union.anon* %5851 to i64*
  %5852 = load i64, i64* %R8.i209
  %5853 = add i64 %5852, 8
  %5854 = load i64, i64* %PC.i208
  %5855 = add i64 %5854, 4
  store i64 %5855, i64* %PC.i208
  %5856 = inttoptr i64 %5853 to i64*
  %5857 = load i64, i64* %5856
  store i64 %5857, i64* %R8.i209, align 8
  store %struct.Memory* %loadMem_43c634, %struct.Memory** %MEMORY
  %loadMem_43c638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5859 = getelementptr inbounds %struct.GPR, %struct.GPR* %5858, i32 0, i32 33
  %5860 = getelementptr inbounds %struct.Reg, %struct.Reg* %5859, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5860 to i64*
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 15
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %5863 to i64*
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5865 = getelementptr inbounds %struct.GPR, %struct.GPR* %5864, i32 0, i32 19
  %5866 = getelementptr inbounds %struct.Reg, %struct.Reg* %5865, i32 0, i32 0
  %R9.i207 = bitcast %union.anon* %5866 to i64*
  %5867 = load i64, i64* %RBP.i206
  %5868 = sub i64 %5867, 24
  %5869 = load i64, i64* %PC.i205
  %5870 = add i64 %5869, 4
  store i64 %5870, i64* %PC.i205
  %5871 = inttoptr i64 %5868 to i32*
  %5872 = load i32, i32* %5871
  %5873 = sext i32 %5872 to i64
  store i64 %5873, i64* %R9.i207, align 8
  store %struct.Memory* %loadMem_43c638, %struct.Memory** %MEMORY
  %loadMem_43c63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 33
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 17
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %R8.i203 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 19
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %R9.i204 = bitcast %union.anon* %5882 to i64*
  %5883 = load i64, i64* %R8.i203
  %5884 = load i64, i64* %R9.i204
  %5885 = mul i64 %5884, 8
  %5886 = add i64 %5885, %5883
  %5887 = load i64, i64* %PC.i202
  %5888 = add i64 %5887, 4
  store i64 %5888, i64* %PC.i202
  %5889 = inttoptr i64 %5886 to i64*
  %5890 = load i64, i64* %5889
  store i64 %5890, i64* %R8.i203, align 8
  store %struct.Memory* %loadMem_43c63c, %struct.Memory** %MEMORY
  %loadMem_43c640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 33
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %5893 to i64*
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 15
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %5896 to i64*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 19
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %R9.i201 = bitcast %union.anon* %5899 to i64*
  %5900 = load i64, i64* %RBP.i200
  %5901 = sub i64 %5900, 40
  %5902 = load i64, i64* %PC.i199
  %5903 = add i64 %5902, 4
  store i64 %5903, i64* %PC.i199
  %5904 = inttoptr i64 %5901 to i64*
  %5905 = load i64, i64* %5904
  store i64 %5905, i64* %R9.i201, align 8
  store %struct.Memory* %loadMem_43c640, %struct.Memory** %MEMORY
  %loadMem_43c644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 33
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5908 to i64*
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5910 = getelementptr inbounds %struct.GPR, %struct.GPR* %5909, i32 0, i32 1
  %5911 = getelementptr inbounds %struct.Reg, %struct.Reg* %5910, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %5911 to i64*
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5913 = getelementptr inbounds %struct.GPR, %struct.GPR* %5912, i32 0, i32 15
  %5914 = getelementptr inbounds %struct.Reg, %struct.Reg* %5913, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %5914 to i64*
  %5915 = load i64, i64* %RBP.i198
  %5916 = sub i64 %5915, 208
  %5917 = load i64, i64* %RAX.i197
  %5918 = load i64, i64* %PC.i196
  %5919 = add i64 %5918, 7
  store i64 %5919, i64* %PC.i196
  %5920 = inttoptr i64 %5916 to i64*
  store i64 %5917, i64* %5920
  store %struct.Memory* %loadMem_43c644, %struct.Memory** %MEMORY
  %loadMem_43c64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 33
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5923 to i64*
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 1
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %5927 = bitcast %union.anon* %5926 to %struct.anon.2*
  %AL.i195 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5927, i32 0, i32 0
  %5928 = load i64, i64* %PC.i194
  %5929 = add i64 %5928, 2
  store i64 %5929, i64* %PC.i194
  store i8 0, i8* %AL.i195, align 1
  store %struct.Memory* %loadMem_43c64b, %struct.Memory** %MEMORY
  %loadMem1_43c64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 33
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5932 to i64*
  %5933 = load i64, i64* %PC.i193
  %5934 = add i64 %5933, -241885
  %5935 = load i64, i64* %PC.i193
  %5936 = add i64 %5935, 5
  %5937 = load i64, i64* %PC.i193
  %5938 = add i64 %5937, 5
  store i64 %5938, i64* %PC.i193
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5940 = load i64, i64* %5939, align 8
  %5941 = add i64 %5940, -8
  %5942 = inttoptr i64 %5941 to i64*
  store i64 %5936, i64* %5942
  store i64 %5941, i64* %5939, align 8
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5934, i64* %5943, align 8
  store %struct.Memory* %loadMem1_43c64d, %struct.Memory** %MEMORY
  %loadMem2_43c64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c64d = load i64, i64* %3
  %5944 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c64d)
  store %struct.Memory* %5944, %struct.Memory** %MEMORY
  %loadMem_43c652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 33
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5947 to i64*
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 9
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %RSI.i188 = bitcast %union.anon* %5950 to i64*
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 15
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %5953 to i64*
  %5954 = load i64, i64* %RBP.i189
  %5955 = sub i64 %5954, 16
  %5956 = load i64, i64* %PC.i187
  %5957 = add i64 %5956, 4
  store i64 %5957, i64* %PC.i187
  %5958 = inttoptr i64 %5955 to i64*
  %5959 = load i64, i64* %5958
  store i64 %5959, i64* %RSI.i188, align 8
  store %struct.Memory* %loadMem_43c652, %struct.Memory** %MEMORY
  %loadMem_43c656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 33
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5962 to i64*
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 9
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %RSI.i186 = bitcast %union.anon* %5965 to i64*
  %5966 = load i64, i64* %RSI.i186
  %5967 = add i64 %5966, 112
  %5968 = load i64, i64* %PC.i185
  %5969 = add i64 %5968, 5
  store i64 %5969, i64* %PC.i185
  %5970 = inttoptr i64 %5967 to i64*
  %5971 = load i64, i64* %5970
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5972, align 1
  %5973 = trunc i64 %5971 to i32
  %5974 = and i32 %5973, 255
  %5975 = call i32 @llvm.ctpop.i32(i32 %5974)
  %5976 = trunc i32 %5975 to i8
  %5977 = and i8 %5976, 1
  %5978 = xor i8 %5977, 1
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5978, i8* %5979, align 1
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5980, align 1
  %5981 = icmp eq i64 %5971, 0
  %5982 = zext i1 %5981 to i8
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5982, i8* %5983, align 1
  %5984 = lshr i64 %5971, 63
  %5985 = trunc i64 %5984 to i8
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5985, i8* %5986, align 1
  %5987 = lshr i64 %5971, 63
  %5988 = xor i64 %5984, %5987
  %5989 = add i64 %5988, %5987
  %5990 = icmp eq i64 %5989, 2
  %5991 = zext i1 %5990 to i8
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5991, i8* %5992, align 1
  store %struct.Memory* %loadMem_43c656, %struct.Memory** %MEMORY
  %loadMem_43c65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5994 = getelementptr inbounds %struct.GPR, %struct.GPR* %5993, i32 0, i32 33
  %5995 = getelementptr inbounds %struct.Reg, %struct.Reg* %5994, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5995 to i64*
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5997 = getelementptr inbounds %struct.GPR, %struct.GPR* %5996, i32 0, i32 1
  %5998 = getelementptr inbounds %struct.Reg, %struct.Reg* %5997, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %5998 to i32*
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6000 = getelementptr inbounds %struct.GPR, %struct.GPR* %5999, i32 0, i32 15
  %6001 = getelementptr inbounds %struct.Reg, %struct.Reg* %6000, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %6001 to i64*
  %6002 = load i64, i64* %RBP.i184
  %6003 = sub i64 %6002, 212
  %6004 = load i32, i32* %EAX.i183
  %6005 = zext i32 %6004 to i64
  %6006 = load i64, i64* %PC.i182
  %6007 = add i64 %6006, 6
  store i64 %6007, i64* %PC.i182
  %6008 = inttoptr i64 %6003 to i32*
  store i32 %6004, i32* %6008
  store %struct.Memory* %loadMem_43c65b, %struct.Memory** %MEMORY
  %loadMem_43c661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 33
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6011 to i64*
  %6012 = load i64, i64* %PC.i181
  %6013 = add i64 %6012, 134
  %6014 = load i64, i64* %PC.i181
  %6015 = add i64 %6014, 6
  %6016 = load i64, i64* %PC.i181
  %6017 = add i64 %6016, 6
  store i64 %6017, i64* %PC.i181
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6019 = load i8, i8* %6018, align 1
  store i8 %6019, i8* %BRANCH_TAKEN, align 1
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6021 = icmp ne i8 %6019, 0
  %6022 = select i1 %6021, i64 %6013, i64 %6015
  store i64 %6022, i64* %6020, align 8
  store %struct.Memory* %loadMem_43c661, %struct.Memory** %MEMORY
  %loadBr_43c661 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c661 = icmp eq i8 %loadBr_43c661, 1
  br i1 %cmpBr_43c661, label %block_.L_43c6e7, label %block_43c667

block_43c667:                                     ; preds = %block_43c5ea
  %loadMem_43c667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 33
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6025 to i64*
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 1
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %6028 to i64*
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 15
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %6031 to i64*
  %6032 = load i64, i64* %RBP.i180
  %6033 = sub i64 %6032, 16
  %6034 = load i64, i64* %PC.i178
  %6035 = add i64 %6034, 4
  store i64 %6035, i64* %PC.i178
  %6036 = inttoptr i64 %6033 to i64*
  %6037 = load i64, i64* %6036
  store i64 %6037, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_43c667, %struct.Memory** %MEMORY
  %loadMem_43c66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6039 = getelementptr inbounds %struct.GPR, %struct.GPR* %6038, i32 0, i32 33
  %6040 = getelementptr inbounds %struct.Reg, %struct.Reg* %6039, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6040 to i64*
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6042 = getelementptr inbounds %struct.GPR, %struct.GPR* %6041, i32 0, i32 1
  %6043 = getelementptr inbounds %struct.Reg, %struct.Reg* %6042, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %6043 to i64*
  %6044 = load i64, i64* %RAX.i177
  %6045 = add i64 %6044, 112
  %6046 = load i64, i64* %PC.i176
  %6047 = add i64 %6046, 4
  store i64 %6047, i64* %PC.i176
  %6048 = inttoptr i64 %6045 to i64*
  %6049 = load i64, i64* %6048
  store i64 %6049, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_43c66b, %struct.Memory** %MEMORY
  %loadMem_43c66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 33
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 5
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %6055 to i64*
  %6056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6057 = getelementptr inbounds %struct.GPR, %struct.GPR* %6056, i32 0, i32 15
  %6058 = getelementptr inbounds %struct.Reg, %struct.Reg* %6057, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6058 to i64*
  %6059 = load i64, i64* %RBP.i175
  %6060 = sub i64 %6059, 24
  %6061 = load i64, i64* %PC.i173
  %6062 = add i64 %6061, 4
  store i64 %6062, i64* %PC.i173
  %6063 = inttoptr i64 %6060 to i32*
  %6064 = load i32, i32* %6063
  %6065 = sext i32 %6064 to i64
  store i64 %6065, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_43c66f, %struct.Memory** %MEMORY
  %loadMem_43c673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 33
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6068 to i64*
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 1
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %6071 to i64*
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 5
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %6074 to i64*
  %6075 = load i64, i64* %RAX.i171
  %6076 = load i64, i64* %RCX.i172
  %6077 = mul i64 %6076, 8
  %6078 = add i64 %6077, %6075
  %6079 = load i64, i64* %PC.i170
  %6080 = add i64 %6079, 5
  store i64 %6080, i64* %PC.i170
  %6081 = inttoptr i64 %6078 to i64*
  %6082 = load i64, i64* %6081
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6083, align 1
  %6084 = trunc i64 %6082 to i32
  %6085 = and i32 %6084, 255
  %6086 = call i32 @llvm.ctpop.i32(i32 %6085)
  %6087 = trunc i32 %6086 to i8
  %6088 = and i8 %6087, 1
  %6089 = xor i8 %6088, 1
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6089, i8* %6090, align 1
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6091, align 1
  %6092 = icmp eq i64 %6082, 0
  %6093 = zext i1 %6092 to i8
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6093, i8* %6094, align 1
  %6095 = lshr i64 %6082, 63
  %6096 = trunc i64 %6095 to i8
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6096, i8* %6097, align 1
  %6098 = lshr i64 %6082, 63
  %6099 = xor i64 %6095, %6098
  %6100 = add i64 %6099, %6098
  %6101 = icmp eq i64 %6100, 2
  %6102 = zext i1 %6101 to i8
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6102, i8* %6103, align 1
  store %struct.Memory* %loadMem_43c673, %struct.Memory** %MEMORY
  %loadMem_43c678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 33
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6106 to i64*
  %6107 = load i64, i64* %PC.i169
  %6108 = add i64 %6107, 111
  %6109 = load i64, i64* %PC.i169
  %6110 = add i64 %6109, 6
  %6111 = load i64, i64* %PC.i169
  %6112 = add i64 %6111, 6
  store i64 %6112, i64* %PC.i169
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6114 = load i8, i8* %6113, align 1
  store i8 %6114, i8* %BRANCH_TAKEN, align 1
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6116 = icmp ne i8 %6114, 0
  %6117 = select i1 %6116, i64 %6108, i64 %6110
  store i64 %6117, i64* %6115, align 8
  store %struct.Memory* %loadMem_43c678, %struct.Memory** %MEMORY
  %loadBr_43c678 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c678 = icmp eq i8 %loadBr_43c678, 1
  br i1 %cmpBr_43c678, label %block_.L_43c6e7, label %block_43c67e

block_43c67e:                                     ; preds = %block_43c667
  %loadMem_43c67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 33
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6120 to i64*
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6122 = getelementptr inbounds %struct.GPR, %struct.GPR* %6121, i32 0, i32 11
  %6123 = getelementptr inbounds %struct.Reg, %struct.Reg* %6122, i32 0, i32 0
  %RDI.i167 = bitcast %union.anon* %6123 to i64*
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 15
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %6126 to i64*
  %6127 = load i64, i64* %RBP.i168
  %6128 = sub i64 %6127, 40
  %6129 = load i64, i64* %PC.i166
  %6130 = add i64 %6129, 4
  store i64 %6130, i64* %PC.i166
  %6131 = inttoptr i64 %6128 to i64*
  %6132 = load i64, i64* %6131
  store i64 %6132, i64* %RDI.i167, align 8
  store %struct.Memory* %loadMem_43c67e, %struct.Memory** %MEMORY
  %loadMem_43c682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 33
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6135 to i64*
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 1
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 15
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %6141 to i64*
  %6142 = load i64, i64* %RBP.i165
  %6143 = sub i64 %6142, 16
  %6144 = load i64, i64* %PC.i163
  %6145 = add i64 %6144, 4
  store i64 %6145, i64* %PC.i163
  %6146 = inttoptr i64 %6143 to i64*
  %6147 = load i64, i64* %6146
  store i64 %6147, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_43c682, %struct.Memory** %MEMORY
  %loadMem_43c686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6150 to i64*
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 1
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %6153 to i64*
  %6154 = load i64, i64* %RAX.i162
  %6155 = add i64 %6154, 112
  %6156 = load i64, i64* %PC.i161
  %6157 = add i64 %6156, 4
  store i64 %6157, i64* %PC.i161
  %6158 = inttoptr i64 %6155 to i64*
  %6159 = load i64, i64* %6158
  store i64 %6159, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_43c686, %struct.Memory** %MEMORY
  %loadMem_43c68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 33
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 5
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %6165 to i64*
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6167 = getelementptr inbounds %struct.GPR, %struct.GPR* %6166, i32 0, i32 15
  %6168 = getelementptr inbounds %struct.Reg, %struct.Reg* %6167, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %6168 to i64*
  %6169 = load i64, i64* %RBP.i160
  %6170 = sub i64 %6169, 24
  %6171 = load i64, i64* %PC.i158
  %6172 = add i64 %6171, 4
  store i64 %6172, i64* %PC.i158
  %6173 = inttoptr i64 %6170 to i32*
  %6174 = load i32, i32* %6173
  %6175 = sext i32 %6174 to i64
  store i64 %6175, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_43c68a, %struct.Memory** %MEMORY
  %loadMem_43c68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 33
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 1
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %6181 to i64*
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 5
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %6184 to i64*
  %6185 = load i64, i64* %RAX.i156
  %6186 = load i64, i64* %RCX.i157
  %6187 = mul i64 %6186, 8
  %6188 = add i64 %6187, %6185
  %6189 = load i64, i64* %PC.i155
  %6190 = add i64 %6189, 4
  store i64 %6190, i64* %PC.i155
  %6191 = inttoptr i64 %6188 to i64*
  %6192 = load i64, i64* %6191
  store i64 %6192, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_43c68e, %struct.Memory** %MEMORY
  %loadMem_43c692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 33
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6195 to i64*
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 5
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %6198 to i64*
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6200 = getelementptr inbounds %struct.GPR, %struct.GPR* %6199, i32 0, i32 15
  %6201 = getelementptr inbounds %struct.Reg, %struct.Reg* %6200, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %6201 to i64*
  %6202 = load i64, i64* %RBP.i154
  %6203 = sub i64 %6202, 44
  %6204 = load i64, i64* %PC.i152
  %6205 = add i64 %6204, 4
  store i64 %6205, i64* %PC.i152
  %6206 = inttoptr i64 %6203 to i32*
  %6207 = load i32, i32* %6206
  %6208 = sext i32 %6207 to i64
  store i64 %6208, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_43c692, %struct.Memory** %MEMORY
  %loadMem_43c696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 33
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6211 to i64*
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 1
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %6214 to i64*
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 5
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %6217 to i64*
  %6218 = load i64, i64* %RAX.i150
  %6219 = load i64, i64* %RCX.i151
  %6220 = load i64, i64* %PC.i149
  %6221 = add i64 %6220, 3
  store i64 %6221, i64* %PC.i149
  %6222 = add i64 %6219, %6218
  store i64 %6222, i64* %RAX.i150, align 8
  %6223 = icmp ult i64 %6222, %6218
  %6224 = icmp ult i64 %6222, %6219
  %6225 = or i1 %6223, %6224
  %6226 = zext i1 %6225 to i8
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6226, i8* %6227, align 1
  %6228 = trunc i64 %6222 to i32
  %6229 = and i32 %6228, 255
  %6230 = call i32 @llvm.ctpop.i32(i32 %6229)
  %6231 = trunc i32 %6230 to i8
  %6232 = and i8 %6231, 1
  %6233 = xor i8 %6232, 1
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6233, i8* %6234, align 1
  %6235 = xor i64 %6219, %6218
  %6236 = xor i64 %6235, %6222
  %6237 = lshr i64 %6236, 4
  %6238 = trunc i64 %6237 to i8
  %6239 = and i8 %6238, 1
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6239, i8* %6240, align 1
  %6241 = icmp eq i64 %6222, 0
  %6242 = zext i1 %6241 to i8
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6242, i8* %6243, align 1
  %6244 = lshr i64 %6222, 63
  %6245 = trunc i64 %6244 to i8
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6245, i8* %6246, align 1
  %6247 = lshr i64 %6218, 63
  %6248 = lshr i64 %6219, 63
  %6249 = xor i64 %6244, %6247
  %6250 = xor i64 %6244, %6248
  %6251 = add i64 %6249, %6250
  %6252 = icmp eq i64 %6251, 2
  %6253 = zext i1 %6252 to i8
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6253, i8* %6254, align 1
  store %struct.Memory* %loadMem_43c696, %struct.Memory** %MEMORY
  %loadMem_43c699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6256 = getelementptr inbounds %struct.GPR, %struct.GPR* %6255, i32 0, i32 33
  %6257 = getelementptr inbounds %struct.Reg, %struct.Reg* %6256, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6257 to i64*
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6259 = getelementptr inbounds %struct.GPR, %struct.GPR* %6258, i32 0, i32 7
  %6260 = getelementptr inbounds %struct.Reg, %struct.Reg* %6259, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %6260 to i64*
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6262 = getelementptr inbounds %struct.GPR, %struct.GPR* %6261, i32 0, i32 15
  %6263 = getelementptr inbounds %struct.Reg, %struct.Reg* %6262, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %6263 to i64*
  %6264 = load i64, i64* %RBP.i148
  %6265 = sub i64 %6264, 20
  %6266 = load i64, i64* %PC.i146
  %6267 = add i64 %6266, 4
  store i64 %6267, i64* %PC.i146
  %6268 = inttoptr i64 %6265 to i32*
  %6269 = load i32, i32* %6268
  %6270 = sext i32 %6269 to i64
  store i64 %6270, i64* %RDX.i147, align 8
  store %struct.Memory* %loadMem_43c699, %struct.Memory** %MEMORY
  %loadMem_43c69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6272 = getelementptr inbounds %struct.GPR, %struct.GPR* %6271, i32 0, i32 33
  %6273 = getelementptr inbounds %struct.Reg, %struct.Reg* %6272, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6273 to i64*
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6275 = getelementptr inbounds %struct.GPR, %struct.GPR* %6274, i32 0, i32 1
  %6276 = getelementptr inbounds %struct.Reg, %struct.Reg* %6275, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %6276 to i64*
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6278 = getelementptr inbounds %struct.GPR, %struct.GPR* %6277, i32 0, i32 9
  %6279 = getelementptr inbounds %struct.Reg, %struct.Reg* %6278, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %6279 to i64*
  %6280 = load i64, i64* %RAX.i144
  %6281 = load i64, i64* %PC.i143
  %6282 = add i64 %6281, 3
  store i64 %6282, i64* %PC.i143
  store i64 %6280, i64* %RSI.i145, align 8
  store %struct.Memory* %loadMem_43c69d, %struct.Memory** %MEMORY
  %loadMem1_43c6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6284 = getelementptr inbounds %struct.GPR, %struct.GPR* %6283, i32 0, i32 33
  %6285 = getelementptr inbounds %struct.Reg, %struct.Reg* %6284, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6285 to i64*
  %6286 = load i64, i64* %PC.i142
  %6287 = add i64 %6286, -242416
  %6288 = load i64, i64* %PC.i142
  %6289 = add i64 %6288, 5
  %6290 = load i64, i64* %PC.i142
  %6291 = add i64 %6290, 5
  store i64 %6291, i64* %PC.i142
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6293 = load i64, i64* %6292, align 8
  %6294 = add i64 %6293, -8
  %6295 = inttoptr i64 %6294 to i64*
  store i64 %6289, i64* %6295
  store i64 %6294, i64* %6292, align 8
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6287, i64* %6296, align 8
  store %struct.Memory* %loadMem1_43c6a0, %struct.Memory** %MEMORY
  %loadMem2_43c6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c6a0 = load i64, i64* %3
  %call2_43c6a0 = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64 %loadPC_43c6a0, %struct.Memory* %loadMem2_43c6a0)
  store %struct.Memory* %call2_43c6a0, %struct.Memory** %MEMORY
  %loadMem_43c6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 33
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6299 to i64*
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 9
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %RSI.i141 = bitcast %union.anon* %6302 to i64*
  %6303 = load i64, i64* %PC.i140
  %6304 = add i64 %6303, 10
  store i64 %6304, i64* %PC.i140
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i141, align 8
  store %struct.Memory* %loadMem_43c6a5, %struct.Memory** %MEMORY
  %loadMem_43c6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 33
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6307 to i64*
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 17
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %R8.i139 = bitcast %union.anon* %6310 to i64*
  %6311 = load i64, i64* %PC.i138
  %6312 = add i64 %6311, 10
  store i64 %6312, i64* %PC.i138
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %R8.i139, align 8
  store %struct.Memory* %loadMem_43c6af, %struct.Memory** %MEMORY
  %loadMem_43c6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 33
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6315 to i64*
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6317 = getelementptr inbounds %struct.GPR, %struct.GPR* %6316, i32 0, i32 5
  %6318 = getelementptr inbounds %struct.Reg, %struct.Reg* %6317, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %6318 to i64*
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6320 = getelementptr inbounds %struct.GPR, %struct.GPR* %6319, i32 0, i32 15
  %6321 = getelementptr inbounds %struct.Reg, %struct.Reg* %6320, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %6321 to i64*
  %6322 = load i64, i64* %RBP.i137
  %6323 = sub i64 %6322, 40
  %6324 = load i64, i64* %PC.i135
  %6325 = add i64 %6324, 4
  store i64 %6325, i64* %PC.i135
  %6326 = inttoptr i64 %6323 to i64*
  %6327 = load i64, i64* %6326
  store i64 %6327, i64* %RCX.i136, align 8
  store %struct.Memory* %loadMem_43c6b9, %struct.Memory** %MEMORY
  %loadMem_43c6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 33
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6330 to i64*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 7
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %6333 to i64*
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6335 = getelementptr inbounds %struct.GPR, %struct.GPR* %6334, i32 0, i32 15
  %6336 = getelementptr inbounds %struct.Reg, %struct.Reg* %6335, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6336 to i64*
  %6337 = load i64, i64* %RBP.i134
  %6338 = sub i64 %6337, 20
  %6339 = load i64, i64* %PC.i132
  %6340 = add i64 %6339, 4
  store i64 %6340, i64* %PC.i132
  %6341 = inttoptr i64 %6338 to i32*
  %6342 = load i32, i32* %6341
  %6343 = sext i32 %6342 to i64
  store i64 %6343, i64* %RDX.i133, align 8
  store %struct.Memory* %loadMem_43c6bd, %struct.Memory** %MEMORY
  %loadMem_43c6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 33
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6346 to i64*
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 5
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %6349 to i64*
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 7
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %6352 to i64*
  %6353 = load i64, i64* %RCX.i130
  %6354 = load i64, i64* %RDX.i131
  %6355 = add i64 %6354, %6353
  %6356 = load i64, i64* %PC.i129
  %6357 = add i64 %6356, 4
  store i64 %6357, i64* %PC.i129
  %6358 = inttoptr i64 %6355 to i8*
  store i8 0, i8* %6358
  store %struct.Memory* %loadMem_43c6c1, %struct.Memory** %MEMORY
  %loadMem_43c6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 33
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6361 to i64*
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 11
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %6364 to i64*
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 15
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %6367 to i64*
  %6368 = load i64, i64* %RBP.i128
  %6369 = sub i64 %6368, 8
  %6370 = load i64, i64* %PC.i126
  %6371 = add i64 %6370, 4
  store i64 %6371, i64* %PC.i126
  %6372 = inttoptr i64 %6369 to i64*
  %6373 = load i64, i64* %6372
  store i64 %6373, i64* %RDI.i127, align 8
  store %struct.Memory* %loadMem_43c6c5, %struct.Memory** %MEMORY
  %loadMem_43c6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 33
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6376 to i64*
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 7
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %RDX.i124 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 15
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %6382 to i64*
  %6383 = load i64, i64* %RBP.i125
  %6384 = sub i64 %6383, 32
  %6385 = load i64, i64* %PC.i123
  %6386 = add i64 %6385, 3
  store i64 %6386, i64* %PC.i123
  %6387 = inttoptr i64 %6384 to i32*
  %6388 = load i32, i32* %6387
  %6389 = zext i32 %6388 to i64
  store i64 %6389, i64* %RDX.i124, align 8
  store %struct.Memory* %loadMem_43c6c9, %struct.Memory** %MEMORY
  %loadMem_43c6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 33
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6392 to i64*
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6394 = getelementptr inbounds %struct.GPR, %struct.GPR* %6393, i32 0, i32 5
  %6395 = getelementptr inbounds %struct.Reg, %struct.Reg* %6394, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %6395 to i64*
  %6396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6397 = getelementptr inbounds %struct.GPR, %struct.GPR* %6396, i32 0, i32 15
  %6398 = getelementptr inbounds %struct.Reg, %struct.Reg* %6397, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6398 to i64*
  %6399 = load i64, i64* %RBP.i122
  %6400 = sub i64 %6399, 32
  %6401 = load i64, i64* %PC.i120
  %6402 = add i64 %6401, 3
  store i64 %6402, i64* %PC.i120
  %6403 = inttoptr i64 %6400 to i32*
  %6404 = load i32, i32* %6403
  %6405 = zext i32 %6404 to i64
  store i64 %6405, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_43c6cc, %struct.Memory** %MEMORY
  %loadMem_43c6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 33
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6408 to i64*
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 15
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %6411 to i64*
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6413 = getelementptr inbounds %struct.GPR, %struct.GPR* %6412, i32 0, i32 19
  %6414 = getelementptr inbounds %struct.Reg, %struct.Reg* %6413, i32 0, i32 0
  %R9.i119 = bitcast %union.anon* %6414 to i64*
  %6415 = load i64, i64* %RBP.i118
  %6416 = sub i64 %6415, 40
  %6417 = load i64, i64* %PC.i117
  %6418 = add i64 %6417, 4
  store i64 %6418, i64* %PC.i117
  %6419 = inttoptr i64 %6416 to i64*
  %6420 = load i64, i64* %6419
  store i64 %6420, i64* %R9.i119, align 8
  store %struct.Memory* %loadMem_43c6cf, %struct.Memory** %MEMORY
  %loadMem_43c6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 33
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 1
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %6426 to i64*
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6428 = getelementptr inbounds %struct.GPR, %struct.GPR* %6427, i32 0, i32 15
  %6429 = getelementptr inbounds %struct.Reg, %struct.Reg* %6428, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %6429 to i64*
  %6430 = load i64, i64* %RBP.i116
  %6431 = sub i64 %6430, 224
  %6432 = load i64, i64* %RAX.i115
  %6433 = load i64, i64* %PC.i114
  %6434 = add i64 %6433, 7
  store i64 %6434, i64* %PC.i114
  %6435 = inttoptr i64 %6431 to i64*
  store i64 %6432, i64* %6435
  store %struct.Memory* %loadMem_43c6d3, %struct.Memory** %MEMORY
  %loadMem_43c6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 33
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 1
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %6442 = bitcast %union.anon* %6441 to %struct.anon.2*
  %AL.i113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6442, i32 0, i32 0
  %6443 = load i64, i64* %PC.i112
  %6444 = add i64 %6443, 2
  store i64 %6444, i64* %PC.i112
  store i8 0, i8* %AL.i113, align 1
  store %struct.Memory* %loadMem_43c6da, %struct.Memory** %MEMORY
  %loadMem1_43c6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 33
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %6447 to i64*
  %6448 = load i64, i64* %PC.i111
  %6449 = add i64 %6448, -242028
  %6450 = load i64, i64* %PC.i111
  %6451 = add i64 %6450, 5
  %6452 = load i64, i64* %PC.i111
  %6453 = add i64 %6452, 5
  store i64 %6453, i64* %PC.i111
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6455 = load i64, i64* %6454, align 8
  %6456 = add i64 %6455, -8
  %6457 = inttoptr i64 %6456 to i64*
  store i64 %6451, i64* %6457
  store i64 %6456, i64* %6454, align 8
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6449, i64* %6458, align 8
  store %struct.Memory* %loadMem1_43c6dc, %struct.Memory** %MEMORY
  %loadMem2_43c6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c6dc = load i64, i64* %3
  %6459 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c6dc)
  store %struct.Memory* %6459, %struct.Memory** %MEMORY
  %loadMem_43c6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6461 = getelementptr inbounds %struct.GPR, %struct.GPR* %6460, i32 0, i32 33
  %6462 = getelementptr inbounds %struct.Reg, %struct.Reg* %6461, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6462 to i64*
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 1
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %6465 to i32*
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 15
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %6468 to i64*
  %6469 = load i64, i64* %RBP.i107
  %6470 = sub i64 %6469, 228
  %6471 = load i32, i32* %EAX.i106
  %6472 = zext i32 %6471 to i64
  %6473 = load i64, i64* %PC.i105
  %6474 = add i64 %6473, 6
  store i64 %6474, i64* %PC.i105
  %6475 = inttoptr i64 %6470 to i32*
  store i32 %6471, i32* %6475
  store %struct.Memory* %loadMem_43c6e1, %struct.Memory** %MEMORY
  br label %block_.L_43c6e7

block_.L_43c6e7:                                  ; preds = %block_43c67e, %block_43c667, %block_43c5ea
  %loadMem_43c6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 1
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %6481 to i64*
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 15
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %6484 to i64*
  %6485 = load i64, i64* %RBP.i104
  %6486 = sub i64 %6485, 16
  %6487 = load i64, i64* %PC.i102
  %6488 = add i64 %6487, 4
  store i64 %6488, i64* %PC.i102
  %6489 = inttoptr i64 %6486 to i64*
  %6490 = load i64, i64* %6489
  store i64 %6490, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_43c6e7, %struct.Memory** %MEMORY
  %loadMem_43c6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 33
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6493 to i64*
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 1
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %6496 to i64*
  %6497 = load i64, i64* %RAX.i101
  %6498 = add i64 %6497, 120
  %6499 = load i64, i64* %PC.i100
  %6500 = add i64 %6499, 5
  store i64 %6500, i64* %PC.i100
  %6501 = inttoptr i64 %6498 to i64*
  %6502 = load i64, i64* %6501
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6503, align 1
  %6504 = trunc i64 %6502 to i32
  %6505 = and i32 %6504, 255
  %6506 = call i32 @llvm.ctpop.i32(i32 %6505)
  %6507 = trunc i32 %6506 to i8
  %6508 = and i8 %6507, 1
  %6509 = xor i8 %6508, 1
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6509, i8* %6510, align 1
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6511, align 1
  %6512 = icmp eq i64 %6502, 0
  %6513 = zext i1 %6512 to i8
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6513, i8* %6514, align 1
  %6515 = lshr i64 %6502, 63
  %6516 = trunc i64 %6515 to i8
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6516, i8* %6517, align 1
  %6518 = lshr i64 %6502, 63
  %6519 = xor i64 %6515, %6518
  %6520 = add i64 %6519, %6518
  %6521 = icmp eq i64 %6520, 2
  %6522 = zext i1 %6521 to i8
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6522, i8* %6523, align 1
  store %struct.Memory* %loadMem_43c6eb, %struct.Memory** %MEMORY
  %loadMem_43c6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6526 to i64*
  %6527 = load i64, i64* %PC.i99
  %6528 = add i64 %6527, 134
  %6529 = load i64, i64* %PC.i99
  %6530 = add i64 %6529, 6
  %6531 = load i64, i64* %PC.i99
  %6532 = add i64 %6531, 6
  store i64 %6532, i64* %PC.i99
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6534 = load i8, i8* %6533, align 1
  store i8 %6534, i8* %BRANCH_TAKEN, align 1
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6536 = icmp ne i8 %6534, 0
  %6537 = select i1 %6536, i64 %6528, i64 %6530
  store i64 %6537, i64* %6535, align 8
  store %struct.Memory* %loadMem_43c6f0, %struct.Memory** %MEMORY
  %loadBr_43c6f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c6f0 = icmp eq i8 %loadBr_43c6f0, 1
  br i1 %cmpBr_43c6f0, label %block_.L_43c776, label %block_43c6f6

block_43c6f6:                                     ; preds = %block_.L_43c6e7
  %loadMem_43c6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 33
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6540 to i64*
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6542 = getelementptr inbounds %struct.GPR, %struct.GPR* %6541, i32 0, i32 1
  %6543 = getelementptr inbounds %struct.Reg, %struct.Reg* %6542, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %6543 to i64*
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 15
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %6546 to i64*
  %6547 = load i64, i64* %RBP.i98
  %6548 = sub i64 %6547, 16
  %6549 = load i64, i64* %PC.i96
  %6550 = add i64 %6549, 4
  store i64 %6550, i64* %PC.i96
  %6551 = inttoptr i64 %6548 to i64*
  %6552 = load i64, i64* %6551
  store i64 %6552, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_43c6f6, %struct.Memory** %MEMORY
  %loadMem_43c6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 33
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6555 to i64*
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 1
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %6558 to i64*
  %6559 = load i64, i64* %RAX.i95
  %6560 = add i64 %6559, 120
  %6561 = load i64, i64* %PC.i94
  %6562 = add i64 %6561, 4
  store i64 %6562, i64* %PC.i94
  %6563 = inttoptr i64 %6560 to i64*
  %6564 = load i64, i64* %6563
  store i64 %6564, i64* %RAX.i95, align 8
  store %struct.Memory* %loadMem_43c6fa, %struct.Memory** %MEMORY
  %loadMem_43c6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6566 = getelementptr inbounds %struct.GPR, %struct.GPR* %6565, i32 0, i32 33
  %6567 = getelementptr inbounds %struct.Reg, %struct.Reg* %6566, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %6567 to i64*
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6569 = getelementptr inbounds %struct.GPR, %struct.GPR* %6568, i32 0, i32 5
  %6570 = getelementptr inbounds %struct.Reg, %struct.Reg* %6569, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %6570 to i64*
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6572 = getelementptr inbounds %struct.GPR, %struct.GPR* %6571, i32 0, i32 15
  %6573 = getelementptr inbounds %struct.Reg, %struct.Reg* %6572, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %6573 to i64*
  %6574 = load i64, i64* %RBP.i93
  %6575 = sub i64 %6574, 24
  %6576 = load i64, i64* %PC.i91
  %6577 = add i64 %6576, 4
  store i64 %6577, i64* %PC.i91
  %6578 = inttoptr i64 %6575 to i32*
  %6579 = load i32, i32* %6578
  %6580 = sext i32 %6579 to i64
  store i64 %6580, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_43c6fe, %struct.Memory** %MEMORY
  %loadMem_43c702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6582 = getelementptr inbounds %struct.GPR, %struct.GPR* %6581, i32 0, i32 33
  %6583 = getelementptr inbounds %struct.Reg, %struct.Reg* %6582, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %6583 to i64*
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 1
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %6586 to i64*
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 5
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %6589 to i64*
  %6590 = load i64, i64* %RAX.i89
  %6591 = load i64, i64* %RCX.i90
  %6592 = mul i64 %6591, 8
  %6593 = add i64 %6592, %6590
  %6594 = load i64, i64* %PC.i88
  %6595 = add i64 %6594, 5
  store i64 %6595, i64* %PC.i88
  %6596 = inttoptr i64 %6593 to i64*
  %6597 = load i64, i64* %6596
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6598, align 1
  %6599 = trunc i64 %6597 to i32
  %6600 = and i32 %6599, 255
  %6601 = call i32 @llvm.ctpop.i32(i32 %6600)
  %6602 = trunc i32 %6601 to i8
  %6603 = and i8 %6602, 1
  %6604 = xor i8 %6603, 1
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6604, i8* %6605, align 1
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6606, align 1
  %6607 = icmp eq i64 %6597, 0
  %6608 = zext i1 %6607 to i8
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6608, i8* %6609, align 1
  %6610 = lshr i64 %6597, 63
  %6611 = trunc i64 %6610 to i8
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6611, i8* %6612, align 1
  %6613 = lshr i64 %6597, 63
  %6614 = xor i64 %6610, %6613
  %6615 = add i64 %6614, %6613
  %6616 = icmp eq i64 %6615, 2
  %6617 = zext i1 %6616 to i8
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6617, i8* %6618, align 1
  store %struct.Memory* %loadMem_43c702, %struct.Memory** %MEMORY
  %loadMem_43c707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 33
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6621 to i64*
  %6622 = load i64, i64* %PC.i87
  %6623 = add i64 %6622, 111
  %6624 = load i64, i64* %PC.i87
  %6625 = add i64 %6624, 6
  %6626 = load i64, i64* %PC.i87
  %6627 = add i64 %6626, 6
  store i64 %6627, i64* %PC.i87
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6629 = load i8, i8* %6628, align 1
  store i8 %6629, i8* %BRANCH_TAKEN, align 1
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6631 = icmp ne i8 %6629, 0
  %6632 = select i1 %6631, i64 %6623, i64 %6625
  store i64 %6632, i64* %6630, align 8
  store %struct.Memory* %loadMem_43c707, %struct.Memory** %MEMORY
  %loadBr_43c707 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c707 = icmp eq i8 %loadBr_43c707, 1
  br i1 %cmpBr_43c707, label %block_.L_43c776, label %block_43c70d

block_43c70d:                                     ; preds = %block_43c6f6
  %loadMem_43c70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 33
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6635 to i64*
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6637 = getelementptr inbounds %struct.GPR, %struct.GPR* %6636, i32 0, i32 11
  %6638 = getelementptr inbounds %struct.Reg, %struct.Reg* %6637, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %6638 to i64*
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 15
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %6641 to i64*
  %6642 = load i64, i64* %RBP.i86
  %6643 = sub i64 %6642, 40
  %6644 = load i64, i64* %PC.i84
  %6645 = add i64 %6644, 4
  store i64 %6645, i64* %PC.i84
  %6646 = inttoptr i64 %6643 to i64*
  %6647 = load i64, i64* %6646
  store i64 %6647, i64* %RDI.i85, align 8
  store %struct.Memory* %loadMem_43c70d, %struct.Memory** %MEMORY
  %loadMem_43c711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 33
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %6650 to i64*
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6652 = getelementptr inbounds %struct.GPR, %struct.GPR* %6651, i32 0, i32 1
  %6653 = getelementptr inbounds %struct.Reg, %struct.Reg* %6652, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %6653 to i64*
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6655 = getelementptr inbounds %struct.GPR, %struct.GPR* %6654, i32 0, i32 15
  %6656 = getelementptr inbounds %struct.Reg, %struct.Reg* %6655, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %6656 to i64*
  %6657 = load i64, i64* %RBP.i83
  %6658 = sub i64 %6657, 16
  %6659 = load i64, i64* %PC.i81
  %6660 = add i64 %6659, 4
  store i64 %6660, i64* %PC.i81
  %6661 = inttoptr i64 %6658 to i64*
  %6662 = load i64, i64* %6661
  store i64 %6662, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_43c711, %struct.Memory** %MEMORY
  %loadMem_43c715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 33
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6665 to i64*
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 1
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %6668 to i64*
  %6669 = load i64, i64* %RAX.i80
  %6670 = add i64 %6669, 120
  %6671 = load i64, i64* %PC.i79
  %6672 = add i64 %6671, 4
  store i64 %6672, i64* %PC.i79
  %6673 = inttoptr i64 %6670 to i64*
  %6674 = load i64, i64* %6673
  store i64 %6674, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_43c715, %struct.Memory** %MEMORY
  %loadMem_43c719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 33
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6677 to i64*
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 5
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %6680 to i64*
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 15
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %6683 to i64*
  %6684 = load i64, i64* %RBP.i78
  %6685 = sub i64 %6684, 24
  %6686 = load i64, i64* %PC.i76
  %6687 = add i64 %6686, 4
  store i64 %6687, i64* %PC.i76
  %6688 = inttoptr i64 %6685 to i32*
  %6689 = load i32, i32* %6688
  %6690 = sext i32 %6689 to i64
  store i64 %6690, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_43c719, %struct.Memory** %MEMORY
  %loadMem_43c71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 33
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6693 to i64*
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 1
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %6696 to i64*
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 5
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %6699 to i64*
  %6700 = load i64, i64* %RAX.i74
  %6701 = load i64, i64* %RCX.i75
  %6702 = mul i64 %6701, 8
  %6703 = add i64 %6702, %6700
  %6704 = load i64, i64* %PC.i73
  %6705 = add i64 %6704, 4
  store i64 %6705, i64* %PC.i73
  %6706 = inttoptr i64 %6703 to i64*
  %6707 = load i64, i64* %6706
  store i64 %6707, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_43c71d, %struct.Memory** %MEMORY
  %loadMem_43c721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 5
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 15
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RBP.i72
  %6718 = sub i64 %6717, 44
  %6719 = load i64, i64* %PC.i70
  %6720 = add i64 %6719, 4
  store i64 %6720, i64* %PC.i70
  %6721 = inttoptr i64 %6718 to i32*
  %6722 = load i32, i32* %6721
  %6723 = sext i32 %6722 to i64
  store i64 %6723, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_43c721, %struct.Memory** %MEMORY
  %loadMem_43c725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 1
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %6729 to i64*
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 5
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %6732 to i64*
  %6733 = load i64, i64* %RAX.i68
  %6734 = load i64, i64* %RCX.i69
  %6735 = load i64, i64* %PC.i67
  %6736 = add i64 %6735, 3
  store i64 %6736, i64* %PC.i67
  %6737 = add i64 %6734, %6733
  store i64 %6737, i64* %RAX.i68, align 8
  %6738 = icmp ult i64 %6737, %6733
  %6739 = icmp ult i64 %6737, %6734
  %6740 = or i1 %6738, %6739
  %6741 = zext i1 %6740 to i8
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6741, i8* %6742, align 1
  %6743 = trunc i64 %6737 to i32
  %6744 = and i32 %6743, 255
  %6745 = call i32 @llvm.ctpop.i32(i32 %6744)
  %6746 = trunc i32 %6745 to i8
  %6747 = and i8 %6746, 1
  %6748 = xor i8 %6747, 1
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6748, i8* %6749, align 1
  %6750 = xor i64 %6734, %6733
  %6751 = xor i64 %6750, %6737
  %6752 = lshr i64 %6751, 4
  %6753 = trunc i64 %6752 to i8
  %6754 = and i8 %6753, 1
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6754, i8* %6755, align 1
  %6756 = icmp eq i64 %6737, 0
  %6757 = zext i1 %6756 to i8
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6757, i8* %6758, align 1
  %6759 = lshr i64 %6737, 63
  %6760 = trunc i64 %6759 to i8
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6760, i8* %6761, align 1
  %6762 = lshr i64 %6733, 63
  %6763 = lshr i64 %6734, 63
  %6764 = xor i64 %6759, %6762
  %6765 = xor i64 %6759, %6763
  %6766 = add i64 %6764, %6765
  %6767 = icmp eq i64 %6766, 2
  %6768 = zext i1 %6767 to i8
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6768, i8* %6769, align 1
  store %struct.Memory* %loadMem_43c725, %struct.Memory** %MEMORY
  %loadMem_43c728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6771 = getelementptr inbounds %struct.GPR, %struct.GPR* %6770, i32 0, i32 33
  %6772 = getelementptr inbounds %struct.Reg, %struct.Reg* %6771, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6772 to i64*
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 7
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %6775 to i64*
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 15
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %6778 to i64*
  %6779 = load i64, i64* %RBP.i66
  %6780 = sub i64 %6779, 20
  %6781 = load i64, i64* %PC.i64
  %6782 = add i64 %6781, 4
  store i64 %6782, i64* %PC.i64
  %6783 = inttoptr i64 %6780 to i32*
  %6784 = load i32, i32* %6783
  %6785 = sext i32 %6784 to i64
  store i64 %6785, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_43c728, %struct.Memory** %MEMORY
  %loadMem_43c72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 33
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6788 to i64*
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 1
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %6791 to i64*
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 9
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %RSI.i63 = bitcast %union.anon* %6794 to i64*
  %6795 = load i64, i64* %RAX.i62
  %6796 = load i64, i64* %PC.i61
  %6797 = add i64 %6796, 3
  store i64 %6797, i64* %PC.i61
  store i64 %6795, i64* %RSI.i63, align 8
  store %struct.Memory* %loadMem_43c72c, %struct.Memory** %MEMORY
  %loadMem1_43c72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 33
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %6800 to i64*
  %6801 = load i64, i64* %PC.i60
  %6802 = add i64 %6801, -242559
  %6803 = load i64, i64* %PC.i60
  %6804 = add i64 %6803, 5
  %6805 = load i64, i64* %PC.i60
  %6806 = add i64 %6805, 5
  store i64 %6806, i64* %PC.i60
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6808 = load i64, i64* %6807, align 8
  %6809 = add i64 %6808, -8
  %6810 = inttoptr i64 %6809 to i64*
  store i64 %6804, i64* %6810
  store i64 %6809, i64* %6807, align 8
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6802, i64* %6811, align 8
  store %struct.Memory* %loadMem1_43c72f, %struct.Memory** %MEMORY
  %loadMem2_43c72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c72f = load i64, i64* %3
  %call2_43c72f = call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* %0, i64 %loadPC_43c72f, %struct.Memory* %loadMem2_43c72f)
  store %struct.Memory* %call2_43c72f, %struct.Memory** %MEMORY
  %loadMem_43c734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 33
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %6814 to i64*
  %6815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6816 = getelementptr inbounds %struct.GPR, %struct.GPR* %6815, i32 0, i32 9
  %6817 = getelementptr inbounds %struct.Reg, %struct.Reg* %6816, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6817 to i64*
  %6818 = load i64, i64* %PC.i59
  %6819 = add i64 %6818, 10
  store i64 %6819, i64* %PC.i59
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_43c734, %struct.Memory** %MEMORY
  %loadMem_43c73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 33
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6822 to i64*
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6824 = getelementptr inbounds %struct.GPR, %struct.GPR* %6823, i32 0, i32 17
  %6825 = getelementptr inbounds %struct.Reg, %struct.Reg* %6824, i32 0, i32 0
  %R8.i = bitcast %union.anon* %6825 to i64*
  %6826 = load i64, i64* %PC.i58
  %6827 = add i64 %6826, 10
  store i64 %6827, i64* %PC.i58
  store i64 ptrtoint (%G__0x4599e8_type* @G__0x4599e8 to i64), i64* %R8.i, align 8
  store %struct.Memory* %loadMem_43c73e, %struct.Memory** %MEMORY
  %loadMem_43c748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6829 = getelementptr inbounds %struct.GPR, %struct.GPR* %6828, i32 0, i32 33
  %6830 = getelementptr inbounds %struct.Reg, %struct.Reg* %6829, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6830 to i64*
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6832 = getelementptr inbounds %struct.GPR, %struct.GPR* %6831, i32 0, i32 5
  %6833 = getelementptr inbounds %struct.Reg, %struct.Reg* %6832, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %6833 to i64*
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 15
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %6836 to i64*
  %6837 = load i64, i64* %RBP.i57
  %6838 = sub i64 %6837, 40
  %6839 = load i64, i64* %PC.i55
  %6840 = add i64 %6839, 4
  store i64 %6840, i64* %PC.i55
  %6841 = inttoptr i64 %6838 to i64*
  %6842 = load i64, i64* %6841
  store i64 %6842, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_43c748, %struct.Memory** %MEMORY
  %loadMem_43c74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 33
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6845 to i64*
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 7
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %6848 to i64*
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 15
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %6851 to i64*
  %6852 = load i64, i64* %RBP.i54
  %6853 = sub i64 %6852, 20
  %6854 = load i64, i64* %PC.i52
  %6855 = add i64 %6854, 4
  store i64 %6855, i64* %PC.i52
  %6856 = inttoptr i64 %6853 to i32*
  %6857 = load i32, i32* %6856
  %6858 = sext i32 %6857 to i64
  store i64 %6858, i64* %RDX.i53, align 8
  store %struct.Memory* %loadMem_43c74c, %struct.Memory** %MEMORY
  %loadMem_43c750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 33
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6861 to i64*
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6863 = getelementptr inbounds %struct.GPR, %struct.GPR* %6862, i32 0, i32 5
  %6864 = getelementptr inbounds %struct.Reg, %struct.Reg* %6863, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %6864 to i64*
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 7
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %6867 to i64*
  %6868 = load i64, i64* %RCX.i50
  %6869 = load i64, i64* %RDX.i51
  %6870 = add i64 %6869, %6868
  %6871 = load i64, i64* %PC.i49
  %6872 = add i64 %6871, 4
  store i64 %6872, i64* %PC.i49
  %6873 = inttoptr i64 %6870 to i8*
  store i8 0, i8* %6873
  store %struct.Memory* %loadMem_43c750, %struct.Memory** %MEMORY
  %loadMem_43c754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 33
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6876 to i64*
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 11
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %RDI.i47 = bitcast %union.anon* %6879 to i64*
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 15
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %6882 to i64*
  %6883 = load i64, i64* %RBP.i48
  %6884 = sub i64 %6883, 8
  %6885 = load i64, i64* %PC.i46
  %6886 = add i64 %6885, 4
  store i64 %6886, i64* %PC.i46
  %6887 = inttoptr i64 %6884 to i64*
  %6888 = load i64, i64* %6887
  store i64 %6888, i64* %RDI.i47, align 8
  store %struct.Memory* %loadMem_43c754, %struct.Memory** %MEMORY
  %loadMem_43c758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6890 = getelementptr inbounds %struct.GPR, %struct.GPR* %6889, i32 0, i32 33
  %6891 = getelementptr inbounds %struct.Reg, %struct.Reg* %6890, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6891 to i64*
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6893 = getelementptr inbounds %struct.GPR, %struct.GPR* %6892, i32 0, i32 7
  %6894 = getelementptr inbounds %struct.Reg, %struct.Reg* %6893, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6894 to i64*
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6896 = getelementptr inbounds %struct.GPR, %struct.GPR* %6895, i32 0, i32 15
  %6897 = getelementptr inbounds %struct.Reg, %struct.Reg* %6896, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %6897 to i64*
  %6898 = load i64, i64* %RBP.i45
  %6899 = sub i64 %6898, 32
  %6900 = load i64, i64* %PC.i44
  %6901 = add i64 %6900, 3
  store i64 %6901, i64* %PC.i44
  %6902 = inttoptr i64 %6899 to i32*
  %6903 = load i32, i32* %6902
  %6904 = zext i32 %6903 to i64
  store i64 %6904, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_43c758, %struct.Memory** %MEMORY
  %loadMem_43c75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6906 = getelementptr inbounds %struct.GPR, %struct.GPR* %6905, i32 0, i32 33
  %6907 = getelementptr inbounds %struct.Reg, %struct.Reg* %6906, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6907 to i64*
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6909 = getelementptr inbounds %struct.GPR, %struct.GPR* %6908, i32 0, i32 5
  %6910 = getelementptr inbounds %struct.Reg, %struct.Reg* %6909, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6910 to i64*
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 15
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %6913 to i64*
  %6914 = load i64, i64* %RBP.i43
  %6915 = sub i64 %6914, 32
  %6916 = load i64, i64* %PC.i42
  %6917 = add i64 %6916, 3
  store i64 %6917, i64* %PC.i42
  %6918 = inttoptr i64 %6915 to i32*
  %6919 = load i32, i32* %6918
  %6920 = zext i32 %6919 to i64
  store i64 %6920, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_43c75b, %struct.Memory** %MEMORY
  %loadMem_43c75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6922 = getelementptr inbounds %struct.GPR, %struct.GPR* %6921, i32 0, i32 33
  %6923 = getelementptr inbounds %struct.Reg, %struct.Reg* %6922, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %6923 to i64*
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 15
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %6926 to i64*
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6928 = getelementptr inbounds %struct.GPR, %struct.GPR* %6927, i32 0, i32 19
  %6929 = getelementptr inbounds %struct.Reg, %struct.Reg* %6928, i32 0, i32 0
  %R9.i = bitcast %union.anon* %6929 to i64*
  %6930 = load i64, i64* %RBP.i41
  %6931 = sub i64 %6930, 40
  %6932 = load i64, i64* %PC.i40
  %6933 = add i64 %6932, 4
  store i64 %6933, i64* %PC.i40
  %6934 = inttoptr i64 %6931 to i64*
  %6935 = load i64, i64* %6934
  store i64 %6935, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_43c75e, %struct.Memory** %MEMORY
  %loadMem_43c762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6937 = getelementptr inbounds %struct.GPR, %struct.GPR* %6936, i32 0, i32 33
  %6938 = getelementptr inbounds %struct.Reg, %struct.Reg* %6937, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6938 to i64*
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6940 = getelementptr inbounds %struct.GPR, %struct.GPR* %6939, i32 0, i32 1
  %6941 = getelementptr inbounds %struct.Reg, %struct.Reg* %6940, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %6941 to i64*
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 15
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %6944 to i64*
  %6945 = load i64, i64* %RBP.i39
  %6946 = sub i64 %6945, 240
  %6947 = load i64, i64* %RAX.i38
  %6948 = load i64, i64* %PC.i37
  %6949 = add i64 %6948, 7
  store i64 %6949, i64* %PC.i37
  %6950 = inttoptr i64 %6946 to i64*
  store i64 %6947, i64* %6950
  store %struct.Memory* %loadMem_43c762, %struct.Memory** %MEMORY
  %loadMem_43c769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 33
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6953 to i64*
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 1
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %6957 = bitcast %union.anon* %6956 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6957, i32 0, i32 0
  %6958 = load i64, i64* %PC.i36
  %6959 = add i64 %6958, 2
  store i64 %6959, i64* %PC.i36
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_43c769, %struct.Memory** %MEMORY
  %loadMem1_43c76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6961 = getelementptr inbounds %struct.GPR, %struct.GPR* %6960, i32 0, i32 33
  %6962 = getelementptr inbounds %struct.Reg, %struct.Reg* %6961, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6962 to i64*
  %6963 = load i64, i64* %PC.i35
  %6964 = add i64 %6963, -242171
  %6965 = load i64, i64* %PC.i35
  %6966 = add i64 %6965, 5
  %6967 = load i64, i64* %PC.i35
  %6968 = add i64 %6967, 5
  store i64 %6968, i64* %PC.i35
  %6969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6970 = load i64, i64* %6969, align 8
  %6971 = add i64 %6970, -8
  %6972 = inttoptr i64 %6971 to i64*
  store i64 %6966, i64* %6972
  store i64 %6971, i64* %6969, align 8
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6964, i64* %6973, align 8
  store %struct.Memory* %loadMem1_43c76b, %struct.Memory** %MEMORY
  %loadMem2_43c76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c76b = load i64, i64* %3
  %6974 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_43c76b)
  store %struct.Memory* %6974, %struct.Memory** %MEMORY
  %loadMem_43c770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6976 = getelementptr inbounds %struct.GPR, %struct.GPR* %6975, i32 0, i32 33
  %6977 = getelementptr inbounds %struct.Reg, %struct.Reg* %6976, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %6977 to i64*
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6979 = getelementptr inbounds %struct.GPR, %struct.GPR* %6978, i32 0, i32 1
  %6980 = getelementptr inbounds %struct.Reg, %struct.Reg* %6979, i32 0, i32 0
  %EAX.i31 = bitcast %union.anon* %6980 to i32*
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6982 = getelementptr inbounds %struct.GPR, %struct.GPR* %6981, i32 0, i32 15
  %6983 = getelementptr inbounds %struct.Reg, %struct.Reg* %6982, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %6983 to i64*
  %6984 = load i64, i64* %RBP.i32
  %6985 = sub i64 %6984, 244
  %6986 = load i32, i32* %EAX.i31
  %6987 = zext i32 %6986 to i64
  %6988 = load i64, i64* %PC.i30
  %6989 = add i64 %6988, 6
  store i64 %6989, i64* %PC.i30
  %6990 = inttoptr i64 %6985 to i32*
  store i32 %6986, i32* %6990
  store %struct.Memory* %loadMem_43c770, %struct.Memory** %MEMORY
  br label %block_.L_43c776

block_.L_43c776:                                  ; preds = %block_43c70d, %block_43c6f6, %block_.L_43c6e7
  %loadMem_43c776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6992 = getelementptr inbounds %struct.GPR, %struct.GPR* %6991, i32 0, i32 33
  %6993 = getelementptr inbounds %struct.Reg, %struct.Reg* %6992, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6993 to i64*
  %6994 = load i64, i64* %PC.i29
  %6995 = add i64 %6994, 5
  %6996 = load i64, i64* %PC.i29
  %6997 = add i64 %6996, 5
  store i64 %6997, i64* %PC.i29
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6995, i64* %6998, align 8
  store %struct.Memory* %loadMem_43c776, %struct.Memory** %MEMORY
  br label %block_.L_43c77b

block_.L_43c77b:                                  ; preds = %block_.L_43c776
  %loadMem_43c77b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 33
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7001 to i64*
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 1
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %7004 to i64*
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7006 = getelementptr inbounds %struct.GPR, %struct.GPR* %7005, i32 0, i32 15
  %7007 = getelementptr inbounds %struct.Reg, %struct.Reg* %7006, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %7007 to i64*
  %7008 = load i64, i64* %RBP.i28
  %7009 = sub i64 %7008, 24
  %7010 = load i64, i64* %PC.i26
  %7011 = add i64 %7010, 3
  store i64 %7011, i64* %PC.i26
  %7012 = inttoptr i64 %7009 to i32*
  %7013 = load i32, i32* %7012
  %7014 = zext i32 %7013 to i64
  store i64 %7014, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_43c77b, %struct.Memory** %MEMORY
  %loadMem_43c77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7016 = getelementptr inbounds %struct.GPR, %struct.GPR* %7015, i32 0, i32 33
  %7017 = getelementptr inbounds %struct.Reg, %struct.Reg* %7016, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7017 to i64*
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 1
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %7020 to i64*
  %7021 = load i64, i64* %RAX.i25
  %7022 = load i64, i64* %PC.i24
  %7023 = add i64 %7022, 3
  store i64 %7023, i64* %PC.i24
  %7024 = trunc i64 %7021 to i32
  %7025 = add i32 1, %7024
  %7026 = zext i32 %7025 to i64
  store i64 %7026, i64* %RAX.i25, align 8
  %7027 = icmp ult i32 %7025, %7024
  %7028 = icmp ult i32 %7025, 1
  %7029 = or i1 %7027, %7028
  %7030 = zext i1 %7029 to i8
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7030, i8* %7031, align 1
  %7032 = and i32 %7025, 255
  %7033 = call i32 @llvm.ctpop.i32(i32 %7032)
  %7034 = trunc i32 %7033 to i8
  %7035 = and i8 %7034, 1
  %7036 = xor i8 %7035, 1
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7036, i8* %7037, align 1
  %7038 = xor i64 1, %7021
  %7039 = trunc i64 %7038 to i32
  %7040 = xor i32 %7039, %7025
  %7041 = lshr i32 %7040, 4
  %7042 = trunc i32 %7041 to i8
  %7043 = and i8 %7042, 1
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7043, i8* %7044, align 1
  %7045 = icmp eq i32 %7025, 0
  %7046 = zext i1 %7045 to i8
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7046, i8* %7047, align 1
  %7048 = lshr i32 %7025, 31
  %7049 = trunc i32 %7048 to i8
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7049, i8* %7050, align 1
  %7051 = lshr i32 %7024, 31
  %7052 = xor i32 %7048, %7051
  %7053 = add i32 %7052, %7048
  %7054 = icmp eq i32 %7053, 2
  %7055 = zext i1 %7054 to i8
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7055, i8* %7056, align 1
  store %struct.Memory* %loadMem_43c77e, %struct.Memory** %MEMORY
  %loadMem_43c781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7058 = getelementptr inbounds %struct.GPR, %struct.GPR* %7057, i32 0, i32 33
  %7059 = getelementptr inbounds %struct.Reg, %struct.Reg* %7058, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7059 to i64*
  %7060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7061 = getelementptr inbounds %struct.GPR, %struct.GPR* %7060, i32 0, i32 1
  %7062 = getelementptr inbounds %struct.Reg, %struct.Reg* %7061, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %7062 to i32*
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 15
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %7065 to i64*
  %7066 = load i64, i64* %RBP.i23
  %7067 = sub i64 %7066, 24
  %7068 = load i32, i32* %EAX.i22
  %7069 = zext i32 %7068 to i64
  %7070 = load i64, i64* %PC.i21
  %7071 = add i64 %7070, 3
  store i64 %7071, i64* %PC.i21
  %7072 = inttoptr i64 %7067 to i32*
  store i32 %7068, i32* %7072
  store %struct.Memory* %loadMem_43c781, %struct.Memory** %MEMORY
  %loadMem_43c784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 33
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7075 to i64*
  %7076 = load i64, i64* %PC.i20
  %7077 = add i64 %7076, -426
  %7078 = load i64, i64* %PC.i20
  %7079 = add i64 %7078, 5
  store i64 %7079, i64* %PC.i20
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7077, i64* %7080, align 8
  store %struct.Memory* %loadMem_43c784, %struct.Memory** %MEMORY
  br label %block_.L_43c5da

block_.L_43c789:                                  ; preds = %block_.L_43c5da
  %loadMem_43c789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 33
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7083 to i64*
  %7084 = load i64, i64* %PC.i19
  %7085 = add i64 %7084, 5
  %7086 = load i64, i64* %PC.i19
  %7087 = add i64 %7086, 5
  store i64 %7087, i64* %PC.i19
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7085, i64* %7088, align 8
  store %struct.Memory* %loadMem_43c789, %struct.Memory** %MEMORY
  br label %block_.L_43c78e

block_.L_43c78e:                                  ; preds = %block_.L_43c789
  %loadMem_43c78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7090 = getelementptr inbounds %struct.GPR, %struct.GPR* %7089, i32 0, i32 33
  %7091 = getelementptr inbounds %struct.Reg, %struct.Reg* %7090, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7091 to i64*
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7093 = getelementptr inbounds %struct.GPR, %struct.GPR* %7092, i32 0, i32 1
  %7094 = getelementptr inbounds %struct.Reg, %struct.Reg* %7093, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %7094 to i64*
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7096 = getelementptr inbounds %struct.GPR, %struct.GPR* %7095, i32 0, i32 15
  %7097 = getelementptr inbounds %struct.Reg, %struct.Reg* %7096, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %7097 to i64*
  %7098 = load i64, i64* %RBP.i18
  %7099 = sub i64 %7098, 20
  %7100 = load i64, i64* %PC.i16
  %7101 = add i64 %7100, 3
  store i64 %7101, i64* %PC.i16
  %7102 = inttoptr i64 %7099 to i32*
  %7103 = load i32, i32* %7102
  %7104 = zext i32 %7103 to i64
  store i64 %7104, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_43c78e, %struct.Memory** %MEMORY
  %loadMem_43c791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 33
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 1
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7110 to i64*
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7112 = getelementptr inbounds %struct.GPR, %struct.GPR* %7111, i32 0, i32 15
  %7113 = getelementptr inbounds %struct.Reg, %struct.Reg* %7112, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %7113 to i64*
  %7114 = load i64, i64* %RAX.i
  %7115 = load i64, i64* %RBP.i15
  %7116 = sub i64 %7115, 44
  %7117 = load i64, i64* %PC.i14
  %7118 = add i64 %7117, 3
  store i64 %7118, i64* %PC.i14
  %7119 = trunc i64 %7114 to i32
  %7120 = inttoptr i64 %7116 to i32*
  %7121 = load i32, i32* %7120
  %7122 = add i32 %7121, %7119
  %7123 = zext i32 %7122 to i64
  store i64 %7123, i64* %RAX.i, align 8
  %7124 = icmp ult i32 %7122, %7119
  %7125 = icmp ult i32 %7122, %7121
  %7126 = or i1 %7124, %7125
  %7127 = zext i1 %7126 to i8
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7127, i8* %7128, align 1
  %7129 = and i32 %7122, 255
  %7130 = call i32 @llvm.ctpop.i32(i32 %7129)
  %7131 = trunc i32 %7130 to i8
  %7132 = and i8 %7131, 1
  %7133 = xor i8 %7132, 1
  %7134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7133, i8* %7134, align 1
  %7135 = xor i32 %7121, %7119
  %7136 = xor i32 %7135, %7122
  %7137 = lshr i32 %7136, 4
  %7138 = trunc i32 %7137 to i8
  %7139 = and i8 %7138, 1
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7139, i8* %7140, align 1
  %7141 = icmp eq i32 %7122, 0
  %7142 = zext i1 %7141 to i8
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7142, i8* %7143, align 1
  %7144 = lshr i32 %7122, 31
  %7145 = trunc i32 %7144 to i8
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7145, i8* %7146, align 1
  %7147 = lshr i32 %7119, 31
  %7148 = lshr i32 %7121, 31
  %7149 = xor i32 %7144, %7147
  %7150 = xor i32 %7144, %7148
  %7151 = add i32 %7149, %7150
  %7152 = icmp eq i32 %7151, 2
  %7153 = zext i1 %7152 to i8
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7153, i8* %7154, align 1
  store %struct.Memory* %loadMem_43c791, %struct.Memory** %MEMORY
  %loadMem_43c794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7156 = getelementptr inbounds %struct.GPR, %struct.GPR* %7155, i32 0, i32 33
  %7157 = getelementptr inbounds %struct.Reg, %struct.Reg* %7156, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7157 to i64*
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 1
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7160 to i32*
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7162 = getelementptr inbounds %struct.GPR, %struct.GPR* %7161, i32 0, i32 15
  %7163 = getelementptr inbounds %struct.Reg, %struct.Reg* %7162, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %7163 to i64*
  %7164 = load i64, i64* %RBP.i13
  %7165 = sub i64 %7164, 44
  %7166 = load i32, i32* %EAX.i
  %7167 = zext i32 %7166 to i64
  %7168 = load i64, i64* %PC.i12
  %7169 = add i64 %7168, 3
  store i64 %7169, i64* %PC.i12
  %7170 = inttoptr i64 %7165 to i32*
  store i32 %7166, i32* %7170
  store %struct.Memory* %loadMem_43c794, %struct.Memory** %MEMORY
  %loadMem_43c797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 33
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7173 to i64*
  %7174 = load i64, i64* %PC.i11
  %7175 = add i64 %7174, -729
  %7176 = load i64, i64* %PC.i11
  %7177 = add i64 %7176, 5
  store i64 %7177, i64* %PC.i11
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7175, i64* %7178, align 8
  store %struct.Memory* %loadMem_43c797, %struct.Memory** %MEMORY
  br label %block_.L_43c4be

block_.L_43c79c:                                  ; preds = %block_.L_43c4be
  %loadMem_43c79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7180 = getelementptr inbounds %struct.GPR, %struct.GPR* %7179, i32 0, i32 33
  %7181 = getelementptr inbounds %struct.Reg, %struct.Reg* %7180, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7181 to i64*
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7183 = getelementptr inbounds %struct.GPR, %struct.GPR* %7182, i32 0, i32 11
  %7184 = getelementptr inbounds %struct.Reg, %struct.Reg* %7183, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7184 to i64*
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7186 = getelementptr inbounds %struct.GPR, %struct.GPR* %7185, i32 0, i32 15
  %7187 = getelementptr inbounds %struct.Reg, %struct.Reg* %7186, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %7187 to i64*
  %7188 = load i64, i64* %RBP.i10
  %7189 = sub i64 %7188, 40
  %7190 = load i64, i64* %PC.i9
  %7191 = add i64 %7190, 4
  store i64 %7191, i64* %PC.i9
  %7192 = inttoptr i64 %7189 to i64*
  %7193 = load i64, i64* %7192
  store i64 %7193, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43c79c, %struct.Memory** %MEMORY
  %loadMem1_43c7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7195 = getelementptr inbounds %struct.GPR, %struct.GPR* %7194, i32 0, i32 33
  %7196 = getelementptr inbounds %struct.Reg, %struct.Reg* %7195, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7196 to i64*
  %7197 = load i64, i64* %PC.i8
  %7198 = add i64 %7197, -242720
  %7199 = load i64, i64* %PC.i8
  %7200 = add i64 %7199, 5
  %7201 = load i64, i64* %PC.i8
  %7202 = add i64 %7201, 5
  store i64 %7202, i64* %PC.i8
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7204 = load i64, i64* %7203, align 8
  %7205 = add i64 %7204, -8
  %7206 = inttoptr i64 %7205 to i64*
  store i64 %7200, i64* %7206
  store i64 %7205, i64* %7203, align 8
  %7207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7198, i64* %7207, align 8
  store %struct.Memory* %loadMem1_43c7a0, %struct.Memory** %MEMORY
  %loadMem2_43c7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c7a0 = load i64, i64* %3
  %7208 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_43c7a0)
  store %struct.Memory* %7208, %struct.Memory** %MEMORY
  %loadMem_43c7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 33
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7211 to i64*
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 13
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7214 to i64*
  %7215 = load i64, i64* %RSP.i
  %7216 = load i64, i64* %PC.i4
  %7217 = add i64 %7216, 7
  store i64 %7217, i64* %PC.i4
  %7218 = add i64 288, %7215
  store i64 %7218, i64* %RSP.i, align 8
  %7219 = icmp ult i64 %7218, %7215
  %7220 = icmp ult i64 %7218, 288
  %7221 = or i1 %7219, %7220
  %7222 = zext i1 %7221 to i8
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7222, i8* %7223, align 1
  %7224 = trunc i64 %7218 to i32
  %7225 = and i32 %7224, 255
  %7226 = call i32 @llvm.ctpop.i32(i32 %7225)
  %7227 = trunc i32 %7226 to i8
  %7228 = and i8 %7227, 1
  %7229 = xor i8 %7228, 1
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7229, i8* %7230, align 1
  %7231 = xor i64 288, %7215
  %7232 = xor i64 %7231, %7218
  %7233 = lshr i64 %7232, 4
  %7234 = trunc i64 %7233 to i8
  %7235 = and i8 %7234, 1
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7235, i8* %7236, align 1
  %7237 = icmp eq i64 %7218, 0
  %7238 = zext i1 %7237 to i8
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7238, i8* %7239, align 1
  %7240 = lshr i64 %7218, 63
  %7241 = trunc i64 %7240 to i8
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7241, i8* %7242, align 1
  %7243 = lshr i64 %7215, 63
  %7244 = xor i64 %7240, %7243
  %7245 = add i64 %7244, %7240
  %7246 = icmp eq i64 %7245, 2
  %7247 = zext i1 %7246 to i8
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7247, i8* %7248, align 1
  store %struct.Memory* %loadMem_43c7a5, %struct.Memory** %MEMORY
  %loadMem_43c7ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7250 = getelementptr inbounds %struct.GPR, %struct.GPR* %7249, i32 0, i32 33
  %7251 = getelementptr inbounds %struct.Reg, %struct.Reg* %7250, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7251 to i64*
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7253 = getelementptr inbounds %struct.GPR, %struct.GPR* %7252, i32 0, i32 15
  %7254 = getelementptr inbounds %struct.Reg, %struct.Reg* %7253, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7254 to i64*
  %7255 = load i64, i64* %PC.i2
  %7256 = add i64 %7255, 1
  store i64 %7256, i64* %PC.i2
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7258 = load i64, i64* %7257, align 8
  %7259 = add i64 %7258, 8
  %7260 = inttoptr i64 %7258 to i64*
  %7261 = load i64, i64* %7260
  store i64 %7261, i64* %RBP.i3, align 8
  store i64 %7259, i64* %7257, align 8
  store %struct.Memory* %loadMem_43c7ac, %struct.Memory** %MEMORY
  %loadMem_43c7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7263 = getelementptr inbounds %struct.GPR, %struct.GPR* %7262, i32 0, i32 33
  %7264 = getelementptr inbounds %struct.Reg, %struct.Reg* %7263, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7264 to i64*
  %7265 = load i64, i64* %PC.i1
  %7266 = add i64 %7265, 1
  store i64 %7266, i64* %PC.i1
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7269 = load i64, i64* %7268, align 8
  %7270 = inttoptr i64 %7269 to i64*
  %7271 = load i64, i64* %7270
  store i64 %7271, i64* %7267, align 8
  %7272 = add i64 %7269, 8
  store i64 %7272, i64* %7268, align 8
  store %struct.Memory* %loadMem_43c7ad, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43c7ad
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

define %struct.Memory* @routine_subq__0x120___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 288
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 288
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
  %23 = xor i64 288, %9
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x65___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 101, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 101
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
  %26 = xor i64 101, %9
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

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_43c010(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_43bffd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43c002(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43bfc4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jge_.L_43c021(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x6__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 6, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb8__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 184
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_43c074(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459c9f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459c9f_type* @G__0x459c9f to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_0xb0__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 176
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_43c028(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 184
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jle_.L_43c09d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43c0cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459ca5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459ca5_type* @G__0x459ca5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43c0fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459cae___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459cae_type* @G__0x459cae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x38__rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43c12a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459cb7___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459cb7_type* @G__0x459cb7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpq__0x0__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43c159(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459cc0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459cc0_type* @G__0x459cc0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rax____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0xa0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_43c1b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xa4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movq__0x459cc9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459cc9_type* @G__0x459cc9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x88__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x8c__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x2___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 2, i8* %AL, align 1
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

define %struct.Memory* @routine_jmpq_.L_43c1ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43c1e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459cd9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459cd9_type* @G__0x459cd9 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0xa8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_43c241(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xac__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movq__0x459ce4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459ce4_type* @G__0x459ce4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x90__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x94__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_jmpq_.L_43c27b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43c276(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459cf4___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459cf4_type* @G__0x459cf4 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x98__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_je_.L_43c2d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x9c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_movq__0x459cff___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459cff_type* @G__0x459cff to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x80__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x84__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_jmpq_.L_43c30c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43c307(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x459d0f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459d0f_type* @G__0x459d0f to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jge_.L_43c49c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rsi_8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd___rax__rsi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = fpext float %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
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

define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
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

define %struct.Memory* @routine_je_.L_43c3a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43c3b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x456fc4___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x68__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
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

define %struct.Memory* @routine_je_.L_43c409(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43c41f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459d1a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x459d1a_type* @G__0x459d1a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456fc4___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x70__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_MINUS0x90__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %R10
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x20__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43c313(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 24
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

define %struct.Memory* @routine_jge_.L_43c79c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_43c4f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
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

define %struct.Memory* @routine_je_.L_43c563(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45b16d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45b16d_type* @G__0x45b16d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45992c___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %R8, align 8
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

define %struct.Memory* @routine_movb__0x0____rcx__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 0, i8* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 88
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

define %struct.Memory* @routine_je_.L_43c5d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x459931___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jge_.L_43c789(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x70__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
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

define %struct.Memory* @routine_je_.L_43c6e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4599e3___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
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

define %struct.Memory* @routine_je_.L_43c776(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4599e8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4599e8_type* @G__0x4599e8 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43c77b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43c5da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43c78e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_jmpq_.L_43c4be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x120___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 288, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 288
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
  %25 = xor i64 288, %9
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
