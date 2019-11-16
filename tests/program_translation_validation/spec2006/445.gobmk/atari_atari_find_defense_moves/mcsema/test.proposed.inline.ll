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
%G_0xab0f24_type = type <{ [4 x i8] }>
%G__0x57a353_type = type <{ [8 x i8] }>
%G__0x57abd2_type = type <{ [8 x i8] }>
%G__0x57abde_type = type <{ [8 x i8] }>
%G__0x57abea_type = type <{ [8 x i8] }>
%G__0x57ac01_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G__0x57a353 = global %G__0x57a353_type zeroinitializer
@G__0x57abd2 = global %G__0x57abd2_type zeroinitializer
@G__0x57abde = global %G__0x57abde_type zeroinitializer
@G__0x57abea = global %G__0x57abea_type zeroinitializer
@G__0x57ac01 = global %G__0x57ac01_type zeroinitializer

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

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @atari_atari_find_defense_moves(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41a2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41a2d0, %struct.Memory** %MEMORY
  %loadMem_41a2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i565 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i565
  %27 = load i64, i64* %PC.i564
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i564
  store i64 %26, i64* %RBP.i566, align 8
  store %struct.Memory* %loadMem_41a2d1, %struct.Memory** %MEMORY
  %loadMem_41a2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i593 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i593
  %36 = load i64, i64* %PC.i592
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i592
  %38 = sub i64 %35, 2352
  store i64 %38, i64* %RSP.i593, align 8
  %39 = icmp ult i64 %35, 2352
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
  %49 = xor i64 2352, %35
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
  store %struct.Memory* %loadMem_41a2d4, %struct.Memory** %MEMORY
  %loadMem_41a2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EAX.i590 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RAX.i591
  %77 = load i32, i32* %EAX.i590
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC.i589
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC.i589
  %81 = xor i64 %78, %76
  %82 = trunc i64 %81 to i32
  %83 = and i64 %81, 4294967295
  store i64 %83, i64* %RAX.i591, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %84, align 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1
  %91 = icmp eq i32 %82, 0
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %92, i8* %93, align 1
  %94 = lshr i32 %82, 31
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %95, i8* %96, align 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1
  store %struct.Memory* %loadMem_41a2db, %struct.Memory** %MEMORY
  %loadMem_41a2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %104 to i64*
  %105 = load i64, i64* %PC.i587
  %106 = add i64 %105, 5
  store i64 %106, i64* %PC.i587
  store i64 1600, i64* %RCX.i588, align 8
  store %struct.Memory* %loadMem_41a2dd, %struct.Memory** %MEMORY
  %loadMem_41a2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %ECX.i585 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RDX.i586 = bitcast %union.anon* %115 to i64*
  %116 = load i32, i32* %ECX.i585
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC.i584
  %119 = add i64 %118, 2
  store i64 %119, i64* %PC.i584
  %120 = and i64 %117, 4294967295
  store i64 %120, i64* %RDX.i586, align 8
  store %struct.Memory* %loadMem_41a2e2, %struct.Memory** %MEMORY
  %loadMem_41a2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 17
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %R8.i583 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i582
  %131 = sub i64 %130, 2320
  %132 = load i64, i64* %PC.i581
  %133 = add i64 %132, 7
  store i64 %133, i64* %PC.i581
  store i64 %131, i64* %R8.i583, align 8
  store %struct.Memory* %loadMem_41a2e4, %struct.Memory** %MEMORY
  %loadMem_41a2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 11
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RDI.i579 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i580
  %144 = sub i64 %143, 16
  %145 = load i64, i64* %RDI.i579
  %146 = load i64, i64* %PC.i578
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC.i578
  %148 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %148
  store %struct.Memory* %loadMem_41a2eb, %struct.Memory** %MEMORY
  %loadMem_41a2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RSI.i576 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RBP.i577
  %159 = sub i64 %158, 24
  %160 = load i64, i64* %RSI.i576
  %161 = load i64, i64* %PC.i575
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC.i575
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163
  store %struct.Memory* %loadMem_41a2ef, %struct.Memory** %MEMORY
  %loadMem_41a2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 33
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 15
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %RBP.i574
  %171 = sub i64 %170, 28
  %172 = load i64, i64* %PC.i573
  %173 = add i64 %172, 7
  store i64 %173, i64* %PC.i573
  %174 = inttoptr i64 %171 to i32*
  store i32 0, i32* %174
  store %struct.Memory* %loadMem_41a2f3, %struct.Memory** %MEMORY
  %loadMem_41a2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 11
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RDI.i572 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 17
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %R8.i = bitcast %union.anon* %183 to i64*
  %184 = load i64, i64* %R8.i
  %185 = load i64, i64* %PC.i571
  %186 = add i64 %185, 3
  store i64 %186, i64* %PC.i571
  store i64 %184, i64* %RDI.i572, align 8
  store %struct.Memory* %loadMem_41a2fa, %struct.Memory** %MEMORY
  %loadMem_41a2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %EAX.i569 = bitcast %union.anon* %192 to i32*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 9
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RSI.i570 = bitcast %union.anon* %195 to i64*
  %196 = load i32, i32* %EAX.i569
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %PC.i568
  %199 = add i64 %198, 2
  store i64 %199, i64* %PC.i568
  %200 = and i64 %197, 4294967295
  store i64 %200, i64* %RSI.i570, align 8
  store %struct.Memory* %loadMem_41a2fd, %struct.Memory** %MEMORY
  %loadMem1_41a2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %PC.i567
  %205 = add i64 %204, -103055
  %206 = load i64, i64* %PC.i567
  %207 = add i64 %206, 5
  %208 = load i64, i64* %PC.i567
  %209 = add i64 %208, 5
  store i64 %209, i64* %PC.i567
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add i64 %211, -8
  %213 = inttoptr i64 %212 to i64*
  store i64 %207, i64* %213
  store i64 %212, i64* %210, align 8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %205, i64* %214, align 8
  store %struct.Memory* %loadMem1_41a2ff, %struct.Memory** %MEMORY
  %loadMem2_41a2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a2ff = load i64, i64* %3
  %215 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_41a2ff)
  store %struct.Memory* %215, %struct.Memory** %MEMORY
  %loadMem_41a304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 15
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %RBP.i563
  %223 = sub i64 %222, 2324
  %224 = load i64, i64* %PC.i562
  %225 = add i64 %224, 10
  store i64 %225, i64* %PC.i562
  %226 = inttoptr i64 %223 to i32*
  store i32 0, i32* %226
  store %struct.Memory* %loadMem_41a304, %struct.Memory** %MEMORY
  br label %block_.L_41a30e

block_.L_41a30e:                                  ; preds = %block_.L_41a76f, %entry
  %loadMem_41a30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %EAX.i560 = bitcast %union.anon* %232 to i32*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RAX.i561
  %237 = load i32, i32* %EAX.i560
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %PC.i559
  %240 = add i64 %239, 2
  store i64 %240, i64* %PC.i559
  %241 = xor i64 %238, %236
  %242 = trunc i64 %241 to i32
  %243 = and i64 %241, 4294967295
  store i64 %243, i64* %RAX.i561, align 8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %244, align 1
  %245 = and i32 %242, 255
  %246 = call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %249, i8* %250, align 1
  %251 = icmp eq i32 %242, 0
  %252 = zext i1 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %252, i8* %253, align 1
  %254 = lshr i32 %242, 31
  %255 = trunc i32 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %255, i8* %256, align 1
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %257, align 1
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %258, align 1
  store %struct.Memory* %loadMem_41a30e, %struct.Memory** %MEMORY
  %loadMem_41a310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %265 = bitcast %union.anon* %264 to %struct.anon.2*
  %AL.i557 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %265, i32 0, i32 0
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %269 = bitcast %union.anon* %268 to %struct.anon.2*
  %CL.i558 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %269, i32 0, i32 0
  %270 = load i8, i8* %AL.i557
  %271 = zext i8 %270 to i64
  %272 = load i64, i64* %PC.i556
  %273 = add i64 %272, 2
  store i64 %273, i64* %PC.i556
  store i8 %270, i8* %CL.i558, align 1
  store %struct.Memory* %loadMem_41a310, %struct.Memory** %MEMORY
  %loadMem_41a312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 15
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RBP.i555
  %281 = sub i64 %280, 2324
  %282 = load i64, i64* %PC.i554
  %283 = add i64 %282, 7
  store i64 %283, i64* %PC.i554
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284
  %286 = sub i32 %285, 4
  %287 = icmp ult i32 %285, 4
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %288, i8* %289, align 1
  %290 = and i32 %286, 255
  %291 = call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %294, i8* %295, align 1
  %296 = xor i32 %285, 4
  %297 = xor i32 %296, %286
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %300, i8* %301, align 1
  %302 = icmp eq i32 %286, 0
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %303, i8* %304, align 1
  %305 = lshr i32 %286, 31
  %306 = trunc i32 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %306, i8* %307, align 1
  %308 = lshr i32 %285, 31
  %309 = xor i32 %305, %308
  %310 = add i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %312, i8* %313, align 1
  store %struct.Memory* %loadMem_41a312, %struct.Memory** %MEMORY
  %loadMem_41a319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 5
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %320 = bitcast %union.anon* %319 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %320, i32 0, i32 0
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 15
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %323 to i64*
  %324 = load i64, i64* %RBP.i553
  %325 = sub i64 %324, 2337
  %326 = load i8, i8* %CL.i
  %327 = zext i8 %326 to i64
  %328 = load i64, i64* %PC.i552
  %329 = add i64 %328, 6
  store i64 %329, i64* %PC.i552
  %330 = inttoptr i64 %325 to i8*
  store i8 %326, i8* %330
  store %struct.Memory* %loadMem_41a319, %struct.Memory** %MEMORY
  %loadMem_41a31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %PC.i551
  %335 = add i64 %334, 30
  %336 = load i64, i64* %PC.i551
  %337 = add i64 %336, 6
  %338 = load i64, i64* %PC.i551
  %339 = add i64 %338, 6
  store i64 %339, i64* %PC.i551
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %341 = load i8, i8* %340, align 1
  %342 = icmp ne i8 %341, 0
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %344 = load i8, i8* %343, align 1
  %345 = icmp ne i8 %344, 0
  %346 = xor i1 %342, %345
  %347 = xor i1 %346, true
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %BRANCH_TAKEN, align 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %350 = select i1 %346, i64 %337, i64 %335
  store i64 %350, i64* %349, align 8
  store %struct.Memory* %loadMem_41a31f, %struct.Memory** %MEMORY
  %loadBr_41a31f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a31f = icmp eq i8 %loadBr_41a31f, 1
  br i1 %cmpBr_41a31f, label %block_.L_41a33d, label %block_41a325

block_41a325:                                     ; preds = %block_.L_41a30e
  %loadMem_41a325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 15
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %RBP.i550
  %361 = sub i64 %360, 16
  %362 = load i64, i64* %PC.i548
  %363 = add i64 %362, 4
  store i64 %363, i64* %PC.i548
  %364 = inttoptr i64 %361 to i64*
  %365 = load i64, i64* %364
  store i64 %365, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_41a325, %struct.Memory** %MEMORY
  %loadMem_41a329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %RBP.i547
  %376 = sub i64 %375, 2324
  %377 = load i64, i64* %PC.i545
  %378 = add i64 %377, 7
  store i64 %378, i64* %PC.i545
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379
  %381 = sext i32 %380 to i64
  store i64 %381, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_41a329, %struct.Memory** %MEMORY
  %loadMem_41a330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %390 to i64*
  %391 = load i64, i64* %RAX.i543
  %392 = load i64, i64* %RCX.i544
  %393 = mul i64 %392, 4
  %394 = add i64 %393, %391
  %395 = load i64, i64* %PC.i542
  %396 = add i64 %395, 4
  store i64 %396, i64* %PC.i542
  %397 = inttoptr i64 %394 to i32*
  %398 = load i32, i32* %397
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %399, align 1
  %400 = and i32 %398, 255
  %401 = call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %404, i8* %405, align 1
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %406, align 1
  %407 = icmp eq i32 %398, 0
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %408, i8* %409, align 1
  %410 = lshr i32 %398, 31
  %411 = trunc i32 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %411, i8* %412, align 1
  %413 = lshr i32 %398, 31
  %414 = xor i32 %410, %413
  %415 = add i32 %414, %413
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %417, i8* %418, align 1
  store %struct.Memory* %loadMem_41a330, %struct.Memory** %MEMORY
  %loadMem_41a334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 7
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %425 = bitcast %union.anon* %424 to %struct.anon.2*
  %DL.i541 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %425, i32 0, i32 0
  %426 = load i64, i64* %PC.i540
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC.i540
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %429 = load i8, i8* %428, align 1
  %430 = icmp eq i8 %429, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %DL.i541, align 1
  store %struct.Memory* %loadMem_41a334, %struct.Memory** %MEMORY
  %loadMem_41a337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 7
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %438 = bitcast %union.anon* %437 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %438, i32 0, i32 0
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 15
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RBP.i539
  %443 = sub i64 %442, 2337
  %444 = load i8, i8* %DL.i
  %445 = zext i8 %444 to i64
  %446 = load i64, i64* %PC.i538
  %447 = add i64 %446, 6
  store i64 %447, i64* %PC.i538
  %448 = inttoptr i64 %443 to i8*
  store i8 %444, i8* %448
  store %struct.Memory* %loadMem_41a337, %struct.Memory** %MEMORY
  br label %block_.L_41a33d

block_.L_41a33d:                                  ; preds = %block_41a325, %block_.L_41a30e
  %loadMem_41a33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %455 = bitcast %union.anon* %454 to %struct.anon.2*
  %AL.i536 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %455, i32 0, i32 0
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %RBP.i537
  %460 = sub i64 %459, 2337
  %461 = load i64, i64* %PC.i535
  %462 = add i64 %461, 6
  store i64 %462, i64* %PC.i535
  %463 = inttoptr i64 %460 to i8*
  %464 = load i8, i8* %463
  store i8 %464, i8* %AL.i536, align 1
  store %struct.Memory* %loadMem_41a33d, %struct.Memory** %MEMORY
  %loadMem_41a343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %471 = bitcast %union.anon* %470 to %struct.anon.2*
  %AL.i534 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %471, i32 0, i32 0
  %472 = load i8, i8* %AL.i534
  %473 = zext i8 %472 to i64
  %474 = load i64, i64* %PC.i533
  %475 = add i64 %474, 2
  store i64 %475, i64* %PC.i533
  %476 = and i64 1, %473
  %477 = trunc i64 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %478, align 1
  %479 = trunc i64 %476 to i32
  %480 = and i32 %479, 255
  %481 = call i32 @llvm.ctpop.i32(i32 %480)
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  %484 = xor i8 %483, 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %484, i8* %485, align 1
  %486 = icmp eq i8 %477, 0
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %487, i8* %488, align 1
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %489, align 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %490, align 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %491, align 1
  store %struct.Memory* %loadMem_41a343, %struct.Memory** %MEMORY
  %loadMem_41a345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %PC.i532
  %496 = add i64 %495, 11
  %497 = load i64, i64* %PC.i532
  %498 = add i64 %497, 6
  %499 = load i64, i64* %PC.i532
  %500 = add i64 %499, 6
  store i64 %500, i64* %PC.i532
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %502 = load i8, i8* %501, align 1
  %503 = icmp eq i8 %502, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %BRANCH_TAKEN, align 1
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %506 = select i1 %503, i64 %496, i64 %498
  store i64 %506, i64* %505, align 8
  store %struct.Memory* %loadMem_41a345, %struct.Memory** %MEMORY
  %loadBr_41a345 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a345 = icmp eq i8 %loadBr_41a345, 1
  br i1 %cmpBr_41a345, label %block_.L_41a350, label %block_41a34b

block_41a34b:                                     ; preds = %block_.L_41a33d
  %loadMem_41a34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %PC.i531
  %511 = add i64 %510, 1080
  %512 = load i64, i64* %PC.i531
  %513 = add i64 %512, 5
  store i64 %513, i64* %PC.i531
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %511, i64* %514, align 8
  store %struct.Memory* %loadMem_41a34b, %struct.Memory** %MEMORY
  br label %block_.L_41a783

block_.L_41a350:                                  ; preds = %block_.L_41a33d
  %loadMem_41a350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i530
  %525 = sub i64 %524, 16
  %526 = load i64, i64* %PC.i528
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC.i528
  %528 = inttoptr i64 %525 to i64*
  %529 = load i64, i64* %528
  store i64 %529, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_41a350, %struct.Memory** %MEMORY
  %loadMem_41a354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 5
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 15
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RBP.i527
  %540 = sub i64 %539, 2324
  %541 = load i64, i64* %PC.i525
  %542 = add i64 %541, 7
  store i64 %542, i64* %PC.i525
  %543 = inttoptr i64 %540 to i32*
  %544 = load i32, i32* %543
  %545 = sext i32 %544 to i64
  store i64 %545, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_41a354, %struct.Memory** %MEMORY
  %loadMem_41a35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 7
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %557 to i64*
  %558 = load i64, i64* %RAX.i522
  %559 = load i64, i64* %RCX.i523
  %560 = mul i64 %559, 4
  %561 = add i64 %560, %558
  %562 = load i64, i64* %PC.i521
  %563 = add i64 %562, 3
  store i64 %563, i64* %PC.i521
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RDX.i524, align 8
  store %struct.Memory* %loadMem_41a35b, %struct.Memory** %MEMORY
  %loadMem_41a35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 7
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %EDX.i519 = bitcast %union.anon* %572 to i32*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 15
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %575 to i64*
  %576 = load i64, i64* %RBP.i520
  %577 = sub i64 %576, 2332
  %578 = load i32, i32* %EDX.i519
  %579 = zext i32 %578 to i64
  %580 = load i64, i64* %PC.i518
  %581 = add i64 %580, 6
  store i64 %581, i64* %PC.i518
  %582 = inttoptr i64 %577 to i32*
  store i32 %578, i32* %582
  store %struct.Memory* %loadMem_41a35e, %struct.Memory** %MEMORY
  %loadMem_41a364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 33
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %585 to i64*
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 1
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 15
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RBP.i517
  %593 = sub i64 %592, 2332
  %594 = load i64, i64* %PC.i515
  %595 = add i64 %594, 7
  store i64 %595, i64* %PC.i515
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RAX.i516, align 8
  store %struct.Memory* %loadMem_41a364, %struct.Memory** %MEMORY
  %loadMem_41a36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 1
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 7
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RDX.i514 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %RAX.i513
  %609 = add i64 %608, 12099168
  %610 = load i64, i64* %PC.i512
  %611 = add i64 %610, 8
  store i64 %611, i64* %PC.i512
  %612 = inttoptr i64 %609 to i8*
  %613 = load i8, i8* %612
  %614 = zext i8 %613 to i64
  store i64 %614, i64* %RDX.i514, align 8
  store %struct.Memory* %loadMem_41a36b, %struct.Memory** %MEMORY
  %loadMem_41a373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %EDX.i511 = bitcast %union.anon* %620 to i32*
  %621 = load i32, i32* %EDX.i511
  %622 = zext i32 %621 to i64
  %623 = load i64, i64* %PC.i510
  %624 = add i64 %623, 3
  store i64 %624, i64* %PC.i510
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %625, align 1
  %626 = and i32 %621, 255
  %627 = call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %630, i8* %631, align 1
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %632, align 1
  %633 = icmp eq i32 %621, 0
  %634 = zext i1 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %634, i8* %635, align 1
  %636 = lshr i32 %621, 31
  %637 = trunc i32 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %637, i8* %638, align 1
  %639 = lshr i32 %621, 31
  %640 = xor i32 %636, %639
  %641 = add i32 %640, %639
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %643, i8* %644, align 1
  store %struct.Memory* %loadMem_41a373, %struct.Memory** %MEMORY
  %loadMem_41a376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %647 to i64*
  %648 = load i64, i64* %PC.i509
  %649 = add i64 %648, 11
  %650 = load i64, i64* %PC.i509
  %651 = add i64 %650, 6
  %652 = load i64, i64* %PC.i509
  %653 = add i64 %652, 6
  store i64 %653, i64* %PC.i509
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %655 = load i8, i8* %654, align 1
  %656 = icmp eq i8 %655, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %BRANCH_TAKEN, align 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %659 = select i1 %656, i64 %649, i64 %651
  store i64 %659, i64* %658, align 8
  store %struct.Memory* %loadMem_41a376, %struct.Memory** %MEMORY
  %loadBr_41a376 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a376 = icmp eq i8 %loadBr_41a376, 1
  br i1 %cmpBr_41a376, label %block_.L_41a381, label %block_41a37c

block_41a37c:                                     ; preds = %block_.L_41a350
  %loadMem_41a37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i508
  %664 = add i64 %663, 1011
  %665 = load i64, i64* %PC.i508
  %666 = add i64 %665, 5
  store i64 %666, i64* %PC.i508
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %664, i64* %667, align 8
  store %struct.Memory* %loadMem_41a37c, %struct.Memory** %MEMORY
  br label %block_.L_41a76f

block_.L_41a381:                                  ; preds = %block_.L_41a350
  %loadMem_41a381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 9
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RSI.i506 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 15
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RBP.i507
  %678 = sub i64 %677, 32
  %679 = load i64, i64* %PC.i505
  %680 = add i64 %679, 4
  store i64 %680, i64* %PC.i505
  store i64 %678, i64* %RSI.i506, align 8
  store %struct.Memory* %loadMem_41a381, %struct.Memory** %MEMORY
  %loadMem_41a385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 11
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RDI.i503 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 15
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %689 to i64*
  %690 = load i64, i64* %RBP.i504
  %691 = sub i64 %690, 2332
  %692 = load i64, i64* %PC.i502
  %693 = add i64 %692, 6
  store i64 %693, i64* %PC.i502
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RDI.i503, align 8
  store %struct.Memory* %loadMem_41a385, %struct.Memory** %MEMORY
  %loadMem1_41a38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %PC.i501
  %701 = add i64 %700, 328693
  %702 = load i64, i64* %PC.i501
  %703 = add i64 %702, 5
  %704 = load i64, i64* %PC.i501
  %705 = add i64 %704, 5
  store i64 %705, i64* %PC.i501
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = add i64 %707, -8
  %709 = inttoptr i64 %708 to i64*
  store i64 %703, i64* %709
  store i64 %708, i64* %706, align 8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %701, i64* %710, align 8
  store %struct.Memory* %loadMem1_41a38b, %struct.Memory** %MEMORY
  %loadMem2_41a38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a38b = load i64, i64* %3
  %call2_41a38b = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_41a38b, %struct.Memory* %loadMem2_41a38b)
  store %struct.Memory* %call2_41a38b, %struct.Memory** %MEMORY
  %loadMem_41a390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %716 to i32*
  %717 = load i32, i32* %EAX.i500
  %718 = zext i32 %717 to i64
  %719 = load i64, i64* %PC.i499
  %720 = add i64 %719, 3
  store i64 %720, i64* %PC.i499
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %721, align 1
  %722 = and i32 %717, 255
  %723 = call i32 @llvm.ctpop.i32(i32 %722)
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %726, i8* %727, align 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %728, align 1
  %729 = icmp eq i32 %717, 0
  %730 = zext i1 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %730, i8* %731, align 1
  %732 = lshr i32 %717, 31
  %733 = trunc i32 %732 to i8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %733, i8* %734, align 1
  %735 = lshr i32 %717, 31
  %736 = xor i32 %732, %735
  %737 = add i32 %736, %735
  %738 = icmp eq i32 %737, 2
  %739 = zext i1 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %739, i8* %740, align 1
  store %struct.Memory* %loadMem_41a390, %struct.Memory** %MEMORY
  %loadMem_41a393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %PC.i498
  %745 = add i64 %744, 11
  %746 = load i64, i64* %PC.i498
  %747 = add i64 %746, 6
  %748 = load i64, i64* %PC.i498
  %749 = add i64 %748, 6
  store i64 %749, i64* %PC.i498
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %751 = load i8, i8* %750, align 1
  %752 = icmp eq i8 %751, 0
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %BRANCH_TAKEN, align 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %755 = select i1 %752, i64 %745, i64 %747
  store i64 %755, i64* %754, align 8
  store %struct.Memory* %loadMem_41a393, %struct.Memory** %MEMORY
  %loadBr_41a393 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a393 = icmp eq i8 %loadBr_41a393, 1
  br i1 %cmpBr_41a393, label %block_.L_41a39e, label %block_41a399

