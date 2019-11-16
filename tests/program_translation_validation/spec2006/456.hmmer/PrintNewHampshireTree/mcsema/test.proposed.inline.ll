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
%G__0x455dc7_type = type <{ [8 x i8] }>
%G__0x455e8a_type = type <{ [8 x i8] }>
%G__0x455e92_type = type <{ [8 x i8] }>
%G__0x455e95_type = type <{ [8 x i8] }>
%G__0x455e97_type = type <{ [8 x i8] }>
%G__0x455e9b_type = type <{ [8 x i8] }>
%G__0x4560ea_type = type <{ [8 x i8] }>
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
@G__0x455dc7 = global %G__0x455dc7_type zeroinitializer
@G__0x455e8a = global %G__0x455e8a_type zeroinitializer
@G__0x455e92 = global %G__0x455e92_type zeroinitializer
@G__0x455e95 = global %G__0x455e95_type zeroinitializer
@G__0x455e97 = global %G__0x455e97_type zeroinitializer
@G__0x455e9b = global %G__0x455e9b_type zeroinitializer
@G__0x4560ea = global %G__0x4560ea_type zeroinitializer

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

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44a340.InitIntStack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44a3a0.PushIntStack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44a420.PopIntStack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44a500.FreeIntStack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @PrintNewHampshireTree(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_406bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_406bb0, %struct.Memory** %MEMORY
  %loadMem_406bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_406bb1, %struct.Memory** %MEMORY
  %loadMem_406bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i25 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i25
  %36 = load i64, i64* %PC.i24
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i24
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i25, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_406bb4, %struct.Memory** %MEMORY
  %loadMem_406bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i47
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i47
  store i64 ptrtoint (%G__0x455dc7_type* @G__0x455dc7 to i64), i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_406bb8, %struct.Memory** %MEMORY
  %loadMem_406bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %80 to i32*
  %81 = bitcast i32* %R8D.i to i64*
  %82 = load i64, i64* %PC.i226
  %83 = add i64 %82, 6
  store i64 %83, i64* %PC.i226
  store i64 464, i64* %81, align 8
  store %struct.Memory* %loadMem_406bc2, %struct.Memory** %MEMORY
  %loadMem_406bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 11
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RDI.i237 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 15
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %92 to i64*
  %93 = load i64, i64* %RBP.i238
  %94 = sub i64 %93, 8
  %95 = load i64, i64* %RDI.i237
  %96 = load i64, i64* %PC.i236
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC.i236
  %98 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %98
  store %struct.Memory* %loadMem_406bc8, %struct.Memory** %MEMORY
  %loadMem_406bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RSI.i267 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i268
  %109 = sub i64 %108, 16
  %110 = load i64, i64* %RSI.i267
  %111 = load i64, i64* %PC.i266
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i266
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  store %struct.Memory* %loadMem_406bcc, %struct.Memory** %MEMORY
  %loadMem_406bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i310
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %RDX.i309
  %126 = load i64, i64* %PC.i308
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i308
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_406bd0, %struct.Memory** %MEMORY
  %loadMem_406bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %ECX.i373 = bitcast %union.anon* %134 to i32*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i374
  %139 = sub i64 %138, 28
  %140 = load i32, i32* %ECX.i373
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %PC.i372
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC.i372
  %144 = inttoptr i64 %139 to i32*
  store i32 %140, i32* %144
  store %struct.Memory* %loadMem_406bd4, %struct.Memory** %MEMORY
  %loadMem_406bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 15
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RBP.i371
  %155 = sub i64 %154, 28
  %156 = load i64, i64* %PC.i369
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC.i369
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_406bd7, %struct.Memory** %MEMORY
  %loadMem_406bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %RCX.i368
  %168 = load i64, i64* %PC.i367
  %169 = add i64 %168, 2
  store i64 %169, i64* %PC.i367
  %170 = trunc i64 %167 to i32
  %171 = shl i32 %170, 1
  %172 = icmp slt i32 %170, 0
  %173 = icmp slt i32 %171, 0
  %174 = xor i1 %172, %173
  %175 = zext i32 %171 to i64
  store i64 %175, i64* %RCX.i368, align 8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %177 = zext i1 %172 to i8
  store i8 %177, i8* %176, align 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %179 = and i32 %171, 254
  %180 = call i32 @llvm.ctpop.i32(i32 %179)
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  store i8 %183, i8* %178, align 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %184, align 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %186 = icmp eq i32 %171, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %185, align 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %189 = lshr i32 %171, 31
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %188, align 1
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %192 = zext i1 %174 to i8
  store i8 %192, i8* %191, align 1
  store %struct.Memory* %loadMem_406bda, %struct.Memory** %MEMORY
  %loadMem_406bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RCX.i366
  %200 = load i64, i64* %PC.i365
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC.i365
  %202 = trunc i64 %199 to i32
  %203 = sub i32 %202, 1
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RCX.i366, align 8
  %205 = icmp ult i32 %202, 1
  %206 = zext i1 %205 to i8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %206, i8* %207, align 1
  %208 = and i32 %203, 255
  %209 = call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %212, i8* %213, align 1
  %214 = xor i64 1, %199
  %215 = trunc i64 %214 to i32
  %216 = xor i32 %215, %203
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %219, i8* %220, align 1
  %221 = icmp eq i32 %203, 0
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %222, i8* %223, align 1
  %224 = lshr i32 %203, 31
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %225, i8* %226, align 1
  %227 = lshr i32 %202, 31
  %228 = xor i32 %224, %227
  %229 = add i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %231, i8* %232, align 1
  store %struct.Memory* %loadMem_406bdd, %struct.Memory** %MEMORY
  %loadMem_406be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %ECX.i363 = bitcast %union.anon* %238 to i32*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 7
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %241 to i64*
  %242 = load i32, i32* %ECX.i363
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %PC.i362
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC.i362
  %246 = shl i64 %243, 32
  %247 = ashr exact i64 %246, 32
  store i64 %247, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_406be0, %struct.Memory** %MEMORY
  %loadMem_406be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 7
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RDX.i361 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RDX.i361
  %255 = load i64, i64* %PC.i360
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC.i360
  %257 = shl i64 %254, 1
  %258 = icmp slt i64 %257, 0
  %259 = shl i64 %257, 1
  store i64 %259, i64* %RDX.i361, align 8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %261 = zext i1 %258 to i8
  store i8 %261, i8* %260, align 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %263 = trunc i64 %259 to i32
  %264 = and i32 %263, 254
  %265 = call i32 @llvm.ctpop.i32(i32 %264)
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %262, align 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %269, align 1
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %271 = icmp eq i64 %259, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %270, align 1
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %274 = lshr i64 %259, 63
  %275 = trunc i64 %274 to i8
  store i8 %275, i8* %273, align 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %276, align 1
  store %struct.Memory* %loadMem_406be3, %struct.Memory** %MEMORY
  %loadMem_406be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 11
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RDI.i359 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RAX.i358
  %287 = load i64, i64* %PC.i357
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC.i357
  store i64 %286, i64* %RDI.i359, align 8
  store %struct.Memory* %loadMem_406be7, %struct.Memory** %MEMORY
  %loadMem_406bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 17
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %R8D.i355 = bitcast %union.anon* %294 to i32*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 9
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RSI.i356 = bitcast %union.anon* %297 to i64*
  %298 = load i32, i32* %R8D.i355
  %299 = zext i32 %298 to i64
  %300 = load i64, i64* %PC.i354
  %301 = add i64 %300, 3
  store i64 %301, i64* %PC.i354
  %302 = and i64 %299, 4294967295
  store i64 %302, i64* %RSI.i356, align 8
  store %struct.Memory* %loadMem_406bea, %struct.Memory** %MEMORY
  %loadMem1_406bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %PC.i353
  %307 = add i64 %306, 259187
  %308 = load i64, i64* %PC.i353
  %309 = add i64 %308, 5
  %310 = load i64, i64* %PC.i353
  %311 = add i64 %310, 5
  store i64 %311, i64* %PC.i353
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = add i64 %313, -8
  %315 = inttoptr i64 %314 to i64*
  store i64 %309, i64* %315
  store i64 %314, i64* %312, align 8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %307, i64* %316, align 8
  store %struct.Memory* %loadMem1_406bed, %struct.Memory** %MEMORY
  %loadMem2_406bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406bed = load i64, i64* %3
  %call2_406bed = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_406bed, %struct.Memory* %loadMem2_406bed)
  store %struct.Memory* %call2_406bed, %struct.Memory** %MEMORY
  %loadMem_406bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 15
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %RBP.i352
  %327 = sub i64 %326, 56
  %328 = load i64, i64* %RAX.i351
  %329 = load i64, i64* %PC.i350
  %330 = add i64 %329, 4
  store i64 %330, i64* %PC.i350
  %331 = inttoptr i64 %327 to i64*
  store i64 %328, i64* %331
  store %struct.Memory* %loadMem_406bf2, %struct.Memory** %MEMORY
  %loadMem1_406bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %PC.i349
  %336 = add i64 %335, 276298
  %337 = load i64, i64* %PC.i349
  %338 = add i64 %337, 5
  %339 = load i64, i64* %PC.i349
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC.i349
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %342, -8
  %344 = inttoptr i64 %343 to i64*
  store i64 %338, i64* %344
  store i64 %343, i64* %341, align 8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %336, i64* %345, align 8
  store %struct.Memory* %loadMem1_406bf6, %struct.Memory** %MEMORY
  %loadMem2_406bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406bf6 = load i64, i64* %3
  %call2_406bf6 = call %struct.Memory* @sub_44a340.InitIntStack(%struct.State* %0, i64 %loadPC_406bf6, %struct.Memory* %loadMem2_406bf6)
  store %struct.Memory* %call2_406bf6, %struct.Memory** %MEMORY
  %loadMem_406bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 33
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 15
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %RBP.i348
  %356 = sub i64 %355, 40
  %357 = load i64, i64* %RAX.i347
  %358 = load i64, i64* %PC.i346
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC.i346
  %360 = inttoptr i64 %356 to i64*
  store i64 %357, i64* %360
  store %struct.Memory* %loadMem_406bfb, %struct.Memory** %MEMORY
  %loadMem_406bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 11
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RDI.i344 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i345
  %371 = sub i64 %370, 40
  %372 = load i64, i64* %PC.i343
  %373 = add i64 %372, 4
  store i64 %373, i64* %PC.i343
  %374 = inttoptr i64 %371 to i64*
  %375 = load i64, i64* %374
  store i64 %375, i64* %RDI.i344, align 8
  store %struct.Memory* %loadMem_406bff, %struct.Memory** %MEMORY
  %loadMem_406c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 9
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RSI.i341 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 15
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %RBP.i342
  %386 = sub i64 %385, 28
  %387 = load i64, i64* %PC.i340
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC.i340
  %389 = inttoptr i64 %386 to i32*
  %390 = load i32, i32* %389
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RSI.i341, align 8
  store %struct.Memory* %loadMem_406c03, %struct.Memory** %MEMORY
  %loadMem1_406c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %PC.i339
  %396 = add i64 %395, 276378
  %397 = load i64, i64* %PC.i339
  %398 = add i64 %397, 5
  %399 = load i64, i64* %PC.i339
  %400 = add i64 %399, 5
  store i64 %400, i64* %PC.i339
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, -8
  %404 = inttoptr i64 %403 to i64*
  store i64 %398, i64* %404
  store i64 %403, i64* %401, align 8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %396, i64* %405, align 8
  store %struct.Memory* %loadMem1_406c06, %struct.Memory** %MEMORY
  %loadMem2_406c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406c06 = load i64, i64* %3
  %call2_406c06 = call %struct.Memory* @sub_44a3a0.PushIntStack(%struct.State* %0, i64 %loadPC_406c06, %struct.Memory* %loadMem2_406c06)
  store %struct.Memory* %call2_406c06, %struct.Memory** %MEMORY
  %loadMem_406c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i338
  %413 = sub i64 %412, 60
  %414 = load i64, i64* %PC.i337
  %415 = add i64 %414, 7
  store i64 %415, i64* %PC.i337
  %416 = inttoptr i64 %413 to i32*
  store i32 0, i32* %416
  store %struct.Memory* %loadMem_406c0b, %struct.Memory** %MEMORY
  br label %block_.L_406c12

block_.L_406c12:                                  ; preds = %block_.L_406e1e, %entry
  %loadMem_406c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 9
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RSI.i335 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RBP.i336
  %427 = sub i64 %426, 44
  %428 = load i64, i64* %PC.i334
  %429 = add i64 %428, 4
  store i64 %429, i64* %PC.i334
  store i64 %427, i64* %RSI.i335, align 8
  store %struct.Memory* %loadMem_406c12, %struct.Memory** %MEMORY
  %loadMem_406c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 33
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %432 to i64*
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 11
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %RDI.i332 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 15
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %RBP.i333
  %440 = sub i64 %439, 40
  %441 = load i64, i64* %PC.i331
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC.i331
  %443 = inttoptr i64 %440 to i64*
  %444 = load i64, i64* %443
  store i64 %444, i64* %RDI.i332, align 8
  store %struct.Memory* %loadMem_406c16, %struct.Memory** %MEMORY
  %loadMem1_406c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %447 to i64*
  %448 = load i64, i64* %PC.i330
  %449 = add i64 %448, 276486
  %450 = load i64, i64* %PC.i330
  %451 = add i64 %450, 5
  %452 = load i64, i64* %PC.i330
  %453 = add i64 %452, 5
  store i64 %453, i64* %PC.i330
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = add i64 %455, -8
  %457 = inttoptr i64 %456 to i64*
  store i64 %451, i64* %457
  store i64 %456, i64* %454, align 8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %449, i64* %458, align 8
  store %struct.Memory* %loadMem1_406c1a, %struct.Memory** %MEMORY
  %loadMem2_406c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406c1a = load i64, i64* %3
  %call2_406c1a = call %struct.Memory* @sub_44a420.PopIntStack(%struct.State* %0, i64 %loadPC_406c1a, %struct.Memory* %loadMem2_406c1a)
  store %struct.Memory* %call2_406c1a, %struct.Memory** %MEMORY
  %loadMem_406c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %EAX.i329 = bitcast %union.anon* %464 to i32*
  %465 = load i32, i32* %EAX.i329
  %466 = zext i32 %465 to i64
  %467 = load i64, i64* %PC.i328
  %468 = add i64 %467, 3
  store i64 %468, i64* %PC.i328
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %469, align 1
  %470 = and i32 %465, 255
  %471 = call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %474, i8* %475, align 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %476, align 1
  %477 = icmp eq i32 %465, 0
  %478 = zext i1 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %478, i8* %479, align 1
  %480 = lshr i32 %465, 31
  %481 = trunc i32 %480 to i8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %481, i8* %482, align 1
  %483 = lshr i32 %465, 31
  %484 = xor i32 %480, %483
  %485 = add i32 %484, %483
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %487, i8* %488, align 1
  store %struct.Memory* %loadMem_406c1f, %struct.Memory** %MEMORY
  %loadMem_406c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %PC.i327
  %493 = add i64 %492, 513
  %494 = load i64, i64* %PC.i327
  %495 = add i64 %494, 6
  %496 = load i64, i64* %PC.i327
  %497 = add i64 %496, 6
  store i64 %497, i64* %PC.i327
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %499 = load i8, i8* %498, align 1
  store i8 %499, i8* %BRANCH_TAKEN, align 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %501 = icmp ne i8 %499, 0
  %502 = select i1 %501, i64 %493, i64 %495
  store i64 %502, i64* %500, align 8
  store %struct.Memory* %loadMem_406c22, %struct.Memory** %MEMORY
  %loadBr_406c22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406c22 = icmp eq i8 %loadBr_406c22, 1
  br i1 %cmpBr_406c22, label %block_.L_406e23, label %block_406c28

