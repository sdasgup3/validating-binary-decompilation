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
%G__0x5800a9_type = type <{ [8 x i8] }>
%G__0x5800c0_type = type <{ [8 x i8] }>
%G__0x5800d7_type = type <{ [8 x i8] }>
%G__0x5800ee_type = type <{ [8 x i8] }>
%G__0x580105_type = type <{ [8 x i8] }>
%G__0x58011c_type = type <{ [8 x i8] }>
%G__0x580133_type = type <{ [8 x i8] }>
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
@G__0x5800a9 = global %G__0x5800a9_type zeroinitializer
@G__0x5800c0 = global %G__0x5800c0_type zeroinitializer
@G__0x5800d7 = global %G__0x5800d7_type zeroinitializer
@G__0x5800ee = global %G__0x5800ee_type zeroinitializer
@G__0x580105 = global %G__0x580105_type zeroinitializer
@G__0x58011c = global %G__0x58011c_type zeroinitializer
@G__0x580133 = global %G__0x580133_type zeroinitializer

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

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46ada0.defend_both(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @break_through_helper(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_46b820 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_46b820, %struct.Memory** %MEMORY
  %loadMem_46b821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i461 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i461
  %27 = load i64, i64* %PC.i460
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i460
  store i64 %26, i64* %RBP.i462, align 8
  store %struct.Memory* %loadMem_46b821, %struct.Memory** %MEMORY
  %loadMem_46b824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBX.i459 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBX.i459
  %36 = load i64, i64* %PC.i458
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC.i458
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_46b824, %struct.Memory** %MEMORY
  %loadMem_46b825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RSP.i457 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %RSP.i457
  %49 = load i64, i64* %PC.i456
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC.i456
  %51 = sub i64 %48, 56
  store i64 %51, i64* %RSP.i457, align 8
  %52 = icmp ult i64 %48, 56
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %53, i8* %54, align 1
  %55 = trunc i64 %51 to i32
  %56 = and i32 %55, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %60, i8* %61, align 1
  %62 = xor i64 56, %48
  %63 = xor i64 %62, %51
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i8
  %66 = and i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %66, i8* %67, align 1
  %68 = icmp eq i64 %51, 0
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %69, i8* %70, align 1
  %71 = lshr i64 %51, 63
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %72, i8* %73, align 1
  %74 = lshr i64 %48, 63
  %75 = xor i64 %71, %74
  %76 = add i64 %75, %74
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %78, i8* %79, align 1
  store %struct.Memory* %loadMem_46b825, %struct.Memory** %MEMORY
  %loadMem_46b829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i455
  %90 = add i64 %89, 24
  %91 = load i64, i64* %PC.i453
  %92 = add i64 %91, 3
  store i64 %92, i64* %PC.i453
  %93 = inttoptr i64 %90 to i32*
  %94 = load i32, i32* %93
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_46b829, %struct.Memory** %MEMORY
  %loadMem_46b82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 33
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 21
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %R10D.i451 = bitcast %union.anon* %101 to i32*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 15
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %104 to i64*
  %105 = bitcast i32* %R10D.i451 to i64*
  %106 = load i64, i64* %RBP.i452
  %107 = add i64 %106, 16
  %108 = load i64, i64* %PC.i450
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC.i450
  %110 = inttoptr i64 %107 to i32*
  %111 = load i32, i32* %110
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %105, align 8
  store %struct.Memory* %loadMem_46b82c, %struct.Memory** %MEMORY
  %loadMem_46b830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 23
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %R11.i449 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %PC.i448
  %120 = add i64 %119, 10
  store i64 %120, i64* %PC.i448
  store i64 ptrtoint (%G__0x5800a9_type* @G__0x5800a9 to i64), i64* %R11.i449, align 8
  store %struct.Memory* %loadMem_46b830, %struct.Memory** %MEMORY
  %loadMem_46b83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %EBX.i446 = bitcast %union.anon* %126 to i32*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBX.i447 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBX.i447
  %131 = load i32, i32* %EBX.i446
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %PC.i445
  %134 = add i64 %133, 2
  store i64 %134, i64* %PC.i445
  %135 = xor i64 %132, %130
  %136 = trunc i64 %135 to i32
  %137 = and i64 %135, 4294967295
  store i64 %137, i64* %RBX.i447, align 8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %138, align 1
  %139 = and i32 %136, 255
  %140 = call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %143, i8* %144, align 1
  %145 = icmp eq i32 %136, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1
  %148 = lshr i32 %136, 31
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %149, i8* %150, align 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %151, align 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %152, align 1
  store %struct.Memory* %loadMem_46b83a, %struct.Memory** %MEMORY
  %loadMem_46b83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 11
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i444
  %163 = sub i64 %162, 16
  %164 = load i32, i32* %EDI.i
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC.i443
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i443
  %168 = inttoptr i64 %163 to i32*
  store i32 %164, i32* %168
  store %struct.Memory* %loadMem_46b83c, %struct.Memory** %MEMORY
  %loadMem_46b83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %174 to i32*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 15
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RBP.i442
  %179 = sub i64 %178, 20
  %180 = load i32, i32* %ESI.i
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* %PC.i441
  %183 = add i64 %182, 3
  store i64 %183, i64* %PC.i441
  %184 = inttoptr i64 %179 to i32*
  store i32 %180, i32* %184
  store %struct.Memory* %loadMem_46b83f, %struct.Memory** %MEMORY
  %loadMem_46b842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %190 to i32*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i440
  %195 = sub i64 %194, 24
  %196 = load i32, i32* %EDX.i
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %PC.i439
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC.i439
  %200 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %200
  store %struct.Memory* %loadMem_46b842, %struct.Memory** %MEMORY
  %loadMem_46b845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %ECX.i437 = bitcast %union.anon* %206 to i32*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RBP.i438
  %211 = sub i64 %210, 28
  %212 = load i32, i32* %ECX.i437
  %213 = zext i32 %212 to i64
  %214 = load i64, i64* %PC.i436
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC.i436
  %216 = inttoptr i64 %211 to i32*
  store i32 %212, i32* %216
  store %struct.Memory* %loadMem_46b845, %struct.Memory** %MEMORY
  %loadMem_46b848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 17
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %R8D.i434 = bitcast %union.anon* %222 to i32*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 15
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %RBP.i435
  %227 = sub i64 %226, 32
  %228 = load i32, i32* %R8D.i434
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC.i433
  %231 = add i64 %230, 4
  store i64 %231, i64* %PC.i433
  %232 = inttoptr i64 %227 to i32*
  store i32 %228, i32* %232
  store %struct.Memory* %loadMem_46b848, %struct.Memory** %MEMORY
  %loadMem_46b84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 19
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %R9D.i431 = bitcast %union.anon* %238 to i32*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i432
  %243 = sub i64 %242, 36
  %244 = load i32, i32* %R9D.i431
  %245 = zext i32 %244 to i64
  %246 = load i64, i64* %PC.i430
  %247 = add i64 %246, 4
  store i64 %247, i64* %PC.i430
  %248 = inttoptr i64 %243 to i32*
  store i32 %244, i32* %248
  store %struct.Memory* %loadMem_46b84c, %struct.Memory** %MEMORY
  %loadMem_46b850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 21
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %254 to i32*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 15
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RBP.i429
  %259 = sub i64 %258, 40
  %260 = load i32, i32* %R10D.i
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %PC.i428
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC.i428
  %264 = inttoptr i64 %259 to i32*
  store i32 %260, i32* %264
  store %struct.Memory* %loadMem_46b850, %struct.Memory** %MEMORY
  %loadMem_46b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %270 to i32*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 15
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %RBP.i427
  %275 = sub i64 %274, 44
  %276 = load i32, i32* %EAX.i426
  %277 = zext i32 %276 to i64
  %278 = load i64, i64* %PC.i425
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC.i425
  %280 = inttoptr i64 %275 to i32*
  store i32 %276, i32* %280
  store %struct.Memory* %loadMem_46b854, %struct.Memory** %MEMORY
  %loadMem_46b857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 15
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %286 to i64*
  %287 = load i64, i64* %RBP.i424
  %288 = sub i64 %287, 48
  %289 = load i64, i64* %PC.i423
  %290 = add i64 %289, 7
  store i64 %290, i64* %PC.i423
  %291 = inttoptr i64 %288 to i32*
  store i32 0, i32* %291
  store %struct.Memory* %loadMem_46b857, %struct.Memory** %MEMORY
  %loadMem_46b85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 11
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RDI.i421 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 15
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %300 to i64*
  %301 = load i64, i64* %RBP.i422
  %302 = sub i64 %301, 28
  %303 = load i64, i64* %PC.i420
  %304 = add i64 %303, 3
  store i64 %304, i64* %PC.i420
  %305 = inttoptr i64 %302 to i32*
  %306 = load i32, i32* %305
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RDI.i421, align 8
  store %struct.Memory* %loadMem_46b85e, %struct.Memory** %MEMORY
  %loadMem_46b861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 9
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 15
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %RBP.i419
  %318 = sub i64 %317, 44
  %319 = load i64, i64* %PC.i417
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC.i417
  %321 = inttoptr i64 %318 to i32*
  %322 = load i32, i32* %321
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RSI.i418, align 8
  store %struct.Memory* %loadMem_46b861, %struct.Memory** %MEMORY
  %loadMem_46b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 15
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %RBP.i416
  %334 = sub i64 %333, 36
  %335 = load i64, i64* %PC.i414
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC.i414
  %337 = inttoptr i64 %334 to i32*
  %338 = load i32, i32* %337
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_46b864, %struct.Memory** %MEMORY
  %loadMem_46b867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RDX.i413 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 23
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %R11.i = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %R11.i
  %350 = load i64, i64* %PC.i412
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC.i412
  store i64 %349, i64* %RDX.i413, align 8
  store %struct.Memory* %loadMem_46b867, %struct.Memory** %MEMORY
  %loadMem_46b86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %EBX.i410 = bitcast %union.anon* %357 to i32*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 17
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %R8D.i411 = bitcast %union.anon* %360 to i32*
  %361 = bitcast i32* %R8D.i411 to i64*
  %362 = load i32, i32* %EBX.i410
  %363 = zext i32 %362 to i64
  %364 = load i64, i64* %PC.i409
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC.i409
  %366 = and i64 %363, 4294967295
  store i64 %366, i64* %361, align 8
  store %struct.Memory* %loadMem_46b86a, %struct.Memory** %MEMORY
  %loadMem_46b86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 3
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %372 to i32*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 19
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %R9D.i408 = bitcast %union.anon* %375 to i32*
  %376 = bitcast i32* %R9D.i408 to i64*
  %377 = load i32, i32* %EBX.i
  %378 = zext i32 %377 to i64
  %379 = load i64, i64* %PC.i407
  %380 = add i64 %379, 3
  store i64 %380, i64* %PC.i407
  %381 = and i64 %378, 4294967295
  store i64 %381, i64* %376, align 8
  store %struct.Memory* %loadMem_46b86d, %struct.Memory** %MEMORY
  %loadMem1_46b870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %PC.i406
  %386 = add i64 %385, -404032
  %387 = load i64, i64* %PC.i406
  %388 = add i64 %387, 5
  %389 = load i64, i64* %PC.i406
  %390 = add i64 %389, 5
  store i64 %390, i64* %PC.i406
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %392 = load i64, i64* %391, align 8
  %393 = add i64 %392, -8
  %394 = inttoptr i64 %393 to i64*
  store i64 %388, i64* %394
  store i64 %393, i64* %391, align 8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %386, i64* %395, align 8
  store %struct.Memory* %loadMem1_46b870, %struct.Memory** %MEMORY
  %loadMem2_46b870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b870 = load i64, i64* %3
  %call2_46b870 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46b870, %struct.Memory* %loadMem2_46b870)
  store %struct.Memory* %call2_46b870, %struct.Memory** %MEMORY
  %loadMem_46b875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 1
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %EAX.i405 = bitcast %union.anon* %401 to i32*
  %402 = load i32, i32* %EAX.i405
  %403 = zext i32 %402 to i64
  %404 = load i64, i64* %PC.i404
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i404
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %406, align 1
  %407 = and i32 %402, 255
  %408 = call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %411, i8* %412, align 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %413, align 1
  %414 = icmp eq i32 %402, 0
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %415, i8* %416, align 1
  %417 = lshr i32 %402, 31
  %418 = trunc i32 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %418, i8* %419, align 1
  %420 = lshr i32 %402, 31
  %421 = xor i32 %417, %420
  %422 = add i32 %421, %420
  %423 = icmp eq i32 %422, 2
  %424 = zext i1 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %424, i8* %425, align 1
  store %struct.Memory* %loadMem_46b875, %struct.Memory** %MEMORY
  %loadMem_46b878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 33
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %PC.i403
  %430 = add i64 %429, 922
  %431 = load i64, i64* %PC.i403
  %432 = add i64 %431, 6
  %433 = load i64, i64* %PC.i403
  %434 = add i64 %433, 6
  store i64 %434, i64* %PC.i403
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %436 = load i8, i8* %435, align 1
  store i8 %436, i8* %BRANCH_TAKEN, align 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %438 = icmp ne i8 %436, 0
  %439 = select i1 %438, i64 %430, i64 %432
  store i64 %439, i64* %437, align 8
  store %struct.Memory* %loadMem_46b878, %struct.Memory** %MEMORY
  %loadBr_46b878 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b878 = icmp eq i8 %loadBr_46b878, 1
  br i1 %cmpBr_46b878, label %block_.L_46bc12, label %block_46b87e

block_46b87e:                                     ; preds = %entry
  %loadMem_46b87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %445 to i32*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RAX.i402
  %450 = load i32, i32* %EAX.i401
  %451 = zext i32 %450 to i64
  %452 = load i64, i64* %PC.i400
  %453 = add i64 %452, 2
  store i64 %453, i64* %PC.i400
  %454 = xor i64 %451, %449
  %455 = trunc i64 %454 to i32
  %456 = and i64 %454, 4294967295
  store i64 %456, i64* %RAX.i402, align 8
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %457, align 1
  %458 = and i32 %455, 255
  %459 = call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %462, i8* %463, align 1
  %464 = icmp eq i32 %455, 0
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %465, i8* %466, align 1
  %467 = lshr i32 %455, 31
  %468 = trunc i32 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %468, i8* %469, align 1
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %470, align 1
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %471, align 1
  store %struct.Memory* %loadMem_46b87e, %struct.Memory** %MEMORY
  %loadMem_46b880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %EAX.i398 = bitcast %union.anon* %477 to i32*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 9
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RSI.i399 = bitcast %union.anon* %480 to i64*
  %481 = load i32, i32* %EAX.i398
  %482 = zext i32 %481 to i64
  %483 = load i64, i64* %PC.i397
  %484 = add i64 %483, 2
  store i64 %484, i64* %PC.i397
  %485 = and i64 %482, 4294967295
  store i64 %485, i64* %RSI.i399, align 8
  store %struct.Memory* %loadMem_46b880, %struct.Memory** %MEMORY
  %loadMem_46b882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 11
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RDI.i395 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 15
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RBP.i396
  %496 = sub i64 %495, 36
  %497 = load i64, i64* %PC.i394
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC.i394
  %499 = inttoptr i64 %496 to i32*
  %500 = load i32, i32* %499
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RDI.i395, align 8
  store %struct.Memory* %loadMem_46b882, %struct.Memory** %MEMORY
  %loadMem1_46b885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %504 to i64*
  %505 = load i64, i64* %PC.i393
  %506 = add i64 %505, -56645
  %507 = load i64, i64* %PC.i393
  %508 = add i64 %507, 5
  %509 = load i64, i64* %PC.i393
  %510 = add i64 %509, 5
  store i64 %510, i64* %PC.i393
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = add i64 %512, -8
  %514 = inttoptr i64 %513 to i64*
  store i64 %508, i64* %514
  store i64 %513, i64* %511, align 8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %506, i64* %515, align 8
  store %struct.Memory* %loadMem1_46b885, %struct.Memory** %MEMORY
  %loadMem2_46b885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b885 = load i64, i64* %3
  %call2_46b885 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46b885, %struct.Memory* %loadMem2_46b885)
  store %struct.Memory* %call2_46b885, %struct.Memory** %MEMORY
  %loadMem_46b88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %EAX.i392 = bitcast %union.anon* %521 to i32*
  %522 = load i32, i32* %EAX.i392
  %523 = zext i32 %522 to i64
  %524 = load i64, i64* %PC.i391
  %525 = add i64 %524, 3
  store i64 %525, i64* %PC.i391
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %526, align 1
  %527 = and i32 %522, 255
  %528 = call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %531, i8* %532, align 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %533, align 1
  %534 = icmp eq i32 %522, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1
  %537 = lshr i32 %522, 31
  %538 = trunc i32 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1
  %540 = lshr i32 %522, 31
  %541 = xor i32 %537, %540
  %542 = add i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %544, i8* %545, align 1
  store %struct.Memory* %loadMem_46b88a, %struct.Memory** %MEMORY
  %loadMem_46b88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %PC.i390
  %550 = add i64 %549, 896
  %551 = load i64, i64* %PC.i390
  %552 = add i64 %551, 6
  %553 = load i64, i64* %PC.i390
  %554 = add i64 %553, 6
  store i64 %554, i64* %PC.i390
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %556 = load i8, i8* %555, align 1
  %557 = icmp eq i8 %556, 0
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %BRANCH_TAKEN, align 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %560 = select i1 %557, i64 %550, i64 %552
  store i64 %560, i64* %559, align 8
  store %struct.Memory* %loadMem_46b88d, %struct.Memory** %MEMORY
  %loadBr_46b88d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b88d = icmp eq i8 %loadBr_46b88d, 1
  br i1 %cmpBr_46b88d, label %block_.L_46bc0d, label %block_46b893

block_46b893:                                     ; preds = %block_46b87e
  %loadMem_46b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 9
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %RSI.i388 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 15
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %569 to i64*
  %570 = load i64, i64* %RBP.i389
  %571 = sub i64 %570, 52
  %572 = load i64, i64* %PC.i387
  %573 = add i64 %572, 4
  store i64 %573, i64* %PC.i387
  store i64 %571, i64* %RSI.i388, align 8
  store %struct.Memory* %loadMem_46b893, %struct.Memory** %MEMORY
  %loadMem_46b897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 11
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RDI.i385 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 15
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %582 to i64*
  %583 = load i64, i64* %RBP.i386
  %584 = sub i64 %583, 28
  %585 = load i64, i64* %PC.i384
  %586 = add i64 %585, 3
  store i64 %586, i64* %PC.i384
  %587 = inttoptr i64 %584 to i32*
  %588 = load i32, i32* %587
  %589 = zext i32 %588 to i64
  store i64 %589, i64* %RDI.i385, align 8
  store %struct.Memory* %loadMem_46b897, %struct.Memory** %MEMORY
  %loadMem1_46b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %592 to i64*
  %593 = load i64, i64* %PC.i383
  %594 = add i64 %593, -56666
  %595 = load i64, i64* %PC.i383
  %596 = add i64 %595, 5
  %597 = load i64, i64* %PC.i383
  %598 = add i64 %597, 5
  store i64 %598, i64* %PC.i383
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %600 = load i64, i64* %599, align 8
  %601 = add i64 %600, -8
  %602 = inttoptr i64 %601 to i64*
  store i64 %596, i64* %602
  store i64 %601, i64* %599, align 8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %594, i64* %603, align 8
  store %struct.Memory* %loadMem1_46b89a, %struct.Memory** %MEMORY
  %loadMem2_46b89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b89a = load i64, i64* %3
  %call2_46b89a = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46b89a, %struct.Memory* %loadMem2_46b89a)
  store %struct.Memory* %call2_46b89a, %struct.Memory** %MEMORY
  %loadMem_46b89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 1
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %609 to i32*
  %610 = load i32, i32* %EAX.i382
  %611 = zext i32 %610 to i64
  %612 = load i64, i64* %PC.i381
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC.i381
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %614, align 1
  %615 = and i32 %610, 255
  %616 = call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %619, i8* %620, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %621, align 1
  %622 = icmp eq i32 %610, 0
  %623 = zext i1 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %623, i8* %624, align 1
  %625 = lshr i32 %610, 31
  %626 = trunc i32 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %626, i8* %627, align 1
  %628 = lshr i32 %610, 31
  %629 = xor i32 %625, %628
  %630 = add i32 %629, %628
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %632, i8* %633, align 1
  store %struct.Memory* %loadMem_46b89f, %struct.Memory** %MEMORY
  %loadMem_46b8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %PC.i380
  %638 = add i64 %637, 18
  %639 = load i64, i64* %PC.i380
  %640 = add i64 %639, 6
  %641 = load i64, i64* %PC.i380
  %642 = add i64 %641, 6
  store i64 %642, i64* %PC.i380
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %644 = load i8, i8* %643, align 1
  %645 = icmp eq i8 %644, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %BRANCH_TAKEN, align 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %648 = select i1 %645, i64 %638, i64 %640
  store i64 %648, i64* %647, align 8
  store %struct.Memory* %loadMem_46b8a2, %struct.Memory** %MEMORY
  %loadBr_46b8a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8a2 = icmp eq i8 %loadBr_46b8a2, 1
  br i1 %cmpBr_46b8a2, label %block_.L_46b8b4, label %block_46b8a8