block_41a399:                                     ; preds = %block_.L_41a381
  %loadMem_41a399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 33
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %PC.i497
  %760 = add i64 %759, 982
  %761 = load i64, i64* %PC.i497
  %762 = add i64 %761, 5
  store i64 %762, i64* %PC.i497
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %760, i64* %763, align 8
  store %struct.Memory* %loadMem_41a399, %struct.Memory** %MEMORY
  br label %block_.L_41a76f

block_.L_41a39e:                                  ; preds = %block_.L_41a381
  %loadMem_41a39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 1
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 15
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %RBP.i496
  %774 = sub i64 %773, 32
  %775 = load i64, i64* %PC.i494
  %776 = add i64 %775, 3
  store i64 %776, i64* %PC.i494
  %777 = inttoptr i64 %774 to i32*
  %778 = load i32, i32* %777
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RAX.i495, align 8
  store %struct.Memory* %loadMem_41a39e, %struct.Memory** %MEMORY
  %loadMem_41a3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 5
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 15
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %RBP.i493
  %790 = sub i64 %789, 24
  %791 = load i64, i64* %PC.i491
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC.i491
  %793 = inttoptr i64 %790 to i64*
  %794 = load i64, i64* %793
  store i64 %794, i64* %RCX.i492, align 8
  store %struct.Memory* %loadMem_41a3a1, %struct.Memory** %MEMORY
  %loadMem_41a3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 7
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 15
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RBP.i490
  %805 = sub i64 %804, 28
  %806 = load i64, i64* %PC.i488
  %807 = add i64 %806, 3
  store i64 %807, i64* %PC.i488
  %808 = inttoptr i64 %805 to i32*
  %809 = load i32, i32* %808
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RDX.i489, align 8
  store %struct.Memory* %loadMem_41a3a5, %struct.Memory** %MEMORY
  %loadMem_41a3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 7
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %EDX.i486 = bitcast %union.anon* %816 to i32*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 9
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RSI.i487 = bitcast %union.anon* %819 to i64*
  %820 = load i32, i32* %EDX.i486
  %821 = zext i32 %820 to i64
  %822 = load i64, i64* %PC.i485
  %823 = add i64 %822, 2
  store i64 %823, i64* %PC.i485
  %824 = and i64 %821, 4294967295
  store i64 %824, i64* %RSI.i487, align 8
  store %struct.Memory* %loadMem_41a3a8, %struct.Memory** %MEMORY
  %loadMem_41a3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 9
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %RSI.i484 = bitcast %union.anon* %830 to i64*
  %831 = load i64, i64* %RSI.i484
  %832 = load i64, i64* %PC.i483
  %833 = add i64 %832, 3
  store i64 %833, i64* %PC.i483
  %834 = trunc i64 %831 to i32
  %835 = add i32 1, %834
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RSI.i484, align 8
  %837 = icmp ult i32 %835, %834
  %838 = icmp ult i32 %835, 1
  %839 = or i1 %837, %838
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %840, i8* %841, align 1
  %842 = and i32 %835, 255
  %843 = call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %846, i8* %847, align 1
  %848 = xor i64 1, %831
  %849 = trunc i64 %848 to i32
  %850 = xor i32 %849, %835
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %853, i8* %854, align 1
  %855 = icmp eq i32 %835, 0
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %856, i8* %857, align 1
  %858 = lshr i32 %835, 31
  %859 = trunc i32 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %859, i8* %860, align 1
  %861 = lshr i32 %834, 31
  %862 = xor i32 %858, %861
  %863 = add i32 %862, %858
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %865, i8* %866, align 1
  store %struct.Memory* %loadMem_41a3aa, %struct.Memory** %MEMORY
  %loadMem_41a3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 9
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %ESI.i481 = bitcast %union.anon* %872 to i32*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 15
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RBP.i482
  %877 = sub i64 %876, 28
  %878 = load i32, i32* %ESI.i481
  %879 = zext i32 %878 to i64
  %880 = load i64, i64* %PC.i480
  %881 = add i64 %880, 3
  store i64 %881, i64* %PC.i480
  %882 = inttoptr i64 %877 to i32*
  store i32 %878, i32* %882
  store %struct.Memory* %loadMem_41a3ad, %struct.Memory** %MEMORY
  %loadMem_41a3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 7
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %EDX.i478 = bitcast %union.anon* %888 to i32*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 11
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RDI.i479 = bitcast %union.anon* %891 to i64*
  %892 = load i32, i32* %EDX.i478
  %893 = zext i32 %892 to i64
  %894 = load i64, i64* %PC.i477
  %895 = add i64 %894, 3
  store i64 %895, i64* %PC.i477
  %896 = shl i64 %893, 32
  %897 = ashr exact i64 %896, 32
  store i64 %897, i64* %RDI.i479, align 8
  store %struct.Memory* %loadMem_41a3b0, %struct.Memory** %MEMORY
  %loadMem_41a3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %EAX.i474 = bitcast %union.anon* %903 to i32*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 5
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 11
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RDI.i476 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RCX.i475
  %911 = load i64, i64* %RDI.i476
  %912 = mul i64 %911, 4
  %913 = add i64 %912, %910
  %914 = load i32, i32* %EAX.i474
  %915 = zext i32 %914 to i64
  %916 = load i64, i64* %PC.i473
  %917 = add i64 %916, 3
  store i64 %917, i64* %PC.i473
  %918 = inttoptr i64 %913 to i32*
  store i32 %914, i32* %918
  store %struct.Memory* %loadMem_41a3b3, %struct.Memory** %MEMORY
  %loadMem_41a3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 15
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RBP.i472
  %926 = sub i64 %925, 28
  %927 = load i64, i64* %PC.i471
  %928 = add i64 %927, 7
  store i64 %928, i64* %PC.i471
  %929 = inttoptr i64 %926 to i32*
  %930 = load i32, i32* %929
  %931 = sub i32 %930, 361
  %932 = icmp ult i32 %930, 361
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %933, i8* %934, align 1
  %935 = and i32 %931, 255
  %936 = call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %939, i8* %940, align 1
  %941 = xor i32 %930, 361
  %942 = xor i32 %941, %931
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %945, i8* %946, align 1
  %947 = icmp eq i32 %931, 0
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %948, i8* %949, align 1
  %950 = lshr i32 %931, 31
  %951 = trunc i32 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %951, i8* %952, align 1
  %953 = lshr i32 %930, 31
  %954 = xor i32 %950, %953
  %955 = add i32 %954, %953
  %956 = icmp eq i32 %955, 2
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %957, i8* %958, align 1
  store %struct.Memory* %loadMem_41a3b6, %struct.Memory** %MEMORY
  %loadMem_41a3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %PC.i470
  %963 = add i64 %962, 17
  %964 = load i64, i64* %PC.i470
  %965 = add i64 %964, 6
  %966 = load i64, i64* %PC.i470
  %967 = add i64 %966, 6
  store i64 %967, i64* %PC.i470
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %969 = load i8, i8* %968, align 1
  %970 = icmp eq i8 %969, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %BRANCH_TAKEN, align 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %973 = select i1 %970, i64 %963, i64 %965
  store i64 %973, i64* %972, align 8
  store %struct.Memory* %loadMem_41a3bd, %struct.Memory** %MEMORY
  %loadBr_41a3bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a3bd = icmp eq i8 %loadBr_41a3bd, 1
  br i1 %cmpBr_41a3bd, label %block_.L_41a3ce, label %block_41a3c3

block_41a3c3:                                     ; preds = %block_.L_41a39e
  %loadMem_41a3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 1
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %979 to i64*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 15
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %982 to i64*
  %983 = load i64, i64* %RBP.i469
  %984 = sub i64 %983, 28
  %985 = load i64, i64* %PC.i467
  %986 = add i64 %985, 3
  store i64 %986, i64* %PC.i467
  %987 = inttoptr i64 %984 to i32*
  %988 = load i32, i32* %987
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_41a3c3, %struct.Memory** %MEMORY
  %loadMem_41a3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 1
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %995 to i32*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 15
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %998 to i64*
  %999 = load i64, i64* %RBP.i466
  %1000 = sub i64 %999, 4
  %1001 = load i32, i32* %EAX.i465
  %1002 = zext i32 %1001 to i64
  %1003 = load i64, i64* %PC.i464
  %1004 = add i64 %1003, 3
  store i64 %1004, i64* %PC.i464
  %1005 = inttoptr i64 %1000 to i32*
  store i32 %1001, i32* %1005
  store %struct.Memory* %loadMem_41a3c6, %struct.Memory** %MEMORY
  %loadMem_41a3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %PC.i463
  %1010 = add i64 %1009, 960
  %1011 = load i64, i64* %PC.i463
  %1012 = add i64 %1011, 5
  store i64 %1012, i64* %PC.i463
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1010, i64* %1013, align 8
  store %struct.Memory* %loadMem_41a3c9, %struct.Memory** %MEMORY
  br label %block_.L_41a789

block_.L_41a3ce:                                  ; preds = %block_.L_41a39e
  %loadMem_41a3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 9
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RSI.i462 = bitcast %union.anon* %1019 to i64*
  %1020 = load i64, i64* %PC.i461
  %1021 = add i64 %1020, 5
  store i64 %1021, i64* %PC.i461
  store i64 4, i64* %RSI.i462, align 8
  store %struct.Memory* %loadMem_41a3ce, %struct.Memory** %MEMORY
  %loadMem_41a3d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 33
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 7
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 15
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %1030 to i64*
  %1031 = load i64, i64* %RBP.i460
  %1032 = sub i64 %1031, 64
  %1033 = load i64, i64* %PC.i458
  %1034 = add i64 %1033, 4
  store i64 %1034, i64* %PC.i458
  store i64 %1032, i64* %RDX.i459, align 8
  store %struct.Memory* %loadMem_41a3d3, %struct.Memory** %MEMORY
  %loadMem_41a3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 1
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 15
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1043 to i64*
  %1044 = load i64, i64* %RBP.i457
  %1045 = sub i64 %1044, 32
  %1046 = load i64, i64* %PC.i455
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %PC.i455
  %1048 = inttoptr i64 %1045 to i32*
  %1049 = load i32, i32* %1048
  %1050 = sext i32 %1049 to i64
  store i64 %1050, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_41a3d7, %struct.Memory** %MEMORY
  %loadMem_41a3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 1
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 15
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %RBP.i454
  %1061 = load i64, i64* %RAX.i453
  %1062 = mul i64 %1061, 4
  %1063 = add i64 %1060, -2320
  %1064 = add i64 %1063, %1062
  %1065 = load i64, i64* %PC.i452
  %1066 = add i64 %1065, 11
  store i64 %1066, i64* %PC.i452
  %1067 = inttoptr i64 %1064 to i32*
  store i32 1, i32* %1067
  store %struct.Memory* %loadMem_41a3db, %struct.Memory** %MEMORY
  %loadMem_41a3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 11
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RDI.i450 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 15
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RBP.i451
  %1078 = sub i64 %1077, 2332
  %1079 = load i64, i64* %PC.i449
  %1080 = add i64 %1079, 6
  store i64 %1080, i64* %PC.i449
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RDI.i450, align 8
  store %struct.Memory* %loadMem_41a3e6, %struct.Memory** %MEMORY
  %loadMem1_41a3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %PC.i448
  %1088 = add i64 %1087, -43948
  %1089 = load i64, i64* %PC.i448
  %1090 = add i64 %1089, 5
  %1091 = load i64, i64* %PC.i448
  %1092 = add i64 %1091, 5
  store i64 %1092, i64* %PC.i448
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1094 = load i64, i64* %1093, align 8
  %1095 = add i64 %1094, -8
  %1096 = inttoptr i64 %1095 to i64*
  store i64 %1090, i64* %1096
  store i64 %1095, i64* %1093, align 8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1088, i64* %1097, align 8
  store %struct.Memory* %loadMem1_41a3ec, %struct.Memory** %MEMORY
  %loadMem2_41a3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a3ec = load i64, i64* %3
  %call2_41a3ec = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_41a3ec, %struct.Memory* %loadMem2_41a3ec)
  store %struct.Memory* %call2_41a3ec, %struct.Memory** %MEMORY
  %loadMem_41a3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 1
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %EAX.i446 = bitcast %union.anon* %1103 to i32*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 15
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %RBP.i447
  %1108 = sub i64 %1107, 40
  %1109 = load i32, i32* %EAX.i446
  %1110 = zext i32 %1109 to i64
  %1111 = load i64, i64* %PC.i445
  %1112 = add i64 %1111, 3
  store i64 %1112, i64* %PC.i445
  %1113 = inttoptr i64 %1108 to i32*
  store i32 %1109, i32* %1113
  store %struct.Memory* %loadMem_41a3f1, %struct.Memory** %MEMORY
  %loadMem_41a3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 15
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RBP.i444
  %1121 = sub i64 %1120, 36
  %1122 = load i64, i64* %PC.i443
  %1123 = add i64 %1122, 7
  store i64 %1123, i64* %PC.i443
  %1124 = inttoptr i64 %1121 to i32*
  store i32 0, i32* %1124
  store %struct.Memory* %loadMem_41a3f4, %struct.Memory** %MEMORY
  br label %block_.L_41a3fb

block_.L_41a3fb:                                  ; preds = %block_.L_41a4cb, %block_.L_41a3ce
  %loadMem_41a3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 15
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RBP.i442
  %1135 = sub i64 %1134, 36
  %1136 = load i64, i64* %PC.i440
  %1137 = add i64 %1136, 3
  store i64 %1137, i64* %PC.i440
  %1138 = inttoptr i64 %1135 to i32*
  %1139 = load i32, i32* %1138
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_41a3fb, %struct.Memory** %MEMORY
  %loadMem_41a3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1143 to i64*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 1
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %EAX.i438 = bitcast %union.anon* %1146 to i32*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 15
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %1149 to i64*
  %1150 = load i32, i32* %EAX.i438
  %1151 = zext i32 %1150 to i64
  %1152 = load i64, i64* %RBP.i439
  %1153 = sub i64 %1152, 40
  %1154 = load i64, i64* %PC.i437
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i437
  %1156 = inttoptr i64 %1153 to i32*
  %1157 = load i32, i32* %1156
  %1158 = sub i32 %1150, %1157
  %1159 = icmp ult i32 %1150, %1157
  %1160 = zext i1 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1160, i8* %1161, align 1
  %1162 = and i32 %1158, 255
  %1163 = call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1166, i8* %1167, align 1
  %1168 = xor i32 %1157, %1150
  %1169 = xor i32 %1168, %1158
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1172, i8* %1173, align 1
  %1174 = icmp eq i32 %1158, 0
  %1175 = zext i1 %1174 to i8
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1175, i8* %1176, align 1
  %1177 = lshr i32 %1158, 31
  %1178 = trunc i32 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1178, i8* %1179, align 1
  %1180 = lshr i32 %1150, 31
  %1181 = lshr i32 %1157, 31
  %1182 = xor i32 %1181, %1180
  %1183 = xor i32 %1177, %1180
  %1184 = add i32 %1183, %1182
  %1185 = icmp eq i32 %1184, 2
  %1186 = zext i1 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1186, i8* %1187, align 1
  store %struct.Memory* %loadMem_41a3fe, %struct.Memory** %MEMORY
  %loadMem_41a401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %PC.i436
  %1192 = add i64 %1191, 216
  %1193 = load i64, i64* %PC.i436
  %1194 = add i64 %1193, 6
  %1195 = load i64, i64* %PC.i436
  %1196 = add i64 %1195, 6
  store i64 %1196, i64* %PC.i436
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1198 = load i8, i8* %1197, align 1
  %1199 = icmp ne i8 %1198, 0
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1201 = load i8, i8* %1200, align 1
  %1202 = icmp ne i8 %1201, 0
  %1203 = xor i1 %1199, %1202
  %1204 = xor i1 %1203, true
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %BRANCH_TAKEN, align 1
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1207 = select i1 %1203, i64 %1194, i64 %1192
  store i64 %1207, i64* %1206, align 8
  store %struct.Memory* %loadMem_41a401, %struct.Memory** %MEMORY
  %loadBr_41a401 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a401 = icmp eq i8 %loadBr_41a401, 1
  br i1 %cmpBr_41a401, label %block_.L_41a4d9, label %block_41a407

block_41a407:                                     ; preds = %block_.L_41a3fb
  %loadMem_41a407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 1
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RBP.i435
  %1218 = sub i64 %1217, 36
  %1219 = load i64, i64* %PC.i433
  %1220 = add i64 %1219, 4
  store i64 %1220, i64* %PC.i433
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221
  %1223 = sext i32 %1222 to i64
  store i64 %1223, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_41a407, %struct.Memory** %MEMORY
  %loadMem_41a40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 1
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %1229 to i64*
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 15
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1232 to i64*
  %1233 = load i64, i64* %RBP.i432
  %1234 = load i64, i64* %RAX.i431
  %1235 = mul i64 %1234, 4
  %1236 = add i64 %1233, -64
  %1237 = add i64 %1236, %1235
  %1238 = load i64, i64* %PC.i430
  %1239 = add i64 %1238, 5
  store i64 %1239, i64* %PC.i430
  %1240 = inttoptr i64 %1237 to i32*
  %1241 = load i32, i32* %1240
  %1242 = sext i32 %1241 to i64
  store i64 %1242, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_41a40b, %struct.Memory** %MEMORY
  %loadMem_41a410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 1
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 15
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RBP.i429
  %1253 = load i64, i64* %RAX.i428
  %1254 = mul i64 %1253, 4
  %1255 = add i64 %1252, -2320
  %1256 = add i64 %1255, %1254
  %1257 = load i64, i64* %PC.i427
  %1258 = add i64 %1257, 8
  store i64 %1258, i64* %PC.i427
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1261, align 1
  %1262 = and i32 %1260, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1268, align 1
  %1269 = icmp eq i32 %1260, 0
  %1270 = zext i1 %1269 to i8
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1270, i8* %1271, align 1
  %1272 = lshr i32 %1260, 31
  %1273 = trunc i32 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1273, i8* %1274, align 1
  %1275 = lshr i32 %1260, 31
  %1276 = xor i32 %1272, %1275
  %1277 = add i32 %1276, %1275
  %1278 = icmp eq i32 %1277, 2
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1279, i8* %1280, align 1
  store %struct.Memory* %loadMem_41a410, %struct.Memory** %MEMORY
  %loadMem_41a418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1283 to i64*
  %1284 = load i64, i64* %PC.i426
  %1285 = add i64 %1284, 174
  %1286 = load i64, i64* %PC.i426
  %1287 = add i64 %1286, 6
  %1288 = load i64, i64* %PC.i426
  %1289 = add i64 %1288, 6
  store i64 %1289, i64* %PC.i426
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1291 = load i8, i8* %1290, align 1
  %1292 = icmp eq i8 %1291, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %BRANCH_TAKEN, align 1
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1295 = select i1 %1292, i64 %1285, i64 %1287
  store i64 %1295, i64* %1294, align 8
  store %struct.Memory* %loadMem_41a418, %struct.Memory** %MEMORY
  %loadBr_41a418 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a418 = icmp eq i8 %loadBr_41a418, 1
  br i1 %cmpBr_41a418, label %block_.L_41a4c6, label %block_41a41e