block_406c28:                                     ; preds = %block_.L_406c12
  %loadMem_406c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 1
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 15
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RBP.i326
  %513 = sub i64 %512, 44
  %514 = load i64, i64* %PC.i324
  %515 = add i64 %514, 3
  store i64 %515, i64* %PC.i324
  %516 = inttoptr i64 %513 to i32*
  %517 = load i32, i32* %516
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_406c28, %struct.Memory** %MEMORY
  %loadMem_406c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %EAX.i322 = bitcast %union.anon* %524 to i32*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 15
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %527 to i64*
  %528 = load i32, i32* %EAX.i322
  %529 = zext i32 %528 to i64
  %530 = load i64, i64* %RBP.i323
  %531 = sub i64 %530, 28
  %532 = load i64, i64* %PC.i321
  %533 = add i64 %532, 3
  store i64 %533, i64* %PC.i321
  %534 = inttoptr i64 %531 to i32*
  %535 = load i32, i32* %534
  %536 = sub i32 %528, %535
  %537 = icmp ult i32 %528, %535
  %538 = zext i1 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %538, i8* %539, align 1
  %540 = and i32 %536, 255
  %541 = call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %544, i8* %545, align 1
  %546 = xor i32 %535, %528
  %547 = xor i32 %546, %536
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %550, i8* %551, align 1
  %552 = icmp eq i32 %536, 0
  %553 = zext i1 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %553, i8* %554, align 1
  %555 = lshr i32 %536, 31
  %556 = trunc i32 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %556, i8* %557, align 1
  %558 = lshr i32 %528, 31
  %559 = lshr i32 %535, 31
  %560 = xor i32 %559, %558
  %561 = xor i32 %555, %558
  %562 = add i32 %561, %560
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %564, i8* %565, align 1
  store %struct.Memory* %loadMem_406c2b, %struct.Memory** %MEMORY
  %loadMem_406c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %PC.i320
  %570 = add i64 %569, 116
  %571 = load i64, i64* %PC.i320
  %572 = add i64 %571, 6
  %573 = load i64, i64* %PC.i320
  %574 = add i64 %573, 6
  store i64 %574, i64* %PC.i320
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %576 = load i8, i8* %575, align 1
  %577 = icmp ne i8 %576, 0
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %579 = load i8, i8* %578, align 1
  %580 = icmp ne i8 %579, 0
  %581 = xor i1 %577, %580
  %582 = xor i1 %581, true
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %BRANCH_TAKEN, align 1
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %585 = select i1 %581, i64 %572, i64 %570
  store i64 %585, i64* %584, align 8
  store %struct.Memory* %loadMem_406c2e, %struct.Memory** %MEMORY
  %loadBr_406c2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406c2e = icmp eq i8 %loadBr_406c2e, 1
  br i1 %cmpBr_406c2e, label %block_.L_406ca2, label %block_406c34

block_406c34:                                     ; preds = %block_406c28
  %loadMem_406c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 15
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RBP.i319
  %593 = sub i64 %592, 60
  %594 = load i64, i64* %PC.i318
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC.i318
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %598, align 1
  %599 = and i32 %597, 255
  %600 = call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %603, i8* %604, align 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %605, align 1
  %606 = icmp eq i32 %597, 0
  %607 = zext i1 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %607, i8* %608, align 1
  %609 = lshr i32 %597, 31
  %610 = trunc i32 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %610, i8* %611, align 1
  %612 = lshr i32 %597, 31
  %613 = xor i32 %609, %612
  %614 = add i32 %613, %612
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %616, i8* %617, align 1
  store %struct.Memory* %loadMem_406c34, %struct.Memory** %MEMORY
  %loadMem_406c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 33
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %PC.i317
  %622 = add i64 %621, 28
  %623 = load i64, i64* %PC.i317
  %624 = add i64 %623, 6
  %625 = load i64, i64* %PC.i317
  %626 = add i64 %625, 6
  store i64 %626, i64* %PC.i317
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %628 = load i8, i8* %627, align 1
  store i8 %628, i8* %BRANCH_TAKEN, align 1
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %630 = icmp ne i8 %628, 0
  %631 = select i1 %630, i64 %622, i64 %624
  store i64 %631, i64* %629, align 8
  store %struct.Memory* %loadMem_406c38, %struct.Memory** %MEMORY
  %loadBr_406c38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406c38 = icmp eq i8 %loadBr_406c38, 1
  br i1 %cmpBr_406c38, label %block_.L_406c54, label %block_406c3e

block_406c3e:                                     ; preds = %block_406c34
  %loadMem_406c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 11
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RDI.i316 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %PC.i315
  %639 = add i64 %638, 10
  store i64 %639, i64* %PC.i315
  store i64 ptrtoint (%G__0x4560ea_type* @G__0x4560ea to i64), i64* %RDI.i316, align 8
  store %struct.Memory* %loadMem_406c3e, %struct.Memory** %MEMORY
  %loadMem_406c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 33
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 9
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RSI.i313 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 15
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %RBP.i314
  %650 = sub i64 %649, 8
  %651 = load i64, i64* %PC.i312
  %652 = add i64 %651, 4
  store i64 %652, i64* %PC.i312
  %653 = inttoptr i64 %650 to i64*
  %654 = load i64, i64* %653
  store i64 %654, i64* %RSI.i313, align 8
  store %struct.Memory* %loadMem_406c48, %struct.Memory** %MEMORY
  %loadMem1_406c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %657 to i64*
  %658 = load i64, i64* %PC.i311
  %659 = add i64 %658, -22412
  %660 = load i64, i64* %PC.i311
  %661 = add i64 %660, 5
  %662 = load i64, i64* %PC.i311
  %663 = add i64 %662, 5
  store i64 %663, i64* %PC.i311
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = add i64 %665, -8
  %667 = inttoptr i64 %666 to i64*
  store i64 %661, i64* %667
  store i64 %666, i64* %664, align 8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %659, i64* %668, align 8
  store %struct.Memory* %loadMem1_406c4c, %struct.Memory** %MEMORY
  %loadMem2_406c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406c4c = load i64, i64* %3
  %669 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %loadMem2_406c4c)
  store %struct.Memory* %669, %struct.Memory** %MEMORY
  %loadMem_406c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %675 to i32*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 15
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %RBP.i307
  %680 = sub i64 %679, 64
  %681 = load i32, i32* %EAX.i306
  %682 = zext i32 %681 to i64
  %683 = load i64, i64* %PC.i305
  %684 = add i64 %683, 3
  store i64 %684, i64* %PC.i305
  %685 = inttoptr i64 %680 to i32*
  store i32 %681, i32* %685
  store %struct.Memory* %loadMem_406c51, %struct.Memory** %MEMORY
  br label %block_.L_406c54

block_.L_406c54:                                  ; preds = %block_406c3e, %block_406c34
  %loadMem_406c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 9
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RSI.i304 = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %PC.i303
  %693 = add i64 %692, 10
  store i64 %693, i64* %PC.i303
  store i64 ptrtoint (%G__0x455e8a_type* @G__0x455e8a to i64), i64* %RSI.i304, align 8
  store %struct.Memory* %loadMem_406c54, %struct.Memory** %MEMORY
  %loadMem_406c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 11
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RDI.i301 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 15
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RBP.i302
  %704 = sub i64 %703, 8
  %705 = load i64, i64* %PC.i300
  %706 = add i64 %705, 4
  store i64 %706, i64* %PC.i300
  %707 = inttoptr i64 %704 to i64*
  %708 = load i64, i64* %707
  store i64 %708, i64* %RDI.i301, align 8
  store %struct.Memory* %loadMem_406c5e, %struct.Memory** %MEMORY
  %loadMem_406c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i299
  %719 = sub i64 %718, 16
  %720 = load i64, i64* %PC.i297
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i297
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722
  store i64 %723, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_406c62, %struct.Memory** %MEMORY
  %loadMem_406c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 1
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RAX.i296
  %731 = add i64 %730, 40
  %732 = load i64, i64* %PC.i295
  %733 = add i64 %732, 4
  store i64 %733, i64* %PC.i295
  %734 = inttoptr i64 %731 to i64*
  %735 = load i64, i64* %734
  store i64 %735, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_406c66, %struct.Memory** %MEMORY
  %loadMem_406c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 5
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RBP.i294
  %746 = sub i64 %745, 44
  %747 = load i64, i64* %PC.i292
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC.i292
  %749 = inttoptr i64 %746 to i32*
  %750 = load i32, i32* %749
  %751 = sext i32 %750 to i64
  store i64 %751, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_406c6a, %struct.Memory** %MEMORY
  %loadMem_406c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 5
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %RCX.i291
  %759 = load i64, i64* %PC.i290
  %760 = add i64 %759, 7
  store i64 %760, i64* %PC.i290
  %761 = sext i64 %758 to i128
  %762 = and i128 %761, -18446744073709551616
  %763 = zext i64 %758 to i128
  %764 = or i128 %762, %763
  %765 = mul i128 360, %764
  %766 = trunc i128 %765 to i64
  store i64 %766, i64* %RCX.i291, align 8
  %767 = sext i64 %766 to i128
  %768 = icmp ne i128 %767, %765
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %769, i8* %770, align 1
  %771 = trunc i128 %765 to i32
  %772 = and i32 %771, 255
  %773 = call i32 @llvm.ctpop.i32(i32 %772)
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = xor i8 %775, 1
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %776, i8* %777, align 1
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %778, align 1
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %779, align 1
  %780 = lshr i64 %766, 63
  %781 = trunc i64 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %781, i8* %782, align 1
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %769, i8* %783, align 1
  store %struct.Memory* %loadMem_406c6e, %struct.Memory** %MEMORY
  %loadMem_406c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 33
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 1
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 5
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RAX.i288
  %794 = load i64, i64* %RCX.i289
  %795 = load i64, i64* %PC.i287
  %796 = add i64 %795, 3
  store i64 %796, i64* %PC.i287
  %797 = add i64 %794, %793
  store i64 %797, i64* %RAX.i288, align 8
  %798 = icmp ult i64 %797, %793
  %799 = icmp ult i64 %797, %794
  %800 = or i1 %798, %799
  %801 = zext i1 %800 to i8
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %801, i8* %802, align 1
  %803 = trunc i64 %797 to i32
  %804 = and i32 %803, 255
  %805 = call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %808, i8* %809, align 1
  %810 = xor i64 %794, %793
  %811 = xor i64 %810, %797
  %812 = lshr i64 %811, 4
  %813 = trunc i64 %812 to i8
  %814 = and i8 %813, 1
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %814, i8* %815, align 1
  %816 = icmp eq i64 %797, 0
  %817 = zext i1 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %817, i8* %818, align 1
  %819 = lshr i64 %797, 63
  %820 = trunc i64 %819 to i8
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %820, i8* %821, align 1
  %822 = lshr i64 %793, 63
  %823 = lshr i64 %794, 63
  %824 = xor i64 %819, %822
  %825 = xor i64 %819, %823
  %826 = add i64 %824, %825
  %827 = icmp eq i64 %826, 2
  %828 = zext i1 %827 to i8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %828, i8* %829, align 1
  store %struct.Memory* %loadMem_406c75, %struct.Memory** %MEMORY
  %loadMem_406c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 1
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %RAX.i286
  %837 = load i64, i64* %PC.i285
  %838 = add i64 %837, 4
  store i64 %838, i64* %PC.i285
  %839 = add i64 4, %836
  store i64 %839, i64* %RAX.i286, align 8
  %840 = icmp ult i64 %839, %836
  %841 = icmp ult i64 %839, 4
  %842 = or i1 %840, %841
  %843 = zext i1 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %843, i8* %844, align 1
  %845 = trunc i64 %839 to i32
  %846 = and i32 %845, 255
  %847 = call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %850, i8* %851, align 1
  %852 = xor i64 4, %836
  %853 = xor i64 %852, %839
  %854 = lshr i64 %853, 4
  %855 = trunc i64 %854 to i8
  %856 = and i8 %855, 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %856, i8* %857, align 1
  %858 = icmp eq i64 %839, 0
  %859 = zext i1 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %859, i8* %860, align 1
  %861 = lshr i64 %839, 63
  %862 = trunc i64 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %862, i8* %863, align 1
  %864 = lshr i64 %836, 63
  %865 = xor i64 %861, %864
  %866 = add i64 %865, %861
  %867 = icmp eq i64 %866, 2
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %868, i8* %869, align 1
  store %struct.Memory* %loadMem_406c78, %struct.Memory** %MEMORY
  %loadMem_406c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 5
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i284
  %880 = sub i64 %879, 56
  %881 = load i64, i64* %PC.i282
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC.i282
  %883 = inttoptr i64 %880 to i64*
  %884 = load i64, i64* %883
  store i64 %884, i64* %RCX.i283, align 8
  store %struct.Memory* %loadMem_406c7c, %struct.Memory** %MEMORY
  %loadMem_406c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 7
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RBP.i281
  %895 = sub i64 %894, 44
  %896 = load i64, i64* %PC.i279
  %897 = add i64 %896, 4
  store i64 %897, i64* %PC.i279
  %898 = inttoptr i64 %895 to i32*
  %899 = load i32, i32* %898
  %900 = sext i32 %899 to i64
  store i64 %900, i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_406c80, %struct.Memory** %MEMORY
  %loadMem_406c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 5
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 7
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RDX.i277 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %910, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %911 to %"class.std::bitset"*
  %912 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %913 = load i64, i64* %RCX.i276
  %914 = load i64, i64* %RDX.i277
  %915 = mul i64 %914, 4
  %916 = add i64 %915, %913
  %917 = load i64, i64* %PC.i275
  %918 = add i64 %917, 5
  store i64 %918, i64* %PC.i275
  %919 = inttoptr i64 %916 to float*
  %920 = load float, float* %919
  %921 = fpext float %920 to double
  %922 = bitcast i8* %912 to double*
  store double %921, double* %922, align 1
  store %struct.Memory* %loadMem_406c84, %struct.Memory** %MEMORY
  %loadMem_406c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 1
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 7
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RDX.i274 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RAX.i273
  %933 = load i64, i64* %PC.i272
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC.i272
  store i64 %932, i64* %RDX.i274, align 8
  store %struct.Memory* %loadMem_406c89, %struct.Memory** %MEMORY
  %loadMem_406c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %941 = bitcast %union.anon* %940 to %struct.anon.2*
  %AL.i271 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %941, i32 0, i32 0
  %942 = load i64, i64* %PC.i270
  %943 = add i64 %942, 2
  store i64 %943, i64* %PC.i270
  store i8 1, i8* %AL.i271, align 1
  store %struct.Memory* %loadMem_406c8c, %struct.Memory** %MEMORY
  %loadMem1_406c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %PC.i269
  %948 = add i64 %947, -22302
  %949 = load i64, i64* %PC.i269
  %950 = add i64 %949, 5
  %951 = load i64, i64* %PC.i269
  %952 = add i64 %951, 5
  store i64 %952, i64* %PC.i269
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %954 = load i64, i64* %953, align 8
  %955 = add i64 %954, -8
  %956 = inttoptr i64 %955 to i64*
  store i64 %950, i64* %956
  store i64 %955, i64* %953, align 8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %948, i64* %957, align 8
  store %struct.Memory* %loadMem1_406c8e, %struct.Memory** %MEMORY
  %loadMem2_406c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406c8e = load i64, i64* %3
  %958 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_406c8e)
  store %struct.Memory* %958, %struct.Memory** %MEMORY
  %loadMem_406c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 15
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %964 to i64*
  %965 = load i64, i64* %RBP.i265
  %966 = sub i64 %965, 60
  %967 = load i64, i64* %PC.i264
  %968 = add i64 %967, 7
  store i64 %968, i64* %PC.i264
  %969 = inttoptr i64 %966 to i32*
  store i32 1, i32* %969
  store %struct.Memory* %loadMem_406c93, %struct.Memory** %MEMORY
  %loadMem_406c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 1
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %EAX.i262 = bitcast %union.anon* %975 to i32*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 15
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %978 to i64*
  %979 = load i64, i64* %RBP.i263
  %980 = sub i64 %979, 68
  %981 = load i32, i32* %EAX.i262
  %982 = zext i32 %981 to i64
  %983 = load i64, i64* %PC.i261
  %984 = add i64 %983, 3
  store i64 %984, i64* %PC.i261
  %985 = inttoptr i64 %980 to i32*
  store i32 %981, i32* %985
  store %struct.Memory* %loadMem_406c9a, %struct.Memory** %MEMORY
  %loadMem_406c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %PC.i260
  %990 = add i64 %989, 385
  %991 = load i64, i64* %PC.i260
  %992 = add i64 %991, 5
  store i64 %992, i64* %PC.i260
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %990, i64* %993, align 8
  store %struct.Memory* %loadMem_406c9d, %struct.Memory** %MEMORY
  br label %block_.L_406e1e

