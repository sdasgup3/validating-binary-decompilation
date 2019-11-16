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
%G__0x45615f_type = type <{ [8 x i8] }>
%G__0x456173_type = type <{ [8 x i8] }>
%G__0x456198_type = type <{ [8 x i8] }>
%G__0x4561a9_type = type <{ [8 x i8] }>
%G__0x4561b7_type = type <{ [8 x i8] }>
%G__0x4561f1_type = type <{ [8 x i8] }>
%G__0x456227_type = type <{ [8 x i8] }>
%G__0x45624a_type = type <{ [8 x i8] }>
%G__0x45625c_type = type <{ [8 x i8] }>
%G__0x456264_type = type <{ [8 x i8] }>
%G__0x45626c_type = type <{ [8 x i8] }>
%G__0x45628f_type = type <{ [8 x i8] }>
%G__0x456fc4_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
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
@G__0x45615f = global %G__0x45615f_type zeroinitializer
@G__0x456173 = global %G__0x456173_type zeroinitializer
@G__0x456198 = global %G__0x456198_type zeroinitializer
@G__0x4561a9 = global %G__0x4561a9_type zeroinitializer
@G__0x4561b7 = global %G__0x4561b7_type zeroinitializer
@G__0x4561f1 = global %G__0x4561f1_type zeroinitializer
@G__0x456227 = global %G__0x456227_type zeroinitializer
@G__0x45624a = global %G__0x45624a_type zeroinitializer
@G__0x45625c = global %G__0x45625c_type zeroinitializer
@G__0x456264 = global %G__0x456264_type zeroinitializer
@G__0x45626c = global %G__0x45626c_type zeroinitializer
@G__0x45628f = global %G__0x45628f_type zeroinitializer
@G__0x456fc4 = global %G__0x456fc4_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer

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

declare %struct.Memory* @sub_410d50.Statetype(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44e4c0.TransitionScoreLookup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @P7PrintTrace(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_410ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_410ef0, %struct.Memory** %MEMORY
  %loadMem_410ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i8 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i8
  %27 = load i64, i64* %PC.i7
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i7
  store i64 %26, i64* %RBP.i9, align 8
  store %struct.Memory* %loadMem_410ef1, %struct.Memory** %MEMORY
  %loadMem_410ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i21 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i21
  %36 = load i64, i64* %PC.i20
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i20
  %38 = sub i64 %35, 176
  store i64 %38, i64* %RSP.i21, align 8
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
  store %struct.Memory* %loadMem_410ef4, %struct.Memory** %MEMORY
  %loadMem_410efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i42 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i43
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i42
  %79 = load i64, i64* %PC.i41
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i41
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_410efb, %struct.Memory** %MEMORY
  %loadMem_410eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i54 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i55
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i54
  %94 = load i64, i64* %PC.i53
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i53
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_410eff, %struct.Memory** %MEMORY
  %loadMem_410f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i75
  %107 = sub i64 %106, 24
  %108 = load i64, i64* %RDX.i74
  %109 = load i64, i64* %PC.i73
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC.i73
  %111 = inttoptr i64 %107 to i64*
  store i64 %108, i64* %111
  store %struct.Memory* %loadMem_410f03, %struct.Memory** %MEMORY
  %loadMem_410f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i248
  %122 = sub i64 %121, 32
  %123 = load i64, i64* %RCX.i247
  %124 = load i64, i64* %PC.i246
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC.i246
  %126 = inttoptr i64 %122 to i64*
  store i64 %123, i64* %126
  store %struct.Memory* %loadMem_410f07, %struct.Memory** %MEMORY
  %loadMem_410f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 15
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %RBP.i361
  %134 = sub i64 %133, 16
  %135 = load i64, i64* %PC.i360
  %136 = add i64 %135, 5
  store i64 %136, i64* %PC.i360
  %137 = inttoptr i64 %134 to i64*
  %138 = load i64, i64* %137
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %139, align 1
  %140 = trunc i64 %138 to i32
  %141 = and i32 %140, 255
  %142 = call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %145, i8* %146, align 1
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %147, align 1
  %148 = icmp eq i64 %138, 0
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %149, i8* %150, align 1
  %151 = lshr i64 %138, 63
  %152 = trunc i64 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %152, i8* %153, align 1
  %154 = lshr i64 %138, 63
  %155 = xor i64 %151, %154
  %156 = add i64 %155, %154
  %157 = icmp eq i64 %156, 2
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %158, i8* %159, align 1
  store %struct.Memory* %loadMem_410f0b, %struct.Memory** %MEMORY
  %loadMem_410f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %PC.i517
  %164 = add i64 %163, 35
  %165 = load i64, i64* %PC.i517
  %166 = add i64 %165, 6
  %167 = load i64, i64* %PC.i517
  %168 = add i64 %167, 6
  store i64 %168, i64* %PC.i517
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %170 = load i8, i8* %169, align 1
  %171 = icmp eq i8 %170, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %BRANCH_TAKEN, align 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %174 = select i1 %171, i64 %164, i64 %166
  store i64 %174, i64* %173, align 8
  store %struct.Memory* %loadMem_410f10, %struct.Memory** %MEMORY
  %loadBr_410f10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410f10 = icmp eq i8 %loadBr_410f10, 1
  br i1 %cmpBr_410f10, label %block_.L_410f33, label %block_410f16

block_410f16:                                     ; preds = %entry
  %loadMem_410f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RSI.i736 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %PC.i735
  %182 = add i64 %181, 10
  store i64 %182, i64* %PC.i735
  store i64 ptrtoint (%G__0x45615f_type* @G__0x45615f to i64), i64* %RSI.i736, align 8
  store %struct.Memory* %loadMem_410f16, %struct.Memory** %MEMORY
  %loadMem_410f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 11
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RDI.i749 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 15
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %RBP.i750
  %193 = sub i64 %192, 8
  %194 = load i64, i64* %PC.i748
  %195 = add i64 %194, 4
  store i64 %195, i64* %PC.i748
  %196 = inttoptr i64 %193 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RDI.i749, align 8
  store %struct.Memory* %loadMem_410f20, %struct.Memory** %MEMORY
  %loadMem_410f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %204 = bitcast %union.anon* %203 to %struct.anon.2*
  %AL.i797 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %204, i32 0, i32 0
  %205 = load i64, i64* %PC.i796
  %206 = add i64 %205, 2
  store i64 %206, i64* %PC.i796
  store i8 0, i8* %AL.i797, align 1
  store %struct.Memory* %loadMem_410f24, %struct.Memory** %MEMORY
  %loadMem1_410f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 33
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %PC.i869
  %211 = add i64 %210, -63926
  %212 = load i64, i64* %PC.i869
  %213 = add i64 %212, 5
  %214 = load i64, i64* %PC.i869
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC.i869
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add i64 %217, -8
  %219 = inttoptr i64 %218 to i64*
  store i64 %213, i64* %219
  store i64 %218, i64* %216, align 8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %211, i64* %220, align 8
  store %struct.Memory* %loadMem1_410f26, %struct.Memory** %MEMORY
  %loadMem2_410f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410f26 = load i64, i64* %3
  %221 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_410f26)
  store %struct.Memory* %221, %struct.Memory** %MEMORY
  %loadMem_410f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %EAX.i882 = bitcast %union.anon* %227 to i32*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i883
  %232 = sub i64 %231, 48
  %233 = load i32, i32* %EAX.i882
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC.i881
  %236 = add i64 %235, 3
  store i64 %236, i64* %PC.i881
  %237 = inttoptr i64 %232 to i32*
  store i32 %233, i32* %237
  store %struct.Memory* %loadMem_410f2b, %struct.Memory** %MEMORY
  %loadMem_410f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %PC.i901
  %242 = add i64 %241, 1483
  %243 = load i64, i64* %PC.i901
  %244 = add i64 %243, 5
  store i64 %244, i64* %PC.i901
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %242, i64* %245, align 8
  store %struct.Memory* %loadMem_410f2e, %struct.Memory** %MEMORY
  br label %block_.L_4114f9

block_.L_410f33:                                  ; preds = %entry
  %loadMem_410f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i900
  %253 = sub i64 %252, 24
  %254 = load i64, i64* %PC.i899
  %255 = add i64 %254, 5
  store i64 %255, i64* %PC.i899
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %258, align 1
  %259 = trunc i64 %257 to i32
  %260 = and i32 %259, 255
  %261 = call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %264, i8* %265, align 1
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %266, align 1
  %267 = icmp eq i64 %257, 0
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %268, i8* %269, align 1
  %270 = lshr i64 %257, 63
  %271 = trunc i64 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %271, i8* %272, align 1
  %273 = lshr i64 %257, 63
  %274 = xor i64 %270, %273
  %275 = add i64 %274, %273
  %276 = icmp eq i64 %275, 2
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %277, i8* %278, align 1
  store %struct.Memory* %loadMem_410f33, %struct.Memory** %MEMORY
  %loadMem_410f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %PC.i898
  %283 = add i64 %282, 191
  %284 = load i64, i64* %PC.i898
  %285 = add i64 %284, 6
  %286 = load i64, i64* %PC.i898
  %287 = add i64 %286, 6
  store i64 %287, i64* %PC.i898
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %289 = load i8, i8* %288, align 1
  %290 = icmp eq i8 %289, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %BRANCH_TAKEN, align 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %293 = select i1 %290, i64 %283, i64 %285
  store i64 %293, i64* %292, align 8
  store %struct.Memory* %loadMem_410f38, %struct.Memory** %MEMORY
  %loadBr_410f38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410f38 = icmp eq i8 %loadBr_410f38, 1
  br i1 %cmpBr_410f38, label %block_.L_410ff7, label %block_410f3e

block_410f3e:                                     ; preds = %block_.L_410f33
  %loadMem_410f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 9
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RSI.i897 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %PC.i896
  %301 = add i64 %300, 10
  store i64 %301, i64* %PC.i896
  store i64 ptrtoint (%G__0x456173_type* @G__0x456173 to i64), i64* %RSI.i897, align 8
  store %struct.Memory* %loadMem_410f3e, %struct.Memory** %MEMORY
  %loadMem_410f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 11
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RDI.i894 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RBP.i895
  %312 = sub i64 %311, 8
  %313 = load i64, i64* %PC.i893
  %314 = add i64 %313, 4
  store i64 %314, i64* %PC.i893
  %315 = inttoptr i64 %312 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %RDI.i894, align 8
  store %struct.Memory* %loadMem_410f48, %struct.Memory** %MEMORY
  %loadMem_410f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RAX.i891 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 15
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RBP.i892 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %RBP.i892
  %327 = sub i64 %326, 16
  %328 = load i64, i64* %PC.i890
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC.i890
  %330 = inttoptr i64 %327 to i64*
  %331 = load i64, i64* %330
  store i64 %331, i64* %RAX.i891, align 8
  store %struct.Memory* %loadMem_410f4c, %struct.Memory** %MEMORY
  %loadMem_410f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RAX.i888 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 7
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RDX.i889 = bitcast %union.anon* %340 to i64*
  %341 = load i64, i64* %RAX.i888
  %342 = load i64, i64* %PC.i887
  %343 = add i64 %342, 2
  store i64 %343, i64* %PC.i887
  %344 = inttoptr i64 %341 to i32*
  %345 = load i32, i32* %344
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RDX.i889, align 8
  store %struct.Memory* %loadMem_410f50, %struct.Memory** %MEMORY
  %loadMem_410f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %353 = bitcast %union.anon* %352 to %struct.anon.2*
  %AL.i886 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %353, i32 0, i32 0
  %354 = load i64, i64* %PC.i885
  %355 = add i64 %354, 2
  store i64 %355, i64* %PC.i885
  store i8 0, i8* %AL.i886, align 1
  store %struct.Memory* %loadMem_410f52, %struct.Memory** %MEMORY
  %loadMem1_410f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %PC.i884
  %360 = add i64 %359, -63972
  %361 = load i64, i64* %PC.i884
  %362 = add i64 %361, 5
  %363 = load i64, i64* %PC.i884
  %364 = add i64 %363, 5
  store i64 %364, i64* %PC.i884
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = add i64 %366, -8
  %368 = inttoptr i64 %367 to i64*
  store i64 %362, i64* %368
  store i64 %367, i64* %365, align 8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %360, i64* %369, align 8
  store %struct.Memory* %loadMem1_410f54, %struct.Memory** %MEMORY
  %loadMem2_410f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410f54 = load i64, i64* %3
  %370 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_410f54)
  store %struct.Memory* %370, %struct.Memory** %MEMORY
  %loadMem_410f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 9
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RSI.i880 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %PC.i879
  %378 = add i64 %377, 10
  store i64 %378, i64* %PC.i879
  store i64 ptrtoint (%G__0x456198_type* @G__0x456198 to i64), i64* %RSI.i880, align 8
  store %struct.Memory* %loadMem_410f59, %struct.Memory** %MEMORY
  %loadMem_410f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 11
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RDI.i877 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 15
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RBP.i878 = bitcast %union.anon* %387 to i64*
  %388 = load i64, i64* %RBP.i878
  %389 = sub i64 %388, 8
  %390 = load i64, i64* %PC.i876
  %391 = add i64 %390, 4
  store i64 %391, i64* %PC.i876
  %392 = inttoptr i64 %389 to i64*
  %393 = load i64, i64* %392
  store i64 %393, i64* %RDI.i877, align 8
  store %struct.Memory* %loadMem_410f63, %struct.Memory** %MEMORY
  %loadMem_410f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %EAX.i874 = bitcast %union.anon* %399 to i32*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i875
  %404 = sub i64 %403, 52
  %405 = load i32, i32* %EAX.i874
  %406 = zext i32 %405 to i64
  %407 = load i64, i64* %PC.i873
  %408 = add i64 %407, 3
  store i64 %408, i64* %PC.i873
  %409 = inttoptr i64 %404 to i32*
  store i32 %405, i32* %409
  store %struct.Memory* %loadMem_410f67, %struct.Memory** %MEMORY
  %loadMem_410f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %416 = bitcast %union.anon* %415 to %struct.anon.2*
  %AL.i872 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %416, i32 0, i32 0
  %417 = load i64, i64* %PC.i871
  %418 = add i64 %417, 2
  store i64 %418, i64* %PC.i871
  store i8 0, i8* %AL.i872, align 1
  store %struct.Memory* %loadMem_410f6a, %struct.Memory** %MEMORY
  %loadMem1_410f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i870
  %423 = add i64 %422, -63996
  %424 = load i64, i64* %PC.i870
  %425 = add i64 %424, 5
  %426 = load i64, i64* %PC.i870
  %427 = add i64 %426, 5
  store i64 %427, i64* %PC.i870
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = add i64 %429, -8
  %431 = inttoptr i64 %430 to i64*
  store i64 %425, i64* %431
  store i64 %430, i64* %428, align 8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %423, i64* %432, align 8
  store %struct.Memory* %loadMem1_410f6c, %struct.Memory** %MEMORY
  %loadMem2_410f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410f6c = load i64, i64* %3
  %433 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_410f6c)
  store %struct.Memory* %433, %struct.Memory** %MEMORY
  %loadMem_410f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 15
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RBP.i868
  %441 = sub i64 %440, 36
  %442 = load i64, i64* %PC.i867
  %443 = add i64 %442, 7
  store i64 %443, i64* %PC.i867
  %444 = inttoptr i64 %441 to i32*
  store i32 0, i32* %444
  store %struct.Memory* %loadMem_410f71, %struct.Memory** %MEMORY
  %loadMem_410f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %EAX.i865 = bitcast %union.anon* %450 to i32*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 15
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %RBP.i866
  %455 = sub i64 %454, 56
  %456 = load i32, i32* %EAX.i865
  %457 = zext i32 %456 to i64
  %458 = load i64, i64* %PC.i864
  %459 = add i64 %458, 3
  store i64 %459, i64* %PC.i864
  %460 = inttoptr i64 %455 to i32*
  store i32 %456, i32* %460
  store %struct.Memory* %loadMem_410f78, %struct.Memory** %MEMORY
  br label %block_.L_410f7b

block_.L_410f7b:                                  ; preds = %block_410f8a, %block_410f3e
  %loadMem_410f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 33
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 15
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RBP.i863
  %471 = sub i64 %470, 36
  %472 = load i64, i64* %PC.i861
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC.i861
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX.i862, align 8
  store %struct.Memory* %loadMem_410f7b, %struct.Memory** %MEMORY
  %loadMem_410f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 5
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RCX.i859 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i860
  %487 = sub i64 %486, 16
  %488 = load i64, i64* %PC.i858
  %489 = add i64 %488, 4
  store i64 %489, i64* %PC.i858
  %490 = inttoptr i64 %487 to i64*
  %491 = load i64, i64* %490
  store i64 %491, i64* %RCX.i859, align 8
  store %struct.Memory* %loadMem_410f7e, %struct.Memory** %MEMORY
  %loadMem_410f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %EAX.i856 = bitcast %union.anon* %497 to i32*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 5
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RCX.i857 = bitcast %union.anon* %500 to i64*
  %501 = load i32, i32* %EAX.i856
  %502 = zext i32 %501 to i64
  %503 = load i64, i64* %RCX.i857
  %504 = load i64, i64* %PC.i855
  %505 = add i64 %504, 2
  store i64 %505, i64* %PC.i855
  %506 = inttoptr i64 %503 to i32*
  %507 = load i32, i32* %506
  %508 = sub i32 %501, %507
  %509 = icmp ult i32 %501, %507
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %510, i8* %511, align 1
  %512 = and i32 %508, 255
  %513 = call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %516, i8* %517, align 1
  %518 = xor i32 %507, %501
  %519 = xor i32 %518, %508
  %520 = lshr i32 %519, 4
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %522, i8* %523, align 1
  %524 = icmp eq i32 %508, 0
  %525 = zext i1 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %525, i8* %526, align 1
  %527 = lshr i32 %508, 31
  %528 = trunc i32 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %528, i8* %529, align 1
  %530 = lshr i32 %501, 31
  %531 = lshr i32 %507, 31
  %532 = xor i32 %531, %530
  %533 = xor i32 %527, %530
  %534 = add i32 %533, %532
  %535 = icmp eq i32 %534, 2
  %536 = zext i1 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %536, i8* %537, align 1
  store %struct.Memory* %loadMem_410f82, %struct.Memory** %MEMORY
  %loadMem_410f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %PC.i854
  %542 = add i64 %541, 110
  %543 = load i64, i64* %PC.i854
  %544 = add i64 %543, 6
  %545 = load i64, i64* %PC.i854
  %546 = add i64 %545, 6
  store i64 %546, i64* %PC.i854
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %548 = load i8, i8* %547, align 1
  %549 = icmp ne i8 %548, 0
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %551 = load i8, i8* %550, align 1
  %552 = icmp ne i8 %551, 0
  %553 = xor i1 %549, %552
  %554 = xor i1 %553, true
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %BRANCH_TAKEN, align 1
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %557 = select i1 %553, i64 %544, i64 %542
  store i64 %557, i64* %556, align 8
  store %struct.Memory* %loadMem_410f84, %struct.Memory** %MEMORY
  %loadBr_410f84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410f84 = icmp eq i8 %loadBr_410f84, 1
  br i1 %cmpBr_410f84, label %block_.L_410ff2, label %block_410f8a

block_410f8a:                                     ; preds = %block_.L_410f7b
  %loadMem_410f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 11
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RDI.i852 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 15
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RBP.i853 = bitcast %union.anon* %566 to i64*
  %567 = load i64, i64* %RBP.i853
  %568 = sub i64 %567, 8
  %569 = load i64, i64* %PC.i851
  %570 = add i64 %569, 4
  store i64 %570, i64* %PC.i851
  %571 = inttoptr i64 %568 to i64*
  %572 = load i64, i64* %571
  store i64 %572, i64* %RDI.i852, align 8
  store %struct.Memory* %loadMem_410f8a, %struct.Memory** %MEMORY
  %loadMem_410f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RBP.i850
  %583 = sub i64 %582, 16
  %584 = load i64, i64* %PC.i848
  %585 = add i64 %584, 4
  store i64 %585, i64* %PC.i848
  %586 = inttoptr i64 %583 to i64*
  %587 = load i64, i64* %586
  store i64 %587, i64* %RAX.i849, align 8
  store %struct.Memory* %loadMem_410f8e, %struct.Memory** %MEMORY
  %loadMem_410f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RAX.i847 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RAX.i847
  %595 = add i64 %594, 8
  %596 = load i64, i64* %PC.i846
  %597 = add i64 %596, 4
  store i64 %597, i64* %PC.i846
  %598 = inttoptr i64 %595 to i64*
  %599 = load i64, i64* %598
  store i64 %599, i64* %RAX.i847, align 8
  store %struct.Memory* %loadMem_410f92, %struct.Memory** %MEMORY
  %loadMem_410f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 5
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RCX.i844 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i845 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RBP.i845
  %610 = sub i64 %609, 36
  %611 = load i64, i64* %PC.i843
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC.i843
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = sext i32 %614 to i64
  store i64 %615, i64* %RCX.i844, align 8
  store %struct.Memory* %loadMem_410f96, %struct.Memory** %MEMORY
  %loadMem_410f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 1
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 5
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RCX.i841 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 7
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RDX.i842 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %RAX.i840
  %629 = load i64, i64* %RCX.i841
  %630 = add i64 %629, %628
  %631 = load i64, i64* %PC.i839
  %632 = add i64 %631, 4
  store i64 %632, i64* %PC.i839
  %633 = inttoptr i64 %630 to i8*
  %634 = load i8, i8* %633
  %635 = sext i8 %634 to i64
  %636 = and i64 %635, 4294967295
  store i64 %636, i64* %RDX.i842, align 8
  store %struct.Memory* %loadMem_410f9a, %struct.Memory** %MEMORY
  %loadMem_410f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 11
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RDI.i837 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 15
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RBP.i838
  %647 = sub i64 %646, 64
  %648 = load i64, i64* %RDI.i837
  %649 = load i64, i64* %PC.i836
  %650 = add i64 %649, 4
  store i64 %650, i64* %PC.i836
  %651 = inttoptr i64 %647 to i64*
  store i64 %648, i64* %651
  store %struct.Memory* %loadMem_410f9e, %struct.Memory** %MEMORY
  %loadMem_410fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 7
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %EDX.i834 = bitcast %union.anon* %657 to i32*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 11
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RDI.i835 = bitcast %union.anon* %660 to i64*
  %661 = load i32, i32* %EDX.i834
  %662 = zext i32 %661 to i64
  %663 = load i64, i64* %PC.i833
  %664 = add i64 %663, 2
  store i64 %664, i64* %PC.i833
  %665 = and i64 %662, 4294967295
  store i64 %665, i64* %RDI.i835, align 8
  store %struct.Memory* %loadMem_410fa2, %struct.Memory** %MEMORY
  %loadMem1_410fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %668 to i64*
  %669 = load i64, i64* %PC.i832
  %670 = add i64 %669, -596
  %671 = load i64, i64* %PC.i832
  %672 = add i64 %671, 5
  %673 = load i64, i64* %PC.i832
  %674 = add i64 %673, 5
  store i64 %674, i64* %PC.i832
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %676 = load i64, i64* %675, align 8
  %677 = add i64 %676, -8
  %678 = inttoptr i64 %677 to i64*
  store i64 %672, i64* %678
  store i64 %677, i64* %675, align 8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %670, i64* %679, align 8
  store %struct.Memory* %loadMem1_410fa4, %struct.Memory** %MEMORY
  %loadMem2_410fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410fa4 = load i64, i64* %3
  %call2_410fa4 = call %struct.Memory* @sub_410d50.Statetype(%struct.State* %0, i64 %loadPC_410fa4, %struct.Memory* %loadMem2_410fa4)
  store %struct.Memory* %call2_410fa4, %struct.Memory** %MEMORY
  %loadMem_410fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 9
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RSI.i831 = bitcast %union.anon* %685 to i64*
  %686 = load i64, i64* %PC.i830
  %687 = add i64 %686, 10
  store i64 %687, i64* %PC.i830
  store i64 ptrtoint (%G__0x4561a9_type* @G__0x4561a9 to i64), i64* %RSI.i831, align 8
  store %struct.Memory* %loadMem_410fa9, %struct.Memory** %MEMORY
  %loadMem_410fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 15
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RBP.i829
  %698 = sub i64 %697, 16
  %699 = load i64, i64* %PC.i827
  %700 = add i64 %699, 4
  store i64 %700, i64* %PC.i827
  %701 = inttoptr i64 %698 to i64*
  %702 = load i64, i64* %701
  store i64 %702, i64* %RCX.i828, align 8
  store %struct.Memory* %loadMem_410fb3, %struct.Memory** %MEMORY
  %loadMem_410fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 5
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %RCX.i826
  %710 = add i64 %709, 16
  %711 = load i64, i64* %PC.i825
  %712 = add i64 %711, 4
  store i64 %712, i64* %PC.i825
  %713 = inttoptr i64 %710 to i64*
  %714 = load i64, i64* %713
  store i64 %714, i64* %RCX.i826, align 8
  store %struct.Memory* %loadMem_410fb7, %struct.Memory** %MEMORY
  %loadMem_410fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 17
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %R8.i824 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %RBP.i823
  %725 = sub i64 %724, 36
  %726 = load i64, i64* %PC.i822
  %727 = add i64 %726, 4
  store i64 %727, i64* %PC.i822
  %728 = inttoptr i64 %725 to i32*
  %729 = load i32, i32* %728
  %730 = sext i32 %729 to i64
  store i64 %730, i64* %R8.i824, align 8
  store %struct.Memory* %loadMem_410fbb, %struct.Memory** %MEMORY
  %loadMem_410fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 5
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 17
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %R8.i821 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RCX.i820
  %741 = load i64, i64* %R8.i821
  %742 = mul i64 %741, 4
  %743 = add i64 %742, %740
  %744 = load i64, i64* %PC.i819
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i819
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RCX.i820, align 8
  store %struct.Memory* %loadMem_410fbf, %struct.Memory** %MEMORY
  %loadMem_410fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 15
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 17
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %R8.i818 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %RBP.i817
  %759 = sub i64 %758, 16
  %760 = load i64, i64* %PC.i816
  %761 = add i64 %760, 4
  store i64 %761, i64* %PC.i816
  %762 = inttoptr i64 %759 to i64*
  %763 = load i64, i64* %762
  store i64 %763, i64* %R8.i818, align 8
  store %struct.Memory* %loadMem_410fc3, %struct.Memory** %MEMORY
  %loadMem_410fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 17
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %R8.i815 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %R8.i815
  %771 = add i64 %770, 24
  %772 = load i64, i64* %PC.i814
  %773 = add i64 %772, 4
  store i64 %773, i64* %PC.i814
  %774 = inttoptr i64 %771 to i64*
  %775 = load i64, i64* %774
  store i64 %775, i64* %R8.i815, align 8
  store %struct.Memory* %loadMem_410fc7, %struct.Memory** %MEMORY
  %loadMem_410fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 15
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 19
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %R9.i813 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %RBP.i812
  %786 = sub i64 %785, 36
  %787 = load i64, i64* %PC.i811
  %788 = add i64 %787, 4
  store i64 %788, i64* %PC.i811
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = sext i32 %790 to i64
  store i64 %791, i64* %R9.i813, align 8
  store %struct.Memory* %loadMem_410fcb, %struct.Memory** %MEMORY
  %loadMem_410fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 17
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %R8D.i808 = bitcast %union.anon* %797 to i32*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 17
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %R8.i809 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 19
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %R9.i810 = bitcast %union.anon* %803 to i64*
  %804 = bitcast i32* %R8D.i808 to i64*
  %805 = load i64, i64* %R8.i809
  %806 = load i64, i64* %R9.i810
  %807 = mul i64 %806, 4
  %808 = add i64 %807, %805
  %809 = load i64, i64* %PC.i807
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC.i807
  %811 = inttoptr i64 %808 to i32*
  %812 = load i32, i32* %811
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %804, align 8
  store %struct.Memory* %loadMem_410fcf, %struct.Memory** %MEMORY
  %loadMem_410fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 11
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RDI.i805 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 15
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %RBP.i806
  %824 = sub i64 %823, 64
  %825 = load i64, i64* %PC.i804
  %826 = add i64 %825, 4
  store i64 %826, i64* %PC.i804
  %827 = inttoptr i64 %824 to i64*
  %828 = load i64, i64* %827
  store i64 %828, i64* %RDI.i805, align 8
  store %struct.Memory* %loadMem_410fd3, %struct.Memory** %MEMORY
  %loadMem_410fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 33
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 1
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 7
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RDX.i803 = bitcast %union.anon* %837 to i64*
  %838 = load i64, i64* %RAX.i802
  %839 = load i64, i64* %PC.i801
  %840 = add i64 %839, 3
  store i64 %840, i64* %PC.i801
  store i64 %838, i64* %RDX.i803, align 8
  store %struct.Memory* %loadMem_410fd7, %struct.Memory** %MEMORY
  %loadMem_410fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %847 = bitcast %union.anon* %846 to %struct.anon.2*
  %AL.i800 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %847, i32 0, i32 0
  %848 = load i64, i64* %PC.i799
  %849 = add i64 %848, 2
  store i64 %849, i64* %PC.i799
  store i8 0, i8* %AL.i800, align 1
  store %struct.Memory* %loadMem_410fda, %struct.Memory** %MEMORY
  %loadMem1_410fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %PC.i798
  %854 = add i64 %853, -64108
  %855 = load i64, i64* %PC.i798
  %856 = add i64 %855, 5
  %857 = load i64, i64* %PC.i798
  %858 = add i64 %857, 5
  store i64 %858, i64* %PC.i798
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %860 = load i64, i64* %859, align 8
  %861 = add i64 %860, -8
  %862 = inttoptr i64 %861 to i64*
  store i64 %856, i64* %862
  store i64 %861, i64* %859, align 8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %854, i64* %863, align 8
  store %struct.Memory* %loadMem1_410fdc, %struct.Memory** %MEMORY
  %loadMem2_410fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410fdc = load i64, i64* %3
  %864 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_410fdc)
  store %struct.Memory* %864, %struct.Memory** %MEMORY
  %loadMem_410fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 1
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %EAX.i794 = bitcast %union.anon* %870 to i32*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 15
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %873 to i64*
  %874 = load i64, i64* %RBP.i795
  %875 = sub i64 %874, 68
  %876 = load i32, i32* %EAX.i794
  %877 = zext i32 %876 to i64
  %878 = load i64, i64* %PC.i793
  %879 = add i64 %878, 3
  store i64 %879, i64* %PC.i793
  %880 = inttoptr i64 %875 to i32*
  store i32 %876, i32* %880
  store %struct.Memory* %loadMem_410fe1, %struct.Memory** %MEMORY
  %loadMem_410fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 1
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RBP.i792
  %891 = sub i64 %890, 36
  %892 = load i64, i64* %PC.i790
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC.i790
  %894 = inttoptr i64 %891 to i32*
  %895 = load i32, i32* %894
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RAX.i791, align 8
  store %struct.Memory* %loadMem_410fe4, %struct.Memory** %MEMORY
  %loadMem_410fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 1
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RAX.i789
  %904 = load i64, i64* %PC.i788
  %905 = add i64 %904, 3
  store i64 %905, i64* %PC.i788
  %906 = trunc i64 %903 to i32
  %907 = add i32 1, %906
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RAX.i789, align 8
  %909 = icmp ult i32 %907, %906
  %910 = icmp ult i32 %907, 1
  %911 = or i1 %909, %910
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %912, i8* %913, align 1
  %914 = and i32 %907, 255
  %915 = call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %918, i8* %919, align 1
  %920 = xor i64 1, %903
  %921 = trunc i64 %920 to i32
  %922 = xor i32 %921, %907
  %923 = lshr i32 %922, 4
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %925, i8* %926, align 1
  %927 = icmp eq i32 %907, 0
  %928 = zext i1 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %928, i8* %929, align 1
  %930 = lshr i32 %907, 31
  %931 = trunc i32 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %931, i8* %932, align 1
  %933 = lshr i32 %906, 31
  %934 = xor i32 %930, %933
  %935 = add i32 %934, %930
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %937, i8* %938, align 1
  store %struct.Memory* %loadMem_410fe7, %struct.Memory** %MEMORY
  %loadMem_410fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 1
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %EAX.i786 = bitcast %union.anon* %944 to i32*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i787
  %949 = sub i64 %948, 36
  %950 = load i32, i32* %EAX.i786
  %951 = zext i32 %950 to i64
  %952 = load i64, i64* %PC.i785
  %953 = add i64 %952, 3
  store i64 %953, i64* %PC.i785
  %954 = inttoptr i64 %949 to i32*
  store i32 %950, i32* %954
  store %struct.Memory* %loadMem_410fea, %struct.Memory** %MEMORY
  %loadMem_410fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %PC.i784
  %959 = add i64 %958, -114
  %960 = load i64, i64* %PC.i784
  %961 = add i64 %960, 5
  store i64 %961, i64* %PC.i784
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %959, i64* %962, align 8
  store %struct.Memory* %loadMem_410fed, %struct.Memory** %MEMORY
  br label %block_.L_410f7b