block_41a41e:                                     ; preds = %block_41a407
  %loadMem_41a41e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 7
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RDX.i425 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %PC.i424
  %1303 = add i64 %1302, 10
  store i64 %1303, i64* %PC.i424
  store i64 ptrtoint (%G__0x57abd2_type* @G__0x57abd2 to i64), i64* %RDX.i425, align 8
  store %struct.Memory* %loadMem_41a41e, %struct.Memory** %MEMORY
  %loadMem_41a428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 1
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %EAX.i422 = bitcast %union.anon* %1309 to i32*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 1
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %RAX.i423
  %1314 = load i32, i32* %EAX.i422
  %1315 = zext i32 %1314 to i64
  %1316 = load i64, i64* %PC.i421
  %1317 = add i64 %1316, 2
  store i64 %1317, i64* %PC.i421
  %1318 = xor i64 %1315, %1313
  %1319 = trunc i64 %1318 to i32
  %1320 = and i64 %1318, 4294967295
  store i64 %1320, i64* %RAX.i423, align 8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1321, align 1
  %1322 = and i32 %1319, 255
  %1323 = call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1326, i8* %1327, align 1
  %1328 = icmp eq i32 %1319, 0
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1329, i8* %1330, align 1
  %1331 = lshr i32 %1319, 31
  %1332 = trunc i32 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1332, i8* %1333, align 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1334, align 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1335, align 1
  store %struct.Memory* %loadMem_41a428, %struct.Memory** %MEMORY
  %loadMem_41a42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 5
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 15
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %RBP.i420
  %1346 = sub i64 %1345, 36
  %1347 = load i64, i64* %PC.i418
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %PC.i418
  %1349 = inttoptr i64 %1346 to i32*
  %1350 = load i32, i32* %1349
  %1351 = sext i32 %1350 to i64
  store i64 %1351, i64* %RCX.i419, align 8
  store %struct.Memory* %loadMem_41a42a, %struct.Memory** %MEMORY
  %loadMem_41a42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 5
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 11
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RDI.i416 = bitcast %union.anon* %1360 to i64*
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 15
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %1363 to i64*
  %1364 = load i64, i64* %RBP.i417
  %1365 = load i64, i64* %RCX.i415
  %1366 = mul i64 %1365, 4
  %1367 = add i64 %1364, -64
  %1368 = add i64 %1367, %1366
  %1369 = load i64, i64* %PC.i414
  %1370 = add i64 %1369, 4
  store i64 %1370, i64* %PC.i414
  %1371 = inttoptr i64 %1368 to i32*
  %1372 = load i32, i32* %1371
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RDI.i416, align 8
  store %struct.Memory* %loadMem_41a42e, %struct.Memory** %MEMORY
  %loadMem_41a432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 5
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 15
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RBP.i413
  %1384 = sub i64 %1383, 2332
  %1385 = load i64, i64* %PC.i411
  %1386 = add i64 %1385, 7
  store i64 %1386, i64* %PC.i411
  %1387 = inttoptr i64 %1384 to i32*
  %1388 = load i32, i32* %1387
  %1389 = sext i32 %1388 to i64
  store i64 %1389, i64* %RCX.i412, align 8
  store %struct.Memory* %loadMem_41a432, %struct.Memory** %MEMORY
  %loadMem_41a439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 5
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 9
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RSI.i410 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %RCX.i409
  %1400 = add i64 %1399, 12099168
  %1401 = load i64, i64* %PC.i408
  %1402 = add i64 %1401, 8
  store i64 %1402, i64* %PC.i408
  %1403 = inttoptr i64 %1400 to i8*
  %1404 = load i8, i8* %1403
  %1405 = zext i8 %1404 to i64
  store i64 %1405, i64* %RSI.i410, align 8
  store %struct.Memory* %loadMem_41a439, %struct.Memory** %MEMORY
  %loadMem_41a441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 5
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 15
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %RBP.i407
  %1416 = sub i64 %1415, 2332
  %1417 = load i64, i64* %PC.i405
  %1418 = add i64 %1417, 6
  store i64 %1418, i64* %PC.i405
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419
  %1421 = zext i32 %1420 to i64
  store i64 %1421, i64* %RCX.i406, align 8
  store %struct.Memory* %loadMem_41a441, %struct.Memory** %MEMORY
  %loadMem_41a447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 1
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %1427 to i32*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 17
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %R8D.i404 = bitcast %union.anon* %1430 to i32*
  %1431 = bitcast i32* %R8D.i404 to i64*
  %1432 = load i32, i32* %EAX.i403
  %1433 = zext i32 %1432 to i64
  %1434 = load i64, i64* %PC.i402
  %1435 = add i64 %1434, 3
  store i64 %1435, i64* %PC.i402
  %1436 = and i64 %1433, 4294967295
  store i64 %1436, i64* %1431, align 8
  store %struct.Memory* %loadMem_41a447, %struct.Memory** %MEMORY
  %loadMem_41a44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 1
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %EAX.i400 = bitcast %union.anon* %1442 to i32*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 19
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %R9D.i401 = bitcast %union.anon* %1445 to i32*
  %1446 = bitcast i32* %R9D.i401 to i64*
  %1447 = load i32, i32* %EAX.i400
  %1448 = zext i32 %1447 to i64
  %1449 = load i64, i64* %PC.i399
  %1450 = add i64 %1449, 3
  store i64 %1450, i64* %PC.i399
  %1451 = and i64 %1448, 4294967295
  store i64 %1451, i64* %1446, align 8
  store %struct.Memory* %loadMem_41a44a, %struct.Memory** %MEMORY
  %loadMem1_41a44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %PC.i398
  %1456 = add i64 %1455, -71197
  %1457 = load i64, i64* %PC.i398
  %1458 = add i64 %1457, 5
  %1459 = load i64, i64* %PC.i398
  %1460 = add i64 %1459, 5
  store i64 %1460, i64* %PC.i398
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1462 = load i64, i64* %1461, align 8
  %1463 = add i64 %1462, -8
  %1464 = inttoptr i64 %1463 to i64*
  store i64 %1458, i64* %1464
  store i64 %1463, i64* %1461, align 8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1456, i64* %1465, align 8
  store %struct.Memory* %loadMem1_41a44d, %struct.Memory** %MEMORY
  %loadMem2_41a44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a44d = load i64, i64* %3
  %call2_41a44d = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_41a44d, %struct.Memory* %loadMem2_41a44d)
  store %struct.Memory* %call2_41a44d, %struct.Memory** %MEMORY
  %loadMem_41a452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %EAX.i397 = bitcast %union.anon* %1471 to i32*
  %1472 = load i32, i32* %EAX.i397
  %1473 = zext i32 %1472 to i64
  %1474 = load i64, i64* %PC.i396
  %1475 = add i64 %1474, 3
  store i64 %1475, i64* %PC.i396
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1476, align 1
  %1477 = and i32 %1472, 255
  %1478 = call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1481, i8* %1482, align 1
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1483, align 1
  %1484 = icmp eq i32 %1472, 0
  %1485 = zext i1 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i32 %1472, 31
  %1488 = trunc i32 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1488, i8* %1489, align 1
  %1490 = lshr i32 %1472, 31
  %1491 = xor i32 %1487, %1490
  %1492 = add i32 %1491, %1490
  %1493 = icmp eq i32 %1492, 2
  %1494 = zext i1 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1494, i8* %1495, align 1
  store %struct.Memory* %loadMem_41a452, %struct.Memory** %MEMORY
  %loadMem_41a455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 33
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1498 to i64*
  %1499 = load i64, i64* %PC.i395
  %1500 = add i64 %1499, 113
  %1501 = load i64, i64* %PC.i395
  %1502 = add i64 %1501, 6
  %1503 = load i64, i64* %PC.i395
  %1504 = add i64 %1503, 6
  store i64 %1504, i64* %PC.i395
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1506 = load i8, i8* %1505, align 1
  store i8 %1506, i8* %BRANCH_TAKEN, align 1
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1508 = icmp ne i8 %1506, 0
  %1509 = select i1 %1508, i64 %1500, i64 %1502
  store i64 %1509, i64* %1507, align 8
  store %struct.Memory* %loadMem_41a455, %struct.Memory** %MEMORY
  %loadBr_41a455 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a455 = icmp eq i8 %loadBr_41a455, 1
  br i1 %cmpBr_41a455, label %block_.L_41a4c6, label %block_41a45b

block_41a45b:                                     ; preds = %block_41a41e
  %loadMem_41a45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 1
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %EAX.i393 = bitcast %union.anon* %1515 to i32*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 1
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RAX.i394
  %1520 = load i32, i32* %EAX.i393
  %1521 = zext i32 %1520 to i64
  %1522 = load i64, i64* %PC.i392
  %1523 = add i64 %1522, 2
  store i64 %1523, i64* %PC.i392
  %1524 = xor i64 %1521, %1519
  %1525 = trunc i64 %1524 to i32
  %1526 = and i64 %1524, 4294967295
  store i64 %1526, i64* %RAX.i394, align 8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1527, align 1
  %1528 = and i32 %1525, 255
  %1529 = call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1532, i8* %1533, align 1
  %1534 = icmp eq i32 %1525, 0
  %1535 = zext i1 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1535, i8* %1536, align 1
  %1537 = lshr i32 %1525, 31
  %1538 = trunc i32 %1537 to i8
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1538, i8* %1539, align 1
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1540, align 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1541, align 1
  store %struct.Memory* %loadMem_41a45b, %struct.Memory** %MEMORY
  %loadMem_41a45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %1547 to i32*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 9
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RSI.i391 = bitcast %union.anon* %1550 to i64*
  %1551 = load i32, i32* %EAX.i390
  %1552 = zext i32 %1551 to i64
  %1553 = load i64, i64* %PC.i389
  %1554 = add i64 %1553, 2
  store i64 %1554, i64* %PC.i389
  %1555 = and i64 %1552, 4294967295
  store i64 %1555, i64* %RSI.i391, align 8
  store %struct.Memory* %loadMem_41a45d, %struct.Memory** %MEMORY
  %loadMem_41a45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 11
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RDI.i387 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 15
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RBP.i388
  %1566 = sub i64 %1565, 2332
  %1567 = load i64, i64* %PC.i386
  %1568 = add i64 %1567, 6
  store i64 %1568, i64* %PC.i386
  %1569 = inttoptr i64 %1566 to i32*
  %1570 = load i32, i32* %1569
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RDI.i387, align 8
  store %struct.Memory* %loadMem_41a45f, %struct.Memory** %MEMORY
  %loadMem1_41a465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1574 to i64*
  %1575 = load i64, i64* %PC.i385
  %1576 = add i64 %1575, 276187
  %1577 = load i64, i64* %PC.i385
  %1578 = add i64 %1577, 5
  %1579 = load i64, i64* %PC.i385
  %1580 = add i64 %1579, 5
  store i64 %1580, i64* %PC.i385
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1582 = load i64, i64* %1581, align 8
  %1583 = add i64 %1582, -8
  %1584 = inttoptr i64 %1583 to i64*
  store i64 %1578, i64* %1584
  store i64 %1583, i64* %1581, align 8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1576, i64* %1585, align 8
  store %struct.Memory* %loadMem1_41a465, %struct.Memory** %MEMORY
  %loadMem2_41a465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a465 = load i64, i64* %3
  %call2_41a465 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_41a465, %struct.Memory* %loadMem2_41a465)
  store %struct.Memory* %call2_41a465, %struct.Memory** %MEMORY
  %loadMem_41a46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 1
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %EAX.i384 = bitcast %union.anon* %1591 to i32*
  %1592 = load i32, i32* %EAX.i384
  %1593 = zext i32 %1592 to i64
  %1594 = load i64, i64* %PC.i383
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i383
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1596, align 1
  %1597 = and i32 %1592, 255
  %1598 = call i32 @llvm.ctpop.i32(i32 %1597)
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = xor i8 %1600, 1
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1601, i8* %1602, align 1
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1603, align 1
  %1604 = icmp eq i32 %1592, 0
  %1605 = zext i1 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1605, i8* %1606, align 1
  %1607 = lshr i32 %1592, 31
  %1608 = trunc i32 %1607 to i8
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1608, i8* %1609, align 1
  %1610 = lshr i32 %1592, 31
  %1611 = xor i32 %1607, %1610
  %1612 = add i32 %1611, %1610
  %1613 = icmp eq i32 %1612, 2
  %1614 = zext i1 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1614, i8* %1615, align 1
  store %struct.Memory* %loadMem_41a46a, %struct.Memory** %MEMORY
  %loadMem_41a46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %PC.i382
  %1620 = add i64 %1619, 55
  %1621 = load i64, i64* %PC.i382
  %1622 = add i64 %1621, 6
  %1623 = load i64, i64* %PC.i382
  %1624 = add i64 %1623, 6
  store i64 %1624, i64* %PC.i382
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1626 = load i8, i8* %1625, align 1
  %1627 = icmp eq i8 %1626, 0
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %BRANCH_TAKEN, align 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1630 = select i1 %1627, i64 %1620, i64 %1622
  store i64 %1630, i64* %1629, align 8
  store %struct.Memory* %loadMem_41a46d, %struct.Memory** %MEMORY
  %loadBr_41a46d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a46d = icmp eq i8 %loadBr_41a46d, 1
  br i1 %cmpBr_41a46d, label %block_.L_41a4a4, label %block_41a473

block_41a473:                                     ; preds = %block_41a45b
  %loadMem_41a473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 1
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 15
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RBP.i381
  %1641 = sub i64 %1640, 36
  %1642 = load i64, i64* %PC.i379
  %1643 = add i64 %1642, 4
  store i64 %1643, i64* %PC.i379
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644
  %1646 = sext i32 %1645 to i64
  store i64 %1646, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_41a473, %struct.Memory** %MEMORY
  %loadMem_41a477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 33
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %1649 to i64*
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 1
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 5
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %RBP.i378
  %1660 = load i64, i64* %RAX.i376
  %1661 = mul i64 %1660, 4
  %1662 = add i64 %1659, -64
  %1663 = add i64 %1662, %1661
  %1664 = load i64, i64* %PC.i375
  %1665 = add i64 %1664, 4
  store i64 %1665, i64* %PC.i375
  %1666 = inttoptr i64 %1663 to i32*
  %1667 = load i32, i32* %1666
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RCX.i377, align 8
  store %struct.Memory* %loadMem_41a477, %struct.Memory** %MEMORY
  %loadMem_41a47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 33
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 1
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 15
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %1677 to i64*
  %1678 = load i64, i64* %RBP.i374
  %1679 = sub i64 %1678, 24
  %1680 = load i64, i64* %PC.i372
  %1681 = add i64 %1680, 4
  store i64 %1681, i64* %PC.i372
  %1682 = inttoptr i64 %1679 to i64*
  %1683 = load i64, i64* %1682
  store i64 %1683, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_41a47b, %struct.Memory** %MEMORY
  %loadMem_41a47f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 33
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 7
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %RDX.i370 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 15
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %1692 to i64*
  %1693 = load i64, i64* %RBP.i371
  %1694 = sub i64 %1693, 28
  %1695 = load i64, i64* %PC.i369
  %1696 = add i64 %1695, 3
  store i64 %1696, i64* %PC.i369
  %1697 = inttoptr i64 %1694 to i32*
  %1698 = load i32, i32* %1697
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RDX.i370, align 8
  store %struct.Memory* %loadMem_41a47f, %struct.Memory** %MEMORY
  %loadMem_41a482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 7
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %EDX.i367 = bitcast %union.anon* %1705 to i32*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 9
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %RSI.i368 = bitcast %union.anon* %1708 to i64*
  %1709 = load i32, i32* %EDX.i367
  %1710 = zext i32 %1709 to i64
  %1711 = load i64, i64* %PC.i366
  %1712 = add i64 %1711, 2
  store i64 %1712, i64* %PC.i366
  %1713 = and i64 %1710, 4294967295
  store i64 %1713, i64* %RSI.i368, align 8
  store %struct.Memory* %loadMem_41a482, %struct.Memory** %MEMORY
  %loadMem_41a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 9
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RSI.i365 = bitcast %union.anon* %1719 to i64*
  %1720 = load i64, i64* %RSI.i365
  %1721 = load i64, i64* %PC.i364
  %1722 = add i64 %1721, 3
  store i64 %1722, i64* %PC.i364
  %1723 = trunc i64 %1720 to i32
  %1724 = add i32 1, %1723
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RSI.i365, align 8
  %1726 = icmp ult i32 %1724, %1723
  %1727 = icmp ult i32 %1724, 1
  %1728 = or i1 %1726, %1727
  %1729 = zext i1 %1728 to i8
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1729, i8* %1730, align 1
  %1731 = and i32 %1724, 255
  %1732 = call i32 @llvm.ctpop.i32(i32 %1731)
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  %1735 = xor i8 %1734, 1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1735, i8* %1736, align 1
  %1737 = xor i64 1, %1720
  %1738 = trunc i64 %1737 to i32
  %1739 = xor i32 %1738, %1724
  %1740 = lshr i32 %1739, 4
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1742, i8* %1743, align 1
  %1744 = icmp eq i32 %1724, 0
  %1745 = zext i1 %1744 to i8
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1745, i8* %1746, align 1
  %1747 = lshr i32 %1724, 31
  %1748 = trunc i32 %1747 to i8
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1748, i8* %1749, align 1
  %1750 = lshr i32 %1723, 31
  %1751 = xor i32 %1747, %1750
  %1752 = add i32 %1751, %1747
  %1753 = icmp eq i32 %1752, 2
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1754, i8* %1755, align 1
  store %struct.Memory* %loadMem_41a484, %struct.Memory** %MEMORY
  %loadMem_41a487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 9
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %ESI.i362 = bitcast %union.anon* %1761 to i32*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 15
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RBP.i363
  %1766 = sub i64 %1765, 28
  %1767 = load i32, i32* %ESI.i362
  %1768 = zext i32 %1767 to i64
  %1769 = load i64, i64* %PC.i361
  %1770 = add i64 %1769, 3
  store i64 %1770, i64* %PC.i361
  %1771 = inttoptr i64 %1766 to i32*
  store i32 %1767, i32* %1771
  store %struct.Memory* %loadMem_41a487, %struct.Memory** %MEMORY
  %loadMem_41a48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 7
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %EDX.i359 = bitcast %union.anon* %1777 to i32*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 11
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RDI.i360 = bitcast %union.anon* %1780 to i64*
  %1781 = load i32, i32* %EDX.i359
  %1782 = zext i32 %1781 to i64
  %1783 = load i64, i64* %PC.i358
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %PC.i358
  %1785 = shl i64 %1782, 32
  %1786 = ashr exact i64 %1785, 32
  store i64 %1786, i64* %RDI.i360, align 8
  store %struct.Memory* %loadMem_41a48a, %struct.Memory** %MEMORY
  %loadMem_41a48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 5
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %ECX.i355 = bitcast %union.anon* %1792 to i32*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 1
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 11
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RDI.i357 = bitcast %union.anon* %1798 to i64*
  %1799 = load i64, i64* %RAX.i356
  %1800 = load i64, i64* %RDI.i357
  %1801 = mul i64 %1800, 4
  %1802 = add i64 %1801, %1799
  %1803 = load i32, i32* %ECX.i355
  %1804 = zext i32 %1803 to i64
  %1805 = load i64, i64* %PC.i354
  %1806 = add i64 %1805, 3
  store i64 %1806, i64* %PC.i354
  %1807 = inttoptr i64 %1802 to i32*
  store i32 %1803, i32* %1807
  store %struct.Memory* %loadMem_41a48d, %struct.Memory** %MEMORY
  %loadMem_41a490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 1
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 15
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1816 to i64*
  %1817 = load i64, i64* %RBP.i353
  %1818 = sub i64 %1817, 36
  %1819 = load i64, i64* %PC.i351
  %1820 = add i64 %1819, 4
  store i64 %1820, i64* %PC.i351
  %1821 = inttoptr i64 %1818 to i32*
  %1822 = load i32, i32* %1821
  %1823 = sext i32 %1822 to i64
  store i64 %1823, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_41a490, %struct.Memory** %MEMORY
  %loadMem_41a494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 1
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 15
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RBP.i350
  %1834 = load i64, i64* %RAX.i349
  %1835 = mul i64 %1834, 4
  %1836 = add i64 %1833, -64
  %1837 = add i64 %1836, %1835
  %1838 = load i64, i64* %PC.i348
  %1839 = add i64 %1838, 5
  store i64 %1839, i64* %PC.i348
  %1840 = inttoptr i64 %1837 to i32*
  %1841 = load i32, i32* %1840
  %1842 = sext i32 %1841 to i64
  store i64 %1842, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_41a494, %struct.Memory** %MEMORY
  %loadMem_41a499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 1
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 15
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %RBP.i347
  %1853 = load i64, i64* %RAX.i346
  %1854 = mul i64 %1853, 4
  %1855 = add i64 %1852, -2320
  %1856 = add i64 %1855, %1854
  %1857 = load i64, i64* %PC.i345
  %1858 = add i64 %1857, 11
  store i64 %1858, i64* %PC.i345
  %1859 = inttoptr i64 %1856 to i32*
  store i32 1, i32* %1859
  store %struct.Memory* %loadMem_41a499, %struct.Memory** %MEMORY
  br label %block_.L_41a4a4

block_.L_41a4a4:                                  ; preds = %block_41a473, %block_41a45b
  %loadMem1_41a4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i344
  %1864 = add i64 %1863, -51012
  %1865 = load i64, i64* %PC.i344
  %1866 = add i64 %1865, 5
  %1867 = load i64, i64* %PC.i344
  %1868 = add i64 %1867, 5
  store i64 %1868, i64* %PC.i344
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1870 = load i64, i64* %1869, align 8
  %1871 = add i64 %1870, -8
  %1872 = inttoptr i64 %1871 to i64*
  store i64 %1866, i64* %1872
  store i64 %1871, i64* %1869, align 8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1864, i64* %1873, align 8
  store %struct.Memory* %loadMem1_41a4a4, %struct.Memory** %MEMORY
  %loadMem2_41a4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a4a4 = load i64, i64* %3
  %call2_41a4a4 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_41a4a4, %struct.Memory* %loadMem2_41a4a4)
  store %struct.Memory* %call2_41a4a4, %struct.Memory** %MEMORY
  %loadMem_41a4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 15
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1879 to i64*
  %1880 = load i64, i64* %RBP.i343
  %1881 = sub i64 %1880, 28
  %1882 = load i64, i64* %PC.i342
  %1883 = add i64 %1882, 7
  store i64 %1883, i64* %PC.i342
  %1884 = inttoptr i64 %1881 to i32*
  %1885 = load i32, i32* %1884
  %1886 = sub i32 %1885, 361
  %1887 = icmp ult i32 %1885, 361
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
  %1896 = xor i32 %1885, 361
  %1897 = xor i32 %1896, %1886
  %1898 = lshr i32 %1897, 4
  %1899 = trunc i32 %1898 to i8
  %1900 = and i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1900, i8* %1901, align 1
  %1902 = icmp eq i32 %1886, 0
  %1903 = zext i1 %1902 to i8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1903, i8* %1904, align 1
  %1905 = lshr i32 %1886, 31
  %1906 = trunc i32 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i32 %1885, 31
  %1909 = xor i32 %1905, %1908
  %1910 = add i32 %1909, %1908
  %1911 = icmp eq i32 %1910, 2
  %1912 = zext i1 %1911 to i8
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1912, i8* %1913, align 1
  store %struct.Memory* %loadMem_41a4a9, %struct.Memory** %MEMORY
  %loadMem_41a4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %PC.i341
  %1918 = add i64 %1917, 17
  %1919 = load i64, i64* %PC.i341
  %1920 = add i64 %1919, 6
  %1921 = load i64, i64* %PC.i341
  %1922 = add i64 %1921, 6
  store i64 %1922, i64* %PC.i341
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1924 = load i8, i8* %1923, align 1
  %1925 = icmp eq i8 %1924, 0
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %BRANCH_TAKEN, align 1
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1928 = select i1 %1925, i64 %1918, i64 %1920
  store i64 %1928, i64* %1927, align 8
  store %struct.Memory* %loadMem_41a4b0, %struct.Memory** %MEMORY
  %loadBr_41a4b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a4b0 = icmp eq i8 %loadBr_41a4b0, 1
  br i1 %cmpBr_41a4b0, label %block_.L_41a4c1, label %block_41a4b6