block_.L_406ca2:                                  ; preds = %block_406c28
  %loadMem_406ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 15
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RBP.i259
  %1004 = sub i64 %1003, 44
  %1005 = load i64, i64* %PC.i257
  %1006 = add i64 %1005, 3
  store i64 %1006, i64* %PC.i257
  %1007 = inttoptr i64 %1004 to i32*
  %1008 = load i32, i32* %1007
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_406ca2, %struct.Memory** %MEMORY
  %loadMem_406ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 5
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 15
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %RBP.i256
  %1020 = sub i64 %1019, 28
  %1021 = load i64, i64* %PC.i254
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %PC.i254
  %1023 = inttoptr i64 %1020 to i32*
  %1024 = load i32, i32* %1023
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RCX.i255, align 8
  store %struct.Memory* %loadMem_406ca5, %struct.Memory** %MEMORY
  %loadMem_406ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 5
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RCX.i253
  %1033 = load i64, i64* %PC.i252
  %1034 = add i64 %1033, 2
  store i64 %1034, i64* %PC.i252
  %1035 = trunc i64 %1032 to i32
  %1036 = shl i32 %1035, 1
  %1037 = icmp slt i32 %1035, 0
  %1038 = icmp slt i32 %1036, 0
  %1039 = xor i1 %1037, %1038
  %1040 = zext i32 %1036 to i64
  store i64 %1040, i64* %RCX.i253, align 8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1042 = zext i1 %1037 to i8
  store i8 %1042, i8* %1041, align 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1044 = and i32 %1036, 254
  %1045 = call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %1043, align 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1049, align 1
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1051 = icmp eq i32 %1036, 0
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %1050, align 1
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1054 = lshr i32 %1036, 31
  %1055 = trunc i32 %1054 to i8
  store i8 %1055, i8* %1053, align 1
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1057 = zext i1 %1039 to i8
  store i8 %1057, i8* %1056, align 1
  store %struct.Memory* %loadMem_406ca8, %struct.Memory** %MEMORY
  %loadMem_406cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1060 to i64*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 1
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %EAX.i250 = bitcast %union.anon* %1063 to i32*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 5
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %ECX.i251 = bitcast %union.anon* %1066 to i32*
  %1067 = load i32, i32* %EAX.i250
  %1068 = zext i32 %1067 to i64
  %1069 = load i32, i32* %ECX.i251
  %1070 = zext i32 %1069 to i64
  %1071 = load i64, i64* %PC.i249
  %1072 = add i64 %1071, 2
  store i64 %1072, i64* %PC.i249
  %1073 = sub i32 %1067, %1069
  %1074 = icmp ult i32 %1067, %1069
  %1075 = zext i1 %1074 to i8
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1075, i8* %1076, align 1
  %1077 = and i32 %1073, 255
  %1078 = call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1081, i8* %1082, align 1
  %1083 = xor i64 %1070, %1068
  %1084 = trunc i64 %1083 to i32
  %1085 = xor i32 %1084, %1073
  %1086 = lshr i32 %1085, 4
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1088, i8* %1089, align 1
  %1090 = icmp eq i32 %1073, 0
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1091, i8* %1092, align 1
  %1093 = lshr i32 %1073, 31
  %1094 = trunc i32 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1094, i8* %1095, align 1
  %1096 = lshr i32 %1067, 31
  %1097 = lshr i32 %1069, 31
  %1098 = xor i32 %1097, %1096
  %1099 = xor i32 %1093, %1096
  %1100 = add i32 %1099, %1098
  %1101 = icmp eq i32 %1100, 2
  %1102 = zext i1 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1102, i8* %1103, align 1
  store %struct.Memory* %loadMem_406cab, %struct.Memory** %MEMORY
  %loadMem_406cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %PC.i248
  %1108 = add i64 %1107, 269
  %1109 = load i64, i64* %PC.i248
  %1110 = add i64 %1109, 6
  %1111 = load i64, i64* %PC.i248
  %1112 = add i64 %1111, 6
  store i64 %1112, i64* %PC.i248
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1114 = load i8, i8* %1113, align 1
  %1115 = icmp ne i8 %1114, 0
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1117 = load i8, i8* %1116, align 1
  %1118 = icmp ne i8 %1117, 0
  %1119 = xor i1 %1115, %1118
  %1120 = xor i1 %1119, true
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %BRANCH_TAKEN, align 1
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1123 = select i1 %1119, i64 %1110, i64 %1108
  store i64 %1123, i64* %1122, align 8
  store %struct.Memory* %loadMem_406cad, %struct.Memory** %MEMORY
  %loadBr_406cad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406cad = icmp eq i8 %loadBr_406cad, 1
  br i1 %cmpBr_406cad, label %block_.L_406dba, label %block_406cb3

block_406cb3:                                     ; preds = %block_.L_406ca2
  %loadMem_406cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 15
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %RBP.i247
  %1131 = sub i64 %1130, 60
  %1132 = load i64, i64* %PC.i246
  %1133 = add i64 %1132, 4
  store i64 %1133, i64* %PC.i246
  %1134 = inttoptr i64 %1131 to i32*
  %1135 = load i32, i32* %1134
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1136, align 1
  %1137 = and i32 %1135, 255
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1141, i8* %1142, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1143, align 1
  %1144 = icmp eq i32 %1135, 0
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1145, i8* %1146, align 1
  %1147 = lshr i32 %1135, 31
  %1148 = trunc i32 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1148, i8* %1149, align 1
  %1150 = lshr i32 %1135, 31
  %1151 = xor i32 %1147, %1150
  %1152 = add i32 %1151, %1150
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1154, i8* %1155, align 1
  store %struct.Memory* %loadMem_406cb3, %struct.Memory** %MEMORY
  %loadMem_406cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i245
  %1160 = add i64 %1159, 28
  %1161 = load i64, i64* %PC.i245
  %1162 = add i64 %1161, 6
  %1163 = load i64, i64* %PC.i245
  %1164 = add i64 %1163, 6
  store i64 %1164, i64* %PC.i245
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1166 = load i8, i8* %1165, align 1
  store i8 %1166, i8* %BRANCH_TAKEN, align 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1168 = icmp ne i8 %1166, 0
  %1169 = select i1 %1168, i64 %1160, i64 %1162
  store i64 %1169, i64* %1167, align 8
  store %struct.Memory* %loadMem_406cb7, %struct.Memory** %MEMORY
  %loadBr_406cb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406cb7 = icmp eq i8 %loadBr_406cb7, 1
  br i1 %cmpBr_406cb7, label %block_.L_406cd3, label %block_406cbd

block_406cbd:                                     ; preds = %block_406cb3
  %loadMem_406cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 11
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RDI.i244 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %PC.i243
  %1177 = add i64 %1176, 10
  store i64 %1177, i64* %PC.i243
  store i64 ptrtoint (%G__0x455e92_type* @G__0x455e92 to i64), i64* %RDI.i244, align 8
  store %struct.Memory* %loadMem_406cbd, %struct.Memory** %MEMORY
  %loadMem_406cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 9
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %RBP.i242
  %1188 = sub i64 %1187, 8
  %1189 = load i64, i64* %PC.i240
  %1190 = add i64 %1189, 4
  store i64 %1190, i64* %PC.i240
  %1191 = inttoptr i64 %1188 to i64*
  %1192 = load i64, i64* %1191
  store i64 %1192, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_406cc7, %struct.Memory** %MEMORY
  %loadMem1_406ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %PC.i239
  %1197 = add i64 %1196, -22539
  %1198 = load i64, i64* %PC.i239
  %1199 = add i64 %1198, 5
  %1200 = load i64, i64* %PC.i239
  %1201 = add i64 %1200, 5
  store i64 %1201, i64* %PC.i239
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1203 = load i64, i64* %1202, align 8
  %1204 = add i64 %1203, -8
  %1205 = inttoptr i64 %1204 to i64*
  store i64 %1199, i64* %1205
  store i64 %1204, i64* %1202, align 8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1197, i64* %1206, align 8
  store %struct.Memory* %loadMem1_406ccb, %struct.Memory** %MEMORY
  %loadMem2_406ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406ccb = load i64, i64* %3
  %1207 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %loadMem2_406ccb)
  store %struct.Memory* %1207, %struct.Memory** %MEMORY
  %loadMem_406cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 1
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %1213 to i32*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RBP.i235
  %1218 = sub i64 %1217, 72
  %1219 = load i32, i32* %EAX.i234
  %1220 = zext i32 %1219 to i64
  %1221 = load i64, i64* %PC.i233
  %1222 = add i64 %1221, 3
  store i64 %1222, i64* %PC.i233
  %1223 = inttoptr i64 %1218 to i32*
  store i32 %1219, i32* %1223
  store %struct.Memory* %loadMem_406cd0, %struct.Memory** %MEMORY
  br label %block_.L_406cd3