block_.L_410ff2:                                  ; preds = %block_.L_410f7b
  %loadMem_410ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %965 to i64*
  %966 = load i64, i64* %PC.i783
  %967 = add i64 %966, 1287
  %968 = load i64, i64* %PC.i783
  %969 = add i64 %968, 5
  store i64 %969, i64* %PC.i783
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %967, i64* %970, align 8
  store %struct.Memory* %loadMem_410ff2, %struct.Memory** %MEMORY
  br label %block_.L_4114f9

block_.L_410ff7:                                  ; preds = %block_.L_410f33
  %loadMem_410ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 1
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RBP.i782
  %981 = sub i64 %980, 24
  %982 = load i64, i64* %PC.i780
  %983 = add i64 %982, 4
  store i64 %983, i64* %PC.i780
  %984 = inttoptr i64 %981 to i64*
  %985 = load i64, i64* %984
  store i64 %985, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_410ff7, %struct.Memory** %MEMORY
  %loadMem_410ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RAX.i778 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 5
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RCX.i779 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %RAX.i778
  %996 = add i64 %995, 456
  %997 = load i64, i64* %PC.i777
  %998 = add i64 %997, 6
  store i64 %998, i64* %PC.i777
  %999 = inttoptr i64 %996 to i32*
  %1000 = load i32, i32* %999
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RCX.i779, align 8
  store %struct.Memory* %loadMem_410ffb, %struct.Memory** %MEMORY
  %loadMem_411001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 5
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %RCX.i776
  %1009 = load i64, i64* %PC.i775
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC.i775
  %1011 = and i64 1, %1008
  %1012 = trunc i64 %1011 to i32
  store i64 %1011, i64* %RCX.i776, align 8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1013, align 1
  %1014 = and i32 %1012, 255
  %1015 = call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1018, i8* %1019, align 1
  %1020 = icmp eq i32 %1012, 0
  %1021 = zext i1 %1020 to i8
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1021, i8* %1022, align 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1023, align 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1024, align 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1025, align 1
  store %struct.Memory* %loadMem_411001, %struct.Memory** %MEMORY
  %loadMem_411004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 5
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %ECX.i774 = bitcast %union.anon* %1031 to i32*
  %1032 = load i32, i32* %ECX.i774
  %1033 = zext i32 %1032 to i64
  %1034 = load i64, i64* %PC.i773
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC.i773
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1036, align 1
  %1037 = and i32 %1032, 255
  %1038 = call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1041, i8* %1042, align 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1043, align 1
  %1044 = icmp eq i32 %1032, 0
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1045, i8* %1046, align 1
  %1047 = lshr i32 %1032, 31
  %1048 = trunc i32 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1048, i8* %1049, align 1
  %1050 = lshr i32 %1032, 31
  %1051 = xor i32 %1047, %1050
  %1052 = add i32 %1051, %1050
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1054, i8* %1055, align 1
  store %struct.Memory* %loadMem_411004, %struct.Memory** %MEMORY
  %loadMem_411007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %PC.i772
  %1060 = add i64 %1059, 23
  %1061 = load i64, i64* %PC.i772
  %1062 = add i64 %1061, 6
  %1063 = load i64, i64* %PC.i772
  %1064 = add i64 %1063, 6
  store i64 %1064, i64* %PC.i772
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1066 = load i8, i8* %1065, align 1
  %1067 = icmp eq i8 %1066, 0
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %BRANCH_TAKEN, align 1
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1070 = select i1 %1067, i64 %1060, i64 %1062
  store i64 %1070, i64* %1069, align 8
  store %struct.Memory* %loadMem_411007, %struct.Memory** %MEMORY
  %loadBr_411007 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411007 = icmp eq i8 %loadBr_411007, 1
  br i1 %cmpBr_411007, label %block_.L_41101e, label %block_41100d

block_41100d:                                     ; preds = %block_.L_410ff7
  %loadMem_41100d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 11
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RDI.i771 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %PC.i770
  %1078 = add i64 %1077, 10
  store i64 %1078, i64* %PC.i770
  store i64 ptrtoint (%G__0x4561b7_type* @G__0x4561b7 to i64), i64* %RDI.i771, align 8
  store %struct.Memory* %loadMem_41100d, %struct.Memory** %MEMORY
  %loadMem_411017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 1
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %1085 = bitcast %union.anon* %1084 to %struct.anon.2*
  %AL.i769 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1085, i32 0, i32 0
  %1086 = load i64, i64* %PC.i768
  %1087 = add i64 %1086, 2
  store i64 %1087, i64* %PC.i768
  store i8 0, i8* %AL.i769, align 1
  store %struct.Memory* %loadMem_411017, %struct.Memory** %MEMORY
  %loadMem1_411019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1090 to i64*
  %1091 = load i64, i64* %PC.i767
  %1092 = add i64 %1091, 186871
  %1093 = load i64, i64* %PC.i767
  %1094 = add i64 %1093, 5
  %1095 = load i64, i64* %PC.i767
  %1096 = add i64 %1095, 5
  store i64 %1096, i64* %PC.i767
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1098 = load i64, i64* %1097, align 8
  %1099 = add i64 %1098, -8
  %1100 = inttoptr i64 %1099 to i64*
  store i64 %1094, i64* %1100
  store i64 %1099, i64* %1097, align 8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1092, i64* %1101, align 8
  store %struct.Memory* %loadMem1_411019, %struct.Memory** %MEMORY
  %loadMem2_411019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411019 = load i64, i64* %3
  %call2_411019 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64 %loadPC_411019, %struct.Memory* %loadMem2_411019)
  store %struct.Memory* %call2_411019, %struct.Memory** %MEMORY
  br label %block_.L_41101e

block_.L_41101e:                                  ; preds = %block_41100d, %block_.L_410ff7
  %loadMem_41101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 9
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RSI.i766 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %PC.i765
  %1109 = add i64 %1108, 10
  store i64 %1109, i64* %PC.i765
  store i64 ptrtoint (%G__0x4561f1_type* @G__0x4561f1 to i64), i64* %RSI.i766, align 8
  store %struct.Memory* %loadMem_41101e, %struct.Memory** %MEMORY
  %loadMem_411028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 15
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %1115 to i64*
  %1116 = load i64, i64* %RBP.i764
  %1117 = sub i64 %1116, 44
  %1118 = load i64, i64* %PC.i763
  %1119 = add i64 %1118, 7
  store i64 %1119, i64* %PC.i763
  %1120 = inttoptr i64 %1117 to i32*
  store i32 0, i32* %1120
  store %struct.Memory* %loadMem_411028, %struct.Memory** %MEMORY
  %loadMem_41102f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 33
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1123 to i64*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 11
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RDI.i761 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 15
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RBP.i762
  %1131 = sub i64 %1130, 8
  %1132 = load i64, i64* %PC.i760
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i760
  %1134 = inttoptr i64 %1131 to i64*
  %1135 = load i64, i64* %1134
  store i64 %1135, i64* %RDI.i761, align 8
  store %struct.Memory* %loadMem_41102f, %struct.Memory** %MEMORY
  %loadMem_411033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 15
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %RBP.i759
  %1146 = sub i64 %1145, 16
  %1147 = load i64, i64* %PC.i757
  %1148 = add i64 %1147, 4
  store i64 %1148, i64* %PC.i757
  %1149 = inttoptr i64 %1146 to i64*
  %1150 = load i64, i64* %1149
  store i64 %1150, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_411033, %struct.Memory** %MEMORY
  %loadMem_411037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 1
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 7
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RDX.i756 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %RAX.i755
  %1161 = load i64, i64* %PC.i754
  %1162 = add i64 %1161, 2
  store i64 %1162, i64* %PC.i754
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RDX.i756, align 8
  store %struct.Memory* %loadMem_411037, %struct.Memory** %MEMORY
  %loadMem_411039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %1172 = bitcast %union.anon* %1171 to %struct.anon.2*
  %AL.i753 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1172, i32 0, i32 0
  %1173 = load i64, i64* %PC.i752
  %1174 = add i64 %1173, 2
  store i64 %1174, i64* %PC.i752
  store i8 0, i8* %AL.i753, align 1
  store %struct.Memory* %loadMem_411039, %struct.Memory** %MEMORY
  %loadMem1_41103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %PC.i751
  %1179 = add i64 %1178, -64203
  %1180 = load i64, i64* %PC.i751
  %1181 = add i64 %1180, 5
  %1182 = load i64, i64* %PC.i751
  %1183 = add i64 %1182, 5
  store i64 %1183, i64* %PC.i751
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1185 = load i64, i64* %1184, align 8
  %1186 = add i64 %1185, -8
  %1187 = inttoptr i64 %1186 to i64*
  store i64 %1181, i64* %1187
  store i64 %1186, i64* %1184, align 8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1179, i64* %1188, align 8
  store %struct.Memory* %loadMem1_41103b, %struct.Memory** %MEMORY
  %loadMem2_41103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41103b = load i64, i64* %3
  %1189 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41103b)
  store %struct.Memory* %1189, %struct.Memory** %MEMORY
  %loadMem_411040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 9
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RSI.i747 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %PC.i746
  %1197 = add i64 %1196, 10
  store i64 %1197, i64* %PC.i746
  store i64 ptrtoint (%G__0x456227_type* @G__0x456227 to i64), i64* %RSI.i747, align 8
  store %struct.Memory* %loadMem_411040, %struct.Memory** %MEMORY
  %loadMem_41104a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 11
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RDI.i744 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 15
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %1206 to i64*
  %1207 = load i64, i64* %RBP.i745
  %1208 = sub i64 %1207, 8
  %1209 = load i64, i64* %PC.i743
  %1210 = add i64 %1209, 4
  store i64 %1210, i64* %PC.i743
  %1211 = inttoptr i64 %1208 to i64*
  %1212 = load i64, i64* %1211
  store i64 %1212, i64* %RDI.i744, align 8
  store %struct.Memory* %loadMem_41104a, %struct.Memory** %MEMORY
  %loadMem_41104e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 33
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 1
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %EAX.i741 = bitcast %union.anon* %1218 to i32*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 15
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %1221 to i64*
  %1222 = load i64, i64* %RBP.i742
  %1223 = sub i64 %1222, 72
  %1224 = load i32, i32* %EAX.i741
  %1225 = zext i32 %1224 to i64
  %1226 = load i64, i64* %PC.i740
  %1227 = add i64 %1226, 3
  store i64 %1227, i64* %PC.i740
  %1228 = inttoptr i64 %1223 to i32*
  store i32 %1224, i32* %1228
  store %struct.Memory* %loadMem_41104e, %struct.Memory** %MEMORY
  %loadMem_411051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 33
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 1
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %1235 = bitcast %union.anon* %1234 to %struct.anon.2*
  %AL.i739 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1235, i32 0, i32 0
  %1236 = load i64, i64* %PC.i738
  %1237 = add i64 %1236, 2
  store i64 %1237, i64* %PC.i738
  store i8 0, i8* %AL.i739, align 1
  store %struct.Memory* %loadMem_411051, %struct.Memory** %MEMORY
  %loadMem1_411053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %PC.i737
  %1242 = add i64 %1241, -64227
  %1243 = load i64, i64* %PC.i737
  %1244 = add i64 %1243, 5
  %1245 = load i64, i64* %PC.i737
  %1246 = add i64 %1245, 5
  store i64 %1246, i64* %PC.i737
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1248 = load i64, i64* %1247, align 8
  %1249 = add i64 %1248, -8
  %1250 = inttoptr i64 %1249 to i64*
  store i64 %1244, i64* %1250
  store i64 %1249, i64* %1247, align 8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1242, i64* %1251, align 8
  store %struct.Memory* %loadMem1_411053, %struct.Memory** %MEMORY
  %loadMem2_411053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411053 = load i64, i64* %3
  %1252 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_411053)
  store %struct.Memory* %1252, %struct.Memory** %MEMORY
  %loadMem_411058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 33
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 15
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %1258 to i64*
  %1259 = load i64, i64* %RBP.i734
  %1260 = sub i64 %1259, 36
  %1261 = load i64, i64* %PC.i733
  %1262 = add i64 %1261, 7
  store i64 %1262, i64* %PC.i733
  %1263 = inttoptr i64 %1260 to i32*
  store i32 0, i32* %1263
  store %struct.Memory* %loadMem_411058, %struct.Memory** %MEMORY
  %loadMem_41105f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 1
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %EAX.i731 = bitcast %union.anon* %1269 to i32*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 15
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %RBP.i732
  %1274 = sub i64 %1273, 76
  %1275 = load i32, i32* %EAX.i731
  %1276 = zext i32 %1275 to i64
  %1277 = load i64, i64* %PC.i730
  %1278 = add i64 %1277, 3
  store i64 %1278, i64* %PC.i730
  %1279 = inttoptr i64 %1274 to i32*
  store i32 %1275, i32* %1279
  store %struct.Memory* %loadMem_41105f, %struct.Memory** %MEMORY
  br label %block_.L_411062

block_.L_411062:                                  ; preds = %block_.L_411499, %block_.L_41101e
  %loadMem_411062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 15
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %RBP.i729
  %1290 = sub i64 %1289, 36
  %1291 = load i64, i64* %PC.i727
  %1292 = add i64 %1291, 3
  store i64 %1292, i64* %PC.i727
  %1293 = inttoptr i64 %1290 to i32*
  %1294 = load i32, i32* %1293
  %1295 = zext i32 %1294 to i64
  store i64 %1295, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_411062, %struct.Memory** %MEMORY
  %loadMem_411065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 5
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RBP.i726
  %1306 = sub i64 %1305, 16
  %1307 = load i64, i64* %PC.i724
  %1308 = add i64 %1307, 4
  store i64 %1308, i64* %PC.i724
  %1309 = inttoptr i64 %1306 to i64*
  %1310 = load i64, i64* %1309
  store i64 %1310, i64* %RCX.i725, align 8
  store %struct.Memory* %loadMem_411065, %struct.Memory** %MEMORY
  %loadMem_411069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 1
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %EAX.i722 = bitcast %union.anon* %1316 to i32*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 5
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RCX.i723 = bitcast %union.anon* %1319 to i64*
  %1320 = load i32, i32* %EAX.i722
  %1321 = zext i32 %1320 to i64
  %1322 = load i64, i64* %RCX.i723
  %1323 = load i64, i64* %PC.i721
  %1324 = add i64 %1323, 2
  store i64 %1324, i64* %PC.i721
  %1325 = inttoptr i64 %1322 to i32*
  %1326 = load i32, i32* %1325
  %1327 = sub i32 %1320, %1326
  %1328 = icmp ult i32 %1320, %1326
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1329, i8* %1330, align 1
  %1331 = and i32 %1327, 255
  %1332 = call i32 @llvm.ctpop.i32(i32 %1331)
  %1333 = trunc i32 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = xor i8 %1334, 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1335, i8* %1336, align 1
  %1337 = xor i32 %1326, %1320
  %1338 = xor i32 %1337, %1327
  %1339 = lshr i32 %1338, 4
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1341, i8* %1342, align 1
  %1343 = icmp eq i32 %1327, 0
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1344, i8* %1345, align 1
  %1346 = lshr i32 %1327, 31
  %1347 = trunc i32 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1347, i8* %1348, align 1
  %1349 = lshr i32 %1320, 31
  %1350 = lshr i32 %1326, 31
  %1351 = xor i32 %1350, %1349
  %1352 = xor i32 %1346, %1349
  %1353 = add i32 %1352, %1351
  %1354 = icmp eq i32 %1353, 2
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1355, i8* %1356, align 1
  store %struct.Memory* %loadMem_411069, %struct.Memory** %MEMORY
  %loadMem_41106b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1359 to i64*
  %1360 = load i64, i64* %PC.i720
  %1361 = add i64 %1360, 1109
  %1362 = load i64, i64* %PC.i720
  %1363 = add i64 %1362, 6
  %1364 = load i64, i64* %PC.i720
  %1365 = add i64 %1364, 6
  store i64 %1365, i64* %PC.i720
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1367 = load i8, i8* %1366, align 1
  %1368 = icmp ne i8 %1367, 0
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1370 = load i8, i8* %1369, align 1
  %1371 = icmp ne i8 %1370, 0
  %1372 = xor i1 %1368, %1371
  %1373 = xor i1 %1372, true
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %BRANCH_TAKEN, align 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1376 = select i1 %1372, i64 %1363, i64 %1361
  store i64 %1376, i64* %1375, align 8
  store %struct.Memory* %loadMem_41106b, %struct.Memory** %MEMORY
  %loadBr_41106b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41106b = icmp eq i8 %loadBr_41106b, 1
  br i1 %cmpBr_41106b, label %block_.L_4114c0, label %block_411071

block_411071:                                     ; preds = %block_.L_411062
  %loadMem_411071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 15
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RBP.i719 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RBP.i719
  %1384 = sub i64 %1383, 32
  %1385 = load i64, i64* %PC.i718
  %1386 = add i64 %1385, 5
  store i64 %1386, i64* %PC.i718
  %1387 = inttoptr i64 %1384 to i64*
  %1388 = load i64, i64* %1387
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1389, align 1
  %1390 = trunc i64 %1388 to i32
  %1391 = and i32 %1390, 255
  %1392 = call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1395, i8* %1396, align 1
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1397, align 1
  %1398 = icmp eq i64 %1388, 0
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1399, i8* %1400, align 1
  %1401 = lshr i64 %1388, 63
  %1402 = trunc i64 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1402, i8* %1403, align 1
  %1404 = lshr i64 %1388, 63
  %1405 = xor i64 %1401, %1404
  %1406 = add i64 %1405, %1404
  %1407 = icmp eq i64 %1406, 2
  %1408 = zext i1 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1408, i8* %1409, align 1
  store %struct.Memory* %loadMem_411071, %struct.Memory** %MEMORY
  %loadMem_411076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1412 to i64*
  %1413 = load i64, i64* %PC.i717
  %1414 = add i64 %1413, 33
  %1415 = load i64, i64* %PC.i717
  %1416 = add i64 %1415, 6
  %1417 = load i64, i64* %PC.i717
  %1418 = add i64 %1417, 6
  store i64 %1418, i64* %PC.i717
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1420 = load i8, i8* %1419, align 1
  store i8 %1420, i8* %BRANCH_TAKEN, align 1
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1422 = icmp ne i8 %1420, 0
  %1423 = select i1 %1422, i64 %1414, i64 %1416
  store i64 %1423, i64* %1421, align 8
  store %struct.Memory* %loadMem_411076, %struct.Memory** %MEMORY
  %loadBr_411076 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411076 = icmp eq i8 %loadBr_411076, 1
  br i1 %cmpBr_411076, label %block_.L_411097, label %block_41107c

block_41107c:                                     ; preds = %block_411071
  %loadMem_41107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 33
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1426 to i64*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 1
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 15
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RBP.i716
  %1434 = sub i64 %1433, 32
  %1435 = load i64, i64* %PC.i714
  %1436 = add i64 %1435, 4
  store i64 %1436, i64* %PC.i714
  %1437 = inttoptr i64 %1434 to i64*
  %1438 = load i64, i64* %1437
  store i64 %1438, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_41107c, %struct.Memory** %MEMORY
  %loadMem_411080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 5
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 15
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %1447 to i64*
  %1448 = load i64, i64* %RBP.i713
  %1449 = sub i64 %1448, 16
  %1450 = load i64, i64* %PC.i711
  %1451 = add i64 %1450, 4
  store i64 %1451, i64* %PC.i711
  %1452 = inttoptr i64 %1449 to i64*
  %1453 = load i64, i64* %1452
  store i64 %1453, i64* %RCX.i712, align 8
  store %struct.Memory* %loadMem_411080, %struct.Memory** %MEMORY
  %loadMem_411084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 5
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %1459 to i64*
  %1460 = load i64, i64* %RCX.i710
  %1461 = add i64 %1460, 24
  %1462 = load i64, i64* %PC.i709
  %1463 = add i64 %1462, 4
  store i64 %1463, i64* %PC.i709
  %1464 = inttoptr i64 %1461 to i64*
  %1465 = load i64, i64* %1464
  store i64 %1465, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_411084, %struct.Memory** %MEMORY
  %loadMem_411088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 7
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 15
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %RBP.i708
  %1476 = sub i64 %1475, 36
  %1477 = load i64, i64* %PC.i706
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC.i706
  %1479 = inttoptr i64 %1476 to i32*
  %1480 = load i32, i32* %1479
  %1481 = sext i32 %1480 to i64
  store i64 %1481, i64* %RDX.i707, align 8
  store %struct.Memory* %loadMem_411088, %struct.Memory** %MEMORY
  %loadMem_41108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 5
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 7
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %RDX.i705 = bitcast %union.anon* %1490 to i64*
  %1491 = load i64, i64* %RCX.i704
  %1492 = load i64, i64* %RDX.i705
  %1493 = mul i64 %1492, 4
  %1494 = add i64 %1493, %1491
  %1495 = load i64, i64* %PC.i703
  %1496 = add i64 %1495, 4
  store i64 %1496, i64* %PC.i703
  %1497 = inttoptr i64 %1494 to i32*
  %1498 = load i32, i32* %1497
  %1499 = sext i32 %1498 to i64
  store i64 %1499, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_41108c, %struct.Memory** %MEMORY
  %loadMem_411090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 1
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RAX.i700 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 5
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RCX.i701 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 9
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RSI.i702 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RAX.i700
  %1513 = load i64, i64* %RCX.i701
  %1514 = add i64 %1513, %1512
  %1515 = load i64, i64* %PC.i699
  %1516 = add i64 %1515, 4
  store i64 %1516, i64* %PC.i699
  %1517 = inttoptr i64 %1514 to i8*
  %1518 = load i8, i8* %1517
  %1519 = sext i8 %1518 to i64
  %1520 = and i64 %1519, 4294967295
  store i64 %1520, i64* %RSI.i702, align 8
  store %struct.Memory* %loadMem_411090, %struct.Memory** %MEMORY
  %loadMem_411094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 9
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %ESI.i697 = bitcast %union.anon* %1526 to i32*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 15
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %1529 to i64*
  %1530 = load i64, i64* %RBP.i698
  %1531 = sub i64 %1530, 40
  %1532 = load i32, i32* %ESI.i697
  %1533 = zext i32 %1532 to i64
  %1534 = load i64, i64* %PC.i696
  %1535 = add i64 %1534, 3
  store i64 %1535, i64* %PC.i696
  %1536 = inttoptr i64 %1531 to i32*
  store i32 %1532, i32* %1536
  store %struct.Memory* %loadMem_411094, %struct.Memory** %MEMORY
  br label %block_.L_411097