block_41a4b6:                                     ; preds = %block_.L_41a4a4
  %loadMem_41a4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 1
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i340
  %1939 = sub i64 %1938, 28
  %1940 = load i64, i64* %PC.i338
  %1941 = add i64 %1940, 3
  store i64 %1941, i64* %PC.i338
  %1942 = inttoptr i64 %1939 to i32*
  %1943 = load i32, i32* %1942
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_41a4b6, %struct.Memory** %MEMORY
  %loadMem_41a4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 1
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %1950 to i32*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i337
  %1955 = sub i64 %1954, 4
  %1956 = load i32, i32* %EAX.i336
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC.i335
  %1959 = add i64 %1958, 3
  store i64 %1959, i64* %PC.i335
  %1960 = inttoptr i64 %1955 to i32*
  store i32 %1956, i32* %1960
  store %struct.Memory* %loadMem_41a4b9, %struct.Memory** %MEMORY
  %loadMem_41a4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %PC.i334
  %1965 = add i64 %1964, 717
  %1966 = load i64, i64* %PC.i334
  %1967 = add i64 %1966, 5
  store i64 %1967, i64* %PC.i334
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1965, i64* %1968, align 8
  store %struct.Memory* %loadMem_41a4bc, %struct.Memory** %MEMORY
  br label %block_.L_41a789

block_.L_41a4c1:                                  ; preds = %block_.L_41a4a4
  %loadMem_41a4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 33
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %PC.i333
  %1973 = add i64 %1972, 5
  %1974 = load i64, i64* %PC.i333
  %1975 = add i64 %1974, 5
  store i64 %1975, i64* %PC.i333
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1973, i64* %1976, align 8
  store %struct.Memory* %loadMem_41a4c1, %struct.Memory** %MEMORY
  br label %block_.L_41a4c6

block_.L_41a4c6:                                  ; preds = %block_.L_41a4c1, %block_41a41e, %block_41a407
  %loadMem_41a4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i332
  %1981 = add i64 %1980, 5
  %1982 = load i64, i64* %PC.i332
  %1983 = add i64 %1982, 5
  store i64 %1983, i64* %PC.i332
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1981, i64* %1984, align 8
  store %struct.Memory* %loadMem_41a4c6, %struct.Memory** %MEMORY
  br label %block_.L_41a4cb

block_.L_41a4cb:                                  ; preds = %block_.L_41a4c6
  %loadMem_41a4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 1
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 15
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %RBP.i331
  %1995 = sub i64 %1994, 36
  %1996 = load i64, i64* %PC.i329
  %1997 = add i64 %1996, 3
  store i64 %1997, i64* %PC.i329
  %1998 = inttoptr i64 %1995 to i32*
  %1999 = load i32, i32* %1998
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_41a4cb, %struct.Memory** %MEMORY
  %loadMem_41a4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 1
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RAX.i328
  %2008 = load i64, i64* %PC.i327
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i327
  %2010 = trunc i64 %2007 to i32
  %2011 = add i32 1, %2010
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RAX.i328, align 8
  %2013 = icmp ult i32 %2011, %2010
  %2014 = icmp ult i32 %2011, 1
  %2015 = or i1 %2013, %2014
  %2016 = zext i1 %2015 to i8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2016, i8* %2017, align 1
  %2018 = and i32 %2011, 255
  %2019 = call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2022, i8* %2023, align 1
  %2024 = xor i64 1, %2007
  %2025 = trunc i64 %2024 to i32
  %2026 = xor i32 %2025, %2011
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2029, i8* %2030, align 1
  %2031 = icmp eq i32 %2011, 0
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2032, i8* %2033, align 1
  %2034 = lshr i32 %2011, 31
  %2035 = trunc i32 %2034 to i8
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2035, i8* %2036, align 1
  %2037 = lshr i32 %2010, 31
  %2038 = xor i32 %2034, %2037
  %2039 = add i32 %2038, %2034
  %2040 = icmp eq i32 %2039, 2
  %2041 = zext i1 %2040 to i8
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2041, i8* %2042, align 1
  store %struct.Memory* %loadMem_41a4ce, %struct.Memory** %MEMORY
  %loadMem_41a4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 1
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %EAX.i325 = bitcast %union.anon* %2048 to i32*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 15
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %2051 to i64*
  %2052 = load i64, i64* %RBP.i326
  %2053 = sub i64 %2052, 36
  %2054 = load i32, i32* %EAX.i325
  %2055 = zext i32 %2054 to i64
  %2056 = load i64, i64* %PC.i324
  %2057 = add i64 %2056, 3
  store i64 %2057, i64* %PC.i324
  %2058 = inttoptr i64 %2053 to i32*
  store i32 %2054, i32* %2058
  store %struct.Memory* %loadMem_41a4d1, %struct.Memory** %MEMORY
  %loadMem_41a4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 33
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2061 to i64*
  %2062 = load i64, i64* %PC.i323
  %2063 = add i64 %2062, -217
  %2064 = load i64, i64* %PC.i323
  %2065 = add i64 %2064, 5
  store i64 %2065, i64* %PC.i323
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2063, i64* %2066, align 8
  store %struct.Memory* %loadMem_41a4d4, %struct.Memory** %MEMORY
  br label %block_.L_41a3fb

block_.L_41a4d9:                                  ; preds = %block_.L_41a3fb
  %loadMem_41a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 9
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RSI.i321 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 15
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %RBP.i322
  %2077 = sub i64 %2076, 720
  %2078 = load i64, i64* %PC.i320
  %2079 = add i64 %2078, 7
  store i64 %2079, i64* %PC.i320
  store i64 %2077, i64* %RSI.i321, align 8
  store %struct.Memory* %loadMem_41a4d9, %struct.Memory** %MEMORY
  %loadMem_41a4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 11
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RDI.i318 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 15
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %RBP.i319
  %2090 = sub i64 %2089, 2332
  %2091 = load i64, i64* %PC.i317
  %2092 = add i64 %2091, 6
  store i64 %2092, i64* %PC.i317
  %2093 = inttoptr i64 %2090 to i32*
  %2094 = load i32, i32* %2093
  %2095 = zext i32 %2094 to i64
  store i64 %2095, i64* %RDI.i318, align 8
  store %struct.Memory* %loadMem_41a4e0, %struct.Memory** %MEMORY
  %loadMem1_41a4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %PC.i316
  %2100 = add i64 %2099, -27110
  %2101 = load i64, i64* %PC.i316
  %2102 = add i64 %2101, 5
  %2103 = load i64, i64* %PC.i316
  %2104 = add i64 %2103, 5
  store i64 %2104, i64* %PC.i316
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2106 = load i64, i64* %2105, align 8
  %2107 = add i64 %2106, -8
  %2108 = inttoptr i64 %2107 to i64*
  store i64 %2102, i64* %2108
  store i64 %2107, i64* %2105, align 8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2100, i64* %2109, align 8
  store %struct.Memory* %loadMem1_41a4e6, %struct.Memory** %MEMORY
  %loadMem2_41a4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a4e6 = load i64, i64* %3
  %call2_41a4e6 = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64 %loadPC_41a4e6, %struct.Memory* %loadMem2_41a4e6)
  store %struct.Memory* %call2_41a4e6, %struct.Memory** %MEMORY
  %loadMem_41a4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 1
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %EAX.i314 = bitcast %union.anon* %2115 to i32*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 15
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RBP.i315
  %2120 = sub i64 %2119, 68
  %2121 = load i32, i32* %EAX.i314
  %2122 = zext i32 %2121 to i64
  %2123 = load i64, i64* %PC.i313
  %2124 = add i64 %2123, 3
  store i64 %2124, i64* %PC.i313
  %2125 = inttoptr i64 %2120 to i32*
  store i32 %2121, i32* %2125
  store %struct.Memory* %loadMem_41a4eb, %struct.Memory** %MEMORY
  %loadMem_41a4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 15
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %2131 to i64*
  %2132 = load i64, i64* %RBP.i312
  %2133 = sub i64 %2132, 36
  %2134 = load i64, i64* %PC.i311
  %2135 = add i64 %2134, 7
  store i64 %2135, i64* %PC.i311
  %2136 = inttoptr i64 %2133 to i32*
  store i32 0, i32* %2136
  store %struct.Memory* %loadMem_41a4ee, %struct.Memory** %MEMORY
  br label %block_.L_41a4f5

block_.L_41a4f5:                                  ; preds = %block_.L_41a6d0, %block_.L_41a4d9
  %loadMem_41a4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 1
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 15
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %2145 to i64*
  %2146 = load i64, i64* %RBP.i310
  %2147 = sub i64 %2146, 36
  %2148 = load i64, i64* %PC.i308
  %2149 = add i64 %2148, 3
  store i64 %2149, i64* %PC.i308
  %2150 = inttoptr i64 %2147 to i32*
  %2151 = load i32, i32* %2150
  %2152 = zext i32 %2151 to i64
  store i64 %2152, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_41a4f5, %struct.Memory** %MEMORY
  %loadMem_41a4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 1
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %2158 to i32*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 15
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %2161 to i64*
  %2162 = load i32, i32* %EAX.i306
  %2163 = zext i32 %2162 to i64
  %2164 = load i64, i64* %RBP.i307
  %2165 = sub i64 %2164, 68
  %2166 = load i64, i64* %PC.i305
  %2167 = add i64 %2166, 3
  store i64 %2167, i64* %PC.i305
  %2168 = inttoptr i64 %2165 to i32*
  %2169 = load i32, i32* %2168
  %2170 = sub i32 %2162, %2169
  %2171 = icmp ult i32 %2162, %2169
  %2172 = zext i1 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2172, i8* %2173, align 1
  %2174 = and i32 %2170, 255
  %2175 = call i32 @llvm.ctpop.i32(i32 %2174)
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2178, i8* %2179, align 1
  %2180 = xor i32 %2169, %2162
  %2181 = xor i32 %2180, %2170
  %2182 = lshr i32 %2181, 4
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2184, i8* %2185, align 1
  %2186 = icmp eq i32 %2170, 0
  %2187 = zext i1 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2187, i8* %2188, align 1
  %2189 = lshr i32 %2170, 31
  %2190 = trunc i32 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2190, i8* %2191, align 1
  %2192 = lshr i32 %2162, 31
  %2193 = lshr i32 %2169, 31
  %2194 = xor i32 %2193, %2192
  %2195 = xor i32 %2189, %2192
  %2196 = add i32 %2195, %2194
  %2197 = icmp eq i32 %2196, 2
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2198, i8* %2199, align 1
  store %struct.Memory* %loadMem_41a4f8, %struct.Memory** %MEMORY
  %loadMem_41a4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %PC.i304
  %2204 = add i64 %2203, 483
  %2205 = load i64, i64* %PC.i304
  %2206 = add i64 %2205, 6
  %2207 = load i64, i64* %PC.i304
  %2208 = add i64 %2207, 6
  store i64 %2208, i64* %PC.i304
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2210 = load i8, i8* %2209, align 1
  %2211 = icmp ne i8 %2210, 0
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2213 = load i8, i8* %2212, align 1
  %2214 = icmp ne i8 %2213, 0
  %2215 = xor i1 %2211, %2214
  %2216 = xor i1 %2215, true
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %BRANCH_TAKEN, align 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2219 = select i1 %2215, i64 %2206, i64 %2204
  store i64 %2219, i64* %2218, align 8
  store %struct.Memory* %loadMem_41a4fb, %struct.Memory** %MEMORY
  %loadBr_41a4fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a4fb = icmp eq i8 %loadBr_41a4fb, 1
  br i1 %cmpBr_41a4fb, label %block_.L_41a6de, label %block_41a501

block_41a501:                                     ; preds = %block_.L_41a4f5
  %loadMem_41a501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 9
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RSI.i302 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 15
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %2228 to i64*
  %2229 = load i64, i64* %RBP.i303
  %2230 = sub i64 %2229, 2336
  %2231 = load i64, i64* %PC.i301
  %2232 = add i64 %2231, 7
  store i64 %2232, i64* %PC.i301
  store i64 %2230, i64* %RSI.i302, align 8
  store %struct.Memory* %loadMem_41a501, %struct.Memory** %MEMORY
  %loadMem_41a508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %RBP.i300
  %2243 = sub i64 %2242, 36
  %2244 = load i64, i64* %PC.i298
  %2245 = add i64 %2244, 4
  store i64 %2245, i64* %PC.i298
  %2246 = inttoptr i64 %2243 to i32*
  %2247 = load i32, i32* %2246
  %2248 = sext i32 %2247 to i64
  store i64 %2248, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_41a508, %struct.Memory** %MEMORY
  %loadMem_41a50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 1
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 11
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RDI.i296 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 15
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RBP.i297
  %2262 = load i64, i64* %RAX.i295
  %2263 = mul i64 %2262, 4
  %2264 = add i64 %2261, -720
  %2265 = add i64 %2264, %2263
  %2266 = load i64, i64* %PC.i294
  %2267 = add i64 %2266, 7
  store i64 %2267, i64* %PC.i294
  %2268 = inttoptr i64 %2265 to i32*
  %2269 = load i32, i32* %2268
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RDI.i296, align 8
  store %struct.Memory* %loadMem_41a50c, %struct.Memory** %MEMORY
  %loadMem1_41a513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %PC.i293
  %2275 = add i64 %2274, 276013
  %2276 = load i64, i64* %PC.i293
  %2277 = add i64 %2276, 5
  %2278 = load i64, i64* %PC.i293
  %2279 = add i64 %2278, 5
  store i64 %2279, i64* %PC.i293
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2281 = load i64, i64* %2280, align 8
  %2282 = add i64 %2281, -8
  %2283 = inttoptr i64 %2282 to i64*
  store i64 %2277, i64* %2283
  store i64 %2282, i64* %2280, align 8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2275, i64* %2284, align 8
  store %struct.Memory* %loadMem1_41a513, %struct.Memory** %MEMORY
  %loadMem2_41a513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a513 = load i64, i64* %3
  %call2_41a513 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_41a513, %struct.Memory* %loadMem2_41a513)
  store %struct.Memory* %call2_41a513, %struct.Memory** %MEMORY
  %loadMem_41a518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 33
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 1
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %2290 to i32*
  %2291 = load i32, i32* %EAX.i292
  %2292 = zext i32 %2291 to i64
  %2293 = load i64, i64* %PC.i291
  %2294 = add i64 %2293, 3
  store i64 %2294, i64* %PC.i291
  %2295 = sub i32 %2291, 5
  %2296 = icmp ult i32 %2291, 5
  %2297 = zext i1 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2297, i8* %2298, align 1
  %2299 = and i32 %2295, 255
  %2300 = call i32 @llvm.ctpop.i32(i32 %2299)
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2303, i8* %2304, align 1
  %2305 = xor i64 5, %2292
  %2306 = trunc i64 %2305 to i32
  %2307 = xor i32 %2306, %2295
  %2308 = lshr i32 %2307, 4
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2310, i8* %2311, align 1
  %2312 = icmp eq i32 %2295, 0
  %2313 = zext i1 %2312 to i8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2313, i8* %2314, align 1
  %2315 = lshr i32 %2295, 31
  %2316 = trunc i32 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2316, i8* %2317, align 1
  %2318 = lshr i32 %2291, 31
  %2319 = xor i32 %2315, %2318
  %2320 = add i32 %2319, %2318
  %2321 = icmp eq i32 %2320, 2
  %2322 = zext i1 %2321 to i8
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2322, i8* %2323, align 1
  store %struct.Memory* %loadMem_41a518, %struct.Memory** %MEMORY
  %loadMem_41a51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %PC.i290
  %2328 = add i64 %2327, 96
  %2329 = load i64, i64* %PC.i290
  %2330 = add i64 %2329, 6
  %2331 = load i64, i64* %PC.i290
  %2332 = add i64 %2331, 6
  store i64 %2332, i64* %PC.i290
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2334 = load i8, i8* %2333, align 1
  %2335 = icmp eq i8 %2334, 0
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %BRANCH_TAKEN, align 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2338 = select i1 %2335, i64 %2328, i64 %2330
  store i64 %2338, i64* %2337, align 8
  store %struct.Memory* %loadMem_41a51b, %struct.Memory** %MEMORY
  %loadBr_41a51b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a51b = icmp eq i8 %loadBr_41a51b, 1
  br i1 %cmpBr_41a51b, label %block_.L_41a57b, label %block_41a521

block_41a521:                                     ; preds = %block_41a501
  %loadMem_41a521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 1
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 15
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %RBP.i289
  %2349 = sub i64 %2348, 2336
  %2350 = load i64, i64* %PC.i287
  %2351 = add i64 %2350, 7
  store i64 %2351, i64* %PC.i287
  %2352 = inttoptr i64 %2349 to i32*
  %2353 = load i32, i32* %2352
  %2354 = sext i32 %2353 to i64
  store i64 %2354, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_41a521, %struct.Memory** %MEMORY
  %loadMem_41a528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 1
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 15
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2363 to i64*
  %2364 = load i64, i64* %RBP.i286
  %2365 = load i64, i64* %RAX.i285
  %2366 = mul i64 %2365, 4
  %2367 = add i64 %2364, -2320
  %2368 = add i64 %2367, %2366
  %2369 = load i64, i64* %PC.i284
  %2370 = add i64 %2369, 8
  store i64 %2370, i64* %PC.i284
  %2371 = inttoptr i64 %2368 to i32*
  %2372 = load i32, i32* %2371
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2373, align 1
  %2374 = and i32 %2372, 255
  %2375 = call i32 @llvm.ctpop.i32(i32 %2374)
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = xor i8 %2377, 1
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2378, i8* %2379, align 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2380, align 1
  %2381 = icmp eq i32 %2372, 0
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i32 %2372, 31
  %2385 = trunc i32 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1
  %2387 = lshr i32 %2372, 31
  %2388 = xor i32 %2384, %2387
  %2389 = add i32 %2388, %2387
  %2390 = icmp eq i32 %2389, 2
  %2391 = zext i1 %2390 to i8
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2391, i8* %2392, align 1
  store %struct.Memory* %loadMem_41a528, %struct.Memory** %MEMORY
  %loadMem_41a530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 33
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %PC.i283
  %2397 = add i64 %2396, 75
  %2398 = load i64, i64* %PC.i283
  %2399 = add i64 %2398, 6
  %2400 = load i64, i64* %PC.i283
  %2401 = add i64 %2400, 6
  store i64 %2401, i64* %PC.i283
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2403 = load i8, i8* %2402, align 1
  %2404 = icmp eq i8 %2403, 0
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %BRANCH_TAKEN, align 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2407 = select i1 %2404, i64 %2397, i64 %2399
  store i64 %2407, i64* %2406, align 8
  store %struct.Memory* %loadMem_41a530, %struct.Memory** %MEMORY
  %loadBr_41a530 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a530 = icmp eq i8 %loadBr_41a530, 1
  br i1 %cmpBr_41a530, label %block_.L_41a57b, label %block_41a536

block_41a536:                                     ; preds = %block_41a521
  %loadMem_41a536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 1
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 15
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2416 to i64*
  %2417 = load i64, i64* %RBP.i282
  %2418 = sub i64 %2417, 2336
  %2419 = load i64, i64* %PC.i280
  %2420 = add i64 %2419, 6
  store i64 %2420, i64* %PC.i280
  %2421 = inttoptr i64 %2418 to i32*
  %2422 = load i32, i32* %2421
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RAX.i281, align 8
  store %struct.Memory* %loadMem_41a536, %struct.Memory** %MEMORY
  %loadMem_41a53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 33
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 5
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RBP.i279
  %2434 = sub i64 %2433, 24
  %2435 = load i64, i64* %PC.i277
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %PC.i277
  %2437 = inttoptr i64 %2434 to i64*
  %2438 = load i64, i64* %2437
  store i64 %2438, i64* %RCX.i278, align 8
  store %struct.Memory* %loadMem_41a53c, %struct.Memory** %MEMORY
  %loadMem_41a540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 7
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RDX.i275 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 15
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2447 to i64*
  %2448 = load i64, i64* %RBP.i276
  %2449 = sub i64 %2448, 28
  %2450 = load i64, i64* %PC.i274
  %2451 = add i64 %2450, 3
  store i64 %2451, i64* %PC.i274
  %2452 = inttoptr i64 %2449 to i32*
  %2453 = load i32, i32* %2452
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RDX.i275, align 8
  store %struct.Memory* %loadMem_41a540, %struct.Memory** %MEMORY
  %loadMem_41a543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 7
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %EDX.i272 = bitcast %union.anon* %2460 to i32*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 9
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RSI.i273 = bitcast %union.anon* %2463 to i64*
  %2464 = load i32, i32* %EDX.i272
  %2465 = zext i32 %2464 to i64
  %2466 = load i64, i64* %PC.i271
  %2467 = add i64 %2466, 2
  store i64 %2467, i64* %PC.i271
  %2468 = and i64 %2465, 4294967295
  store i64 %2468, i64* %RSI.i273, align 8
  store %struct.Memory* %loadMem_41a543, %struct.Memory** %MEMORY
  %loadMem_41a545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 9
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RSI.i270 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %RSI.i270
  %2476 = load i64, i64* %PC.i269
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %PC.i269
  %2478 = trunc i64 %2475 to i32
  %2479 = add i32 1, %2478
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RSI.i270, align 8
  %2481 = icmp ult i32 %2479, %2478
  %2482 = icmp ult i32 %2479, 1
  %2483 = or i1 %2481, %2482
  %2484 = zext i1 %2483 to i8
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2484, i8* %2485, align 1
  %2486 = and i32 %2479, 255
  %2487 = call i32 @llvm.ctpop.i32(i32 %2486)
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2490, i8* %2491, align 1
  %2492 = xor i64 1, %2475
  %2493 = trunc i64 %2492 to i32
  %2494 = xor i32 %2493, %2479
  %2495 = lshr i32 %2494, 4
  %2496 = trunc i32 %2495 to i8
  %2497 = and i8 %2496, 1
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2497, i8* %2498, align 1
  %2499 = icmp eq i32 %2479, 0
  %2500 = zext i1 %2499 to i8
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2500, i8* %2501, align 1
  %2502 = lshr i32 %2479, 31
  %2503 = trunc i32 %2502 to i8
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2503, i8* %2504, align 1
  %2505 = lshr i32 %2478, 31
  %2506 = xor i32 %2502, %2505
  %2507 = add i32 %2506, %2502
  %2508 = icmp eq i32 %2507, 2
  %2509 = zext i1 %2508 to i8
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2509, i8* %2510, align 1
  store %struct.Memory* %loadMem_41a545, %struct.Memory** %MEMORY
  %loadMem_41a548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 9
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %ESI.i267 = bitcast %union.anon* %2516 to i32*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 15
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %RBP.i268
  %2521 = sub i64 %2520, 28
  %2522 = load i32, i32* %ESI.i267
  %2523 = zext i32 %2522 to i64
  %2524 = load i64, i64* %PC.i266
  %2525 = add i64 %2524, 3
  store i64 %2525, i64* %PC.i266
  %2526 = inttoptr i64 %2521 to i32*
  store i32 %2522, i32* %2526
  store %struct.Memory* %loadMem_41a548, %struct.Memory** %MEMORY
  %loadMem_41a54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 33
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 7
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %EDX.i264 = bitcast %union.anon* %2532 to i32*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 11
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RDI.i265 = bitcast %union.anon* %2535 to i64*
  %2536 = load i32, i32* %EDX.i264
  %2537 = zext i32 %2536 to i64
  %2538 = load i64, i64* %PC.i263
  %2539 = add i64 %2538, 3
  store i64 %2539, i64* %PC.i263
  %2540 = shl i64 %2537, 32
  %2541 = ashr exact i64 %2540, 32
  store i64 %2541, i64* %RDI.i265, align 8
  store %struct.Memory* %loadMem_41a54b, %struct.Memory** %MEMORY
  %loadMem_41a54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 1
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %EAX.i260 = bitcast %union.anon* %2547 to i32*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 5
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 11
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RDI.i262 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %RCX.i261
  %2555 = load i64, i64* %RDI.i262
  %2556 = mul i64 %2555, 4
  %2557 = add i64 %2556, %2554
  %2558 = load i32, i32* %EAX.i260
  %2559 = zext i32 %2558 to i64
  %2560 = load i64, i64* %PC.i259
  %2561 = add i64 %2560, 3
  store i64 %2561, i64* %PC.i259
  %2562 = inttoptr i64 %2557 to i32*
  store i32 %2558, i32* %2562
  store %struct.Memory* %loadMem_41a54e, %struct.Memory** %MEMORY
  %loadMem_41a551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 33
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %RBP.i258
  %2570 = sub i64 %2569, 28
  %2571 = load i64, i64* %PC.i257
  %2572 = add i64 %2571, 7
  store i64 %2572, i64* %PC.i257
  %2573 = inttoptr i64 %2570 to i32*
  %2574 = load i32, i32* %2573
  %2575 = sub i32 %2574, 361
  %2576 = icmp ult i32 %2574, 361
  %2577 = zext i1 %2576 to i8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2577, i8* %2578, align 1
  %2579 = and i32 %2575, 255
  %2580 = call i32 @llvm.ctpop.i32(i32 %2579)
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = xor i8 %2582, 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2583, i8* %2584, align 1
  %2585 = xor i32 %2574, 361
  %2586 = xor i32 %2585, %2575
  %2587 = lshr i32 %2586, 4
  %2588 = trunc i32 %2587 to i8
  %2589 = and i8 %2588, 1
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2589, i8* %2590, align 1
  %2591 = icmp eq i32 %2575, 0
  %2592 = zext i1 %2591 to i8
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2592, i8* %2593, align 1
  %2594 = lshr i32 %2575, 31
  %2595 = trunc i32 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2595, i8* %2596, align 1
  %2597 = lshr i32 %2574, 31
  %2598 = xor i32 %2594, %2597
  %2599 = add i32 %2598, %2597
  %2600 = icmp eq i32 %2599, 2
  %2601 = zext i1 %2600 to i8
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2601, i8* %2602, align 1
  store %struct.Memory* %loadMem_41a551, %struct.Memory** %MEMORY
  %loadMem_41a558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2605 to i64*
  %2606 = load i64, i64* %PC.i256
  %2607 = add i64 %2606, 17
  %2608 = load i64, i64* %PC.i256
  %2609 = add i64 %2608, 6
  %2610 = load i64, i64* %PC.i256
  %2611 = add i64 %2610, 6
  store i64 %2611, i64* %PC.i256
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2613 = load i8, i8* %2612, align 1
  %2614 = icmp eq i8 %2613, 0
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %BRANCH_TAKEN, align 1
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2617 = select i1 %2614, i64 %2607, i64 %2609
  store i64 %2617, i64* %2616, align 8
  store %struct.Memory* %loadMem_41a558, %struct.Memory** %MEMORY
  %loadBr_41a558 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a558 = icmp eq i8 %loadBr_41a558, 1
  br i1 %cmpBr_41a558, label %block_.L_41a569, label %block_41a55e