block_.L_406cd3:                                  ; preds = %block_406cbd, %block_406cb3
  %loadMem_406cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 11
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RDI.i232 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %PC.i231
  %1231 = add i64 %1230, 10
  store i64 %1231, i64* %PC.i231
  store i64 ptrtoint (%G__0x455e95_type* @G__0x455e95 to i64), i64* %RDI.i232, align 8
  store %struct.Memory* %loadMem_406cd3, %struct.Memory** %MEMORY
  %loadMem_406cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 9
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RSI.i229 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RBP.i230
  %1242 = sub i64 %1241, 8
  %1243 = load i64, i64* %PC.i228
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC.i228
  %1245 = inttoptr i64 %1242 to i64*
  %1246 = load i64, i64* %1245
  store i64 %1246, i64* %RSI.i229, align 8
  store %struct.Memory* %loadMem_406cdd, %struct.Memory** %MEMORY
  %loadMem1_406ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1249 to i64*
  %1250 = load i64, i64* %PC.i227
  %1251 = add i64 %1250, -22561
  %1252 = load i64, i64* %PC.i227
  %1253 = add i64 %1252, 5
  %1254 = load i64, i64* %PC.i227
  %1255 = add i64 %1254, 5
  store i64 %1255, i64* %PC.i227
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1257 = load i64, i64* %1256, align 8
  %1258 = add i64 %1257, -8
  %1259 = inttoptr i64 %1258 to i64*
  store i64 %1253, i64* %1259
  store i64 %1258, i64* %1256, align 8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1251, i64* %1260, align 8
  store %struct.Memory* %loadMem1_406ce1, %struct.Memory** %MEMORY
  %loadMem2_406ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406ce1 = load i64, i64* %3
  %1261 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %loadMem2_406ce1)
  store %struct.Memory* %1261, %struct.Memory** %MEMORY
  %loadMem_406ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 11
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 15
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1270 to i64*
  %1271 = load i64, i64* %RBP.i225
  %1272 = sub i64 %1271, 40
  %1273 = load i64, i64* %PC.i223
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %PC.i223
  %1275 = inttoptr i64 %1272 to i64*
  %1276 = load i64, i64* %1275
  store i64 %1276, i64* %RDI.i224, align 8
  store %struct.Memory* %loadMem_406ce6, %struct.Memory** %MEMORY
  %loadMem_406cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 5
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 15
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RBP.i222
  %1287 = sub i64 %1286, 44
  %1288 = load i64, i64* %PC.i220
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %PC.i220
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_406cea, %struct.Memory** %MEMORY
  %loadMem_406ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 33
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 5
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 15
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %RCX.i218
  %1303 = load i64, i64* %RBP.i219
  %1304 = sub i64 %1303, 28
  %1305 = load i64, i64* %PC.i217
  %1306 = add i64 %1305, 3
  store i64 %1306, i64* %PC.i217
  %1307 = trunc i64 %1302 to i32
  %1308 = inttoptr i64 %1304 to i32*
  %1309 = load i32, i32* %1308
  %1310 = add i32 %1309, %1307
  %1311 = zext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i218, align 8
  %1312 = icmp ult i32 %1310, %1307
  %1313 = icmp ult i32 %1310, %1309
  %1314 = or i1 %1312, %1313
  %1315 = zext i1 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1315, i8* %1316, align 1
  %1317 = and i32 %1310, 255
  %1318 = call i32 @llvm.ctpop.i32(i32 %1317)
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1321, i8* %1322, align 1
  %1323 = xor i32 %1309, %1307
  %1324 = xor i32 %1323, %1310
  %1325 = lshr i32 %1324, 4
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1327, i8* %1328, align 1
  %1329 = icmp eq i32 %1310, 0
  %1330 = zext i1 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1330, i8* %1331, align 1
  %1332 = lshr i32 %1310, 31
  %1333 = trunc i32 %1332 to i8
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1333, i8* %1334, align 1
  %1335 = lshr i32 %1307, 31
  %1336 = lshr i32 %1309, 31
  %1337 = xor i32 %1332, %1335
  %1338 = xor i32 %1332, %1336
  %1339 = add i32 %1337, %1338
  %1340 = icmp eq i32 %1339, 2
  %1341 = zext i1 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1341, i8* %1342, align 1
  store %struct.Memory* %loadMem_406ced, %struct.Memory** %MEMORY
  %loadMem_406cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 5
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %ECX.i215 = bitcast %union.anon* %1348 to i32*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 9
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RSI.i216 = bitcast %union.anon* %1351 to i64*
  %1352 = load i32, i32* %ECX.i215
  %1353 = zext i32 %1352 to i64
  %1354 = load i64, i64* %PC.i214
  %1355 = add i64 %1354, 2
  store i64 %1355, i64* %PC.i214
  %1356 = and i64 %1353, 4294967295
  store i64 %1356, i64* %RSI.i216, align 8
  store %struct.Memory* %loadMem_406cf0, %struct.Memory** %MEMORY
  %loadMem_406cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %EAX.i212 = bitcast %union.anon* %1362 to i32*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 15
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %RBP.i213
  %1367 = sub i64 %1366, 76
  %1368 = load i32, i32* %EAX.i212
  %1369 = zext i32 %1368 to i64
  %1370 = load i64, i64* %PC.i211
  %1371 = add i64 %1370, 3
  store i64 %1371, i64* %PC.i211
  %1372 = inttoptr i64 %1367 to i32*
  store i32 %1368, i32* %1372
  store %struct.Memory* %loadMem_406cf2, %struct.Memory** %MEMORY
  %loadMem1_406cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1375 to i64*
  %1376 = load i64, i64* %PC.i210
  %1377 = add i64 %1376, 276139
  %1378 = load i64, i64* %PC.i210
  %1379 = add i64 %1378, 5
  %1380 = load i64, i64* %PC.i210
  %1381 = add i64 %1380, 5
  store i64 %1381, i64* %PC.i210
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1383 = load i64, i64* %1382, align 8
  %1384 = add i64 %1383, -8
  %1385 = inttoptr i64 %1384 to i64*
  store i64 %1379, i64* %1385
  store i64 %1384, i64* %1382, align 8
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1377, i64* %1386, align 8
  store %struct.Memory* %loadMem1_406cf5, %struct.Memory** %MEMORY
  %loadMem2_406cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406cf5 = load i64, i64* %3
  %call2_406cf5 = call %struct.Memory* @sub_44a3a0.PushIntStack(%struct.State* %0, i64 %loadPC_406cf5, %struct.Memory* %loadMem2_406cf5)
  store %struct.Memory* %call2_406cf5, %struct.Memory** %MEMORY
  %loadMem_406cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1389 to i64*
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 11
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %RDI.i208 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 15
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1395 to i64*
  %1396 = load i64, i64* %RBP.i209
  %1397 = sub i64 %1396, 40
  %1398 = load i64, i64* %PC.i207
  %1399 = add i64 %1398, 4
  store i64 %1399, i64* %PC.i207
  %1400 = inttoptr i64 %1397 to i64*
  %1401 = load i64, i64* %1400
  store i64 %1401, i64* %RDI.i208, align 8
  store %struct.Memory* %loadMem_406cfa, %struct.Memory** %MEMORY
  %loadMem_406cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 7
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 15
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %RBP.i206
  %1412 = sub i64 %1411, 24
  %1413 = load i64, i64* %PC.i204
  %1414 = add i64 %1413, 4
  store i64 %1414, i64* %PC.i204
  %1415 = inttoptr i64 %1412 to i64*
  %1416 = load i64, i64* %1415
  store i64 %1416, i64* %RDX.i205, align 8
  store %struct.Memory* %loadMem_406cfe, %struct.Memory** %MEMORY
  %loadMem_406d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 1
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 15
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1425 to i64*
  %1426 = load i64, i64* %RBP.i203
  %1427 = sub i64 %1426, 44
  %1428 = load i64, i64* %PC.i201
  %1429 = add i64 %1428, 3
  store i64 %1429, i64* %PC.i201
  %1430 = inttoptr i64 %1427 to i32*
  %1431 = load i32, i32* %1430
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_406d02, %struct.Memory** %MEMORY
  %loadMem_406d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %RAX.i199
  %1443 = load i64, i64* %RBP.i200
  %1444 = sub i64 %1443, 28
  %1445 = load i64, i64* %PC.i198
  %1446 = add i64 %1445, 3
  store i64 %1446, i64* %PC.i198
  %1447 = trunc i64 %1442 to i32
  %1448 = inttoptr i64 %1444 to i32*
  %1449 = load i32, i32* %1448
  %1450 = sub i32 %1447, %1449
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RAX.i199, align 8
  %1452 = icmp ult i32 %1447, %1449
  %1453 = zext i1 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1453, i8* %1454, align 1
  %1455 = and i32 %1450, 255
  %1456 = call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1459, i8* %1460, align 1
  %1461 = xor i32 %1449, %1447
  %1462 = xor i32 %1461, %1450
  %1463 = lshr i32 %1462, 4
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1465, i8* %1466, align 1
  %1467 = icmp eq i32 %1450, 0
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1468, i8* %1469, align 1
  %1470 = lshr i32 %1450, 31
  %1471 = trunc i32 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1471, i8* %1472, align 1
  %1473 = lshr i32 %1447, 31
  %1474 = lshr i32 %1449, 31
  %1475 = xor i32 %1474, %1473
  %1476 = xor i32 %1470, %1473
  %1477 = add i32 %1476, %1475
  %1478 = icmp eq i32 %1477, 2
  %1479 = zext i1 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1479, i8* %1480, align 1
  store %struct.Memory* %loadMem_406d05, %struct.Memory** %MEMORY
  %loadMem_406d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 1
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %1486 to i32*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 17
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %R8.i197 = bitcast %union.anon* %1489 to i64*
  %1490 = load i32, i32* %EAX.i196
  %1491 = zext i32 %1490 to i64
  %1492 = load i64, i64* %PC.i195
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %PC.i195
  %1494 = shl i64 %1491, 32
  %1495 = ashr exact i64 %1494, 32
  store i64 %1495, i64* %R8.i197, align 8
  store %struct.Memory* %loadMem_406d08, %struct.Memory** %MEMORY
  %loadMem_406d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 17
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %R8.i194 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %R8.i194
  %1503 = load i64, i64* %PC.i193
  %1504 = add i64 %1503, 4
  store i64 %1504, i64* %PC.i193
  %1505 = sext i64 %1502 to i128
  %1506 = and i128 %1505, -18446744073709551616
  %1507 = zext i64 %1502 to i128
  %1508 = or i128 %1506, %1507
  %1509 = mul i128 40, %1508
  %1510 = trunc i128 %1509 to i64
  store i64 %1510, i64* %R8.i194, align 8
  %1511 = sext i64 %1510 to i128
  %1512 = icmp ne i128 %1511, %1509
  %1513 = zext i1 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1513, i8* %1514, align 1
  %1515 = trunc i128 %1509 to i32
  %1516 = and i32 %1515, 255
  %1517 = call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1520, i8* %1521, align 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1522, align 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1523, align 1
  %1524 = lshr i64 %1510, 63
  %1525 = trunc i64 %1524 to i8
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1525, i8* %1526, align 1
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1513, i8* %1527, align 1
  store %struct.Memory* %loadMem_406d0b, %struct.Memory** %MEMORY
  %loadMem_406d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 7
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 17
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %R8.i192 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RDX.i191
  %1538 = load i64, i64* %R8.i192
  %1539 = load i64, i64* %PC.i190
  %1540 = add i64 %1539, 3
  store i64 %1540, i64* %PC.i190
  %1541 = add i64 %1538, %1537
  store i64 %1541, i64* %RDX.i191, align 8
  %1542 = icmp ult i64 %1541, %1537
  %1543 = icmp ult i64 %1541, %1538
  %1544 = or i1 %1542, %1543
  %1545 = zext i1 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1545, i8* %1546, align 1
  %1547 = trunc i64 %1541 to i32
  %1548 = and i32 %1547, 255
  %1549 = call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1552, i8* %1553, align 1
  %1554 = xor i64 %1538, %1537
  %1555 = xor i64 %1554, %1541
  %1556 = lshr i64 %1555, 4
  %1557 = trunc i64 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1558, i8* %1559, align 1
  %1560 = icmp eq i64 %1541, 0
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1561, i8* %1562, align 1
  %1563 = lshr i64 %1541, 63
  %1564 = trunc i64 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1564, i8* %1565, align 1
  %1566 = lshr i64 %1537, 63
  %1567 = lshr i64 %1538, 63
  %1568 = xor i64 %1563, %1566
  %1569 = xor i64 %1563, %1567
  %1570 = add i64 %1568, %1569
  %1571 = icmp eq i64 %1570, 2
  %1572 = zext i1 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1572, i8* %1573, align 1
  store %struct.Memory* %loadMem_406d0f, %struct.Memory** %MEMORY
  %loadMem_406d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 7
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 9
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RSI.i189 = bitcast %union.anon* %1582 to i64*
  %1583 = load i64, i64* %RDX.i188
  %1584 = add i64 %1583, 8
  %1585 = load i64, i64* %PC.i187
  %1586 = add i64 %1585, 3
  store i64 %1586, i64* %PC.i187
  %1587 = inttoptr i64 %1584 to i32*
  %1588 = load i32, i32* %1587
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RSI.i189, align 8
  store %struct.Memory* %loadMem_406d12, %struct.Memory** %MEMORY
  %loadMem1_406d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %PC.i186
  %1594 = add i64 %1593, 276107
  %1595 = load i64, i64* %PC.i186
  %1596 = add i64 %1595, 5
  %1597 = load i64, i64* %PC.i186
  %1598 = add i64 %1597, 5
  store i64 %1598, i64* %PC.i186
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1600 = load i64, i64* %1599, align 8
  %1601 = add i64 %1600, -8
  %1602 = inttoptr i64 %1601 to i64*
  store i64 %1596, i64* %1602
  store i64 %1601, i64* %1599, align 8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1594, i64* %1603, align 8
  store %struct.Memory* %loadMem1_406d15, %struct.Memory** %MEMORY
  %loadMem2_406d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406d15 = load i64, i64* %3
  %call2_406d15 = call %struct.Memory* @sub_44a3a0.PushIntStack(%struct.State* %0, i64 %loadPC_406d15, %struct.Memory* %loadMem2_406d15)
  store %struct.Memory* %call2_406d15, %struct.Memory** %MEMORY
  %loadMem_406d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 11
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RDI.i184 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 15
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RBP.i185
  %1614 = sub i64 %1613, 40
  %1615 = load i64, i64* %PC.i183
  %1616 = add i64 %1615, 4
  store i64 %1616, i64* %PC.i183
  %1617 = inttoptr i64 %1614 to i64*
  %1618 = load i64, i64* %1617
  store i64 %1618, i64* %RDI.i184, align 8
  store %struct.Memory* %loadMem_406d1a, %struct.Memory** %MEMORY
  %loadMem_406d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 7
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 15
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %1627 to i64*
  %1628 = load i64, i64* %RBP.i182
  %1629 = sub i64 %1628, 24
  %1630 = load i64, i64* %PC.i180
  %1631 = add i64 %1630, 4
  store i64 %1631, i64* %PC.i180
  %1632 = inttoptr i64 %1629 to i64*
  %1633 = load i64, i64* %1632
  store i64 %1633, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_406d1e, %struct.Memory** %MEMORY
  %loadMem_406d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 1
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 15
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %1642 to i64*
  %1643 = load i64, i64* %RBP.i179
  %1644 = sub i64 %1643, 44
  %1645 = load i64, i64* %PC.i177
  %1646 = add i64 %1645, 3
  store i64 %1646, i64* %PC.i177
  %1647 = inttoptr i64 %1644 to i32*
  %1648 = load i32, i32* %1647
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_406d22, %struct.Memory** %MEMORY
  %loadMem_406d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 1
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %RAX.i175
  %1660 = load i64, i64* %RBP.i176
  %1661 = sub i64 %1660, 28
  %1662 = load i64, i64* %PC.i174
  %1663 = add i64 %1662, 3
  store i64 %1663, i64* %PC.i174
  %1664 = trunc i64 %1659 to i32
  %1665 = inttoptr i64 %1661 to i32*
  %1666 = load i32, i32* %1665
  %1667 = sub i32 %1664, %1666
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RAX.i175, align 8
  %1669 = icmp ult i32 %1664, %1666
  %1670 = zext i1 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1670, i8* %1671, align 1
  %1672 = and i32 %1667, 255
  %1673 = call i32 @llvm.ctpop.i32(i32 %1672)
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  %1676 = xor i8 %1675, 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1676, i8* %1677, align 1
  %1678 = xor i32 %1666, %1664
  %1679 = xor i32 %1678, %1667
  %1680 = lshr i32 %1679, 4
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1682, i8* %1683, align 1
  %1684 = icmp eq i32 %1667, 0
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1685, i8* %1686, align 1
  %1687 = lshr i32 %1667, 31
  %1688 = trunc i32 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1688, i8* %1689, align 1
  %1690 = lshr i32 %1664, 31
  %1691 = lshr i32 %1666, 31
  %1692 = xor i32 %1691, %1690
  %1693 = xor i32 %1687, %1690
  %1694 = add i32 %1693, %1692
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1696, i8* %1697, align 1
  store %struct.Memory* %loadMem_406d25, %struct.Memory** %MEMORY
  %loadMem_406d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 1
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %1703 to i32*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 17
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %R8.i173 = bitcast %union.anon* %1706 to i64*
  %1707 = load i32, i32* %EAX.i172
  %1708 = zext i32 %1707 to i64
  %1709 = load i64, i64* %PC.i171
  %1710 = add i64 %1709, 3
  store i64 %1710, i64* %PC.i171
  %1711 = shl i64 %1708, 32
  %1712 = ashr exact i64 %1711, 32
  store i64 %1712, i64* %R8.i173, align 8
  store %struct.Memory* %loadMem_406d28, %struct.Memory** %MEMORY
  %loadMem_406d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 17
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %R8.i170 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %R8.i170
  %1720 = load i64, i64* %PC.i169
  %1721 = add i64 %1720, 4
  store i64 %1721, i64* %PC.i169
  %1722 = sext i64 %1719 to i128
  %1723 = and i128 %1722, -18446744073709551616
  %1724 = zext i64 %1719 to i128
  %1725 = or i128 %1723, %1724
  %1726 = mul i128 40, %1725
  %1727 = trunc i128 %1726 to i64
  store i64 %1727, i64* %R8.i170, align 8
  %1728 = sext i64 %1727 to i128
  %1729 = icmp ne i128 %1728, %1726
  %1730 = zext i1 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1730, i8* %1731, align 1
  %1732 = trunc i128 %1726 to i32
  %1733 = and i32 %1732, 255
  %1734 = call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1737, i8* %1738, align 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1739, align 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1740, align 1
  %1741 = lshr i64 %1727, 63
  %1742 = trunc i64 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1742, i8* %1743, align 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1730, i8* %1744, align 1
  store %struct.Memory* %loadMem_406d2b, %struct.Memory** %MEMORY
  %loadMem_406d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 7
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 17
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %R8.i168 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %RDX.i167
  %1755 = load i64, i64* %R8.i168
  %1756 = load i64, i64* %PC.i166
  %1757 = add i64 %1756, 3
  store i64 %1757, i64* %PC.i166
  %1758 = add i64 %1755, %1754
  store i64 %1758, i64* %RDX.i167, align 8
  %1759 = icmp ult i64 %1758, %1754
  %1760 = icmp ult i64 %1758, %1755
  %1761 = or i1 %1759, %1760
  %1762 = zext i1 %1761 to i8
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1762, i8* %1763, align 1
  %1764 = trunc i64 %1758 to i32
  %1765 = and i32 %1764, 255
  %1766 = call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1769, i8* %1770, align 1
  %1771 = xor i64 %1755, %1754
  %1772 = xor i64 %1771, %1758
  %1773 = lshr i64 %1772, 4
  %1774 = trunc i64 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1775, i8* %1776, align 1
  %1777 = icmp eq i64 %1758, 0
  %1778 = zext i1 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1778, i8* %1779, align 1
  %1780 = lshr i64 %1758, 63
  %1781 = trunc i64 %1780 to i8
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1781, i8* %1782, align 1
  %1783 = lshr i64 %1754, 63
  %1784 = lshr i64 %1755, 63
  %1785 = xor i64 %1780, %1783
  %1786 = xor i64 %1780, %1784
  %1787 = add i64 %1785, %1786
  %1788 = icmp eq i64 %1787, 2
  %1789 = zext i1 %1788 to i8
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1789, i8* %1790, align 1
  store %struct.Memory* %loadMem_406d2f, %struct.Memory** %MEMORY
  %loadMem_406d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 7
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 9
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RSI.i165 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %RDX.i164
  %1801 = add i64 %1800, 4
  %1802 = load i64, i64* %PC.i163
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i163
  %1804 = inttoptr i64 %1801 to i32*
  %1805 = load i32, i32* %1804
  %1806 = zext i32 %1805 to i64
  store i64 %1806, i64* %RSI.i165, align 8
  store %struct.Memory* %loadMem_406d32, %struct.Memory** %MEMORY
  %loadMem1_406d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1809 to i64*
  %1810 = load i64, i64* %PC.i162
  %1811 = add i64 %1810, 276075
  %1812 = load i64, i64* %PC.i162
  %1813 = add i64 %1812, 5
  %1814 = load i64, i64* %PC.i162
  %1815 = add i64 %1814, 5
  store i64 %1815, i64* %PC.i162
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1817 = load i64, i64* %1816, align 8
  %1818 = add i64 %1817, -8
  %1819 = inttoptr i64 %1818 to i64*
  store i64 %1813, i64* %1819
  store i64 %1818, i64* %1816, align 8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1811, i64* %1820, align 8
  store %struct.Memory* %loadMem1_406d35, %struct.Memory** %MEMORY
  %loadMem2_406d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406d35 = load i64, i64* %3
  %call2_406d35 = call %struct.Memory* @sub_44a3a0.PushIntStack(%struct.State* %0, i64 %loadPC_406d35, %struct.Memory* %loadMem2_406d35)
  store %struct.Memory* %call2_406d35, %struct.Memory** %MEMORY
  %loadMem_406d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 7
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RBP.i161
  %1831 = sub i64 %1830, 24
  %1832 = load i64, i64* %PC.i159
  %1833 = add i64 %1832, 4
  store i64 %1833, i64* %PC.i159
  %1834 = inttoptr i64 %1831 to i64*
  %1835 = load i64, i64* %1834
  store i64 %1835, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_406d3a, %struct.Memory** %MEMORY
  %loadMem_406d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 15
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %1844 to i64*
  %1845 = load i64, i64* %RBP.i158
  %1846 = sub i64 %1845, 44
  %1847 = load i64, i64* %PC.i156
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC.i156
  %1849 = inttoptr i64 %1846 to i32*
  %1850 = load i32, i32* %1849
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_406d3e, %struct.Memory** %MEMORY
  %loadMem_406d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RAX.i154
  %1862 = load i64, i64* %RBP.i155
  %1863 = sub i64 %1862, 28
  %1864 = load i64, i64* %PC.i153
  %1865 = add i64 %1864, 3
  store i64 %1865, i64* %PC.i153
  %1866 = trunc i64 %1861 to i32
  %1867 = inttoptr i64 %1863 to i32*
  %1868 = load i32, i32* %1867
  %1869 = sub i32 %1866, %1868
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RAX.i154, align 8
  %1871 = icmp ult i32 %1866, %1868
  %1872 = zext i1 %1871 to i8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1872, i8* %1873, align 1
  %1874 = and i32 %1869, 255
  %1875 = call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1878, i8* %1879, align 1
  %1880 = xor i32 %1868, %1866
  %1881 = xor i32 %1880, %1869
  %1882 = lshr i32 %1881, 4
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1884, i8* %1885, align 1
  %1886 = icmp eq i32 %1869, 0
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1887, i8* %1888, align 1
  %1889 = lshr i32 %1869, 31
  %1890 = trunc i32 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1890, i8* %1891, align 1
  %1892 = lshr i32 %1866, 31
  %1893 = lshr i32 %1868, 31
  %1894 = xor i32 %1893, %1892
  %1895 = xor i32 %1889, %1892
  %1896 = add i32 %1895, %1894
  %1897 = icmp eq i32 %1896, 2
  %1898 = zext i1 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1898, i8* %1899, align 1
  store %struct.Memory* %loadMem_406d41, %struct.Memory** %MEMORY
  %loadMem_406d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 1
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %EAX.i151 = bitcast %union.anon* %1905 to i32*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 11
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RDI.i152 = bitcast %union.anon* %1908 to i64*
  %1909 = load i32, i32* %EAX.i151
  %1910 = zext i32 %1909 to i64
  %1911 = load i64, i64* %PC.i150
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %PC.i150
  %1913 = shl i64 %1910, 32
  %1914 = ashr exact i64 %1913, 32
  store i64 %1914, i64* %RDI.i152, align 8
  store %struct.Memory* %loadMem_406d44, %struct.Memory** %MEMORY
  %loadMem_406d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 11
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RDI.i149 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RDI.i149
  %1922 = load i64, i64* %PC.i148
  %1923 = add i64 %1922, 4
  store i64 %1923, i64* %PC.i148
  %1924 = sext i64 %1921 to i128
  %1925 = and i128 %1924, -18446744073709551616
  %1926 = zext i64 %1921 to i128
  %1927 = or i128 %1925, %1926
  %1928 = mul i128 40, %1927
  %1929 = trunc i128 %1928 to i64
  store i64 %1929, i64* %RDI.i149, align 8
  %1930 = sext i64 %1929 to i128
  %1931 = icmp ne i128 %1930, %1928
  %1932 = zext i1 %1931 to i8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1932, i8* %1933, align 1
  %1934 = trunc i128 %1928 to i32
  %1935 = and i32 %1934, 255
  %1936 = call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1939, i8* %1940, align 1
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1941, align 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1942, align 1
  %1943 = lshr i64 %1929, 63
  %1944 = trunc i64 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1944, i8* %1945, align 1
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1932, i8* %1946, align 1
  store %struct.Memory* %loadMem_406d47, %struct.Memory** %MEMORY
  %loadMem_406d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 7
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 11
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RDI.i147 = bitcast %union.anon* %1955 to i64*
  %1956 = load i64, i64* %RDX.i146
  %1957 = load i64, i64* %RDI.i147
  %1958 = load i64, i64* %PC.i145
  %1959 = add i64 %1958, 3
  store i64 %1959, i64* %PC.i145
  %1960 = add i64 %1957, %1956
  store i64 %1960, i64* %RDX.i146, align 8
  %1961 = icmp ult i64 %1960, %1956
  %1962 = icmp ult i64 %1960, %1957
  %1963 = or i1 %1961, %1962
  %1964 = zext i1 %1963 to i8
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1964, i8* %1965, align 1
  %1966 = trunc i64 %1960 to i32
  %1967 = and i32 %1966, 255
  %1968 = call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1971, i8* %1972, align 1
  %1973 = xor i64 %1957, %1956
  %1974 = xor i64 %1973, %1960
  %1975 = lshr i64 %1974, 4
  %1976 = trunc i64 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1977, i8* %1978, align 1
  %1979 = icmp eq i64 %1960, 0
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1980, i8* %1981, align 1
  %1982 = lshr i64 %1960, 63
  %1983 = trunc i64 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1983, i8* %1984, align 1
  %1985 = lshr i64 %1956, 63
  %1986 = lshr i64 %1957, 63
  %1987 = xor i64 %1982, %1985
  %1988 = xor i64 %1982, %1986
  %1989 = add i64 %1987, %1988
  %1990 = icmp eq i64 %1989, 2
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1991, i8* %1992, align 1
  store %struct.Memory* %loadMem_406d4b, %struct.Memory** %MEMORY
  %loadMem_406d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 7
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1999, i64 0, i64 0
  %YMM0.i144 = bitcast %union.VectorReg* %2000 to %"class.std::bitset"*
  %2001 = bitcast %"class.std::bitset"* %YMM0.i144 to i8*
  %2002 = load i64, i64* %RDX.i143
  %2003 = add i64 %2002, 20
  %2004 = load i64, i64* %PC.i142
  %2005 = add i64 %2004, 5
  store i64 %2005, i64* %PC.i142
  %2006 = inttoptr i64 %2003 to float*
  %2007 = load float, float* %2006
  %2008 = bitcast i8* %2001 to float*
  store float %2007, float* %2008, align 1
  %2009 = getelementptr inbounds i8, i8* %2001, i64 4
  %2010 = bitcast i8* %2009 to float*
  store float 0.000000e+00, float* %2010, align 1
  %2011 = getelementptr inbounds i8, i8* %2001, i64 8
  %2012 = bitcast i8* %2011 to float*
  store float 0.000000e+00, float* %2012, align 1
  %2013 = getelementptr inbounds i8, i8* %2001, i64 12
  %2014 = bitcast i8* %2013 to float*
  store float 0.000000e+00, float* %2014, align 1
  store %struct.Memory* %loadMem_406d4e, %struct.Memory** %MEMORY
  %loadMem_406d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 7
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 15
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RBP.i141
  %2025 = sub i64 %2024, 56
  %2026 = load i64, i64* %PC.i139
  %2027 = add i64 %2026, 4
  store i64 %2027, i64* %PC.i139
  %2028 = inttoptr i64 %2025 to i64*
  %2029 = load i64, i64* %2028
  store i64 %2029, i64* %RDX.i140, align 8
  store %struct.Memory* %loadMem_406d53, %struct.Memory** %MEMORY
  %loadMem_406d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 11
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RDI.i137 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 15
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %2038 to i64*
  %2039 = load i64, i64* %RBP.i138
  %2040 = sub i64 %2039, 24
  %2041 = load i64, i64* %PC.i136
  %2042 = add i64 %2041, 4
  store i64 %2042, i64* %PC.i136
  %2043 = inttoptr i64 %2040 to i64*
  %2044 = load i64, i64* %2043
  store i64 %2044, i64* %RDI.i137, align 8
  store %struct.Memory* %loadMem_406d57, %struct.Memory** %MEMORY
  %loadMem_406d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 33
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 1
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 15
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %RBP.i135
  %2055 = sub i64 %2054, 44
  %2056 = load i64, i64* %PC.i133
  %2057 = add i64 %2056, 3
  store i64 %2057, i64* %PC.i133
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058
  %2060 = zext i32 %2059 to i64
  store i64 %2060, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_406d5b, %struct.Memory** %MEMORY
  %loadMem_406d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 1
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 15
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %RAX.i131
  %2071 = load i64, i64* %RBP.i132
  %2072 = sub i64 %2071, 28
  %2073 = load i64, i64* %PC.i130
  %2074 = add i64 %2073, 3
  store i64 %2074, i64* %PC.i130
  %2075 = trunc i64 %2070 to i32
  %2076 = inttoptr i64 %2072 to i32*
  %2077 = load i32, i32* %2076
  %2078 = sub i32 %2075, %2077
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RAX.i131, align 8
  %2080 = icmp ult i32 %2075, %2077
  %2081 = zext i1 %2080 to i8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2081, i8* %2082, align 1
  %2083 = and i32 %2078, 255
  %2084 = call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2087, i8* %2088, align 1
  %2089 = xor i32 %2077, %2075
  %2090 = xor i32 %2089, %2078
  %2091 = lshr i32 %2090, 4
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2093, i8* %2094, align 1
  %2095 = icmp eq i32 %2078, 0
  %2096 = zext i1 %2095 to i8
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2096, i8* %2097, align 1
  %2098 = lshr i32 %2078, 31
  %2099 = trunc i32 %2098 to i8
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2099, i8* %2100, align 1
  %2101 = lshr i32 %2075, 31
  %2102 = lshr i32 %2077, 31
  %2103 = xor i32 %2102, %2101
  %2104 = xor i32 %2098, %2101
  %2105 = add i32 %2104, %2103
  %2106 = icmp eq i32 %2105, 2
  %2107 = zext i1 %2106 to i8
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2107, i8* %2108, align 1
  store %struct.Memory* %loadMem_406d5e, %struct.Memory** %MEMORY
  %loadMem_406d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 33
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 1
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %2114 to i32*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 17
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %R8.i129 = bitcast %union.anon* %2117 to i64*
  %2118 = load i32, i32* %EAX.i128
  %2119 = zext i32 %2118 to i64
  %2120 = load i64, i64* %PC.i127
  %2121 = add i64 %2120, 3
  store i64 %2121, i64* %PC.i127
  %2122 = shl i64 %2119, 32
  %2123 = ashr exact i64 %2122, 32
  store i64 %2123, i64* %R8.i129, align 8
  store %struct.Memory* %loadMem_406d61, %struct.Memory** %MEMORY
  %loadMem_406d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 17
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %R8.i126 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %R8.i126
  %2131 = load i64, i64* %PC.i125
  %2132 = add i64 %2131, 4
  store i64 %2132, i64* %PC.i125
  %2133 = sext i64 %2130 to i128
  %2134 = and i128 %2133, -18446744073709551616
  %2135 = zext i64 %2130 to i128
  %2136 = or i128 %2134, %2135
  %2137 = mul i128 40, %2136
  %2138 = trunc i128 %2137 to i64
  store i64 %2138, i64* %R8.i126, align 8
  %2139 = sext i64 %2138 to i128
  %2140 = icmp ne i128 %2139, %2137
  %2141 = zext i1 %2140 to i8
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2141, i8* %2142, align 1
  %2143 = trunc i128 %2137 to i32
  %2144 = and i32 %2143, 255
  %2145 = call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2148, i8* %2149, align 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2150, align 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2151, align 1
  %2152 = lshr i64 %2138, 63
  %2153 = trunc i64 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2153, i8* %2154, align 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2141, i8* %2155, align 1
  store %struct.Memory* %loadMem_406d64, %struct.Memory** %MEMORY
  %loadMem_406d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 11
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RDI.i123 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 17
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %R8.i124 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %RDI.i123
  %2166 = load i64, i64* %R8.i124
  %2167 = load i64, i64* %PC.i122
  %2168 = add i64 %2167, 3
  store i64 %2168, i64* %PC.i122
  %2169 = add i64 %2166, %2165
  store i64 %2169, i64* %RDI.i123, align 8
  %2170 = icmp ult i64 %2169, %2165
  %2171 = icmp ult i64 %2169, %2166
  %2172 = or i1 %2170, %2171
  %2173 = zext i1 %2172 to i8
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2173, i8* %2174, align 1
  %2175 = trunc i64 %2169 to i32
  %2176 = and i32 %2175, 255
  %2177 = call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2180, i8* %2181, align 1
  %2182 = xor i64 %2166, %2165
  %2183 = xor i64 %2182, %2169
  %2184 = lshr i64 %2183, 4
  %2185 = trunc i64 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2186, i8* %2187, align 1
  %2188 = icmp eq i64 %2169, 0
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2189, i8* %2190, align 1
  %2191 = lshr i64 %2169, 63
  %2192 = trunc i64 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i64 %2165, 63
  %2195 = lshr i64 %2166, 63
  %2196 = xor i64 %2191, %2194
  %2197 = xor i64 %2191, %2195
  %2198 = add i64 %2196, %2197
  %2199 = icmp eq i64 %2198, 2
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2200, i8* %2201, align 1
  store %struct.Memory* %loadMem_406d68, %struct.Memory** %MEMORY
  %loadMem_406d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 11
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %RDI.i121 = bitcast %union.anon* %2207 to i64*
  %2208 = load i64, i64* %RDI.i121
  %2209 = add i64 %2208, 8
  %2210 = load i64, i64* %PC.i120
  %2211 = add i64 %2210, 4
  store i64 %2211, i64* %PC.i120
  %2212 = inttoptr i64 %2209 to i32*
  %2213 = load i32, i32* %2212
  %2214 = sext i32 %2213 to i64
  store i64 %2214, i64* %RDI.i121, align 8
  store %struct.Memory* %loadMem_406d6b, %struct.Memory** %MEMORY
  %loadMem_406d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 7
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 11
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RDI.i118 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2224, i64 0, i64 0
  %XMM0.i119 = bitcast %union.VectorReg* %2225 to %union.vec128_t*
  %2226 = load i64, i64* %RDX.i117
  %2227 = load i64, i64* %RDI.i118
  %2228 = mul i64 %2227, 4
  %2229 = add i64 %2228, %2226
  %2230 = bitcast %union.vec128_t* %XMM0.i119 to i8*
  %2231 = load i64, i64* %PC.i116
  %2232 = add i64 %2231, 5
  store i64 %2232, i64* %PC.i116
  %2233 = bitcast i8* %2230 to <2 x float>*
  %2234 = load <2 x float>, <2 x float>* %2233, align 1
  %2235 = extractelement <2 x float> %2234, i32 0
  %2236 = inttoptr i64 %2229 to float*
  store float %2235, float* %2236
  store %struct.Memory* %loadMem_406d6f, %struct.Memory** %MEMORY
  %loadMem_406d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 7
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 15
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RBP.i115
  %2247 = sub i64 %2246, 24
  %2248 = load i64, i64* %PC.i113
  %2249 = add i64 %2248, 4
  store i64 %2249, i64* %PC.i113
  %2250 = inttoptr i64 %2247 to i64*
  %2251 = load i64, i64* %2250
  store i64 %2251, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_406d74, %struct.Memory** %MEMORY
  %loadMem_406d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 15
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RBP.i112
  %2262 = sub i64 %2261, 44
  %2263 = load i64, i64* %PC.i110
  %2264 = add i64 %2263, 3
  store i64 %2264, i64* %PC.i110
  %2265 = inttoptr i64 %2262 to i32*
  %2266 = load i32, i32* %2265
  %2267 = zext i32 %2266 to i64
  store i64 %2267, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_406d78, %struct.Memory** %MEMORY
  %loadMem_406d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 1
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 15
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %RAX.i108
  %2278 = load i64, i64* %RBP.i109
  %2279 = sub i64 %2278, 28
  %2280 = load i64, i64* %PC.i107
  %2281 = add i64 %2280, 3
  store i64 %2281, i64* %PC.i107
  %2282 = trunc i64 %2277 to i32
  %2283 = inttoptr i64 %2279 to i32*
  %2284 = load i32, i32* %2283
  %2285 = sub i32 %2282, %2284
  %2286 = zext i32 %2285 to i64
  store i64 %2286, i64* %RAX.i108, align 8
  %2287 = icmp ult i32 %2282, %2284
  %2288 = zext i1 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2288, i8* %2289, align 1
  %2290 = and i32 %2285, 255
  %2291 = call i32 @llvm.ctpop.i32(i32 %2290)
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  %2294 = xor i8 %2293, 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2294, i8* %2295, align 1
  %2296 = xor i32 %2284, %2282
  %2297 = xor i32 %2296, %2285
  %2298 = lshr i32 %2297, 4
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2300, i8* %2301, align 1
  %2302 = icmp eq i32 %2285, 0
  %2303 = zext i1 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2303, i8* %2304, align 1
  %2305 = lshr i32 %2285, 31
  %2306 = trunc i32 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2306, i8* %2307, align 1
  %2308 = lshr i32 %2282, 31
  %2309 = lshr i32 %2284, 31
  %2310 = xor i32 %2309, %2308
  %2311 = xor i32 %2305, %2308
  %2312 = add i32 %2311, %2310
  %2313 = icmp eq i32 %2312, 2
  %2314 = zext i1 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2314, i8* %2315, align 1
  store %struct.Memory* %loadMem_406d7b, %struct.Memory** %MEMORY
  %loadMem_406d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 33
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 1
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %EAX.i105 = bitcast %union.anon* %2321 to i32*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 11
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %RDI.i106 = bitcast %union.anon* %2324 to i64*
  %2325 = load i32, i32* %EAX.i105
  %2326 = zext i32 %2325 to i64
  %2327 = load i64, i64* %PC.i104
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %PC.i104
  %2329 = shl i64 %2326, 32
  %2330 = ashr exact i64 %2329, 32
  store i64 %2330, i64* %RDI.i106, align 8
  store %struct.Memory* %loadMem_406d7e, %struct.Memory** %MEMORY
  %loadMem_406d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 11
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RDI.i103 = bitcast %union.anon* %2336 to i64*
  %2337 = load i64, i64* %RDI.i103
  %2338 = load i64, i64* %PC.i102
  %2339 = add i64 %2338, 4
  store i64 %2339, i64* %PC.i102
  %2340 = sext i64 %2337 to i128
  %2341 = and i128 %2340, -18446744073709551616
  %2342 = zext i64 %2337 to i128
  %2343 = or i128 %2341, %2342
  %2344 = mul i128 40, %2343
  %2345 = trunc i128 %2344 to i64
  store i64 %2345, i64* %RDI.i103, align 8
  %2346 = sext i64 %2345 to i128
  %2347 = icmp ne i128 %2346, %2344
  %2348 = zext i1 %2347 to i8
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2348, i8* %2349, align 1
  %2350 = trunc i128 %2344 to i32
  %2351 = and i32 %2350, 255
  %2352 = call i32 @llvm.ctpop.i32(i32 %2351)
  %2353 = trunc i32 %2352 to i8
  %2354 = and i8 %2353, 1
  %2355 = xor i8 %2354, 1
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2355, i8* %2356, align 1
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2357, align 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2358, align 1
  %2359 = lshr i64 %2345, 63
  %2360 = trunc i64 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2360, i8* %2361, align 1
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2348, i8* %2362, align 1
  store %struct.Memory* %loadMem_406d81, %struct.Memory** %MEMORY
  %loadMem_406d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 7
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RDX.i100 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 11
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %2371 to i64*
  %2372 = load i64, i64* %RDX.i100
  %2373 = load i64, i64* %RDI.i101
  %2374 = load i64, i64* %PC.i99
  %2375 = add i64 %2374, 3
  store i64 %2375, i64* %PC.i99
  %2376 = add i64 %2373, %2372
  store i64 %2376, i64* %RDX.i100, align 8
  %2377 = icmp ult i64 %2376, %2372
  %2378 = icmp ult i64 %2376, %2373
  %2379 = or i1 %2377, %2378
  %2380 = zext i1 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2380, i8* %2381, align 1
  %2382 = trunc i64 %2376 to i32
  %2383 = and i32 %2382, 255
  %2384 = call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2387, i8* %2388, align 1
  %2389 = xor i64 %2373, %2372
  %2390 = xor i64 %2389, %2376
  %2391 = lshr i64 %2390, 4
  %2392 = trunc i64 %2391 to i8
  %2393 = and i8 %2392, 1
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2393, i8* %2394, align 1
  %2395 = icmp eq i64 %2376, 0
  %2396 = zext i1 %2395 to i8
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2396, i8* %2397, align 1
  %2398 = lshr i64 %2376, 63
  %2399 = trunc i64 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2399, i8* %2400, align 1
  %2401 = lshr i64 %2372, 63
  %2402 = lshr i64 %2373, 63
  %2403 = xor i64 %2398, %2401
  %2404 = xor i64 %2398, %2402
  %2405 = add i64 %2403, %2404
  %2406 = icmp eq i64 %2405, 2
  %2407 = zext i1 %2406 to i8
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2407, i8* %2408, align 1
  store %struct.Memory* %loadMem_406d85, %struct.Memory** %MEMORY
  %loadMem_406d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 7
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RDX.i97 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2415, i64 0, i64 0
  %YMM0.i98 = bitcast %union.VectorReg* %2416 to %"class.std::bitset"*
  %2417 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %2418 = load i64, i64* %RDX.i97
  %2419 = add i64 %2418, 16
  %2420 = load i64, i64* %PC.i96
  %2421 = add i64 %2420, 5
  store i64 %2421, i64* %PC.i96
  %2422 = inttoptr i64 %2419 to float*
  %2423 = load float, float* %2422
  %2424 = bitcast i8* %2417 to float*
  store float %2423, float* %2424, align 1
  %2425 = getelementptr inbounds i8, i8* %2417, i64 4
  %2426 = bitcast i8* %2425 to float*
  store float 0.000000e+00, float* %2426, align 1
  %2427 = getelementptr inbounds i8, i8* %2417, i64 8
  %2428 = bitcast i8* %2427 to float*
  store float 0.000000e+00, float* %2428, align 1
  %2429 = getelementptr inbounds i8, i8* %2417, i64 12
  %2430 = bitcast i8* %2429 to float*
  store float 0.000000e+00, float* %2430, align 1
  store %struct.Memory* %loadMem_406d88, %struct.Memory** %MEMORY
  %loadMem_406d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 7
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RBP.i95
  %2441 = sub i64 %2440, 56
  %2442 = load i64, i64* %PC.i93
  %2443 = add i64 %2442, 4
  store i64 %2443, i64* %PC.i93
  %2444 = inttoptr i64 %2441 to i64*
  %2445 = load i64, i64* %2444
  store i64 %2445, i64* %RDX.i94, align 8
  store %struct.Memory* %loadMem_406d8d, %struct.Memory** %MEMORY
  %loadMem_406d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 11
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RDI.i91 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i92
  %2456 = sub i64 %2455, 24
  %2457 = load i64, i64* %PC.i90
  %2458 = add i64 %2457, 4
  store i64 %2458, i64* %PC.i90
  %2459 = inttoptr i64 %2456 to i64*
  %2460 = load i64, i64* %2459
  store i64 %2460, i64* %RDI.i91, align 8
  store %struct.Memory* %loadMem_406d91, %struct.Memory** %MEMORY
  %loadMem_406d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 33
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 1
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 15
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RBP.i89
  %2471 = sub i64 %2470, 44
  %2472 = load i64, i64* %PC.i87
  %2473 = add i64 %2472, 3
  store i64 %2473, i64* %PC.i87
  %2474 = inttoptr i64 %2471 to i32*
  %2475 = load i32, i32* %2474
  %2476 = zext i32 %2475 to i64
  store i64 %2476, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_406d95, %struct.Memory** %MEMORY
  %loadMem_406d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 33
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 1
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 15
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2485 to i64*
  %2486 = load i64, i64* %RAX.i85
  %2487 = load i64, i64* %RBP.i86
  %2488 = sub i64 %2487, 28
  %2489 = load i64, i64* %PC.i84
  %2490 = add i64 %2489, 3
  store i64 %2490, i64* %PC.i84
  %2491 = trunc i64 %2486 to i32
  %2492 = inttoptr i64 %2488 to i32*
  %2493 = load i32, i32* %2492
  %2494 = sub i32 %2491, %2493
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RAX.i85, align 8
  %2496 = icmp ult i32 %2491, %2493
  %2497 = zext i1 %2496 to i8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2497, i8* %2498, align 1
  %2499 = and i32 %2494, 255
  %2500 = call i32 @llvm.ctpop.i32(i32 %2499)
  %2501 = trunc i32 %2500 to i8
  %2502 = and i8 %2501, 1
  %2503 = xor i8 %2502, 1
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2503, i8* %2504, align 1
  %2505 = xor i32 %2493, %2491
  %2506 = xor i32 %2505, %2494
  %2507 = lshr i32 %2506, 4
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2509, i8* %2510, align 1
  %2511 = icmp eq i32 %2494, 0
  %2512 = zext i1 %2511 to i8
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2512, i8* %2513, align 1
  %2514 = lshr i32 %2494, 31
  %2515 = trunc i32 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2515, i8* %2516, align 1
  %2517 = lshr i32 %2491, 31
  %2518 = lshr i32 %2493, 31
  %2519 = xor i32 %2518, %2517
  %2520 = xor i32 %2514, %2517
  %2521 = add i32 %2520, %2519
  %2522 = icmp eq i32 %2521, 2
  %2523 = zext i1 %2522 to i8
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2523, i8* %2524, align 1
  store %struct.Memory* %loadMem_406d98, %struct.Memory** %MEMORY
  %loadMem_406d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 1
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %2530 to i32*
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 17
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %R8.i83 = bitcast %union.anon* %2533 to i64*
  %2534 = load i32, i32* %EAX.i82
  %2535 = zext i32 %2534 to i64
  %2536 = load i64, i64* %PC.i81
  %2537 = add i64 %2536, 3
  store i64 %2537, i64* %PC.i81
  %2538 = shl i64 %2535, 32
  %2539 = ashr exact i64 %2538, 32
  store i64 %2539, i64* %R8.i83, align 8
  store %struct.Memory* %loadMem_406d9b, %struct.Memory** %MEMORY
  %loadMem_406d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 17
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %R8.i80 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %R8.i80
  %2547 = load i64, i64* %PC.i79
  %2548 = add i64 %2547, 4
  store i64 %2548, i64* %PC.i79
  %2549 = sext i64 %2546 to i128
  %2550 = and i128 %2549, -18446744073709551616
  %2551 = zext i64 %2546 to i128
  %2552 = or i128 %2550, %2551
  %2553 = mul i128 40, %2552
  %2554 = trunc i128 %2553 to i64
  store i64 %2554, i64* %R8.i80, align 8
  %2555 = sext i64 %2554 to i128
  %2556 = icmp ne i128 %2555, %2553
  %2557 = zext i1 %2556 to i8
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2557, i8* %2558, align 1
  %2559 = trunc i128 %2553 to i32
  %2560 = and i32 %2559, 255
  %2561 = call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2564, i8* %2565, align 1
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2566, align 1
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2567, align 1
  %2568 = lshr i64 %2554, 63
  %2569 = trunc i64 %2568 to i8
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2569, i8* %2570, align 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2557, i8* %2571, align 1
  store %struct.Memory* %loadMem_406d9e, %struct.Memory** %MEMORY
  %loadMem_406da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 11
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RDI.i78 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 17
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %RDI.i78
  %2582 = load i64, i64* %R8.i
  %2583 = load i64, i64* %PC.i77
  %2584 = add i64 %2583, 3
  store i64 %2584, i64* %PC.i77
  %2585 = add i64 %2582, %2581
  store i64 %2585, i64* %RDI.i78, align 8
  %2586 = icmp ult i64 %2585, %2581
  %2587 = icmp ult i64 %2585, %2582
  %2588 = or i1 %2586, %2587
  %2589 = zext i1 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2589, i8* %2590, align 1
  %2591 = trunc i64 %2585 to i32
  %2592 = and i32 %2591, 255
  %2593 = call i32 @llvm.ctpop.i32(i32 %2592)
  %2594 = trunc i32 %2593 to i8
  %2595 = and i8 %2594, 1
  %2596 = xor i8 %2595, 1
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2596, i8* %2597, align 1
  %2598 = xor i64 %2582, %2581
  %2599 = xor i64 %2598, %2585
  %2600 = lshr i64 %2599, 4
  %2601 = trunc i64 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2602, i8* %2603, align 1
  %2604 = icmp eq i64 %2585, 0
  %2605 = zext i1 %2604 to i8
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2605, i8* %2606, align 1
  %2607 = lshr i64 %2585, 63
  %2608 = trunc i64 %2607 to i8
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2608, i8* %2609, align 1
  %2610 = lshr i64 %2581, 63
  %2611 = lshr i64 %2582, 63
  %2612 = xor i64 %2607, %2610
  %2613 = xor i64 %2607, %2611
  %2614 = add i64 %2612, %2613
  %2615 = icmp eq i64 %2614, 2
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2616, i8* %2617, align 1
  store %struct.Memory* %loadMem_406da2, %struct.Memory** %MEMORY
  %loadMem_406da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 11
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RDI.i76 = bitcast %union.anon* %2623 to i64*
  %2624 = load i64, i64* %RDI.i76
  %2625 = add i64 %2624, 4
  %2626 = load i64, i64* %PC.i75
  %2627 = add i64 %2626, 4
  store i64 %2627, i64* %PC.i75
  %2628 = inttoptr i64 %2625 to i32*
  %2629 = load i32, i32* %2628
  %2630 = sext i32 %2629 to i64
  store i64 %2630, i64* %RDI.i76, align 8
  store %struct.Memory* %loadMem_406da5, %struct.Memory** %MEMORY
  %loadMem_406da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 7
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 11
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2640, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2641 to %union.vec128_t*
  %2642 = load i64, i64* %RDX.i73
  %2643 = load i64, i64* %RDI.i74
  %2644 = mul i64 %2643, 4
  %2645 = add i64 %2644, %2642
  %2646 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2647 = load i64, i64* %PC.i72
  %2648 = add i64 %2647, 5
  store i64 %2648, i64* %PC.i72
  %2649 = bitcast i8* %2646 to <2 x float>*
  %2650 = load <2 x float>, <2 x float>* %2649, align 1
  %2651 = extractelement <2 x float> %2650, i32 0
  %2652 = inttoptr i64 %2645 to float*
  store float %2651, float* %2652
  store %struct.Memory* %loadMem_406da9, %struct.Memory** %MEMORY
  %loadMem_406dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2655 to i64*
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 15
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2658 to i64*
  %2659 = load i64, i64* %RBP.i71
  %2660 = sub i64 %2659, 60
  %2661 = load i64, i64* %PC.i70
  %2662 = add i64 %2661, 7
  store i64 %2662, i64* %PC.i70
  %2663 = inttoptr i64 %2660 to i32*
  store i32 0, i32* %2663
  store %struct.Memory* %loadMem_406dae, %struct.Memory** %MEMORY
  %loadMem_406db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %PC.i69
  %2668 = add i64 %2667, 100
  %2669 = load i64, i64* %PC.i69
  %2670 = add i64 %2669, 5
  store i64 %2670, i64* %PC.i69
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2668, i64* %2671, align 8
  store %struct.Memory* %loadMem_406db5, %struct.Memory** %MEMORY
  br label %block_.L_406e19