block_.L_411097:                                  ; preds = %block_41107c, %block_411071
  %loadMem_411097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 11
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RDI.i694 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 15
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %1545 to i64*
  %1546 = load i64, i64* %RBP.i695
  %1547 = sub i64 %1546, 8
  %1548 = load i64, i64* %PC.i693
  %1549 = add i64 %1548, 4
  store i64 %1549, i64* %PC.i693
  %1550 = inttoptr i64 %1547 to i64*
  %1551 = load i64, i64* %1550
  store i64 %1551, i64* %RDI.i694, align 8
  store %struct.Memory* %loadMem_411097, %struct.Memory** %MEMORY
  %loadMem_41109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 1
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 15
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RBP.i692
  %1562 = sub i64 %1561, 16
  %1563 = load i64, i64* %PC.i690
  %1564 = add i64 %1563, 4
  store i64 %1564, i64* %PC.i690
  %1565 = inttoptr i64 %1562 to i64*
  %1566 = load i64, i64* %1565
  store i64 %1566, i64* %RAX.i691, align 8
  store %struct.Memory* %loadMem_41109b, %struct.Memory** %MEMORY
  %loadMem_41109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 1
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RAX.i689
  %1574 = add i64 %1573, 8
  %1575 = load i64, i64* %PC.i688
  %1576 = add i64 %1575, 4
  store i64 %1576, i64* %PC.i688
  %1577 = inttoptr i64 %1574 to i64*
  %1578 = load i64, i64* %1577
  store i64 %1578, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_41109f, %struct.Memory** %MEMORY
  %loadMem_4110a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 5
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %RCX.i686 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RBP.i687
  %1589 = sub i64 %1588, 36
  %1590 = load i64, i64* %PC.i685
  %1591 = add i64 %1590, 4
  store i64 %1591, i64* %PC.i685
  %1592 = inttoptr i64 %1589 to i32*
  %1593 = load i32, i32* %1592
  %1594 = sext i32 %1593 to i64
  store i64 %1594, i64* %RCX.i686, align 8
  store %struct.Memory* %loadMem_4110a3, %struct.Memory** %MEMORY
  %loadMem_4110a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 1
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 5
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 7
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %RDX.i684 = bitcast %union.anon* %1606 to i64*
  %1607 = load i64, i64* %RAX.i682
  %1608 = load i64, i64* %RCX.i683
  %1609 = add i64 %1608, %1607
  %1610 = load i64, i64* %PC.i681
  %1611 = add i64 %1610, 4
  store i64 %1611, i64* %PC.i681
  %1612 = inttoptr i64 %1609 to i8*
  %1613 = load i8, i8* %1612
  %1614 = sext i8 %1613 to i64
  %1615 = and i64 %1614, 4294967295
  store i64 %1615, i64* %RDX.i684, align 8
  store %struct.Memory* %loadMem_4110a7, %struct.Memory** %MEMORY
  %loadMem_4110ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 11
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RDI.i679 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 15
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %RBP.i680
  %1626 = sub i64 %1625, 88
  %1627 = load i64, i64* %RDI.i679
  %1628 = load i64, i64* %PC.i678
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC.i678
  %1630 = inttoptr i64 %1626 to i64*
  store i64 %1627, i64* %1630
  store %struct.Memory* %loadMem_4110ab, %struct.Memory** %MEMORY
  %loadMem_4110af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 7
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %EDX.i676 = bitcast %union.anon* %1636 to i32*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 11
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RDI.i677 = bitcast %union.anon* %1639 to i64*
  %1640 = load i32, i32* %EDX.i676
  %1641 = zext i32 %1640 to i64
  %1642 = load i64, i64* %PC.i675
  %1643 = add i64 %1642, 2
  store i64 %1643, i64* %PC.i675
  %1644 = and i64 %1641, 4294967295
  store i64 %1644, i64* %RDI.i677, align 8
  store %struct.Memory* %loadMem_4110af, %struct.Memory** %MEMORY
  %loadMem1_4110b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %PC.i674
  %1649 = add i64 %1648, -865
  %1650 = load i64, i64* %PC.i674
  %1651 = add i64 %1650, 5
  %1652 = load i64, i64* %PC.i674
  %1653 = add i64 %1652, 5
  store i64 %1653, i64* %PC.i674
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1655 = load i64, i64* %1654, align 8
  %1656 = add i64 %1655, -8
  %1657 = inttoptr i64 %1656 to i64*
  store i64 %1651, i64* %1657
  store i64 %1656, i64* %1654, align 8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1649, i64* %1658, align 8
  store %struct.Memory* %loadMem1_4110b1, %struct.Memory** %MEMORY
  %loadMem2_4110b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4110b1 = load i64, i64* %3
  %call2_4110b1 = call %struct.Memory* @sub_410d50.Statetype(%struct.State* %0, i64 %loadPC_4110b1, %struct.Memory* %loadMem2_4110b1)
  store %struct.Memory* %call2_4110b1, %struct.Memory** %MEMORY
  %loadMem_4110b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 5
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 15
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %RBP.i673
  %1669 = sub i64 %1668, 16
  %1670 = load i64, i64* %PC.i671
  %1671 = add i64 %1670, 4
  store i64 %1671, i64* %PC.i671
  %1672 = inttoptr i64 %1669 to i64*
  %1673 = load i64, i64* %1672
  store i64 %1673, i64* %RCX.i672, align 8
  store %struct.Memory* %loadMem_4110b6, %struct.Memory** %MEMORY
  %loadMem_4110ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 5
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %1679 to i64*
  %1680 = load i64, i64* %RCX.i670
  %1681 = add i64 %1680, 16
  %1682 = load i64, i64* %PC.i669
  %1683 = add i64 %1682, 4
  store i64 %1683, i64* %PC.i669
  %1684 = inttoptr i64 %1681 to i64*
  %1685 = load i64, i64* %1684
  store i64 %1685, i64* %RCX.i670, align 8
  store %struct.Memory* %loadMem_4110ba, %struct.Memory** %MEMORY
  %loadMem_4110be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1688 to i64*
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 9
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %RSI.i667 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 15
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %RBP.i668
  %1696 = sub i64 %1695, 36
  %1697 = load i64, i64* %PC.i666
  %1698 = add i64 %1697, 4
  store i64 %1698, i64* %PC.i666
  %1699 = inttoptr i64 %1696 to i32*
  %1700 = load i32, i32* %1699
  %1701 = sext i32 %1700 to i64
  store i64 %1701, i64* %RSI.i667, align 8
  store %struct.Memory* %loadMem_4110be, %struct.Memory** %MEMORY
  %loadMem_4110c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 5
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 9
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RSI.i665 = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %RCX.i664
  %1712 = load i64, i64* %RSI.i665
  %1713 = mul i64 %1712, 4
  %1714 = add i64 %1713, %1711
  %1715 = load i64, i64* %PC.i663
  %1716 = add i64 %1715, 3
  store i64 %1716, i64* %PC.i663
  %1717 = inttoptr i64 %1714 to i32*
  %1718 = load i32, i32* %1717
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RCX.i664, align 8
  store %struct.Memory* %loadMem_4110c2, %struct.Memory** %MEMORY
  %loadMem_4110c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 9
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RSI.i661 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 15
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %RBP.i662
  %1730 = sub i64 %1729, 16
  %1731 = load i64, i64* %PC.i660
  %1732 = add i64 %1731, 4
  store i64 %1732, i64* %PC.i660
  %1733 = inttoptr i64 %1730 to i64*
  %1734 = load i64, i64* %1733
  store i64 %1734, i64* %RSI.i661, align 8
  store %struct.Memory* %loadMem_4110c5, %struct.Memory** %MEMORY
  %loadMem_4110c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 9
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RSI.i659 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RSI.i659
  %1742 = add i64 %1741, 24
  %1743 = load i64, i64* %PC.i658
  %1744 = add i64 %1743, 4
  store i64 %1744, i64* %PC.i658
  %1745 = inttoptr i64 %1742 to i64*
  %1746 = load i64, i64* %1745
  store i64 %1746, i64* %RSI.i659, align 8
  store %struct.Memory* %loadMem_4110c9, %struct.Memory** %MEMORY
  %loadMem_4110cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 15
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 17
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %R8.i657 = bitcast %union.anon* %1755 to i64*
  %1756 = load i64, i64* %RBP.i656
  %1757 = sub i64 %1756, 36
  %1758 = load i64, i64* %PC.i655
  %1759 = add i64 %1758, 4
  store i64 %1759, i64* %PC.i655
  %1760 = inttoptr i64 %1757 to i32*
  %1761 = load i32, i32* %1760
  %1762 = sext i32 %1761 to i64
  store i64 %1762, i64* %R8.i657, align 8
  store %struct.Memory* %loadMem_4110cd, %struct.Memory** %MEMORY
  %loadMem_4110d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 17
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %R8D.i652 = bitcast %union.anon* %1768 to i32*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 9
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RSI.i653 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 17
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %R8.i654 = bitcast %union.anon* %1774 to i64*
  %1775 = bitcast i32* %R8D.i652 to i64*
  %1776 = load i64, i64* %RSI.i653
  %1777 = load i64, i64* %R8.i654
  %1778 = mul i64 %1777, 4
  %1779 = add i64 %1778, %1776
  %1780 = load i64, i64* %PC.i651
  %1781 = add i64 %1780, 4
  store i64 %1781, i64* %PC.i651
  %1782 = inttoptr i64 %1779 to i32*
  %1783 = load i32, i32* %1782
  %1784 = zext i32 %1783 to i64
  store i64 %1784, i64* %1775, align 8
  store %struct.Memory* %loadMem_4110d1, %struct.Memory** %MEMORY
  %loadMem_4110d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 33
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 7
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RDX.i649 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 15
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %RBP.i650
  %1795 = sub i64 %1794, 36
  %1796 = load i64, i64* %PC.i648
  %1797 = add i64 %1796, 3
  store i64 %1797, i64* %PC.i648
  %1798 = inttoptr i64 %1795 to i32*
  %1799 = load i32, i32* %1798
  %1800 = zext i32 %1799 to i64
  store i64 %1800, i64* %RDX.i649, align 8
  store %struct.Memory* %loadMem_4110d5, %struct.Memory** %MEMORY
  %loadMem_4110d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 33
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 9
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RSI.i646 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 15
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %1809 to i64*
  %1810 = load i64, i64* %RBP.i647
  %1811 = sub i64 %1810, 16
  %1812 = load i64, i64* %PC.i645
  %1813 = add i64 %1812, 4
  store i64 %1813, i64* %PC.i645
  %1814 = inttoptr i64 %1811 to i64*
  %1815 = load i64, i64* %1814
  store i64 %1815, i64* %RSI.i646, align 8
  store %struct.Memory* %loadMem_4110d8, %struct.Memory** %MEMORY
  %loadMem_4110dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 33
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 9
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RSI.i643 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 11
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RDI.i644 = bitcast %union.anon* %1824 to i64*
  %1825 = load i64, i64* %RSI.i643
  %1826 = load i64, i64* %PC.i642
  %1827 = add i64 %1826, 2
  store i64 %1827, i64* %PC.i642
  %1828 = inttoptr i64 %1825 to i32*
  %1829 = load i32, i32* %1828
  %1830 = zext i32 %1829 to i64
  store i64 %1830, i64* %RDI.i644, align 8
  store %struct.Memory* %loadMem_4110dc, %struct.Memory** %MEMORY
  %loadMem_4110de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 11
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RDI.i641 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RDI.i641
  %1838 = load i64, i64* %PC.i640
  %1839 = add i64 %1838, 3
  store i64 %1839, i64* %PC.i640
  %1840 = trunc i64 %1837 to i32
  %1841 = sub i32 %1840, 1
  %1842 = zext i32 %1841 to i64
  store i64 %1842, i64* %RDI.i641, align 8
  %1843 = icmp ult i32 %1840, 1
  %1844 = zext i1 %1843 to i8
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1844, i8* %1845, align 1
  %1846 = and i32 %1841, 255
  %1847 = call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1850, i8* %1851, align 1
  %1852 = xor i64 1, %1837
  %1853 = trunc i64 %1852 to i32
  %1854 = xor i32 %1853, %1841
  %1855 = lshr i32 %1854, 4
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1857, i8* %1858, align 1
  %1859 = icmp eq i32 %1841, 0
  %1860 = zext i1 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1860, i8* %1861, align 1
  %1862 = lshr i32 %1841, 31
  %1863 = trunc i32 %1862 to i8
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1863, i8* %1864, align 1
  %1865 = lshr i32 %1840, 31
  %1866 = xor i32 %1862, %1865
  %1867 = add i32 %1866, %1865
  %1868 = icmp eq i32 %1867, 2
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1869, i8* %1870, align 1
  store %struct.Memory* %loadMem_4110de, %struct.Memory** %MEMORY
  %loadMem_4110e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 7
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %EDX.i639 = bitcast %union.anon* %1876 to i32*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 11
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %1879 to i32*
  %1880 = load i32, i32* %EDX.i639
  %1881 = zext i32 %1880 to i64
  %1882 = load i32, i32* %EDI.i
  %1883 = zext i32 %1882 to i64
  %1884 = load i64, i64* %PC.i638
  %1885 = add i64 %1884, 2
  store i64 %1885, i64* %PC.i638
  %1886 = sub i32 %1880, %1882
  %1887 = icmp ult i32 %1880, %1882
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1888, i8* %1889, align 1
  %1890 = and i32 %1886, 255
  %1891 = call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1894, i8* %1895, align 1
  %1896 = xor i64 %1883, %1881
  %1897 = trunc i64 %1896 to i32
  %1898 = xor i32 %1897, %1886
  %1899 = lshr i32 %1898, 4
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1901, i8* %1902, align 1
  %1903 = icmp eq i32 %1886, 0
  %1904 = zext i1 %1903 to i8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1904, i8* %1905, align 1
  %1906 = lshr i32 %1886, 31
  %1907 = trunc i32 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1907, i8* %1908, align 1
  %1909 = lshr i32 %1880, 31
  %1910 = lshr i32 %1882, 31
  %1911 = xor i32 %1910, %1909
  %1912 = xor i32 %1906, %1909
  %1913 = add i32 %1912, %1911
  %1914 = icmp eq i32 %1913, 2
  %1915 = zext i1 %1914 to i8
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1915, i8* %1916, align 1
  store %struct.Memory* %loadMem_4110e1, %struct.Memory** %MEMORY
  %loadMem_4110e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 1
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RBP.i637
  %1927 = sub i64 %1926, 96
  %1928 = load i64, i64* %RAX.i636
  %1929 = load i64, i64* %PC.i635
  %1930 = add i64 %1929, 4
  store i64 %1930, i64* %PC.i635
  %1931 = inttoptr i64 %1927 to i64*
  store i64 %1928, i64* %1931
  store %struct.Memory* %loadMem_4110e3, %struct.Memory** %MEMORY
  %loadMem_4110e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 5
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %ECX.i633 = bitcast %union.anon* %1937 to i32*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 15
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %RBP.i634
  %1942 = sub i64 %1941, 100
  %1943 = load i32, i32* %ECX.i633
  %1944 = zext i32 %1943 to i64
  %1945 = load i64, i64* %PC.i632
  %1946 = add i64 %1945, 3
  store i64 %1946, i64* %PC.i632
  %1947 = inttoptr i64 %1942 to i32*
  store i32 %1943, i32* %1947
  store %struct.Memory* %loadMem_4110e7, %struct.Memory** %MEMORY
  %loadMem_4110ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 17
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %R8D.i630 = bitcast %union.anon* %1953 to i32*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 15
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %1956 to i64*
  %1957 = load i64, i64* %RBP.i631
  %1958 = sub i64 %1957, 104
  %1959 = load i32, i32* %R8D.i630
  %1960 = zext i32 %1959 to i64
  %1961 = load i64, i64* %PC.i629
  %1962 = add i64 %1961, 4
  store i64 %1962, i64* %PC.i629
  %1963 = inttoptr i64 %1958 to i32*
  store i32 %1959, i32* %1963
  store %struct.Memory* %loadMem_4110ea, %struct.Memory** %MEMORY
  %loadMem_4110ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1966 to i64*
  %1967 = load i64, i64* %PC.i628
  %1968 = add i64 %1967, 116
  %1969 = load i64, i64* %PC.i628
  %1970 = add i64 %1969, 6
  %1971 = load i64, i64* %PC.i628
  %1972 = add i64 %1971, 6
  store i64 %1972, i64* %PC.i628
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1974 = load i8, i8* %1973, align 1
  %1975 = icmp ne i8 %1974, 0
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1977 = load i8, i8* %1976, align 1
  %1978 = icmp ne i8 %1977, 0
  %1979 = xor i1 %1975, %1978
  %1980 = xor i1 %1979, true
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %BRANCH_TAKEN, align 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1983 = select i1 %1979, i64 %1970, i64 %1968
  store i64 %1983, i64* %1982, align 8
  store %struct.Memory* %loadMem_4110ee, %struct.Memory** %MEMORY
  %loadBr_4110ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4110ee = icmp eq i8 %loadBr_4110ee, 1
  br i1 %cmpBr_4110ee, label %block_.L_411162, label %block_4110f4

block_4110f4:                                     ; preds = %block_.L_411097
  %loadMem_4110f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 33
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1986 to i64*
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 11
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %RDI.i626 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 15
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %RBP.i627
  %1994 = sub i64 %1993, 24
  %1995 = load i64, i64* %PC.i625
  %1996 = add i64 %1995, 4
  store i64 %1996, i64* %PC.i625
  %1997 = inttoptr i64 %1994 to i64*
  %1998 = load i64, i64* %1997
  store i64 %1998, i64* %RDI.i626, align 8
  store %struct.Memory* %loadMem_4110f4, %struct.Memory** %MEMORY
  %loadMem_4110f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 1
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 15
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %RBP.i624
  %2009 = sub i64 %2008, 16
  %2010 = load i64, i64* %PC.i622
  %2011 = add i64 %2010, 4
  store i64 %2011, i64* %PC.i622
  %2012 = inttoptr i64 %2009 to i64*
  %2013 = load i64, i64* %2012
  store i64 %2013, i64* %RAX.i623, align 8
  store %struct.Memory* %loadMem_4110f8, %struct.Memory** %MEMORY
  %loadMem_4110fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 1
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RAX.i621
  %2021 = add i64 %2020, 8
  %2022 = load i64, i64* %PC.i620
  %2023 = add i64 %2022, 4
  store i64 %2023, i64* %PC.i620
  %2024 = inttoptr i64 %2021 to i64*
  %2025 = load i64, i64* %2024
  store i64 %2025, i64* %RAX.i621, align 8
  store %struct.Memory* %loadMem_4110fc, %struct.Memory** %MEMORY
  %loadMem_411100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 5
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i619
  %2036 = sub i64 %2035, 36
  %2037 = load i64, i64* %PC.i617
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i617
  %2039 = inttoptr i64 %2036 to i32*
  %2040 = load i32, i32* %2039
  %2041 = sext i32 %2040 to i64
  store i64 %2041, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_411100, %struct.Memory** %MEMORY
  %loadMem_411104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 7
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %2048 = bitcast %union.anon* %2047 to %struct.anon.2*
  %DL.i614 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2048, i32 0, i32 0
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 1
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 5
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RAX.i615
  %2056 = load i64, i64* %RCX.i616
  %2057 = add i64 %2056, %2055
  %2058 = load i64, i64* %PC.i613
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC.i613
  %2060 = inttoptr i64 %2057 to i8*
  %2061 = load i8, i8* %2060
  store i8 %2061, i8* %DL.i614, align 1
  store %struct.Memory* %loadMem_411104, %struct.Memory** %MEMORY
  %loadMem_411107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 33
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 1
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %2067 to i64*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 15
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %2070 to i64*
  %2071 = load i64, i64* %RBP.i612
  %2072 = sub i64 %2071, 16
  %2073 = load i64, i64* %PC.i610
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %PC.i610
  %2075 = inttoptr i64 %2072 to i64*
  %2076 = load i64, i64* %2075
  store i64 %2076, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_411107, %struct.Memory** %MEMORY
  %loadMem_41110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 1
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RAX.i609
  %2084 = add i64 %2083, 16
  %2085 = load i64, i64* %PC.i608
  %2086 = add i64 %2085, 4
  store i64 %2086, i64* %PC.i608
  %2087 = inttoptr i64 %2084 to i64*
  %2088 = load i64, i64* %2087
  store i64 %2088, i64* %RAX.i609, align 8
  store %struct.Memory* %loadMem_41110b, %struct.Memory** %MEMORY
  %loadMem_41110f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 5
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 15
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %2097 to i64*
  %2098 = load i64, i64* %RBP.i607
  %2099 = sub i64 %2098, 36
  %2100 = load i64, i64* %PC.i605
  %2101 = add i64 %2100, 4
  store i64 %2101, i64* %PC.i605
  %2102 = inttoptr i64 %2099 to i32*
  %2103 = load i32, i32* %2102
  %2104 = sext i32 %2103 to i64
  store i64 %2104, i64* %RCX.i606, align 8
  store %struct.Memory* %loadMem_41110f, %struct.Memory** %MEMORY
  %loadMem_411113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 1
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 5
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %2113 to i64*
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 9
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %RSI.i604 = bitcast %union.anon* %2116 to i64*
  %2117 = load i64, i64* %RAX.i602
  %2118 = load i64, i64* %RCX.i603
  %2119 = mul i64 %2118, 4
  %2120 = add i64 %2119, %2117
  %2121 = load i64, i64* %PC.i601
  %2122 = add i64 %2121, 3
  store i64 %2122, i64* %PC.i601
  %2123 = inttoptr i64 %2120 to i32*
  %2124 = load i32, i32* %2123
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RSI.i604, align 8
  store %struct.Memory* %loadMem_411113, %struct.Memory** %MEMORY
  %loadMem_411116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 1
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %2134 to i64*
  %2135 = load i64, i64* %RBP.i600
  %2136 = sub i64 %2135, 16
  %2137 = load i64, i64* %PC.i598
  %2138 = add i64 %2137, 4
  store i64 %2138, i64* %PC.i598
  %2139 = inttoptr i64 %2136 to i64*
  %2140 = load i64, i64* %2139
  store i64 %2140, i64* %RAX.i599, align 8
  store %struct.Memory* %loadMem_411116, %struct.Memory** %MEMORY
  %loadMem_41111a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 1
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %2146 to i64*
  %2147 = load i64, i64* %RAX.i597
  %2148 = add i64 %2147, 8
  %2149 = load i64, i64* %PC.i596
  %2150 = add i64 %2149, 4
  store i64 %2150, i64* %PC.i596
  %2151 = inttoptr i64 %2148 to i64*
  %2152 = load i64, i64* %2151
  store i64 %2152, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_41111a, %struct.Memory** %MEMORY
  %loadMem_41111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 17
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %R8D.i594 = bitcast %union.anon* %2158 to i32*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 15
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %2161 to i64*
  %2162 = bitcast i32* %R8D.i594 to i64*
  %2163 = load i64, i64* %RBP.i595
  %2164 = sub i64 %2163, 36
  %2165 = load i64, i64* %PC.i593
  %2166 = add i64 %2165, 4
  store i64 %2166, i64* %PC.i593
  %2167 = inttoptr i64 %2164 to i32*
  %2168 = load i32, i32* %2167
  %2169 = zext i32 %2168 to i64
  store i64 %2169, i64* %2162, align 8
  store %struct.Memory* %loadMem_41111e, %struct.Memory** %MEMORY
  %loadMem_411122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 17
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %R8D.i592 = bitcast %union.anon* %2175 to i32*
  %2176 = bitcast i32* %R8D.i592 to i64*
  %2177 = load i32, i32* %R8D.i592
  %2178 = zext i32 %2177 to i64
  %2179 = load i64, i64* %PC.i591
  %2180 = add i64 %2179, 4
  store i64 %2180, i64* %PC.i591
  %2181 = add i32 1, %2177
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %2176, align 8
  %2183 = icmp ult i32 %2181, %2177
  %2184 = icmp ult i32 %2181, 1
  %2185 = or i1 %2183, %2184
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2186, i8* %2187, align 1
  %2188 = and i32 %2181, 255
  %2189 = call i32 @llvm.ctpop.i32(i32 %2188)
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2192, i8* %2193, align 1
  %2194 = xor i64 1, %2178
  %2195 = trunc i64 %2194 to i32
  %2196 = xor i32 %2195, %2181
  %2197 = lshr i32 %2196, 4
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2199, i8* %2200, align 1
  %2201 = icmp eq i32 %2181, 0
  %2202 = zext i1 %2201 to i8
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2202, i8* %2203, align 1
  %2204 = lshr i32 %2181, 31
  %2205 = trunc i32 %2204 to i8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2205, i8* %2206, align 1
  %2207 = lshr i32 %2177, 31
  %2208 = xor i32 %2204, %2207
  %2209 = add i32 %2208, %2204
  %2210 = icmp eq i32 %2209, 2
  %2211 = zext i1 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2211, i8* %2212, align 1
  store %struct.Memory* %loadMem_411122, %struct.Memory** %MEMORY
  %loadMem_411126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 17
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %R8D.i589 = bitcast %union.anon* %2218 to i32*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 5
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %2221 to i64*
  %2222 = load i32, i32* %R8D.i589
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %PC.i588
  %2225 = add i64 %2224, 3
  store i64 %2225, i64* %PC.i588
  %2226 = shl i64 %2223, 32
  %2227 = ashr exact i64 %2226, 32
  store i64 %2227, i64* %RCX.i590, align 8
  store %struct.Memory* %loadMem_411126, %struct.Memory** %MEMORY
  %loadMem_411129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 19
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %2234 = bitcast %union.anon* %2233 to %struct.anon.2*
  %R9B.i585 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2234, i32 0, i32 0
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 1
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 5
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %2240 to i64*
  %2241 = load i64, i64* %RAX.i586
  %2242 = load i64, i64* %RCX.i587
  %2243 = add i64 %2242, %2241
  %2244 = load i64, i64* %PC.i584
  %2245 = add i64 %2244, 4
  store i64 %2245, i64* %PC.i584
  %2246 = inttoptr i64 %2243 to i8*
  %2247 = load i8, i8* %2246
  store i8 %2247, i8* %R9B.i585, align 1
  store %struct.Memory* %loadMem_411129, %struct.Memory** %MEMORY
  %loadMem_41112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 1
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 15
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %RBP.i583
  %2258 = sub i64 %2257, 16
  %2259 = load i64, i64* %PC.i581
  %2260 = add i64 %2259, 4
  store i64 %2260, i64* %PC.i581
  %2261 = inttoptr i64 %2258 to i64*
  %2262 = load i64, i64* %2261
  store i64 %2262, i64* %RAX.i582, align 8
  store %struct.Memory* %loadMem_41112d, %struct.Memory** %MEMORY
  %loadMem_411131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 1
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RAX.i580
  %2270 = add i64 %2269, 16
  %2271 = load i64, i64* %PC.i579
  %2272 = add i64 %2271, 4
  store i64 %2272, i64* %PC.i579
  %2273 = inttoptr i64 %2270 to i64*
  %2274 = load i64, i64* %2273
  store i64 %2274, i64* %RAX.i580, align 8
  store %struct.Memory* %loadMem_411131, %struct.Memory** %MEMORY
  %loadMem_411135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 17
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %R8D.i577 = bitcast %union.anon* %2280 to i32*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 15
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %2283 to i64*
  %2284 = bitcast i32* %R8D.i577 to i64*
  %2285 = load i64, i64* %RBP.i578
  %2286 = sub i64 %2285, 36
  %2287 = load i64, i64* %PC.i576
  %2288 = add i64 %2287, 4
  store i64 %2288, i64* %PC.i576
  %2289 = inttoptr i64 %2286 to i32*
  %2290 = load i32, i32* %2289
  %2291 = zext i32 %2290 to i64
  store i64 %2291, i64* %2284, align 8
  store %struct.Memory* %loadMem_411135, %struct.Memory** %MEMORY
  %loadMem_411139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 33
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 17
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %R8D.i575 = bitcast %union.anon* %2297 to i32*
  %2298 = bitcast i32* %R8D.i575 to i64*
  %2299 = load i32, i32* %R8D.i575
  %2300 = zext i32 %2299 to i64
  %2301 = load i64, i64* %PC.i574
  %2302 = add i64 %2301, 4
  store i64 %2302, i64* %PC.i574
  %2303 = add i32 1, %2299
  %2304 = zext i32 %2303 to i64
  store i64 %2304, i64* %2298, align 8
  %2305 = icmp ult i32 %2303, %2299
  %2306 = icmp ult i32 %2303, 1
  %2307 = or i1 %2305, %2306
  %2308 = zext i1 %2307 to i8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2308, i8* %2309, align 1
  %2310 = and i32 %2303, 255
  %2311 = call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2314, i8* %2315, align 1
  %2316 = xor i64 1, %2300
  %2317 = trunc i64 %2316 to i32
  %2318 = xor i32 %2317, %2303
  %2319 = lshr i32 %2318, 4
  %2320 = trunc i32 %2319 to i8
  %2321 = and i8 %2320, 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2321, i8* %2322, align 1
  %2323 = icmp eq i32 %2303, 0
  %2324 = zext i1 %2323 to i8
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2324, i8* %2325, align 1
  %2326 = lshr i32 %2303, 31
  %2327 = trunc i32 %2326 to i8
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2327, i8* %2328, align 1
  %2329 = lshr i32 %2299, 31
  %2330 = xor i32 %2326, %2329
  %2331 = add i32 %2330, %2326
  %2332 = icmp eq i32 %2331, 2
  %2333 = zext i1 %2332 to i8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2333, i8* %2334, align 1
  store %struct.Memory* %loadMem_411139, %struct.Memory** %MEMORY
  %loadMem_41113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 17
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %R8D.i572 = bitcast %union.anon* %2340 to i32*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 5
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %2343 to i64*
  %2344 = load i32, i32* %R8D.i572
  %2345 = zext i32 %2344 to i64
  %2346 = load i64, i64* %PC.i571
  %2347 = add i64 %2346, 3
  store i64 %2347, i64* %PC.i571
  %2348 = shl i64 %2345, 32
  %2349 = ashr exact i64 %2348, 32
  store i64 %2349, i64* %RCX.i573, align 8
  store %struct.Memory* %loadMem_41113d, %struct.Memory** %MEMORY
  %loadMem_411140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 17
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %R8D.i568 = bitcast %union.anon* %2355 to i32*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 1
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 5
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %2361 to i64*
  %2362 = bitcast i32* %R8D.i568 to i64*
  %2363 = load i64, i64* %RAX.i569
  %2364 = load i64, i64* %RCX.i570
  %2365 = mul i64 %2364, 4
  %2366 = add i64 %2365, %2363
  %2367 = load i64, i64* %PC.i567
  %2368 = add i64 %2367, 4
  store i64 %2368, i64* %PC.i567
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %2362, align 8
  store %struct.Memory* %loadMem_411140, %struct.Memory** %MEMORY
  %loadMem_411144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 7
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %2378 = bitcast %union.anon* %2377 to %struct.anon.2*
  %DL.i565 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2378, i32 0, i32 0
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 21
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %R10D.i566 = bitcast %union.anon* %2381 to i32*
  %2382 = bitcast i32* %R10D.i566 to i64*
  %2383 = load i8, i8* %DL.i565
  %2384 = zext i8 %2383 to i64
  %2385 = load i64, i64* %PC.i564
  %2386 = add i64 %2385, 4
  store i64 %2386, i64* %PC.i564
  %2387 = trunc i64 %2384 to i32
  %2388 = shl i32 %2387, 24
  %2389 = ashr exact i32 %2388, 24
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %2382, align 8
  store %struct.Memory* %loadMem_411144, %struct.Memory** %MEMORY
  %loadMem_411148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 9
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %ESI.i562 = bitcast %union.anon* %2396 to i32*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %RBP.i563
  %2401 = sub i64 %2400, 108
  %2402 = load i32, i32* %ESI.i562
  %2403 = zext i32 %2402 to i64
  %2404 = load i64, i64* %PC.i561
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %PC.i561
  %2406 = inttoptr i64 %2401 to i32*
  store i32 %2402, i32* %2406
  store %struct.Memory* %loadMem_411148, %struct.Memory** %MEMORY
  %loadMem_41114b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 21
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %R10D.i559 = bitcast %union.anon* %2412 to i32*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 9
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RSI.i560 = bitcast %union.anon* %2415 to i64*
  %2416 = load i32, i32* %R10D.i559
  %2417 = zext i32 %2416 to i64
  %2418 = load i64, i64* %PC.i558
  %2419 = add i64 %2418, 3
  store i64 %2419, i64* %PC.i558
  %2420 = and i64 %2417, 4294967295
  store i64 %2420, i64* %RSI.i560, align 8
  store %struct.Memory* %loadMem_41114b, %struct.Memory** %MEMORY
  %loadMem_41114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 33
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 7
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RDX.i556 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 15
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %2429 to i64*
  %2430 = load i64, i64* %RBP.i557
  %2431 = sub i64 %2430, 108
  %2432 = load i64, i64* %PC.i555
  %2433 = add i64 %2432, 3
  store i64 %2433, i64* %PC.i555
  %2434 = inttoptr i64 %2431 to i32*
  %2435 = load i32, i32* %2434
  %2436 = zext i32 %2435 to i64
  store i64 %2436, i64* %RDX.i556, align 8
  store %struct.Memory* %loadMem_41114e, %struct.Memory** %MEMORY
  %loadMem_411151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 19
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %2443 = bitcast %union.anon* %2442 to %struct.anon.2*
  %R9B.i553 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2443, i32 0, i32 0
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 5
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RCX.i554 = bitcast %union.anon* %2446 to i64*
  %2447 = load i8, i8* %R9B.i553
  %2448 = zext i8 %2447 to i64
  %2449 = load i64, i64* %PC.i552
  %2450 = add i64 %2449, 4
  store i64 %2450, i64* %PC.i552
  %2451 = trunc i64 %2448 to i32
  %2452 = shl i32 %2451, 24
  %2453 = ashr exact i32 %2452, 24
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RCX.i554, align 8
  store %struct.Memory* %loadMem_411151, %struct.Memory** %MEMORY
  %loadMem1_411155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2457 to i64*
  %2458 = load i64, i64* %PC.i551
  %2459 = add i64 %2458, 250731
  %2460 = load i64, i64* %PC.i551
  %2461 = add i64 %2460, 5
  %2462 = load i64, i64* %PC.i551
  %2463 = add i64 %2462, 5
  store i64 %2463, i64* %PC.i551
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2465 = load i64, i64* %2464, align 8
  %2466 = add i64 %2465, -8
  %2467 = inttoptr i64 %2466 to i64*
  store i64 %2461, i64* %2467
  store i64 %2466, i64* %2464, align 8
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2459, i64* %2468, align 8
  store %struct.Memory* %loadMem1_411155, %struct.Memory** %MEMORY
  %loadMem2_411155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411155 = load i64, i64* %3
  %call2_411155 = call %struct.Memory* @sub_44e4c0.TransitionScoreLookup(%struct.State* %0, i64 %loadPC_411155, %struct.Memory* %loadMem2_411155)
  store %struct.Memory* %call2_411155, %struct.Memory** %MEMORY
  %loadMem_41115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 1
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %EAX.i549 = bitcast %union.anon* %2474 to i32*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 15
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %RBP.i550
  %2479 = sub i64 %2478, 112
  %2480 = load i32, i32* %EAX.i549
  %2481 = zext i32 %2480 to i64
  %2482 = load i64, i64* %PC.i548
  %2483 = add i64 %2482, 3
  store i64 %2483, i64* %PC.i548
  %2484 = inttoptr i64 %2479 to i32*
  store i32 %2480, i32* %2484
  store %struct.Memory* %loadMem_41115a, %struct.Memory** %MEMORY
  %loadMem_41115d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2487 to i64*
  %2488 = load i64, i64* %PC.i547
  %2489 = add i64 %2488, 15
  %2490 = load i64, i64* %PC.i547
  %2491 = add i64 %2490, 5
  store i64 %2491, i64* %PC.i547
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2489, i64* %2492, align 8
  store %struct.Memory* %loadMem_41115d, %struct.Memory** %MEMORY
  br label %block_.L_41116c

block_.L_411162:                                  ; preds = %block_.L_411097
  %loadMem_411162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 1
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %EAX.i545 = bitcast %union.anon* %2498 to i32*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 1
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %RAX.i546
  %2503 = load i32, i32* %EAX.i545
  %2504 = zext i32 %2503 to i64
  %2505 = load i64, i64* %PC.i544
  %2506 = add i64 %2505, 2
  store i64 %2506, i64* %PC.i544
  %2507 = xor i64 %2504, %2502
  %2508 = trunc i64 %2507 to i32
  %2509 = and i64 %2507, 4294967295
  store i64 %2509, i64* %RAX.i546, align 8
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2510, align 1
  %2511 = and i32 %2508, 255
  %2512 = call i32 @llvm.ctpop.i32(i32 %2511)
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = xor i8 %2514, 1
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2515, i8* %2516, align 1
  %2517 = icmp eq i32 %2508, 0
  %2518 = zext i1 %2517 to i8
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2518, i8* %2519, align 1
  %2520 = lshr i32 %2508, 31
  %2521 = trunc i32 %2520 to i8
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2521, i8* %2522, align 1
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2523, align 1
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2524, align 1
  store %struct.Memory* %loadMem_411162, %struct.Memory** %MEMORY
  %loadMem_411164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 1
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %EAX.i542 = bitcast %union.anon* %2530 to i32*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 15
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2533 to i64*
  %2534 = load i64, i64* %RBP.i543
  %2535 = sub i64 %2534, 112
  %2536 = load i32, i32* %EAX.i542
  %2537 = zext i32 %2536 to i64
  %2538 = load i64, i64* %PC.i541
  %2539 = add i64 %2538, 3
  store i64 %2539, i64* %PC.i541
  %2540 = inttoptr i64 %2535 to i32*
  store i32 %2536, i32* %2540
  store %struct.Memory* %loadMem_411164, %struct.Memory** %MEMORY
  %loadMem_411167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2543 to i64*
  %2544 = load i64, i64* %PC.i540
  %2545 = add i64 %2544, 5
  %2546 = load i64, i64* %PC.i540
  %2547 = add i64 %2546, 5
  store i64 %2547, i64* %PC.i540
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2545, i64* %2548, align 8
  store %struct.Memory* %loadMem_411167, %struct.Memory** %MEMORY
  br label %block_.L_41116c