block_41a55e:                                     ; preds = %block_41a536
  %loadMem_41a55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 1
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 15
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RBP.i255
  %2628 = sub i64 %2627, 28
  %2629 = load i64, i64* %PC.i253
  %2630 = add i64 %2629, 3
  store i64 %2630, i64* %PC.i253
  %2631 = inttoptr i64 %2628 to i32*
  %2632 = load i32, i32* %2631
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_41a55e, %struct.Memory** %MEMORY
  %loadMem_41a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 33
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 1
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %EAX.i251 = bitcast %union.anon* %2639 to i32*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 15
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %RBP.i252
  %2644 = sub i64 %2643, 4
  %2645 = load i32, i32* %EAX.i251
  %2646 = zext i32 %2645 to i64
  %2647 = load i64, i64* %PC.i250
  %2648 = add i64 %2647, 3
  store i64 %2648, i64* %PC.i250
  %2649 = inttoptr i64 %2644 to i32*
  store i32 %2645, i32* %2649
  store %struct.Memory* %loadMem_41a561, %struct.Memory** %MEMORY
  %loadMem_41a564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 33
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2652 to i64*
  %2653 = load i64, i64* %PC.i249
  %2654 = add i64 %2653, 549
  %2655 = load i64, i64* %PC.i249
  %2656 = add i64 %2655, 5
  store i64 %2656, i64* %PC.i249
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2654, i64* %2657, align 8
  store %struct.Memory* %loadMem_41a564, %struct.Memory** %MEMORY
  br label %block_.L_41a789

block_.L_41a569:                                  ; preds = %block_41a536
  %loadMem_41a569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 33
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 1
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 15
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RBP.i248
  %2668 = sub i64 %2667, 2336
  %2669 = load i64, i64* %PC.i246
  %2670 = add i64 %2669, 7
  store i64 %2670, i64* %PC.i246
  %2671 = inttoptr i64 %2668 to i32*
  %2672 = load i32, i32* %2671
  %2673 = sext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_41a569, %struct.Memory** %MEMORY
  %loadMem_41a570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RBP.i245
  %2684 = load i64, i64* %RAX.i244
  %2685 = mul i64 %2684, 4
  %2686 = add i64 %2683, -2320
  %2687 = add i64 %2686, %2685
  %2688 = load i64, i64* %PC.i243
  %2689 = add i64 %2688, 11
  store i64 %2689, i64* %PC.i243
  %2690 = inttoptr i64 %2687 to i32*
  store i32 1, i32* %2690
  store %struct.Memory* %loadMem_41a570, %struct.Memory** %MEMORY
  br label %block_.L_41a57b

block_.L_41a57b:                                  ; preds = %block_.L_41a569, %block_41a521, %block_41a501
  %loadMem_41a57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 33
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 9
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RSI.i242 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %PC.i241
  %2698 = add i64 %2697, 5
  store i64 %2698, i64* %PC.i241
  store i64 3, i64* %RSI.i242, align 8
  store %struct.Memory* %loadMem_41a57b, %struct.Memory** %MEMORY
  %loadMem_41a580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 7
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 15
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %2707 to i64*
  %2708 = load i64, i64* %RBP.i240
  %2709 = sub i64 %2708, 64
  %2710 = load i64, i64* %PC.i238
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC.i238
  store i64 %2709, i64* %RDX.i239, align 8
  store %struct.Memory* %loadMem_41a580, %struct.Memory** %MEMORY
  %loadMem_41a584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 1
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 15
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %2720 to i64*
  %2721 = load i64, i64* %RBP.i237
  %2722 = sub i64 %2721, 36
  %2723 = load i64, i64* %PC.i235
  %2724 = add i64 %2723, 4
  store i64 %2724, i64* %PC.i235
  %2725 = inttoptr i64 %2722 to i32*
  %2726 = load i32, i32* %2725
  %2727 = sext i32 %2726 to i64
  store i64 %2727, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_41a584, %struct.Memory** %MEMORY
  %loadMem_41a588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 1
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 11
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RDI.i233 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 15
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %2739 to i64*
  %2740 = load i64, i64* %RBP.i234
  %2741 = load i64, i64* %RAX.i232
  %2742 = mul i64 %2741, 4
  %2743 = add i64 %2740, -720
  %2744 = add i64 %2743, %2742
  %2745 = load i64, i64* %PC.i231
  %2746 = add i64 %2745, 7
  store i64 %2746, i64* %PC.i231
  %2747 = inttoptr i64 %2744 to i32*
  %2748 = load i32, i32* %2747
  %2749 = zext i32 %2748 to i64
  store i64 %2749, i64* %RDI.i233, align 8
  store %struct.Memory* %loadMem_41a588, %struct.Memory** %MEMORY
  %loadMem1_41a58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %PC.i230
  %2754 = add i64 %2753, -44367
  %2755 = load i64, i64* %PC.i230
  %2756 = add i64 %2755, 5
  %2757 = load i64, i64* %PC.i230
  %2758 = add i64 %2757, 5
  store i64 %2758, i64* %PC.i230
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2760 = load i64, i64* %2759, align 8
  %2761 = add i64 %2760, -8
  %2762 = inttoptr i64 %2761 to i64*
  store i64 %2756, i64* %2762
  store i64 %2761, i64* %2759, align 8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2754, i64* %2763, align 8
  store %struct.Memory* %loadMem1_41a58f, %struct.Memory** %MEMORY
  %loadMem2_41a58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a58f = load i64, i64* %3
  %call2_41a58f = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_41a58f, %struct.Memory* %loadMem2_41a58f)
  store %struct.Memory* %call2_41a58f, %struct.Memory** %MEMORY
  %loadMem_41a594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 33
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 1
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %2769 to i32*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 15
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2772 to i64*
  %2773 = load i64, i64* %RBP.i229
  %2774 = sub i64 %2773, 40
  %2775 = load i32, i32* %EAX.i228
  %2776 = zext i32 %2775 to i64
  %2777 = load i64, i64* %PC.i227
  %2778 = add i64 %2777, 3
  store i64 %2778, i64* %PC.i227
  %2779 = inttoptr i64 %2774 to i32*
  store i32 %2775, i32* %2779
  store %struct.Memory* %loadMem_41a594, %struct.Memory** %MEMORY
  %loadMem_41a597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 33
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2782 to i64*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 15
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %RBP.i226
  %2787 = sub i64 %2786, 40
  %2788 = load i64, i64* %PC.i225
  %2789 = add i64 %2788, 4
  store i64 %2789, i64* %PC.i225
  %2790 = inttoptr i64 %2787 to i32*
  %2791 = load i32, i32* %2790
  %2792 = sub i32 %2791, 3
  %2793 = icmp ult i32 %2791, 3
  %2794 = zext i1 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2794, i8* %2795, align 1
  %2796 = and i32 %2792, 255
  %2797 = call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2800, i8* %2801, align 1
  %2802 = xor i32 %2791, 3
  %2803 = xor i32 %2802, %2792
  %2804 = lshr i32 %2803, 4
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2806, i8* %2807, align 1
  %2808 = icmp eq i32 %2792, 0
  %2809 = zext i1 %2808 to i8
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2809, i8* %2810, align 1
  %2811 = lshr i32 %2792, 31
  %2812 = trunc i32 %2811 to i8
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2812, i8* %2813, align 1
  %2814 = lshr i32 %2791, 31
  %2815 = xor i32 %2811, %2814
  %2816 = add i32 %2815, %2814
  %2817 = icmp eq i32 %2816, 2
  %2818 = zext i1 %2817 to i8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2818, i8* %2819, align 1
  store %struct.Memory* %loadMem_41a597, %struct.Memory** %MEMORY
  %loadMem_41a59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2822 to i64*
  %2823 = load i64, i64* %PC.i224
  %2824 = add i64 %2823, 304
  %2825 = load i64, i64* %PC.i224
  %2826 = add i64 %2825, 6
  %2827 = load i64, i64* %PC.i224
  %2828 = add i64 %2827, 6
  store i64 %2828, i64* %PC.i224
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2830 = load i8, i8* %2829, align 1
  %2831 = icmp eq i8 %2830, 0
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2833 = load i8, i8* %2832, align 1
  %2834 = icmp ne i8 %2833, 0
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2836 = load i8, i8* %2835, align 1
  %2837 = icmp ne i8 %2836, 0
  %2838 = xor i1 %2834, %2837
  %2839 = xor i1 %2838, true
  %2840 = and i1 %2831, %2839
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %BRANCH_TAKEN, align 1
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2843 = select i1 %2840, i64 %2824, i64 %2826
  store i64 %2843, i64* %2842, align 8
  store %struct.Memory* %loadMem_41a59b, %struct.Memory** %MEMORY
  %loadBr_41a59b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a59b = icmp eq i8 %loadBr_41a59b, 1
  br i1 %cmpBr_41a59b, label %block_.L_41a6cb, label %block_41a5a1

block_41a5a1:                                     ; preds = %block_.L_41a57b
  %loadMem_41a5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 15
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %RBP.i223
  %2851 = sub i64 %2850, 2328
  %2852 = load i64, i64* %PC.i222
  %2853 = add i64 %2852, 10
  store i64 %2853, i64* %PC.i222
  %2854 = inttoptr i64 %2851 to i32*
  store i32 0, i32* %2854
  store %struct.Memory* %loadMem_41a5a1, %struct.Memory** %MEMORY
  br label %block_.L_41a5ab

block_.L_41a5ab:                                  ; preds = %block_.L_41a6b2, %block_41a5a1
  %loadMem_41a5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 1
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 15
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RBP.i221
  %2865 = sub i64 %2864, 2328
  %2866 = load i64, i64* %PC.i219
  %2867 = add i64 %2866, 6
  store i64 %2867, i64* %PC.i219
  %2868 = inttoptr i64 %2865 to i32*
  %2869 = load i32, i32* %2868
  %2870 = zext i32 %2869 to i64
  store i64 %2870, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_41a5ab, %struct.Memory** %MEMORY
  %loadMem_41a5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %EAX.i217 = bitcast %union.anon* %2876 to i32*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 15
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %2879 to i64*
  %2880 = load i32, i32* %EAX.i217
  %2881 = zext i32 %2880 to i64
  %2882 = load i64, i64* %RBP.i218
  %2883 = sub i64 %2882, 40
  %2884 = load i64, i64* %PC.i216
  %2885 = add i64 %2884, 3
  store i64 %2885, i64* %PC.i216
  %2886 = inttoptr i64 %2883 to i32*
  %2887 = load i32, i32* %2886
  %2888 = sub i32 %2880, %2887
  %2889 = icmp ult i32 %2880, %2887
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2890, i8* %2891, align 1
  %2892 = and i32 %2888, 255
  %2893 = call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2896, i8* %2897, align 1
  %2898 = xor i32 %2887, %2880
  %2899 = xor i32 %2898, %2888
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2902, i8* %2903, align 1
  %2904 = icmp eq i32 %2888, 0
  %2905 = zext i1 %2904 to i8
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2905, i8* %2906, align 1
  %2907 = lshr i32 %2888, 31
  %2908 = trunc i32 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2908, i8* %2909, align 1
  %2910 = lshr i32 %2880, 31
  %2911 = lshr i32 %2887, 31
  %2912 = xor i32 %2911, %2910
  %2913 = xor i32 %2907, %2910
  %2914 = add i32 %2913, %2912
  %2915 = icmp eq i32 %2914, 2
  %2916 = zext i1 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2916, i8* %2917, align 1
  store %struct.Memory* %loadMem_41a5b1, %struct.Memory** %MEMORY
  %loadMem_41a5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %PC.i215
  %2922 = add i64 %2921, 274
  %2923 = load i64, i64* %PC.i215
  %2924 = add i64 %2923, 6
  %2925 = load i64, i64* %PC.i215
  %2926 = add i64 %2925, 6
  store i64 %2926, i64* %PC.i215
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2928 = load i8, i8* %2927, align 1
  %2929 = icmp ne i8 %2928, 0
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2931 = load i8, i8* %2930, align 1
  %2932 = icmp ne i8 %2931, 0
  %2933 = xor i1 %2929, %2932
  %2934 = xor i1 %2933, true
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %BRANCH_TAKEN, align 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2937 = select i1 %2933, i64 %2924, i64 %2922
  store i64 %2937, i64* %2936, align 8
  store %struct.Memory* %loadMem_41a5b4, %struct.Memory** %MEMORY
  %loadBr_41a5b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a5b4 = icmp eq i8 %loadBr_41a5b4, 1
  br i1 %cmpBr_41a5b4, label %block_.L_41a6c6, label %block_41a5ba

block_41a5ba:                                     ; preds = %block_.L_41a5ab
  %loadMem_41a5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 1
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 15
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %2946 to i64*
  %2947 = load i64, i64* %RBP.i214
  %2948 = sub i64 %2947, 2328
  %2949 = load i64, i64* %PC.i212
  %2950 = add i64 %2949, 7
  store i64 %2950, i64* %PC.i212
  %2951 = inttoptr i64 %2948 to i32*
  %2952 = load i32, i32* %2951
  %2953 = sext i32 %2952 to i64
  store i64 %2953, i64* %RAX.i213, align 8
  store %struct.Memory* %loadMem_41a5ba, %struct.Memory** %MEMORY
  %loadMem_41a5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 1
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 15
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %RBP.i211
  %2964 = load i64, i64* %RAX.i210
  %2965 = mul i64 %2964, 4
  %2966 = add i64 %2963, -64
  %2967 = add i64 %2966, %2965
  %2968 = load i64, i64* %PC.i209
  %2969 = add i64 %2968, 5
  store i64 %2969, i64* %PC.i209
  %2970 = inttoptr i64 %2967 to i32*
  %2971 = load i32, i32* %2970
  %2972 = sext i32 %2971 to i64
  store i64 %2972, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_41a5c1, %struct.Memory** %MEMORY
  %loadMem_41a5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 1
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 15
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2981 to i64*
  %2982 = load i64, i64* %RBP.i208
  %2983 = load i64, i64* %RAX.i207
  %2984 = mul i64 %2983, 4
  %2985 = add i64 %2982, -2320
  %2986 = add i64 %2985, %2984
  %2987 = load i64, i64* %PC.i206
  %2988 = add i64 %2987, 8
  store i64 %2988, i64* %PC.i206
  %2989 = inttoptr i64 %2986 to i32*
  %2990 = load i32, i32* %2989
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2991, align 1
  %2992 = and i32 %2990, 255
  %2993 = call i32 @llvm.ctpop.i32(i32 %2992)
  %2994 = trunc i32 %2993 to i8
  %2995 = and i8 %2994, 1
  %2996 = xor i8 %2995, 1
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2996, i8* %2997, align 1
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2998, align 1
  %2999 = icmp eq i32 %2990, 0
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3000, i8* %3001, align 1
  %3002 = lshr i32 %2990, 31
  %3003 = trunc i32 %3002 to i8
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3003, i8* %3004, align 1
  %3005 = lshr i32 %2990, 31
  %3006 = xor i32 %3002, %3005
  %3007 = add i32 %3006, %3005
  %3008 = icmp eq i32 %3007, 2
  %3009 = zext i1 %3008 to i8
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3009, i8* %3010, align 1
  store %struct.Memory* %loadMem_41a5c6, %struct.Memory** %MEMORY
  %loadMem_41a5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 33
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %PC.i205
  %3015 = add i64 %3014, 223
  %3016 = load i64, i64* %PC.i205
  %3017 = add i64 %3016, 6
  %3018 = load i64, i64* %PC.i205
  %3019 = add i64 %3018, 6
  store i64 %3019, i64* %PC.i205
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3021 = load i8, i8* %3020, align 1
  %3022 = icmp eq i8 %3021, 0
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %BRANCH_TAKEN, align 1
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3025 = select i1 %3022, i64 %3015, i64 %3017
  store i64 %3025, i64* %3024, align 8
  store %struct.Memory* %loadMem_41a5ce, %struct.Memory** %MEMORY
  %loadBr_41a5ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a5ce = icmp eq i8 %loadBr_41a5ce, 1
  br i1 %cmpBr_41a5ce, label %block_.L_41a6ad, label %block_41a5d4

block_41a5d4:                                     ; preds = %block_41a5ba
  %loadMem_41a5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 1
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 15
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RBP.i204
  %3036 = sub i64 %3035, 2328
  %3037 = load i64, i64* %PC.i202
  %3038 = add i64 %3037, 7
  store i64 %3038, i64* %PC.i202
  %3039 = inttoptr i64 %3036 to i32*
  %3040 = load i32, i32* %3039
  %3041 = sext i32 %3040 to i64
  store i64 %3041, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_41a5d4, %struct.Memory** %MEMORY
  %loadMem_41a5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 11
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RDI.i200 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 15
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RBP.i201
  %3055 = load i64, i64* %RAX.i199
  %3056 = mul i64 %3055, 4
  %3057 = add i64 %3054, -64
  %3058 = add i64 %3057, %3056
  %3059 = load i64, i64* %PC.i198
  %3060 = add i64 %3059, 4
  store i64 %3060, i64* %PC.i198
  %3061 = inttoptr i64 %3058 to i32*
  %3062 = load i32, i32* %3061
  %3063 = zext i32 %3062 to i64
  store i64 %3063, i64* %RDI.i200, align 8
  store %struct.Memory* %loadMem_41a5db, %struct.Memory** %MEMORY
  %loadMem_41a5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 1
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 15
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %3072 to i64*
  %3073 = load i64, i64* %RBP.i197
  %3074 = sub i64 %3073, 2332
  %3075 = load i64, i64* %PC.i195
  %3076 = add i64 %3075, 7
  store i64 %3076, i64* %PC.i195
  %3077 = inttoptr i64 %3074 to i32*
  %3078 = load i32, i32* %3077
  %3079 = sext i32 %3078 to i64
  store i64 %3079, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_41a5df, %struct.Memory** %MEMORY
  %loadMem_41a5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 33
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 1
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 9
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RSI.i194 = bitcast %union.anon* %3088 to i64*
  %3089 = load i64, i64* %RAX.i193
  %3090 = add i64 %3089, 12099168
  %3091 = load i64, i64* %PC.i192
  %3092 = add i64 %3091, 8
  store i64 %3092, i64* %PC.i192
  %3093 = inttoptr i64 %3090 to i8*
  %3094 = load i8, i8* %3093
  %3095 = zext i8 %3094 to i64
  store i64 %3095, i64* %RSI.i194, align 8
  store %struct.Memory* %loadMem_41a5e6, %struct.Memory** %MEMORY
  %loadMem1_41a5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %PC.i191
  %3100 = add i64 %3099, -25422
  %3101 = load i64, i64* %PC.i191
  %3102 = add i64 %3101, 5
  %3103 = load i64, i64* %PC.i191
  %3104 = add i64 %3103, 5
  store i64 %3104, i64* %PC.i191
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3106 = load i64, i64* %3105, align 8
  %3107 = add i64 %3106, -8
  %3108 = inttoptr i64 %3107 to i64*
  store i64 %3102, i64* %3108
  store i64 %3107, i64* %3105, align 8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3100, i64* %3109, align 8
  store %struct.Memory* %loadMem1_41a5ee, %struct.Memory** %MEMORY
  %loadMem2_41a5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a5ee = load i64, i64* %3
  %call2_41a5ee = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_41a5ee, %struct.Memory* %loadMem2_41a5ee)
  store %struct.Memory* %call2_41a5ee, %struct.Memory** %MEMORY
  %loadMem_41a5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 1
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %EAX.i190 = bitcast %union.anon* %3115 to i32*
  %3116 = load i32, i32* %EAX.i190
  %3117 = zext i32 %3116 to i64
  %3118 = load i64, i64* %PC.i189
  %3119 = add i64 %3118, 3
  store i64 %3119, i64* %PC.i189
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3120, align 1
  %3121 = and i32 %3116, 255
  %3122 = call i32 @llvm.ctpop.i32(i32 %3121)
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = xor i8 %3124, 1
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3125, i8* %3126, align 1
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3127, align 1
  %3128 = icmp eq i32 %3116, 0
  %3129 = zext i1 %3128 to i8
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3129, i8* %3130, align 1
  %3131 = lshr i32 %3116, 31
  %3132 = trunc i32 %3131 to i8
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3132, i8* %3133, align 1
  %3134 = lshr i32 %3116, 31
  %3135 = xor i32 %3131, %3134
  %3136 = add i32 %3135, %3134
  %3137 = icmp eq i32 %3136, 2
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3138, i8* %3139, align 1
  store %struct.Memory* %loadMem_41a5f3, %struct.Memory** %MEMORY
  %loadMem_41a5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %3142 to i64*
  %3143 = load i64, i64* %PC.i188
  %3144 = add i64 %3143, 183
  %3145 = load i64, i64* %PC.i188
  %3146 = add i64 %3145, 6
  %3147 = load i64, i64* %PC.i188
  %3148 = add i64 %3147, 6
  store i64 %3148, i64* %PC.i188
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3150 = load i8, i8* %3149, align 1
  %3151 = icmp eq i8 %3150, 0
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %BRANCH_TAKEN, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3154 = select i1 %3151, i64 %3144, i64 %3146
  store i64 %3154, i64* %3153, align 8
  store %struct.Memory* %loadMem_41a5f6, %struct.Memory** %MEMORY
  %loadBr_41a5f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a5f6 = icmp eq i8 %loadBr_41a5f6, 1
  br i1 %cmpBr_41a5f6, label %block_.L_41a6ad, label %block_41a5fc