block_.L_406dba:                                  ; preds = %block_.L_406ca2
  %loadMem_406dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 1
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 15
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %RBP.i68
  %2682 = sub i64 %2681, 44
  %2683 = load i64, i64* %PC.i66
  %2684 = add i64 %2683, 3
  store i64 %2684, i64* %PC.i66
  %2685 = inttoptr i64 %2682 to i32*
  %2686 = load i32, i32* %2685
  %2687 = zext i32 %2686 to i64
  store i64 %2687, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_406dba, %struct.Memory** %MEMORY
  %loadMem_406dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 5
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 15
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %RBP.i65
  %2698 = sub i64 %2697, 28
  %2699 = load i64, i64* %PC.i63
  %2700 = add i64 %2699, 3
  store i64 %2700, i64* %PC.i63
  %2701 = inttoptr i64 %2698 to i32*
  %2702 = load i32, i32* %2701
  %2703 = zext i32 %2702 to i64
  store i64 %2703, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_406dbd, %struct.Memory** %MEMORY
  %loadMem_406dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 33
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 5
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RCX.i62
  %2711 = load i64, i64* %PC.i61
  %2712 = add i64 %2711, 2
  store i64 %2712, i64* %PC.i61
  %2713 = trunc i64 %2710 to i32
  %2714 = shl i32 %2713, 1
  %2715 = icmp slt i32 %2713, 0
  %2716 = icmp slt i32 %2714, 0
  %2717 = xor i1 %2715, %2716
  %2718 = zext i32 %2714 to i64
  store i64 %2718, i64* %RCX.i62, align 8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2720 = zext i1 %2715 to i8
  store i8 %2720, i8* %2719, align 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2722 = and i32 %2714, 254
  %2723 = call i32 @llvm.ctpop.i32(i32 %2722)
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  %2726 = xor i8 %2725, 1
  store i8 %2726, i8* %2721, align 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2727, align 1
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2729 = icmp eq i32 %2714, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %2728, align 1
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2732 = lshr i32 %2714, 31
  %2733 = trunc i32 %2732 to i8
  store i8 %2733, i8* %2731, align 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2735 = zext i1 %2717 to i8
  store i8 %2735, i8* %2734, align 1
  store %struct.Memory* %loadMem_406dc0, %struct.Memory** %MEMORY
  %loadMem_406dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 1
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %2741 to i32*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 5
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %ECX.i60 = bitcast %union.anon* %2744 to i32*
  %2745 = load i32, i32* %EAX.i59
  %2746 = zext i32 %2745 to i64
  %2747 = load i32, i32* %ECX.i60
  %2748 = zext i32 %2747 to i64
  %2749 = load i64, i64* %PC.i58
  %2750 = add i64 %2749, 2
  store i64 %2750, i64* %PC.i58
  %2751 = sub i32 %2745, %2747
  %2752 = icmp ult i32 %2745, %2747
  %2753 = zext i1 %2752 to i8
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2753, i8* %2754, align 1
  %2755 = and i32 %2751, 255
  %2756 = call i32 @llvm.ctpop.i32(i32 %2755)
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  %2759 = xor i8 %2758, 1
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2759, i8* %2760, align 1
  %2761 = xor i64 %2748, %2746
  %2762 = trunc i64 %2761 to i32
  %2763 = xor i32 %2762, %2751
  %2764 = lshr i32 %2763, 4
  %2765 = trunc i32 %2764 to i8
  %2766 = and i8 %2765, 1
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2766, i8* %2767, align 1
  %2768 = icmp eq i32 %2751, 0
  %2769 = zext i1 %2768 to i8
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2769, i8* %2770, align 1
  %2771 = lshr i32 %2751, 31
  %2772 = trunc i32 %2771 to i8
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2772, i8* %2773, align 1
  %2774 = lshr i32 %2745, 31
  %2775 = lshr i32 %2747, 31
  %2776 = xor i32 %2775, %2774
  %2777 = xor i32 %2771, %2774
  %2778 = add i32 %2777, %2776
  %2779 = icmp eq i32 %2778, 2
  %2780 = zext i1 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2780, i8* %2781, align 1
  store %struct.Memory* %loadMem_406dc3, %struct.Memory** %MEMORY
  %loadMem_406dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %PC.i57
  %2786 = add i64 %2785, 35
  %2787 = load i64, i64* %PC.i57
  %2788 = add i64 %2787, 6
  %2789 = load i64, i64* %PC.i57
  %2790 = add i64 %2789, 6
  store i64 %2790, i64* %PC.i57
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2792 = load i8, i8* %2791, align 1
  %2793 = icmp eq i8 %2792, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %BRANCH_TAKEN, align 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2796 = select i1 %2793, i64 %2786, i64 %2788
  store i64 %2796, i64* %2795, align 8
  store %struct.Memory* %loadMem_406dc5, %struct.Memory** %MEMORY
  %loadBr_406dc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406dc5 = icmp eq i8 %loadBr_406dc5, 1
  br i1 %cmpBr_406dc5, label %block_.L_406de8, label %block_406dcb