block_46b8a8:                                     ; preds = %block_46b893
  %loadMem_46b8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 15
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %RBP.i379
  %656 = sub i64 %655, 48
  %657 = load i64, i64* %PC.i378
  %658 = add i64 %657, 7
  store i64 %658, i64* %PC.i378
  %659 = inttoptr i64 %656 to i32*
  store i32 2, i32* %659
  store %struct.Memory* %loadMem_46b8a8, %struct.Memory** %MEMORY
  %loadMem_46b8af = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i377
  %664 = add i64 %663, 387
  %665 = load i64, i64* %PC.i377
  %666 = add i64 %665, 5
  store i64 %666, i64* %PC.i377
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %664, i64* %667, align 8
  store %struct.Memory* %loadMem_46b8af, %struct.Memory** %MEMORY
  br label %block_.L_46ba32

block_.L_46b8b4:                                  ; preds = %block_46b893
  %loadMem_46b8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %PC.i375
  %675 = add i64 %674, 10
  store i64 %675, i64* %PC.i375
  store i64 ptrtoint (%G__0x5800c0_type* @G__0x5800c0 to i64), i64* %RDX.i376, align 8
  store %struct.Memory* %loadMem_46b8b4, %struct.Memory** %MEMORY
  %loadMem_46b8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %EAX.i373 = bitcast %union.anon* %681 to i32*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 1
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RAX.i374
  %686 = load i32, i32* %EAX.i373
  %687 = zext i32 %686 to i64
  %688 = load i64, i64* %PC.i372
  %689 = add i64 %688, 2
  store i64 %689, i64* %PC.i372
  %690 = xor i64 %687, %685
  %691 = trunc i64 %690 to i32
  %692 = and i64 %690, 4294967295
  store i64 %692, i64* %RAX.i374, align 8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %693, align 1
  %694 = and i32 %691, 255
  %695 = call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %698, i8* %699, align 1
  %700 = icmp eq i32 %691, 0
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %701, i8* %702, align 1
  %703 = lshr i32 %691, 31
  %704 = trunc i32 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %704, i8* %705, align 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %706, align 1
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %707, align 1
  store %struct.Memory* %loadMem_46b8be, %struct.Memory** %MEMORY
  %loadMem_46b8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 33
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 11
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RDI.i370 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 15
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %RBP.i371
  %718 = sub i64 %717, 32
  %719 = load i64, i64* %PC.i369
  %720 = add i64 %719, 3
  store i64 %720, i64* %PC.i369
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RDI.i370, align 8
  store %struct.Memory* %loadMem_46b8c0, %struct.Memory** %MEMORY
  %loadMem_46b8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 9
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RSI.i367 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 15
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RBP.i368
  %734 = sub i64 %733, 40
  %735 = load i64, i64* %PC.i366
  %736 = add i64 %735, 3
  store i64 %736, i64* %PC.i366
  %737 = inttoptr i64 %734 to i32*
  %738 = load i32, i32* %737
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RSI.i367, align 8
  store %struct.Memory* %loadMem_46b8c3, %struct.Memory** %MEMORY
  %loadMem_46b8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 5
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 15
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RBP.i365
  %750 = sub i64 %749, 36
  %751 = load i64, i64* %PC.i363
  %752 = add i64 %751, 3
  store i64 %752, i64* %PC.i363
  %753 = inttoptr i64 %750 to i32*
  %754 = load i32, i32* %753
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RCX.i364, align 8
  store %struct.Memory* %loadMem_46b8c6, %struct.Memory** %MEMORY
  %loadMem_46b8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 33
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %758 to i64*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 1
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %761 to i32*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 17
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %R8D.i362 = bitcast %union.anon* %764 to i32*
  %765 = bitcast i32* %R8D.i362 to i64*
  %766 = load i32, i32* %EAX.i361
  %767 = zext i32 %766 to i64
  %768 = load i64, i64* %PC.i360
  %769 = add i64 %768, 3
  store i64 %769, i64* %PC.i360
  %770 = and i64 %767, 4294967295
  store i64 %770, i64* %765, align 8
  store %struct.Memory* %loadMem_46b8c9, %struct.Memory** %MEMORY
  %loadMem_46b8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %773 to i64*
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 1
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %776 to i32*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 19
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %R9D.i359 = bitcast %union.anon* %779 to i32*
  %780 = bitcast i32* %R9D.i359 to i64*
  %781 = load i32, i32* %EAX.i358
  %782 = zext i32 %781 to i64
  %783 = load i64, i64* %PC.i357
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC.i357
  %785 = and i64 %782, 4294967295
  store i64 %785, i64* %780, align 8
  store %struct.Memory* %loadMem_46b8cc, %struct.Memory** %MEMORY
  %loadMem1_46b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %PC.i356
  %790 = add i64 %789, -404127
  %791 = load i64, i64* %PC.i356
  %792 = add i64 %791, 5
  %793 = load i64, i64* %PC.i356
  %794 = add i64 %793, 5
  store i64 %794, i64* %PC.i356
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %796 = load i64, i64* %795, align 8
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %792, i64* %798
  store i64 %797, i64* %795, align 8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %790, i64* %799, align 8
  store %struct.Memory* %loadMem1_46b8cf, %struct.Memory** %MEMORY
  %loadMem2_46b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b8cf = load i64, i64* %3
  %call2_46b8cf = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46b8cf, %struct.Memory* %loadMem2_46b8cf)
  store %struct.Memory* %call2_46b8cf, %struct.Memory** %MEMORY
  %loadMem_46b8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 1
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %EAX.i355 = bitcast %union.anon* %805 to i32*
  %806 = load i32, i32* %EAX.i355
  %807 = zext i32 %806 to i64
  %808 = load i64, i64* %PC.i354
  %809 = add i64 %808, 3
  store i64 %809, i64* %PC.i354
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %810, align 1
  %811 = and i32 %806, 255
  %812 = call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %815, i8* %816, align 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %817, align 1
  %818 = icmp eq i32 %806, 0
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %819, i8* %820, align 1
  %821 = lshr i32 %806, 31
  %822 = trunc i32 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %822, i8* %823, align 1
  %824 = lshr i32 %806, 31
  %825 = xor i32 %821, %824
  %826 = add i32 %825, %824
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %828, i8* %829, align 1
  store %struct.Memory* %loadMem_46b8d4, %struct.Memory** %MEMORY
  %loadMem_46b8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %PC.i353
  %834 = add i64 %833, 72
  %835 = load i64, i64* %PC.i353
  %836 = add i64 %835, 6
  %837 = load i64, i64* %PC.i353
  %838 = add i64 %837, 6
  store i64 %838, i64* %PC.i353
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %840 = load i8, i8* %839, align 1
  store i8 %840, i8* %BRANCH_TAKEN, align 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %842 = icmp ne i8 %840, 0
  %843 = select i1 %842, i64 %834, i64 %836
  store i64 %843, i64* %841, align 8
  store %struct.Memory* %loadMem_46b8d7, %struct.Memory** %MEMORY
  %loadBr_46b8d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8d7 = icmp eq i8 %loadBr_46b8d7, 1
  br i1 %cmpBr_46b8d7, label %block_.L_46b91f, label %block_46b8dd

block_46b8dd:                                     ; preds = %block_.L_46b8b4
  %loadMem_46b8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 1
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i352
  %854 = sub i64 %853, 28
  %855 = load i64, i64* %PC.i350
  %856 = add i64 %855, 4
  store i64 %856, i64* %PC.i350
  %857 = inttoptr i64 %854 to i32*
  %858 = load i32, i32* %857
  %859 = sext i32 %858 to i64
  store i64 %859, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_46b8dd, %struct.Memory** %MEMORY
  %loadMem_46b8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 1
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RAX.i349
  %867 = add i64 %866, 12099168
  %868 = load i64, i64* %PC.i348
  %869 = add i64 %868, 8
  store i64 %869, i64* %PC.i348
  %870 = inttoptr i64 %867 to i8*
  %871 = load i8, i8* %870
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %872, align 1
  %873 = zext i8 %871 to i32
  %874 = call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %877, i8* %878, align 1
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %879, align 1
  %880 = icmp eq i8 %871, 0
  %881 = zext i1 %880 to i8
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %881, i8* %882, align 1
  %883 = lshr i8 %871, 7
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %883, i8* %884, align 1
  %885 = lshr i8 %871, 7
  %886 = xor i8 %883, %885
  %887 = add i8 %886, %885
  %888 = icmp eq i8 %887, 2
  %889 = zext i1 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %889, i8* %890, align 1
  store %struct.Memory* %loadMem_46b8e1, %struct.Memory** %MEMORY
  %loadMem_46b8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 33
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %PC.i347
  %895 = add i64 %894, 27
  %896 = load i64, i64* %PC.i347
  %897 = add i64 %896, 6
  %898 = load i64, i64* %PC.i347
  %899 = add i64 %898, 6
  store i64 %899, i64* %PC.i347
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %901 = load i8, i8* %900, align 1
  store i8 %901, i8* %BRANCH_TAKEN, align 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %903 = icmp ne i8 %901, 0
  %904 = select i1 %903, i64 %895, i64 %897
  store i64 %904, i64* %902, align 8
  store %struct.Memory* %loadMem_46b8e9, %struct.Memory** %MEMORY
  %loadBr_46b8e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8e9 = icmp eq i8 %loadBr_46b8e9, 1
  br i1 %cmpBr_46b8e9, label %block_.L_46b904, label %block_46b8ef

block_46b8ef:                                     ; preds = %block_46b8dd
  %loadMem_46b8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 1
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %EAX.i345 = bitcast %union.anon* %910 to i32*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 1
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RAX.i346
  %915 = load i32, i32* %EAX.i345
  %916 = zext i32 %915 to i64
  %917 = load i64, i64* %PC.i344
  %918 = add i64 %917, 2
  store i64 %918, i64* %PC.i344
  %919 = xor i64 %916, %914
  %920 = trunc i64 %919 to i32
  %921 = and i64 %919, 4294967295
  store i64 %921, i64* %RAX.i346, align 8
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %922, align 1
  %923 = and i32 %920, 255
  %924 = call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %927, i8* %928, align 1
  %929 = icmp eq i32 %920, 0
  %930 = zext i1 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %930, i8* %931, align 1
  %932 = lshr i32 %920, 31
  %933 = trunc i32 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %933, i8* %934, align 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %935, align 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %936, align 1
  store %struct.Memory* %loadMem_46b8ef, %struct.Memory** %MEMORY
  %loadMem_46b8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 1
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %EAX.i342 = bitcast %union.anon* %942 to i32*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 9
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RSI.i343 = bitcast %union.anon* %945 to i64*
  %946 = load i32, i32* %EAX.i342
  %947 = zext i32 %946 to i64
  %948 = load i64, i64* %PC.i341
  %949 = add i64 %948, 2
  store i64 %949, i64* %PC.i341
  %950 = and i64 %947, 4294967295
  store i64 %950, i64* %RSI.i343, align 8
  store %struct.Memory* %loadMem_46b8f1, %struct.Memory** %MEMORY
  %loadMem_46b8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 11
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RDI.i339 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 15
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %959 to i64*
  %960 = load i64, i64* %RBP.i340
  %961 = sub i64 %960, 28
  %962 = load i64, i64* %PC.i338
  %963 = add i64 %962, 3
  store i64 %963, i64* %PC.i338
  %964 = inttoptr i64 %961 to i32*
  %965 = load i32, i32* %964
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RDI.i339, align 8
  store %struct.Memory* %loadMem_46b8f3, %struct.Memory** %MEMORY
  %loadMem1_46b8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %969 to i64*
  %970 = load i64, i64* %PC.i337
  %971 = add i64 %970, -4470
  %972 = load i64, i64* %PC.i337
  %973 = add i64 %972, 5
  %974 = load i64, i64* %PC.i337
  %975 = add i64 %974, 5
  store i64 %975, i64* %PC.i337
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %977 = load i64, i64* %976, align 8
  %978 = add i64 %977, -8
  %979 = inttoptr i64 %978 to i64*
  store i64 %973, i64* %979
  store i64 %978, i64* %976, align 8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %971, i64* %980, align 8
  store %struct.Memory* %loadMem1_46b8f6, %struct.Memory** %MEMORY
  %loadMem2_46b8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b8f6 = load i64, i64* %3
  %call2_46b8f6 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_46b8f6, %struct.Memory* %loadMem2_46b8f6)
  store %struct.Memory* %call2_46b8f6, %struct.Memory** %MEMORY
  %loadMem_46b8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %986 to i32*
  %987 = load i32, i32* %EAX.i336
  %988 = zext i32 %987 to i64
  %989 = load i64, i64* %PC.i335
  %990 = add i64 %989, 3
  store i64 %990, i64* %PC.i335
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %991, align 1
  %992 = and i32 %987, 255
  %993 = call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %996, i8* %997, align 1
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %998, align 1
  %999 = icmp eq i32 %987, 0
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1000, i8* %1001, align 1
  %1002 = lshr i32 %987, 31
  %1003 = trunc i32 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1003, i8* %1004, align 1
  %1005 = lshr i32 %987, 31
  %1006 = xor i32 %1002, %1005
  %1007 = add i32 %1006, %1005
  %1008 = icmp eq i32 %1007, 2
  %1009 = zext i1 %1008 to i8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1009, i8* %1010, align 1
  store %struct.Memory* %loadMem_46b8fb, %struct.Memory** %MEMORY
  %loadMem_46b8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %PC.i334
  %1015 = add i64 %1014, 28
  %1016 = load i64, i64* %PC.i334
  %1017 = add i64 %1016, 6
  %1018 = load i64, i64* %PC.i334
  %1019 = add i64 %1018, 6
  store i64 %1019, i64* %PC.i334
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1021 = load i8, i8* %1020, align 1
  %1022 = icmp eq i8 %1021, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %BRANCH_TAKEN, align 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1025 = select i1 %1022, i64 %1015, i64 %1017
  store i64 %1025, i64* %1024, align 8
  store %struct.Memory* %loadMem_46b8fe, %struct.Memory** %MEMORY
  %loadBr_46b8fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b8fe = icmp eq i8 %loadBr_46b8fe, 1
  br i1 %cmpBr_46b8fe, label %block_.L_46b91a, label %block_.L_46b904

block_.L_46b904:                                  ; preds = %block_46b8ef, %block_46b8dd
  %loadMem1_46b904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1028 to i64*
  %1029 = load i64, i64* %PC.i333
  %1030 = add i64 %1029, -383908
  %1031 = load i64, i64* %PC.i333
  %1032 = add i64 %1031, 5
  %1033 = load i64, i64* %PC.i333
  %1034 = add i64 %1033, 5
  store i64 %1034, i64* %PC.i333
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1036 = load i64, i64* %1035, align 8
  %1037 = add i64 %1036, -8
  %1038 = inttoptr i64 %1037 to i64*
  store i64 %1032, i64* %1038
  store i64 %1037, i64* %1035, align 8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1030, i64* %1039, align 8
  store %struct.Memory* %loadMem1_46b904, %struct.Memory** %MEMORY
  %loadMem2_46b904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b904 = load i64, i64* %3
  %call2_46b904 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46b904, %struct.Memory* %loadMem2_46b904)
  store %struct.Memory* %call2_46b904, %struct.Memory** %MEMORY
  %loadMem1_46b909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1042 to i64*
  %1043 = load i64, i64* %PC.i332
  %1044 = add i64 %1043, -383913
  %1045 = load i64, i64* %PC.i332
  %1046 = add i64 %1045, 5
  %1047 = load i64, i64* %PC.i332
  %1048 = add i64 %1047, 5
  store i64 %1048, i64* %PC.i332
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1050 = load i64, i64* %1049, align 8
  %1051 = add i64 %1050, -8
  %1052 = inttoptr i64 %1051 to i64*
  store i64 %1046, i64* %1052
  store i64 %1051, i64* %1049, align 8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1044, i64* %1053, align 8
  store %struct.Memory* %loadMem1_46b909, %struct.Memory** %MEMORY
  %loadMem2_46b909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b909 = load i64, i64* %3
  %call2_46b909 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46b909, %struct.Memory* %loadMem2_46b909)
  store %struct.Memory* %call2_46b909, %struct.Memory** %MEMORY
  %loadMem_46b90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 15
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %RBP.i331
  %1061 = sub i64 %1060, 12
  %1062 = load i64, i64* %PC.i330
  %1063 = add i64 %1062, 7
  store i64 %1063, i64* %PC.i330
  %1064 = inttoptr i64 %1061 to i32*
  store i32 0, i32* %1064
  store %struct.Memory* %loadMem_46b90e, %struct.Memory** %MEMORY
  %loadMem_46b915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1067 to i64*
  %1068 = load i64, i64* %PC.i329
  %1069 = add i64 %1068, 771
  %1070 = load i64, i64* %PC.i329
  %1071 = add i64 %1070, 5
  store i64 %1071, i64* %PC.i329
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1069, i64* %1072, align 8
  store %struct.Memory* %loadMem_46b915, %struct.Memory** %MEMORY
  br label %block_.L_46bc18

block_.L_46b91a:                                  ; preds = %block_46b8ef
  %loadMem1_46b91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %PC.i328
  %1077 = add i64 %1076, -383930
  %1078 = load i64, i64* %PC.i328
  %1079 = add i64 %1078, 5
  %1080 = load i64, i64* %PC.i328
  %1081 = add i64 %1080, 5
  store i64 %1081, i64* %PC.i328
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1083 = load i64, i64* %1082, align 8
  %1084 = add i64 %1083, -8
  %1085 = inttoptr i64 %1084 to i64*
  store i64 %1079, i64* %1085
  store i64 %1084, i64* %1082, align 8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1077, i64* %1086, align 8
  store %struct.Memory* %loadMem1_46b91a, %struct.Memory** %MEMORY
  %loadMem2_46b91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b91a = load i64, i64* %3
  %call2_46b91a = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46b91a, %struct.Memory* %loadMem2_46b91a)
  store %struct.Memory* %call2_46b91a, %struct.Memory** %MEMORY
  br label %block_.L_46b91f

block_.L_46b91f:                                  ; preds = %block_.L_46b91a, %block_.L_46b8b4
  %loadMem_46b91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 1
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 15
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %1095 to i64*
  %1096 = load i64, i64* %RBP.i327
  %1097 = sub i64 %1096, 52
  %1098 = load i64, i64* %PC.i325
  %1099 = add i64 %1098, 3
  store i64 %1099, i64* %PC.i325
  %1100 = inttoptr i64 %1097 to i32*
  %1101 = load i32, i32* %1100
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_46b91f, %struct.Memory** %MEMORY
  %loadMem_46b922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 1
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %EAX.i323 = bitcast %union.anon* %1108 to i32*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 15
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %1111 to i64*
  %1112 = load i32, i32* %EAX.i323
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %RBP.i324
  %1115 = sub i64 %1114, 32
  %1116 = load i64, i64* %PC.i322
  %1117 = add i64 %1116, 3
  store i64 %1117, i64* %PC.i322
  %1118 = inttoptr i64 %1115 to i32*
  %1119 = load i32, i32* %1118
  %1120 = sub i32 %1112, %1119
  %1121 = icmp ult i32 %1112, %1119
  %1122 = zext i1 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1122, i8* %1123, align 1
  %1124 = and i32 %1120, 255
  %1125 = call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1128, i8* %1129, align 1
  %1130 = xor i32 %1119, %1112
  %1131 = xor i32 %1130, %1120
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1134, i8* %1135, align 1
  %1136 = icmp eq i32 %1120, 0
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1137, i8* %1138, align 1
  %1139 = lshr i32 %1120, 31
  %1140 = trunc i32 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1140, i8* %1141, align 1
  %1142 = lshr i32 %1112, 31
  %1143 = lshr i32 %1119, 31
  %1144 = xor i32 %1143, %1142
  %1145 = xor i32 %1139, %1142
  %1146 = add i32 %1145, %1144
  %1147 = icmp eq i32 %1146, 2
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1148, i8* %1149, align 1
  store %struct.Memory* %loadMem_46b922, %struct.Memory** %MEMORY
  %loadMem_46b925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1152 to i64*
  %1153 = load i64, i64* %PC.i321
  %1154 = add i64 %1153, 23
  %1155 = load i64, i64* %PC.i321
  %1156 = add i64 %1155, 6
  %1157 = load i64, i64* %PC.i321
  %1158 = add i64 %1157, 6
  store i64 %1158, i64* %PC.i321
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1160 = load i8, i8* %1159, align 1
  %1161 = icmp eq i8 %1160, 0
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %BRANCH_TAKEN, align 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1164 = select i1 %1161, i64 %1154, i64 %1156
  store i64 %1164, i64* %1163, align 8
  store %struct.Memory* %loadMem_46b925, %struct.Memory** %MEMORY
  %loadBr_46b925 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b925 = icmp eq i8 %loadBr_46b925, 1
  br i1 %cmpBr_46b925, label %block_.L_46b93c, label %block_46b92b

block_46b92b:                                     ; preds = %block_.L_46b91f
  %loadMem1_46b92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 33
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %PC.i320
  %1169 = add i64 %1168, -383947
  %1170 = load i64, i64* %PC.i320
  %1171 = add i64 %1170, 5
  %1172 = load i64, i64* %PC.i320
  %1173 = add i64 %1172, 5
  store i64 %1173, i64* %PC.i320
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1175 = load i64, i64* %1174, align 8
  %1176 = add i64 %1175, -8
  %1177 = inttoptr i64 %1176 to i64*
  store i64 %1171, i64* %1177
  store i64 %1176, i64* %1174, align 8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1169, i64* %1178, align 8
  store %struct.Memory* %loadMem1_46b92b, %struct.Memory** %MEMORY
  %loadMem2_46b92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b92b = load i64, i64* %3
  %call2_46b92b = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46b92b, %struct.Memory* %loadMem2_46b92b)
  store %struct.Memory* %call2_46b92b, %struct.Memory** %MEMORY
  %loadMem_46b930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RBP.i319
  %1186 = sub i64 %1185, 12
  %1187 = load i64, i64* %PC.i318
  %1188 = add i64 %1187, 7
  store i64 %1188, i64* %PC.i318
  %1189 = inttoptr i64 %1186 to i32*
  store i32 0, i32* %1189
  store %struct.Memory* %loadMem_46b930, %struct.Memory** %MEMORY
  %loadMem_46b937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %PC.i317
  %1194 = add i64 %1193, 737
  %1195 = load i64, i64* %PC.i317
  %1196 = add i64 %1195, 5
  store i64 %1196, i64* %PC.i317
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1194, i64* %1197, align 8
  store %struct.Memory* %loadMem_46b937, %struct.Memory** %MEMORY
  br label %block_.L_46bc18