block_41a5fc:                                     ; preds = %block_41a5d4
  %loadMem_41a5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 7
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RDX.i187 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %PC.i186
  %3162 = add i64 %3161, 10
  store i64 %3162, i64* %PC.i186
  store i64 ptrtoint (%G__0x57abde_type* @G__0x57abde to i64), i64* %RDX.i187, align 8
  store %struct.Memory* %loadMem_41a5fc, %struct.Memory** %MEMORY
  %loadMem_41a606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 1
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %EAX.i184 = bitcast %union.anon* %3168 to i32*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 1
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3171 to i64*
  %3172 = load i64, i64* %RAX.i185
  %3173 = load i32, i32* %EAX.i184
  %3174 = zext i32 %3173 to i64
  %3175 = load i64, i64* %PC.i183
  %3176 = add i64 %3175, 2
  store i64 %3176, i64* %PC.i183
  %3177 = xor i64 %3174, %3172
  %3178 = trunc i64 %3177 to i32
  %3179 = and i64 %3177, 4294967295
  store i64 %3179, i64* %RAX.i185, align 8
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3180, align 1
  %3181 = and i32 %3178, 255
  %3182 = call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3185, i8* %3186, align 1
  %3187 = icmp eq i32 %3178, 0
  %3188 = zext i1 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3188, i8* %3189, align 1
  %3190 = lshr i32 %3178, 31
  %3191 = trunc i32 %3190 to i8
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3191, i8* %3192, align 1
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3193, align 1
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3194, align 1
  store %struct.Memory* %loadMem_41a606, %struct.Memory** %MEMORY
  %loadMem_41a608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 5
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 15
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %RBP.i182
  %3205 = sub i64 %3204, 2328
  %3206 = load i64, i64* %PC.i180
  %3207 = add i64 %3206, 7
  store i64 %3207, i64* %PC.i180
  %3208 = inttoptr i64 %3205 to i32*
  %3209 = load i32, i32* %3208
  %3210 = sext i32 %3209 to i64
  store i64 %3210, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_41a608, %struct.Memory** %MEMORY
  %loadMem_41a60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 5
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 11
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RDI.i178 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 15
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %RBP.i179
  %3224 = load i64, i64* %RCX.i177
  %3225 = mul i64 %3224, 4
  %3226 = add i64 %3223, -64
  %3227 = add i64 %3226, %3225
  %3228 = load i64, i64* %PC.i176
  %3229 = add i64 %3228, 4
  store i64 %3229, i64* %PC.i176
  %3230 = inttoptr i64 %3227 to i32*
  %3231 = load i32, i32* %3230
  %3232 = zext i32 %3231 to i64
  store i64 %3232, i64* %RDI.i178, align 8
  store %struct.Memory* %loadMem_41a60f, %struct.Memory** %MEMORY
  %loadMem_41a613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 5
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 15
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %3241 to i64*
  %3242 = load i64, i64* %RBP.i175
  %3243 = sub i64 %3242, 2332
  %3244 = load i64, i64* %PC.i173
  %3245 = add i64 %3244, 7
  store i64 %3245, i64* %PC.i173
  %3246 = inttoptr i64 %3243 to i32*
  %3247 = load i32, i32* %3246
  %3248 = sext i32 %3247 to i64
  store i64 %3248, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_41a613, %struct.Memory** %MEMORY
  %loadMem_41a61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 33
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 5
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 9
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RSI.i172 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %RCX.i171
  %3259 = add i64 %3258, 12099168
  %3260 = load i64, i64* %PC.i170
  %3261 = add i64 %3260, 8
  store i64 %3261, i64* %PC.i170
  %3262 = inttoptr i64 %3259 to i8*
  %3263 = load i8, i8* %3262
  %3264 = zext i8 %3263 to i64
  store i64 %3264, i64* %RSI.i172, align 8
  store %struct.Memory* %loadMem_41a61a, %struct.Memory** %MEMORY
  %loadMem_41a622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 33
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 5
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 15
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %RBP.i169
  %3275 = sub i64 %3274, 2332
  %3276 = load i64, i64* %PC.i167
  %3277 = add i64 %3276, 6
  store i64 %3277, i64* %PC.i167
  %3278 = inttoptr i64 %3275 to i32*
  %3279 = load i32, i32* %3278
  %3280 = zext i32 %3279 to i64
  store i64 %3280, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_41a622, %struct.Memory** %MEMORY
  %loadMem_41a628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 1
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %3286 to i32*
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3288 = getelementptr inbounds %struct.GPR, %struct.GPR* %3287, i32 0, i32 17
  %3289 = getelementptr inbounds %struct.Reg, %struct.Reg* %3288, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3289 to i32*
  %3290 = bitcast i32* %R8D.i to i64*
  %3291 = load i32, i32* %EAX.i166
  %3292 = zext i32 %3291 to i64
  %3293 = load i64, i64* %PC.i165
  %3294 = add i64 %3293, 3
  store i64 %3294, i64* %PC.i165
  %3295 = and i64 %3292, 4294967295
  store i64 %3295, i64* %3290, align 8
  store %struct.Memory* %loadMem_41a628, %struct.Memory** %MEMORY
  %loadMem_41a62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 1
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %EAX.i164 = bitcast %union.anon* %3301 to i32*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 19
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3304 to i32*
  %3305 = bitcast i32* %R9D.i to i64*
  %3306 = load i32, i32* %EAX.i164
  %3307 = zext i32 %3306 to i64
  %3308 = load i64, i64* %PC.i163
  %3309 = add i64 %3308, 3
  store i64 %3309, i64* %PC.i163
  %3310 = and i64 %3307, 4294967295
  store i64 %3310, i64* %3305, align 8
  store %struct.Memory* %loadMem_41a62b, %struct.Memory** %MEMORY
  %loadMem1_41a62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 33
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %PC.i162
  %3315 = add i64 %3314, -71678
  %3316 = load i64, i64* %PC.i162
  %3317 = add i64 %3316, 5
  %3318 = load i64, i64* %PC.i162
  %3319 = add i64 %3318, 5
  store i64 %3319, i64* %PC.i162
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3321 = load i64, i64* %3320, align 8
  %3322 = add i64 %3321, -8
  %3323 = inttoptr i64 %3322 to i64*
  store i64 %3317, i64* %3323
  store i64 %3322, i64* %3320, align 8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3315, i64* %3324, align 8
  store %struct.Memory* %loadMem1_41a62e, %struct.Memory** %MEMORY
  %loadMem2_41a62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a62e = load i64, i64* %3
  %call2_41a62e = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_41a62e, %struct.Memory* %loadMem2_41a62e)
  store %struct.Memory* %call2_41a62e, %struct.Memory** %MEMORY
  %loadMem_41a633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 1
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %3330 to i32*
  %3331 = load i32, i32* %EAX.i161
  %3332 = zext i32 %3331 to i64
  %3333 = load i64, i64* %PC.i160
  %3334 = add i64 %3333, 3
  store i64 %3334, i64* %PC.i160
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3335, align 1
  %3336 = and i32 %3331, 255
  %3337 = call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3340, i8* %3341, align 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3342, align 1
  %3343 = icmp eq i32 %3331, 0
  %3344 = zext i1 %3343 to i8
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3344, i8* %3345, align 1
  %3346 = lshr i32 %3331, 31
  %3347 = trunc i32 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3347, i8* %3348, align 1
  %3349 = lshr i32 %3331, 31
  %3350 = xor i32 %3346, %3349
  %3351 = add i32 %3350, %3349
  %3352 = icmp eq i32 %3351, 2
  %3353 = zext i1 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3353, i8* %3354, align 1
  store %struct.Memory* %loadMem_41a633, %struct.Memory** %MEMORY
  %loadMem_41a636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3357 to i64*
  %3358 = load i64, i64* %PC.i159
  %3359 = add i64 %3358, 119
  %3360 = load i64, i64* %PC.i159
  %3361 = add i64 %3360, 6
  %3362 = load i64, i64* %PC.i159
  %3363 = add i64 %3362, 6
  store i64 %3363, i64* %PC.i159
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3365 = load i8, i8* %3364, align 1
  store i8 %3365, i8* %BRANCH_TAKEN, align 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3367 = icmp ne i8 %3365, 0
  %3368 = select i1 %3367, i64 %3359, i64 %3361
  store i64 %3368, i64* %3366, align 8
  store %struct.Memory* %loadMem_41a636, %struct.Memory** %MEMORY
  %loadBr_41a636 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a636 = icmp eq i8 %loadBr_41a636, 1
  br i1 %cmpBr_41a636, label %block_.L_41a6ad, label %block_41a63c

block_41a63c:                                     ; preds = %block_41a5fc
  %loadMem_41a63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 1
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %3374 to i32*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 1
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %RAX.i158
  %3379 = load i32, i32* %EAX.i157
  %3380 = zext i32 %3379 to i64
  %3381 = load i64, i64* %PC.i156
  %3382 = add i64 %3381, 2
  store i64 %3382, i64* %PC.i156
  %3383 = xor i64 %3380, %3378
  %3384 = trunc i64 %3383 to i32
  %3385 = and i64 %3383, 4294967295
  store i64 %3385, i64* %RAX.i158, align 8
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3386, align 1
  %3387 = and i32 %3384, 255
  %3388 = call i32 @llvm.ctpop.i32(i32 %3387)
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3391, i8* %3392, align 1
  %3393 = icmp eq i32 %3384, 0
  %3394 = zext i1 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3394, i8* %3395, align 1
  %3396 = lshr i32 %3384, 31
  %3397 = trunc i32 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3397, i8* %3398, align 1
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3399, align 1
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3400, align 1
  store %struct.Memory* %loadMem_41a63c, %struct.Memory** %MEMORY
  %loadMem_41a63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 1
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %3406 to i32*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 9
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RSI.i155 = bitcast %union.anon* %3409 to i64*
  %3410 = load i32, i32* %EAX.i154
  %3411 = zext i32 %3410 to i64
  %3412 = load i64, i64* %PC.i153
  %3413 = add i64 %3412, 2
  store i64 %3413, i64* %PC.i153
  %3414 = and i64 %3411, 4294967295
  store i64 %3414, i64* %RSI.i155, align 8
  store %struct.Memory* %loadMem_41a63e, %struct.Memory** %MEMORY
  %loadMem_41a640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 33
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 11
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RDI.i151 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 15
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %RBP.i152
  %3425 = sub i64 %3424, 2332
  %3426 = load i64, i64* %PC.i150
  %3427 = add i64 %3426, 6
  store i64 %3427, i64* %PC.i150
  %3428 = inttoptr i64 %3425 to i32*
  %3429 = load i32, i32* %3428
  %3430 = zext i32 %3429 to i64
  store i64 %3430, i64* %RDI.i151, align 8
  store %struct.Memory* %loadMem_41a640, %struct.Memory** %MEMORY
  %loadMem1_41a646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %PC.i149
  %3435 = add i64 %3434, 275706
  %3436 = load i64, i64* %PC.i149
  %3437 = add i64 %3436, 5
  %3438 = load i64, i64* %PC.i149
  %3439 = add i64 %3438, 5
  store i64 %3439, i64* %PC.i149
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3441 = load i64, i64* %3440, align 8
  %3442 = add i64 %3441, -8
  %3443 = inttoptr i64 %3442 to i64*
  store i64 %3437, i64* %3443
  store i64 %3442, i64* %3440, align 8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3435, i64* %3444, align 8
  store %struct.Memory* %loadMem1_41a646, %struct.Memory** %MEMORY
  %loadMem2_41a646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a646 = load i64, i64* %3
  %call2_41a646 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_41a646, %struct.Memory* %loadMem2_41a646)
  store %struct.Memory* %call2_41a646, %struct.Memory** %MEMORY
  %loadMem_41a64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 1
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %3450 to i32*
  %3451 = load i32, i32* %EAX.i148
  %3452 = zext i32 %3451 to i64
  %3453 = load i64, i64* %PC.i147
  %3454 = add i64 %3453, 3
  store i64 %3454, i64* %PC.i147
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3455, align 1
  %3456 = and i32 %3451, 255
  %3457 = call i32 @llvm.ctpop.i32(i32 %3456)
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  %3460 = xor i8 %3459, 1
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3460, i8* %3461, align 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3462, align 1
  %3463 = icmp eq i32 %3451, 0
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3464, i8* %3465, align 1
  %3466 = lshr i32 %3451, 31
  %3467 = trunc i32 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i32 %3451, 31
  %3470 = xor i32 %3466, %3469
  %3471 = add i32 %3470, %3469
  %3472 = icmp eq i32 %3471, 2
  %3473 = zext i1 %3472 to i8
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3473, i8* %3474, align 1
  store %struct.Memory* %loadMem_41a64b, %struct.Memory** %MEMORY
  %loadMem_41a64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %PC.i146
  %3479 = add i64 %3478, 61
  %3480 = load i64, i64* %PC.i146
  %3481 = add i64 %3480, 6
  %3482 = load i64, i64* %PC.i146
  %3483 = add i64 %3482, 6
  store i64 %3483, i64* %PC.i146
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3485 = load i8, i8* %3484, align 1
  %3486 = icmp eq i8 %3485, 0
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %BRANCH_TAKEN, align 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3489 = select i1 %3486, i64 %3479, i64 %3481
  store i64 %3489, i64* %3488, align 8
  store %struct.Memory* %loadMem_41a64e, %struct.Memory** %MEMORY
  %loadBr_41a64e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a64e = icmp eq i8 %loadBr_41a64e, 1
  br i1 %cmpBr_41a64e, label %block_.L_41a68b, label %block_41a654

block_41a654:                                     ; preds = %block_41a63c
  %loadMem_41a654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 15
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RBP.i145
  %3500 = sub i64 %3499, 2328
  %3501 = load i64, i64* %PC.i143
  %3502 = add i64 %3501, 7
  store i64 %3502, i64* %PC.i143
  %3503 = inttoptr i64 %3500 to i32*
  %3504 = load i32, i32* %3503
  %3505 = sext i32 %3504 to i64
  store i64 %3505, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_41a654, %struct.Memory** %MEMORY
  %loadMem_41a65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 15
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RBP.i142
  %3519 = load i64, i64* %RAX.i140
  %3520 = mul i64 %3519, 4
  %3521 = add i64 %3518, -64
  %3522 = add i64 %3521, %3520
  %3523 = load i64, i64* %PC.i139
  %3524 = add i64 %3523, 4
  store i64 %3524, i64* %PC.i139
  %3525 = inttoptr i64 %3522 to i32*
  %3526 = load i32, i32* %3525
  %3527 = zext i32 %3526 to i64
  store i64 %3527, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_41a65b, %struct.Memory** %MEMORY
  %loadMem_41a65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RBP.i138
  %3538 = sub i64 %3537, 24
  %3539 = load i64, i64* %PC.i136
  %3540 = add i64 %3539, 4
  store i64 %3540, i64* %PC.i136
  %3541 = inttoptr i64 %3538 to i64*
  %3542 = load i64, i64* %3541
  store i64 %3542, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_41a65f, %struct.Memory** %MEMORY
  %loadMem_41a663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 7
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 15
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %RBP.i135
  %3553 = sub i64 %3552, 28
  %3554 = load i64, i64* %PC.i134
  %3555 = add i64 %3554, 3
  store i64 %3555, i64* %PC.i134
  %3556 = inttoptr i64 %3553 to i32*
  %3557 = load i32, i32* %3556
  %3558 = zext i32 %3557 to i64
  store i64 %3558, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_41a663, %struct.Memory** %MEMORY
  %loadMem_41a666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 7
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %EDX.i132 = bitcast %union.anon* %3564 to i32*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 9
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RSI.i133 = bitcast %union.anon* %3567 to i64*
  %3568 = load i32, i32* %EDX.i132
  %3569 = zext i32 %3568 to i64
  %3570 = load i64, i64* %PC.i131
  %3571 = add i64 %3570, 2
  store i64 %3571, i64* %PC.i131
  %3572 = and i64 %3569, 4294967295
  store i64 %3572, i64* %RSI.i133, align 8
  store %struct.Memory* %loadMem_41a666, %struct.Memory** %MEMORY
  %loadMem_41a668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 9
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RSI.i130 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %RSI.i130
  %3580 = load i64, i64* %PC.i129
  %3581 = add i64 %3580, 3
  store i64 %3581, i64* %PC.i129
  %3582 = trunc i64 %3579 to i32
  %3583 = add i32 1, %3582
  %3584 = zext i32 %3583 to i64
  store i64 %3584, i64* %RSI.i130, align 8
  %3585 = icmp ult i32 %3583, %3582
  %3586 = icmp ult i32 %3583, 1
  %3587 = or i1 %3585, %3586
  %3588 = zext i1 %3587 to i8
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3588, i8* %3589, align 1
  %3590 = and i32 %3583, 255
  %3591 = call i32 @llvm.ctpop.i32(i32 %3590)
  %3592 = trunc i32 %3591 to i8
  %3593 = and i8 %3592, 1
  %3594 = xor i8 %3593, 1
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3594, i8* %3595, align 1
  %3596 = xor i64 1, %3579
  %3597 = trunc i64 %3596 to i32
  %3598 = xor i32 %3597, %3583
  %3599 = lshr i32 %3598, 4
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3601, i8* %3602, align 1
  %3603 = icmp eq i32 %3583, 0
  %3604 = zext i1 %3603 to i8
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3604, i8* %3605, align 1
  %3606 = lshr i32 %3583, 31
  %3607 = trunc i32 %3606 to i8
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3607, i8* %3608, align 1
  %3609 = lshr i32 %3582, 31
  %3610 = xor i32 %3606, %3609
  %3611 = add i32 %3610, %3606
  %3612 = icmp eq i32 %3611, 2
  %3613 = zext i1 %3612 to i8
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3613, i8* %3614, align 1
  store %struct.Memory* %loadMem_41a668, %struct.Memory** %MEMORY
  %loadMem_41a66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 33
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 9
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3620 to i32*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 15
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %3623 to i64*
  %3624 = load i64, i64* %RBP.i128
  %3625 = sub i64 %3624, 28
  %3626 = load i32, i32* %ESI.i
  %3627 = zext i32 %3626 to i64
  %3628 = load i64, i64* %PC.i127
  %3629 = add i64 %3628, 3
  store i64 %3629, i64* %PC.i127
  %3630 = inttoptr i64 %3625 to i32*
  store i32 %3626, i32* %3630
  store %struct.Memory* %loadMem_41a66b, %struct.Memory** %MEMORY
  %loadMem_41a66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 7
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3636 to i32*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 11
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RDI.i126 = bitcast %union.anon* %3639 to i64*
  %3640 = load i32, i32* %EDX.i
  %3641 = zext i32 %3640 to i64
  %3642 = load i64, i64* %PC.i125
  %3643 = add i64 %3642, 3
  store i64 %3643, i64* %PC.i125
  %3644 = shl i64 %3641, 32
  %3645 = ashr exact i64 %3644, 32
  store i64 %3645, i64* %RDI.i126, align 8
  store %struct.Memory* %loadMem_41a66e, %struct.Memory** %MEMORY
  %loadMem_41a671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 33
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3648 to i64*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3650 = getelementptr inbounds %struct.GPR, %struct.GPR* %3649, i32 0, i32 5
  %3651 = getelementptr inbounds %struct.Reg, %struct.Reg* %3650, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3651 to i32*
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 1
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 11
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %3657 to i64*
  %3658 = load i64, i64* %RAX.i123
  %3659 = load i64, i64* %RDI.i124
  %3660 = mul i64 %3659, 4
  %3661 = add i64 %3660, %3658
  %3662 = load i32, i32* %ECX.i
  %3663 = zext i32 %3662 to i64
  %3664 = load i64, i64* %PC.i122
  %3665 = add i64 %3664, 3
  store i64 %3665, i64* %PC.i122
  %3666 = inttoptr i64 %3661 to i32*
  store i32 %3662, i32* %3666
  store %struct.Memory* %loadMem_41a671, %struct.Memory** %MEMORY
  %loadMem_41a674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RBP.i121
  %3677 = sub i64 %3676, 2328
  %3678 = load i64, i64* %PC.i119
  %3679 = add i64 %3678, 7
  store i64 %3679, i64* %PC.i119
  %3680 = inttoptr i64 %3677 to i32*
  %3681 = load i32, i32* %3680
  %3682 = sext i32 %3681 to i64
  store i64 %3682, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_41a674, %struct.Memory** %MEMORY
  %loadMem_41a67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 1
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 15
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %3691 to i64*
  %3692 = load i64, i64* %RBP.i118
  %3693 = load i64, i64* %RAX.i117
  %3694 = mul i64 %3693, 4
  %3695 = add i64 %3692, -64
  %3696 = add i64 %3695, %3694
  %3697 = load i64, i64* %PC.i116
  %3698 = add i64 %3697, 5
  store i64 %3698, i64* %PC.i116
  %3699 = inttoptr i64 %3696 to i32*
  %3700 = load i32, i32* %3699
  %3701 = sext i32 %3700 to i64
  store i64 %3701, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_41a67b, %struct.Memory** %MEMORY
  %loadMem_41a680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 33
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3704 to i64*
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 1
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 15
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %3710 to i64*
  %3711 = load i64, i64* %RBP.i115
  %3712 = load i64, i64* %RAX.i114
  %3713 = mul i64 %3712, 4
  %3714 = add i64 %3711, -2320
  %3715 = add i64 %3714, %3713
  %3716 = load i64, i64* %PC.i113
  %3717 = add i64 %3716, 11
  store i64 %3717, i64* %PC.i113
  %3718 = inttoptr i64 %3715 to i32*
  store i32 1, i32* %3718
  store %struct.Memory* %loadMem_41a680, %struct.Memory** %MEMORY
  br label %block_.L_41a68b