block_406dcb:                                     ; preds = %block_.L_406dba
  %loadMem_406dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 9
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RSI.i56 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %PC.i55
  %2804 = add i64 %2803, 10
  store i64 %2804, i64* %PC.i55
  store i64 ptrtoint (%G__0x455e97_type* @G__0x455e97 to i64), i64* %RSI.i56, align 8
  store %struct.Memory* %loadMem_406dcb, %struct.Memory** %MEMORY
  %loadMem_406dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 33
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 11
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RDI.i53 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 15
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %RBP.i54
  %2815 = sub i64 %2814, 8
  %2816 = load i64, i64* %PC.i52
  %2817 = add i64 %2816, 4
  store i64 %2817, i64* %PC.i52
  %2818 = inttoptr i64 %2815 to i64*
  %2819 = load i64, i64* %2818
  store i64 %2819, i64* %RDI.i53, align 8
  store %struct.Memory* %loadMem_406dd5, %struct.Memory** %MEMORY
  %loadMem_406dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 1
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %2826 = bitcast %union.anon* %2825 to %struct.anon.2*
  %AL.i51 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2826, i32 0, i32 0
  %2827 = load i64, i64* %PC.i50
  %2828 = add i64 %2827, 2
  store i64 %2828, i64* %PC.i50
  store i8 0, i8* %AL.i51, align 1
  store %struct.Memory* %loadMem_406dd9, %struct.Memory** %MEMORY
  %loadMem1_406ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %PC.i49
  %2833 = add i64 %2832, -22635
  %2834 = load i64, i64* %PC.i49
  %2835 = add i64 %2834, 5
  %2836 = load i64, i64* %PC.i49
  %2837 = add i64 %2836, 5
  store i64 %2837, i64* %PC.i49
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2839 = load i64, i64* %2838, align 8
  %2840 = add i64 %2839, -8
  %2841 = inttoptr i64 %2840 to i64*
  store i64 %2835, i64* %2841
  store i64 %2840, i64* %2838, align 8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2833, i64* %2842, align 8
  store %struct.Memory* %loadMem1_406ddb, %struct.Memory** %MEMORY
  %loadMem2_406ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406ddb = load i64, i64* %3
  %2843 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_406ddb)
  store %struct.Memory* %2843, %struct.Memory** %MEMORY
  %loadMem_406de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 1
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %2849 to i32*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 15
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %2852 to i64*
  %2853 = load i64, i64* %RBP.i46
  %2854 = sub i64 %2853, 80
  %2855 = load i32, i32* %EAX.i45
  %2856 = zext i32 %2855 to i64
  %2857 = load i64, i64* %PC.i44
  %2858 = add i64 %2857, 3
  store i64 %2858, i64* %PC.i44
  %2859 = inttoptr i64 %2854 to i32*
  store i32 %2855, i32* %2859
  store %struct.Memory* %loadMem_406de0, %struct.Memory** %MEMORY
  %loadMem_406de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2862 to i64*
  %2863 = load i64, i64* %PC.i43
  %2864 = add i64 %2863, 47
  %2865 = load i64, i64* %PC.i43
  %2866 = add i64 %2865, 5
  store i64 %2866, i64* %PC.i43
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2864, i64* %2867, align 8
  store %struct.Memory* %loadMem_406de3, %struct.Memory** %MEMORY
  br label %block_.L_406e12