block_.L_46b93c:                                  ; preds = %block_.L_46b91f
  %loadMem_46b93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 7
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %PC.i315
  %1205 = add i64 %1204, 10
  store i64 %1205, i64* %PC.i315
  store i64 ptrtoint (%G__0x5800d7_type* @G__0x5800d7 to i64), i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_46b93c, %struct.Memory** %MEMORY
  %loadMem_46b946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 1
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %EAX.i313 = bitcast %union.anon* %1211 to i32*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RAX.i314
  %1216 = load i32, i32* %EAX.i313
  %1217 = zext i32 %1216 to i64
  %1218 = load i64, i64* %PC.i312
  %1219 = add i64 %1218, 2
  store i64 %1219, i64* %PC.i312
  %1220 = xor i64 %1217, %1215
  %1221 = trunc i64 %1220 to i32
  %1222 = and i64 %1220, 4294967295
  store i64 %1222, i64* %RAX.i314, align 8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1223, align 1
  %1224 = and i32 %1221, 255
  %1225 = call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1228, i8* %1229, align 1
  %1230 = icmp eq i32 %1221, 0
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1231, i8* %1232, align 1
  %1233 = lshr i32 %1221, 31
  %1234 = trunc i32 %1233 to i8
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1234, i8* %1235, align 1
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1236, align 1
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1237, align 1
  store %struct.Memory* %loadMem_46b946, %struct.Memory** %MEMORY
  %loadMem_46b948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 11
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RDI.i310 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 15
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %RBP.i311
  %1248 = sub i64 %1247, 52
  %1249 = load i64, i64* %PC.i309
  %1250 = add i64 %1249, 3
  store i64 %1250, i64* %PC.i309
  %1251 = inttoptr i64 %1248 to i32*
  %1252 = load i32, i32* %1251
  %1253 = zext i32 %1252 to i64
  store i64 %1253, i64* %RDI.i310, align 8
  store %struct.Memory* %loadMem_46b948, %struct.Memory** %MEMORY
  %loadMem_46b94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 9
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RSI.i307 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RBP.i308
  %1264 = sub i64 %1263, 40
  %1265 = load i64, i64* %PC.i306
  %1266 = add i64 %1265, 3
  store i64 %1266, i64* %PC.i306
  %1267 = inttoptr i64 %1264 to i32*
  %1268 = load i32, i32* %1267
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %RSI.i307, align 8
  store %struct.Memory* %loadMem_46b94b, %struct.Memory** %MEMORY
  %loadMem_46b94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 5
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i305
  %1280 = sub i64 %1279, 36
  %1281 = load i64, i64* %PC.i303
  %1282 = add i64 %1281, 3
  store i64 %1282, i64* %PC.i303
  %1283 = inttoptr i64 %1280 to i32*
  %1284 = load i32, i32* %1283
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_46b94e, %struct.Memory** %MEMORY
  %loadMem_46b951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 1
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %1291 to i32*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 17
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %R8D.i302 = bitcast %union.anon* %1294 to i32*
  %1295 = bitcast i32* %R8D.i302 to i64*
  %1296 = load i32, i32* %EAX.i301
  %1297 = zext i32 %1296 to i64
  %1298 = load i64, i64* %PC.i300
  %1299 = add i64 %1298, 3
  store i64 %1299, i64* %PC.i300
  %1300 = and i64 %1297, 4294967295
  store i64 %1300, i64* %1295, align 8
  store %struct.Memory* %loadMem_46b951, %struct.Memory** %MEMORY
  %loadMem_46b954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 1
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %1306 to i32*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 19
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %R9D.i299 = bitcast %union.anon* %1309 to i32*
  %1310 = bitcast i32* %R9D.i299 to i64*
  %1311 = load i32, i32* %EAX.i298
  %1312 = zext i32 %1311 to i64
  %1313 = load i64, i64* %PC.i297
  %1314 = add i64 %1313, 3
  store i64 %1314, i64* %PC.i297
  %1315 = and i64 %1312, 4294967295
  store i64 %1315, i64* %1310, align 8
  store %struct.Memory* %loadMem_46b954, %struct.Memory** %MEMORY
  %loadMem1_46b957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %PC.i296
  %1320 = add i64 %1319, -404263
  %1321 = load i64, i64* %PC.i296
  %1322 = add i64 %1321, 5
  %1323 = load i64, i64* %PC.i296
  %1324 = add i64 %1323, 5
  store i64 %1324, i64* %PC.i296
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1326 = load i64, i64* %1325, align 8
  %1327 = add i64 %1326, -8
  %1328 = inttoptr i64 %1327 to i64*
  store i64 %1322, i64* %1328
  store i64 %1327, i64* %1325, align 8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1320, i64* %1329, align 8
  store %struct.Memory* %loadMem1_46b957, %struct.Memory** %MEMORY
  %loadMem2_46b957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b957 = load i64, i64* %3
  %call2_46b957 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46b957, %struct.Memory* %loadMem2_46b957)
  store %struct.Memory* %call2_46b957, %struct.Memory** %MEMORY
  %loadMem_46b95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %EAX.i295 = bitcast %union.anon* %1335 to i32*
  %1336 = load i32, i32* %EAX.i295
  %1337 = zext i32 %1336 to i64
  %1338 = load i64, i64* %PC.i294
  %1339 = add i64 %1338, 3
  store i64 %1339, i64* %PC.i294
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1340, align 1
  %1341 = and i32 %1336, 255
  %1342 = call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1345, i8* %1346, align 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1347, align 1
  %1348 = icmp eq i32 %1336, 0
  %1349 = zext i1 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1349, i8* %1350, align 1
  %1351 = lshr i32 %1336, 31
  %1352 = trunc i32 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1352, i8* %1353, align 1
  %1354 = lshr i32 %1336, 31
  %1355 = xor i32 %1351, %1354
  %1356 = add i32 %1355, %1354
  %1357 = icmp eq i32 %1356, 2
  %1358 = zext i1 %1357 to i8
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1358, i8* %1359, align 1
  store %struct.Memory* %loadMem_46b95c, %struct.Memory** %MEMORY
  %loadMem_46b95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %PC.i293
  %1364 = add i64 %1363, 206
  %1365 = load i64, i64* %PC.i293
  %1366 = add i64 %1365, 6
  %1367 = load i64, i64* %PC.i293
  %1368 = add i64 %1367, 6
  store i64 %1368, i64* %PC.i293
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1370 = load i8, i8* %1369, align 1
  store i8 %1370, i8* %BRANCH_TAKEN, align 1
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1372 = icmp ne i8 %1370, 0
  %1373 = select i1 %1372, i64 %1364, i64 %1366
  store i64 %1373, i64* %1371, align 8
  store %struct.Memory* %loadMem_46b95f, %struct.Memory** %MEMORY
  %loadBr_46b95f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b95f = icmp eq i8 %loadBr_46b95f, 1
  br i1 %cmpBr_46b95f, label %block_.L_46ba2d, label %block_46b965

block_46b965:                                     ; preds = %block_.L_46b93c
  %loadMem_46b965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 7
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RDX.i292 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %PC.i291
  %1381 = add i64 %1380, 10
  store i64 %1381, i64* %PC.i291
  store i64 ptrtoint (%G__0x5800ee_type* @G__0x5800ee to i64), i64* %RDX.i292, align 8
  store %struct.Memory* %loadMem_46b965, %struct.Memory** %MEMORY
  %loadMem_46b96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 1
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %1387 to i32*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 1
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %RAX.i290
  %1392 = load i32, i32* %EAX.i289
  %1393 = zext i32 %1392 to i64
  %1394 = load i64, i64* %PC.i288
  %1395 = add i64 %1394, 2
  store i64 %1395, i64* %PC.i288
  %1396 = xor i64 %1393, %1391
  %1397 = trunc i64 %1396 to i32
  %1398 = and i64 %1396, 4294967295
  store i64 %1398, i64* %RAX.i290, align 8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1399, align 1
  %1400 = and i32 %1397, 255
  %1401 = call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1404, i8* %1405, align 1
  %1406 = icmp eq i32 %1397, 0
  %1407 = zext i1 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1407, i8* %1408, align 1
  %1409 = lshr i32 %1397, 31
  %1410 = trunc i32 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1410, i8* %1411, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1412, align 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1413, align 1
  store %struct.Memory* %loadMem_46b96f, %struct.Memory** %MEMORY
  %loadMem_46b971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 33
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 11
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RDI.i286 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 15
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RBP.i287
  %1424 = sub i64 %1423, 32
  %1425 = load i64, i64* %PC.i285
  %1426 = add i64 %1425, 3
  store i64 %1426, i64* %PC.i285
  %1427 = inttoptr i64 %1424 to i32*
  %1428 = load i32, i32* %1427
  %1429 = zext i32 %1428 to i64
  store i64 %1429, i64* %RDI.i286, align 8
  store %struct.Memory* %loadMem_46b971, %struct.Memory** %MEMORY
  %loadMem_46b974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 33
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 9
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RSI.i283 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 15
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %1438 to i64*
  %1439 = load i64, i64* %RBP.i284
  %1440 = sub i64 %1439, 44
  %1441 = load i64, i64* %PC.i282
  %1442 = add i64 %1441, 3
  store i64 %1442, i64* %PC.i282
  %1443 = inttoptr i64 %1440 to i32*
  %1444 = load i32, i32* %1443
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RSI.i283, align 8
  store %struct.Memory* %loadMem_46b974, %struct.Memory** %MEMORY
  %loadMem_46b977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 5
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 15
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RBP.i281
  %1456 = sub i64 %1455, 36
  %1457 = load i64, i64* %PC.i279
  %1458 = add i64 %1457, 3
  store i64 %1458, i64* %PC.i279
  %1459 = inttoptr i64 %1456 to i32*
  %1460 = load i32, i32* %1459
  %1461 = zext i32 %1460 to i64
  store i64 %1461, i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_46b977, %struct.Memory** %MEMORY
  %loadMem_46b97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 1
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %1467 to i32*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 17
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %R8D.i278 = bitcast %union.anon* %1470 to i32*
  %1471 = bitcast i32* %R8D.i278 to i64*
  %1472 = load i32, i32* %EAX.i277
  %1473 = zext i32 %1472 to i64
  %1474 = load i64, i64* %PC.i276
  %1475 = add i64 %1474, 3
  store i64 %1475, i64* %PC.i276
  %1476 = and i64 %1473, 4294967295
  store i64 %1476, i64* %1471, align 8
  store %struct.Memory* %loadMem_46b97a, %struct.Memory** %MEMORY
  %loadMem_46b97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 1
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %1482 to i32*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 19
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %R9D.i275 = bitcast %union.anon* %1485 to i32*
  %1486 = bitcast i32* %R9D.i275 to i64*
  %1487 = load i32, i32* %EAX.i274
  %1488 = zext i32 %1487 to i64
  %1489 = load i64, i64* %PC.i273
  %1490 = add i64 %1489, 3
  store i64 %1490, i64* %PC.i273
  %1491 = and i64 %1488, 4294967295
  store i64 %1491, i64* %1486, align 8
  store %struct.Memory* %loadMem_46b97d, %struct.Memory** %MEMORY
  %loadMem1_46b980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1494 to i64*
  %1495 = load i64, i64* %PC.i272
  %1496 = add i64 %1495, -404304
  %1497 = load i64, i64* %PC.i272
  %1498 = add i64 %1497, 5
  %1499 = load i64, i64* %PC.i272
  %1500 = add i64 %1499, 5
  store i64 %1500, i64* %PC.i272
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1502 = load i64, i64* %1501, align 8
  %1503 = add i64 %1502, -8
  %1504 = inttoptr i64 %1503 to i64*
  store i64 %1498, i64* %1504
  store i64 %1503, i64* %1501, align 8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1496, i64* %1505, align 8
  store %struct.Memory* %loadMem1_46b980, %struct.Memory** %MEMORY
  %loadMem2_46b980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b980 = load i64, i64* %3
  %call2_46b980 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46b980, %struct.Memory* %loadMem2_46b980)
  store %struct.Memory* %call2_46b980, %struct.Memory** %MEMORY
  %loadMem_46b985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %1511 to i32*
  %1512 = load i32, i32* %EAX.i271
  %1513 = zext i32 %1512 to i64
  %1514 = load i64, i64* %PC.i270
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC.i270
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1516, align 1
  %1517 = and i32 %1512, 255
  %1518 = call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1521, i8* %1522, align 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1523, align 1
  %1524 = icmp eq i32 %1512, 0
  %1525 = zext i1 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1525, i8* %1526, align 1
  %1527 = lshr i32 %1512, 31
  %1528 = trunc i32 %1527 to i8
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1528, i8* %1529, align 1
  %1530 = lshr i32 %1512, 31
  %1531 = xor i32 %1527, %1530
  %1532 = add i32 %1531, %1530
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1534, i8* %1535, align 1
  store %struct.Memory* %loadMem_46b985, %struct.Memory** %MEMORY
  %loadMem_46b988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1538 to i64*
  %1539 = load i64, i64* %PC.i269
  %1540 = add i64 %1539, 160
  %1541 = load i64, i64* %PC.i269
  %1542 = add i64 %1541, 6
  %1543 = load i64, i64* %PC.i269
  %1544 = add i64 %1543, 6
  store i64 %1544, i64* %PC.i269
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1546 = load i8, i8* %1545, align 1
  store i8 %1546, i8* %BRANCH_TAKEN, align 1
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1548 = icmp ne i8 %1546, 0
  %1549 = select i1 %1548, i64 %1540, i64 %1542
  store i64 %1549, i64* %1547, align 8
  store %struct.Memory* %loadMem_46b988, %struct.Memory** %MEMORY
  %loadBr_46b988 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b988 = icmp eq i8 %loadBr_46b988, 1
  br i1 %cmpBr_46b988, label %block_.L_46ba28, label %block_46b98e

block_46b98e:                                     ; preds = %block_46b965
  %loadMem_46b98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 1
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %1555 to i32*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 1
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %1558 to i64*
  %1559 = load i64, i64* %RAX.i268
  %1560 = load i32, i32* %EAX.i267
  %1561 = zext i32 %1560 to i64
  %1562 = load i64, i64* %PC.i266
  %1563 = add i64 %1562, 2
  store i64 %1563, i64* %PC.i266
  %1564 = xor i64 %1561, %1559
  %1565 = trunc i64 %1564 to i32
  %1566 = and i64 %1564, 4294967295
  store i64 %1566, i64* %RAX.i268, align 8
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1567, align 1
  %1568 = and i32 %1565, 255
  %1569 = call i32 @llvm.ctpop.i32(i32 %1568)
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  %1572 = xor i8 %1571, 1
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1572, i8* %1573, align 1
  %1574 = icmp eq i32 %1565, 0
  %1575 = zext i1 %1574 to i8
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1575, i8* %1576, align 1
  %1577 = lshr i32 %1565, 31
  %1578 = trunc i32 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1578, i8* %1579, align 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1580, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1581, align 1
  store %struct.Memory* %loadMem_46b98e, %struct.Memory** %MEMORY
  %loadMem_46b990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 1
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %EAX.i264 = bitcast %union.anon* %1587 to i32*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 9
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RSI.i265 = bitcast %union.anon* %1590 to i64*
  %1591 = load i32, i32* %EAX.i264
  %1592 = zext i32 %1591 to i64
  %1593 = load i64, i64* %PC.i263
  %1594 = add i64 %1593, 2
  store i64 %1594, i64* %PC.i263
  %1595 = and i64 %1592, 4294967295
  store i64 %1595, i64* %RSI.i265, align 8
  store %struct.Memory* %loadMem_46b990, %struct.Memory** %MEMORY
  %loadMem_46b992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 33
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1598 to i64*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 11
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %RDI.i261 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 15
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RBP.i262
  %1606 = sub i64 %1605, 32
  %1607 = load i64, i64* %PC.i260
  %1608 = add i64 %1607, 3
  store i64 %1608, i64* %PC.i260
  %1609 = inttoptr i64 %1606 to i32*
  %1610 = load i32, i32* %1609
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RDI.i261, align 8
  store %struct.Memory* %loadMem_46b992, %struct.Memory** %MEMORY
  %loadMem1_46b995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %PC.i259
  %1616 = add i64 %1615, -56917
  %1617 = load i64, i64* %PC.i259
  %1618 = add i64 %1617, 5
  %1619 = load i64, i64* %PC.i259
  %1620 = add i64 %1619, 5
  store i64 %1620, i64* %PC.i259
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1622 = load i64, i64* %1621, align 8
  %1623 = add i64 %1622, -8
  %1624 = inttoptr i64 %1623 to i64*
  store i64 %1618, i64* %1624
  store i64 %1623, i64* %1621, align 8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1616, i64* %1625, align 8
  store %struct.Memory* %loadMem1_46b995, %struct.Memory** %MEMORY
  %loadMem2_46b995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b995 = load i64, i64* %3
  %call2_46b995 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46b995, %struct.Memory* %loadMem2_46b995)
  store %struct.Memory* %call2_46b995, %struct.Memory** %MEMORY
  %loadMem_46b99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 1
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %1631 to i32*
  %1632 = load i32, i32* %EAX.i258
  %1633 = zext i32 %1632 to i64
  %1634 = load i64, i64* %PC.i257
  %1635 = add i64 %1634, 3
  store i64 %1635, i64* %PC.i257
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1636, align 1
  %1637 = and i32 %1632, 255
  %1638 = call i32 @llvm.ctpop.i32(i32 %1637)
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  %1641 = xor i8 %1640, 1
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1641, i8* %1642, align 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1643, align 1
  %1644 = icmp eq i32 %1632, 0
  %1645 = zext i1 %1644 to i8
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1645, i8* %1646, align 1
  %1647 = lshr i32 %1632, 31
  %1648 = trunc i32 %1647 to i8
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1648, i8* %1649, align 1
  %1650 = lshr i32 %1632, 31
  %1651 = xor i32 %1647, %1650
  %1652 = add i32 %1651, %1650
  %1653 = icmp eq i32 %1652, 2
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1654, i8* %1655, align 1
  store %struct.Memory* %loadMem_46b99a, %struct.Memory** %MEMORY
  %loadMem_46b99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %PC.i256
  %1660 = add i64 %1659, 107
  %1661 = load i64, i64* %PC.i256
  %1662 = add i64 %1661, 6
  %1663 = load i64, i64* %PC.i256
  %1664 = add i64 %1663, 6
  store i64 %1664, i64* %PC.i256
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1666 = load i8, i8* %1665, align 1
  %1667 = icmp eq i8 %1666, 0
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %BRANCH_TAKEN, align 1
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1670 = select i1 %1667, i64 %1660, i64 %1662
  store i64 %1670, i64* %1669, align 8
  store %struct.Memory* %loadMem_46b99d, %struct.Memory** %MEMORY
  %loadBr_46b99d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b99d = icmp eq i8 %loadBr_46b99d, 1
  br i1 %cmpBr_46b99d, label %block_.L_46ba08, label %block_46b9a3

block_46b9a3:                                     ; preds = %block_46b98e
  %loadMem_46b9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 15
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1676 to i64*
  %1677 = load i64, i64* %RBP.i255
  %1678 = sub i64 %1677, 48
  %1679 = load i64, i64* %PC.i254
  %1680 = add i64 %1679, 7
  store i64 %1680, i64* %PC.i254
  %1681 = inttoptr i64 %1678 to i32*
  store i32 2, i32* %1681
  store %struct.Memory* %loadMem_46b9a3, %struct.Memory** %MEMORY
  %loadMem_46b9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 1
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 15
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %1690 to i64*
  %1691 = load i64, i64* %RBP.i253
  %1692 = sub i64 %1691, 20
  %1693 = load i64, i64* %PC.i251
  %1694 = add i64 %1693, 4
  store i64 %1694, i64* %PC.i251
  %1695 = inttoptr i64 %1692 to i32*
  %1696 = load i32, i32* %1695
  %1697 = sext i32 %1696 to i64
  store i64 %1697, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_46b9aa, %struct.Memory** %MEMORY
  %loadMem_46b9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 1
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 5
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %RAX.i249
  %1708 = add i64 %1707, 12099168
  %1709 = load i64, i64* %PC.i248
  %1710 = add i64 %1709, 8
  store i64 %1710, i64* %PC.i248
  %1711 = inttoptr i64 %1708 to i8*
  %1712 = load i8, i8* %1711
  %1713 = zext i8 %1712 to i64
  store i64 %1713, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_46b9ae, %struct.Memory** %MEMORY
  %loadMem_46b9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 5
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %ECX.i247 = bitcast %union.anon* %1719 to i32*
  %1720 = load i32, i32* %ECX.i247
  %1721 = zext i32 %1720 to i64
  %1722 = load i64, i64* %PC.i246
  %1723 = add i64 %1722, 3
  store i64 %1723, i64* %PC.i246
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1724, align 1
  %1725 = and i32 %1720, 255
  %1726 = call i32 @llvm.ctpop.i32(i32 %1725)
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = xor i8 %1728, 1
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1729, i8* %1730, align 1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1731, align 1
  %1732 = icmp eq i32 %1720, 0
  %1733 = zext i1 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1733, i8* %1734, align 1
  %1735 = lshr i32 %1720, 31
  %1736 = trunc i32 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1736, i8* %1737, align 1
  %1738 = lshr i32 %1720, 31
  %1739 = xor i32 %1735, %1738
  %1740 = add i32 %1739, %1738
  %1741 = icmp eq i32 %1740, 2
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1742, i8* %1743, align 1
  store %struct.Memory* %loadMem_46b9b6, %struct.Memory** %MEMORY
  %loadMem_46b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %PC.i245
  %1748 = add i64 %1747, 74
  %1749 = load i64, i64* %PC.i245
  %1750 = add i64 %1749, 6
  %1751 = load i64, i64* %PC.i245
  %1752 = add i64 %1751, 6
  store i64 %1752, i64* %PC.i245
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1754 = load i8, i8* %1753, align 1
  store i8 %1754, i8* %BRANCH_TAKEN, align 1
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1756 = icmp ne i8 %1754, 0
  %1757 = select i1 %1756, i64 %1748, i64 %1750
  store i64 %1757, i64* %1755, align 8
  store %struct.Memory* %loadMem_46b9b9, %struct.Memory** %MEMORY
  %loadBr_46b9b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b9b9 = icmp eq i8 %loadBr_46b9b9, 1
  br i1 %cmpBr_46b9b9, label %block_.L_46ba03, label %block_46b9bf