block_.L_41a68b:                                  ; preds = %block_41a654, %block_41a63c
  %loadMem1_41a68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 33
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %PC.i112
  %3723 = add i64 %3722, -51499
  %3724 = load i64, i64* %PC.i112
  %3725 = add i64 %3724, 5
  %3726 = load i64, i64* %PC.i112
  %3727 = add i64 %3726, 5
  store i64 %3727, i64* %PC.i112
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3729 = load i64, i64* %3728, align 8
  %3730 = add i64 %3729, -8
  %3731 = inttoptr i64 %3730 to i64*
  store i64 %3725, i64* %3731
  store i64 %3730, i64* %3728, align 8
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3723, i64* %3732, align 8
  store %struct.Memory* %loadMem1_41a68b, %struct.Memory** %MEMORY
  %loadMem2_41a68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a68b = load i64, i64* %3
  %call2_41a68b = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_41a68b, %struct.Memory* %loadMem2_41a68b)
  store %struct.Memory* %call2_41a68b, %struct.Memory** %MEMORY
  %loadMem_41a690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 33
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 15
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RBP.i111
  %3740 = sub i64 %3739, 28
  %3741 = load i64, i64* %PC.i110
  %3742 = add i64 %3741, 7
  store i64 %3742, i64* %PC.i110
  %3743 = inttoptr i64 %3740 to i32*
  %3744 = load i32, i32* %3743
  %3745 = sub i32 %3744, 361
  %3746 = icmp ult i32 %3744, 361
  %3747 = zext i1 %3746 to i8
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3747, i8* %3748, align 1
  %3749 = and i32 %3745, 255
  %3750 = call i32 @llvm.ctpop.i32(i32 %3749)
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = xor i8 %3752, 1
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3753, i8* %3754, align 1
  %3755 = xor i32 %3744, 361
  %3756 = xor i32 %3755, %3745
  %3757 = lshr i32 %3756, 4
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3759, i8* %3760, align 1
  %3761 = icmp eq i32 %3745, 0
  %3762 = zext i1 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3762, i8* %3763, align 1
  %3764 = lshr i32 %3745, 31
  %3765 = trunc i32 %3764 to i8
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3765, i8* %3766, align 1
  %3767 = lshr i32 %3744, 31
  %3768 = xor i32 %3764, %3767
  %3769 = add i32 %3768, %3767
  %3770 = icmp eq i32 %3769, 2
  %3771 = zext i1 %3770 to i8
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3771, i8* %3772, align 1
  store %struct.Memory* %loadMem_41a690, %struct.Memory** %MEMORY
  %loadMem_41a697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %3775 to i64*
  %3776 = load i64, i64* %PC.i109
  %3777 = add i64 %3776, 17
  %3778 = load i64, i64* %PC.i109
  %3779 = add i64 %3778, 6
  %3780 = load i64, i64* %PC.i109
  %3781 = add i64 %3780, 6
  store i64 %3781, i64* %PC.i109
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3783 = load i8, i8* %3782, align 1
  %3784 = icmp eq i8 %3783, 0
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %BRANCH_TAKEN, align 1
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3787 = select i1 %3784, i64 %3777, i64 %3779
  store i64 %3787, i64* %3786, align 8
  store %struct.Memory* %loadMem_41a697, %struct.Memory** %MEMORY
  %loadBr_41a697 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a697 = icmp eq i8 %loadBr_41a697, 1
  br i1 %cmpBr_41a697, label %block_.L_41a6a8, label %block_41a69d

block_41a69d:                                     ; preds = %block_.L_41a68b
  %loadMem_41a69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 33
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 1
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %3793 to i64*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 15
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %3796 to i64*
  %3797 = load i64, i64* %RBP.i108
  %3798 = sub i64 %3797, 28
  %3799 = load i64, i64* %PC.i106
  %3800 = add i64 %3799, 3
  store i64 %3800, i64* %PC.i106
  %3801 = inttoptr i64 %3798 to i32*
  %3802 = load i32, i32* %3801
  %3803 = zext i32 %3802 to i64
  store i64 %3803, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_41a69d, %struct.Memory** %MEMORY
  %loadMem_41a6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 1
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %EAX.i104 = bitcast %union.anon* %3809 to i32*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 15
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %3812 to i64*
  %3813 = load i64, i64* %RBP.i105
  %3814 = sub i64 %3813, 4
  %3815 = load i32, i32* %EAX.i104
  %3816 = zext i32 %3815 to i64
  %3817 = load i64, i64* %PC.i103
  %3818 = add i64 %3817, 3
  store i64 %3818, i64* %PC.i103
  %3819 = inttoptr i64 %3814 to i32*
  store i32 %3815, i32* %3819
  store %struct.Memory* %loadMem_41a6a0, %struct.Memory** %MEMORY
  %loadMem_41a6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 33
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %PC.i102
  %3824 = add i64 %3823, 230
  %3825 = load i64, i64* %PC.i102
  %3826 = add i64 %3825, 5
  store i64 %3826, i64* %PC.i102
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3824, i64* %3827, align 8
  store %struct.Memory* %loadMem_41a6a3, %struct.Memory** %MEMORY
  br label %block_.L_41a789

block_.L_41a6a8:                                  ; preds = %block_.L_41a68b
  %loadMem_41a6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 33
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3830 to i64*
  %3831 = load i64, i64* %PC.i101
  %3832 = add i64 %3831, 5
  %3833 = load i64, i64* %PC.i101
  %3834 = add i64 %3833, 5
  store i64 %3834, i64* %PC.i101
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3832, i64* %3835, align 8
  store %struct.Memory* %loadMem_41a6a8, %struct.Memory** %MEMORY
  br label %block_.L_41a6ad

block_.L_41a6ad:                                  ; preds = %block_.L_41a6a8, %block_41a5fc, %block_41a5d4, %block_41a5ba
  %loadMem_41a6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %PC.i100
  %3840 = add i64 %3839, 5
  %3841 = load i64, i64* %PC.i100
  %3842 = add i64 %3841, 5
  store i64 %3842, i64* %PC.i100
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3840, i64* %3843, align 8
  store %struct.Memory* %loadMem_41a6ad, %struct.Memory** %MEMORY
  br label %block_.L_41a6b2

block_.L_41a6b2:                                  ; preds = %block_.L_41a6ad
  %loadMem_41a6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 1
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 15
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RBP.i99
  %3854 = sub i64 %3853, 2328
  %3855 = load i64, i64* %PC.i97
  %3856 = add i64 %3855, 6
  store i64 %3856, i64* %PC.i97
  %3857 = inttoptr i64 %3854 to i32*
  %3858 = load i32, i32* %3857
  %3859 = zext i32 %3858 to i64
  store i64 %3859, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_41a6b2, %struct.Memory** %MEMORY
  %loadMem_41a6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 1
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %RAX.i96
  %3867 = load i64, i64* %PC.i95
  %3868 = add i64 %3867, 3
  store i64 %3868, i64* %PC.i95
  %3869 = trunc i64 %3866 to i32
  %3870 = add i32 1, %3869
  %3871 = zext i32 %3870 to i64
  store i64 %3871, i64* %RAX.i96, align 8
  %3872 = icmp ult i32 %3870, %3869
  %3873 = icmp ult i32 %3870, 1
  %3874 = or i1 %3872, %3873
  %3875 = zext i1 %3874 to i8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3875, i8* %3876, align 1
  %3877 = and i32 %3870, 255
  %3878 = call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3881, i8* %3882, align 1
  %3883 = xor i64 1, %3866
  %3884 = trunc i64 %3883 to i32
  %3885 = xor i32 %3884, %3870
  %3886 = lshr i32 %3885, 4
  %3887 = trunc i32 %3886 to i8
  %3888 = and i8 %3887, 1
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3888, i8* %3889, align 1
  %3890 = icmp eq i32 %3870, 0
  %3891 = zext i1 %3890 to i8
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3891, i8* %3892, align 1
  %3893 = lshr i32 %3870, 31
  %3894 = trunc i32 %3893 to i8
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3894, i8* %3895, align 1
  %3896 = lshr i32 %3869, 31
  %3897 = xor i32 %3893, %3896
  %3898 = add i32 %3897, %3893
  %3899 = icmp eq i32 %3898, 2
  %3900 = zext i1 %3899 to i8
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3900, i8* %3901, align 1
  store %struct.Memory* %loadMem_41a6b8, %struct.Memory** %MEMORY
  %loadMem_41a6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 1
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %3907 to i32*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 15
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3910 to i64*
  %3911 = load i64, i64* %RBP.i94
  %3912 = sub i64 %3911, 2328
  %3913 = load i32, i32* %EAX.i93
  %3914 = zext i32 %3913 to i64
  %3915 = load i64, i64* %PC.i92
  %3916 = add i64 %3915, 6
  store i64 %3916, i64* %PC.i92
  %3917 = inttoptr i64 %3912 to i32*
  store i32 %3913, i32* %3917
  store %struct.Memory* %loadMem_41a6bb, %struct.Memory** %MEMORY
  %loadMem_41a6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %PC.i91
  %3922 = add i64 %3921, -278
  %3923 = load i64, i64* %PC.i91
  %3924 = add i64 %3923, 5
  store i64 %3924, i64* %PC.i91
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3922, i64* %3925, align 8
  store %struct.Memory* %loadMem_41a6c1, %struct.Memory** %MEMORY
  br label %block_.L_41a5ab

block_.L_41a6c6:                                  ; preds = %block_.L_41a5ab
  %loadMem_41a6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %PC.i90
  %3930 = add i64 %3929, 5
  %3931 = load i64, i64* %PC.i90
  %3932 = add i64 %3931, 5
  store i64 %3932, i64* %PC.i90
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3930, i64* %3933, align 8
  store %struct.Memory* %loadMem_41a6c6, %struct.Memory** %MEMORY
  br label %block_.L_41a6cb

block_.L_41a6cb:                                  ; preds = %block_.L_41a6c6, %block_.L_41a57b
  %loadMem_41a6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3936 to i64*
  %3937 = load i64, i64* %PC.i89
  %3938 = add i64 %3937, 5
  %3939 = load i64, i64* %PC.i89
  %3940 = add i64 %3939, 5
  store i64 %3940, i64* %PC.i89
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3938, i64* %3941, align 8
  store %struct.Memory* %loadMem_41a6cb, %struct.Memory** %MEMORY
  br label %block_.L_41a6d0

block_.L_41a6d0:                                  ; preds = %block_.L_41a6cb
  %loadMem_41a6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 1
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 15
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %RBP.i88
  %3952 = sub i64 %3951, 36
  %3953 = load i64, i64* %PC.i86
  %3954 = add i64 %3953, 3
  store i64 %3954, i64* %PC.i86
  %3955 = inttoptr i64 %3952 to i32*
  %3956 = load i32, i32* %3955
  %3957 = zext i32 %3956 to i64
  store i64 %3957, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_41a6d0, %struct.Memory** %MEMORY
  %loadMem_41a6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 1
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %RAX.i85
  %3965 = load i64, i64* %PC.i84
  %3966 = add i64 %3965, 3
  store i64 %3966, i64* %PC.i84
  %3967 = trunc i64 %3964 to i32
  %3968 = add i32 1, %3967
  %3969 = zext i32 %3968 to i64
  store i64 %3969, i64* %RAX.i85, align 8
  %3970 = icmp ult i32 %3968, %3967
  %3971 = icmp ult i32 %3968, 1
  %3972 = or i1 %3970, %3971
  %3973 = zext i1 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3973, i8* %3974, align 1
  %3975 = and i32 %3968, 255
  %3976 = call i32 @llvm.ctpop.i32(i32 %3975)
  %3977 = trunc i32 %3976 to i8
  %3978 = and i8 %3977, 1
  %3979 = xor i8 %3978, 1
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3979, i8* %3980, align 1
  %3981 = xor i64 1, %3964
  %3982 = trunc i64 %3981 to i32
  %3983 = xor i32 %3982, %3968
  %3984 = lshr i32 %3983, 4
  %3985 = trunc i32 %3984 to i8
  %3986 = and i8 %3985, 1
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3986, i8* %3987, align 1
  %3988 = icmp eq i32 %3968, 0
  %3989 = zext i1 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3989, i8* %3990, align 1
  %3991 = lshr i32 %3968, 31
  %3992 = trunc i32 %3991 to i8
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3992, i8* %3993, align 1
  %3994 = lshr i32 %3967, 31
  %3995 = xor i32 %3991, %3994
  %3996 = add i32 %3995, %3991
  %3997 = icmp eq i32 %3996, 2
  %3998 = zext i1 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3998, i8* %3999, align 1
  store %struct.Memory* %loadMem_41a6d3, %struct.Memory** %MEMORY
  %loadMem_41a6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 33
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 1
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %4005 to i32*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 15
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4008 to i64*
  %4009 = load i64, i64* %RBP.i83
  %4010 = sub i64 %4009, 36
  %4011 = load i32, i32* %EAX.i82
  %4012 = zext i32 %4011 to i64
  %4013 = load i64, i64* %PC.i81
  %4014 = add i64 %4013, 3
  store i64 %4014, i64* %PC.i81
  %4015 = inttoptr i64 %4010 to i32*
  store i32 %4011, i32* %4015
  store %struct.Memory* %loadMem_41a6d6, %struct.Memory** %MEMORY
  %loadMem_41a6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 33
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4018 to i64*
  %4019 = load i64, i64* %PC.i80
  %4020 = add i64 %4019, -484
  %4021 = load i64, i64* %PC.i80
  %4022 = add i64 %4021, 5
  store i64 %4022, i64* %PC.i80
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4020, i64* %4023, align 8
  store %struct.Memory* %loadMem_41a6d9, %struct.Memory** %MEMORY
  br label %block_.L_41a4f5

block_.L_41a6de:                                  ; preds = %block_.L_41a4f5
  %loadMem_41a6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 1
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4029 to i64*
  %4030 = load i64, i64* %PC.i78
  %4031 = add i64 %4030, 7
  store i64 %4031, i64* %PC.i78
  %4032 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %4033 = zext i32 %4032 to i64
  store i64 %4033, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_41a6de, %struct.Memory** %MEMORY
  %loadMem_41a6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 1
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RAX.i77
  %4041 = load i64, i64* %PC.i76
  %4042 = add i64 %4041, 5
  store i64 %4042, i64* %PC.i76
  %4043 = and i64 262144, %4040
  %4044 = trunc i64 %4043 to i32
  store i64 %4043, i64* %RAX.i77, align 8
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4045, align 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4046, align 1
  %4047 = icmp eq i32 %4044, 0
  %4048 = zext i1 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4048, i8* %4049, align 1
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4050, align 1
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4051, align 1
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4052, align 1
  store %struct.Memory* %loadMem_41a6e5, %struct.Memory** %MEMORY
  %loadMem_41a6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 1
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %EAX.i75 = bitcast %union.anon* %4058 to i32*
  %4059 = load i32, i32* %EAX.i75
  %4060 = zext i32 %4059 to i64
  %4061 = load i64, i64* %PC.i74
  %4062 = add i64 %4061, 3
  store i64 %4062, i64* %PC.i74
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4063, align 1
  %4064 = and i32 %4059, 255
  %4065 = call i32 @llvm.ctpop.i32(i32 %4064)
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  %4068 = xor i8 %4067, 1
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4068, i8* %4069, align 1
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4070, align 1
  %4071 = icmp eq i32 %4059, 0
  %4072 = zext i1 %4071 to i8
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4072, i8* %4073, align 1
  %4074 = lshr i32 %4059, 31
  %4075 = trunc i32 %4074 to i8
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4075, i8* %4076, align 1
  %4077 = lshr i32 %4059, 31
  %4078 = xor i32 %4074, %4077
  %4079 = add i32 %4078, %4077
  %4080 = icmp eq i32 %4079, 2
  %4081 = zext i1 %4080 to i8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4081, i8* %4082, align 1
  store %struct.Memory* %loadMem_41a6ea, %struct.Memory** %MEMORY
  %loadMem_41a6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 33
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %PC.i73
  %4087 = add i64 %4086, 125
  %4088 = load i64, i64* %PC.i73
  %4089 = add i64 %4088, 6
  %4090 = load i64, i64* %PC.i73
  %4091 = add i64 %4090, 6
  store i64 %4091, i64* %PC.i73
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4093 = load i8, i8* %4092, align 1
  store i8 %4093, i8* %BRANCH_TAKEN, align 1
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4095 = icmp ne i8 %4093, 0
  %4096 = select i1 %4095, i64 %4087, i64 %4089
  store i64 %4096, i64* %4094, align 8
  store %struct.Memory* %loadMem_41a6ed, %struct.Memory** %MEMORY
  %loadBr_41a6ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a6ed = icmp eq i8 %loadBr_41a6ed, 1
  br i1 %cmpBr_41a6ed, label %block_.L_41a76a, label %block_41a6f3

block_41a6f3:                                     ; preds = %block_.L_41a6de
  %loadMem_41a6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 11
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %RDI.i72 = bitcast %union.anon* %4102 to i64*
  %4103 = load i64, i64* %PC.i71
  %4104 = add i64 %4103, 10
  store i64 %4104, i64* %PC.i71
  store i64 ptrtoint (%G__0x57abea_type* @G__0x57abea to i64), i64* %RDI.i72, align 8
  store %struct.Memory* %loadMem_41a6f3, %struct.Memory** %MEMORY
  %loadMem_41a6fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 9
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RSI.i69 = bitcast %union.anon* %4110 to i64*
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 15
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %4113 to i64*
  %4114 = load i64, i64* %RBP.i70
  %4115 = sub i64 %4114, 2332
  %4116 = load i64, i64* %PC.i68
  %4117 = add i64 %4116, 6
  store i64 %4117, i64* %PC.i68
  %4118 = inttoptr i64 %4115 to i32*
  %4119 = load i32, i32* %4118
  %4120 = zext i32 %4119 to i64
  store i64 %4120, i64* %RSI.i69, align 8
  store %struct.Memory* %loadMem_41a6fd, %struct.Memory** %MEMORY
  %loadMem_41a703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4122 = getelementptr inbounds %struct.GPR, %struct.GPR* %4121, i32 0, i32 33
  %4123 = getelementptr inbounds %struct.Reg, %struct.Reg* %4122, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4123 to i64*
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4125 = getelementptr inbounds %struct.GPR, %struct.GPR* %4124, i32 0, i32 1
  %4126 = getelementptr inbounds %struct.Reg, %struct.Reg* %4125, i32 0, i32 0
  %4127 = bitcast %union.anon* %4126 to %struct.anon.2*
  %AL.i67 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4127, i32 0, i32 0
  %4128 = load i64, i64* %PC.i66
  %4129 = add i64 %4128, 2
  store i64 %4129, i64* %PC.i66
  store i8 0, i8* %AL.i67, align 1
  store %struct.Memory* %loadMem_41a703, %struct.Memory** %MEMORY
  %loadMem1_41a705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4132 to i64*
  %4133 = load i64, i64* %PC.i65
  %4134 = add i64 %4133, 226987
  %4135 = load i64, i64* %PC.i65
  %4136 = add i64 %4135, 5
  %4137 = load i64, i64* %PC.i65
  %4138 = add i64 %4137, 5
  store i64 %4138, i64* %PC.i65
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4140 = load i64, i64* %4139, align 8
  %4141 = add i64 %4140, -8
  %4142 = inttoptr i64 %4141 to i64*
  store i64 %4136, i64* %4142
  store i64 %4141, i64* %4139, align 8
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4134, i64* %4143, align 8
  store %struct.Memory* %loadMem1_41a705, %struct.Memory** %MEMORY
  %loadMem2_41a705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a705 = load i64, i64* %3
  %call2_41a705 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_41a705, %struct.Memory* %loadMem2_41a705)
  store %struct.Memory* %call2_41a705, %struct.Memory** %MEMORY
  %loadMem_41a70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 15
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %RBP.i64
  %4151 = sub i64 %4150, 36
  %4152 = load i64, i64* %PC.i63
  %4153 = add i64 %4152, 7
  store i64 %4153, i64* %PC.i63
  %4154 = inttoptr i64 %4151 to i32*
  store i32 0, i32* %4154
  store %struct.Memory* %loadMem_41a70a, %struct.Memory** %MEMORY
  %loadMem_41a711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4157 to i64*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 1
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %4160 to i32*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 15
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %4163 to i64*
  %4164 = load i64, i64* %RBP.i62
  %4165 = sub i64 %4164, 2344
  %4166 = load i32, i32* %EAX.i61
  %4167 = zext i32 %4166 to i64
  %4168 = load i64, i64* %PC.i60
  %4169 = add i64 %4168, 6
  store i64 %4169, i64* %PC.i60
  %4170 = inttoptr i64 %4165 to i32*
  store i32 %4166, i32* %4170
  store %struct.Memory* %loadMem_41a711, %struct.Memory** %MEMORY
  br label %block_.L_41a717