block_.L_406de8:                                  ; preds = %block_.L_406dba
  %loadMem_406de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 33
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 9
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %PC.i42
  %2875 = add i64 %2874, 10
  store i64 %2875, i64* %PC.i42
  store i64 ptrtoint (%G__0x455e9b_type* @G__0x455e9b to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_406de8, %struct.Memory** %MEMORY
  %loadMem_406df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2878 to i64*
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 11
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %RDI.i40 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 15
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %RBP.i41
  %2886 = sub i64 %2885, 8
  %2887 = load i64, i64* %PC.i39
  %2888 = add i64 %2887, 4
  store i64 %2888, i64* %PC.i39
  %2889 = inttoptr i64 %2886 to i64*
  %2890 = load i64, i64* %2889
  store i64 %2890, i64* %RDI.i40, align 8
  store %struct.Memory* %loadMem_406df2, %struct.Memory** %MEMORY
  %loadMem_406df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 1
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 15
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %RBP.i38
  %2901 = sub i64 %2900, 56
  %2902 = load i64, i64* %PC.i36
  %2903 = add i64 %2902, 4
  store i64 %2903, i64* %PC.i36
  %2904 = inttoptr i64 %2901 to i64*
  %2905 = load i64, i64* %2904
  store i64 %2905, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_406df6, %struct.Memory** %MEMORY
  %loadMem_406dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 33
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2908 to i64*
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 5
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %2911 to i64*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 15
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %RBP.i35
  %2916 = sub i64 %2915, 44
  %2917 = load i64, i64* %PC.i33
  %2918 = add i64 %2917, 3
  store i64 %2918, i64* %PC.i33
  %2919 = inttoptr i64 %2916 to i32*
  %2920 = load i32, i32* %2919
  %2921 = zext i32 %2920 to i64
  store i64 %2921, i64* %RCX.i34, align 8
  store %struct.Memory* %loadMem_406dfa, %struct.Memory** %MEMORY
  %loadMem_406dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 5
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 15
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %RCX.i
  %2932 = load i64, i64* %RBP.i32
  %2933 = sub i64 %2932, 28
  %2934 = load i64, i64* %PC.i31
  %2935 = add i64 %2934, 3
  store i64 %2935, i64* %PC.i31
  %2936 = trunc i64 %2931 to i32
  %2937 = inttoptr i64 %2933 to i32*
  %2938 = load i32, i32* %2937
  %2939 = sub i32 %2936, %2938
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %RCX.i, align 8
  %2941 = icmp ult i32 %2936, %2938
  %2942 = zext i1 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2942, i8* %2943, align 1
  %2944 = and i32 %2939, 255
  %2945 = call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2948, i8* %2949, align 1
  %2950 = xor i32 %2938, %2936
  %2951 = xor i32 %2950, %2939
  %2952 = lshr i32 %2951, 4
  %2953 = trunc i32 %2952 to i8
  %2954 = and i8 %2953, 1
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2954, i8* %2955, align 1
  %2956 = icmp eq i32 %2939, 0
  %2957 = zext i1 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2957, i8* %2958, align 1
  %2959 = lshr i32 %2939, 31
  %2960 = trunc i32 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2960, i8* %2961, align 1
  %2962 = lshr i32 %2936, 31
  %2963 = lshr i32 %2938, 31
  %2964 = xor i32 %2963, %2962
  %2965 = xor i32 %2959, %2962
  %2966 = add i32 %2965, %2964
  %2967 = icmp eq i32 %2966, 2
  %2968 = zext i1 %2967 to i8
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2968, i8* %2969, align 1
  store %struct.Memory* %loadMem_406dfd, %struct.Memory** %MEMORY
  %loadMem_406e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 5
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2975 to i32*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 7
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RDX.i30 = bitcast %union.anon* %2978 to i64*
  %2979 = load i32, i32* %ECX.i
  %2980 = zext i32 %2979 to i64
  %2981 = load i64, i64* %PC.i29
  %2982 = add i64 %2981, 3
  store i64 %2982, i64* %PC.i29
  %2983 = shl i64 %2980, 32
  %2984 = ashr exact i64 %2983, 32
  store i64 %2984, i64* %RDX.i30, align 8
  store %struct.Memory* %loadMem_406e00, %struct.Memory** %MEMORY
  %loadMem_406e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 1
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 7
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2994, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2995 to %"class.std::bitset"*
  %2996 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2997 = load i64, i64* %RAX.i
  %2998 = load i64, i64* %RDX.i
  %2999 = mul i64 %2998, 4
  %3000 = add i64 %2999, %2997
  %3001 = load i64, i64* %PC.i28
  %3002 = add i64 %3001, 5
  store i64 %3002, i64* %PC.i28
  %3003 = inttoptr i64 %3000 to float*
  %3004 = load float, float* %3003
  %3005 = fpext float %3004 to double
  %3006 = bitcast i8* %2996 to double*
  store double %3005, double* %3006, align 1
  store %struct.Memory* %loadMem_406e03, %struct.Memory** %MEMORY
  %loadMem_406e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %3013 = bitcast %union.anon* %3012 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3013, i32 0, i32 0
  %3014 = load i64, i64* %PC.i27
  %3015 = add i64 %3014, 2
  store i64 %3015, i64* %PC.i27
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_406e08, %struct.Memory** %MEMORY
  %loadMem1_406e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %PC.i26
  %3020 = add i64 %3019, -22682
  %3021 = load i64, i64* %PC.i26
  %3022 = add i64 %3021, 5
  %3023 = load i64, i64* %PC.i26
  %3024 = add i64 %3023, 5
  store i64 %3024, i64* %PC.i26
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3026 = load i64, i64* %3025, align 8
  %3027 = add i64 %3026, -8
  %3028 = inttoptr i64 %3027 to i64*
  store i64 %3022, i64* %3028
  store i64 %3027, i64* %3025, align 8
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3020, i64* %3029, align 8
  store %struct.Memory* %loadMem1_406e0a, %struct.Memory** %MEMORY
  %loadMem2_406e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406e0a = load i64, i64* %3
  %3030 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_406e0a)
  store %struct.Memory* %3030, %struct.Memory** %MEMORY
  %loadMem_406e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 1
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %3036 to i32*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 15
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RBP.i23
  %3041 = sub i64 %3040, 84
  %3042 = load i32, i32* %EAX.i22
  %3043 = zext i32 %3042 to i64
  %3044 = load i64, i64* %PC.i21
  %3045 = add i64 %3044, 3
  store i64 %3045, i64* %PC.i21
  %3046 = inttoptr i64 %3041 to i32*
  store i32 %3042, i32* %3046
  store %struct.Memory* %loadMem_406e0f, %struct.Memory** %MEMORY
  br label %block_.L_406e12