block_46b9bf:                                     ; preds = %block_46b9a3
  %loadMem_46b9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 1
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 15
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %RBP.i244
  %1768 = sub i64 %1767, 24
  %1769 = load i64, i64* %PC.i242
  %1770 = add i64 %1769, 4
  store i64 %1770, i64* %PC.i242
  %1771 = inttoptr i64 %1768 to i32*
  %1772 = load i32, i32* %1771
  %1773 = sext i32 %1772 to i64
  store i64 %1773, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_46b9bf, %struct.Memory** %MEMORY
  %loadMem_46b9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 1
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 5
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %1782 to i64*
  %1783 = load i64, i64* %RAX.i240
  %1784 = add i64 %1783, 12099168
  %1785 = load i64, i64* %PC.i239
  %1786 = add i64 %1785, 8
  store i64 %1786, i64* %PC.i239
  %1787 = inttoptr i64 %1784 to i8*
  %1788 = load i8, i8* %1787
  %1789 = zext i8 %1788 to i64
  store i64 %1789, i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_46b9c3, %struct.Memory** %MEMORY
  %loadMem_46b9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 33
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 5
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1795 to i32*
  %1796 = load i32, i32* %ECX.i
  %1797 = zext i32 %1796 to i64
  %1798 = load i64, i64* %PC.i238
  %1799 = add i64 %1798, 3
  store i64 %1799, i64* %PC.i238
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1800, align 1
  %1801 = and i32 %1796, 255
  %1802 = call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1805, i8* %1806, align 1
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1807, align 1
  %1808 = icmp eq i32 %1796, 0
  %1809 = zext i1 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i32 %1796, 31
  %1812 = trunc i32 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1812, i8* %1813, align 1
  %1814 = lshr i32 %1796, 31
  %1815 = xor i32 %1811, %1814
  %1816 = add i32 %1815, %1814
  %1817 = icmp eq i32 %1816, 2
  %1818 = zext i1 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1818, i8* %1819, align 1
  store %struct.Memory* %loadMem_46b9cb, %struct.Memory** %MEMORY
  %loadMem_46b9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %PC.i237
  %1824 = add i64 %1823, 53
  %1825 = load i64, i64* %PC.i237
  %1826 = add i64 %1825, 6
  %1827 = load i64, i64* %PC.i237
  %1828 = add i64 %1827, 6
  store i64 %1828, i64* %PC.i237
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1830 = load i8, i8* %1829, align 1
  store i8 %1830, i8* %BRANCH_TAKEN, align 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1832 = icmp ne i8 %1830, 0
  %1833 = select i1 %1832, i64 %1824, i64 %1826
  store i64 %1833, i64* %1831, align 8
  store %struct.Memory* %loadMem_46b9ce, %struct.Memory** %MEMORY
  %loadBr_46b9ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b9ce = icmp eq i8 %loadBr_46b9ce, 1
  br i1 %cmpBr_46b9ce, label %block_.L_46ba03, label %block_46b9d4

block_46b9d4:                                     ; preds = %block_46b9bf
  %loadMem_46b9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 11
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RDI.i235 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 15
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %RBP.i236
  %1844 = sub i64 %1843, 20
  %1845 = load i64, i64* %PC.i234
  %1846 = add i64 %1845, 3
  store i64 %1846, i64* %PC.i234
  %1847 = inttoptr i64 %1844 to i32*
  %1848 = load i32, i32* %1847
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RDI.i235, align 8
  store %struct.Memory* %loadMem_46b9d4, %struct.Memory** %MEMORY
  %loadMem_46b9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 9
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RSI.i232 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 15
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %RBP.i233
  %1860 = sub i64 %1859, 24
  %1861 = load i64, i64* %PC.i231
  %1862 = add i64 %1861, 3
  store i64 %1862, i64* %PC.i231
  %1863 = inttoptr i64 %1860 to i32*
  %1864 = load i32, i32* %1863
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RSI.i232, align 8
  store %struct.Memory* %loadMem_46b9d7, %struct.Memory** %MEMORY
  %loadMem1_46b9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1868 to i64*
  %1869 = load i64, i64* %PC.i230
  %1870 = add i64 %1869, -3130
  %1871 = load i64, i64* %PC.i230
  %1872 = add i64 %1871, 5
  %1873 = load i64, i64* %PC.i230
  %1874 = add i64 %1873, 5
  store i64 %1874, i64* %PC.i230
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1876 = load i64, i64* %1875, align 8
  %1877 = add i64 %1876, -8
  %1878 = inttoptr i64 %1877 to i64*
  store i64 %1872, i64* %1878
  store i64 %1877, i64* %1875, align 8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1870, i64* %1879, align 8
  store %struct.Memory* %loadMem1_46b9da, %struct.Memory** %MEMORY
  %loadMem2_46b9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9da = load i64, i64* %3
  %call2_46b9da = call %struct.Memory* @sub_46ada0.defend_both(%struct.State* %0, i64 %loadPC_46b9da, %struct.Memory* %loadMem2_46b9da)
  store %struct.Memory* %call2_46b9da, %struct.Memory** %MEMORY
  %loadMem_46b9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %EAX.i229 = bitcast %union.anon* %1885 to i32*
  %1886 = load i32, i32* %EAX.i229
  %1887 = zext i32 %1886 to i64
  %1888 = load i64, i64* %PC.i228
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC.i228
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1890, align 1
  %1891 = and i32 %1886, 255
  %1892 = call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1895, i8* %1896, align 1
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1897, align 1
  %1898 = icmp eq i32 %1886, 0
  %1899 = zext i1 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i32 %1886, 31
  %1902 = trunc i32 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1902, i8* %1903, align 1
  %1904 = lshr i32 %1886, 31
  %1905 = xor i32 %1901, %1904
  %1906 = add i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1908, i8* %1909, align 1
  store %struct.Memory* %loadMem_46b9df, %struct.Memory** %MEMORY
  %loadMem_46b9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %PC.i227
  %1914 = add i64 %1913, 33
  %1915 = load i64, i64* %PC.i227
  %1916 = add i64 %1915, 6
  %1917 = load i64, i64* %PC.i227
  %1918 = add i64 %1917, 6
  store i64 %1918, i64* %PC.i227
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1920 = load i8, i8* %1919, align 1
  store i8 %1920, i8* %BRANCH_TAKEN, align 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1922 = icmp ne i8 %1920, 0
  %1923 = select i1 %1922, i64 %1914, i64 %1916
  store i64 %1923, i64* %1921, align 8
  store %struct.Memory* %loadMem_46b9e2, %struct.Memory** %MEMORY
  %loadBr_46b9e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46b9e2 = icmp eq i8 %loadBr_46b9e2, 1
  br i1 %cmpBr_46b9e2, label %block_.L_46ba03, label %block_46b9e8

block_46b9e8:                                     ; preds = %block_46b9d4
  %loadMem1_46b9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %PC.i226
  %1928 = add i64 %1927, -384136
  %1929 = load i64, i64* %PC.i226
  %1930 = add i64 %1929, 5
  %1931 = load i64, i64* %PC.i226
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC.i226
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1934 = load i64, i64* %1933, align 8
  %1935 = add i64 %1934, -8
  %1936 = inttoptr i64 %1935 to i64*
  store i64 %1930, i64* %1936
  store i64 %1935, i64* %1933, align 8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1928, i64* %1937, align 8
  store %struct.Memory* %loadMem1_46b9e8, %struct.Memory** %MEMORY
  %loadMem2_46b9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9e8 = load i64, i64* %3
  %call2_46b9e8 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46b9e8, %struct.Memory* %loadMem2_46b9e8)
  store %struct.Memory* %call2_46b9e8, %struct.Memory** %MEMORY
  %loadMem1_46b9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %PC.i225
  %1942 = add i64 %1941, -384141
  %1943 = load i64, i64* %PC.i225
  %1944 = add i64 %1943, 5
  %1945 = load i64, i64* %PC.i225
  %1946 = add i64 %1945, 5
  store i64 %1946, i64* %PC.i225
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1948 = load i64, i64* %1947, align 8
  %1949 = add i64 %1948, -8
  %1950 = inttoptr i64 %1949 to i64*
  store i64 %1944, i64* %1950
  store i64 %1949, i64* %1947, align 8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1942, i64* %1951, align 8
  store %struct.Memory* %loadMem1_46b9ed, %struct.Memory** %MEMORY
  %loadMem2_46b9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9ed = load i64, i64* %3
  %call2_46b9ed = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46b9ed, %struct.Memory* %loadMem2_46b9ed)
  store %struct.Memory* %call2_46b9ed, %struct.Memory** %MEMORY
  %loadMem1_46b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1954 to i64*
  %1955 = load i64, i64* %PC.i224
  %1956 = add i64 %1955, -384146
  %1957 = load i64, i64* %PC.i224
  %1958 = add i64 %1957, 5
  %1959 = load i64, i64* %PC.i224
  %1960 = add i64 %1959, 5
  store i64 %1960, i64* %PC.i224
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1962 = load i64, i64* %1961, align 8
  %1963 = add i64 %1962, -8
  %1964 = inttoptr i64 %1963 to i64*
  store i64 %1958, i64* %1964
  store i64 %1963, i64* %1961, align 8
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1956, i64* %1965, align 8
  store %struct.Memory* %loadMem1_46b9f2, %struct.Memory** %MEMORY
  %loadMem2_46b9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46b9f2 = load i64, i64* %3
  %call2_46b9f2 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46b9f2, %struct.Memory* %loadMem2_46b9f2)
  store %struct.Memory* %call2_46b9f2, %struct.Memory** %MEMORY
  %loadMem_46b9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 15
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RBP.i223
  %1973 = sub i64 %1972, 12
  %1974 = load i64, i64* %PC.i222
  %1975 = add i64 %1974, 7
  store i64 %1975, i64* %PC.i222
  %1976 = inttoptr i64 %1973 to i32*
  store i32 2, i32* %1976
  store %struct.Memory* %loadMem_46b9f7, %struct.Memory** %MEMORY
  %loadMem_46b9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i221
  %1981 = add i64 %1980, 538
  %1982 = load i64, i64* %PC.i221
  %1983 = add i64 %1982, 5
  store i64 %1983, i64* %PC.i221
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1981, i64* %1984, align 8
  store %struct.Memory* %loadMem_46b9fe, %struct.Memory** %MEMORY
  br label %block_.L_46bc18

block_.L_46ba03:                                  ; preds = %block_46b9d4, %block_46b9bf, %block_46b9a3
  %loadMem_46ba03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %PC.i220
  %1989 = add i64 %1988, 32
  %1990 = load i64, i64* %PC.i220
  %1991 = add i64 %1990, 5
  store i64 %1991, i64* %PC.i220
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1989, i64* %1992, align 8
  store %struct.Memory* %loadMem_46ba03, %struct.Memory** %MEMORY
  br label %block_.L_46ba23

block_.L_46ba08:                                  ; preds = %block_46b98e
  %loadMem1_46ba08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1995 to i64*
  %1996 = load i64, i64* %PC.i219
  %1997 = add i64 %1996, -384168
  %1998 = load i64, i64* %PC.i219
  %1999 = add i64 %1998, 5
  %2000 = load i64, i64* %PC.i219
  %2001 = add i64 %2000, 5
  store i64 %2001, i64* %PC.i219
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2003 = load i64, i64* %2002, align 8
  %2004 = add i64 %2003, -8
  %2005 = inttoptr i64 %2004 to i64*
  store i64 %1999, i64* %2005
  store i64 %2004, i64* %2002, align 8
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1997, i64* %2006, align 8
  store %struct.Memory* %loadMem1_46ba08, %struct.Memory** %MEMORY
  %loadMem2_46ba08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba08 = load i64, i64* %3
  %call2_46ba08 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46ba08, %struct.Memory* %loadMem2_46ba08)
  store %struct.Memory* %call2_46ba08, %struct.Memory** %MEMORY
  %loadMem1_46ba0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2009 to i64*
  %2010 = load i64, i64* %PC.i218
  %2011 = add i64 %2010, -384173
  %2012 = load i64, i64* %PC.i218
  %2013 = add i64 %2012, 5
  %2014 = load i64, i64* %PC.i218
  %2015 = add i64 %2014, 5
  store i64 %2015, i64* %PC.i218
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2017 = load i64, i64* %2016, align 8
  %2018 = add i64 %2017, -8
  %2019 = inttoptr i64 %2018 to i64*
  store i64 %2013, i64* %2019
  store i64 %2018, i64* %2016, align 8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2011, i64* %2020, align 8
  store %struct.Memory* %loadMem1_46ba0d, %struct.Memory** %MEMORY
  %loadMem2_46ba0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba0d = load i64, i64* %3
  %call2_46ba0d = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46ba0d, %struct.Memory* %loadMem2_46ba0d)
  store %struct.Memory* %call2_46ba0d, %struct.Memory** %MEMORY
  %loadMem1_46ba12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %PC.i217
  %2025 = add i64 %2024, -384178
  %2026 = load i64, i64* %PC.i217
  %2027 = add i64 %2026, 5
  %2028 = load i64, i64* %PC.i217
  %2029 = add i64 %2028, 5
  store i64 %2029, i64* %PC.i217
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2031 = load i64, i64* %2030, align 8
  %2032 = add i64 %2031, -8
  %2033 = inttoptr i64 %2032 to i64*
  store i64 %2027, i64* %2033
  store i64 %2032, i64* %2030, align 8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2025, i64* %2034, align 8
  store %struct.Memory* %loadMem1_46ba12, %struct.Memory** %MEMORY
  %loadMem2_46ba12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba12 = load i64, i64* %3
  %call2_46ba12 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46ba12, %struct.Memory* %loadMem2_46ba12)
  store %struct.Memory* %call2_46ba12, %struct.Memory** %MEMORY
  %loadMem_46ba17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 15
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %2040 to i64*
  %2041 = load i64, i64* %RBP.i216
  %2042 = sub i64 %2041, 12
  %2043 = load i64, i64* %PC.i215
  %2044 = add i64 %2043, 7
  store i64 %2044, i64* %PC.i215
  %2045 = inttoptr i64 %2042 to i32*
  store i32 0, i32* %2045
  store %struct.Memory* %loadMem_46ba17, %struct.Memory** %MEMORY
  %loadMem_46ba1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %PC.i214
  %2050 = add i64 %2049, 506
  %2051 = load i64, i64* %PC.i214
  %2052 = add i64 %2051, 5
  store i64 %2052, i64* %PC.i214
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2050, i64* %2053, align 8
  store %struct.Memory* %loadMem_46ba1e, %struct.Memory** %MEMORY
  br label %block_.L_46bc18

block_.L_46ba23:                                  ; preds = %block_.L_46ba03
  %loadMem1_46ba23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2056 to i64*
  %2057 = load i64, i64* %PC.i213
  %2058 = add i64 %2057, -384195
  %2059 = load i64, i64* %PC.i213
  %2060 = add i64 %2059, 5
  %2061 = load i64, i64* %PC.i213
  %2062 = add i64 %2061, 5
  store i64 %2062, i64* %PC.i213
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2064 = load i64, i64* %2063, align 8
  %2065 = add i64 %2064, -8
  %2066 = inttoptr i64 %2065 to i64*
  store i64 %2060, i64* %2066
  store i64 %2065, i64* %2063, align 8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2058, i64* %2067, align 8
  store %struct.Memory* %loadMem1_46ba23, %struct.Memory** %MEMORY
  %loadMem2_46ba23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba23 = load i64, i64* %3
  %call2_46ba23 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46ba23, %struct.Memory* %loadMem2_46ba23)
  store %struct.Memory* %call2_46ba23, %struct.Memory** %MEMORY
  br label %block_.L_46ba28

block_.L_46ba28:                                  ; preds = %block_.L_46ba23, %block_46b965
  %loadMem1_46ba28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2070 to i64*
  %2071 = load i64, i64* %PC.i212
  %2072 = add i64 %2071, -384200
  %2073 = load i64, i64* %PC.i212
  %2074 = add i64 %2073, 5
  %2075 = load i64, i64* %PC.i212
  %2076 = add i64 %2075, 5
  store i64 %2076, i64* %PC.i212
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2078 = load i64, i64* %2077, align 8
  %2079 = add i64 %2078, -8
  %2080 = inttoptr i64 %2079 to i64*
  store i64 %2074, i64* %2080
  store i64 %2079, i64* %2077, align 8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2072, i64* %2081, align 8
  store %struct.Memory* %loadMem1_46ba28, %struct.Memory** %MEMORY
  %loadMem2_46ba28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba28 = load i64, i64* %3
  %call2_46ba28 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46ba28, %struct.Memory* %loadMem2_46ba28)
  store %struct.Memory* %call2_46ba28, %struct.Memory** %MEMORY
  br label %block_.L_46ba2d

block_.L_46ba2d:                                  ; preds = %block_.L_46ba28, %block_.L_46b93c
  %loadMem_46ba2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2084 to i64*
  %2085 = load i64, i64* %PC.i211
  %2086 = add i64 %2085, 5
  %2087 = load i64, i64* %PC.i211
  %2088 = add i64 %2087, 5
  store i64 %2088, i64* %PC.i211
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2086, i64* %2089, align 8
  store %struct.Memory* %loadMem_46ba2d, %struct.Memory** %MEMORY
  br label %block_.L_46ba32

block_.L_46ba32:                                  ; preds = %block_.L_46ba2d, %block_46b8a8
  %loadMem_46ba32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 1
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 15
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RBP.i210
  %2100 = sub i64 %2099, 16
  %2101 = load i64, i64* %PC.i208
  %2102 = add i64 %2101, 4
  store i64 %2102, i64* %PC.i208
  %2103 = inttoptr i64 %2100 to i32*
  %2104 = load i32, i32* %2103
  %2105 = sext i32 %2104 to i64
  store i64 %2105, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_46ba32, %struct.Memory** %MEMORY
  %loadMem_46ba36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 1
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %RAX.i207
  %2113 = add i64 %2112, 12099168
  %2114 = load i64, i64* %PC.i206
  %2115 = add i64 %2114, 8
  store i64 %2115, i64* %PC.i206
  %2116 = inttoptr i64 %2113 to i8*
  %2117 = load i8, i8* %2116
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2118, align 1
  %2119 = zext i8 %2117 to i32
  %2120 = call i32 @llvm.ctpop.i32(i32 %2119)
  %2121 = trunc i32 %2120 to i8
  %2122 = and i8 %2121, 1
  %2123 = xor i8 %2122, 1
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2123, i8* %2124, align 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2125, align 1
  %2126 = icmp eq i8 %2117, 0
  %2127 = zext i1 %2126 to i8
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2127, i8* %2128, align 1
  %2129 = lshr i8 %2117, 7
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2129, i8* %2130, align 1
  %2131 = lshr i8 %2117, 7
  %2132 = xor i8 %2129, %2131
  %2133 = add i8 %2132, %2131
  %2134 = icmp eq i8 %2133, 2
  %2135 = zext i1 %2134 to i8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2135, i8* %2136, align 1
  store %struct.Memory* %loadMem_46ba36, %struct.Memory** %MEMORY
  %loadMem_46ba3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2139 to i64*
  %2140 = load i64, i64* %PC.i205
  %2141 = add i64 %2140, 44
  %2142 = load i64, i64* %PC.i205
  %2143 = add i64 %2142, 6
  %2144 = load i64, i64* %PC.i205
  %2145 = add i64 %2144, 6
  store i64 %2145, i64* %PC.i205
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2147 = load i8, i8* %2146, align 1
  store i8 %2147, i8* %BRANCH_TAKEN, align 1
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2149 = icmp ne i8 %2147, 0
  %2150 = select i1 %2149, i64 %2141, i64 %2143
  store i64 %2150, i64* %2148, align 8
  store %struct.Memory* %loadMem_46ba3e, %struct.Memory** %MEMORY
  %loadBr_46ba3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ba3e = icmp eq i8 %loadBr_46ba3e, 1
  br i1 %cmpBr_46ba3e, label %block_.L_46ba6a, label %block_46ba44