block_.L_41a717:                                  ; preds = %block_41a723, %block_41a6f3
  %loadMem_41a717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 1
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %4176 to i64*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 15
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %4179 to i64*
  %4180 = load i64, i64* %RBP.i59
  %4181 = sub i64 %4180, 36
  %4182 = load i64, i64* %PC.i57
  %4183 = add i64 %4182, 3
  store i64 %4183, i64* %PC.i57
  %4184 = inttoptr i64 %4181 to i32*
  %4185 = load i32, i32* %4184
  %4186 = zext i32 %4185 to i64
  store i64 %4186, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_41a717, %struct.Memory** %MEMORY
  %loadMem_41a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 33
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 1
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %EAX.i55 = bitcast %union.anon* %4192 to i32*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 15
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %4195 to i64*
  %4196 = load i32, i32* %EAX.i55
  %4197 = zext i32 %4196 to i64
  %4198 = load i64, i64* %RBP.i56
  %4199 = sub i64 %4198, 28
  %4200 = load i64, i64* %PC.i54
  %4201 = add i64 %4200, 3
  store i64 %4201, i64* %PC.i54
  %4202 = inttoptr i64 %4199 to i32*
  %4203 = load i32, i32* %4202
  %4204 = sub i32 %4196, %4203
  %4205 = icmp ult i32 %4196, %4203
  %4206 = zext i1 %4205 to i8
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4206, i8* %4207, align 1
  %4208 = and i32 %4204, 255
  %4209 = call i32 @llvm.ctpop.i32(i32 %4208)
  %4210 = trunc i32 %4209 to i8
  %4211 = and i8 %4210, 1
  %4212 = xor i8 %4211, 1
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4212, i8* %4213, align 1
  %4214 = xor i32 %4203, %4196
  %4215 = xor i32 %4214, %4204
  %4216 = lshr i32 %4215, 4
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4218, i8* %4219, align 1
  %4220 = icmp eq i32 %4204, 0
  %4221 = zext i1 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4221, i8* %4222, align 1
  %4223 = lshr i32 %4204, 31
  %4224 = trunc i32 %4223 to i8
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4224, i8* %4225, align 1
  %4226 = lshr i32 %4196, 31
  %4227 = lshr i32 %4203, 31
  %4228 = xor i32 %4227, %4226
  %4229 = xor i32 %4223, %4226
  %4230 = add i32 %4229, %4228
  %4231 = icmp eq i32 %4230, 2
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4232, i8* %4233, align 1
  store %struct.Memory* %loadMem_41a71a, %struct.Memory** %MEMORY
  %loadMem_41a71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4236 to i64*
  %4237 = load i64, i64* %PC.i53
  %4238 = add i64 %4237, 54
  %4239 = load i64, i64* %PC.i53
  %4240 = add i64 %4239, 6
  %4241 = load i64, i64* %PC.i53
  %4242 = add i64 %4241, 6
  store i64 %4242, i64* %PC.i53
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4244 = load i8, i8* %4243, align 1
  %4245 = icmp ne i8 %4244, 0
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4247 = load i8, i8* %4246, align 1
  %4248 = icmp ne i8 %4247, 0
  %4249 = xor i1 %4245, %4248
  %4250 = xor i1 %4249, true
  %4251 = zext i1 %4250 to i8
  store i8 %4251, i8* %BRANCH_TAKEN, align 1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4253 = select i1 %4249, i64 %4240, i64 %4238
  store i64 %4253, i64* %4252, align 8
  store %struct.Memory* %loadMem_41a71d, %struct.Memory** %MEMORY
  %loadBr_41a71d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41a71d = icmp eq i8 %loadBr_41a71d, 1
  br i1 %cmpBr_41a71d, label %block_.L_41a753, label %block_41a723

block_41a723:                                     ; preds = %block_.L_41a717
  %loadMem_41a723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 11
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RDI.i52 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %PC.i51
  %4261 = add i64 %4260, 10
  store i64 %4261, i64* %PC.i51
  store i64 ptrtoint (%G__0x57ac01_type* @G__0x57ac01 to i64), i64* %RDI.i52, align 8
  store %struct.Memory* %loadMem_41a723, %struct.Memory** %MEMORY
  %loadMem_41a72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 33
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4264 to i64*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 1
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %4267 to i64*
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 15
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %4270 to i64*
  %4271 = load i64, i64* %RBP.i50
  %4272 = sub i64 %4271, 24
  %4273 = load i64, i64* %PC.i48
  %4274 = add i64 %4273, 4
  store i64 %4274, i64* %PC.i48
  %4275 = inttoptr i64 %4272 to i64*
  %4276 = load i64, i64* %4275
  store i64 %4276, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_41a72d, %struct.Memory** %MEMORY
  %loadMem_41a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 5
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 15
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %4285 to i64*
  %4286 = load i64, i64* %RBP.i47
  %4287 = sub i64 %4286, 36
  %4288 = load i64, i64* %PC.i45
  %4289 = add i64 %4288, 4
  store i64 %4289, i64* %PC.i45
  %4290 = inttoptr i64 %4287 to i32*
  %4291 = load i32, i32* %4290
  %4292 = sext i32 %4291 to i64
  store i64 %4292, i64* %RCX.i46, align 8
  store %struct.Memory* %loadMem_41a731, %struct.Memory** %MEMORY
  %loadMem_41a735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 1
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 5
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 9
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RAX.i44
  %4306 = load i64, i64* %RCX.i
  %4307 = mul i64 %4306, 4
  %4308 = add i64 %4307, %4305
  %4309 = load i64, i64* %PC.i43
  %4310 = add i64 %4309, 3
  store i64 %4310, i64* %PC.i43
  %4311 = inttoptr i64 %4308 to i32*
  %4312 = load i32, i32* %4311
  %4313 = zext i32 %4312 to i64
  store i64 %4313, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41a735, %struct.Memory** %MEMORY
  %loadMem_41a738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %4320 = bitcast %union.anon* %4319 to %struct.anon.2*
  %AL.i42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4320, i32 0, i32 0
  %4321 = load i64, i64* %PC.i41
  %4322 = add i64 %4321, 2
  store i64 %4322, i64* %PC.i41
  store i8 0, i8* %AL.i42, align 1
  store %struct.Memory* %loadMem_41a738, %struct.Memory** %MEMORY
  %loadMem1_41a73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4325 to i64*
  %4326 = load i64, i64* %PC.i40
  %4327 = add i64 %4326, 226934
  %4328 = load i64, i64* %PC.i40
  %4329 = add i64 %4328, 5
  %4330 = load i64, i64* %PC.i40
  %4331 = add i64 %4330, 5
  store i64 %4331, i64* %PC.i40
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4333 = load i64, i64* %4332, align 8
  %4334 = add i64 %4333, -8
  %4335 = inttoptr i64 %4334 to i64*
  store i64 %4329, i64* %4335
  store i64 %4334, i64* %4332, align 8
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4327, i64* %4336, align 8
  store %struct.Memory* %loadMem1_41a73a, %struct.Memory** %MEMORY
  %loadMem2_41a73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a73a = load i64, i64* %3
  %call2_41a73a = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_41a73a, %struct.Memory* %loadMem2_41a73a)
  store %struct.Memory* %call2_41a73a, %struct.Memory** %MEMORY
  %loadMem_41a73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 33
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 1
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %EAX.i38 = bitcast %union.anon* %4342 to i32*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 15
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %4345 to i64*
  %4346 = load i64, i64* %RBP.i39
  %4347 = sub i64 %4346, 2348
  %4348 = load i32, i32* %EAX.i38
  %4349 = zext i32 %4348 to i64
  %4350 = load i64, i64* %PC.i37
  %4351 = add i64 %4350, 6
  store i64 %4351, i64* %PC.i37
  %4352 = inttoptr i64 %4347 to i32*
  store i32 %4348, i32* %4352
  store %struct.Memory* %loadMem_41a73f, %struct.Memory** %MEMORY
  %loadMem_41a745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 33
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 1
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 15
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4361 to i64*
  %4362 = load i64, i64* %RBP.i36
  %4363 = sub i64 %4362, 36
  %4364 = load i64, i64* %PC.i34
  %4365 = add i64 %4364, 3
  store i64 %4365, i64* %PC.i34
  %4366 = inttoptr i64 %4363 to i32*
  %4367 = load i32, i32* %4366
  %4368 = zext i32 %4367 to i64
  store i64 %4368, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_41a745, %struct.Memory** %MEMORY
  %loadMem_41a748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 1
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %RAX.i33
  %4376 = load i64, i64* %PC.i32
  %4377 = add i64 %4376, 3
  store i64 %4377, i64* %PC.i32
  %4378 = trunc i64 %4375 to i32
  %4379 = add i32 1, %4378
  %4380 = zext i32 %4379 to i64
  store i64 %4380, i64* %RAX.i33, align 8
  %4381 = icmp ult i32 %4379, %4378
  %4382 = icmp ult i32 %4379, 1
  %4383 = or i1 %4381, %4382
  %4384 = zext i1 %4383 to i8
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4384, i8* %4385, align 1
  %4386 = and i32 %4379, 255
  %4387 = call i32 @llvm.ctpop.i32(i32 %4386)
  %4388 = trunc i32 %4387 to i8
  %4389 = and i8 %4388, 1
  %4390 = xor i8 %4389, 1
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4390, i8* %4391, align 1
  %4392 = xor i64 1, %4375
  %4393 = trunc i64 %4392 to i32
  %4394 = xor i32 %4393, %4379
  %4395 = lshr i32 %4394, 4
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4397, i8* %4398, align 1
  %4399 = icmp eq i32 %4379, 0
  %4400 = zext i1 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4400, i8* %4401, align 1
  %4402 = lshr i32 %4379, 31
  %4403 = trunc i32 %4402 to i8
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4403, i8* %4404, align 1
  %4405 = lshr i32 %4378, 31
  %4406 = xor i32 %4402, %4405
  %4407 = add i32 %4406, %4402
  %4408 = icmp eq i32 %4407, 2
  %4409 = zext i1 %4408 to i8
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4409, i8* %4410, align 1
  store %struct.Memory* %loadMem_41a748, %struct.Memory** %MEMORY
  %loadMem_41a74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 33
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4413 to i64*
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 1
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %4416 to i32*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 15
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %4419 to i64*
  %4420 = load i64, i64* %RBP.i31
  %4421 = sub i64 %4420, 36
  %4422 = load i32, i32* %EAX.i30
  %4423 = zext i32 %4422 to i64
  %4424 = load i64, i64* %PC.i29
  %4425 = add i64 %4424, 3
  store i64 %4425, i64* %PC.i29
  %4426 = inttoptr i64 %4421 to i32*
  store i32 %4422, i32* %4426
  store %struct.Memory* %loadMem_41a74b, %struct.Memory** %MEMORY
  %loadMem_41a74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 33
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %PC.i28
  %4431 = add i64 %4430, -55
  %4432 = load i64, i64* %PC.i28
  %4433 = add i64 %4432, 5
  store i64 %4433, i64* %PC.i28
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4431, i64* %4434, align 8
  store %struct.Memory* %loadMem_41a74e, %struct.Memory** %MEMORY
  br label %block_.L_41a717

block_.L_41a753:                                  ; preds = %block_.L_41a717
  %loadMem_41a753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 33
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 11
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4440 to i64*
  %4441 = load i64, i64* %PC.i27
  %4442 = add i64 %4441, 10
  store i64 %4442, i64* %PC.i27
  store i64 ptrtoint (%G__0x57a353_type* @G__0x57a353 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41a753, %struct.Memory** %MEMORY
  %loadMem_41a75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 33
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4445 to i64*
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 1
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %4449 = bitcast %union.anon* %4448 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4449, i32 0, i32 0
  %4450 = load i64, i64* %PC.i26
  %4451 = add i64 %4450, 2
  store i64 %4451, i64* %PC.i26
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_41a75d, %struct.Memory** %MEMORY
  %loadMem1_41a75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4454 to i64*
  %4455 = load i64, i64* %PC.i25
  %4456 = add i64 %4455, 226897
  %4457 = load i64, i64* %PC.i25
  %4458 = add i64 %4457, 5
  %4459 = load i64, i64* %PC.i25
  %4460 = add i64 %4459, 5
  store i64 %4460, i64* %PC.i25
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4462 = load i64, i64* %4461, align 8
  %4463 = add i64 %4462, -8
  %4464 = inttoptr i64 %4463 to i64*
  store i64 %4458, i64* %4464
  store i64 %4463, i64* %4461, align 8
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4456, i64* %4465, align 8
  store %struct.Memory* %loadMem1_41a75f, %struct.Memory** %MEMORY
  %loadMem2_41a75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41a75f = load i64, i64* %3
  %call2_41a75f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_41a75f, %struct.Memory* %loadMem2_41a75f)
  store %struct.Memory* %call2_41a75f, %struct.Memory** %MEMORY
  %loadMem_41a764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 1
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %4471 to i32*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 15
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4474 to i64*
  %4475 = load i64, i64* %RBP.i24
  %4476 = sub i64 %4475, 2352
  %4477 = load i32, i32* %EAX.i23
  %4478 = zext i32 %4477 to i64
  %4479 = load i64, i64* %PC.i22
  %4480 = add i64 %4479, 6
  store i64 %4480, i64* %PC.i22
  %4481 = inttoptr i64 %4476 to i32*
  store i32 %4477, i32* %4481
  store %struct.Memory* %loadMem_41a764, %struct.Memory** %MEMORY
  br label %block_.L_41a76a

block_.L_41a76a:                                  ; preds = %block_.L_41a753, %block_.L_41a6de
  %loadMem_41a76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4484 to i64*
  %4485 = load i64, i64* %PC.i21
  %4486 = add i64 %4485, 5
  %4487 = load i64, i64* %PC.i21
  %4488 = add i64 %4487, 5
  store i64 %4488, i64* %PC.i21
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4486, i64* %4489, align 8
  store %struct.Memory* %loadMem_41a76a, %struct.Memory** %MEMORY
  br label %block_.L_41a76f

block_.L_41a76f:                                  ; preds = %block_.L_41a76a, %block_41a399, %block_41a37c
  %loadMem_41a76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 15
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RBP.i20
  %4500 = sub i64 %4499, 2324
  %4501 = load i64, i64* %PC.i18
  %4502 = add i64 %4501, 6
  store i64 %4502, i64* %PC.i18
  %4503 = inttoptr i64 %4500 to i32*
  %4504 = load i32, i32* %4503
  %4505 = zext i32 %4504 to i64
  store i64 %4505, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_41a76f, %struct.Memory** %MEMORY
  %loadMem_41a775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 1
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %4511 to i64*
  %4512 = load i64, i64* %RAX.i17
  %4513 = load i64, i64* %PC.i16
  %4514 = add i64 %4513, 3
  store i64 %4514, i64* %PC.i16
  %4515 = trunc i64 %4512 to i32
  %4516 = add i32 1, %4515
  %4517 = zext i32 %4516 to i64
  store i64 %4517, i64* %RAX.i17, align 8
  %4518 = icmp ult i32 %4516, %4515
  %4519 = icmp ult i32 %4516, 1
  %4520 = or i1 %4518, %4519
  %4521 = zext i1 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4521, i8* %4522, align 1
  %4523 = and i32 %4516, 255
  %4524 = call i32 @llvm.ctpop.i32(i32 %4523)
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  %4527 = xor i8 %4526, 1
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4527, i8* %4528, align 1
  %4529 = xor i64 1, %4512
  %4530 = trunc i64 %4529 to i32
  %4531 = xor i32 %4530, %4516
  %4532 = lshr i32 %4531, 4
  %4533 = trunc i32 %4532 to i8
  %4534 = and i8 %4533, 1
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4534, i8* %4535, align 1
  %4536 = icmp eq i32 %4516, 0
  %4537 = zext i1 %4536 to i8
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4537, i8* %4538, align 1
  %4539 = lshr i32 %4516, 31
  %4540 = trunc i32 %4539 to i8
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4540, i8* %4541, align 1
  %4542 = lshr i32 %4515, 31
  %4543 = xor i32 %4539, %4542
  %4544 = add i32 %4543, %4539
  %4545 = icmp eq i32 %4544, 2
  %4546 = zext i1 %4545 to i8
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4546, i8* %4547, align 1
  store %struct.Memory* %loadMem_41a775, %struct.Memory** %MEMORY
  %loadMem_41a778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 33
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4550 to i64*
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 1
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %4553 to i32*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 15
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %4556 to i64*
  %4557 = load i64, i64* %RBP.i15
  %4558 = sub i64 %4557, 2324
  %4559 = load i32, i32* %EAX.i14
  %4560 = zext i32 %4559 to i64
  %4561 = load i64, i64* %PC.i13
  %4562 = add i64 %4561, 6
  store i64 %4562, i64* %PC.i13
  %4563 = inttoptr i64 %4558 to i32*
  store i32 %4559, i32* %4563
  store %struct.Memory* %loadMem_41a778, %struct.Memory** %MEMORY
  %loadMem_41a77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 33
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4566 to i64*
  %4567 = load i64, i64* %PC.i12
  %4568 = add i64 %4567, -1136
  %4569 = load i64, i64* %PC.i12
  %4570 = add i64 %4569, 5
  store i64 %4570, i64* %PC.i12
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4568, i64* %4571, align 8
  store %struct.Memory* %loadMem_41a77e, %struct.Memory** %MEMORY
  br label %block_.L_41a30e

block_.L_41a783:                                  ; preds = %block_41a34b
  %loadMem_41a783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 1
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 15
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4580 to i64*
  %4581 = load i64, i64* %RBP.i11
  %4582 = sub i64 %4581, 28
  %4583 = load i64, i64* %PC.i9
  %4584 = add i64 %4583, 3
  store i64 %4584, i64* %PC.i9
  %4585 = inttoptr i64 %4582 to i32*
  %4586 = load i32, i32* %4585
  %4587 = zext i32 %4586 to i64
  store i64 %4587, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_41a783, %struct.Memory** %MEMORY
  %loadMem_41a786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 33
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4590 to i64*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 1
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4593 to i32*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 15
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4596 to i64*
  %4597 = load i64, i64* %RBP.i8
  %4598 = sub i64 %4597, 4
  %4599 = load i32, i32* %EAX.i
  %4600 = zext i32 %4599 to i64
  %4601 = load i64, i64* %PC.i7
  %4602 = add i64 %4601, 3
  store i64 %4602, i64* %PC.i7
  %4603 = inttoptr i64 %4598 to i32*
  store i32 %4599, i32* %4603
  store %struct.Memory* %loadMem_41a786, %struct.Memory** %MEMORY
  br label %block_.L_41a789

block_.L_41a789:                                  ; preds = %block_.L_41a783, %block_41a69d, %block_41a55e, %block_41a4b6, %block_41a3c3
  %loadMem_41a789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 1
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 15
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RBP.i6
  %4614 = sub i64 %4613, 4
  %4615 = load i64, i64* %PC.i5
  %4616 = add i64 %4615, 3
  store i64 %4616, i64* %PC.i5
  %4617 = inttoptr i64 %4614 to i32*
  %4618 = load i32, i32* %4617
  %4619 = zext i32 %4618 to i64
  store i64 %4619, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_41a789, %struct.Memory** %MEMORY
  %loadMem_41a78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 13
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4625 to i64*
  %4626 = load i64, i64* %RSP.i
  %4627 = load i64, i64* %PC.i4
  %4628 = add i64 %4627, 7
  store i64 %4628, i64* %PC.i4
  %4629 = add i64 2352, %4626
  store i64 %4629, i64* %RSP.i, align 8
  %4630 = icmp ult i64 %4629, %4626
  %4631 = icmp ult i64 %4629, 2352
  %4632 = or i1 %4630, %4631
  %4633 = zext i1 %4632 to i8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4633, i8* %4634, align 1
  %4635 = trunc i64 %4629 to i32
  %4636 = and i32 %4635, 255
  %4637 = call i32 @llvm.ctpop.i32(i32 %4636)
  %4638 = trunc i32 %4637 to i8
  %4639 = and i8 %4638, 1
  %4640 = xor i8 %4639, 1
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4640, i8* %4641, align 1
  %4642 = xor i64 2352, %4626
  %4643 = xor i64 %4642, %4629
  %4644 = lshr i64 %4643, 4
  %4645 = trunc i64 %4644 to i8
  %4646 = and i8 %4645, 1
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4646, i8* %4647, align 1
  %4648 = icmp eq i64 %4629, 0
  %4649 = zext i1 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4649, i8* %4650, align 1
  %4651 = lshr i64 %4629, 63
  %4652 = trunc i64 %4651 to i8
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4652, i8* %4653, align 1
  %4654 = lshr i64 %4626, 63
  %4655 = xor i64 %4651, %4654
  %4656 = add i64 %4655, %4651
  %4657 = icmp eq i64 %4656, 2
  %4658 = zext i1 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4658, i8* %4659, align 1
  store %struct.Memory* %loadMem_41a78c, %struct.Memory** %MEMORY
  %loadMem_41a793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 15
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4665 to i64*
  %4666 = load i64, i64* %PC.i2
  %4667 = add i64 %4666, 1
  store i64 %4667, i64* %PC.i2
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4669 = load i64, i64* %4668, align 8
  %4670 = add i64 %4669, 8
  %4671 = inttoptr i64 %4669 to i64*
  %4672 = load i64, i64* %4671
  store i64 %4672, i64* %RBP.i3, align 8
  store i64 %4670, i64* %4668, align 8
  store %struct.Memory* %loadMem_41a793, %struct.Memory** %MEMORY
  %loadMem_41a794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4675 to i64*
  %4676 = load i64, i64* %PC.i1
  %4677 = add i64 %4676, 1
  store i64 %4677, i64* %PC.i1
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4680 = load i64, i64* %4679, align 8
  %4681 = inttoptr i64 %4680 to i64*
  %4682 = load i64, i64* %4681
  store i64 %4682, i64* %4678, align 8
  %4683 = add i64 %4680, 8
  store i64 %4683, i64* %4679, align 8
  store %struct.Memory* %loadMem_41a794, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41a794
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

define %struct.Memory* @routine_subq__0x930___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 2352
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 2352
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
  %23 = xor i64 2352, %9
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

define %struct.Memory* @routine_movl__0x640___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1600, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x910__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x914__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x914__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_movb__cl__MINUS0x921__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 2337
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41a33d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x914__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_setne__dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0x921__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 2337
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x921__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 2337
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41a350(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a783(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x91c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2332
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x91c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_jne_.L_41a381(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a76f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x91c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_jne_.L_41a39e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x169__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 361
  %16 = icmp ult i32 %14, 361
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
  %25 = xor i32 %14, 361
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

define %struct.Memory* @routine_jne_.L_41a3ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a789(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x910__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2320
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.findlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_41a4d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -64
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x910__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2320
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41a4c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57abd2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57abd2_type* @G__0x57abd2 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x91c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x91c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_je_.L_41a4c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41a4a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx____rax__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_jne_.L_41a4c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a4c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a4cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a3fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 720
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.chainlinks(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 68
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

define %struct.Memory* @routine_jge_.L_41a6de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x920__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -720
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_41a57b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x920__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x920__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41a569(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_jg_.L_41a6cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x918__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x918__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41a6c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x918__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41a6ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp__rax_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57abde___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57abde_type* @G__0x57abde to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x918__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_41a6ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41a68b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41a6a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41a6ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a6b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x918__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2328
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a5ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a6cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a6d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41a4f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x40000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = and i64 262144, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %15, align 1
  %16 = icmp eq i32 %13, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_41a76a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57abea___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57abea_type* @G__0x57abea to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x91c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x928__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2344
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jge_.L_41a753(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57ac01___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ac01_type* @G__0x57ac01 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x92c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2348
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a717(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a353___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a353_type* @G__0x57a353 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x930__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2352
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x914__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x914__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41a30e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x930___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 2352, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 2352
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
  %25 = xor i64 2352, %9
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