block_.L_41116c:                                  ; preds = %block_.L_411162, %block_4110f4
  %loadMem_41116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 1
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 15
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %RBP.i539
  %2559 = sub i64 %2558, 112
  %2560 = load i64, i64* %PC.i537
  %2561 = add i64 %2560, 3
  store i64 %2561, i64* %PC.i537
  %2562 = inttoptr i64 %2559 to i32*
  %2563 = load i32, i32* %2562
  %2564 = zext i32 %2563 to i64
  store i64 %2564, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_41116c, %struct.Memory** %MEMORY
  %loadMem_41116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 9
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RSI.i536 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %PC.i535
  %2572 = add i64 %2571, 10
  store i64 %2572, i64* %PC.i535
  store i64 ptrtoint (%G__0x45624a_type* @G__0x45624a to i64), i64* %RSI.i536, align 8
  store %struct.Memory* %loadMem_41116f, %struct.Memory** %MEMORY
  %loadMem_411179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 33
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2575 to i64*
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 11
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %RDI.i533 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 15
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %2581 to i64*
  %2582 = load i64, i64* %RBP.i534
  %2583 = sub i64 %2582, 88
  %2584 = load i64, i64* %PC.i532
  %2585 = add i64 %2584, 4
  store i64 %2585, i64* %PC.i532
  %2586 = inttoptr i64 %2583 to i64*
  %2587 = load i64, i64* %2586
  store i64 %2587, i64* %RDI.i533, align 8
  store %struct.Memory* %loadMem_411179, %struct.Memory** %MEMORY
  %loadMem_41117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 7
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 15
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %RBP.i531
  %2598 = sub i64 %2597, 96
  %2599 = load i64, i64* %PC.i529
  %2600 = add i64 %2599, 4
  store i64 %2600, i64* %PC.i529
  %2601 = inttoptr i64 %2598 to i64*
  %2602 = load i64, i64* %2601
  store i64 %2602, i64* %RDX.i530, align 8
  store %struct.Memory* %loadMem_41117d, %struct.Memory** %MEMORY
  %loadMem_411181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 5
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 15
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %2611 to i64*
  %2612 = load i64, i64* %RBP.i528
  %2613 = sub i64 %2612, 100
  %2614 = load i64, i64* %PC.i526
  %2615 = add i64 %2614, 3
  store i64 %2615, i64* %PC.i526
  %2616 = inttoptr i64 %2613 to i32*
  %2617 = load i32, i32* %2616
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RCX.i527, align 8
  store %struct.Memory* %loadMem_411181, %struct.Memory** %MEMORY
  %loadMem_411184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 17
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %R8D.i524 = bitcast %union.anon* %2624 to i32*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 15
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %2627 to i64*
  %2628 = bitcast i32* %R8D.i524 to i64*
  %2629 = load i64, i64* %RBP.i525
  %2630 = sub i64 %2629, 104
  %2631 = load i64, i64* %PC.i523
  %2632 = add i64 %2631, 4
  store i64 %2632, i64* %PC.i523
  %2633 = inttoptr i64 %2630 to i32*
  %2634 = load i32, i32* %2633
  %2635 = zext i32 %2634 to i64
  store i64 %2635, i64* %2628, align 8
  store %struct.Memory* %loadMem_411184, %struct.Memory** %MEMORY
  %loadMem_411188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 1
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %EAX.i522 = bitcast %union.anon* %2641 to i32*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 19
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %2644 to i32*
  %2645 = bitcast i32* %R9D.i to i64*
  %2646 = load i32, i32* %EAX.i522
  %2647 = zext i32 %2646 to i64
  %2648 = load i64, i64* %PC.i521
  %2649 = add i64 %2648, 3
  store i64 %2649, i64* %PC.i521
  %2650 = and i64 %2647, 4294967295
  store i64 %2650, i64* %2645, align 8
  store %struct.Memory* %loadMem_411188, %struct.Memory** %MEMORY
  %loadMem_41118b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 1
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %2657 = bitcast %union.anon* %2656 to %struct.anon.2*
  %AL.i520 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2657, i32 0, i32 0
  %2658 = load i64, i64* %PC.i519
  %2659 = add i64 %2658, 2
  store i64 %2659, i64* %PC.i519
  store i8 0, i8* %AL.i520, align 1
  store %struct.Memory* %loadMem_41118b, %struct.Memory** %MEMORY
  %loadMem1_41118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2662 to i64*
  %2663 = load i64, i64* %PC.i518
  %2664 = add i64 %2663, -64541
  %2665 = load i64, i64* %PC.i518
  %2666 = add i64 %2665, 5
  %2667 = load i64, i64* %PC.i518
  %2668 = add i64 %2667, 5
  store i64 %2668, i64* %PC.i518
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2670 = load i64, i64* %2669, align 8
  %2671 = add i64 %2670, -8
  %2672 = inttoptr i64 %2671 to i64*
  store i64 %2666, i64* %2672
  store i64 %2671, i64* %2669, align 8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2664, i64* %2673, align 8
  store %struct.Memory* %loadMem1_41118d, %struct.Memory** %MEMORY
  %loadMem2_41118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41118d = load i64, i64* %3
  %2674 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41118d)
  store %struct.Memory* %2674, %struct.Memory** %MEMORY
  %loadMem_411192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 5
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 15
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %2683 to i64*
  %2684 = load i64, i64* %RBP.i516
  %2685 = sub i64 %2684, 36
  %2686 = load i64, i64* %PC.i514
  %2687 = add i64 %2686, 3
  store i64 %2687, i64* %PC.i514
  %2688 = inttoptr i64 %2685 to i32*
  %2689 = load i32, i32* %2688
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_411192, %struct.Memory** %MEMORY
  %loadMem_411195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 33
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 7
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RDX.i512 = bitcast %union.anon* %2696 to i64*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 15
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2699 to i64*
  %2700 = load i64, i64* %RBP.i513
  %2701 = sub i64 %2700, 16
  %2702 = load i64, i64* %PC.i511
  %2703 = add i64 %2702, 4
  store i64 %2703, i64* %PC.i511
  %2704 = inttoptr i64 %2701 to i64*
  %2705 = load i64, i64* %2704
  store i64 %2705, i64* %RDX.i512, align 8
  store %struct.Memory* %loadMem_411195, %struct.Memory** %MEMORY
  %loadMem_411199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 17
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %R8D.i509 = bitcast %union.anon* %2711 to i32*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 7
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %2714 to i64*
  %2715 = bitcast i32* %R8D.i509 to i64*
  %2716 = load i64, i64* %RDX.i510
  %2717 = load i64, i64* %PC.i508
  %2718 = add i64 %2717, 3
  store i64 %2718, i64* %PC.i508
  %2719 = inttoptr i64 %2716 to i32*
  %2720 = load i32, i32* %2719
  %2721 = zext i32 %2720 to i64
  store i64 %2721, i64* %2715, align 8
  store %struct.Memory* %loadMem_411199, %struct.Memory** %MEMORY
  %loadMem_41119c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 17
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %R8D.i507 = bitcast %union.anon* %2727 to i32*
  %2728 = bitcast i32* %R8D.i507 to i64*
  %2729 = load i32, i32* %R8D.i507
  %2730 = zext i32 %2729 to i64
  %2731 = load i64, i64* %PC.i506
  %2732 = add i64 %2731, 4
  store i64 %2732, i64* %PC.i506
  %2733 = sub i32 %2729, 1
  %2734 = zext i32 %2733 to i64
  store i64 %2734, i64* %2728, align 8
  %2735 = icmp ult i32 %2729, 1
  %2736 = zext i1 %2735 to i8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2736, i8* %2737, align 1
  %2738 = and i32 %2733, 255
  %2739 = call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2742, i8* %2743, align 1
  %2744 = xor i64 1, %2730
  %2745 = trunc i64 %2744 to i32
  %2746 = xor i32 %2745, %2733
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2749, i8* %2750, align 1
  %2751 = icmp eq i32 %2733, 0
  %2752 = zext i1 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2752, i8* %2753, align 1
  %2754 = lshr i32 %2733, 31
  %2755 = trunc i32 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2755, i8* %2756, align 1
  %2757 = lshr i32 %2729, 31
  %2758 = xor i32 %2754, %2757
  %2759 = add i32 %2758, %2757
  %2760 = icmp eq i32 %2759, 2
  %2761 = zext i1 %2760 to i8
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2761, i8* %2762, align 1
  store %struct.Memory* %loadMem_41119c, %struct.Memory** %MEMORY
  %loadMem_4111a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 5
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %ECX.i504 = bitcast %union.anon* %2768 to i32*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 17
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %R8D.i505 = bitcast %union.anon* %2771 to i32*
  %2772 = load i32, i32* %ECX.i504
  %2773 = zext i32 %2772 to i64
  %2774 = load i32, i32* %R8D.i505
  %2775 = zext i32 %2774 to i64
  %2776 = load i64, i64* %PC.i503
  %2777 = add i64 %2776, 3
  store i64 %2777, i64* %PC.i503
  %2778 = sub i32 %2772, %2774
  %2779 = icmp ult i32 %2772, %2774
  %2780 = zext i1 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2780, i8* %2781, align 1
  %2782 = and i32 %2778, 255
  %2783 = call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2786, i8* %2787, align 1
  %2788 = xor i64 %2775, %2773
  %2789 = trunc i64 %2788 to i32
  %2790 = xor i32 %2789, %2778
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2793, i8* %2794, align 1
  %2795 = icmp eq i32 %2778, 0
  %2796 = zext i1 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2796, i8* %2797, align 1
  %2798 = lshr i32 %2778, 31
  %2799 = trunc i32 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2799, i8* %2800, align 1
  %2801 = lshr i32 %2772, 31
  %2802 = lshr i32 %2774, 31
  %2803 = xor i32 %2802, %2801
  %2804 = xor i32 %2798, %2801
  %2805 = add i32 %2804, %2803
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2807, i8* %2808, align 1
  store %struct.Memory* %loadMem_4111a0, %struct.Memory** %MEMORY
  %loadMem_4111a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 33
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2811 to i64*
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 1
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %EAX.i501 = bitcast %union.anon* %2814 to i32*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 15
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %2817 to i64*
  %2818 = load i64, i64* %RBP.i502
  %2819 = sub i64 %2818, 116
  %2820 = load i32, i32* %EAX.i501
  %2821 = zext i32 %2820 to i64
  %2822 = load i64, i64* %PC.i500
  %2823 = add i64 %2822, 3
  store i64 %2823, i64* %PC.i500
  %2824 = inttoptr i64 %2819 to i32*
  store i32 %2820, i32* %2824
  store %struct.Memory* %loadMem_4111a3, %struct.Memory** %MEMORY
  %loadMem_4111a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %PC.i499
  %2829 = add i64 %2828, 114
  %2830 = load i64, i64* %PC.i499
  %2831 = add i64 %2830, 6
  %2832 = load i64, i64* %PC.i499
  %2833 = add i64 %2832, 6
  store i64 %2833, i64* %PC.i499
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2835 = load i8, i8* %2834, align 1
  %2836 = icmp ne i8 %2835, 0
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2838 = load i8, i8* %2837, align 1
  %2839 = icmp ne i8 %2838, 0
  %2840 = xor i1 %2836, %2839
  %2841 = xor i1 %2840, true
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %BRANCH_TAKEN, align 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2844 = select i1 %2840, i64 %2831, i64 %2829
  store i64 %2844, i64* %2843, align 8
  store %struct.Memory* %loadMem_4111a6, %struct.Memory** %MEMORY
  %loadBr_4111a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4111a6 = icmp eq i8 %loadBr_4111a6, 1
  br i1 %cmpBr_4111a6, label %block_.L_411218, label %block_4111ac

block_4111ac:                                     ; preds = %block_.L_41116c
  %loadMem_4111ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 33
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 11
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RDI.i497 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 15
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %2853 to i64*
  %2854 = load i64, i64* %RBP.i498
  %2855 = sub i64 %2854, 24
  %2856 = load i64, i64* %PC.i496
  %2857 = add i64 %2856, 4
  store i64 %2857, i64* %PC.i496
  %2858 = inttoptr i64 %2855 to i64*
  %2859 = load i64, i64* %2858
  store i64 %2859, i64* %RDI.i497, align 8
  store %struct.Memory* %loadMem_4111ac, %struct.Memory** %MEMORY
  %loadMem_4111b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 1
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 15
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %RBP.i495
  %2870 = sub i64 %2869, 16
  %2871 = load i64, i64* %PC.i493
  %2872 = add i64 %2871, 4
  store i64 %2872, i64* %PC.i493
  %2873 = inttoptr i64 %2870 to i64*
  %2874 = load i64, i64* %2873
  store i64 %2874, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_4111b0, %struct.Memory** %MEMORY
  %loadMem_4111b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 1
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %2880 to i64*
  %2881 = load i64, i64* %RAX.i492
  %2882 = add i64 %2881, 8
  %2883 = load i64, i64* %PC.i491
  %2884 = add i64 %2883, 4
  store i64 %2884, i64* %PC.i491
  %2885 = inttoptr i64 %2882 to i64*
  %2886 = load i64, i64* %2885
  store i64 %2886, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_4111b4, %struct.Memory** %MEMORY
  %loadMem_4111b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 5
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 15
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %2895 to i64*
  %2896 = load i64, i64* %RBP.i490
  %2897 = sub i64 %2896, 36
  %2898 = load i64, i64* %PC.i488
  %2899 = add i64 %2898, 4
  store i64 %2899, i64* %PC.i488
  %2900 = inttoptr i64 %2897 to i32*
  %2901 = load i32, i32* %2900
  %2902 = sext i32 %2901 to i64
  store i64 %2902, i64* %RCX.i489, align 8
  store %struct.Memory* %loadMem_4111b8, %struct.Memory** %MEMORY
  %loadMem_4111bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 7
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %2909 = bitcast %union.anon* %2908 to %struct.anon.2*
  %DL.i485 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2909, i32 0, i32 0
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 1
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 5
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RCX.i487 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %RAX.i486
  %2917 = load i64, i64* %RCX.i487
  %2918 = add i64 %2917, %2916
  %2919 = load i64, i64* %PC.i484
  %2920 = add i64 %2919, 3
  store i64 %2920, i64* %PC.i484
  %2921 = inttoptr i64 %2918 to i8*
  %2922 = load i8, i8* %2921
  store i8 %2922, i8* %DL.i485, align 1
  store %struct.Memory* %loadMem_4111bc, %struct.Memory** %MEMORY
  %loadMem_4111bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RAX.i482 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 15
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %2931 to i64*
  %2932 = load i64, i64* %RBP.i483
  %2933 = sub i64 %2932, 16
  %2934 = load i64, i64* %PC.i481
  %2935 = add i64 %2934, 4
  store i64 %2935, i64* %PC.i481
  %2936 = inttoptr i64 %2933 to i64*
  %2937 = load i64, i64* %2936
  store i64 %2937, i64* %RAX.i482, align 8
  store %struct.Memory* %loadMem_4111bf, %struct.Memory** %MEMORY
  %loadMem_4111c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 1
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %2943 to i64*
  %2944 = load i64, i64* %RAX.i480
  %2945 = add i64 %2944, 16
  %2946 = load i64, i64* %PC.i479
  %2947 = add i64 %2946, 4
  store i64 %2947, i64* %PC.i479
  %2948 = inttoptr i64 %2945 to i64*
  %2949 = load i64, i64* %2948
  store i64 %2949, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_4111c3, %struct.Memory** %MEMORY
  %loadMem_4111c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 5
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RCX.i477 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 15
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %RBP.i478
  %2960 = sub i64 %2959, 36
  %2961 = load i64, i64* %PC.i476
  %2962 = add i64 %2961, 4
  store i64 %2962, i64* %PC.i476
  %2963 = inttoptr i64 %2960 to i32*
  %2964 = load i32, i32* %2963
  %2965 = sext i32 %2964 to i64
  store i64 %2965, i64* %RCX.i477, align 8
  store %struct.Memory* %loadMem_4111c7, %struct.Memory** %MEMORY
  %loadMem_4111cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 1
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 5
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 9
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RSI.i475 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %RAX.i473
  %2979 = load i64, i64* %RCX.i474
  %2980 = mul i64 %2979, 4
  %2981 = add i64 %2980, %2978
  %2982 = load i64, i64* %PC.i472
  %2983 = add i64 %2982, 3
  store i64 %2983, i64* %PC.i472
  %2984 = inttoptr i64 %2981 to i32*
  %2985 = load i32, i32* %2984
  %2986 = zext i32 %2985 to i64
  store i64 %2986, i64* %RSI.i475, align 8
  store %struct.Memory* %loadMem_4111cb, %struct.Memory** %MEMORY
  %loadMem_4111ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 1
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 15
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %RBP.i471
  %2997 = sub i64 %2996, 16
  %2998 = load i64, i64* %PC.i469
  %2999 = add i64 %2998, 4
  store i64 %2999, i64* %PC.i469
  %3000 = inttoptr i64 %2997 to i64*
  %3001 = load i64, i64* %3000
  store i64 %3001, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_4111ce, %struct.Memory** %MEMORY
  %loadMem_4111d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 1
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RAX.i468
  %3009 = add i64 %3008, 8
  %3010 = load i64, i64* %PC.i467
  %3011 = add i64 %3010, 4
  store i64 %3011, i64* %PC.i467
  %3012 = inttoptr i64 %3009 to i64*
  %3013 = load i64, i64* %3012
  store i64 %3013, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_4111d2, %struct.Memory** %MEMORY
  %loadMem_4111d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 17
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %R8D.i465 = bitcast %union.anon* %3019 to i32*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 15
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %3022 to i64*
  %3023 = bitcast i32* %R8D.i465 to i64*
  %3024 = load i64, i64* %RBP.i466
  %3025 = sub i64 %3024, 36
  %3026 = load i64, i64* %PC.i464
  %3027 = add i64 %3026, 4
  store i64 %3027, i64* %PC.i464
  %3028 = inttoptr i64 %3025 to i32*
  %3029 = load i32, i32* %3028
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %3023, align 8
  store %struct.Memory* %loadMem_4111d6, %struct.Memory** %MEMORY
  %loadMem_4111da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 17
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %R8D.i463 = bitcast %union.anon* %3036 to i32*
  %3037 = bitcast i32* %R8D.i463 to i64*
  %3038 = load i32, i32* %R8D.i463
  %3039 = zext i32 %3038 to i64
  %3040 = load i64, i64* %PC.i462
  %3041 = add i64 %3040, 4
  store i64 %3041, i64* %PC.i462
  %3042 = add i32 1, %3038
  %3043 = zext i32 %3042 to i64
  store i64 %3043, i64* %3037, align 8
  %3044 = icmp ult i32 %3042, %3038
  %3045 = icmp ult i32 %3042, 1
  %3046 = or i1 %3044, %3045
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3047, i8* %3048, align 1
  %3049 = and i32 %3042, 255
  %3050 = call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3053, i8* %3054, align 1
  %3055 = xor i64 1, %3039
  %3056 = trunc i64 %3055 to i32
  %3057 = xor i32 %3056, %3042
  %3058 = lshr i32 %3057, 4
  %3059 = trunc i32 %3058 to i8
  %3060 = and i8 %3059, 1
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3060, i8* %3061, align 1
  %3062 = icmp eq i32 %3042, 0
  %3063 = zext i1 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3063, i8* %3064, align 1
  %3065 = lshr i32 %3042, 31
  %3066 = trunc i32 %3065 to i8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3066, i8* %3067, align 1
  %3068 = lshr i32 %3038, 31
  %3069 = xor i32 %3065, %3068
  %3070 = add i32 %3069, %3065
  %3071 = icmp eq i32 %3070, 2
  %3072 = zext i1 %3071 to i8
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3072, i8* %3073, align 1
  store %struct.Memory* %loadMem_4111da, %struct.Memory** %MEMORY
  %loadMem_4111de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 17
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %R8D.i460 = bitcast %union.anon* %3079 to i32*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 5
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %3082 to i64*
  %3083 = load i32, i32* %R8D.i460
  %3084 = zext i32 %3083 to i64
  %3085 = load i64, i64* %PC.i459
  %3086 = add i64 %3085, 3
  store i64 %3086, i64* %PC.i459
  %3087 = shl i64 %3084, 32
  %3088 = ashr exact i64 %3087, 32
  store i64 %3088, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_4111de, %struct.Memory** %MEMORY
  %loadMem_4111e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 33
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 19
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %3095 = bitcast %union.anon* %3094 to %struct.anon.2*
  %R9B.i456 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3095, i32 0, i32 0
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 1
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 5
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RAX.i457
  %3103 = load i64, i64* %RCX.i458
  %3104 = add i64 %3103, %3102
  %3105 = load i64, i64* %PC.i455
  %3106 = add i64 %3105, 4
  store i64 %3106, i64* %PC.i455
  %3107 = inttoptr i64 %3104 to i8*
  %3108 = load i8, i8* %3107
  store i8 %3108, i8* %R9B.i456, align 1
  store %struct.Memory* %loadMem_4111e1, %struct.Memory** %MEMORY
  %loadMem_4111e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 1
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 15
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %RBP.i454
  %3119 = sub i64 %3118, 16
  %3120 = load i64, i64* %PC.i452
  %3121 = add i64 %3120, 4
  store i64 %3121, i64* %PC.i452
  %3122 = inttoptr i64 %3119 to i64*
  %3123 = load i64, i64* %3122
  store i64 %3123, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_4111e5, %struct.Memory** %MEMORY
  %loadMem_4111e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 33
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 1
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %3129 to i64*
  %3130 = load i64, i64* %RAX.i451
  %3131 = add i64 %3130, 16
  %3132 = load i64, i64* %PC.i450
  %3133 = add i64 %3132, 4
  store i64 %3133, i64* %PC.i450
  %3134 = inttoptr i64 %3131 to i64*
  %3135 = load i64, i64* %3134
  store i64 %3135, i64* %RAX.i451, align 8
  store %struct.Memory* %loadMem_4111e9, %struct.Memory** %MEMORY
  %loadMem_4111ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 17
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %R8D.i448 = bitcast %union.anon* %3141 to i32*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 15
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %3144 to i64*
  %3145 = bitcast i32* %R8D.i448 to i64*
  %3146 = load i64, i64* %RBP.i449
  %3147 = sub i64 %3146, 36
  %3148 = load i64, i64* %PC.i447
  %3149 = add i64 %3148, 4
  store i64 %3149, i64* %PC.i447
  %3150 = inttoptr i64 %3147 to i32*
  %3151 = load i32, i32* %3150
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %3145, align 8
  store %struct.Memory* %loadMem_4111ed, %struct.Memory** %MEMORY
  %loadMem_4111f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 17
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %R8D.i446 = bitcast %union.anon* %3158 to i32*
  %3159 = bitcast i32* %R8D.i446 to i64*
  %3160 = load i32, i32* %R8D.i446
  %3161 = zext i32 %3160 to i64
  %3162 = load i64, i64* %PC.i445
  %3163 = add i64 %3162, 4
  store i64 %3163, i64* %PC.i445
  %3164 = add i32 1, %3160
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %3159, align 8
  %3166 = icmp ult i32 %3164, %3160
  %3167 = icmp ult i32 %3164, 1
  %3168 = or i1 %3166, %3167
  %3169 = zext i1 %3168 to i8
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3169, i8* %3170, align 1
  %3171 = and i32 %3164, 255
  %3172 = call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3175, i8* %3176, align 1
  %3177 = xor i64 1, %3161
  %3178 = trunc i64 %3177 to i32
  %3179 = xor i32 %3178, %3164
  %3180 = lshr i32 %3179, 4
  %3181 = trunc i32 %3180 to i8
  %3182 = and i8 %3181, 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3182, i8* %3183, align 1
  %3184 = icmp eq i32 %3164, 0
  %3185 = zext i1 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3185, i8* %3186, align 1
  %3187 = lshr i32 %3164, 31
  %3188 = trunc i32 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3188, i8* %3189, align 1
  %3190 = lshr i32 %3160, 31
  %3191 = xor i32 %3187, %3190
  %3192 = add i32 %3191, %3187
  %3193 = icmp eq i32 %3192, 2
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3194, i8* %3195, align 1
  store %struct.Memory* %loadMem_4111f1, %struct.Memory** %MEMORY
  %loadMem_4111f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 33
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 17
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %R8D.i443 = bitcast %union.anon* %3201 to i32*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 5
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %3204 to i64*
  %3205 = load i32, i32* %R8D.i443
  %3206 = zext i32 %3205 to i64
  %3207 = load i64, i64* %PC.i442
  %3208 = add i64 %3207, 3
  store i64 %3208, i64* %PC.i442
  %3209 = shl i64 %3206, 32
  %3210 = ashr exact i64 %3209, 32
  store i64 %3210, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_4111f5, %struct.Memory** %MEMORY
  %loadMem_4111f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 17
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3216 to i32*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 1
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 5
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %3222 to i64*
  %3223 = bitcast i32* %R8D.i to i64*
  %3224 = load i64, i64* %RAX.i440
  %3225 = load i64, i64* %RCX.i441
  %3226 = mul i64 %3225, 4
  %3227 = add i64 %3226, %3224
  %3228 = load i64, i64* %PC.i439
  %3229 = add i64 %3228, 4
  store i64 %3229, i64* %PC.i439
  %3230 = inttoptr i64 %3227 to i32*
  %3231 = load i32, i32* %3230
  %3232 = zext i32 %3231 to i64
  store i64 %3232, i64* %3223, align 8
  store %struct.Memory* %loadMem_4111f8, %struct.Memory** %MEMORY
  %loadMem_4111fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 7
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %3239 = bitcast %union.anon* %3238 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3239, i32 0, i32 0
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 21
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %R10D.i438 = bitcast %union.anon* %3242 to i32*
  %3243 = bitcast i32* %R10D.i438 to i64*
  %3244 = load i8, i8* %DL.i
  %3245 = zext i8 %3244 to i64
  %3246 = load i64, i64* %PC.i437
  %3247 = add i64 %3246, 4
  store i64 %3247, i64* %PC.i437
  %3248 = trunc i64 %3245 to i32
  %3249 = shl i32 %3248, 24
  %3250 = ashr exact i32 %3249, 24
  %3251 = zext i32 %3250 to i64
  store i64 %3251, i64* %3243, align 8
  store %struct.Memory* %loadMem_4111fc, %struct.Memory** %MEMORY
  %loadMem_411200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 9
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %ESI.i435 = bitcast %union.anon* %3257 to i32*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 15
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %3260 to i64*
  %3261 = load i64, i64* %RBP.i436
  %3262 = sub i64 %3261, 120
  %3263 = load i32, i32* %ESI.i435
  %3264 = zext i32 %3263 to i64
  %3265 = load i64, i64* %PC.i434
  %3266 = add i64 %3265, 3
  store i64 %3266, i64* %PC.i434
  %3267 = inttoptr i64 %3262 to i32*
  store i32 %3263, i32* %3267
  store %struct.Memory* %loadMem_411200, %struct.Memory** %MEMORY
  %loadMem_411203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 33
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 21
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %3273 to i32*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 9
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RSI.i433 = bitcast %union.anon* %3276 to i64*
  %3277 = load i32, i32* %R10D.i
  %3278 = zext i32 %3277 to i64
  %3279 = load i64, i64* %PC.i432
  %3280 = add i64 %3279, 3
  store i64 %3280, i64* %PC.i432
  %3281 = and i64 %3278, 4294967295
  store i64 %3281, i64* %RSI.i433, align 8
  store %struct.Memory* %loadMem_411203, %struct.Memory** %MEMORY
  %loadMem_411206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 33
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 7
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 15
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %RBP.i431
  %3292 = sub i64 %3291, 120
  %3293 = load i64, i64* %PC.i429
  %3294 = add i64 %3293, 3
  store i64 %3294, i64* %PC.i429
  %3295 = inttoptr i64 %3292 to i32*
  %3296 = load i32, i32* %3295
  %3297 = zext i32 %3296 to i64
  store i64 %3297, i64* %RDX.i430, align 8
  store %struct.Memory* %loadMem_411206, %struct.Memory** %MEMORY
  %loadMem_411209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 19
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %3304 = bitcast %union.anon* %3303 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3304, i32 0, i32 0
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 5
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %3307 to i64*
  %3308 = load i8, i8* %R9B.i
  %3309 = zext i8 %3308 to i64
  %3310 = load i64, i64* %PC.i427
  %3311 = add i64 %3310, 4
  store i64 %3311, i64* %PC.i427
  %3312 = trunc i64 %3309 to i32
  %3313 = shl i32 %3312, 24
  %3314 = ashr exact i32 %3313, 24
  %3315 = zext i32 %3314 to i64
  store i64 %3315, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_411209, %struct.Memory** %MEMORY
  %loadMem1_41120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %PC.i426
  %3320 = add i64 %3319, 250547
  %3321 = load i64, i64* %PC.i426
  %3322 = add i64 %3321, 5
  %3323 = load i64, i64* %PC.i426
  %3324 = add i64 %3323, 5
  store i64 %3324, i64* %PC.i426
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3326 = load i64, i64* %3325, align 8
  %3327 = add i64 %3326, -8
  %3328 = inttoptr i64 %3327 to i64*
  store i64 %3322, i64* %3328
  store i64 %3327, i64* %3325, align 8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3320, i64* %3329, align 8
  store %struct.Memory* %loadMem1_41120d, %struct.Memory** %MEMORY
  %loadMem2_41120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41120d = load i64, i64* %3
  %call2_41120d = call %struct.Memory* @sub_44e4c0.TransitionScoreLookup(%struct.State* %0, i64 %loadPC_41120d, %struct.Memory* %loadMem2_41120d)
  store %struct.Memory* %call2_41120d, %struct.Memory** %MEMORY
  %loadMem_411212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 33
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 1
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 15
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %3338 to i64*
  %3339 = load i64, i64* %RAX.i424
  %3340 = load i64, i64* %RBP.i425
  %3341 = sub i64 %3340, 44
  %3342 = load i64, i64* %PC.i423
  %3343 = add i64 %3342, 3
  store i64 %3343, i64* %PC.i423
  %3344 = trunc i64 %3339 to i32
  %3345 = inttoptr i64 %3341 to i32*
  %3346 = load i32, i32* %3345
  %3347 = add i32 %3346, %3344
  %3348 = zext i32 %3347 to i64
  store i64 %3348, i64* %RAX.i424, align 8
  %3349 = icmp ult i32 %3347, %3344
  %3350 = icmp ult i32 %3347, %3346
  %3351 = or i1 %3349, %3350
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3352, i8* %3353, align 1
  %3354 = and i32 %3347, 255
  %3355 = call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3358, i8* %3359, align 1
  %3360 = xor i32 %3346, %3344
  %3361 = xor i32 %3360, %3347
  %3362 = lshr i32 %3361, 4
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3364, i8* %3365, align 1
  %3366 = icmp eq i32 %3347, 0
  %3367 = zext i1 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3367, i8* %3368, align 1
  %3369 = lshr i32 %3347, 31
  %3370 = trunc i32 %3369 to i8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3370, i8* %3371, align 1
  %3372 = lshr i32 %3344, 31
  %3373 = lshr i32 %3346, 31
  %3374 = xor i32 %3369, %3372
  %3375 = xor i32 %3369, %3373
  %3376 = add i32 %3374, %3375
  %3377 = icmp eq i32 %3376, 2
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3378, i8* %3379, align 1
  store %struct.Memory* %loadMem_411212, %struct.Memory** %MEMORY
  %loadMem_411215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 1
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %3385 to i32*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 15
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RBP.i422
  %3390 = sub i64 %3389, 44
  %3391 = load i32, i32* %EAX.i421
  %3392 = zext i32 %3391 to i64
  %3393 = load i64, i64* %PC.i420
  %3394 = add i64 %3393, 3
  store i64 %3394, i64* %PC.i420
  %3395 = inttoptr i64 %3390 to i32*
  store i32 %3391, i32* %3395
  store %struct.Memory* %loadMem_411215, %struct.Memory** %MEMORY
  br label %block_.L_411218