block_46ba44:                                     ; preds = %block_.L_46ba32
  %loadMem_46ba44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 1
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 15
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %RBP.i204
  %2161 = sub i64 %2160, 20
  %2162 = load i64, i64* %PC.i202
  %2163 = add i64 %2162, 4
  store i64 %2163, i64* %PC.i202
  %2164 = inttoptr i64 %2161 to i32*
  %2165 = load i32, i32* %2164
  %2166 = sext i32 %2165 to i64
  store i64 %2166, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_46ba44, %struct.Memory** %MEMORY
  %loadMem_46ba48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 1
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %2172 to i64*
  %2173 = load i64, i64* %RAX.i201
  %2174 = add i64 %2173, 12099168
  %2175 = load i64, i64* %PC.i200
  %2176 = add i64 %2175, 8
  store i64 %2176, i64* %PC.i200
  %2177 = inttoptr i64 %2174 to i8*
  %2178 = load i8, i8* %2177
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2179, align 1
  %2180 = zext i8 %2178 to i32
  %2181 = call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2184, i8* %2185, align 1
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2186, align 1
  %2187 = icmp eq i8 %2178, 0
  %2188 = zext i1 %2187 to i8
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2188, i8* %2189, align 1
  %2190 = lshr i8 %2178, 7
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2190, i8* %2191, align 1
  %2192 = lshr i8 %2178, 7
  %2193 = xor i8 %2190, %2192
  %2194 = add i8 %2193, %2192
  %2195 = icmp eq i8 %2194, 2
  %2196 = zext i1 %2195 to i8
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2196, i8* %2197, align 1
  store %struct.Memory* %loadMem_46ba48, %struct.Memory** %MEMORY
  %loadMem_46ba50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %PC.i199
  %2202 = add i64 %2201, 26
  %2203 = load i64, i64* %PC.i199
  %2204 = add i64 %2203, 6
  %2205 = load i64, i64* %PC.i199
  %2206 = add i64 %2205, 6
  store i64 %2206, i64* %PC.i199
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2208 = load i8, i8* %2207, align 1
  store i8 %2208, i8* %BRANCH_TAKEN, align 1
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2210 = icmp ne i8 %2208, 0
  %2211 = select i1 %2210, i64 %2202, i64 %2204
  store i64 %2211, i64* %2209, align 8
  store %struct.Memory* %loadMem_46ba50, %struct.Memory** %MEMORY
  %loadBr_46ba50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ba50 = icmp eq i8 %loadBr_46ba50, 1
  br i1 %cmpBr_46ba50, label %block_.L_46ba6a, label %block_46ba56

block_46ba56:                                     ; preds = %block_46ba44
  %loadMem_46ba56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 11
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RDI.i197 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RBP.i198
  %2222 = sub i64 %2221, 16
  %2223 = load i64, i64* %PC.i196
  %2224 = add i64 %2223, 3
  store i64 %2224, i64* %PC.i196
  %2225 = inttoptr i64 %2222 to i32*
  %2226 = load i32, i32* %2225
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RDI.i197, align 8
  store %struct.Memory* %loadMem_46ba56, %struct.Memory** %MEMORY
  %loadMem_46ba59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 9
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RSI.i194 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 15
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %RBP.i195
  %2238 = sub i64 %2237, 20
  %2239 = load i64, i64* %PC.i193
  %2240 = add i64 %2239, 3
  store i64 %2240, i64* %PC.i193
  %2241 = inttoptr i64 %2238 to i32*
  %2242 = load i32, i32* %2241
  %2243 = zext i32 %2242 to i64
  store i64 %2243, i64* %RSI.i194, align 8
  store %struct.Memory* %loadMem_46ba59, %struct.Memory** %MEMORY
  %loadMem1_46ba5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2246 to i64*
  %2247 = load i64, i64* %PC.i192
  %2248 = add i64 %2247, -3260
  %2249 = load i64, i64* %PC.i192
  %2250 = add i64 %2249, 5
  %2251 = load i64, i64* %PC.i192
  %2252 = add i64 %2251, 5
  store i64 %2252, i64* %PC.i192
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2254 = load i64, i64* %2253, align 8
  %2255 = add i64 %2254, -8
  %2256 = inttoptr i64 %2255 to i64*
  store i64 %2250, i64* %2256
  store i64 %2255, i64* %2253, align 8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2248, i64* %2257, align 8
  store %struct.Memory* %loadMem1_46ba5c, %struct.Memory** %MEMORY
  %loadMem2_46ba5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba5c = load i64, i64* %3
  %call2_46ba5c = call %struct.Memory* @sub_46ada0.defend_both(%struct.State* %0, i64 %loadPC_46ba5c, %struct.Memory* %loadMem2_46ba5c)
  store %struct.Memory* %call2_46ba5c, %struct.Memory** %MEMORY
  %loadMem_46ba61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 1
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %2263 to i32*
  %2264 = load i32, i32* %EAX.i191
  %2265 = zext i32 %2264 to i64
  %2266 = load i64, i64* %PC.i190
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %PC.i190
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2268, align 1
  %2269 = and i32 %2264, 255
  %2270 = call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2273, i8* %2274, align 1
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2275, align 1
  %2276 = icmp eq i32 %2264, 0
  %2277 = zext i1 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2277, i8* %2278, align 1
  %2279 = lshr i32 %2264, 31
  %2280 = trunc i32 %2279 to i8
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2280, i8* %2281, align 1
  %2282 = lshr i32 %2264, 31
  %2283 = xor i32 %2279, %2282
  %2284 = add i32 %2283, %2282
  %2285 = icmp eq i32 %2284, 2
  %2286 = zext i1 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2286, i8* %2287, align 1
  store %struct.Memory* %loadMem_46ba61, %struct.Memory** %MEMORY
  %loadMem_46ba64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 33
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2290 to i64*
  %2291 = load i64, i64* %PC.i189
  %2292 = add i64 %2291, 18
  %2293 = load i64, i64* %PC.i189
  %2294 = add i64 %2293, 6
  %2295 = load i64, i64* %PC.i189
  %2296 = add i64 %2295, 6
  store i64 %2296, i64* %PC.i189
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2298 = load i8, i8* %2297, align 1
  %2299 = icmp eq i8 %2298, 0
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %BRANCH_TAKEN, align 1
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2302 = select i1 %2299, i64 %2292, i64 %2294
  store i64 %2302, i64* %2301, align 8
  store %struct.Memory* %loadMem_46ba64, %struct.Memory** %MEMORY
  %loadBr_46ba64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ba64 = icmp eq i8 %loadBr_46ba64, 1
  br i1 %cmpBr_46ba64, label %block_.L_46ba76, label %block_.L_46ba6a

block_.L_46ba6a:                                  ; preds = %block_46ba56, %block_46ba44, %block_.L_46ba32
  %loadMem_46ba6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 15
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %2308 to i64*
  %2309 = load i64, i64* %RBP.i188
  %2310 = sub i64 %2309, 48
  %2311 = load i64, i64* %PC.i187
  %2312 = add i64 %2311, 7
  store i64 %2312, i64* %PC.i187
  %2313 = inttoptr i64 %2310 to i32*
  store i32 5, i32* %2313
  store %struct.Memory* %loadMem_46ba6a, %struct.Memory** %MEMORY
  %loadMem_46ba71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %PC.i186
  %2318 = add i64 %2317, 407
  %2319 = load i64, i64* %PC.i186
  %2320 = add i64 %2319, 5
  store i64 %2320, i64* %PC.i186
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2318, i64* %2321, align 8
  store %struct.Memory* %loadMem_46ba71, %struct.Memory** %MEMORY
  br label %block_.L_46bc08

block_.L_46ba76:                                  ; preds = %block_46ba56
  %loadMem_46ba76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 7
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %2327 to i64*
  %2328 = load i64, i64* %PC.i184
  %2329 = add i64 %2328, 10
  store i64 %2329, i64* %PC.i184
  store i64 ptrtoint (%G__0x580105_type* @G__0x580105 to i64), i64* %RDX.i185, align 8
  store %struct.Memory* %loadMem_46ba76, %struct.Memory** %MEMORY
  %loadMem_46ba80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 1
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %2335 to i32*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 1
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %RAX.i183
  %2340 = load i32, i32* %EAX.i182
  %2341 = zext i32 %2340 to i64
  %2342 = load i64, i64* %PC.i181
  %2343 = add i64 %2342, 2
  store i64 %2343, i64* %PC.i181
  %2344 = xor i64 %2341, %2339
  %2345 = trunc i64 %2344 to i32
  %2346 = and i64 %2344, 4294967295
  store i64 %2346, i64* %RAX.i183, align 8
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2347, align 1
  %2348 = and i32 %2345, 255
  %2349 = call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2352, i8* %2353, align 1
  %2354 = icmp eq i32 %2345, 0
  %2355 = zext i1 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2355, i8* %2356, align 1
  %2357 = lshr i32 %2345, 31
  %2358 = trunc i32 %2357 to i8
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2358, i8* %2359, align 1
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2360, align 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2361, align 1
  store %struct.Memory* %loadMem_46ba80, %struct.Memory** %MEMORY
  %loadMem_46ba82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %2367 to i64*
  %2368 = load i64, i64* %RBP.i180
  %2369 = sub i64 %2368, 56
  %2370 = load i64, i64* %PC.i179
  %2371 = add i64 %2370, 7
  store i64 %2371, i64* %PC.i179
  %2372 = inttoptr i64 %2369 to i32*
  store i32 0, i32* %2372
  store %struct.Memory* %loadMem_46ba82, %struct.Memory** %MEMORY
  %loadMem_46ba89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2375 to i64*
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 15
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2378 to i64*
  %2379 = load i64, i64* %RBP.i178
  %2380 = sub i64 %2379, 60
  %2381 = load i64, i64* %PC.i177
  %2382 = add i64 %2381, 7
  store i64 %2382, i64* %PC.i177
  %2383 = inttoptr i64 %2380 to i32*
  store i32 0, i32* %2383
  store %struct.Memory* %loadMem_46ba89, %struct.Memory** %MEMORY
  %loadMem_46ba90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 11
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RDI.i175 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 15
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %RBP.i176
  %2394 = sub i64 %2393, 32
  %2395 = load i64, i64* %PC.i174
  %2396 = add i64 %2395, 3
  store i64 %2396, i64* %PC.i174
  %2397 = inttoptr i64 %2394 to i32*
  %2398 = load i32, i32* %2397
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RDI.i175, align 8
  store %struct.Memory* %loadMem_46ba90, %struct.Memory** %MEMORY
  %loadMem_46ba93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 9
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RSI.i172 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 15
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %2408 to i64*
  %2409 = load i64, i64* %RBP.i173
  %2410 = sub i64 %2409, 40
  %2411 = load i64, i64* %PC.i171
  %2412 = add i64 %2411, 3
  store i64 %2412, i64* %PC.i171
  %2413 = inttoptr i64 %2410 to i32*
  %2414 = load i32, i32* %2413
  %2415 = zext i32 %2414 to i64
  store i64 %2415, i64* %RSI.i172, align 8
  store %struct.Memory* %loadMem_46ba93, %struct.Memory** %MEMORY
  %loadMem_46ba96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 5
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 15
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %RBP.i170
  %2426 = sub i64 %2425, 36
  %2427 = load i64, i64* %PC.i168
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC.i168
  %2429 = inttoptr i64 %2426 to i32*
  %2430 = load i32, i32* %2429
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_46ba96, %struct.Memory** %MEMORY
  %loadMem_46ba99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %2437 to i32*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 17
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %R8D.i167 = bitcast %union.anon* %2440 to i32*
  %2441 = bitcast i32* %R8D.i167 to i64*
  %2442 = load i32, i32* %EAX.i166
  %2443 = zext i32 %2442 to i64
  %2444 = load i64, i64* %PC.i165
  %2445 = add i64 %2444, 3
  store i64 %2445, i64* %PC.i165
  %2446 = and i64 %2443, 4294967295
  store i64 %2446, i64* %2441, align 8
  store %struct.Memory* %loadMem_46ba99, %struct.Memory** %MEMORY
  %loadMem_46ba9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 1
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %2452 to i32*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 19
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %R9D.i164 = bitcast %union.anon* %2455 to i32*
  %2456 = bitcast i32* %R9D.i164 to i64*
  %2457 = load i32, i32* %EAX.i163
  %2458 = zext i32 %2457 to i64
  %2459 = load i64, i64* %PC.i162
  %2460 = add i64 %2459, 3
  store i64 %2460, i64* %PC.i162
  %2461 = and i64 %2458, 4294967295
  store i64 %2461, i64* %2456, align 8
  store %struct.Memory* %loadMem_46ba9c, %struct.Memory** %MEMORY
  %loadMem1_46ba9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %PC.i161
  %2466 = add i64 %2465, -404591
  %2467 = load i64, i64* %PC.i161
  %2468 = add i64 %2467, 5
  %2469 = load i64, i64* %PC.i161
  %2470 = add i64 %2469, 5
  store i64 %2470, i64* %PC.i161
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2472 = load i64, i64* %2471, align 8
  %2473 = add i64 %2472, -8
  %2474 = inttoptr i64 %2473 to i64*
  store i64 %2468, i64* %2474
  store i64 %2473, i64* %2471, align 8
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2466, i64* %2475, align 8
  store %struct.Memory* %loadMem1_46ba9f, %struct.Memory** %MEMORY
  %loadMem2_46ba9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ba9f = load i64, i64* %3
  %call2_46ba9f = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46ba9f, %struct.Memory* %loadMem2_46ba9f)
  store %struct.Memory* %call2_46ba9f, %struct.Memory** %MEMORY
  %loadMem_46baa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %2481 to i32*
  %2482 = load i32, i32* %EAX.i160
  %2483 = zext i32 %2482 to i64
  %2484 = load i64, i64* %PC.i159
  %2485 = add i64 %2484, 3
  store i64 %2485, i64* %PC.i159
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2486, align 1
  %2487 = and i32 %2482, 255
  %2488 = call i32 @llvm.ctpop.i32(i32 %2487)
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2491, i8* %2492, align 1
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2493, align 1
  %2494 = icmp eq i32 %2482, 0
  %2495 = zext i1 %2494 to i8
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2495, i8* %2496, align 1
  %2497 = lshr i32 %2482, 31
  %2498 = trunc i32 %2497 to i8
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2498, i8* %2499, align 1
  %2500 = lshr i32 %2482, 31
  %2501 = xor i32 %2497, %2500
  %2502 = add i32 %2501, %2500
  %2503 = icmp eq i32 %2502, 2
  %2504 = zext i1 %2503 to i8
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2504, i8* %2505, align 1
  store %struct.Memory* %loadMem_46baa4, %struct.Memory** %MEMORY
  %loadMem_46baa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %PC.i158
  %2510 = add i64 %2509, 77
  %2511 = load i64, i64* %PC.i158
  %2512 = add i64 %2511, 6
  %2513 = load i64, i64* %PC.i158
  %2514 = add i64 %2513, 6
  store i64 %2514, i64* %PC.i158
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2516 = load i8, i8* %2515, align 1
  store i8 %2516, i8* %BRANCH_TAKEN, align 1
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2518 = icmp ne i8 %2516, 0
  %2519 = select i1 %2518, i64 %2510, i64 %2512
  store i64 %2519, i64* %2517, align 8
  store %struct.Memory* %loadMem_46baa7, %struct.Memory** %MEMORY
  %loadBr_46baa7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46baa7 = icmp eq i8 %loadBr_46baa7, 1
  br i1 %cmpBr_46baa7, label %block_.L_46baf4, label %block_46baad

block_46baad:                                     ; preds = %block_.L_46ba76
  %loadMem_46baad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 1
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %EAX.i156 = bitcast %union.anon* %2525 to i32*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 1
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %2528 to i64*
  %2529 = load i64, i64* %RAX.i157
  %2530 = load i32, i32* %EAX.i156
  %2531 = zext i32 %2530 to i64
  %2532 = load i64, i64* %PC.i155
  %2533 = add i64 %2532, 2
  store i64 %2533, i64* %PC.i155
  %2534 = xor i64 %2531, %2529
  %2535 = trunc i64 %2534 to i32
  %2536 = and i64 %2534, 4294967295
  store i64 %2536, i64* %RAX.i157, align 8
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2537, align 1
  %2538 = and i32 %2535, 255
  %2539 = call i32 @llvm.ctpop.i32(i32 %2538)
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  %2542 = xor i8 %2541, 1
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2542, i8* %2543, align 1
  %2544 = icmp eq i32 %2535, 0
  %2545 = zext i1 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2545, i8* %2546, align 1
  %2547 = lshr i32 %2535, 31
  %2548 = trunc i32 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2548, i8* %2549, align 1
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2550, align 1
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2551, align 1
  store %struct.Memory* %loadMem_46baad, %struct.Memory** %MEMORY
  %loadMem_46baaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 1
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %2557 to i32*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 9
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %RSI.i154 = bitcast %union.anon* %2560 to i64*
  %2561 = load i32, i32* %EAX.i153
  %2562 = zext i32 %2561 to i64
  %2563 = load i64, i64* %PC.i152
  %2564 = add i64 %2563, 2
  store i64 %2564, i64* %PC.i152
  %2565 = and i64 %2562, 4294967295
  store i64 %2565, i64* %RSI.i154, align 8
  store %struct.Memory* %loadMem_46baaf, %struct.Memory** %MEMORY
  %loadMem_46bab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 33
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 11
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %RDI.i150 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 15
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %2574 to i64*
  %2575 = load i64, i64* %RBP.i151
  %2576 = sub i64 %2575, 20
  %2577 = load i64, i64* %PC.i149
  %2578 = add i64 %2577, 3
  store i64 %2578, i64* %PC.i149
  %2579 = inttoptr i64 %2576 to i32*
  %2580 = load i32, i32* %2579
  %2581 = zext i32 %2580 to i64
  store i64 %2581, i64* %RDI.i150, align 8
  store %struct.Memory* %loadMem_46bab1, %struct.Memory** %MEMORY
  %loadMem1_46bab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2584 to i64*
  %2585 = load i64, i64* %PC.i148
  %2586 = add i64 %2585, -57204
  %2587 = load i64, i64* %PC.i148
  %2588 = add i64 %2587, 5
  %2589 = load i64, i64* %PC.i148
  %2590 = add i64 %2589, 5
  store i64 %2590, i64* %PC.i148
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2592 = load i64, i64* %2591, align 8
  %2593 = add i64 %2592, -8
  %2594 = inttoptr i64 %2593 to i64*
  store i64 %2588, i64* %2594
  store i64 %2593, i64* %2591, align 8
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2586, i64* %2595, align 8
  store %struct.Memory* %loadMem1_46bab4, %struct.Memory** %MEMORY
  %loadMem2_46bab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bab4 = load i64, i64* %3
  %call2_46bab4 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46bab4, %struct.Memory* %loadMem2_46bab4)
  store %struct.Memory* %call2_46bab4, %struct.Memory** %MEMORY
  %loadMem_46bab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 33
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2598 to i64*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 1
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %2601 to i32*
  %2602 = load i32, i32* %EAX.i147
  %2603 = zext i32 %2602 to i64
  %2604 = load i64, i64* %PC.i146
  %2605 = add i64 %2604, 3
  store i64 %2605, i64* %PC.i146
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2606, align 1
  %2607 = and i32 %2602, 255
  %2608 = call i32 @llvm.ctpop.i32(i32 %2607)
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = xor i8 %2610, 1
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2611, i8* %2612, align 1
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2613, align 1
  %2614 = icmp eq i32 %2602, 0
  %2615 = zext i1 %2614 to i8
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2615, i8* %2616, align 1
  %2617 = lshr i32 %2602, 31
  %2618 = trunc i32 %2617 to i8
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2618, i8* %2619, align 1
  %2620 = lshr i32 %2602, 31
  %2621 = xor i32 %2617, %2620
  %2622 = add i32 %2621, %2620
  %2623 = icmp eq i32 %2622, 2
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2624, i8* %2625, align 1
  store %struct.Memory* %loadMem_46bab9, %struct.Memory** %MEMORY
  %loadMem_46babc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %PC.i145
  %2630 = add i64 %2629, 18
  %2631 = load i64, i64* %PC.i145
  %2632 = add i64 %2631, 6
  %2633 = load i64, i64* %PC.i145
  %2634 = add i64 %2633, 6
  store i64 %2634, i64* %PC.i145
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2636 = load i8, i8* %2635, align 1
  store i8 %2636, i8* %BRANCH_TAKEN, align 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2638 = icmp ne i8 %2636, 0
  %2639 = select i1 %2638, i64 %2630, i64 %2632
  store i64 %2639, i64* %2637, align 8
  store %struct.Memory* %loadMem_46babc, %struct.Memory** %MEMORY
  %loadBr_46babc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46babc = icmp eq i8 %loadBr_46babc, 1
  br i1 %cmpBr_46babc, label %block_.L_46bace, label %block_46bac2

block_46bac2:                                     ; preds = %block_46baad
  %loadMem_46bac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 15
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %2645 to i64*
  %2646 = load i64, i64* %RBP.i144
  %2647 = sub i64 %2646, 56
  %2648 = load i64, i64* %PC.i143
  %2649 = add i64 %2648, 7
  store i64 %2649, i64* %PC.i143
  %2650 = inttoptr i64 %2647 to i32*
  store i32 1, i32* %2650
  store %struct.Memory* %loadMem_46bac2, %struct.Memory** %MEMORY
  %loadMem_46bac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 33
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %PC.i142
  %2655 = add i64 %2654, 38
  %2656 = load i64, i64* %PC.i142
  %2657 = add i64 %2656, 5
  store i64 %2657, i64* %PC.i142
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2655, i64* %2658, align 8
  store %struct.Memory* %loadMem_46bac9, %struct.Memory** %MEMORY
  br label %block_.L_46baef