block_.L_406e12:                                  ; preds = %block_.L_406de8, %block_406dcb
  %loadMem_406e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 15
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3052 to i64*
  %3053 = load i64, i64* %RBP.i20
  %3054 = sub i64 %3053, 60
  %3055 = load i64, i64* %PC.i19
  %3056 = add i64 %3055, 7
  store i64 %3056, i64* %PC.i19
  %3057 = inttoptr i64 %3054 to i32*
  store i32 1, i32* %3057
  store %struct.Memory* %loadMem_406e12, %struct.Memory** %MEMORY
  br label %block_.L_406e19

block_.L_406e19:                                  ; preds = %block_.L_406e12, %block_.L_406cd3
  %loadMem_406e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %PC.i18
  %3062 = add i64 %3061, 5
  %3063 = load i64, i64* %PC.i18
  %3064 = add i64 %3063, 5
  store i64 %3064, i64* %PC.i18
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3062, i64* %3065, align 8
  store %struct.Memory* %loadMem_406e19, %struct.Memory** %MEMORY
  br label %block_.L_406e1e

block_.L_406e1e:                                  ; preds = %block_.L_406e19, %block_.L_406c54
  %loadMem_406e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3068 to i64*
  %3069 = load i64, i64* %PC.i17
  %3070 = add i64 %3069, -524
  %3071 = load i64, i64* %PC.i17
  %3072 = add i64 %3071, 5
  store i64 %3072, i64* %PC.i17
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3070, i64* %3073, align 8
  store %struct.Memory* %loadMem_406e1e, %struct.Memory** %MEMORY
  br label %block_.L_406c12

block_.L_406e23:                                  ; preds = %block_.L_406c12
  %loadMem_406e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 11
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RDI.i15 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 15
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RBP.i16
  %3084 = sub i64 %3083, 40
  %3085 = load i64, i64* %PC.i14
  %3086 = add i64 %3085, 4
  store i64 %3086, i64* %PC.i14
  %3087 = inttoptr i64 %3084 to i64*
  %3088 = load i64, i64* %3087
  store i64 %3088, i64* %RDI.i15, align 8
  store %struct.Memory* %loadMem_406e23, %struct.Memory** %MEMORY
  %loadMem1_406e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 33
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %PC.i13
  %3093 = add i64 %3092, 276185
  %3094 = load i64, i64* %PC.i13
  %3095 = add i64 %3094, 5
  %3096 = load i64, i64* %PC.i13
  %3097 = add i64 %3096, 5
  store i64 %3097, i64* %PC.i13
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3099 = load i64, i64* %3098, align 8
  %3100 = add i64 %3099, -8
  %3101 = inttoptr i64 %3100 to i64*
  store i64 %3095, i64* %3101
  store i64 %3100, i64* %3098, align 8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3093, i64* %3102, align 8
  store %struct.Memory* %loadMem1_406e27, %struct.Memory** %MEMORY
  %loadMem2_406e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406e27 = load i64, i64* %3
  %call2_406e27 = call %struct.Memory* @sub_44a500.FreeIntStack(%struct.State* %0, i64 %loadPC_406e27, %struct.Memory* %loadMem2_406e27)
  store %struct.Memory* %call2_406e27, %struct.Memory** %MEMORY
  %loadMem_406e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 11
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 15
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %RBP.i12
  %3113 = sub i64 %3112, 56
  %3114 = load i64, i64* %PC.i11
  %3115 = add i64 %3114, 4
  store i64 %3115, i64* %PC.i11
  %3116 = inttoptr i64 %3113 to i64*
  %3117 = load i64, i64* %3116
  store i64 %3117, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_406e2c, %struct.Memory** %MEMORY
  %loadMem_406e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 1
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3123 to i32*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 15
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3126 to i64*
  %3127 = load i64, i64* %RBP.i10
  %3128 = sub i64 %3127, 88
  %3129 = load i32, i32* %EAX.i
  %3130 = zext i32 %3129 to i64
  %3131 = load i64, i64* %PC.i9
  %3132 = add i64 %3131, 3
  store i64 %3132, i64* %PC.i9
  %3133 = inttoptr i64 %3128 to i32*
  store i32 %3129, i32* %3133
  store %struct.Memory* %loadMem_406e30, %struct.Memory** %MEMORY
  %loadMem1_406e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 33
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %PC.i8
  %3138 = add i64 %3137, -23219
  %3139 = load i64, i64* %PC.i8
  %3140 = add i64 %3139, 5
  %3141 = load i64, i64* %PC.i8
  %3142 = add i64 %3141, 5
  store i64 %3142, i64* %PC.i8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3144 = load i64, i64* %3143, align 8
  %3145 = add i64 %3144, -8
  %3146 = inttoptr i64 %3145 to i64*
  store i64 %3140, i64* %3146
  store i64 %3145, i64* %3143, align 8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3138, i64* %3147, align 8
  store %struct.Memory* %loadMem1_406e33, %struct.Memory** %MEMORY
  %loadMem2_406e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406e33 = load i64, i64* %3
  %3148 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_406e33)
  store %struct.Memory* %3148, %struct.Memory** %MEMORY
  %loadMem_406e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 13
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %RSP.i
  %3156 = load i64, i64* %PC.i4
  %3157 = add i64 %3156, 4
  store i64 %3157, i64* %PC.i4
  %3158 = add i64 96, %3155
  store i64 %3158, i64* %RSP.i, align 8
  %3159 = icmp ult i64 %3158, %3155
  %3160 = icmp ult i64 %3158, 96
  %3161 = or i1 %3159, %3160
  %3162 = zext i1 %3161 to i8
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3162, i8* %3163, align 1
  %3164 = trunc i64 %3158 to i32
  %3165 = and i32 %3164, 255
  %3166 = call i32 @llvm.ctpop.i32(i32 %3165)
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = xor i8 %3168, 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3169, i8* %3170, align 1
  %3171 = xor i64 96, %3155
  %3172 = xor i64 %3171, %3158
  %3173 = lshr i64 %3172, 4
  %3174 = trunc i64 %3173 to i8
  %3175 = and i8 %3174, 1
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3175, i8* %3176, align 1
  %3177 = icmp eq i64 %3158, 0
  %3178 = zext i1 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3178, i8* %3179, align 1
  %3180 = lshr i64 %3158, 63
  %3181 = trunc i64 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3181, i8* %3182, align 1
  %3183 = lshr i64 %3155, 63
  %3184 = xor i64 %3180, %3183
  %3185 = add i64 %3184, %3180
  %3186 = icmp eq i64 %3185, 2
  %3187 = zext i1 %3186 to i8
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3187, i8* %3188, align 1
  store %struct.Memory* %loadMem_406e38, %struct.Memory** %MEMORY
  %loadMem_406e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 15
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3194 to i64*
  %3195 = load i64, i64* %PC.i2
  %3196 = add i64 %3195, 1
  store i64 %3196, i64* %PC.i2
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3198 = load i64, i64* %3197, align 8
  %3199 = add i64 %3198, 8
  %3200 = inttoptr i64 %3198 to i64*
  %3201 = load i64, i64* %3200
  store i64 %3201, i64* %RBP.i3, align 8
  store i64 %3199, i64* %3197, align 8
  store %struct.Memory* %loadMem_406e3c, %struct.Memory** %MEMORY
  %loadMem_406e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3204 to i64*
  %3205 = load i64, i64* %PC.i1
  %3206 = add i64 %3205, 1
  store i64 %3206, i64* %PC.i1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3209 = load i64, i64* %3208, align 8
  %3210 = inttoptr i64 %3209 to i64*
  %3211 = load i64, i64* %3210
  store i64 %3211, i64* %3207, align 8
  %3212 = add i64 %3209, 8
  store i64 %3212, i64* %3208, align 8
  store %struct.Memory* %loadMem_406e3d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_406e3d
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movq__0x455dc7___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455dc7_type* @G__0x455dc7 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1d0___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 464, i64* %9, align 8
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
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

define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_movl__r8d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.InitIntStack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.PushIntStack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.PopIntStack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_406e23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jge_.L_406ca2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_406c54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4560ea___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4560ea_type* @G__0x4560ea to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x455e8a___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455e8a_type* @G__0x455e8a to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_imulq__0x168___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 360, %15
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

define %struct.Memory* @routine_addq__0x4___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4
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
  %25 = xor i64 4, %9
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd___rcx__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_jmpq_.L_406e1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jge_.L_406dba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_406cd3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x455e92___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455e92_type* @G__0x455e92 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x455e95___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455e95_type* @G__0x455e95 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq__eax___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x28___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 40, %15
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

define %struct.Memory* @routine_addq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x28___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 40, %15
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

define %struct.Memory* @routine_addq__rdi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movss_0x14__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 20
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

define %struct.Memory* @routine_movslq_0x8__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rdx__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RDI
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x10__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movslq_0x4__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_406e19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_406de8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x455e97___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455e97_type* @G__0x455e97 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_406e12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x455e9b___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x455e9b_type* @G__0x455e9b to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_cvtss2sd___rax__rdx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_jmpq_.L_406c12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.FreeIntStack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