block_.L_411218:                                  ; preds = %block_4111ac, %block_.L_41116c
  %loadMem_411218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 15
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %RBP.i419
  %3403 = sub i64 %3402, 32
  %3404 = load i64, i64* %PC.i418
  %3405 = add i64 %3404, 5
  store i64 %3405, i64* %PC.i418
  %3406 = inttoptr i64 %3403 to i64*
  %3407 = load i64, i64* %3406
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3408, align 1
  %3409 = trunc i64 %3407 to i32
  %3410 = and i32 %3409, 255
  %3411 = call i32 @llvm.ctpop.i32(i32 %3410)
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  %3414 = xor i8 %3413, 1
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3414, i8* %3415, align 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3416, align 1
  %3417 = icmp eq i64 %3407, 0
  %3418 = zext i1 %3417 to i8
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3418, i8* %3419, align 1
  %3420 = lshr i64 %3407, 63
  %3421 = trunc i64 %3420 to i8
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3421, i8* %3422, align 1
  %3423 = lshr i64 %3407, 63
  %3424 = xor i64 %3420, %3423
  %3425 = add i64 %3424, %3423
  %3426 = icmp eq i64 %3425, 2
  %3427 = zext i1 %3426 to i8
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3427, i8* %3428, align 1
  store %struct.Memory* %loadMem_411218, %struct.Memory** %MEMORY
  %loadMem_41121d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3431 to i64*
  %3432 = load i64, i64* %PC.i417
  %3433 = add i64 %3432, 594
  %3434 = load i64, i64* %PC.i417
  %3435 = add i64 %3434, 6
  %3436 = load i64, i64* %PC.i417
  %3437 = add i64 %3436, 6
  store i64 %3437, i64* %PC.i417
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3439 = load i8, i8* %3438, align 1
  store i8 %3439, i8* %BRANCH_TAKEN, align 1
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3441 = icmp ne i8 %3439, 0
  %3442 = select i1 %3441, i64 %3433, i64 %3435
  store i64 %3442, i64* %3440, align 8
  store %struct.Memory* %loadMem_41121d, %struct.Memory** %MEMORY
  %loadBr_41121d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41121d = icmp eq i8 %loadBr_41121d, 1
  br i1 %cmpBr_41121d, label %block_.L_41146f, label %block_411223

block_411223:                                     ; preds = %block_.L_411218
  %loadMem_411223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 1
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RBP.i416
  %3453 = sub i64 %3452, 16
  %3454 = load i64, i64* %PC.i414
  %3455 = add i64 %3454, 4
  store i64 %3455, i64* %PC.i414
  %3456 = inttoptr i64 %3453 to i64*
  %3457 = load i64, i64* %3456
  store i64 %3457, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_411223, %struct.Memory** %MEMORY
  %loadMem_411227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 1
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %3463 to i64*
  %3464 = load i64, i64* %RAX.i413
  %3465 = add i64 %3464, 8
  %3466 = load i64, i64* %PC.i412
  %3467 = add i64 %3466, 4
  store i64 %3467, i64* %PC.i412
  %3468 = inttoptr i64 %3465 to i64*
  %3469 = load i64, i64* %3468
  store i64 %3469, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_411227, %struct.Memory** %MEMORY
  %loadMem_41122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 5
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 15
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3478 to i64*
  %3479 = load i64, i64* %RBP.i411
  %3480 = sub i64 %3479, 36
  %3481 = load i64, i64* %PC.i409
  %3482 = add i64 %3481, 4
  store i64 %3482, i64* %PC.i409
  %3483 = inttoptr i64 %3480 to i32*
  %3484 = load i32, i32* %3483
  %3485 = sext i32 %3484 to i64
  store i64 %3485, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_41122b, %struct.Memory** %MEMORY
  %loadMem_41122f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 33
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 1
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 5
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 7
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RDX.i408 = bitcast %union.anon* %3497 to i64*
  %3498 = load i64, i64* %RAX.i406
  %3499 = load i64, i64* %RCX.i407
  %3500 = add i64 %3499, %3498
  %3501 = load i64, i64* %PC.i405
  %3502 = add i64 %3501, 4
  store i64 %3502, i64* %PC.i405
  %3503 = inttoptr i64 %3500 to i8*
  %3504 = load i8, i8* %3503
  %3505 = sext i8 %3504 to i64
  %3506 = and i64 %3505, 4294967295
  store i64 %3506, i64* %RDX.i408, align 8
  store %struct.Memory* %loadMem_41122f, %struct.Memory** %MEMORY
  %loadMem_411233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 7
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %EDX.i404 = bitcast %union.anon* %3512 to i32*
  %3513 = load i32, i32* %EDX.i404
  %3514 = zext i32 %3513 to i64
  %3515 = load i64, i64* %PC.i403
  %3516 = add i64 %3515, 3
  store i64 %3516, i64* %PC.i403
  %3517 = sub i32 %3513, 1
  %3518 = icmp ult i32 %3513, 1
  %3519 = zext i1 %3518 to i8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3519, i8* %3520, align 1
  %3521 = and i32 %3517, 255
  %3522 = call i32 @llvm.ctpop.i32(i32 %3521)
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  %3525 = xor i8 %3524, 1
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3525, i8* %3526, align 1
  %3527 = xor i64 1, %3514
  %3528 = trunc i64 %3527 to i32
  %3529 = xor i32 %3528, %3517
  %3530 = lshr i32 %3529, 4
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3532, i8* %3533, align 1
  %3534 = icmp eq i32 %3517, 0
  %3535 = zext i1 %3534 to i8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3535, i8* %3536, align 1
  %3537 = lshr i32 %3517, 31
  %3538 = trunc i32 %3537 to i8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3538, i8* %3539, align 1
  %3540 = lshr i32 %3513, 31
  %3541 = xor i32 %3537, %3540
  %3542 = add i32 %3541, %3540
  %3543 = icmp eq i32 %3542, 2
  %3544 = zext i1 %3543 to i8
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3544, i8* %3545, align 1
  store %struct.Memory* %loadMem_411233, %struct.Memory** %MEMORY
  %loadMem_411236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %PC.i402
  %3550 = add i64 %3549, 129
  %3551 = load i64, i64* %PC.i402
  %3552 = add i64 %3551, 6
  %3553 = load i64, i64* %PC.i402
  %3554 = add i64 %3553, 6
  store i64 %3554, i64* %PC.i402
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3556 = load i8, i8* %3555, align 1
  %3557 = icmp eq i8 %3556, 0
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %BRANCH_TAKEN, align 1
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3560 = select i1 %3557, i64 %3550, i64 %3552
  store i64 %3560, i64* %3559, align 8
  store %struct.Memory* %loadMem_411236, %struct.Memory** %MEMORY
  %loadBr_411236 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411236 = icmp eq i8 %loadBr_411236, 1
  br i1 %cmpBr_411236, label %block_.L_4112b7, label %block_41123c

block_41123c:                                     ; preds = %block_411223
  %loadMem_41123c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 33
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3563 to i64*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 9
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %RSI.i401 = bitcast %union.anon* %3566 to i64*
  %3567 = load i64, i64* %PC.i400
  %3568 = add i64 %3567, 10
  store i64 %3568, i64* %PC.i400
  store i64 ptrtoint (%G__0x45625c_type* @G__0x45625c to i64), i64* %RSI.i401, align 8
  store %struct.Memory* %loadMem_41123c, %struct.Memory** %MEMORY
  %loadMem_411246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 33
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 11
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %RDI.i398 = bitcast %union.anon* %3574 to i64*
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 15
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %3577 to i64*
  %3578 = load i64, i64* %RBP.i399
  %3579 = sub i64 %3578, 8
  %3580 = load i64, i64* %PC.i397
  %3581 = add i64 %3580, 4
  store i64 %3581, i64* %PC.i397
  %3582 = inttoptr i64 %3579 to i64*
  %3583 = load i64, i64* %3582
  store i64 %3583, i64* %RDI.i398, align 8
  store %struct.Memory* %loadMem_411246, %struct.Memory** %MEMORY
  %loadMem_41124a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 1
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %3589 to i64*
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 15
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %3592 to i64*
  %3593 = load i64, i64* %RBP.i396
  %3594 = sub i64 %3593, 24
  %3595 = load i64, i64* %PC.i394
  %3596 = add i64 %3595, 4
  store i64 %3596, i64* %PC.i394
  %3597 = inttoptr i64 %3594 to i64*
  %3598 = load i64, i64* %3597
  store i64 %3598, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_41124a, %struct.Memory** %MEMORY
  %loadMem_41124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 33
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %3601 to i64*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 1
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RAX.i393
  %3606 = add i64 %3605, 320
  %3607 = load i64, i64* %PC.i392
  %3608 = add i64 %3607, 7
  store i64 %3608, i64* %PC.i392
  %3609 = inttoptr i64 %3606 to i64*
  %3610 = load i64, i64* %3609
  store i64 %3610, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_41124e, %struct.Memory** %MEMORY
  %loadMem_411255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 5
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %3616 to i64*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 15
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %3619 to i64*
  %3620 = load i64, i64* %RBP.i391
  %3621 = sub i64 %3620, 40
  %3622 = load i64, i64* %PC.i389
  %3623 = add i64 %3622, 4
  store i64 %3623, i64* %PC.i389
  %3624 = inttoptr i64 %3621 to i32*
  %3625 = load i32, i32* %3624
  %3626 = sext i32 %3625 to i64
  store i64 %3626, i64* %RCX.i390, align 8
  store %struct.Memory* %loadMem_411255, %struct.Memory** %MEMORY
  %loadMem_411259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 33
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 1
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 5
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %RAX.i387
  %3637 = load i64, i64* %RCX.i388
  %3638 = mul i64 %3637, 8
  %3639 = add i64 %3638, %3636
  %3640 = load i64, i64* %PC.i386
  %3641 = add i64 %3640, 4
  store i64 %3641, i64* %PC.i386
  %3642 = inttoptr i64 %3639 to i64*
  %3643 = load i64, i64* %3642
  store i64 %3643, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_411259, %struct.Memory** %MEMORY
  %loadMem_41125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 5
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 15
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %3652 to i64*
  %3653 = load i64, i64* %RBP.i385
  %3654 = sub i64 %3653, 16
  %3655 = load i64, i64* %PC.i383
  %3656 = add i64 %3655, 4
  store i64 %3656, i64* %PC.i383
  %3657 = inttoptr i64 %3654 to i64*
  %3658 = load i64, i64* %3657
  store i64 %3658, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_41125d, %struct.Memory** %MEMORY
  %loadMem_411261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 5
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %3664 to i64*
  %3665 = load i64, i64* %RCX.i382
  %3666 = add i64 %3665, 16
  %3667 = load i64, i64* %PC.i381
  %3668 = add i64 %3667, 4
  store i64 %3668, i64* %PC.i381
  %3669 = inttoptr i64 %3666 to i64*
  %3670 = load i64, i64* %3669
  store i64 %3670, i64* %RCX.i382, align 8
  store %struct.Memory* %loadMem_411261, %struct.Memory** %MEMORY
  %loadMem_411265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 7
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RDX.i379 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 15
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %RBP.i380
  %3681 = sub i64 %3680, 36
  %3682 = load i64, i64* %PC.i378
  %3683 = add i64 %3682, 4
  store i64 %3683, i64* %PC.i378
  %3684 = inttoptr i64 %3681 to i32*
  %3685 = load i32, i32* %3684
  %3686 = sext i32 %3685 to i64
  store i64 %3686, i64* %RDX.i379, align 8
  store %struct.Memory* %loadMem_411265, %struct.Memory** %MEMORY
  %loadMem_411269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 5
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 7
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RDX.i377 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %RCX.i376
  %3697 = load i64, i64* %RDX.i377
  %3698 = mul i64 %3697, 4
  %3699 = add i64 %3698, %3696
  %3700 = load i64, i64* %PC.i375
  %3701 = add i64 %3700, 4
  store i64 %3701, i64* %PC.i375
  %3702 = inttoptr i64 %3699 to i32*
  %3703 = load i32, i32* %3702
  %3704 = sext i32 %3703 to i64
  store i64 %3704, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_411269, %struct.Memory** %MEMORY
  %loadMem_41126d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 1
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 5
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RCX.i373 = bitcast %union.anon* %3713 to i64*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 7
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %3716 to i64*
  %3717 = load i64, i64* %RAX.i372
  %3718 = load i64, i64* %RCX.i373
  %3719 = mul i64 %3718, 4
  %3720 = add i64 %3719, %3717
  %3721 = load i64, i64* %PC.i371
  %3722 = add i64 %3721, 3
  store i64 %3722, i64* %PC.i371
  %3723 = inttoptr i64 %3720 to i32*
  %3724 = load i32, i32* %3723
  %3725 = zext i32 %3724 to i64
  store i64 %3725, i64* %RDX.i374, align 8
  store %struct.Memory* %loadMem_41126d, %struct.Memory** %MEMORY
  %loadMem_411270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 1
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 15
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %3734 to i64*
  %3735 = load i64, i64* %RBP.i370
  %3736 = sub i64 %3735, 40
  %3737 = load i64, i64* %PC.i368
  %3738 = add i64 %3737, 4
  store i64 %3738, i64* %PC.i368
  %3739 = inttoptr i64 %3736 to i32*
  %3740 = load i32, i32* %3739
  %3741 = sext i32 %3740 to i64
  store i64 %3741, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_411270, %struct.Memory** %MEMORY
  %loadMem_411274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 33
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 1
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 5
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %3750 to i64*
  %3751 = load i64, i64* %RAX.i366
  %3752 = add i64 %3751, 6778848
  %3753 = load i64, i64* %PC.i365
  %3754 = add i64 %3753, 8
  store i64 %3754, i64* %PC.i365
  %3755 = inttoptr i64 %3752 to i8*
  %3756 = load i8, i8* %3755
  %3757 = sext i8 %3756 to i64
  %3758 = and i64 %3757, 4294967295
  store i64 %3758, i64* %RCX.i367, align 8
  store %struct.Memory* %loadMem_411274, %struct.Memory** %MEMORY
  %loadMem_41127c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 1
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %3765 = bitcast %union.anon* %3764 to %struct.anon.2*
  %AL.i364 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3765, i32 0, i32 0
  %3766 = load i64, i64* %PC.i363
  %3767 = add i64 %3766, 2
  store i64 %3767, i64* %PC.i363
  store i8 0, i8* %AL.i364, align 1
  store %struct.Memory* %loadMem_41127c, %struct.Memory** %MEMORY
  %loadMem1_41127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %PC.i362
  %3772 = add i64 %3771, -64782
  %3773 = load i64, i64* %PC.i362
  %3774 = add i64 %3773, 5
  %3775 = load i64, i64* %PC.i362
  %3776 = add i64 %3775, 5
  store i64 %3776, i64* %PC.i362
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3778 = load i64, i64* %3777, align 8
  %3779 = add i64 %3778, -8
  %3780 = inttoptr i64 %3779 to i64*
  store i64 %3774, i64* %3780
  store i64 %3779, i64* %3777, align 8
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3772, i64* %3781, align 8
  store %struct.Memory* %loadMem1_41127e, %struct.Memory** %MEMORY
  %loadMem2_41127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41127e = load i64, i64* %3
  %3782 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41127e)
  store %struct.Memory* %3782, %struct.Memory** %MEMORY
  %loadMem_411283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 9
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RSI.i358 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 15
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %3791 to i64*
  %3792 = load i64, i64* %RBP.i359
  %3793 = sub i64 %3792, 24
  %3794 = load i64, i64* %PC.i357
  %3795 = add i64 %3794, 4
  store i64 %3795, i64* %PC.i357
  %3796 = inttoptr i64 %3793 to i64*
  %3797 = load i64, i64* %3796
  store i64 %3797, i64* %RSI.i358, align 8
  store %struct.Memory* %loadMem_411283, %struct.Memory** %MEMORY
  %loadMem_411287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 9
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RSI.i356 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %RSI.i356
  %3805 = add i64 %3804, 320
  %3806 = load i64, i64* %PC.i355
  %3807 = add i64 %3806, 7
  store i64 %3807, i64* %PC.i355
  %3808 = inttoptr i64 %3805 to i64*
  %3809 = load i64, i64* %3808
  store i64 %3809, i64* %RSI.i356, align 8
  store %struct.Memory* %loadMem_411287, %struct.Memory** %MEMORY
  %loadMem_41128e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 33
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3812 to i64*
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3814 = getelementptr inbounds %struct.GPR, %struct.GPR* %3813, i32 0, i32 11
  %3815 = getelementptr inbounds %struct.Reg, %struct.Reg* %3814, i32 0, i32 0
  %RDI.i353 = bitcast %union.anon* %3815 to i64*
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 15
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %RBP.i354
  %3820 = sub i64 %3819, 40
  %3821 = load i64, i64* %PC.i352
  %3822 = add i64 %3821, 4
  store i64 %3822, i64* %PC.i352
  %3823 = inttoptr i64 %3820 to i32*
  %3824 = load i32, i32* %3823
  %3825 = sext i32 %3824 to i64
  store i64 %3825, i64* %RDI.i353, align 8
  store %struct.Memory* %loadMem_41128e, %struct.Memory** %MEMORY
  %loadMem_411292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 33
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 9
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RSI.i350 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 11
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %RDI.i351 = bitcast %union.anon* %3834 to i64*
  %3835 = load i64, i64* %RSI.i350
  %3836 = load i64, i64* %RDI.i351
  %3837 = mul i64 %3836, 8
  %3838 = add i64 %3837, %3835
  %3839 = load i64, i64* %PC.i349
  %3840 = add i64 %3839, 4
  store i64 %3840, i64* %PC.i349
  %3841 = inttoptr i64 %3838 to i64*
  %3842 = load i64, i64* %3841
  store i64 %3842, i64* %RSI.i350, align 8
  store %struct.Memory* %loadMem_411292, %struct.Memory** %MEMORY
  %loadMem_411296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 33
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3845 to i64*
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 11
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %RDI.i347 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 15
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %3851 to i64*
  %3852 = load i64, i64* %RBP.i348
  %3853 = sub i64 %3852, 16
  %3854 = load i64, i64* %PC.i346
  %3855 = add i64 %3854, 4
  store i64 %3855, i64* %PC.i346
  %3856 = inttoptr i64 %3853 to i64*
  %3857 = load i64, i64* %3856
  store i64 %3857, i64* %RDI.i347, align 8
  store %struct.Memory* %loadMem_411296, %struct.Memory** %MEMORY
  %loadMem_41129a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3859 = getelementptr inbounds %struct.GPR, %struct.GPR* %3858, i32 0, i32 33
  %3860 = getelementptr inbounds %struct.Reg, %struct.Reg* %3859, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3860 to i64*
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 11
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %RDI.i345 = bitcast %union.anon* %3863 to i64*
  %3864 = load i64, i64* %RDI.i345
  %3865 = add i64 %3864, 16
  %3866 = load i64, i64* %PC.i344
  %3867 = add i64 %3866, 4
  store i64 %3867, i64* %PC.i344
  %3868 = inttoptr i64 %3865 to i64*
  %3869 = load i64, i64* %3868
  store i64 %3869, i64* %RDI.i345, align 8
  store %struct.Memory* %loadMem_41129a, %struct.Memory** %MEMORY
  %loadMem_41129e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 33
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %3872 to i64*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 15
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3875 to i64*
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 17
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %R8.i343 = bitcast %union.anon* %3878 to i64*
  %3879 = load i64, i64* %RBP.i342
  %3880 = sub i64 %3879, 36
  %3881 = load i64, i64* %PC.i341
  %3882 = add i64 %3881, 4
  store i64 %3882, i64* %PC.i341
  %3883 = inttoptr i64 %3880 to i32*
  %3884 = load i32, i32* %3883
  %3885 = sext i32 %3884 to i64
  store i64 %3885, i64* %R8.i343, align 8
  store %struct.Memory* %loadMem_41129e, %struct.Memory** %MEMORY
  %loadMem_4112a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 11
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RDI.i340 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 17
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3894 to i64*
  %3895 = load i64, i64* %RDI.i340
  %3896 = load i64, i64* %R8.i
  %3897 = mul i64 %3896, 4
  %3898 = add i64 %3897, %3895
  %3899 = load i64, i64* %PC.i339
  %3900 = add i64 %3899, 4
  store i64 %3900, i64* %PC.i339
  %3901 = inttoptr i64 %3898 to i32*
  %3902 = load i32, i32* %3901
  %3903 = sext i32 %3902 to i64
  store i64 %3903, i64* %RDI.i340, align 8
  store %struct.Memory* %loadMem_4112a2, %struct.Memory** %MEMORY
  %loadMem_4112a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 5
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 9
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %RSI.i337 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 11
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RDI.i338 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %RSI.i337
  %3917 = load i64, i64* %RDI.i338
  %3918 = mul i64 %3917, 4
  %3919 = add i64 %3918, %3916
  %3920 = load i64, i64* %PC.i335
  %3921 = add i64 %3920, 3
  store i64 %3921, i64* %PC.i335
  %3922 = inttoptr i64 %3919 to i32*
  %3923 = load i32, i32* %3922
  %3924 = zext i32 %3923 to i64
  store i64 %3924, i64* %RCX.i336, align 8
  store %struct.Memory* %loadMem_4112a6, %struct.Memory** %MEMORY
  %loadMem_4112a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 33
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %3927 to i64*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 5
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 15
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %3933 to i64*
  %3934 = load i64, i64* %RCX.i333
  %3935 = load i64, i64* %RBP.i334
  %3936 = sub i64 %3935, 44
  %3937 = load i64, i64* %PC.i332
  %3938 = add i64 %3937, 3
  store i64 %3938, i64* %PC.i332
  %3939 = trunc i64 %3934 to i32
  %3940 = inttoptr i64 %3936 to i32*
  %3941 = load i32, i32* %3940
  %3942 = add i32 %3941, %3939
  %3943 = zext i32 %3942 to i64
  store i64 %3943, i64* %RCX.i333, align 8
  %3944 = icmp ult i32 %3942, %3939
  %3945 = icmp ult i32 %3942, %3941
  %3946 = or i1 %3944, %3945
  %3947 = zext i1 %3946 to i8
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3947, i8* %3948, align 1
  %3949 = and i32 %3942, 255
  %3950 = call i32 @llvm.ctpop.i32(i32 %3949)
  %3951 = trunc i32 %3950 to i8
  %3952 = and i8 %3951, 1
  %3953 = xor i8 %3952, 1
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3953, i8* %3954, align 1
  %3955 = xor i32 %3941, %3939
  %3956 = xor i32 %3955, %3942
  %3957 = lshr i32 %3956, 4
  %3958 = trunc i32 %3957 to i8
  %3959 = and i8 %3958, 1
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3959, i8* %3960, align 1
  %3961 = icmp eq i32 %3942, 0
  %3962 = zext i1 %3961 to i8
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3962, i8* %3963, align 1
  %3964 = lshr i32 %3942, 31
  %3965 = trunc i32 %3964 to i8
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3965, i8* %3966, align 1
  %3967 = lshr i32 %3939, 31
  %3968 = lshr i32 %3941, 31
  %3969 = xor i32 %3964, %3967
  %3970 = xor i32 %3964, %3968
  %3971 = add i32 %3969, %3970
  %3972 = icmp eq i32 %3971, 2
  %3973 = zext i1 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3973, i8* %3974, align 1
  store %struct.Memory* %loadMem_4112a9, %struct.Memory** %MEMORY
  %loadMem_4112ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 33
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 5
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %ECX.i330 = bitcast %union.anon* %3980 to i32*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 15
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %3983 to i64*
  %3984 = load i64, i64* %RBP.i331
  %3985 = sub i64 %3984, 44
  %3986 = load i32, i32* %ECX.i330
  %3987 = zext i32 %3986 to i64
  %3988 = load i64, i64* %PC.i329
  %3989 = add i64 %3988, 3
  store i64 %3989, i64* %PC.i329
  %3990 = inttoptr i64 %3985 to i32*
  store i32 %3986, i32* %3990
  store %struct.Memory* %loadMem_4112ac, %struct.Memory** %MEMORY
  %loadMem_4112af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 1
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %3996 to i32*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 15
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %3999 to i64*
  %4000 = load i64, i64* %RBP.i328
  %4001 = sub i64 %4000, 124
  %4002 = load i32, i32* %EAX.i327
  %4003 = zext i32 %4002 to i64
  %4004 = load i64, i64* %PC.i326
  %4005 = add i64 %4004, 3
  store i64 %4005, i64* %PC.i326
  %4006 = inttoptr i64 %4001 to i32*
  store i32 %4002, i32* %4006
  store %struct.Memory* %loadMem_4112af, %struct.Memory** %MEMORY
  %loadMem_4112b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %PC.i325
  %4011 = add i64 %4010, 440
  %4012 = load i64, i64* %PC.i325
  %4013 = add i64 %4012, 5
  store i64 %4013, i64* %PC.i325
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4011, i64* %4014, align 8
  store %struct.Memory* %loadMem_4112b2, %struct.Memory** %MEMORY
  br label %block_.L_41146a

block_.L_4112b7:                                  ; preds = %block_411223
  %loadMem_4112b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 33
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 1
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 15
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %4023 to i64*
  %4024 = load i64, i64* %RBP.i324
  %4025 = sub i64 %4024, 16
  %4026 = load i64, i64* %PC.i322
  %4027 = add i64 %4026, 4
  store i64 %4027, i64* %PC.i322
  %4028 = inttoptr i64 %4025 to i64*
  %4029 = load i64, i64* %4028
  store i64 %4029, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_4112b7, %struct.Memory** %MEMORY
  %loadMem_4112bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 1
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %4035 to i64*
  %4036 = load i64, i64* %RAX.i321
  %4037 = add i64 %4036, 8
  %4038 = load i64, i64* %PC.i320
  %4039 = add i64 %4038, 4
  store i64 %4039, i64* %PC.i320
  %4040 = inttoptr i64 %4037 to i64*
  %4041 = load i64, i64* %4040
  store i64 %4041, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_4112bb, %struct.Memory** %MEMORY
  %loadMem_4112bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 5
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 15
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RBP.i319
  %4052 = sub i64 %4051, 36
  %4053 = load i64, i64* %PC.i317
  %4054 = add i64 %4053, 4
  store i64 %4054, i64* %PC.i317
  %4055 = inttoptr i64 %4052 to i32*
  %4056 = load i32, i32* %4055
  %4057 = sext i32 %4056 to i64
  store i64 %4057, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_4112bf, %struct.Memory** %MEMORY
  %loadMem_4112c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 1
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 5
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 7
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %4069 to i64*
  %4070 = load i64, i64* %RAX.i314
  %4071 = load i64, i64* %RCX.i315
  %4072 = add i64 %4071, %4070
  %4073 = load i64, i64* %PC.i313
  %4074 = add i64 %4073, 4
  store i64 %4074, i64* %PC.i313
  %4075 = inttoptr i64 %4072 to i8*
  %4076 = load i8, i8* %4075
  %4077 = sext i8 %4076 to i64
  %4078 = and i64 %4077, 4294967295
  store i64 %4078, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_4112c3, %struct.Memory** %MEMORY
  %loadMem_4112c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 7
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %EDX.i312 = bitcast %union.anon* %4084 to i32*
  %4085 = load i32, i32* %EDX.i312
  %4086 = zext i32 %4085 to i64
  %4087 = load i64, i64* %PC.i311
  %4088 = add i64 %4087, 3
  store i64 %4088, i64* %PC.i311
  %4089 = sub i32 %4085, 3
  %4090 = icmp ult i32 %4085, 3
  %4091 = zext i1 %4090 to i8
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4091, i8* %4092, align 1
  %4093 = and i32 %4089, 255
  %4094 = call i32 @llvm.ctpop.i32(i32 %4093)
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = xor i8 %4096, 1
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4097, i8* %4098, align 1
  %4099 = xor i64 3, %4086
  %4100 = trunc i64 %4099 to i32
  %4101 = xor i32 %4100, %4089
  %4102 = lshr i32 %4101, 4
  %4103 = trunc i32 %4102 to i8
  %4104 = and i8 %4103, 1
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4104, i8* %4105, align 1
  %4106 = icmp eq i32 %4089, 0
  %4107 = zext i1 %4106 to i8
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4107, i8* %4108, align 1
  %4109 = lshr i32 %4089, 31
  %4110 = trunc i32 %4109 to i8
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4110, i8* %4111, align 1
  %4112 = lshr i32 %4085, 31
  %4113 = xor i32 %4109, %4112
  %4114 = add i32 %4113, %4112
  %4115 = icmp eq i32 %4114, 2
  %4116 = zext i1 %4115 to i8
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4116, i8* %4117, align 1
  store %struct.Memory* %loadMem_4112c7, %struct.Memory** %MEMORY
  %loadMem_4112ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %PC.i310
  %4122 = add i64 %4121, 172
  %4123 = load i64, i64* %PC.i310
  %4124 = add i64 %4123, 6
  %4125 = load i64, i64* %PC.i310
  %4126 = add i64 %4125, 6
  store i64 %4126, i64* %PC.i310
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4128 = load i8, i8* %4127, align 1
  %4129 = icmp eq i8 %4128, 0
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %BRANCH_TAKEN, align 1
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4132 = select i1 %4129, i64 %4122, i64 %4124
  store i64 %4132, i64* %4131, align 8
  store %struct.Memory* %loadMem_4112ca, %struct.Memory** %MEMORY
  %loadBr_4112ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4112ca = icmp eq i8 %loadBr_4112ca, 1
  br i1 %cmpBr_4112ca, label %block_.L_411376, label %block_4112d0