block_.L_46bace:                                  ; preds = %block_46baad
  %loadMem_46bace = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 1
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %EAX.i140 = bitcast %union.anon* %2664 to i32*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 1
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RAX.i141
  %2669 = load i32, i32* %EAX.i140
  %2670 = zext i32 %2669 to i64
  %2671 = load i64, i64* %PC.i139
  %2672 = add i64 %2671, 2
  store i64 %2672, i64* %PC.i139
  %2673 = xor i64 %2670, %2668
  %2674 = trunc i64 %2673 to i32
  %2675 = and i64 %2673, 4294967295
  store i64 %2675, i64* %RAX.i141, align 8
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2676, align 1
  %2677 = and i32 %2674, 255
  %2678 = call i32 @llvm.ctpop.i32(i32 %2677)
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2681, i8* %2682, align 1
  %2683 = icmp eq i32 %2674, 0
  %2684 = zext i1 %2683 to i8
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2684, i8* %2685, align 1
  %2686 = lshr i32 %2674, 31
  %2687 = trunc i32 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2687, i8* %2688, align 1
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2689, align 1
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2690, align 1
  store %struct.Memory* %loadMem_46bace, %struct.Memory** %MEMORY
  %loadMem_46bad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 33
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 1
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %2696 to i32*
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 9
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %RSI.i138 = bitcast %union.anon* %2699 to i64*
  %2700 = load i32, i32* %EAX.i137
  %2701 = zext i32 %2700 to i64
  %2702 = load i64, i64* %PC.i136
  %2703 = add i64 %2702, 2
  store i64 %2703, i64* %PC.i136
  %2704 = and i64 %2701, 4294967295
  store i64 %2704, i64* %RSI.i138, align 8
  store %struct.Memory* %loadMem_46bad0, %struct.Memory** %MEMORY
  %loadMem_46bad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 33
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2707 to i64*
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 11
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %RDI.i134 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 15
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2713 to i64*
  %2714 = load i64, i64* %RBP.i135
  %2715 = sub i64 %2714, 16
  %2716 = load i64, i64* %PC.i133
  %2717 = add i64 %2716, 3
  store i64 %2717, i64* %PC.i133
  %2718 = inttoptr i64 %2715 to i32*
  %2719 = load i32, i32* %2718
  %2720 = zext i32 %2719 to i64
  store i64 %2720, i64* %RDI.i134, align 8
  store %struct.Memory* %loadMem_46bad2, %struct.Memory** %MEMORY
  %loadMem1_46bad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2722 = getelementptr inbounds %struct.GPR, %struct.GPR* %2721, i32 0, i32 33
  %2723 = getelementptr inbounds %struct.Reg, %struct.Reg* %2722, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2723 to i64*
  %2724 = load i64, i64* %PC.i132
  %2725 = add i64 %2724, -57237
  %2726 = load i64, i64* %PC.i132
  %2727 = add i64 %2726, 5
  %2728 = load i64, i64* %PC.i132
  %2729 = add i64 %2728, 5
  store i64 %2729, i64* %PC.i132
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2731 = load i64, i64* %2730, align 8
  %2732 = add i64 %2731, -8
  %2733 = inttoptr i64 %2732 to i64*
  store i64 %2727, i64* %2733
  store i64 %2732, i64* %2730, align 8
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2725, i64* %2734, align 8
  store %struct.Memory* %loadMem1_46bad5, %struct.Memory** %MEMORY
  %loadMem2_46bad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bad5 = load i64, i64* %3
  %call2_46bad5 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_46bad5, %struct.Memory* %loadMem2_46bad5)
  store %struct.Memory* %call2_46bad5, %struct.Memory** %MEMORY
  %loadMem_46bada = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 1
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %EAX.i131 = bitcast %union.anon* %2740 to i32*
  %2741 = load i32, i32* %EAX.i131
  %2742 = zext i32 %2741 to i64
  %2743 = load i64, i64* %PC.i130
  %2744 = add i64 %2743, 3
  store i64 %2744, i64* %PC.i130
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2745, align 1
  %2746 = and i32 %2741, 255
  %2747 = call i32 @llvm.ctpop.i32(i32 %2746)
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2750, i8* %2751, align 1
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2752, align 1
  %2753 = icmp eq i32 %2741, 0
  %2754 = zext i1 %2753 to i8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2754, i8* %2755, align 1
  %2756 = lshr i32 %2741, 31
  %2757 = trunc i32 %2756 to i8
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2757, i8* %2758, align 1
  %2759 = lshr i32 %2741, 31
  %2760 = xor i32 %2756, %2759
  %2761 = add i32 %2760, %2759
  %2762 = icmp eq i32 %2761, 2
  %2763 = zext i1 %2762 to i8
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2763, i8* %2764, align 1
  store %struct.Memory* %loadMem_46bada, %struct.Memory** %MEMORY
  %loadMem_46badd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %PC.i129
  %2769 = add i64 %2768, 13
  %2770 = load i64, i64* %PC.i129
  %2771 = add i64 %2770, 6
  %2772 = load i64, i64* %PC.i129
  %2773 = add i64 %2772, 6
  store i64 %2773, i64* %PC.i129
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2775 = load i8, i8* %2774, align 1
  store i8 %2775, i8* %BRANCH_TAKEN, align 1
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2777 = icmp ne i8 %2775, 0
  %2778 = select i1 %2777, i64 %2769, i64 %2771
  store i64 %2778, i64* %2776, align 8
  store %struct.Memory* %loadMem_46badd, %struct.Memory** %MEMORY
  %loadBr_46badd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46badd = icmp eq i8 %loadBr_46badd, 1
  br i1 %cmpBr_46badd, label %block_.L_46baea, label %block_46bae3

block_46bae3:                                     ; preds = %block_.L_46bace
  %loadMem_46bae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 15
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %RBP.i128
  %2786 = sub i64 %2785, 60
  %2787 = load i64, i64* %PC.i127
  %2788 = add i64 %2787, 7
  store i64 %2788, i64* %PC.i127
  %2789 = inttoptr i64 %2786 to i32*
  store i32 1, i32* %2789
  store %struct.Memory* %loadMem_46bae3, %struct.Memory** %MEMORY
  br label %block_.L_46baea

block_.L_46baea:                                  ; preds = %block_46bae3, %block_.L_46bace
  %loadMem_46baea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %PC.i126
  %2794 = add i64 %2793, 5
  %2795 = load i64, i64* %PC.i126
  %2796 = add i64 %2795, 5
  store i64 %2796, i64* %PC.i126
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2794, i64* %2797, align 8
  store %struct.Memory* %loadMem_46baea, %struct.Memory** %MEMORY
  br label %block_.L_46baef

block_.L_46baef:                                  ; preds = %block_.L_46baea, %block_46bac2
  %loadMem1_46baef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 33
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2800 to i64*
  %2801 = load i64, i64* %PC.i125
  %2802 = add i64 %2801, -384399
  %2803 = load i64, i64* %PC.i125
  %2804 = add i64 %2803, 5
  %2805 = load i64, i64* %PC.i125
  %2806 = add i64 %2805, 5
  store i64 %2806, i64* %PC.i125
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2808 = load i64, i64* %2807, align 8
  %2809 = add i64 %2808, -8
  %2810 = inttoptr i64 %2809 to i64*
  store i64 %2804, i64* %2810
  store i64 %2809, i64* %2807, align 8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2802, i64* %2811, align 8
  store %struct.Memory* %loadMem1_46baef, %struct.Memory** %MEMORY
  %loadMem2_46baef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46baef = load i64, i64* %3
  %call2_46baef = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46baef, %struct.Memory* %loadMem2_46baef)
  store %struct.Memory* %call2_46baef, %struct.Memory** %MEMORY
  br label %block_.L_46baf4

block_.L_46baf4:                                  ; preds = %block_.L_46baef, %block_.L_46ba76
  %loadMem_46baf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 15
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %2817 to i64*
  %2818 = load i64, i64* %RBP.i124
  %2819 = sub i64 %2818, 60
  %2820 = load i64, i64* %PC.i123
  %2821 = add i64 %2820, 4
  store i64 %2821, i64* %PC.i123
  %2822 = inttoptr i64 %2819 to i32*
  %2823 = load i32, i32* %2822
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2824, align 1
  %2825 = and i32 %2823, 255
  %2826 = call i32 @llvm.ctpop.i32(i32 %2825)
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2829, i8* %2830, align 1
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2831, align 1
  %2832 = icmp eq i32 %2823, 0
  %2833 = zext i1 %2832 to i8
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2833, i8* %2834, align 1
  %2835 = lshr i32 %2823, 31
  %2836 = trunc i32 %2835 to i8
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2836, i8* %2837, align 1
  %2838 = lshr i32 %2823, 31
  %2839 = xor i32 %2835, %2838
  %2840 = add i32 %2839, %2838
  %2841 = icmp eq i32 %2840, 2
  %2842 = zext i1 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2842, i8* %2843, align 1
  store %struct.Memory* %loadMem_46baf4, %struct.Memory** %MEMORY
  %loadMem_46baf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %PC.i122
  %2848 = add i64 %2847, 16
  %2849 = load i64, i64* %PC.i122
  %2850 = add i64 %2849, 6
  %2851 = load i64, i64* %PC.i122
  %2852 = add i64 %2851, 6
  store i64 %2852, i64* %PC.i122
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2854 = load i8, i8* %2853, align 1
  %2855 = icmp eq i8 %2854, 0
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %BRANCH_TAKEN, align 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2858 = select i1 %2855, i64 %2848, i64 %2850
  store i64 %2858, i64* %2857, align 8
  store %struct.Memory* %loadMem_46baf8, %struct.Memory** %MEMORY
  %loadBr_46baf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46baf8 = icmp eq i8 %loadBr_46baf8, 1
  br i1 %cmpBr_46baf8, label %block_.L_46bb08, label %block_46bafe

block_46bafe:                                     ; preds = %block_.L_46baf4
  %loadMem_46bafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2861 to i64*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 15
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2864 to i64*
  %2865 = load i64, i64* %RBP.i121
  %2866 = sub i64 %2865, 56
  %2867 = load i64, i64* %PC.i120
  %2868 = add i64 %2867, 4
  store i64 %2868, i64* %PC.i120
  %2869 = inttoptr i64 %2866 to i32*
  %2870 = load i32, i32* %2869
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2871, align 1
  %2872 = and i32 %2870, 255
  %2873 = call i32 @llvm.ctpop.i32(i32 %2872)
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  %2876 = xor i8 %2875, 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2876, i8* %2877, align 1
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2878, align 1
  %2879 = icmp eq i32 %2870, 0
  %2880 = zext i1 %2879 to i8
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2880, i8* %2881, align 1
  %2882 = lshr i32 %2870, 31
  %2883 = trunc i32 %2882 to i8
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2883, i8* %2884, align 1
  %2885 = lshr i32 %2870, 31
  %2886 = xor i32 %2882, %2885
  %2887 = add i32 %2886, %2885
  %2888 = icmp eq i32 %2887, 2
  %2889 = zext i1 %2888 to i8
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2889, i8* %2890, align 1
  store %struct.Memory* %loadMem_46bafe, %struct.Memory** %MEMORY
  %loadMem_46bb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2893 to i64*
  %2894 = load i64, i64* %PC.i119
  %2895 = add i64 %2894, 257
  %2896 = load i64, i64* %PC.i119
  %2897 = add i64 %2896, 6
  %2898 = load i64, i64* %PC.i119
  %2899 = add i64 %2898, 6
  store i64 %2899, i64* %PC.i119
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2901 = load i8, i8* %2900, align 1
  store i8 %2901, i8* %BRANCH_TAKEN, align 1
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2903 = icmp ne i8 %2901, 0
  %2904 = select i1 %2903, i64 %2895, i64 %2897
  store i64 %2904, i64* %2902, align 8
  store %struct.Memory* %loadMem_46bb02, %struct.Memory** %MEMORY
  %loadBr_46bb02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb02 = icmp eq i8 %loadBr_46bb02, 1
  br i1 %cmpBr_46bb02, label %block_.L_46bc03, label %block_.L_46bb08

block_.L_46bb08:                                  ; preds = %block_46bafe, %block_.L_46baf4
  %loadMem_46bb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 33
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 15
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %2910 to i64*
  %2911 = load i64, i64* %RBP.i118
  %2912 = sub i64 %2911, 64
  %2913 = load i64, i64* %PC.i117
  %2914 = add i64 %2913, 7
  store i64 %2914, i64* %PC.i117
  %2915 = inttoptr i64 %2912 to i32*
  store i32 0, i32* %2915
  store %struct.Memory* %loadMem_46bb08, %struct.Memory** %MEMORY
  %loadMem_46bb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 15
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RBP.i116
  %2923 = sub i64 %2922, 60
  %2924 = load i64, i64* %PC.i115
  %2925 = add i64 %2924, 4
  store i64 %2925, i64* %PC.i115
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
  store %struct.Memory* %loadMem_46bb0f, %struct.Memory** %MEMORY
  %loadMem_46bb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2950 to i64*
  %2951 = load i64, i64* %PC.i114
  %2952 = add i64 %2951, 27
  %2953 = load i64, i64* %PC.i114
  %2954 = add i64 %2953, 6
  %2955 = load i64, i64* %PC.i114
  %2956 = add i64 %2955, 6
  store i64 %2956, i64* %PC.i114
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2958 = load i8, i8* %2957, align 1
  store i8 %2958, i8* %BRANCH_TAKEN, align 1
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2960 = icmp ne i8 %2958, 0
  %2961 = select i1 %2960, i64 %2952, i64 %2954
  store i64 %2961, i64* %2959, align 8
  store %struct.Memory* %loadMem_46bb13, %struct.Memory** %MEMORY
  %loadBr_46bb13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb13 = icmp eq i8 %loadBr_46bb13, 1
  br i1 %cmpBr_46bb13, label %block_.L_46bb2e, label %block_46bb19

block_46bb19:                                     ; preds = %block_.L_46bb08
  %loadMem_46bb19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 9
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RSI.i112 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 15
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RBP.i113
  %2972 = sub i64 %2971, 64
  %2973 = load i64, i64* %PC.i111
  %2974 = add i64 %2973, 4
  store i64 %2974, i64* %PC.i111
  store i64 %2972, i64* %RSI.i112, align 8
  store %struct.Memory* %loadMem_46bb19, %struct.Memory** %MEMORY
  %loadMem_46bb1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 11
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RDI.i109 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 15
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %2983 to i64*
  %2984 = load i64, i64* %RBP.i110
  %2985 = sub i64 %2984, 16
  %2986 = load i64, i64* %PC.i108
  %2987 = add i64 %2986, 3
  store i64 %2987, i64* %PC.i108
  %2988 = inttoptr i64 %2985 to i32*
  %2989 = load i32, i32* %2988
  %2990 = zext i32 %2989 to i64
  store i64 %2990, i64* %RDI.i109, align 8
  store %struct.Memory* %loadMem_46bb1d, %struct.Memory** %MEMORY
  %loadMem1_46bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2993 to i64*
  %2994 = load i64, i64* %PC.i107
  %2995 = add i64 %2994, -5024
  %2996 = load i64, i64* %PC.i107
  %2997 = add i64 %2996, 5
  %2998 = load i64, i64* %PC.i107
  %2999 = add i64 %2998, 5
  store i64 %2999, i64* %PC.i107
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3001 = load i64, i64* %3000, align 8
  %3002 = add i64 %3001, -8
  %3003 = inttoptr i64 %3002 to i64*
  store i64 %2997, i64* %3003
  store i64 %3002, i64* %3000, align 8
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2995, i64* %3004, align 8
  store %struct.Memory* %loadMem1_46bb20, %struct.Memory** %MEMORY
  %loadMem2_46bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb20 = load i64, i64* %3
  %call2_46bb20 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_46bb20, %struct.Memory* %loadMem2_46bb20)
  store %struct.Memory* %call2_46bb20, %struct.Memory** %MEMORY
  %loadMem_46bb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 1
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %3010 to i32*
  %3011 = load i32, i32* %EAX.i106
  %3012 = zext i32 %3011 to i64
  %3013 = load i64, i64* %PC.i105
  %3014 = add i64 %3013, 3
  store i64 %3014, i64* %PC.i105
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3015, align 1
  %3016 = and i32 %3011, 255
  %3017 = call i32 @llvm.ctpop.i32(i32 %3016)
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  %3020 = xor i8 %3019, 1
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3020, i8* %3021, align 1
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3022, align 1
  %3023 = icmp eq i32 %3011, 0
  %3024 = zext i1 %3023 to i8
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3024, i8* %3025, align 1
  %3026 = lshr i32 %3011, 31
  %3027 = trunc i32 %3026 to i8
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3027, i8* %3028, align 1
  %3029 = lshr i32 %3011, 31
  %3030 = xor i32 %3026, %3029
  %3031 = add i32 %3030, %3029
  %3032 = icmp eq i32 %3031, 2
  %3033 = zext i1 %3032 to i8
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3033, i8* %3034, align 1
  store %struct.Memory* %loadMem_46bb25, %struct.Memory** %MEMORY
  %loadMem_46bb28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %3037 to i64*
  %3038 = load i64, i64* %PC.i104
  %3039 = add i64 %3038, 37
  %3040 = load i64, i64* %PC.i104
  %3041 = add i64 %3040, 6
  %3042 = load i64, i64* %PC.i104
  %3043 = add i64 %3042, 6
  store i64 %3043, i64* %PC.i104
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3045 = load i8, i8* %3044, align 1
  %3046 = icmp eq i8 %3045, 0
  %3047 = zext i1 %3046 to i8
  store i8 %3047, i8* %BRANCH_TAKEN, align 1
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3049 = select i1 %3046, i64 %3039, i64 %3041
  store i64 %3049, i64* %3048, align 8
  store %struct.Memory* %loadMem_46bb28, %struct.Memory** %MEMORY
  %loadBr_46bb28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb28 = icmp eq i8 %loadBr_46bb28, 1
  br i1 %cmpBr_46bb28, label %block_.L_46bb4d, label %block_.L_46bb2e

block_.L_46bb2e:                                  ; preds = %block_46bb19, %block_.L_46bb08
  %loadMem_46bb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 15
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %RBP.i103
  %3057 = sub i64 %3056, 56
  %3058 = load i64, i64* %PC.i102
  %3059 = add i64 %3058, 4
  store i64 %3059, i64* %PC.i102
  %3060 = inttoptr i64 %3057 to i32*
  %3061 = load i32, i32* %3060
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3062, align 1
  %3063 = and i32 %3061, 255
  %3064 = call i32 @llvm.ctpop.i32(i32 %3063)
  %3065 = trunc i32 %3064 to i8
  %3066 = and i8 %3065, 1
  %3067 = xor i8 %3066, 1
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3067, i8* %3068, align 1
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3069, align 1
  %3070 = icmp eq i32 %3061, 0
  %3071 = zext i1 %3070 to i8
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3071, i8* %3072, align 1
  %3073 = lshr i32 %3061, 31
  %3074 = trunc i32 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3074, i8* %3075, align 1
  %3076 = lshr i32 %3061, 31
  %3077 = xor i32 %3073, %3076
  %3078 = add i32 %3077, %3076
  %3079 = icmp eq i32 %3078, 2
  %3080 = zext i1 %3079 to i8
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3080, i8* %3081, align 1
  store %struct.Memory* %loadMem_46bb2e, %struct.Memory** %MEMORY
  %loadMem_46bb32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3084 to i64*
  %3085 = load i64, i64* %PC.i101
  %3086 = add i64 %3085, 197
  %3087 = load i64, i64* %PC.i101
  %3088 = add i64 %3087, 6
  %3089 = load i64, i64* %PC.i101
  %3090 = add i64 %3089, 6
  store i64 %3090, i64* %PC.i101
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3092 = load i8, i8* %3091, align 1
  store i8 %3092, i8* %BRANCH_TAKEN, align 1
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3094 = icmp ne i8 %3092, 0
  %3095 = select i1 %3094, i64 %3086, i64 %3088
  store i64 %3095, i64* %3093, align 8
  store %struct.Memory* %loadMem_46bb32, %struct.Memory** %MEMORY
  %loadBr_46bb32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb32 = icmp eq i8 %loadBr_46bb32, 1
  br i1 %cmpBr_46bb32, label %block_.L_46bbf7, label %block_46bb38