block_4112d0:                                     ; preds = %block_.L_4112b7
  %loadMem_4112d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 11
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RDI.i308 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 15
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RBP.i309
  %4143 = sub i64 %4142, 8
  %4144 = load i64, i64* %PC.i307
  %4145 = add i64 %4144, 4
  store i64 %4145, i64* %PC.i307
  %4146 = inttoptr i64 %4143 to i64*
  %4147 = load i64, i64* %4146
  store i64 %4147, i64* %RDI.i308, align 8
  store %struct.Memory* %loadMem_4112d0, %struct.Memory** %MEMORY
  %loadMem_4112d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 1
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 15
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %RBP.i306
  %4158 = sub i64 %4157, 24
  %4159 = load i64, i64* %PC.i304
  %4160 = add i64 %4159, 4
  store i64 %4160, i64* %PC.i304
  %4161 = inttoptr i64 %4158 to i64*
  %4162 = load i64, i64* %4161
  store i64 %4162, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_4112d4, %struct.Memory** %MEMORY
  %loadMem_4112d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 1
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %4168 to i64*
  %4169 = load i64, i64* %RAX.i303
  %4170 = add i64 %4169, 328
  %4171 = load i64, i64* %PC.i302
  %4172 = add i64 %4171, 7
  store i64 %4172, i64* %PC.i302
  %4173 = inttoptr i64 %4170 to i64*
  %4174 = load i64, i64* %4173
  store i64 %4174, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_4112d8, %struct.Memory** %MEMORY
  %loadMem_4112df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 33
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 5
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 15
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %RBP.i301
  %4185 = sub i64 %4184, 40
  %4186 = load i64, i64* %PC.i299
  %4187 = add i64 %4186, 4
  store i64 %4187, i64* %PC.i299
  %4188 = inttoptr i64 %4185 to i32*
  %4189 = load i32, i32* %4188
  %4190 = sext i32 %4189 to i64
  store i64 %4190, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_4112df, %struct.Memory** %MEMORY
  %loadMem_4112e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 33
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 1
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 5
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %4199 to i64*
  %4200 = load i64, i64* %RAX.i297
  %4201 = load i64, i64* %RCX.i298
  %4202 = mul i64 %4201, 8
  %4203 = add i64 %4202, %4200
  %4204 = load i64, i64* %PC.i296
  %4205 = add i64 %4204, 4
  store i64 %4205, i64* %PC.i296
  %4206 = inttoptr i64 %4203 to i64*
  %4207 = load i64, i64* %4206
  store i64 %4207, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_4112e3, %struct.Memory** %MEMORY
  %loadMem_4112e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 33
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4210 to i64*
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 5
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 15
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %4216 to i64*
  %4217 = load i64, i64* %RBP.i295
  %4218 = sub i64 %4217, 16
  %4219 = load i64, i64* %PC.i293
  %4220 = add i64 %4219, 4
  store i64 %4220, i64* %PC.i293
  %4221 = inttoptr i64 %4218 to i64*
  %4222 = load i64, i64* %4221
  store i64 %4222, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_4112e7, %struct.Memory** %MEMORY
  %loadMem_4112eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 33
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4225 to i64*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 5
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %4228 to i64*
  %4229 = load i64, i64* %RCX.i292
  %4230 = add i64 %4229, 16
  %4231 = load i64, i64* %PC.i291
  %4232 = add i64 %4231, 4
  store i64 %4232, i64* %PC.i291
  %4233 = inttoptr i64 %4230 to i64*
  %4234 = load i64, i64* %4233
  store i64 %4234, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_4112eb, %struct.Memory** %MEMORY
  %loadMem_4112ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 7
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RDX.i289 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 15
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %RBP.i290
  %4245 = sub i64 %4244, 36
  %4246 = load i64, i64* %PC.i288
  %4247 = add i64 %4246, 4
  store i64 %4247, i64* %PC.i288
  %4248 = inttoptr i64 %4245 to i32*
  %4249 = load i32, i32* %4248
  %4250 = sext i32 %4249 to i64
  store i64 %4250, i64* %RDX.i289, align 8
  store %struct.Memory* %loadMem_4112ef, %struct.Memory** %MEMORY
  %loadMem_4112f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 5
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 7
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RDX.i287 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RCX.i286
  %4261 = load i64, i64* %RDX.i287
  %4262 = mul i64 %4261, 4
  %4263 = add i64 %4262, %4260
  %4264 = load i64, i64* %PC.i285
  %4265 = add i64 %4264, 4
  store i64 %4265, i64* %PC.i285
  %4266 = inttoptr i64 %4263 to i32*
  %4267 = load i32, i32* %4266
  %4268 = sext i32 %4267 to i64
  store i64 %4268, i64* %RCX.i286, align 8
  store %struct.Memory* %loadMem_4112f3, %struct.Memory** %MEMORY
  %loadMem_4112f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 1
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 5
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %4277 to i64*
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 7
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %RAX.i282
  %4282 = load i64, i64* %RCX.i283
  %4283 = mul i64 %4282, 4
  %4284 = add i64 %4283, %4281
  %4285 = load i64, i64* %PC.i281
  %4286 = add i64 %4285, 3
  store i64 %4286, i64* %PC.i281
  %4287 = inttoptr i64 %4284 to i32*
  %4288 = load i32, i32* %4287
  %4289 = zext i32 %4288 to i64
  store i64 %4289, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_4112f7, %struct.Memory** %MEMORY
  %loadMem_4112fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 33
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4292 to i64*
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 1
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 15
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4298 to i64*
  %4299 = load i64, i64* %RBP.i280
  %4300 = sub i64 %4299, 40
  %4301 = load i64, i64* %PC.i278
  %4302 = add i64 %4301, 4
  store i64 %4302, i64* %PC.i278
  %4303 = inttoptr i64 %4300 to i32*
  %4304 = load i32, i32* %4303
  %4305 = sext i32 %4304 to i64
  store i64 %4305, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_4112fa, %struct.Memory** %MEMORY
  %loadMem_4112fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 33
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4308 to i64*
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 1
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 9
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RSI.i277 = bitcast %union.anon* %4314 to i64*
  %4315 = load i64, i64* %RAX.i276
  %4316 = add i64 %4315, 6778848
  %4317 = load i64, i64* %PC.i275
  %4318 = add i64 %4317, 8
  store i64 %4318, i64* %PC.i275
  %4319 = inttoptr i64 %4316 to i8*
  %4320 = load i8, i8* %4319
  %4321 = sext i8 %4320 to i64
  %4322 = and i64 %4321, 4294967295
  store i64 %4322, i64* %RSI.i277, align 8
  store %struct.Memory* %loadMem_4112fe, %struct.Memory** %MEMORY
  %loadMem_411306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 11
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %RDI.i273 = bitcast %union.anon* %4328 to i64*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 15
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %4331 to i64*
  %4332 = load i64, i64* %RBP.i274
  %4333 = sub i64 %4332, 136
  %4334 = load i64, i64* %RDI.i273
  %4335 = load i64, i64* %PC.i272
  %4336 = add i64 %4335, 7
  store i64 %4336, i64* %PC.i272
  %4337 = inttoptr i64 %4333 to i64*
  store i64 %4334, i64* %4337
  store %struct.Memory* %loadMem_411306, %struct.Memory** %MEMORY
  %loadMem_41130d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 33
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4340 to i64*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 9
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4343 to i32*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 11
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RDI.i271 = bitcast %union.anon* %4346 to i64*
  %4347 = load i32, i32* %ESI.i
  %4348 = zext i32 %4347 to i64
  %4349 = load i64, i64* %PC.i270
  %4350 = add i64 %4349, 2
  store i64 %4350, i64* %PC.i270
  %4351 = and i64 %4348, 4294967295
  store i64 %4351, i64* %RDI.i271, align 8
  store %struct.Memory* %loadMem_41130d, %struct.Memory** %MEMORY
  %loadMem_41130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 7
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %EDX.i268 = bitcast %union.anon* %4357 to i32*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 15
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %RBP.i269
  %4362 = sub i64 %4361, 140
  %4363 = load i32, i32* %EDX.i268
  %4364 = zext i32 %4363 to i64
  %4365 = load i64, i64* %PC.i267
  %4366 = add i64 %4365, 6
  store i64 %4366, i64* %PC.i267
  %4367 = inttoptr i64 %4362 to i32*
  store i32 %4363, i32* %4367
  store %struct.Memory* %loadMem_41130f, %struct.Memory** %MEMORY
  %loadMem1_411315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4370 to i64*
  %4371 = load i64, i64* %PC.i266
  %4372 = add i64 %4371, -64853
  %4373 = load i64, i64* %PC.i266
  %4374 = add i64 %4373, 5
  %4375 = load i64, i64* %PC.i266
  %4376 = add i64 %4375, 5
  store i64 %4376, i64* %PC.i266
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4378 = load i64, i64* %4377, align 8
  %4379 = add i64 %4378, -8
  %4380 = inttoptr i64 %4379 to i64*
  store i64 %4374, i64* %4380
  store i64 %4379, i64* %4377, align 8
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4372, i64* %4381, align 8
  store %struct.Memory* %loadMem1_411315, %struct.Memory** %MEMORY
  %loadMem2_411315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411315 = load i64, i64* %3
  %call2_411315 = call %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* %0, i64 %loadPC_411315, %struct.Memory* %loadMem2_411315)
  store %struct.Memory* %call2_411315, %struct.Memory** %MEMORY
  %loadMem_41131a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 33
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %4384 to i64*
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 9
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %RSI.i265 = bitcast %union.anon* %4387 to i64*
  %4388 = load i64, i64* %PC.i264
  %4389 = add i64 %4388, 10
  store i64 %4389, i64* %PC.i264
  store i64 ptrtoint (%G__0x45625c_type* @G__0x45625c to i64), i64* %RSI.i265, align 8
  store %struct.Memory* %loadMem_41131a, %struct.Memory** %MEMORY
  %loadMem_411324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 33
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 1
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %4396 = bitcast %union.anon* %4395 to %struct.anon.2*
  %AL.i262 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4396, i32 0, i32 0
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 17
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %4400 = bitcast %union.anon* %4399 to %struct.anon.2*
  %R8B.i263 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4400, i32 0, i32 0
  %4401 = load i8, i8* %AL.i262
  %4402 = zext i8 %4401 to i64
  %4403 = load i64, i64* %PC.i261
  %4404 = add i64 %4403, 3
  store i64 %4404, i64* %PC.i261
  store i8 %4401, i8* %R8B.i263, align 1
  store %struct.Memory* %loadMem_411324, %struct.Memory** %MEMORY
  %loadMem_411327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 33
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4407 to i64*
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 17
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %4411 = bitcast %union.anon* %4410 to %struct.anon.2*
  %R8B.i259 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4411, i32 0, i32 0
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 5
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %4414 to i64*
  %4415 = load i8, i8* %R8B.i259
  %4416 = zext i8 %4415 to i64
  %4417 = load i64, i64* %PC.i258
  %4418 = add i64 %4417, 4
  store i64 %4418, i64* %PC.i258
  %4419 = trunc i64 %4416 to i32
  %4420 = shl i32 %4419, 24
  %4421 = ashr exact i32 %4420, 24
  %4422 = zext i32 %4421 to i64
  store i64 %4422, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_411327, %struct.Memory** %MEMORY
  %loadMem_41132b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 11
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RDI.i256 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 15
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RBP.i257
  %4433 = sub i64 %4432, 136
  %4434 = load i64, i64* %PC.i255
  %4435 = add i64 %4434, 7
  store i64 %4435, i64* %PC.i255
  %4436 = inttoptr i64 %4433 to i64*
  %4437 = load i64, i64* %4436
  store i64 %4437, i64* %RDI.i256, align 8
  store %struct.Memory* %loadMem_41132b, %struct.Memory** %MEMORY
  %loadMem_411332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 33
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 7
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %4443 to i64*
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 15
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %4446 to i64*
  %4447 = load i64, i64* %RBP.i254
  %4448 = sub i64 %4447, 140
  %4449 = load i64, i64* %PC.i252
  %4450 = add i64 %4449, 6
  store i64 %4450, i64* %PC.i252
  %4451 = inttoptr i64 %4448 to i32*
  %4452 = load i32, i32* %4451
  %4453 = zext i32 %4452 to i64
  store i64 %4453, i64* %RDX.i253, align 8
  store %struct.Memory* %loadMem_411332, %struct.Memory** %MEMORY
  %loadMem_411338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 1
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %4460 = bitcast %union.anon* %4459 to %struct.anon.2*
  %AL.i251 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4460, i32 0, i32 0
  %4461 = load i64, i64* %PC.i250
  %4462 = add i64 %4461, 2
  store i64 %4462, i64* %PC.i250
  store i8 0, i8* %AL.i251, align 1
  store %struct.Memory* %loadMem_411338, %struct.Memory** %MEMORY
  %loadMem1_41133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 33
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %4465 to i64*
  %4466 = load i64, i64* %PC.i249
  %4467 = add i64 %4466, -64970
  %4468 = load i64, i64* %PC.i249
  %4469 = add i64 %4468, 5
  %4470 = load i64, i64* %PC.i249
  %4471 = add i64 %4470, 5
  store i64 %4471, i64* %PC.i249
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4473 = load i64, i64* %4472, align 8
  %4474 = add i64 %4473, -8
  %4475 = inttoptr i64 %4474 to i64*
  store i64 %4469, i64* %4475
  store i64 %4474, i64* %4472, align 8
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4467, i64* %4476, align 8
  store %struct.Memory* %loadMem1_41133a, %struct.Memory** %MEMORY
  %loadMem2_41133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41133a = load i64, i64* %3
  %4477 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41133a)
  store %struct.Memory* %4477, %struct.Memory** %MEMORY
  %loadMem_41133f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 33
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4480 to i64*
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 9
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %RSI.i244 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 15
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %4486 to i64*
  %4487 = load i64, i64* %RBP.i245
  %4488 = sub i64 %4487, 24
  %4489 = load i64, i64* %PC.i243
  %4490 = add i64 %4489, 4
  store i64 %4490, i64* %PC.i243
  %4491 = inttoptr i64 %4488 to i64*
  %4492 = load i64, i64* %4491
  store i64 %4492, i64* %RSI.i244, align 8
  store %struct.Memory* %loadMem_41133f, %struct.Memory** %MEMORY
  %loadMem_411343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 33
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 9
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RSI.i242 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RSI.i242
  %4500 = add i64 %4499, 328
  %4501 = load i64, i64* %PC.i241
  %4502 = add i64 %4501, 7
  store i64 %4502, i64* %PC.i241
  %4503 = inttoptr i64 %4500 to i64*
  %4504 = load i64, i64* %4503
  store i64 %4504, i64* %RSI.i242, align 8
  store %struct.Memory* %loadMem_411343, %struct.Memory** %MEMORY
  %loadMem_41134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 33
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 11
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %RDI.i239 = bitcast %union.anon* %4510 to i64*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 15
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %4513 to i64*
  %4514 = load i64, i64* %RBP.i240
  %4515 = sub i64 %4514, 40
  %4516 = load i64, i64* %PC.i238
  %4517 = add i64 %4516, 4
  store i64 %4517, i64* %PC.i238
  %4518 = inttoptr i64 %4515 to i32*
  %4519 = load i32, i32* %4518
  %4520 = sext i32 %4519 to i64
  store i64 %4520, i64* %RDI.i239, align 8
  store %struct.Memory* %loadMem_41134a, %struct.Memory** %MEMORY
  %loadMem_41134e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 9
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 11
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RDI.i237 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RSI.i236
  %4531 = load i64, i64* %RDI.i237
  %4532 = mul i64 %4531, 8
  %4533 = add i64 %4532, %4530
  %4534 = load i64, i64* %PC.i235
  %4535 = add i64 %4534, 4
  store i64 %4535, i64* %PC.i235
  %4536 = inttoptr i64 %4533 to i64*
  %4537 = load i64, i64* %4536
  store i64 %4537, i64* %RSI.i236, align 8
  store %struct.Memory* %loadMem_41134e, %struct.Memory** %MEMORY
  %loadMem_411352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 33
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 11
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RDI.i233 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 15
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %4546 to i64*
  %4547 = load i64, i64* %RBP.i234
  %4548 = sub i64 %4547, 16
  %4549 = load i64, i64* %PC.i232
  %4550 = add i64 %4549, 4
  store i64 %4550, i64* %PC.i232
  %4551 = inttoptr i64 %4548 to i64*
  %4552 = load i64, i64* %4551
  store i64 %4552, i64* %RDI.i233, align 8
  store %struct.Memory* %loadMem_411352, %struct.Memory** %MEMORY
  %loadMem_411356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 33
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %4555 to i64*
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 11
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %4558 to i64*
  %4559 = load i64, i64* %RDI.i231
  %4560 = add i64 %4559, 16
  %4561 = load i64, i64* %PC.i230
  %4562 = add i64 %4561, 4
  store i64 %4562, i64* %PC.i230
  %4563 = inttoptr i64 %4560 to i64*
  %4564 = load i64, i64* %4563
  store i64 %4564, i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_411356, %struct.Memory** %MEMORY
  %loadMem_41135a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 15
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 19
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %R9.i229 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %RBP.i228
  %4575 = sub i64 %4574, 36
  %4576 = load i64, i64* %PC.i227
  %4577 = add i64 %4576, 4
  store i64 %4577, i64* %PC.i227
  %4578 = inttoptr i64 %4575 to i32*
  %4579 = load i32, i32* %4578
  %4580 = sext i32 %4579 to i64
  store i64 %4580, i64* %R9.i229, align 8
  store %struct.Memory* %loadMem_41135a, %struct.Memory** %MEMORY
  %loadMem_41135e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4583 to i64*
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 11
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %RDI.i226 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 19
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %R9.i = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %RDI.i226
  %4591 = load i64, i64* %R9.i
  %4592 = mul i64 %4591, 4
  %4593 = add i64 %4592, %4590
  %4594 = load i64, i64* %PC.i225
  %4595 = add i64 %4594, 4
  store i64 %4595, i64* %PC.i225
  %4596 = inttoptr i64 %4593 to i32*
  %4597 = load i32, i32* %4596
  %4598 = sext i32 %4597 to i64
  store i64 %4598, i64* %RDI.i226, align 8
  store %struct.Memory* %loadMem_41135e, %struct.Memory** %MEMORY
  %loadMem_411362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 5
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %4604 to i64*
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 9
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %RSI.i223 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 11
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %4610 to i64*
  %4611 = load i64, i64* %RSI.i223
  %4612 = load i64, i64* %RDI.i224
  %4613 = mul i64 %4612, 4
  %4614 = add i64 %4613, %4611
  %4615 = load i64, i64* %PC.i221
  %4616 = add i64 %4615, 3
  store i64 %4616, i64* %PC.i221
  %4617 = inttoptr i64 %4614 to i32*
  %4618 = load i32, i32* %4617
  %4619 = zext i32 %4618 to i64
  store i64 %4619, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_411362, %struct.Memory** %MEMORY
  %loadMem_411365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 5
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 15
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RCX.i219
  %4630 = load i64, i64* %RBP.i220
  %4631 = sub i64 %4630, 44
  %4632 = load i64, i64* %PC.i218
  %4633 = add i64 %4632, 3
  store i64 %4633, i64* %PC.i218
  %4634 = trunc i64 %4629 to i32
  %4635 = inttoptr i64 %4631 to i32*
  %4636 = load i32, i32* %4635
  %4637 = add i32 %4636, %4634
  %4638 = zext i32 %4637 to i64
  store i64 %4638, i64* %RCX.i219, align 8
  %4639 = icmp ult i32 %4637, %4634
  %4640 = icmp ult i32 %4637, %4636
  %4641 = or i1 %4639, %4640
  %4642 = zext i1 %4641 to i8
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4642, i8* %4643, align 1
  %4644 = and i32 %4637, 255
  %4645 = call i32 @llvm.ctpop.i32(i32 %4644)
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  %4648 = xor i8 %4647, 1
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4648, i8* %4649, align 1
  %4650 = xor i32 %4636, %4634
  %4651 = xor i32 %4650, %4637
  %4652 = lshr i32 %4651, 4
  %4653 = trunc i32 %4652 to i8
  %4654 = and i8 %4653, 1
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4654, i8* %4655, align 1
  %4656 = icmp eq i32 %4637, 0
  %4657 = zext i1 %4656 to i8
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4657, i8* %4658, align 1
  %4659 = lshr i32 %4637, 31
  %4660 = trunc i32 %4659 to i8
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4660, i8* %4661, align 1
  %4662 = lshr i32 %4634, 31
  %4663 = lshr i32 %4636, 31
  %4664 = xor i32 %4659, %4662
  %4665 = xor i32 %4659, %4663
  %4666 = add i32 %4664, %4665
  %4667 = icmp eq i32 %4666, 2
  %4668 = zext i1 %4667 to i8
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4668, i8* %4669, align 1
  store %struct.Memory* %loadMem_411365, %struct.Memory** %MEMORY
  %loadMem_411368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 33
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4672 to i64*
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 5
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %ECX.i216 = bitcast %union.anon* %4675 to i32*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 15
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %4678 to i64*
  %4679 = load i64, i64* %RBP.i217
  %4680 = sub i64 %4679, 44
  %4681 = load i32, i32* %ECX.i216
  %4682 = zext i32 %4681 to i64
  %4683 = load i64, i64* %PC.i215
  %4684 = add i64 %4683, 3
  store i64 %4684, i64* %PC.i215
  %4685 = inttoptr i64 %4680 to i32*
  store i32 %4681, i32* %4685
  store %struct.Memory* %loadMem_411368, %struct.Memory** %MEMORY
  %loadMem_41136b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 33
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 1
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %4691 to i32*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 15
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %RBP.i214
  %4696 = sub i64 %4695, 144
  %4697 = load i32, i32* %EAX.i213
  %4698 = zext i32 %4697 to i64
  %4699 = load i64, i64* %PC.i212
  %4700 = add i64 %4699, 6
  store i64 %4700, i64* %PC.i212
  %4701 = inttoptr i64 %4696 to i32*
  store i32 %4697, i32* %4701
  store %struct.Memory* %loadMem_41136b, %struct.Memory** %MEMORY
  %loadMem_411371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %PC.i211
  %4706 = add i64 %4705, 244
  %4707 = load i64, i64* %PC.i211
  %4708 = add i64 %4707, 5
  store i64 %4708, i64* %PC.i211
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4706, i64* %4709, align 8
  store %struct.Memory* %loadMem_411371, %struct.Memory** %MEMORY
  br label %block_.L_411465

block_.L_411376:                                  ; preds = %block_.L_4112b7
  %loadMem_411376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 33
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4712 to i64*
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 1
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %4715 to i64*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 15
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %4718 to i64*
  %4719 = load i64, i64* %RBP.i210
  %4720 = sub i64 %4719, 16
  %4721 = load i64, i64* %PC.i208
  %4722 = add i64 %4721, 4
  store i64 %4722, i64* %PC.i208
  %4723 = inttoptr i64 %4720 to i64*
  %4724 = load i64, i64* %4723
  store i64 %4724, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_411376, %struct.Memory** %MEMORY
  %loadMem_41137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 33
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 1
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RAX.i207
  %4732 = add i64 %4731, 8
  %4733 = load i64, i64* %PC.i206
  %4734 = add i64 %4733, 4
  store i64 %4734, i64* %PC.i206
  %4735 = inttoptr i64 %4732 to i64*
  %4736 = load i64, i64* %4735
  store i64 %4736, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_41137a, %struct.Memory** %MEMORY
  %loadMem_41137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 33
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 5
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 15
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %RBP.i205
  %4747 = sub i64 %4746, 36
  %4748 = load i64, i64* %PC.i203
  %4749 = add i64 %4748, 4
  store i64 %4749, i64* %PC.i203
  %4750 = inttoptr i64 %4747 to i32*
  %4751 = load i32, i32* %4750
  %4752 = sext i32 %4751 to i64
  store i64 %4752, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_41137e, %struct.Memory** %MEMORY
  %loadMem_411382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 33
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4755 to i64*
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 1
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %4758 to i64*
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 5
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %4761 to i64*
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 7
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %RDX.i202 = bitcast %union.anon* %4764 to i64*
  %4765 = load i64, i64* %RAX.i200
  %4766 = load i64, i64* %RCX.i201
  %4767 = add i64 %4766, %4765
  %4768 = load i64, i64* %PC.i199
  %4769 = add i64 %4768, 4
  store i64 %4769, i64* %PC.i199
  %4770 = inttoptr i64 %4767 to i8*
  %4771 = load i8, i8* %4770
  %4772 = sext i8 %4771 to i64
  %4773 = and i64 %4772, 4294967295
  store i64 %4773, i64* %RDX.i202, align 8
  store %struct.Memory* %loadMem_411382, %struct.Memory** %MEMORY
  %loadMem_411386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 7
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %EDX.i198 = bitcast %union.anon* %4779 to i32*
  %4780 = load i32, i32* %EDX.i198
  %4781 = zext i32 %4780 to i64
  %4782 = load i64, i64* %PC.i197
  %4783 = add i64 %4782, 3
  store i64 %4783, i64* %PC.i197
  %4784 = sub i32 %4780, 5
  %4785 = icmp ult i32 %4780, 5
  %4786 = zext i1 %4785 to i8
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4786, i8* %4787, align 1
  %4788 = and i32 %4784, 255
  %4789 = call i32 @llvm.ctpop.i32(i32 %4788)
  %4790 = trunc i32 %4789 to i8
  %4791 = and i8 %4790, 1
  %4792 = xor i8 %4791, 1
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4792, i8* %4793, align 1
  %4794 = xor i64 5, %4781
  %4795 = trunc i64 %4794 to i32
  %4796 = xor i32 %4795, %4784
  %4797 = lshr i32 %4796, 4
  %4798 = trunc i32 %4797 to i8
  %4799 = and i8 %4798, 1
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4799, i8* %4800, align 1
  %4801 = icmp eq i32 %4784, 0
  %4802 = zext i1 %4801 to i8
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4802, i8* %4803, align 1
  %4804 = lshr i32 %4784, 31
  %4805 = trunc i32 %4804 to i8
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4805, i8* %4806, align 1
  %4807 = lshr i32 %4780, 31
  %4808 = xor i32 %4804, %4807
  %4809 = add i32 %4808, %4807
  %4810 = icmp eq i32 %4809, 2
  %4811 = zext i1 %4810 to i8
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4811, i8* %4812, align 1
  store %struct.Memory* %loadMem_411386, %struct.Memory** %MEMORY
  %loadMem_411389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 33
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %PC.i196
  %4817 = add i64 %4816, 36
  %4818 = load i64, i64* %PC.i196
  %4819 = add i64 %4818, 6
  %4820 = load i64, i64* %PC.i196
  %4821 = add i64 %4820, 6
  store i64 %4821, i64* %PC.i196
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4823 = load i8, i8* %4822, align 1
  %4824 = icmp eq i8 %4823, 0
  %4825 = zext i1 %4824 to i8
  store i8 %4825, i8* %BRANCH_TAKEN, align 1
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4827 = select i1 %4824, i64 %4817, i64 %4819
  store i64 %4827, i64* %4826, align 8
  store %struct.Memory* %loadMem_411389, %struct.Memory** %MEMORY
  %loadBr_411389 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411389 = icmp eq i8 %loadBr_411389, 1
  br i1 %cmpBr_411389, label %block_.L_4113ad, label %block_41138f

block_41138f:                                     ; preds = %block_.L_411376
  %loadMem_41138f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 1
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 15
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RBP.i195
  %4838 = sub i64 %4837, 16
  %4839 = load i64, i64* %PC.i193
  %4840 = add i64 %4839, 4
  store i64 %4840, i64* %PC.i193
  %4841 = inttoptr i64 %4838 to i64*
  %4842 = load i64, i64* %4841
  store i64 %4842, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_41138f, %struct.Memory** %MEMORY
  %loadMem_411393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 33
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4845 to i64*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 1
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %4848 to i64*
  %4849 = load i64, i64* %RAX.i192
  %4850 = add i64 %4849, 8
  %4851 = load i64, i64* %PC.i191
  %4852 = add i64 %4851, 4
  store i64 %4852, i64* %PC.i191
  %4853 = inttoptr i64 %4850 to i64*
  %4854 = load i64, i64* %4853
  store i64 %4854, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_411393, %struct.Memory** %MEMORY
  %loadMem_411397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 33
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 5
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 15
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %4863 to i64*
  %4864 = load i64, i64* %RBP.i190
  %4865 = sub i64 %4864, 36
  %4866 = load i64, i64* %PC.i188
  %4867 = add i64 %4866, 3
  store i64 %4867, i64* %PC.i188
  %4868 = inttoptr i64 %4865 to i32*
  %4869 = load i32, i32* %4868
  %4870 = zext i32 %4869 to i64
  store i64 %4870, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_411397, %struct.Memory** %MEMORY
  %loadMem_41139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 5
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %4876 to i64*
  %4877 = load i64, i64* %RCX.i187
  %4878 = load i64, i64* %PC.i186
  %4879 = add i64 %4878, 3
  store i64 %4879, i64* %PC.i186
  %4880 = trunc i64 %4877 to i32
  %4881 = sub i32 %4880, 1
  %4882 = zext i32 %4881 to i64
  store i64 %4882, i64* %RCX.i187, align 8
  %4883 = icmp ult i32 %4880, 1
  %4884 = zext i1 %4883 to i8
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4884, i8* %4885, align 1
  %4886 = and i32 %4881, 255
  %4887 = call i32 @llvm.ctpop.i32(i32 %4886)
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  %4890 = xor i8 %4889, 1
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4890, i8* %4891, align 1
  %4892 = xor i64 1, %4877
  %4893 = trunc i64 %4892 to i32
  %4894 = xor i32 %4893, %4881
  %4895 = lshr i32 %4894, 4
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4897, i8* %4898, align 1
  %4899 = icmp eq i32 %4881, 0
  %4900 = zext i1 %4899 to i8
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4900, i8* %4901, align 1
  %4902 = lshr i32 %4881, 31
  %4903 = trunc i32 %4902 to i8
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4903, i8* %4904, align 1
  %4905 = lshr i32 %4880, 31
  %4906 = xor i32 %4902, %4905
  %4907 = add i32 %4906, %4905
  %4908 = icmp eq i32 %4907, 2
  %4909 = zext i1 %4908 to i8
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4909, i8* %4910, align 1
  store %struct.Memory* %loadMem_41139a, %struct.Memory** %MEMORY
  %loadMem_41139d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 5
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %ECX.i184 = bitcast %union.anon* %4916 to i32*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 7
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %4919 to i64*
  %4920 = load i32, i32* %ECX.i184
  %4921 = zext i32 %4920 to i64
  %4922 = load i64, i64* %PC.i183
  %4923 = add i64 %4922, 3
  store i64 %4923, i64* %PC.i183
  %4924 = shl i64 %4921, 32
  %4925 = ashr exact i64 %4924, 32
  store i64 %4925, i64* %RDX.i185, align 8
  store %struct.Memory* %loadMem_41139d, %struct.Memory** %MEMORY
  %loadMem_4113a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 33
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4928 to i64*
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 1
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 5
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 7
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RDX.i182 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %RAX.i180
  %4939 = load i64, i64* %RDX.i182
  %4940 = add i64 %4939, %4938
  %4941 = load i64, i64* %PC.i179
  %4942 = add i64 %4941, 4
  store i64 %4942, i64* %PC.i179
  %4943 = inttoptr i64 %4940 to i8*
  %4944 = load i8, i8* %4943
  %4945 = sext i8 %4944 to i64
  %4946 = and i64 %4945, 4294967295
  store i64 %4946, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_4113a0, %struct.Memory** %MEMORY
  %loadMem_4113a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 33
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4949 to i64*
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4951 = getelementptr inbounds %struct.GPR, %struct.GPR* %4950, i32 0, i32 5
  %4952 = getelementptr inbounds %struct.Reg, %struct.Reg* %4951, i32 0, i32 0
  %ECX.i178 = bitcast %union.anon* %4952 to i32*
  %4953 = load i32, i32* %ECX.i178
  %4954 = zext i32 %4953 to i64
  %4955 = load i64, i64* %PC.i177
  %4956 = add i64 %4955, 3
  store i64 %4956, i64* %PC.i177
  %4957 = sub i32 %4953, 5
  %4958 = icmp ult i32 %4953, 5
  %4959 = zext i1 %4958 to i8
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4959, i8* %4960, align 1
  %4961 = and i32 %4957, 255
  %4962 = call i32 @llvm.ctpop.i32(i32 %4961)
  %4963 = trunc i32 %4962 to i8
  %4964 = and i8 %4963, 1
  %4965 = xor i8 %4964, 1
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4965, i8* %4966, align 1
  %4967 = xor i64 5, %4954
  %4968 = trunc i64 %4967 to i32
  %4969 = xor i32 %4968, %4957
  %4970 = lshr i32 %4969, 4
  %4971 = trunc i32 %4970 to i8
  %4972 = and i8 %4971, 1
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4972, i8* %4973, align 1
  %4974 = icmp eq i32 %4957, 0
  %4975 = zext i1 %4974 to i8
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4975, i8* %4976, align 1
  %4977 = lshr i32 %4957, 31
  %4978 = trunc i32 %4977 to i8
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4978, i8* %4979, align 1
  %4980 = lshr i32 %4953, 31
  %4981 = xor i32 %4977, %4980
  %4982 = add i32 %4981, %4980
  %4983 = icmp eq i32 %4982, 2
  %4984 = zext i1 %4983 to i8
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4984, i8* %4985, align 1
  store %struct.Memory* %loadMem_4113a4, %struct.Memory** %MEMORY
  %loadMem_4113a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4988 to i64*
  %4989 = load i64, i64* %PC.i176
  %4990 = add i64 %4989, 116
  %4991 = load i64, i64* %PC.i176
  %4992 = add i64 %4991, 6
  %4993 = load i64, i64* %PC.i176
  %4994 = add i64 %4993, 6
  store i64 %4994, i64* %PC.i176
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4996 = load i8, i8* %4995, align 1
  store i8 %4996, i8* %BRANCH_TAKEN, align 1
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4998 = icmp ne i8 %4996, 0
  %4999 = select i1 %4998, i64 %4990, i64 %4992
  store i64 %4999, i64* %4997, align 8
  store %struct.Memory* %loadMem_4113a7, %struct.Memory** %MEMORY
  %loadBr_4113a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4113a7 = icmp eq i8 %loadBr_4113a7, 1
  br i1 %cmpBr_4113a7, label %block_.L_41141b, label %block_.L_4113ad