block_46bb38:                                     ; preds = %block_.L_46bb2e
  %loadMem_46bb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 9
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RSI.i99 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 15
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %3104 to i64*
  %3105 = load i64, i64* %RBP.i100
  %3106 = sub i64 %3105, 64
  %3107 = load i64, i64* %PC.i98
  %3108 = add i64 %3107, 4
  store i64 %3108, i64* %PC.i98
  store i64 %3106, i64* %RSI.i99, align 8
  store %struct.Memory* %loadMem_46bb38, %struct.Memory** %MEMORY
  %loadMem_46bb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 11
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RDI.i96 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 15
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %RBP.i97
  %3119 = sub i64 %3118, 20
  %3120 = load i64, i64* %PC.i95
  %3121 = add i64 %3120, 3
  store i64 %3121, i64* %PC.i95
  %3122 = inttoptr i64 %3119 to i32*
  %3123 = load i32, i32* %3122
  %3124 = zext i32 %3123 to i64
  store i64 %3124, i64* %RDI.i96, align 8
  store %struct.Memory* %loadMem_46bb3c, %struct.Memory** %MEMORY
  %loadMem1_46bb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %PC.i94
  %3129 = add i64 %3128, -5055
  %3130 = load i64, i64* %PC.i94
  %3131 = add i64 %3130, 5
  %3132 = load i64, i64* %PC.i94
  %3133 = add i64 %3132, 5
  store i64 %3133, i64* %PC.i94
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3135 = load i64, i64* %3134, align 8
  %3136 = add i64 %3135, -8
  %3137 = inttoptr i64 %3136 to i64*
  store i64 %3131, i64* %3137
  store i64 %3136, i64* %3134, align 8
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3129, i64* %3138, align 8
  store %struct.Memory* %loadMem1_46bb3f, %struct.Memory** %MEMORY
  %loadMem2_46bb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb3f = load i64, i64* %3
  %call2_46bb3f = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_46bb3f, %struct.Memory* %loadMem2_46bb3f)
  store %struct.Memory* %call2_46bb3f, %struct.Memory** %MEMORY
  %loadMem_46bb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 1
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %3144 to i32*
  %3145 = load i32, i32* %EAX.i93
  %3146 = zext i32 %3145 to i64
  %3147 = load i64, i64* %PC.i92
  %3148 = add i64 %3147, 3
  store i64 %3148, i64* %PC.i92
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3149, align 1
  %3150 = and i32 %3145, 255
  %3151 = call i32 @llvm.ctpop.i32(i32 %3150)
  %3152 = trunc i32 %3151 to i8
  %3153 = and i8 %3152, 1
  %3154 = xor i8 %3153, 1
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3154, i8* %3155, align 1
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3156, align 1
  %3157 = icmp eq i32 %3145, 0
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3158, i8* %3159, align 1
  %3160 = lshr i32 %3145, 31
  %3161 = trunc i32 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3161, i8* %3162, align 1
  %3163 = lshr i32 %3145, 31
  %3164 = xor i32 %3160, %3163
  %3165 = add i32 %3164, %3163
  %3166 = icmp eq i32 %3165, 2
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3167, i8* %3168, align 1
  store %struct.Memory* %loadMem_46bb44, %struct.Memory** %MEMORY
  %loadMem_46bb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 33
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %PC.i91
  %3173 = add i64 %3172, 176
  %3174 = load i64, i64* %PC.i91
  %3175 = add i64 %3174, 6
  %3176 = load i64, i64* %PC.i91
  %3177 = add i64 %3176, 6
  store i64 %3177, i64* %PC.i91
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3179 = load i8, i8* %3178, align 1
  store i8 %3179, i8* %BRANCH_TAKEN, align 1
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3181 = icmp ne i8 %3179, 0
  %3182 = select i1 %3181, i64 %3173, i64 %3175
  store i64 %3182, i64* %3180, align 8
  store %struct.Memory* %loadMem_46bb47, %struct.Memory** %MEMORY
  %loadBr_46bb47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb47 = icmp eq i8 %loadBr_46bb47, 1
  br i1 %cmpBr_46bb47, label %block_.L_46bbf7, label %block_.L_46bb4d

block_.L_46bb4d:                                  ; preds = %block_46bb38, %block_46bb19
  %loadMem_46bb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 15
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RBP.i90
  %3190 = sub i64 %3189, 64
  %3191 = load i64, i64* %PC.i89
  %3192 = add i64 %3191, 4
  store i64 %3192, i64* %PC.i89
  %3193 = inttoptr i64 %3190 to i32*
  %3194 = load i32, i32* %3193
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3195, align 1
  %3196 = and i32 %3194, 255
  %3197 = call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3200, i8* %3201, align 1
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3202, align 1
  %3203 = icmp eq i32 %3194, 0
  %3204 = zext i1 %3203 to i8
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3204, i8* %3205, align 1
  %3206 = lshr i32 %3194, 31
  %3207 = trunc i32 %3206 to i8
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3207, i8* %3208, align 1
  %3209 = lshr i32 %3194, 31
  %3210 = xor i32 %3206, %3209
  %3211 = add i32 %3210, %3209
  %3212 = icmp eq i32 %3211, 2
  %3213 = zext i1 %3212 to i8
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3213, i8* %3214, align 1
  store %struct.Memory* %loadMem_46bb4d, %struct.Memory** %MEMORY
  %loadMem_46bb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %PC.i88
  %3219 = add i64 %3218, 166
  %3220 = load i64, i64* %PC.i88
  %3221 = add i64 %3220, 6
  %3222 = load i64, i64* %PC.i88
  %3223 = add i64 %3222, 6
  store i64 %3223, i64* %PC.i88
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3225 = load i8, i8* %3224, align 1
  store i8 %3225, i8* %BRANCH_TAKEN, align 1
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3227 = icmp ne i8 %3225, 0
  %3228 = select i1 %3227, i64 %3219, i64 %3221
  store i64 %3228, i64* %3226, align 8
  store %struct.Memory* %loadMem_46bb51, %struct.Memory** %MEMORY
  %loadBr_46bb51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb51 = icmp eq i8 %loadBr_46bb51, 1
  br i1 %cmpBr_46bb51, label %block_.L_46bbf7, label %block_46bb57

block_46bb57:                                     ; preds = %block_.L_46bb4d
  %loadMem_46bb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 7
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RDX.i87 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %PC.i86
  %3236 = add i64 %3235, 10
  store i64 %3236, i64* %PC.i86
  store i64 ptrtoint (%G__0x58011c_type* @G__0x58011c to i64), i64* %RDX.i87, align 8
  store %struct.Memory* %loadMem_46bb57, %struct.Memory** %MEMORY
  %loadMem_46bb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 1
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %EAX.i84 = bitcast %union.anon* %3242 to i32*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RAX.i85
  %3247 = load i32, i32* %EAX.i84
  %3248 = zext i32 %3247 to i64
  %3249 = load i64, i64* %PC.i83
  %3250 = add i64 %3249, 2
  store i64 %3250, i64* %PC.i83
  %3251 = xor i64 %3248, %3246
  %3252 = trunc i64 %3251 to i32
  %3253 = and i64 %3251, 4294967295
  store i64 %3253, i64* %RAX.i85, align 8
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3254, align 1
  %3255 = and i32 %3252, 255
  %3256 = call i32 @llvm.ctpop.i32(i32 %3255)
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = xor i8 %3258, 1
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3259, i8* %3260, align 1
  %3261 = icmp eq i32 %3252, 0
  %3262 = zext i1 %3261 to i8
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3262, i8* %3263, align 1
  %3264 = lshr i32 %3252, 31
  %3265 = trunc i32 %3264 to i8
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3265, i8* %3266, align 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3267, align 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3268, align 1
  store %struct.Memory* %loadMem_46bb61, %struct.Memory** %MEMORY
  %loadMem_46bb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 11
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %RDI.i81 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 15
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RBP.i82
  %3279 = sub i64 %3278, 64
  %3280 = load i64, i64* %PC.i80
  %3281 = add i64 %3280, 3
  store i64 %3281, i64* %PC.i80
  %3282 = inttoptr i64 %3279 to i32*
  %3283 = load i32, i32* %3282
  %3284 = zext i32 %3283 to i64
  store i64 %3284, i64* %RDI.i81, align 8
  store %struct.Memory* %loadMem_46bb63, %struct.Memory** %MEMORY
  %loadMem_46bb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 9
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RSI.i78 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 15
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RBP.i79
  %3295 = sub i64 %3294, 40
  %3296 = load i64, i64* %PC.i77
  %3297 = add i64 %3296, 3
  store i64 %3297, i64* %PC.i77
  %3298 = inttoptr i64 %3295 to i32*
  %3299 = load i32, i32* %3298
  %3300 = zext i32 %3299 to i64
  store i64 %3300, i64* %RSI.i78, align 8
  store %struct.Memory* %loadMem_46bb66, %struct.Memory** %MEMORY
  %loadMem_46bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 5
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 15
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %RBP.i76
  %3311 = sub i64 %3310, 36
  %3312 = load i64, i64* %PC.i74
  %3313 = add i64 %3312, 3
  store i64 %3313, i64* %PC.i74
  %3314 = inttoptr i64 %3311 to i32*
  %3315 = load i32, i32* %3314
  %3316 = zext i32 %3315 to i64
  store i64 %3316, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_46bb69, %struct.Memory** %MEMORY
  %loadMem_46bb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 1
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %3322 to i32*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 17
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %R8D.i73 = bitcast %union.anon* %3325 to i32*
  %3326 = bitcast i32* %R8D.i73 to i64*
  %3327 = load i32, i32* %EAX.i72
  %3328 = zext i32 %3327 to i64
  %3329 = load i64, i64* %PC.i71
  %3330 = add i64 %3329, 3
  store i64 %3330, i64* %PC.i71
  %3331 = and i64 %3328, 4294967295
  store i64 %3331, i64* %3326, align 8
  store %struct.Memory* %loadMem_46bb6c, %struct.Memory** %MEMORY
  %loadMem_46bb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 33
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 1
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %EAX.i69 = bitcast %union.anon* %3337 to i32*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 19
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %R9D.i70 = bitcast %union.anon* %3340 to i32*
  %3341 = bitcast i32* %R9D.i70 to i64*
  %3342 = load i32, i32* %EAX.i69
  %3343 = zext i32 %3342 to i64
  %3344 = load i64, i64* %PC.i68
  %3345 = add i64 %3344, 3
  store i64 %3345, i64* %PC.i68
  %3346 = and i64 %3343, 4294967295
  store i64 %3346, i64* %3341, align 8
  store %struct.Memory* %loadMem_46bb6f, %struct.Memory** %MEMORY
  %loadMem1_46bb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 33
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %PC.i67
  %3351 = add i64 %3350, -404802
  %3352 = load i64, i64* %PC.i67
  %3353 = add i64 %3352, 5
  %3354 = load i64, i64* %PC.i67
  %3355 = add i64 %3354, 5
  store i64 %3355, i64* %PC.i67
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3357 = load i64, i64* %3356, align 8
  %3358 = add i64 %3357, -8
  %3359 = inttoptr i64 %3358 to i64*
  store i64 %3353, i64* %3359
  store i64 %3358, i64* %3356, align 8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3351, i64* %3360, align 8
  store %struct.Memory* %loadMem1_46bb72, %struct.Memory** %MEMORY
  %loadMem2_46bb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb72 = load i64, i64* %3
  %call2_46bb72 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46bb72, %struct.Memory* %loadMem2_46bb72)
  store %struct.Memory* %call2_46bb72, %struct.Memory** %MEMORY
  %loadMem_46bb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 1
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %3366 to i32*
  %3367 = load i32, i32* %EAX.i66
  %3368 = zext i32 %3367 to i64
  %3369 = load i64, i64* %PC.i65
  %3370 = add i64 %3369, 3
  store i64 %3370, i64* %PC.i65
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3371, align 1
  %3372 = and i32 %3367, 255
  %3373 = call i32 @llvm.ctpop.i32(i32 %3372)
  %3374 = trunc i32 %3373 to i8
  %3375 = and i8 %3374, 1
  %3376 = xor i8 %3375, 1
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3376, i8* %3377, align 1
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3378, align 1
  %3379 = icmp eq i32 %3367, 0
  %3380 = zext i1 %3379 to i8
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3380, i8* %3381, align 1
  %3382 = lshr i32 %3367, 31
  %3383 = trunc i32 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3383, i8* %3384, align 1
  %3385 = lshr i32 %3367, 31
  %3386 = xor i32 %3382, %3385
  %3387 = add i32 %3386, %3385
  %3388 = icmp eq i32 %3387, 2
  %3389 = zext i1 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3389, i8* %3390, align 1
  store %struct.Memory* %loadMem_46bb77, %struct.Memory** %MEMORY
  %loadMem_46bb7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 33
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3393 to i64*
  %3394 = load i64, i64* %PC.i64
  %3395 = add i64 %3394, 125
  %3396 = load i64, i64* %PC.i64
  %3397 = add i64 %3396, 6
  %3398 = load i64, i64* %PC.i64
  %3399 = add i64 %3398, 6
  store i64 %3399, i64* %PC.i64
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3401 = load i8, i8* %3400, align 1
  store i8 %3401, i8* %BRANCH_TAKEN, align 1
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3403 = icmp ne i8 %3401, 0
  %3404 = select i1 %3403, i64 %3395, i64 %3397
  store i64 %3404, i64* %3402, align 8
  store %struct.Memory* %loadMem_46bb7a, %struct.Memory** %MEMORY
  %loadBr_46bb7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bb7a = icmp eq i8 %loadBr_46bb7a, 1
  br i1 %cmpBr_46bb7a, label %block_.L_46bbf7, label %block_46bb80

block_46bb80:                                     ; preds = %block_46bb57
  %loadMem_46bb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 7
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %PC.i63
  %3412 = add i64 %3411, 10
  store i64 %3412, i64* %PC.i63
  store i64 ptrtoint (%G__0x580133_type* @G__0x580133 to i64), i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_46bb80, %struct.Memory** %MEMORY
  %loadMem_46bb8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3415 to i64*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 1
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %3418 to i32*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 1
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %3421 to i64*
  %3422 = load i64, i64* %RAX.i62
  %3423 = load i32, i32* %EAX.i61
  %3424 = zext i32 %3423 to i64
  %3425 = load i64, i64* %PC.i60
  %3426 = add i64 %3425, 2
  store i64 %3426, i64* %PC.i60
  %3427 = xor i64 %3424, %3422
  %3428 = trunc i64 %3427 to i32
  %3429 = and i64 %3427, 4294967295
  store i64 %3429, i64* %RAX.i62, align 8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3430, align 1
  %3431 = and i32 %3428, 255
  %3432 = call i32 @llvm.ctpop.i32(i32 %3431)
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  %3435 = xor i8 %3434, 1
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3435, i8* %3436, align 1
  %3437 = icmp eq i32 %3428, 0
  %3438 = zext i1 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3438, i8* %3439, align 1
  %3440 = lshr i32 %3428, 31
  %3441 = trunc i32 %3440 to i8
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3441, i8* %3442, align 1
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3443, align 1
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3444, align 1
  store %struct.Memory* %loadMem_46bb8a, %struct.Memory** %MEMORY
  %loadMem_46bb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 11
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDI.i58 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 15
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RBP.i59
  %3455 = sub i64 %3454, 32
  %3456 = load i64, i64* %PC.i57
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i57
  %3458 = inttoptr i64 %3455 to i32*
  %3459 = load i32, i32* %3458
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RDI.i58, align 8
  store %struct.Memory* %loadMem_46bb8c, %struct.Memory** %MEMORY
  %loadMem_46bb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 9
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RSI.i55 = bitcast %union.anon* %3466 to i64*
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 15
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %3469 to i64*
  %3470 = load i64, i64* %RBP.i56
  %3471 = sub i64 %3470, 44
  %3472 = load i64, i64* %PC.i54
  %3473 = add i64 %3472, 3
  store i64 %3473, i64* %PC.i54
  %3474 = inttoptr i64 %3471 to i32*
  %3475 = load i32, i32* %3474
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RSI.i55, align 8
  store %struct.Memory* %loadMem_46bb8f, %struct.Memory** %MEMORY
  %loadMem_46bb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 5
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3482 to i64*
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 15
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3485 to i64*
  %3486 = load i64, i64* %RBP.i53
  %3487 = sub i64 %3486, 36
  %3488 = load i64, i64* %PC.i52
  %3489 = add i64 %3488, 3
  store i64 %3489, i64* %PC.i52
  %3490 = inttoptr i64 %3487 to i32*
  %3491 = load i32, i32* %3490
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_46bb92, %struct.Memory** %MEMORY
  %loadMem_46bb95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 1
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %EAX.i51 = bitcast %union.anon* %3498 to i32*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 17
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3501 to i32*
  %3502 = bitcast i32* %R8D.i to i64*
  %3503 = load i32, i32* %EAX.i51
  %3504 = zext i32 %3503 to i64
  %3505 = load i64, i64* %PC.i50
  %3506 = add i64 %3505, 3
  store i64 %3506, i64* %PC.i50
  %3507 = and i64 %3504, 4294967295
  store i64 %3507, i64* %3502, align 8
  store %struct.Memory* %loadMem_46bb95, %struct.Memory** %MEMORY
  %loadMem_46bb98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 33
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 1
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %3513 to i32*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 19
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3516 to i32*
  %3517 = bitcast i32* %R9D.i to i64*
  %3518 = load i32, i32* %EAX.i49
  %3519 = zext i32 %3518 to i64
  %3520 = load i64, i64* %PC.i48
  %3521 = add i64 %3520, 3
  store i64 %3521, i64* %PC.i48
  %3522 = and i64 %3519, 4294967295
  store i64 %3522, i64* %3517, align 8
  store %struct.Memory* %loadMem_46bb98, %struct.Memory** %MEMORY
  %loadMem1_46bb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3525 to i64*
  %3526 = load i64, i64* %PC.i47
  %3527 = add i64 %3526, -404843
  %3528 = load i64, i64* %PC.i47
  %3529 = add i64 %3528, 5
  %3530 = load i64, i64* %PC.i47
  %3531 = add i64 %3530, 5
  store i64 %3531, i64* %PC.i47
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3533 = load i64, i64* %3532, align 8
  %3534 = add i64 %3533, -8
  %3535 = inttoptr i64 %3534 to i64*
  store i64 %3529, i64* %3535
  store i64 %3534, i64* %3532, align 8
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3527, i64* %3536, align 8
  store %struct.Memory* %loadMem1_46bb9b, %struct.Memory** %MEMORY
  %loadMem2_46bb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bb9b = load i64, i64* %3
  %call2_46bb9b = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_46bb9b, %struct.Memory* %loadMem2_46bb9b)
  store %struct.Memory* %call2_46bb9b, %struct.Memory** %MEMORY
  %loadMem_46bba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 33
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 1
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %EAX.i46 = bitcast %union.anon* %3542 to i32*
  %3543 = load i32, i32* %EAX.i46
  %3544 = zext i32 %3543 to i64
  %3545 = load i64, i64* %PC.i45
  %3546 = add i64 %3545, 3
  store i64 %3546, i64* %PC.i45
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3547, align 1
  %3548 = and i32 %3543, 255
  %3549 = call i32 @llvm.ctpop.i32(i32 %3548)
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = xor i8 %3551, 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3552, i8* %3553, align 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3554, align 1
  %3555 = icmp eq i32 %3543, 0
  %3556 = zext i1 %3555 to i8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3556, i8* %3557, align 1
  %3558 = lshr i32 %3543, 31
  %3559 = trunc i32 %3558 to i8
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3559, i8* %3560, align 1
  %3561 = lshr i32 %3543, 31
  %3562 = xor i32 %3558, %3561
  %3563 = add i32 %3562, %3561
  %3564 = icmp eq i32 %3563, 2
  %3565 = zext i1 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3565, i8* %3566, align 1
  store %struct.Memory* %loadMem_46bba0, %struct.Memory** %MEMORY
  %loadMem_46bba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3569 to i64*
  %3570 = load i64, i64* %PC.i44
  %3571 = add i64 %3570, 74
  %3572 = load i64, i64* %PC.i44
  %3573 = add i64 %3572, 6
  %3574 = load i64, i64* %PC.i44
  %3575 = add i64 %3574, 6
  store i64 %3575, i64* %PC.i44
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3577 = load i8, i8* %3576, align 1
  store i8 %3577, i8* %BRANCH_TAKEN, align 1
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3579 = icmp ne i8 %3577, 0
  %3580 = select i1 %3579, i64 %3571, i64 %3573
  store i64 %3580, i64* %3578, align 8
  store %struct.Memory* %loadMem_46bba3, %struct.Memory** %MEMORY
  %loadBr_46bba3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bba3 = icmp eq i8 %loadBr_46bba3, 1
  br i1 %cmpBr_46bba3, label %block_.L_46bbed, label %block_46bba9

block_46bba9:                                     ; preds = %block_46bb80
  %loadMem_46bba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 1
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 15
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3589 to i64*
  %3590 = load i64, i64* %RBP.i43
  %3591 = sub i64 %3590, 20
  %3592 = load i64, i64* %PC.i41
  %3593 = add i64 %3592, 4
  store i64 %3593, i64* %PC.i41
  %3594 = inttoptr i64 %3591 to i32*
  %3595 = load i32, i32* %3594
  %3596 = sext i32 %3595 to i64
  store i64 %3596, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_46bba9, %struct.Memory** %MEMORY
  %loadMem_46bbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 33
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 1
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RAX.i40
  %3604 = add i64 %3603, 12099168
  %3605 = load i64, i64* %PC.i39
  %3606 = add i64 %3605, 8
  store i64 %3606, i64* %PC.i39
  %3607 = inttoptr i64 %3604 to i8*
  %3608 = load i8, i8* %3607
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3609, align 1
  %3610 = zext i8 %3608 to i32
  %3611 = call i32 @llvm.ctpop.i32(i32 %3610)
  %3612 = trunc i32 %3611 to i8
  %3613 = and i8 %3612, 1
  %3614 = xor i8 %3613, 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3614, i8* %3615, align 1
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3616, align 1
  %3617 = icmp eq i8 %3608, 0
  %3618 = zext i1 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3618, i8* %3619, align 1
  %3620 = lshr i8 %3608, 7
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3620, i8* %3621, align 1
  %3622 = lshr i8 %3608, 7
  %3623 = xor i8 %3620, %3622
  %3624 = add i8 %3623, %3622
  %3625 = icmp eq i8 %3624, 2
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3626, i8* %3627, align 1
  store %struct.Memory* %loadMem_46bbad, %struct.Memory** %MEMORY
  %loadMem_46bbb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %PC.i38
  %3632 = add i64 %3631, 44
  %3633 = load i64, i64* %PC.i38
  %3634 = add i64 %3633, 6
  %3635 = load i64, i64* %PC.i38
  %3636 = add i64 %3635, 6
  store i64 %3636, i64* %PC.i38
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3638 = load i8, i8* %3637, align 1
  store i8 %3638, i8* %BRANCH_TAKEN, align 1
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3640 = icmp ne i8 %3638, 0
  %3641 = select i1 %3640, i64 %3632, i64 %3634
  store i64 %3641, i64* %3639, align 8
  store %struct.Memory* %loadMem_46bbb5, %struct.Memory** %MEMORY
  %loadBr_46bbb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bbb5 = icmp eq i8 %loadBr_46bbb5, 1
  br i1 %cmpBr_46bbb5, label %block_.L_46bbe1, label %block_46bbbb

block_46bbbb:                                     ; preds = %block_46bba9
  %loadMem_46bbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 33
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3644 to i64*
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3646 = getelementptr inbounds %struct.GPR, %struct.GPR* %3645, i32 0, i32 1
  %3647 = getelementptr inbounds %struct.Reg, %struct.Reg* %3646, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %3647 to i64*
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 15
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %3650 to i64*
  %3651 = load i64, i64* %RBP.i37
  %3652 = sub i64 %3651, 24
  %3653 = load i64, i64* %PC.i35
  %3654 = add i64 %3653, 4
  store i64 %3654, i64* %PC.i35
  %3655 = inttoptr i64 %3652 to i32*
  %3656 = load i32, i32* %3655
  %3657 = sext i32 %3656 to i64
  store i64 %3657, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_46bbbb, %struct.Memory** %MEMORY
  %loadMem_46bbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 33
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 1
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RAX.i34
  %3665 = add i64 %3664, 12099168
  %3666 = load i64, i64* %PC.i33
  %3667 = add i64 %3666, 8
  store i64 %3667, i64* %PC.i33
  %3668 = inttoptr i64 %3665 to i8*
  %3669 = load i8, i8* %3668
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3670, align 1
  %3671 = zext i8 %3669 to i32
  %3672 = call i32 @llvm.ctpop.i32(i32 %3671)
  %3673 = trunc i32 %3672 to i8
  %3674 = and i8 %3673, 1
  %3675 = xor i8 %3674, 1
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3675, i8* %3676, align 1
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3677, align 1
  %3678 = icmp eq i8 %3669, 0
  %3679 = zext i1 %3678 to i8
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3679, i8* %3680, align 1
  %3681 = lshr i8 %3669, 7
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3681, i8* %3682, align 1
  %3683 = lshr i8 %3669, 7
  %3684 = xor i8 %3681, %3683
  %3685 = add i8 %3684, %3683
  %3686 = icmp eq i8 %3685, 2
  %3687 = zext i1 %3686 to i8
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3687, i8* %3688, align 1
  store %struct.Memory* %loadMem_46bbbf, %struct.Memory** %MEMORY
  %loadMem_46bbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 33
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3691 to i64*
  %3692 = load i64, i64* %PC.i32
  %3693 = add i64 %3692, 26
  %3694 = load i64, i64* %PC.i32
  %3695 = add i64 %3694, 6
  %3696 = load i64, i64* %PC.i32
  %3697 = add i64 %3696, 6
  store i64 %3697, i64* %PC.i32
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3699 = load i8, i8* %3698, align 1
  store i8 %3699, i8* %BRANCH_TAKEN, align 1
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3701 = icmp ne i8 %3699, 0
  %3702 = select i1 %3701, i64 %3693, i64 %3695
  store i64 %3702, i64* %3700, align 8
  store %struct.Memory* %loadMem_46bbc7, %struct.Memory** %MEMORY
  %loadBr_46bbc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bbc7 = icmp eq i8 %loadBr_46bbc7, 1
  br i1 %cmpBr_46bbc7, label %block_.L_46bbe1, label %block_46bbcd

block_46bbcd:                                     ; preds = %block_46bbbb
  %loadMem_46bbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 11
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 15
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3711 to i64*
  %3712 = load i64, i64* %RBP.i31
  %3713 = sub i64 %3712, 20
  %3714 = load i64, i64* %PC.i30
  %3715 = add i64 %3714, 3
  store i64 %3715, i64* %PC.i30
  %3716 = inttoptr i64 %3713 to i32*
  %3717 = load i32, i32* %3716
  %3718 = zext i32 %3717 to i64
  store i64 %3718, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_46bbcd, %struct.Memory** %MEMORY
  %loadMem_46bbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 33
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 9
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 15
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %3727 to i64*
  %3728 = load i64, i64* %RBP.i29
  %3729 = sub i64 %3728, 24
  %3730 = load i64, i64* %PC.i28
  %3731 = add i64 %3730, 3
  store i64 %3731, i64* %PC.i28
  %3732 = inttoptr i64 %3729 to i32*
  %3733 = load i32, i32* %3732
  %3734 = zext i32 %3733 to i64
  store i64 %3734, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_46bbd0, %struct.Memory** %MEMORY
  %loadMem1_46bbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %PC.i27
  %3739 = add i64 %3738, -3635
  %3740 = load i64, i64* %PC.i27
  %3741 = add i64 %3740, 5
  %3742 = load i64, i64* %PC.i27
  %3743 = add i64 %3742, 5
  store i64 %3743, i64* %PC.i27
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3745 = load i64, i64* %3744, align 8
  %3746 = add i64 %3745, -8
  %3747 = inttoptr i64 %3746 to i64*
  store i64 %3741, i64* %3747
  store i64 %3746, i64* %3744, align 8
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3739, i64* %3748, align 8
  store %struct.Memory* %loadMem1_46bbd3, %struct.Memory** %MEMORY
  %loadMem2_46bbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bbd3 = load i64, i64* %3
  %call2_46bbd3 = call %struct.Memory* @sub_46ada0.defend_both(%struct.State* %0, i64 %loadPC_46bbd3, %struct.Memory* %loadMem2_46bbd3)
  store %struct.Memory* %call2_46bbd3, %struct.Memory** %MEMORY
  %loadMem_46bbd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 1
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %3754 to i32*
  %3755 = load i32, i32* %EAX.i26
  %3756 = zext i32 %3755 to i64
  %3757 = load i64, i64* %PC.i25
  %3758 = add i64 %3757, 3
  store i64 %3758, i64* %PC.i25
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3759, align 1
  %3760 = and i32 %3755, 255
  %3761 = call i32 @llvm.ctpop.i32(i32 %3760)
  %3762 = trunc i32 %3761 to i8
  %3763 = and i8 %3762, 1
  %3764 = xor i8 %3763, 1
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3764, i8* %3765, align 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3766, align 1
  %3767 = icmp eq i32 %3755, 0
  %3768 = zext i1 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3768, i8* %3769, align 1
  %3770 = lshr i32 %3755, 31
  %3771 = trunc i32 %3770 to i8
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3771, i8* %3772, align 1
  %3773 = lshr i32 %3755, 31
  %3774 = xor i32 %3770, %3773
  %3775 = add i32 %3774, %3773
  %3776 = icmp eq i32 %3775, 2
  %3777 = zext i1 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3777, i8* %3778, align 1
  store %struct.Memory* %loadMem_46bbd8, %struct.Memory** %MEMORY
  %loadMem_46bbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %PC.i24
  %3783 = add i64 %3782, 13
  %3784 = load i64, i64* %PC.i24
  %3785 = add i64 %3784, 6
  %3786 = load i64, i64* %PC.i24
  %3787 = add i64 %3786, 6
  store i64 %3787, i64* %PC.i24
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3789 = load i8, i8* %3788, align 1
  %3790 = icmp eq i8 %3789, 0
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %BRANCH_TAKEN, align 1
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3793 = select i1 %3790, i64 %3783, i64 %3785
  store i64 %3793, i64* %3792, align 8
  store %struct.Memory* %loadMem_46bbdb, %struct.Memory** %MEMORY
  %loadBr_46bbdb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46bbdb = icmp eq i8 %loadBr_46bbdb, 1
  br i1 %cmpBr_46bbdb, label %block_.L_46bbe8, label %block_.L_46bbe1

block_.L_46bbe1:                                  ; preds = %block_46bbcd, %block_46bbbb, %block_46bba9
  %loadMem_46bbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 33
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3796 to i64*
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 15
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3799 to i64*
  %3800 = load i64, i64* %RBP.i23
  %3801 = sub i64 %3800, 48
  %3802 = load i64, i64* %PC.i22
  %3803 = add i64 %3802, 7
  store i64 %3803, i64* %PC.i22
  %3804 = inttoptr i64 %3801 to i32*
  store i32 5, i32* %3804
  store %struct.Memory* %loadMem_46bbe1, %struct.Memory** %MEMORY
  br label %block_.L_46bbe8

block_.L_46bbe8:                                  ; preds = %block_.L_46bbe1, %block_46bbcd
  %loadMem1_46bbe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 33
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3807 to i64*
  %3808 = load i64, i64* %PC.i21
  %3809 = add i64 %3808, -384648
  %3810 = load i64, i64* %PC.i21
  %3811 = add i64 %3810, 5
  %3812 = load i64, i64* %PC.i21
  %3813 = add i64 %3812, 5
  store i64 %3813, i64* %PC.i21
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3815 = load i64, i64* %3814, align 8
  %3816 = add i64 %3815, -8
  %3817 = inttoptr i64 %3816 to i64*
  store i64 %3811, i64* %3817
  store i64 %3816, i64* %3814, align 8
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3809, i64* %3818, align 8
  store %struct.Memory* %loadMem1_46bbe8, %struct.Memory** %MEMORY
  %loadMem2_46bbe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bbe8 = load i64, i64* %3
  %call2_46bbe8 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46bbe8, %struct.Memory* %loadMem2_46bbe8)
  store %struct.Memory* %call2_46bbe8, %struct.Memory** %MEMORY
  br label %block_.L_46bbed

block_.L_46bbed:                                  ; preds = %block_.L_46bbe8, %block_46bb80
  %loadMem1_46bbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %PC.i20
  %3823 = add i64 %3822, -384653
  %3824 = load i64, i64* %PC.i20
  %3825 = add i64 %3824, 5
  %3826 = load i64, i64* %PC.i20
  %3827 = add i64 %3826, 5
  store i64 %3827, i64* %PC.i20
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3829 = load i64, i64* %3828, align 8
  %3830 = add i64 %3829, -8
  %3831 = inttoptr i64 %3830 to i64*
  store i64 %3825, i64* %3831
  store i64 %3830, i64* %3828, align 8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3823, i64* %3832, align 8
  store %struct.Memory* %loadMem1_46bbed, %struct.Memory** %MEMORY
  %loadMem2_46bbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bbed = load i64, i64* %3
  %call2_46bbed = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46bbed, %struct.Memory* %loadMem2_46bbed)
  store %struct.Memory* %call2_46bbed, %struct.Memory** %MEMORY
  %loadMem_46bbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %PC.i19
  %3837 = add i64 %3836, 12
  %3838 = load i64, i64* %PC.i19
  %3839 = add i64 %3838, 5
  store i64 %3839, i64* %PC.i19
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3837, i64* %3840, align 8
  store %struct.Memory* %loadMem_46bbf2, %struct.Memory** %MEMORY
  br label %block_.L_46bbfe

block_.L_46bbf7:                                  ; preds = %block_46bb57, %block_.L_46bb4d, %block_46bb38, %block_.L_46bb2e
  %loadMem_46bbf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 33
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 15
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %RBP.i18
  %3848 = sub i64 %3847, 48
  %3849 = load i64, i64* %PC.i17
  %3850 = add i64 %3849, 7
  store i64 %3850, i64* %PC.i17
  %3851 = inttoptr i64 %3848 to i32*
  store i32 5, i32* %3851
  store %struct.Memory* %loadMem_46bbf7, %struct.Memory** %MEMORY
  br label %block_.L_46bbfe

block_.L_46bbfe:                                  ; preds = %block_.L_46bbf7, %block_.L_46bbed
  %loadMem_46bbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 33
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3854 to i64*
  %3855 = load i64, i64* %PC.i16
  %3856 = add i64 %3855, 5
  %3857 = load i64, i64* %PC.i16
  %3858 = add i64 %3857, 5
  store i64 %3858, i64* %PC.i16
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3856, i64* %3859, align 8
  store %struct.Memory* %loadMem_46bbfe, %struct.Memory** %MEMORY
  br label %block_.L_46bc03

block_.L_46bc03:                                  ; preds = %block_.L_46bbfe, %block_46bafe
  %loadMem_46bc03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3862 to i64*
  %3863 = load i64, i64* %PC.i15
  %3864 = add i64 %3863, 5
  %3865 = load i64, i64* %PC.i15
  %3866 = add i64 %3865, 5
  store i64 %3866, i64* %PC.i15
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3864, i64* %3867, align 8
  store %struct.Memory* %loadMem_46bc03, %struct.Memory** %MEMORY
  br label %block_.L_46bc08

block_.L_46bc08:                                  ; preds = %block_.L_46bc03, %block_.L_46ba6a
  %loadMem_46bc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3870 to i64*
  %3871 = load i64, i64* %PC.i14
  %3872 = add i64 %3871, 5
  %3873 = load i64, i64* %PC.i14
  %3874 = add i64 %3873, 5
  store i64 %3874, i64* %PC.i14
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3872, i64* %3875, align 8
  store %struct.Memory* %loadMem_46bc08, %struct.Memory** %MEMORY
  br label %block_.L_46bc0d

block_.L_46bc0d:                                  ; preds = %block_.L_46bc08, %block_46b87e
  %loadMem1_46bc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3877 = getelementptr inbounds %struct.GPR, %struct.GPR* %3876, i32 0, i32 33
  %3878 = getelementptr inbounds %struct.Reg, %struct.Reg* %3877, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3878 to i64*
  %3879 = load i64, i64* %PC.i13
  %3880 = add i64 %3879, -384685
  %3881 = load i64, i64* %PC.i13
  %3882 = add i64 %3881, 5
  %3883 = load i64, i64* %PC.i13
  %3884 = add i64 %3883, 5
  store i64 %3884, i64* %PC.i13
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3886 = load i64, i64* %3885, align 8
  %3887 = add i64 %3886, -8
  %3888 = inttoptr i64 %3887 to i64*
  store i64 %3882, i64* %3888
  store i64 %3887, i64* %3885, align 8
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3880, i64* %3889, align 8
  store %struct.Memory* %loadMem1_46bc0d, %struct.Memory** %MEMORY
  %loadMem2_46bc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46bc0d = load i64, i64* %3
  %call2_46bc0d = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46bc0d, %struct.Memory* %loadMem2_46bc0d)
  store %struct.Memory* %call2_46bc0d, %struct.Memory** %MEMORY
  br label %block_.L_46bc12

block_.L_46bc12:                                  ; preds = %block_.L_46bc0d, %entry
  %loadMem_46bc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3892 to i64*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 1
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 15
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RBP.i12
  %3900 = sub i64 %3899, 48
  %3901 = load i64, i64* %PC.i10
  %3902 = add i64 %3901, 3
  store i64 %3902, i64* %PC.i10
  %3903 = inttoptr i64 %3900 to i32*
  %3904 = load i32, i32* %3903
  %3905 = zext i32 %3904 to i64
  store i64 %3905, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_46bc12, %struct.Memory** %MEMORY
  %loadMem_46bc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3908 to i64*
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 1
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3911 to i32*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 15
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %3914 to i64*
  %3915 = load i64, i64* %RBP.i9
  %3916 = sub i64 %3915, 12
  %3917 = load i32, i32* %EAX.i
  %3918 = zext i32 %3917 to i64
  %3919 = load i64, i64* %PC.i8
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC.i8
  %3921 = inttoptr i64 %3916 to i32*
  store i32 %3917, i32* %3921
  store %struct.Memory* %loadMem_46bc15, %struct.Memory** %MEMORY
  br label %block_.L_46bc18

block_.L_46bc18:                                  ; preds = %block_.L_46bc12, %block_.L_46ba08, %block_46b9e8, %block_46b92b, %block_.L_46b904
  %loadMem_46bc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 33
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3924 to i64*
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 1
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3927 to i64*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 15
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3930 to i64*
  %3931 = load i64, i64* %RBP.i7
  %3932 = sub i64 %3931, 12
  %3933 = load i64, i64* %PC.i6
  %3934 = add i64 %3933, 3
  store i64 %3934, i64* %PC.i6
  %3935 = inttoptr i64 %3932 to i32*
  %3936 = load i32, i32* %3935
  %3937 = zext i32 %3936 to i64
  store i64 %3937, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_46bc18, %struct.Memory** %MEMORY
  %loadMem_46bc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 13
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RSP.i
  %3945 = load i64, i64* %PC.i5
  %3946 = add i64 %3945, 4
  store i64 %3946, i64* %PC.i5
  %3947 = add i64 56, %3944
  store i64 %3947, i64* %RSP.i, align 8
  %3948 = icmp ult i64 %3947, %3944
  %3949 = icmp ult i64 %3947, 56
  %3950 = or i1 %3948, %3949
  %3951 = zext i1 %3950 to i8
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3951, i8* %3952, align 1
  %3953 = trunc i64 %3947 to i32
  %3954 = and i32 %3953, 255
  %3955 = call i32 @llvm.ctpop.i32(i32 %3954)
  %3956 = trunc i32 %3955 to i8
  %3957 = and i8 %3956, 1
  %3958 = xor i8 %3957, 1
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3958, i8* %3959, align 1
  %3960 = xor i64 56, %3944
  %3961 = xor i64 %3960, %3947
  %3962 = lshr i64 %3961, 4
  %3963 = trunc i64 %3962 to i8
  %3964 = and i8 %3963, 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3964, i8* %3965, align 1
  %3966 = icmp eq i64 %3947, 0
  %3967 = zext i1 %3966 to i8
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3967, i8* %3968, align 1
  %3969 = lshr i64 %3947, 63
  %3970 = trunc i64 %3969 to i8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3970, i8* %3971, align 1
  %3972 = lshr i64 %3944, 63
  %3973 = xor i64 %3969, %3972
  %3974 = add i64 %3973, %3969
  %3975 = icmp eq i64 %3974, 2
  %3976 = zext i1 %3975 to i8
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3976, i8* %3977, align 1
  store %struct.Memory* %loadMem_46bc1b, %struct.Memory** %MEMORY
  %loadMem_46bc1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 33
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3980 to i64*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 3
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %3983 to i64*
  %3984 = load i64, i64* %PC.i4
  %3985 = add i64 %3984, 1
  store i64 %3985, i64* %PC.i4
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3987 = load i64, i64* %3986, align 8
  %3988 = add i64 %3987, 8
  %3989 = inttoptr i64 %3987 to i64*
  %3990 = load i64, i64* %3989
  store i64 %3990, i64* %RBX.i, align 8
  store i64 %3988, i64* %3986, align 8
  store %struct.Memory* %loadMem_46bc1f, %struct.Memory** %MEMORY
  %loadMem_46bc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 15
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3996 to i64*
  %3997 = load i64, i64* %PC.i2
  %3998 = add i64 %3997, 1
  store i64 %3998, i64* %PC.i2
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4000 = load i64, i64* %3999, align 8
  %4001 = add i64 %4000, 8
  %4002 = inttoptr i64 %4000 to i64*
  %4003 = load i64, i64* %4002
  store i64 %4003, i64* %RBP.i3, align 8
  store i64 %4001, i64* %3999, align 8
  store %struct.Memory* %loadMem_46bc20, %struct.Memory** %MEMORY
  %loadMem_46bc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4006 to i64*
  %4007 = load i64, i64* %PC.i1
  %4008 = add i64 %4007, 1
  store i64 %4008, i64* %PC.i1
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4011 = load i64, i64* %4010, align 8
  %4012 = inttoptr i64 %4011 to i64*
  %4013 = load i64, i64* %4012
  store i64 %4013, i64* %4009, align 8
  %4014 = add i64 %4011, 8
  store i64 %4014, i64* %4010, align 8
  store %struct.Memory* %loadMem_46bc21, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_46bc21
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
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

define %struct.Memory* @routine_subq__0x38___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 56
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 56
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
  %23 = xor i64 56, %9
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

define %struct.Memory* @routine_movl_0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5800a9___r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x5800a9_type* @G__0x5800a9 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ebx___ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RBX, align 8
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

define %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__r11___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46bc12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46bc0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46b8b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46ba32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5800c0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5800c0_type* @G__0x5800c0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_46b91f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12099168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_je_.L_46b904(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.find_defense(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46b91a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.popgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46bc18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46b93c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x5800d7___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5800d7_type* @G__0x5800d7 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_46ba2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x5800ee___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5800ee_type* @G__0x5800ee to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46ba28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46ba08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46ba03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.defend_both(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46ba23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46ba6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_jne_.L_46ba76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46bc08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x580105___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x580105_type* @G__0x580105 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_46baf4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46bace(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46baef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_46baea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_46bb08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46bc03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46bb2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_46bb4d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46bbf7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x58011c___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58011c_type* @G__0x58011c to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x580133___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x580133_type* @G__0x580133 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_46bbed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_46bbe1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_46bbe8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46bbfe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46bc03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46bc0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_addq__0x38___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 56, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 56
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
  %25 = xor i64 56, %9
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
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