block_.L_4113ad:                                  ; preds = %block_41138f, %block_.L_411376
  %loadMem_4113ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 33
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5002 to i64*
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 1
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %5005 to i64*
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 15
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %5008 to i64*
  %5009 = load i64, i64* %RBP.i175
  %5010 = sub i64 %5009, 16
  %5011 = load i64, i64* %PC.i173
  %5012 = add i64 %5011, 4
  store i64 %5012, i64* %PC.i173
  %5013 = inttoptr i64 %5010 to i64*
  %5014 = load i64, i64* %5013
  store i64 %5014, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_4113ad, %struct.Memory** %MEMORY
  %loadMem_4113b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 33
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 1
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %5020 to i64*
  %5021 = load i64, i64* %RAX.i172
  %5022 = add i64 %5021, 8
  %5023 = load i64, i64* %PC.i171
  %5024 = add i64 %5023, 4
  store i64 %5024, i64* %PC.i171
  %5025 = inttoptr i64 %5022 to i64*
  %5026 = load i64, i64* %5025
  store i64 %5026, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_4113b1, %struct.Memory** %MEMORY
  %loadMem_4113b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 33
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 5
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %5032 to i64*
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 15
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %5035 to i64*
  %5036 = load i64, i64* %RBP.i170
  %5037 = sub i64 %5036, 36
  %5038 = load i64, i64* %PC.i168
  %5039 = add i64 %5038, 4
  store i64 %5039, i64* %PC.i168
  %5040 = inttoptr i64 %5037 to i32*
  %5041 = load i32, i32* %5040
  %5042 = sext i32 %5041 to i64
  store i64 %5042, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_4113b5, %struct.Memory** %MEMORY
  %loadMem_4113b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 1
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 5
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %5051 to i64*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 7
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %5054 to i64*
  %5055 = load i64, i64* %RAX.i165
  %5056 = load i64, i64* %RCX.i166
  %5057 = add i64 %5056, %5055
  %5058 = load i64, i64* %PC.i164
  %5059 = add i64 %5058, 4
  store i64 %5059, i64* %PC.i164
  %5060 = inttoptr i64 %5057 to i8*
  %5061 = load i8, i8* %5060
  %5062 = sext i8 %5061 to i64
  %5063 = and i64 %5062, 4294967295
  store i64 %5063, i64* %RDX.i167, align 8
  store %struct.Memory* %loadMem_4113b9, %struct.Memory** %MEMORY
  %loadMem_4113bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 33
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 7
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %EDX.i163 = bitcast %union.anon* %5069 to i32*
  %5070 = load i32, i32* %EDX.i163
  %5071 = zext i32 %5070 to i64
  %5072 = load i64, i64* %PC.i162
  %5073 = add i64 %5072, 3
  store i64 %5073, i64* %PC.i162
  %5074 = sub i32 %5070, 8
  %5075 = icmp ult i32 %5070, 8
  %5076 = zext i1 %5075 to i8
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5076, i8* %5077, align 1
  %5078 = and i32 %5074, 255
  %5079 = call i32 @llvm.ctpop.i32(i32 %5078)
  %5080 = trunc i32 %5079 to i8
  %5081 = and i8 %5080, 1
  %5082 = xor i8 %5081, 1
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5082, i8* %5083, align 1
  %5084 = xor i64 8, %5071
  %5085 = trunc i64 %5084 to i32
  %5086 = xor i32 %5085, %5074
  %5087 = lshr i32 %5086, 4
  %5088 = trunc i32 %5087 to i8
  %5089 = and i8 %5088, 1
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5089, i8* %5090, align 1
  %5091 = icmp eq i32 %5074, 0
  %5092 = zext i1 %5091 to i8
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5092, i8* %5093, align 1
  %5094 = lshr i32 %5074, 31
  %5095 = trunc i32 %5094 to i8
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5095, i8* %5096, align 1
  %5097 = lshr i32 %5070, 31
  %5098 = xor i32 %5094, %5097
  %5099 = add i32 %5098, %5097
  %5100 = icmp eq i32 %5099, 2
  %5101 = zext i1 %5100 to i8
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5101, i8* %5102, align 1
  store %struct.Memory* %loadMem_4113bd, %struct.Memory** %MEMORY
  %loadMem_4113c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %PC.i161
  %5107 = add i64 %5106, 36
  %5108 = load i64, i64* %PC.i161
  %5109 = add i64 %5108, 6
  %5110 = load i64, i64* %PC.i161
  %5111 = add i64 %5110, 6
  store i64 %5111, i64* %PC.i161
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5113 = load i8, i8* %5112, align 1
  %5114 = icmp eq i8 %5113, 0
  %5115 = zext i1 %5114 to i8
  store i8 %5115, i8* %BRANCH_TAKEN, align 1
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5117 = select i1 %5114, i64 %5107, i64 %5109
  store i64 %5117, i64* %5116, align 8
  store %struct.Memory* %loadMem_4113c0, %struct.Memory** %MEMORY
  %loadBr_4113c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4113c0 = icmp eq i8 %loadBr_4113c0, 1
  br i1 %cmpBr_4113c0, label %block_.L_4113e4, label %block_4113c6

block_4113c6:                                     ; preds = %block_.L_4113ad
  %loadMem_4113c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 1
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %5123 to i64*
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 15
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %5126 to i64*
  %5127 = load i64, i64* %RBP.i160
  %5128 = sub i64 %5127, 16
  %5129 = load i64, i64* %PC.i158
  %5130 = add i64 %5129, 4
  store i64 %5130, i64* %PC.i158
  %5131 = inttoptr i64 %5128 to i64*
  %5132 = load i64, i64* %5131
  store i64 %5132, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_4113c6, %struct.Memory** %MEMORY
  %loadMem_4113ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 33
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5135 to i64*
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 1
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %5138 to i64*
  %5139 = load i64, i64* %RAX.i157
  %5140 = add i64 %5139, 8
  %5141 = load i64, i64* %PC.i156
  %5142 = add i64 %5141, 4
  store i64 %5142, i64* %PC.i156
  %5143 = inttoptr i64 %5140 to i64*
  %5144 = load i64, i64* %5143
  store i64 %5144, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_4113ca, %struct.Memory** %MEMORY
  %loadMem_4113ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5146 = getelementptr inbounds %struct.GPR, %struct.GPR* %5145, i32 0, i32 33
  %5147 = getelementptr inbounds %struct.Reg, %struct.Reg* %5146, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5147 to i64*
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 5
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 15
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %5153 to i64*
  %5154 = load i64, i64* %RBP.i155
  %5155 = sub i64 %5154, 36
  %5156 = load i64, i64* %PC.i153
  %5157 = add i64 %5156, 3
  store i64 %5157, i64* %PC.i153
  %5158 = inttoptr i64 %5155 to i32*
  %5159 = load i32, i32* %5158
  %5160 = zext i32 %5159 to i64
  store i64 %5160, i64* %RCX.i154, align 8
  store %struct.Memory* %loadMem_4113ce, %struct.Memory** %MEMORY
  %loadMem_4113d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 33
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5163 to i64*
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 5
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %5166 to i64*
  %5167 = load i64, i64* %RCX.i152
  %5168 = load i64, i64* %PC.i151
  %5169 = add i64 %5168, 3
  store i64 %5169, i64* %PC.i151
  %5170 = trunc i64 %5167 to i32
  %5171 = sub i32 %5170, 1
  %5172 = zext i32 %5171 to i64
  store i64 %5172, i64* %RCX.i152, align 8
  %5173 = icmp ult i32 %5170, 1
  %5174 = zext i1 %5173 to i8
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5174, i8* %5175, align 1
  %5176 = and i32 %5171, 255
  %5177 = call i32 @llvm.ctpop.i32(i32 %5176)
  %5178 = trunc i32 %5177 to i8
  %5179 = and i8 %5178, 1
  %5180 = xor i8 %5179, 1
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5180, i8* %5181, align 1
  %5182 = xor i64 1, %5167
  %5183 = trunc i64 %5182 to i32
  %5184 = xor i32 %5183, %5171
  %5185 = lshr i32 %5184, 4
  %5186 = trunc i32 %5185 to i8
  %5187 = and i8 %5186, 1
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5187, i8* %5188, align 1
  %5189 = icmp eq i32 %5171, 0
  %5190 = zext i1 %5189 to i8
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5190, i8* %5191, align 1
  %5192 = lshr i32 %5171, 31
  %5193 = trunc i32 %5192 to i8
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5193, i8* %5194, align 1
  %5195 = lshr i32 %5170, 31
  %5196 = xor i32 %5192, %5195
  %5197 = add i32 %5196, %5195
  %5198 = icmp eq i32 %5197, 2
  %5199 = zext i1 %5198 to i8
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5199, i8* %5200, align 1
  store %struct.Memory* %loadMem_4113d1, %struct.Memory** %MEMORY
  %loadMem_4113d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 33
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 5
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %ECX.i149 = bitcast %union.anon* %5206 to i32*
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 7
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %5209 to i64*
  %5210 = load i32, i32* %ECX.i149
  %5211 = zext i32 %5210 to i64
  %5212 = load i64, i64* %PC.i148
  %5213 = add i64 %5212, 3
  store i64 %5213, i64* %PC.i148
  %5214 = shl i64 %5211, 32
  %5215 = ashr exact i64 %5214, 32
  store i64 %5215, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_4113d4, %struct.Memory** %MEMORY
  %loadMem_4113d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 33
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %5218 to i64*
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 1
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 5
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 7
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %5227 to i64*
  %5228 = load i64, i64* %RAX.i145
  %5229 = load i64, i64* %RDX.i147
  %5230 = add i64 %5229, %5228
  %5231 = load i64, i64* %PC.i144
  %5232 = add i64 %5231, 4
  store i64 %5232, i64* %PC.i144
  %5233 = inttoptr i64 %5230 to i8*
  %5234 = load i8, i8* %5233
  %5235 = sext i8 %5234 to i64
  %5236 = and i64 %5235, 4294967295
  store i64 %5236, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_4113d7, %struct.Memory** %MEMORY
  %loadMem_4113db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 33
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 5
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %ECX.i143 = bitcast %union.anon* %5242 to i32*
  %5243 = load i32, i32* %ECX.i143
  %5244 = zext i32 %5243 to i64
  %5245 = load i64, i64* %PC.i142
  %5246 = add i64 %5245, 3
  store i64 %5246, i64* %PC.i142
  %5247 = sub i32 %5243, 8
  %5248 = icmp ult i32 %5243, 8
  %5249 = zext i1 %5248 to i8
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5249, i8* %5250, align 1
  %5251 = and i32 %5247, 255
  %5252 = call i32 @llvm.ctpop.i32(i32 %5251)
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  %5255 = xor i8 %5254, 1
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5255, i8* %5256, align 1
  %5257 = xor i64 8, %5244
  %5258 = trunc i64 %5257 to i32
  %5259 = xor i32 %5258, %5247
  %5260 = lshr i32 %5259, 4
  %5261 = trunc i32 %5260 to i8
  %5262 = and i8 %5261, 1
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5262, i8* %5263, align 1
  %5264 = icmp eq i32 %5247, 0
  %5265 = zext i1 %5264 to i8
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5265, i8* %5266, align 1
  %5267 = lshr i32 %5247, 31
  %5268 = trunc i32 %5267 to i8
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5268, i8* %5269, align 1
  %5270 = lshr i32 %5243, 31
  %5271 = xor i32 %5267, %5270
  %5272 = add i32 %5271, %5270
  %5273 = icmp eq i32 %5272, 2
  %5274 = zext i1 %5273 to i8
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5274, i8* %5275, align 1
  store %struct.Memory* %loadMem_4113db, %struct.Memory** %MEMORY
  %loadMem_4113de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 33
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %5278 to i64*
  %5279 = load i64, i64* %PC.i141
  %5280 = add i64 %5279, 61
  %5281 = load i64, i64* %PC.i141
  %5282 = add i64 %5281, 6
  %5283 = load i64, i64* %PC.i141
  %5284 = add i64 %5283, 6
  store i64 %5284, i64* %PC.i141
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5286 = load i8, i8* %5285, align 1
  store i8 %5286, i8* %BRANCH_TAKEN, align 1
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5288 = icmp ne i8 %5286, 0
  %5289 = select i1 %5288, i64 %5280, i64 %5282
  store i64 %5289, i64* %5287, align 8
  store %struct.Memory* %loadMem_4113de, %struct.Memory** %MEMORY
  %loadBr_4113de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4113de = icmp eq i8 %loadBr_4113de, 1
  br i1 %cmpBr_4113de, label %block_.L_41141b, label %block_.L_4113e4

block_.L_4113e4:                                  ; preds = %block_4113c6, %block_.L_4113ad
  %loadMem_4113e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 33
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 1
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %5295 to i64*
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 15
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %5298 to i64*
  %5299 = load i64, i64* %RBP.i140
  %5300 = sub i64 %5299, 16
  %5301 = load i64, i64* %PC.i138
  %5302 = add i64 %5301, 4
  store i64 %5302, i64* %PC.i138
  %5303 = inttoptr i64 %5300 to i64*
  %5304 = load i64, i64* %5303
  store i64 %5304, i64* %RAX.i139, align 8
  store %struct.Memory* %loadMem_4113e4, %struct.Memory** %MEMORY
  %loadMem_4113e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 33
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5307 to i64*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 1
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %RAX.i137
  %5312 = add i64 %5311, 8
  %5313 = load i64, i64* %PC.i136
  %5314 = add i64 %5313, 4
  store i64 %5314, i64* %PC.i136
  %5315 = inttoptr i64 %5312 to i64*
  %5316 = load i64, i64* %5315
  store i64 %5316, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_4113e8, %struct.Memory** %MEMORY
  %loadMem_4113ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 33
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5319 to i64*
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 5
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 15
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %5325 to i64*
  %5326 = load i64, i64* %RBP.i135
  %5327 = sub i64 %5326, 36
  %5328 = load i64, i64* %PC.i133
  %5329 = add i64 %5328, 4
  store i64 %5329, i64* %PC.i133
  %5330 = inttoptr i64 %5327 to i32*
  %5331 = load i32, i32* %5330
  %5332 = sext i32 %5331 to i64
  store i64 %5332, i64* %RCX.i134, align 8
  store %struct.Memory* %loadMem_4113ec, %struct.Memory** %MEMORY
  %loadMem_4113f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 33
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %5335 to i64*
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 1
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 5
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %5341 to i64*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 7
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RDX.i132 = bitcast %union.anon* %5344 to i64*
  %5345 = load i64, i64* %RAX.i130
  %5346 = load i64, i64* %RCX.i131
  %5347 = add i64 %5346, %5345
  %5348 = load i64, i64* %PC.i129
  %5349 = add i64 %5348, 4
  store i64 %5349, i64* %PC.i129
  %5350 = inttoptr i64 %5347 to i8*
  %5351 = load i8, i8* %5350
  %5352 = sext i8 %5351 to i64
  %5353 = and i64 %5352, 4294967295
  store i64 %5353, i64* %RDX.i132, align 8
  store %struct.Memory* %loadMem_4113f0, %struct.Memory** %MEMORY
  %loadMem_4113f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 33
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5356 to i64*
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5358 = getelementptr inbounds %struct.GPR, %struct.GPR* %5357, i32 0, i32 7
  %5359 = getelementptr inbounds %struct.Reg, %struct.Reg* %5358, i32 0, i32 0
  %EDX.i128 = bitcast %union.anon* %5359 to i32*
  %5360 = load i32, i32* %EDX.i128
  %5361 = zext i32 %5360 to i64
  %5362 = load i64, i64* %PC.i127
  %5363 = add i64 %5362, 3
  store i64 %5363, i64* %PC.i127
  %5364 = sub i32 %5360, 10
  %5365 = icmp ult i32 %5360, 10
  %5366 = zext i1 %5365 to i8
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5366, i8* %5367, align 1
  %5368 = and i32 %5364, 255
  %5369 = call i32 @llvm.ctpop.i32(i32 %5368)
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  %5372 = xor i8 %5371, 1
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5372, i8* %5373, align 1
  %5374 = xor i64 10, %5361
  %5375 = trunc i64 %5374 to i32
  %5376 = xor i32 %5375, %5364
  %5377 = lshr i32 %5376, 4
  %5378 = trunc i32 %5377 to i8
  %5379 = and i8 %5378, 1
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5379, i8* %5380, align 1
  %5381 = icmp eq i32 %5364, 0
  %5382 = zext i1 %5381 to i8
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5382, i8* %5383, align 1
  %5384 = lshr i32 %5364, 31
  %5385 = trunc i32 %5384 to i8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5385, i8* %5386, align 1
  %5387 = lshr i32 %5360, 31
  %5388 = xor i32 %5384, %5387
  %5389 = add i32 %5388, %5387
  %5390 = icmp eq i32 %5389, 2
  %5391 = zext i1 %5390 to i8
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5391, i8* %5392, align 1
  store %struct.Memory* %loadMem_4113f4, %struct.Memory** %MEMORY
  %loadMem_4113f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5395 to i64*
  %5396 = load i64, i64* %PC.i126
  %5397 = add i64 %5396, 105
  %5398 = load i64, i64* %PC.i126
  %5399 = add i64 %5398, 6
  %5400 = load i64, i64* %PC.i126
  %5401 = add i64 %5400, 6
  store i64 %5401, i64* %PC.i126
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5403 = load i8, i8* %5402, align 1
  %5404 = icmp eq i8 %5403, 0
  %5405 = zext i1 %5404 to i8
  store i8 %5405, i8* %BRANCH_TAKEN, align 1
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5407 = select i1 %5404, i64 %5397, i64 %5399
  store i64 %5407, i64* %5406, align 8
  store %struct.Memory* %loadMem_4113f7, %struct.Memory** %MEMORY
  %loadBr_4113f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4113f7 = icmp eq i8 %loadBr_4113f7, 1
  br i1 %cmpBr_4113f7, label %block_.L_411460, label %block_4113fd

block_4113fd:                                     ; preds = %block_.L_4113e4
  %loadMem_4113fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 33
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5410 to i64*
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 1
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 15
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %RBP.i125
  %5418 = sub i64 %5417, 16
  %5419 = load i64, i64* %PC.i123
  %5420 = add i64 %5419, 4
  store i64 %5420, i64* %PC.i123
  %5421 = inttoptr i64 %5418 to i64*
  %5422 = load i64, i64* %5421
  store i64 %5422, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_4113fd, %struct.Memory** %MEMORY
  %loadMem_411401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 33
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 1
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %5428 to i64*
  %5429 = load i64, i64* %RAX.i122
  %5430 = add i64 %5429, 8
  %5431 = load i64, i64* %PC.i121
  %5432 = add i64 %5431, 4
  store i64 %5432, i64* %PC.i121
  %5433 = inttoptr i64 %5430 to i64*
  %5434 = load i64, i64* %5433
  store i64 %5434, i64* %RAX.i122, align 8
  store %struct.Memory* %loadMem_411401, %struct.Memory** %MEMORY
  %loadMem_411405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 33
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5437 to i64*
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 5
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 15
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %5443 to i64*
  %5444 = load i64, i64* %RBP.i120
  %5445 = sub i64 %5444, 36
  %5446 = load i64, i64* %PC.i118
  %5447 = add i64 %5446, 3
  store i64 %5447, i64* %PC.i118
  %5448 = inttoptr i64 %5445 to i32*
  %5449 = load i32, i32* %5448
  %5450 = zext i32 %5449 to i64
  store i64 %5450, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_411405, %struct.Memory** %MEMORY
  %loadMem_411408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 33
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 5
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %5456 to i64*
  %5457 = load i64, i64* %RCX.i117
  %5458 = load i64, i64* %PC.i116
  %5459 = add i64 %5458, 3
  store i64 %5459, i64* %PC.i116
  %5460 = trunc i64 %5457 to i32
  %5461 = sub i32 %5460, 1
  %5462 = zext i32 %5461 to i64
  store i64 %5462, i64* %RCX.i117, align 8
  %5463 = icmp ult i32 %5460, 1
  %5464 = zext i1 %5463 to i8
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5464, i8* %5465, align 1
  %5466 = and i32 %5461, 255
  %5467 = call i32 @llvm.ctpop.i32(i32 %5466)
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = xor i8 %5469, 1
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5470, i8* %5471, align 1
  %5472 = xor i64 1, %5457
  %5473 = trunc i64 %5472 to i32
  %5474 = xor i32 %5473, %5461
  %5475 = lshr i32 %5474, 4
  %5476 = trunc i32 %5475 to i8
  %5477 = and i8 %5476, 1
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5477, i8* %5478, align 1
  %5479 = icmp eq i32 %5461, 0
  %5480 = zext i1 %5479 to i8
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5480, i8* %5481, align 1
  %5482 = lshr i32 %5461, 31
  %5483 = trunc i32 %5482 to i8
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5483, i8* %5484, align 1
  %5485 = lshr i32 %5460, 31
  %5486 = xor i32 %5482, %5485
  %5487 = add i32 %5486, %5485
  %5488 = icmp eq i32 %5487, 2
  %5489 = zext i1 %5488 to i8
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5489, i8* %5490, align 1
  store %struct.Memory* %loadMem_411408, %struct.Memory** %MEMORY
  %loadMem_41140b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 33
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 5
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %ECX.i114 = bitcast %union.anon* %5496 to i32*
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 7
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %RDX.i115 = bitcast %union.anon* %5499 to i64*
  %5500 = load i32, i32* %ECX.i114
  %5501 = zext i32 %5500 to i64
  %5502 = load i64, i64* %PC.i113
  %5503 = add i64 %5502, 3
  store i64 %5503, i64* %PC.i113
  %5504 = shl i64 %5501, 32
  %5505 = ashr exact i64 %5504, 32
  store i64 %5505, i64* %RDX.i115, align 8
  store %struct.Memory* %loadMem_41140b, %struct.Memory** %MEMORY
  %loadMem_41140e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 33
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5508 to i64*
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 1
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 5
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %5514 to i64*
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 7
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %5517 to i64*
  %5518 = load i64, i64* %RAX.i110
  %5519 = load i64, i64* %RDX.i112
  %5520 = add i64 %5519, %5518
  %5521 = load i64, i64* %PC.i109
  %5522 = add i64 %5521, 4
  store i64 %5522, i64* %PC.i109
  %5523 = inttoptr i64 %5520 to i8*
  %5524 = load i8, i8* %5523
  %5525 = sext i8 %5524 to i64
  %5526 = and i64 %5525, 4294967295
  store i64 %5526, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_41140e, %struct.Memory** %MEMORY
  %loadMem_411412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 33
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5529 to i64*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 5
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %ECX.i108 = bitcast %union.anon* %5532 to i32*
  %5533 = load i32, i32* %ECX.i108
  %5534 = zext i32 %5533 to i64
  %5535 = load i64, i64* %PC.i107
  %5536 = add i64 %5535, 3
  store i64 %5536, i64* %PC.i107
  %5537 = sub i32 %5533, 10
  %5538 = icmp ult i32 %5533, 10
  %5539 = zext i1 %5538 to i8
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5539, i8* %5540, align 1
  %5541 = and i32 %5537, 255
  %5542 = call i32 @llvm.ctpop.i32(i32 %5541)
  %5543 = trunc i32 %5542 to i8
  %5544 = and i8 %5543, 1
  %5545 = xor i8 %5544, 1
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5545, i8* %5546, align 1
  %5547 = xor i64 10, %5534
  %5548 = trunc i64 %5547 to i32
  %5549 = xor i32 %5548, %5537
  %5550 = lshr i32 %5549, 4
  %5551 = trunc i32 %5550 to i8
  %5552 = and i8 %5551, 1
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5552, i8* %5553, align 1
  %5554 = icmp eq i32 %5537, 0
  %5555 = zext i1 %5554 to i8
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5555, i8* %5556, align 1
  %5557 = lshr i32 %5537, 31
  %5558 = trunc i32 %5557 to i8
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5558, i8* %5559, align 1
  %5560 = lshr i32 %5533, 31
  %5561 = xor i32 %5557, %5560
  %5562 = add i32 %5561, %5560
  %5563 = icmp eq i32 %5562, 2
  %5564 = zext i1 %5563 to i8
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5564, i8* %5565, align 1
  store %struct.Memory* %loadMem_411412, %struct.Memory** %MEMORY
  %loadMem_411415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 33
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5568 to i64*
  %5569 = load i64, i64* %PC.i106
  %5570 = add i64 %5569, 75
  %5571 = load i64, i64* %PC.i106
  %5572 = add i64 %5571, 6
  %5573 = load i64, i64* %PC.i106
  %5574 = add i64 %5573, 6
  store i64 %5574, i64* %PC.i106
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5576 = load i8, i8* %5575, align 1
  %5577 = icmp eq i8 %5576, 0
  %5578 = zext i1 %5577 to i8
  store i8 %5578, i8* %BRANCH_TAKEN, align 1
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5580 = select i1 %5577, i64 %5570, i64 %5572
  store i64 %5580, i64* %5579, align 8
  store %struct.Memory* %loadMem_411415, %struct.Memory** %MEMORY
  %loadBr_411415 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_411415 = icmp eq i8 %loadBr_411415, 1
  br i1 %cmpBr_411415, label %block_.L_411460, label %block_.L_41141b

block_.L_41141b:                                  ; preds = %block_4113fd, %block_4113c6, %block_41138f
  %loadMem_41141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 33
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 11
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RDI.i104 = bitcast %union.anon* %5586 to i64*
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 15
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %5589 to i64*
  %5590 = load i64, i64* %RBP.i105
  %5591 = sub i64 %5590, 8
  %5592 = load i64, i64* %PC.i103
  %5593 = add i64 %5592, 4
  store i64 %5593, i64* %PC.i103
  %5594 = inttoptr i64 %5591 to i64*
  %5595 = load i64, i64* %5594
  store i64 %5595, i64* %RDI.i104, align 8
  store %struct.Memory* %loadMem_41141b, %struct.Memory** %MEMORY
  %loadMem_41141f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 33
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 1
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %5601 to i64*
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 15
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %5604 to i64*
  %5605 = load i64, i64* %RBP.i102
  %5606 = sub i64 %5605, 40
  %5607 = load i64, i64* %PC.i100
  %5608 = add i64 %5607, 4
  store i64 %5608, i64* %PC.i100
  %5609 = inttoptr i64 %5606 to i32*
  %5610 = load i32, i32* %5609
  %5611 = sext i32 %5610 to i64
  store i64 %5611, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_41141f, %struct.Memory** %MEMORY
  %loadMem_411423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 33
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5614 to i64*
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 1
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %5617 to i64*
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 5
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %RAX.i98
  %5622 = add i64 %5621, 6778848
  %5623 = load i64, i64* %PC.i97
  %5624 = add i64 %5623, 8
  store i64 %5624, i64* %PC.i97
  %5625 = inttoptr i64 %5622 to i8*
  %5626 = load i8, i8* %5625
  %5627 = sext i8 %5626 to i64
  %5628 = and i64 %5627, 4294967295
  store i64 %5628, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_411423, %struct.Memory** %MEMORY
  %loadMem_41142b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 33
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5631 to i64*
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 11
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %RDI.i95 = bitcast %union.anon* %5634 to i64*
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 15
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %5637 to i64*
  %5638 = load i64, i64* %RBP.i96
  %5639 = sub i64 %5638, 152
  %5640 = load i64, i64* %RDI.i95
  %5641 = load i64, i64* %PC.i94
  %5642 = add i64 %5641, 7
  store i64 %5642, i64* %PC.i94
  %5643 = inttoptr i64 %5639 to i64*
  store i64 %5640, i64* %5643
  store %struct.Memory* %loadMem_41142b, %struct.Memory** %MEMORY
  %loadMem_411432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5645 = getelementptr inbounds %struct.GPR, %struct.GPR* %5644, i32 0, i32 33
  %5646 = getelementptr inbounds %struct.Reg, %struct.Reg* %5645, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5646 to i64*
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 5
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5649 to i32*
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5651 = getelementptr inbounds %struct.GPR, %struct.GPR* %5650, i32 0, i32 11
  %5652 = getelementptr inbounds %struct.Reg, %struct.Reg* %5651, i32 0, i32 0
  %RDI.i93 = bitcast %union.anon* %5652 to i64*
  %5653 = load i32, i32* %ECX.i
  %5654 = zext i32 %5653 to i64
  %5655 = load i64, i64* %PC.i92
  %5656 = add i64 %5655, 2
  store i64 %5656, i64* %PC.i92
  %5657 = and i64 %5654, 4294967295
  store i64 %5657, i64* %RDI.i93, align 8
  store %struct.Memory* %loadMem_411432, %struct.Memory** %MEMORY
  %loadMem1_411434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 33
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5660 to i64*
  %5661 = load i64, i64* %PC.i91
  %5662 = add i64 %5661, -65140
  %5663 = load i64, i64* %PC.i91
  %5664 = add i64 %5663, 5
  %5665 = load i64, i64* %PC.i91
  %5666 = add i64 %5665, 5
  store i64 %5666, i64* %PC.i91
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5668 = load i64, i64* %5667, align 8
  %5669 = add i64 %5668, -8
  %5670 = inttoptr i64 %5669 to i64*
  store i64 %5664, i64* %5670
  store i64 %5669, i64* %5667, align 8
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5662, i64* %5671, align 8
  store %struct.Memory* %loadMem1_411434, %struct.Memory** %MEMORY
  %loadMem2_411434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411434 = load i64, i64* %3
  %call2_411434 = call %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* %0, i64 %loadPC_411434, %struct.Memory* %loadMem2_411434)
  store %struct.Memory* %call2_411434, %struct.Memory** %MEMORY
  %loadMem_411439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 33
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 9
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %RSI.i90 = bitcast %union.anon* %5677 to i64*
  %5678 = load i64, i64* %PC.i89
  %5679 = add i64 %5678, 10
  store i64 %5679, i64* %PC.i89
  store i64 ptrtoint (%G__0x45625c_type* @G__0x45625c to i64), i64* %RSI.i90, align 8
  store %struct.Memory* %loadMem_411439, %struct.Memory** %MEMORY
  %loadMem_411443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 33
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5682 to i64*
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 7
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5685 to i32*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 7
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %5688 to i64*
  %5689 = load i64, i64* %RDX.i88
  %5690 = load i32, i32* %EDX.i
  %5691 = zext i32 %5690 to i64
  %5692 = load i64, i64* %PC.i87
  %5693 = add i64 %5692, 2
  store i64 %5693, i64* %PC.i87
  %5694 = xor i64 %5691, %5689
  %5695 = trunc i64 %5694 to i32
  %5696 = and i64 %5694, 4294967295
  store i64 %5696, i64* %RDX.i88, align 8
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5697, align 1
  %5698 = and i32 %5695, 255
  %5699 = call i32 @llvm.ctpop.i32(i32 %5698)
  %5700 = trunc i32 %5699 to i8
  %5701 = and i8 %5700, 1
  %5702 = xor i8 %5701, 1
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5702, i8* %5703, align 1
  %5704 = icmp eq i32 %5695, 0
  %5705 = zext i1 %5704 to i8
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5705, i8* %5706, align 1
  %5707 = lshr i32 %5695, 31
  %5708 = trunc i32 %5707 to i8
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5708, i8* %5709, align 1
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5710, align 1
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5711, align 1
  store %struct.Memory* %loadMem_411443, %struct.Memory** %MEMORY
  %loadMem_411445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 33
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5714 to i64*
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 1
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %5718 = bitcast %union.anon* %5717 to %struct.anon.2*
  %AL.i85 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5718, i32 0, i32 0
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 17
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %5722 = bitcast %union.anon* %5721 to %struct.anon.2*
  %R8B.i86 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5722, i32 0, i32 0
  %5723 = load i8, i8* %AL.i85
  %5724 = zext i8 %5723 to i64
  %5725 = load i64, i64* %PC.i84
  %5726 = add i64 %5725, 3
  store i64 %5726, i64* %PC.i84
  store i8 %5723, i8* %R8B.i86, align 1
  store %struct.Memory* %loadMem_411445, %struct.Memory** %MEMORY
  %loadMem_411448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 33
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5729 to i64*
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 17
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %5733 = bitcast %union.anon* %5732 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5733, i32 0, i32 0
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5735 = getelementptr inbounds %struct.GPR, %struct.GPR* %5734, i32 0, i32 5
  %5736 = getelementptr inbounds %struct.Reg, %struct.Reg* %5735, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %5736 to i64*
  %5737 = load i8, i8* %R8B.i
  %5738 = zext i8 %5737 to i64
  %5739 = load i64, i64* %PC.i82
  %5740 = add i64 %5739, 4
  store i64 %5740, i64* %PC.i82
  %5741 = trunc i64 %5738 to i32
  %5742 = shl i32 %5741, 24
  %5743 = ashr exact i32 %5742, 24
  %5744 = zext i32 %5743 to i64
  store i64 %5744, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_411448, %struct.Memory** %MEMORY
  %loadMem_41144c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5746 = getelementptr inbounds %struct.GPR, %struct.GPR* %5745, i32 0, i32 33
  %5747 = getelementptr inbounds %struct.Reg, %struct.Reg* %5746, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5747 to i64*
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 11
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %RDI.i80 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 15
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %5753 to i64*
  %5754 = load i64, i64* %RBP.i81
  %5755 = sub i64 %5754, 152
  %5756 = load i64, i64* %PC.i79
  %5757 = add i64 %5756, 7
  store i64 %5757, i64* %PC.i79
  %5758 = inttoptr i64 %5755 to i64*
  %5759 = load i64, i64* %5758
  store i64 %5759, i64* %RDI.i80, align 8
  store %struct.Memory* %loadMem_41144c, %struct.Memory** %MEMORY
  %loadMem_411453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 33
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5762 to i64*
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 1
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %5766 = bitcast %union.anon* %5765 to %struct.anon.2*
  %AL.i78 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5766, i32 0, i32 0
  %5767 = load i64, i64* %PC.i77
  %5768 = add i64 %5767, 2
  store i64 %5768, i64* %PC.i77
  store i8 0, i8* %AL.i78, align 1
  store %struct.Memory* %loadMem_411453, %struct.Memory** %MEMORY
  %loadMem1_411455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 33
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5771 to i64*
  %5772 = load i64, i64* %PC.i76
  %5773 = add i64 %5772, -65253
  %5774 = load i64, i64* %PC.i76
  %5775 = add i64 %5774, 5
  %5776 = load i64, i64* %PC.i76
  %5777 = add i64 %5776, 5
  store i64 %5777, i64* %PC.i76
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5779 = load i64, i64* %5778, align 8
  %5780 = add i64 %5779, -8
  %5781 = inttoptr i64 %5780 to i64*
  store i64 %5775, i64* %5781
  store i64 %5780, i64* %5778, align 8
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5773, i64* %5782, align 8
  store %struct.Memory* %loadMem1_411455, %struct.Memory** %MEMORY
  %loadMem2_411455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_411455 = load i64, i64* %3
  %5783 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_411455)
  store %struct.Memory* %5783, %struct.Memory** %MEMORY
  %loadMem_41145a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 33
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %5786 to i64*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 1
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %5789 to i32*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 15
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %5792 to i64*
  %5793 = load i64, i64* %RBP.i72
  %5794 = sub i64 %5793, 156
  %5795 = load i32, i32* %EAX.i71
  %5796 = zext i32 %5795 to i64
  %5797 = load i64, i64* %PC.i70
  %5798 = add i64 %5797, 6
  store i64 %5798, i64* %PC.i70
  %5799 = inttoptr i64 %5794 to i32*
  store i32 %5795, i32* %5799
  store %struct.Memory* %loadMem_41145a, %struct.Memory** %MEMORY
  br label %block_.L_411460

block_.L_411460:                                  ; preds = %block_.L_41141b, %block_4113fd, %block_.L_4113e4
  %loadMem_411460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 33
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5802 to i64*
  %5803 = load i64, i64* %PC.i69
  %5804 = add i64 %5803, 5
  %5805 = load i64, i64* %PC.i69
  %5806 = add i64 %5805, 5
  store i64 %5806, i64* %PC.i69
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5804, i64* %5807, align 8
  store %struct.Memory* %loadMem_411460, %struct.Memory** %MEMORY
  br label %block_.L_411465

block_.L_411465:                                  ; preds = %block_.L_411460, %block_4112d0
  %loadMem_411465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5809 = getelementptr inbounds %struct.GPR, %struct.GPR* %5808, i32 0, i32 33
  %5810 = getelementptr inbounds %struct.Reg, %struct.Reg* %5809, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5810 to i64*
  %5811 = load i64, i64* %PC.i68
  %5812 = add i64 %5811, 5
  %5813 = load i64, i64* %PC.i68
  %5814 = add i64 %5813, 5
  store i64 %5814, i64* %PC.i68
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5812, i64* %5815, align 8
  store %struct.Memory* %loadMem_411465, %struct.Memory** %MEMORY
  br label %block_.L_41146a

block_.L_41146a:                                  ; preds = %block_.L_411465, %block_41123c
  %loadMem_41146a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5818 to i64*
  %5819 = load i64, i64* %PC.i67
  %5820 = add i64 %5819, 47
  %5821 = load i64, i64* %PC.i67
  %5822 = add i64 %5821, 5
  store i64 %5822, i64* %PC.i67
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5820, i64* %5823, align 8
  store %struct.Memory* %loadMem_41146a, %struct.Memory** %MEMORY
  br label %block_.L_411499

block_.L_41146f:                                  ; preds = %block_.L_411218
  %loadMem_41146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 33
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 9
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RSI.i66 = bitcast %union.anon* %5829 to i64*
  %5830 = load i64, i64* %PC.i65
  %5831 = add i64 %5830, 10
  store i64 %5831, i64* %PC.i65
  store i64 ptrtoint (%G__0x456264_type* @G__0x456264 to i64), i64* %RSI.i66, align 8
  store %struct.Memory* %loadMem_41146f, %struct.Memory** %MEMORY
  %loadMem_411479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %5834 to i64*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 7
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %RDX.i64 = bitcast %union.anon* %5837 to i64*
  %5838 = load i64, i64* %PC.i63
  %5839 = add i64 %5838, 10
  store i64 %5839, i64* %PC.i63
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RDX.i64, align 8
  store %struct.Memory* %loadMem_411479, %struct.Memory** %MEMORY
  %loadMem_411483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 33
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 5
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5845 to i64*
  %5846 = load i64, i64* %PC.i62
  %5847 = add i64 %5846, 5
  store i64 %5847, i64* %PC.i62
  store i64 45, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_411483, %struct.Memory** %MEMORY
  %loadMem_411488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5849 = getelementptr inbounds %struct.GPR, %struct.GPR* %5848, i32 0, i32 33
  %5850 = getelementptr inbounds %struct.Reg, %struct.Reg* %5849, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5850 to i64*
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5852 = getelementptr inbounds %struct.GPR, %struct.GPR* %5851, i32 0, i32 11
  %5853 = getelementptr inbounds %struct.Reg, %struct.Reg* %5852, i32 0, i32 0
  %RDI.i60 = bitcast %union.anon* %5853 to i64*
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5855 = getelementptr inbounds %struct.GPR, %struct.GPR* %5854, i32 0, i32 15
  %5856 = getelementptr inbounds %struct.Reg, %struct.Reg* %5855, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %5856 to i64*
  %5857 = load i64, i64* %RBP.i61
  %5858 = sub i64 %5857, 8
  %5859 = load i64, i64* %PC.i59
  %5860 = add i64 %5859, 4
  store i64 %5860, i64* %PC.i59
  %5861 = inttoptr i64 %5858 to i64*
  %5862 = load i64, i64* %5861
  store i64 %5862, i64* %RDI.i60, align 8
  store %struct.Memory* %loadMem_411488, %struct.Memory** %MEMORY
  %loadMem_41148c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 33
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5865 to i64*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 1
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %5869 = bitcast %union.anon* %5868 to %struct.anon.2*
  %AL.i58 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5869, i32 0, i32 0
  %5870 = load i64, i64* %PC.i57
  %5871 = add i64 %5870, 2
  store i64 %5871, i64* %PC.i57
  store i8 0, i8* %AL.i58, align 1
  store %struct.Memory* %loadMem_41148c, %struct.Memory** %MEMORY
  %loadMem1_41148e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5873 = getelementptr inbounds %struct.GPR, %struct.GPR* %5872, i32 0, i32 33
  %5874 = getelementptr inbounds %struct.Reg, %struct.Reg* %5873, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5874 to i64*
  %5875 = load i64, i64* %PC.i56
  %5876 = add i64 %5875, -65310
  %5877 = load i64, i64* %PC.i56
  %5878 = add i64 %5877, 5
  %5879 = load i64, i64* %PC.i56
  %5880 = add i64 %5879, 5
  store i64 %5880, i64* %PC.i56
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5882 = load i64, i64* %5881, align 8
  %5883 = add i64 %5882, -8
  %5884 = inttoptr i64 %5883 to i64*
  store i64 %5878, i64* %5884
  store i64 %5883, i64* %5881, align 8
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5876, i64* %5885, align 8
  store %struct.Memory* %loadMem1_41148e, %struct.Memory** %MEMORY
  %loadMem2_41148e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41148e = load i64, i64* %3
  %5886 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41148e)
  store %struct.Memory* %5886, %struct.Memory** %MEMORY
  %loadMem_411493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 1
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %EAX.i51 = bitcast %union.anon* %5892 to i32*
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 15
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %5895 to i64*
  %5896 = load i64, i64* %RBP.i52
  %5897 = sub i64 %5896, 160
  %5898 = load i32, i32* %EAX.i51
  %5899 = zext i32 %5898 to i64
  %5900 = load i64, i64* %PC.i50
  %5901 = add i64 %5900, 6
  store i64 %5901, i64* %PC.i50
  %5902 = inttoptr i64 %5897 to i32*
  store i32 %5898, i32* %5902
  store %struct.Memory* %loadMem_411493, %struct.Memory** %MEMORY
  br label %block_.L_411499

block_.L_411499:                                  ; preds = %block_.L_41146f, %block_.L_41146a
  %loadMem_411499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 33
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5905 to i64*
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 11
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %RDI.i49 = bitcast %union.anon* %5908 to i64*
  %5909 = load i64, i64* %PC.i48
  %5910 = add i64 %5909, 10
  store i64 %5910, i64* %PC.i48
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI.i49, align 8
  store %struct.Memory* %loadMem_411499, %struct.Memory** %MEMORY
  %loadMem_4114a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 33
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 9
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RSI.i46 = bitcast %union.anon* %5916 to i64*
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 15
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %5919 to i64*
  %5920 = load i64, i64* %RBP.i47
  %5921 = sub i64 %5920, 8
  %5922 = load i64, i64* %PC.i45
  %5923 = add i64 %5922, 4
  store i64 %5923, i64* %PC.i45
  %5924 = inttoptr i64 %5921 to i64*
  %5925 = load i64, i64* %5924
  store i64 %5925, i64* %RSI.i46, align 8
  store %struct.Memory* %loadMem_4114a3, %struct.Memory** %MEMORY
  %loadMem1_4114a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 33
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5928 to i64*
  %5929 = load i64, i64* %PC.i44
  %5930 = add i64 %5929, -65511
  %5931 = load i64, i64* %PC.i44
  %5932 = add i64 %5931, 5
  %5933 = load i64, i64* %PC.i44
  %5934 = add i64 %5933, 5
  store i64 %5934, i64* %PC.i44
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5936 = load i64, i64* %5935, align 8
  %5937 = add i64 %5936, -8
  %5938 = inttoptr i64 %5937 to i64*
  store i64 %5932, i64* %5938
  store i64 %5937, i64* %5935, align 8
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5930, i64* %5939, align 8
  store %struct.Memory* %loadMem1_4114a7, %struct.Memory** %MEMORY
  %loadMem2_4114a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4114a7 = load i64, i64* %3
  %5940 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %loadMem2_4114a7)
  store %struct.Memory* %5940, %struct.Memory** %MEMORY
  %loadMem_4114ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5943 to i64*
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 1
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %5946 to i32*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 15
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %5949 to i64*
  %5950 = load i64, i64* %RBP.i40
  %5951 = sub i64 %5950, 164
  %5952 = load i32, i32* %EAX.i39
  %5953 = zext i32 %5952 to i64
  %5954 = load i64, i64* %PC.i38
  %5955 = add i64 %5954, 6
  store i64 %5955, i64* %PC.i38
  %5956 = inttoptr i64 %5951 to i32*
  store i32 %5952, i32* %5956
  store %struct.Memory* %loadMem_4114ac, %struct.Memory** %MEMORY
  %loadMem_4114b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 33
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5959 to i64*
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 1
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %5962 to i64*
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 15
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %5965 to i64*
  %5966 = load i64, i64* %RBP.i37
  %5967 = sub i64 %5966, 36
  %5968 = load i64, i64* %PC.i35
  %5969 = add i64 %5968, 3
  store i64 %5969, i64* %PC.i35
  %5970 = inttoptr i64 %5967 to i32*
  %5971 = load i32, i32* %5970
  %5972 = zext i32 %5971 to i64
  store i64 %5972, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_4114b2, %struct.Memory** %MEMORY
  %loadMem_4114b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 33
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 1
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5978 to i64*
  %5979 = load i64, i64* %RAX.i
  %5980 = load i64, i64* %PC.i34
  %5981 = add i64 %5980, 3
  store i64 %5981, i64* %PC.i34
  %5982 = trunc i64 %5979 to i32
  %5983 = add i32 1, %5982
  %5984 = zext i32 %5983 to i64
  store i64 %5984, i64* %RAX.i, align 8
  %5985 = icmp ult i32 %5983, %5982
  %5986 = icmp ult i32 %5983, 1
  %5987 = or i1 %5985, %5986
  %5988 = zext i1 %5987 to i8
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5988, i8* %5989, align 1
  %5990 = and i32 %5983, 255
  %5991 = call i32 @llvm.ctpop.i32(i32 %5990)
  %5992 = trunc i32 %5991 to i8
  %5993 = and i8 %5992, 1
  %5994 = xor i8 %5993, 1
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5994, i8* %5995, align 1
  %5996 = xor i64 1, %5979
  %5997 = trunc i64 %5996 to i32
  %5998 = xor i32 %5997, %5983
  %5999 = lshr i32 %5998, 4
  %6000 = trunc i32 %5999 to i8
  %6001 = and i8 %6000, 1
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6001, i8* %6002, align 1
  %6003 = icmp eq i32 %5983, 0
  %6004 = zext i1 %6003 to i8
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6004, i8* %6005, align 1
  %6006 = lshr i32 %5983, 31
  %6007 = trunc i32 %6006 to i8
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6007, i8* %6008, align 1
  %6009 = lshr i32 %5982, 31
  %6010 = xor i32 %6006, %6009
  %6011 = add i32 %6010, %6006
  %6012 = icmp eq i32 %6011, 2
  %6013 = zext i1 %6012 to i8
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6013, i8* %6014, align 1
  store %struct.Memory* %loadMem_4114b5, %struct.Memory** %MEMORY
  %loadMem_4114b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 33
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6017 to i64*
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 1
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %EAX.i32 = bitcast %union.anon* %6020 to i32*
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 15
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %6023 to i64*
  %6024 = load i64, i64* %RBP.i33
  %6025 = sub i64 %6024, 36
  %6026 = load i32, i32* %EAX.i32
  %6027 = zext i32 %6026 to i64
  %6028 = load i64, i64* %PC.i31
  %6029 = add i64 %6028, 3
  store i64 %6029, i64* %PC.i31
  %6030 = inttoptr i64 %6025 to i32*
  store i32 %6026, i32* %6030
  store %struct.Memory* %loadMem_4114b8, %struct.Memory** %MEMORY
  %loadMem_4114bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 33
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %6033 to i64*
  %6034 = load i64, i64* %PC.i30
  %6035 = add i64 %6034, -1113
  %6036 = load i64, i64* %PC.i30
  %6037 = add i64 %6036, 5
  store i64 %6037, i64* %PC.i30
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6035, i64* %6038, align 8
  store %struct.Memory* %loadMem_4114bb, %struct.Memory** %MEMORY
  br label %block_.L_411062

block_.L_4114c0:                                  ; preds = %block_.L_411062
  %loadMem_4114c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 33
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 9
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RSI.i29 = bitcast %union.anon* %6044 to i64*
  %6045 = load i64, i64* %PC.i28
  %6046 = add i64 %6045, 10
  store i64 %6046, i64* %PC.i28
  store i64 ptrtoint (%G__0x45626c_type* @G__0x45626c to i64), i64* %RSI.i29, align 8
  store %struct.Memory* %loadMem_4114c0, %struct.Memory** %MEMORY
  %loadMem_4114ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6048 = getelementptr inbounds %struct.GPR, %struct.GPR* %6047, i32 0, i32 33
  %6049 = getelementptr inbounds %struct.Reg, %struct.Reg* %6048, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6049 to i64*
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 11
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %RDI.i26 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 15
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %6055 to i64*
  %6056 = load i64, i64* %RBP.i27
  %6057 = sub i64 %6056, 8
  %6058 = load i64, i64* %PC.i25
  %6059 = add i64 %6058, 4
  store i64 %6059, i64* %PC.i25
  %6060 = inttoptr i64 %6057 to i64*
  %6061 = load i64, i64* %6060
  store i64 %6061, i64* %RDI.i26, align 8
  store %struct.Memory* %loadMem_4114ca, %struct.Memory** %MEMORY
  %loadMem_4114ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 33
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %6064 to i64*
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 1
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %6068 = bitcast %union.anon* %6067 to %struct.anon.2*
  %AL.i24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6068, i32 0, i32 0
  %6069 = load i64, i64* %PC.i23
  %6070 = add i64 %6069, 2
  store i64 %6070, i64* %PC.i23
  store i8 0, i8* %AL.i24, align 1
  store %struct.Memory* %loadMem_4114ce, %struct.Memory** %MEMORY
  %loadMem1_4114d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 33
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6073 to i64*
  %6074 = load i64, i64* %PC.i22
  %6075 = add i64 %6074, -65376
  %6076 = load i64, i64* %PC.i22
  %6077 = add i64 %6076, 5
  %6078 = load i64, i64* %PC.i22
  %6079 = add i64 %6078, 5
  store i64 %6079, i64* %PC.i22
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6081 = load i64, i64* %6080, align 8
  %6082 = add i64 %6081, -8
  %6083 = inttoptr i64 %6082 to i64*
  store i64 %6077, i64* %6083
  store i64 %6082, i64* %6080, align 8
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6075, i64* %6084, align 8
  store %struct.Memory* %loadMem1_4114d0, %struct.Memory** %MEMORY
  %loadMem2_4114d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4114d0 = load i64, i64* %3
  %6085 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4114d0)
  store %struct.Memory* %6085, %struct.Memory** %MEMORY
  %loadMem_4114d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 33
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6088 to i64*
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 9
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6091 to i64*
  %6092 = load i64, i64* %PC.i19
  %6093 = add i64 %6092, 10
  store i64 %6093, i64* %PC.i19
  store i64 ptrtoint (%G__0x45628f_type* @G__0x45628f to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4114d5, %struct.Memory** %MEMORY
  %loadMem_4114df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6095 = getelementptr inbounds %struct.GPR, %struct.GPR* %6094, i32 0, i32 33
  %6096 = getelementptr inbounds %struct.Reg, %struct.Reg* %6095, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6096 to i64*
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6098 = getelementptr inbounds %struct.GPR, %struct.GPR* %6097, i32 0, i32 11
  %6099 = getelementptr inbounds %struct.Reg, %struct.Reg* %6098, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6099 to i64*
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 15
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %6102 to i64*
  %6103 = load i64, i64* %RBP.i18
  %6104 = sub i64 %6103, 8
  %6105 = load i64, i64* %PC.i17
  %6106 = add i64 %6105, 4
  store i64 %6106, i64* %PC.i17
  %6107 = inttoptr i64 %6104 to i64*
  %6108 = load i64, i64* %6107
  store i64 %6108, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4114df, %struct.Memory** %MEMORY
  %loadMem_4114e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 33
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6111 to i64*
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 7
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6114 to i64*
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 15
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %6117 to i64*
  %6118 = load i64, i64* %RBP.i16
  %6119 = sub i64 %6118, 44
  %6120 = load i64, i64* %PC.i15
  %6121 = add i64 %6120, 3
  store i64 %6121, i64* %PC.i15
  %6122 = inttoptr i64 %6119 to i32*
  %6123 = load i32, i32* %6122
  %6124 = zext i32 %6123 to i64
  store i64 %6124, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4114e3, %struct.Memory** %MEMORY
  %loadMem_4114e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6126 = getelementptr inbounds %struct.GPR, %struct.GPR* %6125, i32 0, i32 33
  %6127 = getelementptr inbounds %struct.Reg, %struct.Reg* %6126, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6127 to i64*
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 1
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %6130 to i32*
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 15
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %6133 to i64*
  %6134 = load i64, i64* %RBP.i14
  %6135 = sub i64 %6134, 168
  %6136 = load i32, i32* %EAX.i13
  %6137 = zext i32 %6136 to i64
  %6138 = load i64, i64* %PC.i12
  %6139 = add i64 %6138, 6
  store i64 %6139, i64* %PC.i12
  %6140 = inttoptr i64 %6135 to i32*
  store i32 %6136, i32* %6140
  store %struct.Memory* %loadMem_4114e6, %struct.Memory** %MEMORY
  %loadMem_4114ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 33
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %6143 to i64*
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 1
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %6147 = bitcast %union.anon* %6146 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6147, i32 0, i32 0
  %6148 = load i64, i64* %PC.i11
  %6149 = add i64 %6148, 2
  store i64 %6149, i64* %PC.i11
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4114ec, %struct.Memory** %MEMORY
  %loadMem1_4114ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6151 = getelementptr inbounds %struct.GPR, %struct.GPR* %6150, i32 0, i32 33
  %6152 = getelementptr inbounds %struct.Reg, %struct.Reg* %6151, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6152 to i64*
  %6153 = load i64, i64* %PC.i10
  %6154 = add i64 %6153, -65406
  %6155 = load i64, i64* %PC.i10
  %6156 = add i64 %6155, 5
  %6157 = load i64, i64* %PC.i10
  %6158 = add i64 %6157, 5
  store i64 %6158, i64* %PC.i10
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6160 = load i64, i64* %6159, align 8
  %6161 = add i64 %6160, -8
  %6162 = inttoptr i64 %6161 to i64*
  store i64 %6156, i64* %6162
  store i64 %6161, i64* %6159, align 8
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6154, i64* %6163, align 8
  store %struct.Memory* %loadMem1_4114ee, %struct.Memory** %MEMORY
  %loadMem2_4114ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4114ee = load i64, i64* %3
  %6164 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4114ee)
  store %struct.Memory* %6164, %struct.Memory** %MEMORY
  %loadMem_4114f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 33
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6167 to i64*
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 1
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6170 to i32*
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 15
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %6173 to i64*
  %6174 = load i64, i64* %RBP.i6
  %6175 = sub i64 %6174, 172
  %6176 = load i32, i32* %EAX.i
  %6177 = zext i32 %6176 to i64
  %6178 = load i64, i64* %PC.i5
  %6179 = add i64 %6178, 6
  store i64 %6179, i64* %PC.i5
  %6180 = inttoptr i64 %6175 to i32*
  store i32 %6176, i32* %6180
  store %struct.Memory* %loadMem_4114f3, %struct.Memory** %MEMORY
  br label %block_.L_4114f9

block_.L_4114f9:                                  ; preds = %block_.L_4114c0, %block_.L_410ff2, %block_410f16
  %loadMem_4114f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 13
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6186 to i64*
  %6187 = load i64, i64* %RSP.i
  %6188 = load i64, i64* %PC.i4
  %6189 = add i64 %6188, 7
  store i64 %6189, i64* %PC.i4
  %6190 = add i64 176, %6187
  store i64 %6190, i64* %RSP.i, align 8
  %6191 = icmp ult i64 %6190, %6187
  %6192 = icmp ult i64 %6190, 176
  %6193 = or i1 %6191, %6192
  %6194 = zext i1 %6193 to i8
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6194, i8* %6195, align 1
  %6196 = trunc i64 %6190 to i32
  %6197 = and i32 %6196, 255
  %6198 = call i32 @llvm.ctpop.i32(i32 %6197)
  %6199 = trunc i32 %6198 to i8
  %6200 = and i8 %6199, 1
  %6201 = xor i8 %6200, 1
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6201, i8* %6202, align 1
  %6203 = xor i64 176, %6187
  %6204 = xor i64 %6203, %6190
  %6205 = lshr i64 %6204, 4
  %6206 = trunc i64 %6205 to i8
  %6207 = and i8 %6206, 1
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6207, i8* %6208, align 1
  %6209 = icmp eq i64 %6190, 0
  %6210 = zext i1 %6209 to i8
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6210, i8* %6211, align 1
  %6212 = lshr i64 %6190, 63
  %6213 = trunc i64 %6212 to i8
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6213, i8* %6214, align 1
  %6215 = lshr i64 %6187, 63
  %6216 = xor i64 %6212, %6215
  %6217 = add i64 %6216, %6212
  %6218 = icmp eq i64 %6217, 2
  %6219 = zext i1 %6218 to i8
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6219, i8* %6220, align 1
  store %struct.Memory* %loadMem_4114f9, %struct.Memory** %MEMORY
  %loadMem_411500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 33
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6223 to i64*
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 15
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6226 to i64*
  %6227 = load i64, i64* %PC.i2
  %6228 = add i64 %6227, 1
  store i64 %6228, i64* %PC.i2
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6230 = load i64, i64* %6229, align 8
  %6231 = add i64 %6230, 8
  %6232 = inttoptr i64 %6230 to i64*
  %6233 = load i64, i64* %6232
  store i64 %6233, i64* %RBP.i3, align 8
  store i64 %6231, i64* %6229, align 8
  store %struct.Memory* %loadMem_411500, %struct.Memory** %MEMORY
  %loadMem_411501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 33
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6236 to i64*
  %6237 = load i64, i64* %PC.i1
  %6238 = add i64 %6237, 1
  store i64 %6238, i64* %PC.i1
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6241 = load i64, i64* %6240, align 8
  %6242 = inttoptr i64 %6241 to i64*
  %6243 = load i64, i64* %6242
  store i64 %6243, i64* %6239, align 8
  %6244 = add i64 %6241, 8
  store i64 %6244, i64* %6240, align 8
  store %struct.Memory* %loadMem_411501, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_411501
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_410f33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45615f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45615f_type* @G__0x45615f to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4114f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_410ff7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x456173___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456173_type* @G__0x456173 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x456198___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456198_type* @G__0x456198 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sub i32 %12, %18
  %20 = icmp ult i32 %12, %18
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %19, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i32 %18, %12
  %30 = xor i32 %29, %19
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %19, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %18, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_410ff2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Statetype(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4561a9___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4561a9_type* @G__0x4561a9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x18__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___r8__r9_4____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %R8
  %17 = load i64, i64* %R9
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_410f7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_41101e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4561b7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4561b7_type* @G__0x4561b7 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x4561f1___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4561f1_type* @G__0x4561f1 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x456227___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456227_type* @G__0x456227 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jge_.L_4114c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_411097(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rsi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x18__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rsi__r8_4____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rsi____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__edi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_411162(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %DL, align 1
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

define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = add i32 1, %10
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %14, %10
  %17 = icmp ult i32 %14, 1
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 1, %11
  %28 = trunc i64 %27 to i32
  %29 = xor i32 %28, %14
  %30 = lshr i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i32 %14, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %10, 31
  %41 = xor i32 %37, %40
  %42 = add i32 %41, %37
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__r8d___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb___rax__rcx_1____r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  store i8 %22, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl__dl___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 21
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R10D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R10D to i64*
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = trunc i64 %15 to i32
  %19 = shl i32 %18, 24
  %20 = ashr exact i32 %19, 24
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movsbl__r9b___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R9B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = trunc i64 %14 to i32
  %18 = shl i32 %17, 24
  %19 = ashr exact i32 %18, 24
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.TransitionScoreLookup(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41116c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45624a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45624a_type* @G__0x45624a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rdx____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = sub i32 %10, 1
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %10, 1
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i64 1, %11
  %26 = trunc i64 %25 to i32
  %27 = xor i32 %26, %14
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %14, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__r8d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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

define %struct.Memory* @routine_jge_.L_411218(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x78__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_41146f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4112b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x45625c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45625c_type* @G__0x45625c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x676fe0___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6778848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x140__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rdi__r8_4____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rsi__rdi_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_41146a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_411376(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x676fe0___rax_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6778848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.tolower_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__al___r8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %R8B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl__r8b___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = trunc i64 %14 to i32
  %18 = shl i32 %17, 24
  %19 = ashr exact i32 %18, 24
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rdi__r9_4____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_411465(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 5
  %14 = icmp ult i32 %9, 5
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
  %23 = xor i64 5, %10
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

define %struct.Memory* @routine_jne_.L_4113ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 5
  %14 = icmp ult i32 %9, 5
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
  %23 = xor i64 5, %10
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

define %struct.Memory* @routine_je_.L_41141b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 8
  %14 = icmp ult i32 %9, 8
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
  %23 = xor i64 8, %10
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

define %struct.Memory* @routine_jne_.L_4113e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 8
  %14 = icmp ult i32 %9, 8
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
  %23 = xor i64 8, %10
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

define %struct.Memory* @routine_cmpl__0xa___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 10
  %14 = icmp ult i32 %9, 10
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
  %23 = xor i64 10, %10
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

define %struct.Memory* @routine_jne_.L_411460(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xa___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 10
  %14 = icmp ult i32 %9, 10
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
  %23 = xor i64 10, %10
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

define %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_411499(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x456264___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456264_type* @G__0x456264 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x456fc4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x456fc4_type* @G__0x456fc4 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 45, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__0x45a1f7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.fputs_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_411062(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45626c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45626c_type* @G__0x45626c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45628f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45628f_type* @G__0x45628f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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
