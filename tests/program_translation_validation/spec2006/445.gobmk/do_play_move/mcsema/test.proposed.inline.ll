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
%G_0x99da08_type = type <{ [4 x i8] }>
%G_0xa7f420_type = type <{ [8 x i8] }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57c4d2_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
%G__0xafc500_type = type <{ [8 x i8] }>
%G__0xb89e60_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x99da08 = global %G_0x99da08_type zeroinitializer
@G_0xa7f420 = global %G_0xa7f420_type zeroinitializer
@G_0xb6eec4 = global %G_0xb6eec4_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57c4d2 = global %G__0x57c4d2_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer
@G__0xafc500 = global %G__0xafc500_type zeroinitializer
@G__0xb89e60 = global %G__0xb89e60_type zeroinitializer

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

declare %struct.Memory* @sub_40a360.do_remove_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40a5e0.do_commit_suicide(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40a850.create_new_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40b1b0.extend_neighbor_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40c070.assimilate_neighbor_strings(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @do_play_move(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_409a10 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_409a10, %struct.Memory** %MEMORY
  %loadMem_409a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i980 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i981 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i980
  %27 = load i64, i64* %PC.i979
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i979
  store i64 %26, i64* %RBP.i981, align 8
  store %struct.Memory* %loadMem_409a11, %struct.Memory** %MEMORY
  %loadMem_409a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i978 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i978
  %36 = load i64, i64* %PC.i977
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i977
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i978, align 8
  %39 = icmp ult i64 %35, 48
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
  %49 = xor i64 48, %35
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
  store %struct.Memory* %loadMem_409a14, %struct.Memory** %MEMORY
  %loadMem_409a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i975 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i976 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i975
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i975
  store i64 3, i64* %RAX.i976, align 8
  store %struct.Memory* %loadMem_409a18, %struct.Memory** %MEMORY
  %loadMem_409a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i974 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i974
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i973
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i973
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_409a1d, %struct.Memory** %MEMORY
  %loadMem_409a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %ESI.i971 = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i972 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i972
  %101 = sub i64 %100, 8
  %102 = load i32, i32* %ESI.i971
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i970
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i970
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_409a20, %struct.Memory** %MEMORY
  %loadMem_409a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RAX.i968 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i969 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RAX.i968
  %117 = load i64, i64* %RBP.i969
  %118 = sub i64 %117, 8
  %119 = load i64, i64* %PC.i967
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i967
  %121 = trunc i64 %116 to i32
  %122 = inttoptr i64 %118 to i32*
  %123 = load i32, i32* %122
  %124 = sub i32 %121, %123
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX.i968, align 8
  %126 = icmp ult i32 %121, %123
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1
  %129 = and i32 %124, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1
  %135 = xor i32 %123, %121
  %136 = xor i32 %135, %124
  %137 = lshr i32 %136, 4
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %139, i8* %140, align 1
  %141 = icmp eq i32 %124, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1
  %144 = lshr i32 %124, 31
  %145 = trunc i32 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1
  %147 = lshr i32 %121, 31
  %148 = lshr i32 %123, 31
  %149 = xor i32 %148, %147
  %150 = xor i32 %144, %147
  %151 = add i32 %150, %149
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %153, i8* %154, align 1
  store %struct.Memory* %loadMem_409a23, %struct.Memory** %MEMORY
  %loadMem_409a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %EAX.i965 = bitcast %union.anon* %160 to i32*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i966
  %165 = sub i64 %164, 12
  %166 = load i32, i32* %EAX.i965
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* %PC.i964
  %169 = add i64 %168, 3
  store i64 %169, i64* %PC.i964
  %170 = inttoptr i64 %165 to i32*
  store i32 %166, i32* %170
  store %struct.Memory* %loadMem_409a26, %struct.Memory** %MEMORY
  %loadMem_409a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i963 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i963
  %178 = sub i64 %177, 16
  %179 = load i64, i64* %PC.i962
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC.i962
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181
  store %struct.Memory* %loadMem_409a29, %struct.Memory** %MEMORY
  %loadMem_409a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i961 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i961
  %189 = sub i64 %188, 20
  %190 = load i64, i64* %PC.i960
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC.i960
  %192 = inttoptr i64 %189 to i32*
  store i32 0, i32* %192
  store %struct.Memory* %loadMem_409a30, %struct.Memory** %MEMORY
  %loadMem_409a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RBP.i959
  %200 = sub i64 %199, 24
  %201 = load i64, i64* %PC.i958
  %202 = add i64 %201, 7
  store i64 %202, i64* %PC.i958
  %203 = inttoptr i64 %200 to i32*
  store i32 0, i32* %203
  store %struct.Memory* %loadMem_409a37, %struct.Memory** %MEMORY
  %loadMem_409a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RBP.i957
  %211 = sub i64 %210, 28
  %212 = load i64, i64* %PC.i956
  %213 = add i64 %212, 7
  store i64 %213, i64* %PC.i956
  %214 = inttoptr i64 %211 to i32*
  store i32 -1, i32* %214
  store %struct.Memory* %loadMem_409a3e, %struct.Memory** %MEMORY
  %loadMem_409a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RAX.i954 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i955 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i955
  %225 = sub i64 %224, 4
  %226 = load i64, i64* %PC.i953
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC.i953
  %228 = inttoptr i64 %225 to i32*
  %229 = load i32, i32* %228
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RAX.i954, align 8
  store %struct.Memory* %loadMem_409a45, %struct.Memory** %MEMORY
  %loadMem_409a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RAX.i952 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %RAX.i952
  %238 = load i64, i64* %PC.i951
  %239 = add i64 %238, 3
  store i64 %239, i64* %PC.i951
  %240 = trunc i64 %237 to i32
  %241 = add i32 20, %240
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX.i952, align 8
  %243 = icmp ult i32 %241, %240
  %244 = icmp ult i32 %241, 20
  %245 = or i1 %243, %244
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %246, i8* %247, align 1
  %248 = and i32 %241, 255
  %249 = call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %252, i8* %253, align 1
  %254 = xor i64 20, %237
  %255 = trunc i64 %254 to i32
  %256 = xor i32 %255, %241
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %259, i8* %260, align 1
  %261 = icmp eq i32 %241, 0
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %262, i8* %263, align 1
  %264 = lshr i32 %241, 31
  %265 = trunc i32 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %265, i8* %266, align 1
  %267 = lshr i32 %240, 31
  %268 = xor i32 %264, %267
  %269 = add i32 %268, %264
  %270 = icmp eq i32 %269, 2
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %271, i8* %272, align 1
  store %struct.Memory* %loadMem_409a48, %struct.Memory** %MEMORY
  %loadMem_409a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %EAX.i949 = bitcast %union.anon* %278 to i32*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i950 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %RBP.i950
  %283 = sub i64 %282, 32
  %284 = load i32, i32* %EAX.i949
  %285 = zext i32 %284 to i64
  %286 = load i64, i64* %PC.i948
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC.i948
  %288 = inttoptr i64 %283 to i32*
  store i32 %284, i32* %288
  store %struct.Memory* %loadMem_409a4b, %struct.Memory** %MEMORY
  %loadMem_409a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RAX.i946 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 15
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %RBP.i947
  %299 = sub i64 %298, 4
  %300 = load i64, i64* %PC.i945
  %301 = add i64 %300, 3
  store i64 %301, i64* %PC.i945
  %302 = inttoptr i64 %299 to i32*
  %303 = load i32, i32* %302
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RAX.i946, align 8
  store %struct.Memory* %loadMem_409a4e, %struct.Memory** %MEMORY
  %loadMem_409a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RAX.i944 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RAX.i944
  %312 = load i64, i64* %PC.i943
  %313 = add i64 %312, 3
  store i64 %313, i64* %PC.i943
  %314 = trunc i64 %311 to i32
  %315 = sub i32 %314, 1
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX.i944, align 8
  %317 = icmp ult i32 %314, 1
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1
  %320 = and i32 %315, 255
  %321 = call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %324, i8* %325, align 1
  %326 = xor i64 1, %311
  %327 = trunc i64 %326 to i32
  %328 = xor i32 %327, %315
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %331, i8* %332, align 1
  %333 = icmp eq i32 %315, 0
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %334, i8* %335, align 1
  %336 = lshr i32 %315, 31
  %337 = trunc i32 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %337, i8* %338, align 1
  %339 = lshr i32 %314, 31
  %340 = xor i32 %336, %339
  %341 = add i32 %340, %339
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %343, i8* %344, align 1
  store %struct.Memory* %loadMem_409a51, %struct.Memory** %MEMORY
  %loadMem_409a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %EAX.i941 = bitcast %union.anon* %350 to i32*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 15
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %RBP.i942 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %RBP.i942
  %355 = sub i64 %354, 36
  %356 = load i32, i32* %EAX.i941
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC.i940
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC.i940
  %360 = inttoptr i64 %355 to i32*
  store i32 %356, i32* %360
  store %struct.Memory* %loadMem_409a54, %struct.Memory** %MEMORY
  %loadMem_409a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i939
  %371 = sub i64 %370, 4
  %372 = load i64, i64* %PC.i937
  %373 = add i64 %372, 3
  store i64 %373, i64* %PC.i937
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i938, align 8
  store %struct.Memory* %loadMem_409a57, %struct.Memory** %MEMORY
  %loadMem_409a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RAX.i936 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RAX.i936
  %384 = load i64, i64* %PC.i935
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC.i935
  %386 = trunc i64 %383 to i32
  %387 = sub i32 %386, 20
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RAX.i936, align 8
  %389 = icmp ult i32 %386, 20
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %390, i8* %391, align 1
  %392 = and i32 %387, 255
  %393 = call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %396, i8* %397, align 1
  %398 = xor i64 20, %383
  %399 = trunc i64 %398 to i32
  %400 = xor i32 %399, %387
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %403, i8* %404, align 1
  %405 = icmp eq i32 %387, 0
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %406, i8* %407, align 1
  %408 = lshr i32 %387, 31
  %409 = trunc i32 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %409, i8* %410, align 1
  %411 = lshr i32 %386, 31
  %412 = xor i32 %408, %411
  %413 = add i32 %412, %411
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %416, align 1
  store %struct.Memory* %loadMem_409a5a, %struct.Memory** %MEMORY
  %loadMem_409a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %EAX.i933 = bitcast %union.anon* %422 to i32*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i934 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RBP.i934
  %427 = sub i64 %426, 40
  %428 = load i32, i32* %EAX.i933
  %429 = zext i32 %428 to i64
  %430 = load i64, i64* %PC.i932
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC.i932
  %432 = inttoptr i64 %427 to i32*
  store i32 %428, i32* %432
  store %struct.Memory* %loadMem_409a5d, %struct.Memory** %MEMORY
  %loadMem_409a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RAX.i930 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 15
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RBP.i931
  %443 = sub i64 %442, 4
  %444 = load i64, i64* %PC.i929
  %445 = add i64 %444, 3
  store i64 %445, i64* %PC.i929
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RAX.i930, align 8
  store %struct.Memory* %loadMem_409a60, %struct.Memory** %MEMORY
  %loadMem_409a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RAX.i928 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %RAX.i928
  %456 = load i64, i64* %PC.i927
  %457 = add i64 %456, 3
  store i64 %457, i64* %PC.i927
  %458 = trunc i64 %455 to i32
  %459 = add i32 1, %458
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RAX.i928, align 8
  %461 = icmp ult i32 %459, %458
  %462 = icmp ult i32 %459, 1
  %463 = or i1 %461, %462
  %464 = zext i1 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %464, i8* %465, align 1
  %466 = and i32 %459, 255
  %467 = call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %470, i8* %471, align 1
  %472 = xor i64 1, %455
  %473 = trunc i64 %472 to i32
  %474 = xor i32 %473, %459
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %477, i8* %478, align 1
  %479 = icmp eq i32 %459, 0
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %480, i8* %481, align 1
  %482 = lshr i32 %459, 31
  %483 = trunc i32 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %483, i8* %484, align 1
  %485 = lshr i32 %458, 31
  %486 = xor i32 %482, %485
  %487 = add i32 %486, %482
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %489, i8* %490, align 1
  store %struct.Memory* %loadMem_409a63, %struct.Memory** %MEMORY
  %loadMem_409a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 1
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %EAX.i925 = bitcast %union.anon* %496 to i32*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 15
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RBP.i926 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RBP.i926
  %501 = sub i64 %500, 44
  %502 = load i32, i32* %EAX.i925
  %503 = zext i32 %502 to i64
  %504 = load i64, i64* %PC.i924
  %505 = add i64 %504, 3
  store i64 %505, i64* %PC.i924
  %506 = inttoptr i64 %501 to i32*
  store i32 %502, i32* %506
  store %struct.Memory* %loadMem_409a66, %struct.Memory** %MEMORY
  %loadMem_409a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 5
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RCX.i922 = bitcast %union.anon* %512 to i64*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 15
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %515 to i64*
  %516 = load i64, i64* %RBP.i923
  %517 = sub i64 %516, 32
  %518 = load i64, i64* %PC.i921
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC.i921
  %520 = inttoptr i64 %517 to i32*
  %521 = load i32, i32* %520
  %522 = sext i32 %521 to i64
  store i64 %522, i64* %RCX.i922, align 8
  store %struct.Memory* %loadMem_409a69, %struct.Memory** %MEMORY
  %loadMem_409a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RAX.i919 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 5
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RCX.i920 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RCX.i920
  %533 = add i64 %532, 12099168
  %534 = load i64, i64* %PC.i918
  %535 = add i64 %534, 8
  store i64 %535, i64* %PC.i918
  %536 = inttoptr i64 %533 to i8*
  %537 = load i8, i8* %536
  %538 = zext i8 %537 to i64
  store i64 %538, i64* %RAX.i919, align 8
  store %struct.Memory* %loadMem_409a6d, %struct.Memory** %MEMORY
  %loadMem_409a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %EAX.i916 = bitcast %union.anon* %544 to i32*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 15
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RBP.i917 = bitcast %union.anon* %547 to i64*
  %548 = load i32, i32* %EAX.i916
  %549 = zext i32 %548 to i64
  %550 = load i64, i64* %RBP.i917
  %551 = sub i64 %550, 12
  %552 = load i64, i64* %PC.i915
  %553 = add i64 %552, 3
  store i64 %553, i64* %PC.i915
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554
  %556 = sub i32 %548, %555
  %557 = icmp ult i32 %548, %555
  %558 = zext i1 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %558, i8* %559, align 1
  %560 = and i32 %556, 255
  %561 = call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %564, i8* %565, align 1
  %566 = xor i32 %555, %548
  %567 = xor i32 %566, %556
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %570, i8* %571, align 1
  %572 = icmp eq i32 %556, 0
  %573 = zext i1 %572 to i8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %573, i8* %574, align 1
  %575 = lshr i32 %556, 31
  %576 = trunc i32 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %576, i8* %577, align 1
  %578 = lshr i32 %548, 31
  %579 = lshr i32 %555, 31
  %580 = xor i32 %579, %578
  %581 = xor i32 %575, %578
  %582 = add i32 %581, %580
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %584, i8* %585, align 1
  store %struct.Memory* %loadMem_409a75, %struct.Memory** %MEMORY
  %loadMem_409a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %588 to i64*
  %589 = load i64, i64* %PC.i914
  %590 = add i64 %589, 70
  %591 = load i64, i64* %PC.i914
  %592 = add i64 %591, 6
  %593 = load i64, i64* %PC.i914
  %594 = add i64 %593, 6
  store i64 %594, i64* %PC.i914
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %596 = load i8, i8* %595, align 1
  %597 = icmp eq i8 %596, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %BRANCH_TAKEN, align 1
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %600 = select i1 %597, i64 %590, i64 %592
  store i64 %600, i64* %599, align 8
  store %struct.Memory* %loadMem_409a78, %struct.Memory** %MEMORY
  %loadBr_409a78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409a78 = icmp eq i8 %loadBr_409a78, 1
  br i1 %cmpBr_409a78, label %block_.L_409abe, label %block_409a7e

block_409a7e:                                     ; preds = %entry
  %loadMem_409a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 1
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RAX.i913 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %PC.i912
  %608 = add i64 %607, 10
  store i64 %608, i64* %PC.i912
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i913, align 8
  store %struct.Memory* %loadMem_409a7e, %struct.Memory** %MEMORY
  %loadMem_409a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 5
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RCX.i910 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i911 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i911
  %619 = sub i64 %618, 32
  %620 = load i64, i64* %PC.i909
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC.i909
  %622 = inttoptr i64 %619 to i32*
  %623 = load i32, i32* %622
  %624 = sext i32 %623 to i64
  store i64 %624, i64* %RCX.i910, align 8
  store %struct.Memory* %loadMem_409a88, %struct.Memory** %MEMORY
  %loadMem_409a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 5
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RCX.i908 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RCX.i908
  %632 = mul i64 %631, 4
  %633 = add i64 %632, 11187184
  %634 = load i64, i64* %PC.i907
  %635 = add i64 %634, 8
  store i64 %635, i64* %PC.i907
  %636 = inttoptr i64 %633 to i32*
  %637 = load i32, i32* %636
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RCX.i908, align 8
  store %struct.Memory* %loadMem_409a8c, %struct.Memory** %MEMORY
  %loadMem_409a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 5
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RCX.i906 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %RCX.i906
  %646 = load i64, i64* %PC.i905
  %647 = add i64 %646, 7
  store i64 %647, i64* %PC.i905
  %648 = sext i64 %645 to i128
  %649 = and i128 %648, -18446744073709551616
  %650 = zext i64 %645 to i128
  %651 = or i128 %649, %650
  %652 = mul i128 744, %651
  %653 = trunc i128 %652 to i64
  store i64 %653, i64* %RCX.i906, align 8
  %654 = sext i64 %653 to i128
  %655 = icmp ne i128 %654, %652
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %656, i8* %657, align 1
  %658 = trunc i128 %652 to i32
  %659 = and i32 %658, 255
  %660 = call i32 @llvm.ctpop.i32(i32 %659)
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %663, i8* %664, align 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %665, align 1
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %666, align 1
  %667 = lshr i64 %653, 63
  %668 = trunc i64 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %668, i8* %669, align 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %656, i8* %670, align 1
  store %struct.Memory* %loadMem_409a94, %struct.Memory** %MEMORY
  %loadMem_409a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 1
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 5
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RCX.i904 = bitcast %union.anon* %679 to i64*
  %680 = load i64, i64* %RAX.i903
  %681 = load i64, i64* %RCX.i904
  %682 = load i64, i64* %PC.i902
  %683 = add i64 %682, 3
  store i64 %683, i64* %PC.i902
  %684 = add i64 %681, %680
  store i64 %684, i64* %RAX.i903, align 8
  %685 = icmp ult i64 %684, %680
  %686 = icmp ult i64 %684, %681
  %687 = or i1 %685, %686
  %688 = zext i1 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %688, i8* %689, align 1
  %690 = trunc i64 %684 to i32
  %691 = and i32 %690, 255
  %692 = call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %695, i8* %696, align 1
  %697 = xor i64 %681, %680
  %698 = xor i64 %697, %684
  %699 = lshr i64 %698, 4
  %700 = trunc i64 %699 to i8
  %701 = and i8 %700, 1
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %701, i8* %702, align 1
  %703 = icmp eq i64 %684, 0
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %704, i8* %705, align 1
  %706 = lshr i64 %684, 63
  %707 = trunc i64 %706 to i8
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %707, i8* %708, align 1
  %709 = lshr i64 %680, 63
  %710 = lshr i64 %681, 63
  %711 = xor i64 %706, %709
  %712 = xor i64 %706, %710
  %713 = add i64 %711, %712
  %714 = icmp eq i64 %713, 2
  %715 = zext i1 %714 to i8
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %715, i8* %716, align 1
  store %struct.Memory* %loadMem_409a9b, %struct.Memory** %MEMORY
  %loadMem_409a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 1
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RAX.i901 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RAX.i901
  %724 = add i64 %723, 12
  %725 = load i64, i64* %PC.i900
  %726 = add i64 %725, 4
  store i64 %726, i64* %PC.i900
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727
  %729 = sub i32 %728, 1
  %730 = icmp ult i32 %728, 1
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %731, i8* %732, align 1
  %733 = and i32 %729, 255
  %734 = call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %737, i8* %738, align 1
  %739 = xor i32 %728, 1
  %740 = xor i32 %739, %729
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %743, i8* %744, align 1
  %745 = icmp eq i32 %729, 0
  %746 = zext i1 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %746, i8* %747, align 1
  %748 = lshr i32 %729, 31
  %749 = trunc i32 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %749, i8* %750, align 1
  %751 = lshr i32 %728, 31
  %752 = xor i32 %748, %751
  %753 = add i32 %752, %751
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %755, i8* %756, align 1
  store %struct.Memory* %loadMem_409a9e, %struct.Memory** %MEMORY
  %loadMem_409aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %PC.i899
  %761 = add i64 %760, 28
  %762 = load i64, i64* %PC.i899
  %763 = add i64 %762, 6
  %764 = load i64, i64* %PC.i899
  %765 = add i64 %764, 6
  store i64 %765, i64* %PC.i899
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %767 = load i8, i8* %766, align 1
  %768 = icmp eq i8 %767, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %BRANCH_TAKEN, align 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %771 = select i1 %768, i64 %761, i64 %763
  store i64 %771, i64* %770, align 8
  store %struct.Memory* %loadMem_409aa2, %struct.Memory** %MEMORY
  %loadBr_409aa2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409aa2 = icmp eq i8 %loadBr_409aa2, 1
  br i1 %cmpBr_409aa2, label %block_.L_409abe, label %block_409aa8

block_409aa8:                                     ; preds = %block_409a7e
  %loadMem_409aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 1
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 15
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RBP.i898 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %RBP.i898
  %782 = sub i64 %781, 32
  %783 = load i64, i64* %PC.i896
  %784 = add i64 %783, 4
  store i64 %784, i64* %PC.i896
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785
  %787 = sext i32 %786 to i64
  store i64 %787, i64* %RAX.i897, align 8
  store %struct.Memory* %loadMem_409aa8, %struct.Memory** %MEMORY
  %loadMem_409aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 11
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RDI.i895 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RAX.i894
  %798 = mul i64 %797, 4
  %799 = add i64 %798, 11187184
  %800 = load i64, i64* %PC.i893
  %801 = add i64 %800, 7
  store i64 %801, i64* %PC.i893
  %802 = inttoptr i64 %799 to i32*
  %803 = load i32, i32* %802
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RDI.i895, align 8
  store %struct.Memory* %loadMem_409aac, %struct.Memory** %MEMORY
  %loadMem1_409ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %807 to i64*
  %808 = load i64, i64* %PC.i892
  %809 = add i64 %808, 2221
  %810 = load i64, i64* %PC.i892
  %811 = add i64 %810, 5
  %812 = load i64, i64* %PC.i892
  %813 = add i64 %812, 5
  store i64 %813, i64* %PC.i892
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %815 = load i64, i64* %814, align 8
  %816 = add i64 %815, -8
  %817 = inttoptr i64 %816 to i64*
  store i64 %811, i64* %817
  store i64 %816, i64* %814, align 8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %809, i64* %818, align 8
  store %struct.Memory* %loadMem1_409ab3, %struct.Memory** %MEMORY
  %loadMem2_409ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409ab3 = load i64, i64* %3
  %call2_409ab3 = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64 %loadPC_409ab3, %struct.Memory* %loadMem2_409ab3)
  store %struct.Memory* %call2_409ab3, %struct.Memory** %MEMORY
  %loadMem_409ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 15
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %RAX.i890
  %829 = load i64, i64* %RBP.i891
  %830 = sub i64 %829, 16
  %831 = load i64, i64* %PC.i889
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC.i889
  %833 = trunc i64 %828 to i32
  %834 = inttoptr i64 %830 to i32*
  %835 = load i32, i32* %834
  %836 = add i32 %835, %833
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX.i890, align 8
  %838 = icmp ult i32 %836, %833
  %839 = icmp ult i32 %836, %835
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %841, i8* %842, align 1
  %843 = and i32 %836, 255
  %844 = call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %847, i8* %848, align 1
  %849 = xor i32 %835, %833
  %850 = xor i32 %849, %836
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %853, i8* %854, align 1
  %855 = icmp eq i32 %836, 0
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %856, i8* %857, align 1
  %858 = lshr i32 %836, 31
  %859 = trunc i32 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %859, i8* %860, align 1
  %861 = lshr i32 %833, 31
  %862 = lshr i32 %835, 31
  %863 = xor i32 %858, %861
  %864 = xor i32 %858, %862
  %865 = add i32 %863, %864
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %867, i8* %868, align 1
  store %struct.Memory* %loadMem_409ab8, %struct.Memory** %MEMORY
  %loadMem_409abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 1
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %EAX.i887 = bitcast %union.anon* %874 to i32*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 15
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RBP.i888 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RBP.i888
  %879 = sub i64 %878, 16
  %880 = load i32, i32* %EAX.i887
  %881 = zext i32 %880 to i64
  %882 = load i64, i64* %PC.i886
  %883 = add i64 %882, 3
  store i64 %883, i64* %PC.i886
  %884 = inttoptr i64 %879 to i32*
  store i32 %880, i32* %884
  store %struct.Memory* %loadMem_409abb, %struct.Memory** %MEMORY
  br label %block_.L_409abe

block_.L_409abe:                                  ; preds = %block_409aa8, %block_409a7e, %entry
  %loadMem_409abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 1
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RAX.i884 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RBP.i885
  %895 = sub i64 %894, 36
  %896 = load i64, i64* %PC.i883
  %897 = add i64 %896, 4
  store i64 %897, i64* %PC.i883
  %898 = inttoptr i64 %895 to i32*
  %899 = load i32, i32* %898
  %900 = sext i32 %899 to i64
  store i64 %900, i64* %RAX.i884, align 8
  store %struct.Memory* %loadMem_409abe, %struct.Memory** %MEMORY
  %loadMem_409ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 1
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 5
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %909 to i64*
  %910 = load i64, i64* %RAX.i881
  %911 = add i64 %910, 12099168
  %912 = load i64, i64* %PC.i880
  %913 = add i64 %912, 8
  store i64 %913, i64* %PC.i880
  %914 = inttoptr i64 %911 to i8*
  %915 = load i8, i8* %914
  %916 = zext i8 %915 to i64
  store i64 %916, i64* %RCX.i882, align 8
  store %struct.Memory* %loadMem_409ac2, %struct.Memory** %MEMORY
  %loadMem_409aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 5
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %ECX.i878 = bitcast %union.anon* %922 to i32*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 15
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %925 to i64*
  %926 = load i32, i32* %ECX.i878
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %RBP.i879
  %929 = sub i64 %928, 12
  %930 = load i64, i64* %PC.i877
  %931 = add i64 %930, 3
  store i64 %931, i64* %PC.i877
  %932 = inttoptr i64 %929 to i32*
  %933 = load i32, i32* %932
  %934 = sub i32 %926, %933
  %935 = icmp ult i32 %926, %933
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %936, i8* %937, align 1
  %938 = and i32 %934, 255
  %939 = call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %942, i8* %943, align 1
  %944 = xor i32 %933, %926
  %945 = xor i32 %944, %934
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %948, i8* %949, align 1
  %950 = icmp eq i32 %934, 0
  %951 = zext i1 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %951, i8* %952, align 1
  %953 = lshr i32 %934, 31
  %954 = trunc i32 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %954, i8* %955, align 1
  %956 = lshr i32 %926, 31
  %957 = lshr i32 %933, 31
  %958 = xor i32 %957, %956
  %959 = xor i32 %953, %956
  %960 = add i32 %959, %958
  %961 = icmp eq i32 %960, 2
  %962 = zext i1 %961 to i8
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %962, i8* %963, align 1
  store %struct.Memory* %loadMem_409aca, %struct.Memory** %MEMORY
  %loadMem_409acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %PC.i876
  %968 = add i64 %967, 70
  %969 = load i64, i64* %PC.i876
  %970 = add i64 %969, 6
  %971 = load i64, i64* %PC.i876
  %972 = add i64 %971, 6
  store i64 %972, i64* %PC.i876
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %974 = load i8, i8* %973, align 1
  %975 = icmp eq i8 %974, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %BRANCH_TAKEN, align 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %978 = select i1 %975, i64 %968, i64 %970
  store i64 %978, i64* %977, align 8
  store %struct.Memory* %loadMem_409acd, %struct.Memory** %MEMORY
  %loadBr_409acd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409acd = icmp eq i8 %loadBr_409acd, 1
  br i1 %cmpBr_409acd, label %block_.L_409b13, label %block_409ad3

block_409ad3:                                     ; preds = %block_.L_409abe
  %loadMem_409ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 1
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %PC.i874
  %986 = add i64 %985, 10
  store i64 %986, i64* %PC.i874
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_409ad3, %struct.Memory** %MEMORY
  %loadMem_409add = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 5
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RCX.i872 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 15
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RBP.i873
  %997 = sub i64 %996, 36
  %998 = load i64, i64* %PC.i871
  %999 = add i64 %998, 4
  store i64 %999, i64* %PC.i871
  %1000 = inttoptr i64 %997 to i32*
  %1001 = load i32, i32* %1000
  %1002 = sext i32 %1001 to i64
  store i64 %1002, i64* %RCX.i872, align 8
  store %struct.Memory* %loadMem_409add, %struct.Memory** %MEMORY
  %loadMem_409ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 5
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RCX.i870 = bitcast %union.anon* %1008 to i64*
  %1009 = load i64, i64* %RCX.i870
  %1010 = mul i64 %1009, 4
  %1011 = add i64 %1010, 11187184
  %1012 = load i64, i64* %PC.i869
  %1013 = add i64 %1012, 8
  store i64 %1013, i64* %PC.i869
  %1014 = inttoptr i64 %1011 to i32*
  %1015 = load i32, i32* %1014
  %1016 = sext i32 %1015 to i64
  store i64 %1016, i64* %RCX.i870, align 8
  store %struct.Memory* %loadMem_409ae1, %struct.Memory** %MEMORY
  %loadMem_409ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 5
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RCX.i868 = bitcast %union.anon* %1022 to i64*
  %1023 = load i64, i64* %RCX.i868
  %1024 = load i64, i64* %PC.i867
  %1025 = add i64 %1024, 7
  store i64 %1025, i64* %PC.i867
  %1026 = sext i64 %1023 to i128
  %1027 = and i128 %1026, -18446744073709551616
  %1028 = zext i64 %1023 to i128
  %1029 = or i128 %1027, %1028
  %1030 = mul i128 744, %1029
  %1031 = trunc i128 %1030 to i64
  store i64 %1031, i64* %RCX.i868, align 8
  %1032 = sext i64 %1031 to i128
  %1033 = icmp ne i128 %1032, %1030
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1034, i8* %1035, align 1
  %1036 = trunc i128 %1030 to i32
  %1037 = and i32 %1036, 255
  %1038 = call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1041, i8* %1042, align 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1043, align 1
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1044, align 1
  %1045 = lshr i64 %1031, 63
  %1046 = trunc i64 %1045 to i8
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1046, i8* %1047, align 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1034, i8* %1048, align 1
  store %struct.Memory* %loadMem_409ae9, %struct.Memory** %MEMORY
  %loadMem_409af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 1
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 5
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %1057 to i64*
  %1058 = load i64, i64* %RAX.i865
  %1059 = load i64, i64* %RCX.i866
  %1060 = load i64, i64* %PC.i864
  %1061 = add i64 %1060, 3
  store i64 %1061, i64* %PC.i864
  %1062 = add i64 %1059, %1058
  store i64 %1062, i64* %RAX.i865, align 8
  %1063 = icmp ult i64 %1062, %1058
  %1064 = icmp ult i64 %1062, %1059
  %1065 = or i1 %1063, %1064
  %1066 = zext i1 %1065 to i8
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1066, i8* %1067, align 1
  %1068 = trunc i64 %1062 to i32
  %1069 = and i32 %1068, 255
  %1070 = call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1073, i8* %1074, align 1
  %1075 = xor i64 %1059, %1058
  %1076 = xor i64 %1075, %1062
  %1077 = lshr i64 %1076, 4
  %1078 = trunc i64 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1079, i8* %1080, align 1
  %1081 = icmp eq i64 %1062, 0
  %1082 = zext i1 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1082, i8* %1083, align 1
  %1084 = lshr i64 %1062, 63
  %1085 = trunc i64 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1085, i8* %1086, align 1
  %1087 = lshr i64 %1058, 63
  %1088 = lshr i64 %1059, 63
  %1089 = xor i64 %1084, %1087
  %1090 = xor i64 %1084, %1088
  %1091 = add i64 %1089, %1090
  %1092 = icmp eq i64 %1091, 2
  %1093 = zext i1 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1093, i8* %1094, align 1
  store %struct.Memory* %loadMem_409af0, %struct.Memory** %MEMORY
  %loadMem_409af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 1
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RAX.i863 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %RAX.i863
  %1102 = add i64 %1101, 12
  %1103 = load i64, i64* %PC.i862
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %PC.i862
  %1105 = inttoptr i64 %1102 to i32*
  %1106 = load i32, i32* %1105
  %1107 = sub i32 %1106, 1
  %1108 = icmp ult i32 %1106, 1
  %1109 = zext i1 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1109, i8* %1110, align 1
  %1111 = and i32 %1107, 255
  %1112 = call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1115, i8* %1116, align 1
  %1117 = xor i32 %1106, 1
  %1118 = xor i32 %1117, %1107
  %1119 = lshr i32 %1118, 4
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1121, i8* %1122, align 1
  %1123 = icmp eq i32 %1107, 0
  %1124 = zext i1 %1123 to i8
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1124, i8* %1125, align 1
  %1126 = lshr i32 %1107, 31
  %1127 = trunc i32 %1126 to i8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1127, i8* %1128, align 1
  %1129 = lshr i32 %1106, 31
  %1130 = xor i32 %1126, %1129
  %1131 = add i32 %1130, %1129
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1133, i8* %1134, align 1
  store %struct.Memory* %loadMem_409af3, %struct.Memory** %MEMORY
  %loadMem_409af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %PC.i861
  %1139 = add i64 %1138, 28
  %1140 = load i64, i64* %PC.i861
  %1141 = add i64 %1140, 6
  %1142 = load i64, i64* %PC.i861
  %1143 = add i64 %1142, 6
  store i64 %1143, i64* %PC.i861
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1145 = load i8, i8* %1144, align 1
  %1146 = icmp eq i8 %1145, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %BRANCH_TAKEN, align 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1149 = select i1 %1146, i64 %1139, i64 %1141
  store i64 %1149, i64* %1148, align 8
  store %struct.Memory* %loadMem_409af7, %struct.Memory** %MEMORY
  %loadBr_409af7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409af7 = icmp eq i8 %loadBr_409af7, 1
  br i1 %cmpBr_409af7, label %block_.L_409b13, label %block_409afd

block_409afd:                                     ; preds = %block_409ad3
  %loadMem_409afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 1
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 15
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %RBP.i860
  %1160 = sub i64 %1159, 36
  %1161 = load i64, i64* %PC.i858
  %1162 = add i64 %1161, 4
  store i64 %1162, i64* %PC.i858
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163
  %1165 = sext i32 %1164 to i64
  store i64 %1165, i64* %RAX.i859, align 8
  store %struct.Memory* %loadMem_409afd, %struct.Memory** %MEMORY
  %loadMem_409b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 11
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RDI.i857 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %RAX.i856
  %1176 = mul i64 %1175, 4
  %1177 = add i64 %1176, 11187184
  %1178 = load i64, i64* %PC.i855
  %1179 = add i64 %1178, 7
  store i64 %1179, i64* %PC.i855
  %1180 = inttoptr i64 %1177 to i32*
  %1181 = load i32, i32* %1180
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RDI.i857, align 8
  store %struct.Memory* %loadMem_409b01, %struct.Memory** %MEMORY
  %loadMem1_409b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 33
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %PC.i854
  %1187 = add i64 %1186, 2136
  %1188 = load i64, i64* %PC.i854
  %1189 = add i64 %1188, 5
  %1190 = load i64, i64* %PC.i854
  %1191 = add i64 %1190, 5
  store i64 %1191, i64* %PC.i854
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1193 = load i64, i64* %1192, align 8
  %1194 = add i64 %1193, -8
  %1195 = inttoptr i64 %1194 to i64*
  store i64 %1189, i64* %1195
  store i64 %1194, i64* %1192, align 8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1187, i64* %1196, align 8
  store %struct.Memory* %loadMem1_409b08, %struct.Memory** %MEMORY
  %loadMem2_409b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409b08 = load i64, i64* %3
  %call2_409b08 = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64 %loadPC_409b08, %struct.Memory* %loadMem2_409b08)
  store %struct.Memory* %call2_409b08, %struct.Memory** %MEMORY
  %loadMem_409b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 1
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 15
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RBP.i853 = bitcast %union.anon* %1205 to i64*
  %1206 = load i64, i64* %RAX.i852
  %1207 = load i64, i64* %RBP.i853
  %1208 = sub i64 %1207, 16
  %1209 = load i64, i64* %PC.i851
  %1210 = add i64 %1209, 3
  store i64 %1210, i64* %PC.i851
  %1211 = trunc i64 %1206 to i32
  %1212 = inttoptr i64 %1208 to i32*
  %1213 = load i32, i32* %1212
  %1214 = add i32 %1213, %1211
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RAX.i852, align 8
  %1216 = icmp ult i32 %1214, %1211
  %1217 = icmp ult i32 %1214, %1213
  %1218 = or i1 %1216, %1217
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1219, i8* %1220, align 1
  %1221 = and i32 %1214, 255
  %1222 = call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1225, i8* %1226, align 1
  %1227 = xor i32 %1213, %1211
  %1228 = xor i32 %1227, %1214
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1231, i8* %1232, align 1
  %1233 = icmp eq i32 %1214, 0
  %1234 = zext i1 %1233 to i8
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1234, i8* %1235, align 1
  %1236 = lshr i32 %1214, 31
  %1237 = trunc i32 %1236 to i8
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1237, i8* %1238, align 1
  %1239 = lshr i32 %1211, 31
  %1240 = lshr i32 %1213, 31
  %1241 = xor i32 %1236, %1239
  %1242 = xor i32 %1236, %1240
  %1243 = add i32 %1241, %1242
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1245, i8* %1246, align 1
  store %struct.Memory* %loadMem_409b0d, %struct.Memory** %MEMORY
  %loadMem_409b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %EAX.i849 = bitcast %union.anon* %1252 to i32*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 15
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RBP.i850
  %1257 = sub i64 %1256, 16
  %1258 = load i32, i32* %EAX.i849
  %1259 = zext i32 %1258 to i64
  %1260 = load i64, i64* %PC.i848
  %1261 = add i64 %1260, 3
  store i64 %1261, i64* %PC.i848
  %1262 = inttoptr i64 %1257 to i32*
  store i32 %1258, i32* %1262
  store %struct.Memory* %loadMem_409b10, %struct.Memory** %MEMORY
  br label %block_.L_409b13

block_.L_409b13:                                  ; preds = %block_409afd, %block_409ad3, %block_.L_409abe
  %loadMem_409b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 1
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 15
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %1271 to i64*
  %1272 = load i64, i64* %RBP.i847
  %1273 = sub i64 %1272, 40
  %1274 = load i64, i64* %PC.i845
  %1275 = add i64 %1274, 4
  store i64 %1275, i64* %PC.i845
  %1276 = inttoptr i64 %1273 to i32*
  %1277 = load i32, i32* %1276
  %1278 = sext i32 %1277 to i64
  store i64 %1278, i64* %RAX.i846, align 8
  store %struct.Memory* %loadMem_409b13, %struct.Memory** %MEMORY
  %loadMem_409b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 1
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 5
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RCX.i844 = bitcast %union.anon* %1287 to i64*
  %1288 = load i64, i64* %RAX.i843
  %1289 = add i64 %1288, 12099168
  %1290 = load i64, i64* %PC.i842
  %1291 = add i64 %1290, 8
  store i64 %1291, i64* %PC.i842
  %1292 = inttoptr i64 %1289 to i8*
  %1293 = load i8, i8* %1292
  %1294 = zext i8 %1293 to i64
  store i64 %1294, i64* %RCX.i844, align 8
  store %struct.Memory* %loadMem_409b17, %struct.Memory** %MEMORY
  %loadMem_409b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 33
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 5
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %ECX.i840 = bitcast %union.anon* %1300 to i32*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 15
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %1303 to i64*
  %1304 = load i32, i32* %ECX.i840
  %1305 = zext i32 %1304 to i64
  %1306 = load i64, i64* %RBP.i841
  %1307 = sub i64 %1306, 12
  %1308 = load i64, i64* %PC.i839
  %1309 = add i64 %1308, 3
  store i64 %1309, i64* %PC.i839
  %1310 = inttoptr i64 %1307 to i32*
  %1311 = load i32, i32* %1310
  %1312 = sub i32 %1304, %1311
  %1313 = icmp ult i32 %1304, %1311
  %1314 = zext i1 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1314, i8* %1315, align 1
  %1316 = and i32 %1312, 255
  %1317 = call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1320, i8* %1321, align 1
  %1322 = xor i32 %1311, %1304
  %1323 = xor i32 %1322, %1312
  %1324 = lshr i32 %1323, 4
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1326, i8* %1327, align 1
  %1328 = icmp eq i32 %1312, 0
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1329, i8* %1330, align 1
  %1331 = lshr i32 %1312, 31
  %1332 = trunc i32 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1332, i8* %1333, align 1
  %1334 = lshr i32 %1304, 31
  %1335 = lshr i32 %1311, 31
  %1336 = xor i32 %1335, %1334
  %1337 = xor i32 %1331, %1334
  %1338 = add i32 %1337, %1336
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1340, i8* %1341, align 1
  store %struct.Memory* %loadMem_409b1f, %struct.Memory** %MEMORY
  %loadMem_409b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %PC.i838
  %1346 = add i64 %1345, 70
  %1347 = load i64, i64* %PC.i838
  %1348 = add i64 %1347, 6
  %1349 = load i64, i64* %PC.i838
  %1350 = add i64 %1349, 6
  store i64 %1350, i64* %PC.i838
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1352 = load i8, i8* %1351, align 1
  %1353 = icmp eq i8 %1352, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %BRANCH_TAKEN, align 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1356 = select i1 %1353, i64 %1346, i64 %1348
  store i64 %1356, i64* %1355, align 8
  store %struct.Memory* %loadMem_409b22, %struct.Memory** %MEMORY
  %loadBr_409b22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409b22 = icmp eq i8 %loadBr_409b22, 1
  br i1 %cmpBr_409b22, label %block_.L_409b68, label %block_409b28

block_409b28:                                     ; preds = %block_.L_409b13
  %loadMem_409b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RAX.i837 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %PC.i836
  %1364 = add i64 %1363, 10
  store i64 %1364, i64* %PC.i836
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i837, align 8
  store %struct.Memory* %loadMem_409b28, %struct.Memory** %MEMORY
  %loadMem_409b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 5
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i835
  %1375 = sub i64 %1374, 40
  %1376 = load i64, i64* %PC.i833
  %1377 = add i64 %1376, 4
  store i64 %1377, i64* %PC.i833
  %1378 = inttoptr i64 %1375 to i32*
  %1379 = load i32, i32* %1378
  %1380 = sext i32 %1379 to i64
  store i64 %1380, i64* %RCX.i834, align 8
  store %struct.Memory* %loadMem_409b32, %struct.Memory** %MEMORY
  %loadMem_409b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 5
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RCX.i832 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RCX.i832
  %1388 = mul i64 %1387, 4
  %1389 = add i64 %1388, 11187184
  %1390 = load i64, i64* %PC.i831
  %1391 = add i64 %1390, 8
  store i64 %1391, i64* %PC.i831
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i832, align 8
  store %struct.Memory* %loadMem_409b36, %struct.Memory** %MEMORY
  %loadMem_409b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 33
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 5
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RCX.i830 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RCX.i830
  %1402 = load i64, i64* %PC.i829
  %1403 = add i64 %1402, 7
  store i64 %1403, i64* %PC.i829
  %1404 = sext i64 %1401 to i128
  %1405 = and i128 %1404, -18446744073709551616
  %1406 = zext i64 %1401 to i128
  %1407 = or i128 %1405, %1406
  %1408 = mul i128 744, %1407
  %1409 = trunc i128 %1408 to i64
  store i64 %1409, i64* %RCX.i830, align 8
  %1410 = sext i64 %1409 to i128
  %1411 = icmp ne i128 %1410, %1408
  %1412 = zext i1 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1412, i8* %1413, align 1
  %1414 = trunc i128 %1408 to i32
  %1415 = and i32 %1414, 255
  %1416 = call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1419, i8* %1420, align 1
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1421, align 1
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1422, align 1
  %1423 = lshr i64 %1409, 63
  %1424 = trunc i64 %1423 to i8
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1424, i8* %1425, align 1
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1412, i8* %1426, align 1
  store %struct.Memory* %loadMem_409b3e, %struct.Memory** %MEMORY
  %loadMem_409b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 1
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %1432 to i64*
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 5
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %RAX.i827
  %1437 = load i64, i64* %RCX.i828
  %1438 = load i64, i64* %PC.i826
  %1439 = add i64 %1438, 3
  store i64 %1439, i64* %PC.i826
  %1440 = add i64 %1437, %1436
  store i64 %1440, i64* %RAX.i827, align 8
  %1441 = icmp ult i64 %1440, %1436
  %1442 = icmp ult i64 %1440, %1437
  %1443 = or i1 %1441, %1442
  %1444 = zext i1 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1444, i8* %1445, align 1
  %1446 = trunc i64 %1440 to i32
  %1447 = and i32 %1446, 255
  %1448 = call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1451, i8* %1452, align 1
  %1453 = xor i64 %1437, %1436
  %1454 = xor i64 %1453, %1440
  %1455 = lshr i64 %1454, 4
  %1456 = trunc i64 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1457, i8* %1458, align 1
  %1459 = icmp eq i64 %1440, 0
  %1460 = zext i1 %1459 to i8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1460, i8* %1461, align 1
  %1462 = lshr i64 %1440, 63
  %1463 = trunc i64 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1463, i8* %1464, align 1
  %1465 = lshr i64 %1436, 63
  %1466 = lshr i64 %1437, 63
  %1467 = xor i64 %1462, %1465
  %1468 = xor i64 %1462, %1466
  %1469 = add i64 %1467, %1468
  %1470 = icmp eq i64 %1469, 2
  %1471 = zext i1 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1471, i8* %1472, align 1
  store %struct.Memory* %loadMem_409b45, %struct.Memory** %MEMORY
  %loadMem_409b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 1
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RAX.i825 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %RAX.i825
  %1480 = add i64 %1479, 12
  %1481 = load i64, i64* %PC.i824
  %1482 = add i64 %1481, 4
  store i64 %1482, i64* %PC.i824
  %1483 = inttoptr i64 %1480 to i32*
  %1484 = load i32, i32* %1483
  %1485 = sub i32 %1484, 1
  %1486 = icmp ult i32 %1484, 1
  %1487 = zext i1 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1487, i8* %1488, align 1
  %1489 = and i32 %1485, 255
  %1490 = call i32 @llvm.ctpop.i32(i32 %1489)
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  %1493 = xor i8 %1492, 1
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1493, i8* %1494, align 1
  %1495 = xor i32 %1484, 1
  %1496 = xor i32 %1495, %1485
  %1497 = lshr i32 %1496, 4
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1499, i8* %1500, align 1
  %1501 = icmp eq i32 %1485, 0
  %1502 = zext i1 %1501 to i8
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1502, i8* %1503, align 1
  %1504 = lshr i32 %1485, 31
  %1505 = trunc i32 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1505, i8* %1506, align 1
  %1507 = lshr i32 %1484, 31
  %1508 = xor i32 %1504, %1507
  %1509 = add i32 %1508, %1507
  %1510 = icmp eq i32 %1509, 2
  %1511 = zext i1 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1511, i8* %1512, align 1
  store %struct.Memory* %loadMem_409b48, %struct.Memory** %MEMORY
  %loadMem_409b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1515 to i64*
  %1516 = load i64, i64* %PC.i823
  %1517 = add i64 %1516, 28
  %1518 = load i64, i64* %PC.i823
  %1519 = add i64 %1518, 6
  %1520 = load i64, i64* %PC.i823
  %1521 = add i64 %1520, 6
  store i64 %1521, i64* %PC.i823
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1523 = load i8, i8* %1522, align 1
  %1524 = icmp eq i8 %1523, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %BRANCH_TAKEN, align 1
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1527 = select i1 %1524, i64 %1517, i64 %1519
  store i64 %1527, i64* %1526, align 8
  store %struct.Memory* %loadMem_409b4c, %struct.Memory** %MEMORY
  %loadBr_409b4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409b4c = icmp eq i8 %loadBr_409b4c, 1
  br i1 %cmpBr_409b4c, label %block_.L_409b68, label %block_409b52

block_409b52:                                     ; preds = %block_409b28
  %loadMem_409b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 1
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 15
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RBP.i822
  %1538 = sub i64 %1537, 40
  %1539 = load i64, i64* %PC.i820
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %PC.i820
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = sext i32 %1542 to i64
  store i64 %1543, i64* %RAX.i821, align 8
  store %struct.Memory* %loadMem_409b52, %struct.Memory** %MEMORY
  %loadMem_409b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RAX.i818 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 11
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RDI.i819 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RAX.i818
  %1554 = mul i64 %1553, 4
  %1555 = add i64 %1554, 11187184
  %1556 = load i64, i64* %PC.i817
  %1557 = add i64 %1556, 7
  store i64 %1557, i64* %PC.i817
  %1558 = inttoptr i64 %1555 to i32*
  %1559 = load i32, i32* %1558
  %1560 = zext i32 %1559 to i64
  store i64 %1560, i64* %RDI.i819, align 8
  store %struct.Memory* %loadMem_409b56, %struct.Memory** %MEMORY
  %loadMem1_409b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %PC.i816
  %1565 = add i64 %1564, 2051
  %1566 = load i64, i64* %PC.i816
  %1567 = add i64 %1566, 5
  %1568 = load i64, i64* %PC.i816
  %1569 = add i64 %1568, 5
  store i64 %1569, i64* %PC.i816
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1571 = load i64, i64* %1570, align 8
  %1572 = add i64 %1571, -8
  %1573 = inttoptr i64 %1572 to i64*
  store i64 %1567, i64* %1573
  store i64 %1572, i64* %1570, align 8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1565, i64* %1574, align 8
  store %struct.Memory* %loadMem1_409b5d, %struct.Memory** %MEMORY
  %loadMem2_409b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409b5d = load i64, i64* %3
  %call2_409b5d = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64 %loadPC_409b5d, %struct.Memory* %loadMem2_409b5d)
  store %struct.Memory* %call2_409b5d, %struct.Memory** %MEMORY
  %loadMem_409b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 15
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RAX.i814
  %1585 = load i64, i64* %RBP.i815
  %1586 = sub i64 %1585, 16
  %1587 = load i64, i64* %PC.i813
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %PC.i813
  %1589 = trunc i64 %1584 to i32
  %1590 = inttoptr i64 %1586 to i32*
  %1591 = load i32, i32* %1590
  %1592 = add i32 %1591, %1589
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RAX.i814, align 8
  %1594 = icmp ult i32 %1592, %1589
  %1595 = icmp ult i32 %1592, %1591
  %1596 = or i1 %1594, %1595
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1597, i8* %1598, align 1
  %1599 = and i32 %1592, 255
  %1600 = call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1603, i8* %1604, align 1
  %1605 = xor i32 %1591, %1589
  %1606 = xor i32 %1605, %1592
  %1607 = lshr i32 %1606, 4
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1609, i8* %1610, align 1
  %1611 = icmp eq i32 %1592, 0
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1612, i8* %1613, align 1
  %1614 = lshr i32 %1592, 31
  %1615 = trunc i32 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1615, i8* %1616, align 1
  %1617 = lshr i32 %1589, 31
  %1618 = lshr i32 %1591, 31
  %1619 = xor i32 %1614, %1617
  %1620 = xor i32 %1614, %1618
  %1621 = add i32 %1619, %1620
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1623, i8* %1624, align 1
  store %struct.Memory* %loadMem_409b62, %struct.Memory** %MEMORY
  %loadMem_409b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 1
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %EAX.i811 = bitcast %union.anon* %1630 to i32*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 15
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %1633 to i64*
  %1634 = load i64, i64* %RBP.i812
  %1635 = sub i64 %1634, 16
  %1636 = load i32, i32* %EAX.i811
  %1637 = zext i32 %1636 to i64
  %1638 = load i64, i64* %PC.i810
  %1639 = add i64 %1638, 3
  store i64 %1639, i64* %PC.i810
  %1640 = inttoptr i64 %1635 to i32*
  store i32 %1636, i32* %1640
  store %struct.Memory* %loadMem_409b65, %struct.Memory** %MEMORY
  br label %block_.L_409b68

block_.L_409b68:                                  ; preds = %block_409b52, %block_409b28, %block_.L_409b13
  %loadMem_409b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 33
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 1
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %1646 to i64*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 15
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %1649 to i64*
  %1650 = load i64, i64* %RBP.i809
  %1651 = sub i64 %1650, 44
  %1652 = load i64, i64* %PC.i807
  %1653 = add i64 %1652, 4
  store i64 %1653, i64* %PC.i807
  %1654 = inttoptr i64 %1651 to i32*
  %1655 = load i32, i32* %1654
  %1656 = sext i32 %1655 to i64
  store i64 %1656, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_409b68, %struct.Memory** %MEMORY
  %loadMem_409b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 1
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RAX.i805 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 5
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RCX.i806 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %RAX.i805
  %1667 = add i64 %1666, 12099168
  %1668 = load i64, i64* %PC.i804
  %1669 = add i64 %1668, 8
  store i64 %1669, i64* %PC.i804
  %1670 = inttoptr i64 %1667 to i8*
  %1671 = load i8, i8* %1670
  %1672 = zext i8 %1671 to i64
  store i64 %1672, i64* %RCX.i806, align 8
  store %struct.Memory* %loadMem_409b6c, %struct.Memory** %MEMORY
  %loadMem_409b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 5
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %ECX.i802 = bitcast %union.anon* %1678 to i32*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 15
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %1681 to i64*
  %1682 = load i32, i32* %ECX.i802
  %1683 = zext i32 %1682 to i64
  %1684 = load i64, i64* %RBP.i803
  %1685 = sub i64 %1684, 12
  %1686 = load i64, i64* %PC.i801
  %1687 = add i64 %1686, 3
  store i64 %1687, i64* %PC.i801
  %1688 = inttoptr i64 %1685 to i32*
  %1689 = load i32, i32* %1688
  %1690 = sub i32 %1682, %1689
  %1691 = icmp ult i32 %1682, %1689
  %1692 = zext i1 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1692, i8* %1693, align 1
  %1694 = and i32 %1690, 255
  %1695 = call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1698, i8* %1699, align 1
  %1700 = xor i32 %1689, %1682
  %1701 = xor i32 %1700, %1690
  %1702 = lshr i32 %1701, 4
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1704, i8* %1705, align 1
  %1706 = icmp eq i32 %1690, 0
  %1707 = zext i1 %1706 to i8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1707, i8* %1708, align 1
  %1709 = lshr i32 %1690, 31
  %1710 = trunc i32 %1709 to i8
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1710, i8* %1711, align 1
  %1712 = lshr i32 %1682, 31
  %1713 = lshr i32 %1689, 31
  %1714 = xor i32 %1713, %1712
  %1715 = xor i32 %1709, %1712
  %1716 = add i32 %1715, %1714
  %1717 = icmp eq i32 %1716, 2
  %1718 = zext i1 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1718, i8* %1719, align 1
  store %struct.Memory* %loadMem_409b74, %struct.Memory** %MEMORY
  %loadMem_409b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %PC.i800
  %1724 = add i64 %1723, 70
  %1725 = load i64, i64* %PC.i800
  %1726 = add i64 %1725, 6
  %1727 = load i64, i64* %PC.i800
  %1728 = add i64 %1727, 6
  store i64 %1728, i64* %PC.i800
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1730 = load i8, i8* %1729, align 1
  %1731 = icmp eq i8 %1730, 0
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %BRANCH_TAKEN, align 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1734 = select i1 %1731, i64 %1724, i64 %1726
  store i64 %1734, i64* %1733, align 8
  store %struct.Memory* %loadMem_409b77, %struct.Memory** %MEMORY
  %loadBr_409b77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409b77 = icmp eq i8 %loadBr_409b77, 1
  br i1 %cmpBr_409b77, label %block_.L_409bbd, label %block_409b7d

block_409b7d:                                     ; preds = %block_.L_409b68
  %loadMem_409b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 1
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %PC.i798
  %1742 = add i64 %1741, 10
  store i64 %1742, i64* %PC.i798
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i799, align 8
  store %struct.Memory* %loadMem_409b7d, %struct.Memory** %MEMORY
  %loadMem_409b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 5
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 15
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %1751 to i64*
  %1752 = load i64, i64* %RBP.i797
  %1753 = sub i64 %1752, 44
  %1754 = load i64, i64* %PC.i795
  %1755 = add i64 %1754, 4
  store i64 %1755, i64* %PC.i795
  %1756 = inttoptr i64 %1753 to i32*
  %1757 = load i32, i32* %1756
  %1758 = sext i32 %1757 to i64
  store i64 %1758, i64* %RCX.i796, align 8
  store %struct.Memory* %loadMem_409b87, %struct.Memory** %MEMORY
  %loadMem_409b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 5
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RCX.i794 = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %RCX.i794
  %1766 = mul i64 %1765, 4
  %1767 = add i64 %1766, 11187184
  %1768 = load i64, i64* %PC.i793
  %1769 = add i64 %1768, 8
  store i64 %1769, i64* %PC.i793
  %1770 = inttoptr i64 %1767 to i32*
  %1771 = load i32, i32* %1770
  %1772 = sext i32 %1771 to i64
  store i64 %1772, i64* %RCX.i794, align 8
  store %struct.Memory* %loadMem_409b8b, %struct.Memory** %MEMORY
  %loadMem_409b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 5
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RCX.i792 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RCX.i792
  %1780 = load i64, i64* %PC.i791
  %1781 = add i64 %1780, 7
  store i64 %1781, i64* %PC.i791
  %1782 = sext i64 %1779 to i128
  %1783 = and i128 %1782, -18446744073709551616
  %1784 = zext i64 %1779 to i128
  %1785 = or i128 %1783, %1784
  %1786 = mul i128 744, %1785
  %1787 = trunc i128 %1786 to i64
  store i64 %1787, i64* %RCX.i792, align 8
  %1788 = sext i64 %1787 to i128
  %1789 = icmp ne i128 %1788, %1786
  %1790 = zext i1 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1790, i8* %1791, align 1
  %1792 = trunc i128 %1786 to i32
  %1793 = and i32 %1792, 255
  %1794 = call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1797, i8* %1798, align 1
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1799, align 1
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1800, align 1
  %1801 = lshr i64 %1787, 63
  %1802 = trunc i64 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1802, i8* %1803, align 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1790, i8* %1804, align 1
  store %struct.Memory* %loadMem_409b93, %struct.Memory** %MEMORY
  %loadMem_409b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 1
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 5
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RCX.i790 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RAX.i789
  %1815 = load i64, i64* %RCX.i790
  %1816 = load i64, i64* %PC.i788
  %1817 = add i64 %1816, 3
  store i64 %1817, i64* %PC.i788
  %1818 = add i64 %1815, %1814
  store i64 %1818, i64* %RAX.i789, align 8
  %1819 = icmp ult i64 %1818, %1814
  %1820 = icmp ult i64 %1818, %1815
  %1821 = or i1 %1819, %1820
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1822, i8* %1823, align 1
  %1824 = trunc i64 %1818 to i32
  %1825 = and i32 %1824, 255
  %1826 = call i32 @llvm.ctpop.i32(i32 %1825)
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = xor i8 %1828, 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1829, i8* %1830, align 1
  %1831 = xor i64 %1815, %1814
  %1832 = xor i64 %1831, %1818
  %1833 = lshr i64 %1832, 4
  %1834 = trunc i64 %1833 to i8
  %1835 = and i8 %1834, 1
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1835, i8* %1836, align 1
  %1837 = icmp eq i64 %1818, 0
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1838, i8* %1839, align 1
  %1840 = lshr i64 %1818, 63
  %1841 = trunc i64 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1841, i8* %1842, align 1
  %1843 = lshr i64 %1814, 63
  %1844 = lshr i64 %1815, 63
  %1845 = xor i64 %1840, %1843
  %1846 = xor i64 %1840, %1844
  %1847 = add i64 %1845, %1846
  %1848 = icmp eq i64 %1847, 2
  %1849 = zext i1 %1848 to i8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1849, i8* %1850, align 1
  store %struct.Memory* %loadMem_409b9a, %struct.Memory** %MEMORY
  %loadMem_409b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 1
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %1856 to i64*
  %1857 = load i64, i64* %RAX.i787
  %1858 = add i64 %1857, 12
  %1859 = load i64, i64* %PC.i786
  %1860 = add i64 %1859, 4
  store i64 %1860, i64* %PC.i786
  %1861 = inttoptr i64 %1858 to i32*
  %1862 = load i32, i32* %1861
  %1863 = sub i32 %1862, 1
  %1864 = icmp ult i32 %1862, 1
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1865, i8* %1866, align 1
  %1867 = and i32 %1863, 255
  %1868 = call i32 @llvm.ctpop.i32(i32 %1867)
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = xor i8 %1870, 1
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1871, i8* %1872, align 1
  %1873 = xor i32 %1862, 1
  %1874 = xor i32 %1873, %1863
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1877, i8* %1878, align 1
  %1879 = icmp eq i32 %1863, 0
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1880, i8* %1881, align 1
  %1882 = lshr i32 %1863, 31
  %1883 = trunc i32 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1883, i8* %1884, align 1
  %1885 = lshr i32 %1862, 31
  %1886 = xor i32 %1882, %1885
  %1887 = add i32 %1886, %1885
  %1888 = icmp eq i32 %1887, 2
  %1889 = zext i1 %1888 to i8
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1889, i8* %1890, align 1
  store %struct.Memory* %loadMem_409b9d, %struct.Memory** %MEMORY
  %loadMem_409ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 33
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %PC.i785
  %1895 = add i64 %1894, 28
  %1896 = load i64, i64* %PC.i785
  %1897 = add i64 %1896, 6
  %1898 = load i64, i64* %PC.i785
  %1899 = add i64 %1898, 6
  store i64 %1899, i64* %PC.i785
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1901 = load i8, i8* %1900, align 1
  %1902 = icmp eq i8 %1901, 0
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %BRANCH_TAKEN, align 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1905 = select i1 %1902, i64 %1895, i64 %1897
  store i64 %1905, i64* %1904, align 8
  store %struct.Memory* %loadMem_409ba1, %struct.Memory** %MEMORY
  %loadBr_409ba1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ba1 = icmp eq i8 %loadBr_409ba1, 1
  br i1 %cmpBr_409ba1, label %block_.L_409bbd, label %block_409ba7

block_409ba7:                                     ; preds = %block_409b7d
  %loadMem_409ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 1
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 15
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %RBP.i784
  %1916 = sub i64 %1915, 44
  %1917 = load i64, i64* %PC.i782
  %1918 = add i64 %1917, 4
  store i64 %1918, i64* %PC.i782
  %1919 = inttoptr i64 %1916 to i32*
  %1920 = load i32, i32* %1919
  %1921 = sext i32 %1920 to i64
  store i64 %1921, i64* %RAX.i783, align 8
  store %struct.Memory* %loadMem_409ba7, %struct.Memory** %MEMORY
  %loadMem_409bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 1
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RAX.i780 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 11
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RDI.i781 = bitcast %union.anon* %1930 to i64*
  %1931 = load i64, i64* %RAX.i780
  %1932 = mul i64 %1931, 4
  %1933 = add i64 %1932, 11187184
  %1934 = load i64, i64* %PC.i779
  %1935 = add i64 %1934, 7
  store i64 %1935, i64* %PC.i779
  %1936 = inttoptr i64 %1933 to i32*
  %1937 = load i32, i32* %1936
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RDI.i781, align 8
  store %struct.Memory* %loadMem_409bab, %struct.Memory** %MEMORY
  %loadMem1_409bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1941 to i64*
  %1942 = load i64, i64* %PC.i778
  %1943 = add i64 %1942, 1966
  %1944 = load i64, i64* %PC.i778
  %1945 = add i64 %1944, 5
  %1946 = load i64, i64* %PC.i778
  %1947 = add i64 %1946, 5
  store i64 %1947, i64* %PC.i778
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1949 = load i64, i64* %1948, align 8
  %1950 = add i64 %1949, -8
  %1951 = inttoptr i64 %1950 to i64*
  store i64 %1945, i64* %1951
  store i64 %1950, i64* %1948, align 8
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1943, i64* %1952, align 8
  store %struct.Memory* %loadMem1_409bb2, %struct.Memory** %MEMORY
  %loadMem2_409bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409bb2 = load i64, i64* %3
  %call2_409bb2 = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64 %loadPC_409bb2, %struct.Memory* %loadMem2_409bb2)
  store %struct.Memory* %call2_409bb2, %struct.Memory** %MEMORY
  %loadMem_409bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 33
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 1
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 15
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %1961 to i64*
  %1962 = load i64, i64* %RAX.i776
  %1963 = load i64, i64* %RBP.i777
  %1964 = sub i64 %1963, 16
  %1965 = load i64, i64* %PC.i775
  %1966 = add i64 %1965, 3
  store i64 %1966, i64* %PC.i775
  %1967 = trunc i64 %1962 to i32
  %1968 = inttoptr i64 %1964 to i32*
  %1969 = load i32, i32* %1968
  %1970 = add i32 %1969, %1967
  %1971 = zext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i776, align 8
  %1972 = icmp ult i32 %1970, %1967
  %1973 = icmp ult i32 %1970, %1969
  %1974 = or i1 %1972, %1973
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1975, i8* %1976, align 1
  %1977 = and i32 %1970, 255
  %1978 = call i32 @llvm.ctpop.i32(i32 %1977)
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = xor i8 %1980, 1
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1981, i8* %1982, align 1
  %1983 = xor i32 %1969, %1967
  %1984 = xor i32 %1983, %1970
  %1985 = lshr i32 %1984, 4
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1987, i8* %1988, align 1
  %1989 = icmp eq i32 %1970, 0
  %1990 = zext i1 %1989 to i8
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1990, i8* %1991, align 1
  %1992 = lshr i32 %1970, 31
  %1993 = trunc i32 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1993, i8* %1994, align 1
  %1995 = lshr i32 %1967, 31
  %1996 = lshr i32 %1969, 31
  %1997 = xor i32 %1992, %1995
  %1998 = xor i32 %1992, %1996
  %1999 = add i32 %1997, %1998
  %2000 = icmp eq i32 %1999, 2
  %2001 = zext i1 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2001, i8* %2002, align 1
  store %struct.Memory* %loadMem_409bb7, %struct.Memory** %MEMORY
  %loadMem_409bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 1
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %EAX.i773 = bitcast %union.anon* %2008 to i32*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 15
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %RBP.i774
  %2013 = sub i64 %2012, 16
  %2014 = load i32, i32* %EAX.i773
  %2015 = zext i32 %2014 to i64
  %2016 = load i64, i64* %PC.i772
  %2017 = add i64 %2016, 3
  store i64 %2017, i64* %PC.i772
  %2018 = inttoptr i64 %2013 to i32*
  store i32 %2014, i32* %2018
  store %struct.Memory* %loadMem_409bba, %struct.Memory** %MEMORY
  br label %block_.L_409bbd

block_.L_409bbd:                                  ; preds = %block_409ba7, %block_409b7d, %block_.L_409b68
  %loadMem_409bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 33
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 15
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %2024 to i64*
  %2025 = load i64, i64* %RBP.i771
  %2026 = sub i64 %2025, 16
  %2027 = load i64, i64* %PC.i770
  %2028 = add i64 %2027, 4
  store i64 %2028, i64* %PC.i770
  %2029 = inttoptr i64 %2026 to i32*
  %2030 = load i32, i32* %2029
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2031, align 1
  %2032 = and i32 %2030, 255
  %2033 = call i32 @llvm.ctpop.i32(i32 %2032)
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  %2036 = xor i8 %2035, 1
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2036, i8* %2037, align 1
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2038, align 1
  %2039 = icmp eq i32 %2030, 0
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2040, i8* %2041, align 1
  %2042 = lshr i32 %2030, 31
  %2043 = trunc i32 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2043, i8* %2044, align 1
  %2045 = lshr i32 %2030, 31
  %2046 = xor i32 %2042, %2045
  %2047 = add i32 %2046, %2045
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2049, i8* %2050, align 1
  store %struct.Memory* %loadMem_409bbd, %struct.Memory** %MEMORY
  %loadMem_409bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %PC.i769
  %2055 = add i64 %2054, 405
  %2056 = load i64, i64* %PC.i769
  %2057 = add i64 %2056, 6
  %2058 = load i64, i64* %PC.i769
  %2059 = add i64 %2058, 6
  store i64 %2059, i64* %PC.i769
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2061 = load i8, i8* %2060, align 1
  %2062 = icmp eq i8 %2061, 0
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %BRANCH_TAKEN, align 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2065 = select i1 %2062, i64 %2055, i64 %2057
  store i64 %2065, i64* %2064, align 8
  store %struct.Memory* %loadMem_409bc1, %struct.Memory** %MEMORY
  %loadBr_409bc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409bc1 = icmp eq i8 %loadBr_409bc1, 1
  br i1 %cmpBr_409bc1, label %block_.L_409d56, label %block_409bc7

block_409bc7:                                     ; preds = %block_.L_409bbd
  %loadMem_409bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 1
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 15
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %2074 to i64*
  %2075 = load i64, i64* %RBP.i768
  %2076 = sub i64 %2075, 32
  %2077 = load i64, i64* %PC.i766
  %2078 = add i64 %2077, 4
  store i64 %2078, i64* %PC.i766
  %2079 = inttoptr i64 %2076 to i32*
  %2080 = load i32, i32* %2079
  %2081 = sext i32 %2080 to i64
  store i64 %2081, i64* %RAX.i767, align 8
  store %struct.Memory* %loadMem_409bc7, %struct.Memory** %MEMORY
  %loadMem_409bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 1
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 5
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RCX.i765 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RAX.i764
  %2092 = add i64 %2091, 12099168
  %2093 = load i64, i64* %PC.i763
  %2094 = add i64 %2093, 8
  store i64 %2094, i64* %PC.i763
  %2095 = inttoptr i64 %2092 to i8*
  %2096 = load i8, i8* %2095
  %2097 = zext i8 %2096 to i64
  store i64 %2097, i64* %RCX.i765, align 8
  store %struct.Memory* %loadMem_409bcb, %struct.Memory** %MEMORY
  %loadMem_409bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 5
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %ECX.i762 = bitcast %union.anon* %2103 to i32*
  %2104 = load i32, i32* %ECX.i762
  %2105 = zext i32 %2104 to i64
  %2106 = load i64, i64* %PC.i761
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i761
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2108, align 1
  %2109 = and i32 %2104, 255
  %2110 = call i32 @llvm.ctpop.i32(i32 %2109)
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2113, i8* %2114, align 1
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2115, align 1
  %2116 = icmp eq i32 %2104, 0
  %2117 = zext i1 %2116 to i8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2117, i8* %2118, align 1
  %2119 = lshr i32 %2104, 31
  %2120 = trunc i32 %2119 to i8
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2120, i8* %2121, align 1
  %2122 = lshr i32 %2104, 31
  %2123 = xor i32 %2119, %2122
  %2124 = add i32 %2123, %2122
  %2125 = icmp eq i32 %2124, 2
  %2126 = zext i1 %2125 to i8
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2126, i8* %2127, align 1
  store %struct.Memory* %loadMem_409bd3, %struct.Memory** %MEMORY
  %loadMem_409bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %2130 to i64*
  %2131 = load i64, i64* %PC.i760
  %2132 = add i64 %2131, 69
  %2133 = load i64, i64* %PC.i760
  %2134 = add i64 %2133, 6
  %2135 = load i64, i64* %PC.i760
  %2136 = add i64 %2135, 6
  store i64 %2136, i64* %PC.i760
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2138 = load i8, i8* %2137, align 1
  store i8 %2138, i8* %BRANCH_TAKEN, align 1
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2140 = icmp ne i8 %2138, 0
  %2141 = select i1 %2140, i64 %2132, i64 %2134
  store i64 %2141, i64* %2139, align 8
  store %struct.Memory* %loadMem_409bd6, %struct.Memory** %MEMORY
  %loadBr_409bd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409bd6 = icmp eq i8 %loadBr_409bd6, 1
  br i1 %cmpBr_409bd6, label %block_.L_409c1b, label %block_409bdc

block_409bdc:                                     ; preds = %block_409bc7
  %loadMem_409bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 33
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2144 to i64*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 1
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 15
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %2150 to i64*
  %2151 = load i64, i64* %RBP.i759
  %2152 = sub i64 %2151, 32
  %2153 = load i64, i64* %PC.i757
  %2154 = add i64 %2153, 4
  store i64 %2154, i64* %PC.i757
  %2155 = inttoptr i64 %2152 to i32*
  %2156 = load i32, i32* %2155
  %2157 = sext i32 %2156 to i64
  store i64 %2157, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_409bdc, %struct.Memory** %MEMORY
  %loadMem_409be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 1
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 5
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RCX.i756 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %RAX.i755
  %2168 = add i64 %2167, 12099168
  %2169 = load i64, i64* %PC.i754
  %2170 = add i64 %2169, 8
  store i64 %2170, i64* %PC.i754
  %2171 = inttoptr i64 %2168 to i8*
  %2172 = load i8, i8* %2171
  %2173 = zext i8 %2172 to i64
  store i64 %2173, i64* %RCX.i756, align 8
  store %struct.Memory* %loadMem_409be0, %struct.Memory** %MEMORY
  %loadMem_409be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 5
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %ECX.i752 = bitcast %union.anon* %2179 to i32*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 15
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %2182 to i64*
  %2183 = load i32, i32* %ECX.i752
  %2184 = zext i32 %2183 to i64
  %2185 = load i64, i64* %RBP.i753
  %2186 = sub i64 %2185, 8
  %2187 = load i64, i64* %PC.i751
  %2188 = add i64 %2187, 3
  store i64 %2188, i64* %PC.i751
  %2189 = inttoptr i64 %2186 to i32*
  %2190 = load i32, i32* %2189
  %2191 = sub i32 %2183, %2190
  %2192 = icmp ult i32 %2183, %2190
  %2193 = zext i1 %2192 to i8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2193, i8* %2194, align 1
  %2195 = and i32 %2191, 255
  %2196 = call i32 @llvm.ctpop.i32(i32 %2195)
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = xor i8 %2198, 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2199, i8* %2200, align 1
  %2201 = xor i32 %2190, %2183
  %2202 = xor i32 %2201, %2191
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2205, i8* %2206, align 1
  %2207 = icmp eq i32 %2191, 0
  %2208 = zext i1 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2208, i8* %2209, align 1
  %2210 = lshr i32 %2191, 31
  %2211 = trunc i32 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2211, i8* %2212, align 1
  %2213 = lshr i32 %2183, 31
  %2214 = lshr i32 %2190, 31
  %2215 = xor i32 %2214, %2213
  %2216 = xor i32 %2210, %2213
  %2217 = add i32 %2216, %2215
  %2218 = icmp eq i32 %2217, 2
  %2219 = zext i1 %2218 to i8
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2219, i8* %2220, align 1
  store %struct.Memory* %loadMem_409be8, %struct.Memory** %MEMORY
  %loadMem_409beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %PC.i750
  %2225 = add i64 %2224, 60
  %2226 = load i64, i64* %PC.i750
  %2227 = add i64 %2226, 6
  %2228 = load i64, i64* %PC.i750
  %2229 = add i64 %2228, 6
  store i64 %2229, i64* %PC.i750
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2231 = load i8, i8* %2230, align 1
  %2232 = icmp eq i8 %2231, 0
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %BRANCH_TAKEN, align 1
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2235 = select i1 %2232, i64 %2225, i64 %2227
  store i64 %2235, i64* %2234, align 8
  store %struct.Memory* %loadMem_409beb, %struct.Memory** %MEMORY
  %loadBr_409beb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409beb = icmp eq i8 %loadBr_409beb, 1
  br i1 %cmpBr_409beb, label %block_.L_409c27, label %block_409bf1

block_409bf1:                                     ; preds = %block_409bdc
  %loadMem_409bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 1
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %PC.i748
  %2243 = add i64 %2242, 10
  store i64 %2243, i64* %PC.i748
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i749, align 8
  store %struct.Memory* %loadMem_409bf1, %struct.Memory** %MEMORY
  %loadMem_409bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 5
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RCX.i746 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 15
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %2252 to i64*
  %2253 = load i64, i64* %RBP.i747
  %2254 = sub i64 %2253, 32
  %2255 = load i64, i64* %PC.i745
  %2256 = add i64 %2255, 4
  store i64 %2256, i64* %PC.i745
  %2257 = inttoptr i64 %2254 to i32*
  %2258 = load i32, i32* %2257
  %2259 = sext i32 %2258 to i64
  store i64 %2259, i64* %RCX.i746, align 8
  store %struct.Memory* %loadMem_409bfb, %struct.Memory** %MEMORY
  %loadMem_409bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 5
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RCX.i744 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RCX.i744
  %2267 = mul i64 %2266, 4
  %2268 = add i64 %2267, 11187184
  %2269 = load i64, i64* %PC.i743
  %2270 = add i64 %2269, 8
  store i64 %2270, i64* %PC.i743
  %2271 = inttoptr i64 %2268 to i32*
  %2272 = load i32, i32* %2271
  %2273 = sext i32 %2272 to i64
  store i64 %2273, i64* %RCX.i744, align 8
  store %struct.Memory* %loadMem_409bff, %struct.Memory** %MEMORY
  %loadMem_409c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 5
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RCX.i742 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %RCX.i742
  %2281 = load i64, i64* %PC.i741
  %2282 = add i64 %2281, 7
  store i64 %2282, i64* %PC.i741
  %2283 = sext i64 %2280 to i128
  %2284 = and i128 %2283, -18446744073709551616
  %2285 = zext i64 %2280 to i128
  %2286 = or i128 %2284, %2285
  %2287 = mul i128 744, %2286
  %2288 = trunc i128 %2287 to i64
  store i64 %2288, i64* %RCX.i742, align 8
  %2289 = sext i64 %2288 to i128
  %2290 = icmp ne i128 %2289, %2287
  %2291 = zext i1 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2291, i8* %2292, align 1
  %2293 = trunc i128 %2287 to i32
  %2294 = and i32 %2293, 255
  %2295 = call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2298, i8* %2299, align 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2300, align 1
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2301, align 1
  %2302 = lshr i64 %2288, 63
  %2303 = trunc i64 %2302 to i8
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2303, i8* %2304, align 1
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2291, i8* %2305, align 1
  store %struct.Memory* %loadMem_409c07, %struct.Memory** %MEMORY
  %loadMem_409c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 33
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 1
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 5
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RCX.i740 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %RAX.i739
  %2316 = load i64, i64* %RCX.i740
  %2317 = load i64, i64* %PC.i738
  %2318 = add i64 %2317, 3
  store i64 %2318, i64* %PC.i738
  %2319 = add i64 %2316, %2315
  store i64 %2319, i64* %RAX.i739, align 8
  %2320 = icmp ult i64 %2319, %2315
  %2321 = icmp ult i64 %2319, %2316
  %2322 = or i1 %2320, %2321
  %2323 = zext i1 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2323, i8* %2324, align 1
  %2325 = trunc i64 %2319 to i32
  %2326 = and i32 %2325, 255
  %2327 = call i32 @llvm.ctpop.i32(i32 %2326)
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2330, i8* %2331, align 1
  %2332 = xor i64 %2316, %2315
  %2333 = xor i64 %2332, %2319
  %2334 = lshr i64 %2333, 4
  %2335 = trunc i64 %2334 to i8
  %2336 = and i8 %2335, 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2336, i8* %2337, align 1
  %2338 = icmp eq i64 %2319, 0
  %2339 = zext i1 %2338 to i8
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2339, i8* %2340, align 1
  %2341 = lshr i64 %2319, 63
  %2342 = trunc i64 %2341 to i8
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2342, i8* %2343, align 1
  %2344 = lshr i64 %2315, 63
  %2345 = lshr i64 %2316, 63
  %2346 = xor i64 %2341, %2344
  %2347 = xor i64 %2341, %2345
  %2348 = add i64 %2346, %2347
  %2349 = icmp eq i64 %2348, 2
  %2350 = zext i1 %2349 to i8
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2350, i8* %2351, align 1
  store %struct.Memory* %loadMem_409c0e, %struct.Memory** %MEMORY
  %loadMem_409c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 1
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RAX.i737
  %2359 = add i64 %2358, 12
  %2360 = load i64, i64* %PC.i736
  %2361 = add i64 %2360, 4
  store i64 %2361, i64* %PC.i736
  %2362 = inttoptr i64 %2359 to i32*
  %2363 = load i32, i32* %2362
  %2364 = sub i32 %2363, 1
  %2365 = icmp ult i32 %2363, 1
  %2366 = zext i1 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2366, i8* %2367, align 1
  %2368 = and i32 %2364, 255
  %2369 = call i32 @llvm.ctpop.i32(i32 %2368)
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  %2372 = xor i8 %2371, 1
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2372, i8* %2373, align 1
  %2374 = xor i32 %2363, 1
  %2375 = xor i32 %2374, %2364
  %2376 = lshr i32 %2375, 4
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2378, i8* %2379, align 1
  %2380 = icmp eq i32 %2364, 0
  %2381 = zext i1 %2380 to i8
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2381, i8* %2382, align 1
  %2383 = lshr i32 %2364, 31
  %2384 = trunc i32 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2384, i8* %2385, align 1
  %2386 = lshr i32 %2363, 31
  %2387 = xor i32 %2383, %2386
  %2388 = add i32 %2387, %2386
  %2389 = icmp eq i32 %2388, 2
  %2390 = zext i1 %2389 to i8
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2390, i8* %2391, align 1
  store %struct.Memory* %loadMem_409c11, %struct.Memory** %MEMORY
  %loadMem_409c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2394 to i64*
  %2395 = load i64, i64* %PC.i735
  %2396 = add i64 %2395, 18
  %2397 = load i64, i64* %PC.i735
  %2398 = add i64 %2397, 6
  %2399 = load i64, i64* %PC.i735
  %2400 = add i64 %2399, 6
  store i64 %2400, i64* %PC.i735
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2402 = load i8, i8* %2401, align 1
  %2403 = icmp ne i8 %2402, 0
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2405 = load i8, i8* %2404, align 1
  %2406 = icmp ne i8 %2405, 0
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2408 = load i8, i8* %2407, align 1
  %2409 = icmp ne i8 %2408, 0
  %2410 = xor i1 %2406, %2409
  %2411 = or i1 %2403, %2410
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %BRANCH_TAKEN, align 1
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2414 = select i1 %2411, i64 %2396, i64 %2398
  store i64 %2414, i64* %2413, align 8
  store %struct.Memory* %loadMem_409c15, %struct.Memory** %MEMORY
  %loadBr_409c15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c15 = icmp eq i8 %loadBr_409c15, 1
  br i1 %cmpBr_409c15, label %block_.L_409c27, label %block_.L_409c1b

block_.L_409c1b:                                  ; preds = %block_409bf1, %block_409bc7
  %loadMem_409c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 15
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %RBP.i734
  %2422 = sub i64 %2421, 24
  %2423 = load i64, i64* %PC.i733
  %2424 = add i64 %2423, 7
  store i64 %2424, i64* %PC.i733
  %2425 = inttoptr i64 %2422 to i32*
  store i32 1, i32* %2425
  store %struct.Memory* %loadMem_409c1b, %struct.Memory** %MEMORY
  %loadMem_409c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 33
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2428 to i64*
  %2429 = load i64, i64* %PC.i732
  %2430 = add i64 %2429, 303
  %2431 = load i64, i64* %PC.i732
  %2432 = add i64 %2431, 5
  store i64 %2432, i64* %PC.i732
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2430, i64* %2433, align 8
  store %struct.Memory* %loadMem_409c22, %struct.Memory** %MEMORY
  br label %block_.L_409d51

block_.L_409c27:                                  ; preds = %block_409bf1, %block_409bdc
  %loadMem_409c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 1
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 15
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %RBP.i731
  %2444 = sub i64 %2443, 36
  %2445 = load i64, i64* %PC.i729
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i729
  %2447 = inttoptr i64 %2444 to i32*
  %2448 = load i32, i32* %2447
  %2449 = sext i32 %2448 to i64
  store i64 %2449, i64* %RAX.i730, align 8
  store %struct.Memory* %loadMem_409c27, %struct.Memory** %MEMORY
  %loadMem_409c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 1
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 5
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RCX.i728 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RAX.i727
  %2460 = add i64 %2459, 12099168
  %2461 = load i64, i64* %PC.i726
  %2462 = add i64 %2461, 8
  store i64 %2462, i64* %PC.i726
  %2463 = inttoptr i64 %2460 to i8*
  %2464 = load i8, i8* %2463
  %2465 = zext i8 %2464 to i64
  store i64 %2465, i64* %RCX.i728, align 8
  store %struct.Memory* %loadMem_409c2b, %struct.Memory** %MEMORY
  %loadMem_409c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 5
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %ECX.i725 = bitcast %union.anon* %2471 to i32*
  %2472 = load i32, i32* %ECX.i725
  %2473 = zext i32 %2472 to i64
  %2474 = load i64, i64* %PC.i724
  %2475 = add i64 %2474, 3
  store i64 %2475, i64* %PC.i724
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2476, align 1
  %2477 = and i32 %2472, 255
  %2478 = call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2481, i8* %2482, align 1
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2483, align 1
  %2484 = icmp eq i32 %2472, 0
  %2485 = zext i1 %2484 to i8
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2485, i8* %2486, align 1
  %2487 = lshr i32 %2472, 31
  %2488 = trunc i32 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2488, i8* %2489, align 1
  %2490 = lshr i32 %2472, 31
  %2491 = xor i32 %2487, %2490
  %2492 = add i32 %2491, %2490
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2494, i8* %2495, align 1
  store %struct.Memory* %loadMem_409c33, %struct.Memory** %MEMORY
  %loadMem_409c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %PC.i723
  %2500 = add i64 %2499, 69
  %2501 = load i64, i64* %PC.i723
  %2502 = add i64 %2501, 6
  %2503 = load i64, i64* %PC.i723
  %2504 = add i64 %2503, 6
  store i64 %2504, i64* %PC.i723
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2506 = load i8, i8* %2505, align 1
  store i8 %2506, i8* %BRANCH_TAKEN, align 1
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2508 = icmp ne i8 %2506, 0
  %2509 = select i1 %2508, i64 %2500, i64 %2502
  store i64 %2509, i64* %2507, align 8
  store %struct.Memory* %loadMem_409c36, %struct.Memory** %MEMORY
  %loadBr_409c36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c36 = icmp eq i8 %loadBr_409c36, 1
  br i1 %cmpBr_409c36, label %block_.L_409c7b, label %block_409c3c

block_409c3c:                                     ; preds = %block_.L_409c27
  %loadMem_409c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 15
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RBP.i722
  %2520 = sub i64 %2519, 36
  %2521 = load i64, i64* %PC.i720
  %2522 = add i64 %2521, 4
  store i64 %2522, i64* %PC.i720
  %2523 = inttoptr i64 %2520 to i32*
  %2524 = load i32, i32* %2523
  %2525 = sext i32 %2524 to i64
  store i64 %2525, i64* %RAX.i721, align 8
  store %struct.Memory* %loadMem_409c3c, %struct.Memory** %MEMORY
  %loadMem_409c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 5
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RAX.i718
  %2536 = add i64 %2535, 12099168
  %2537 = load i64, i64* %PC.i717
  %2538 = add i64 %2537, 8
  store i64 %2538, i64* %PC.i717
  %2539 = inttoptr i64 %2536 to i8*
  %2540 = load i8, i8* %2539
  %2541 = zext i8 %2540 to i64
  store i64 %2541, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_409c40, %struct.Memory** %MEMORY
  %loadMem_409c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 33
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 5
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %ECX.i715 = bitcast %union.anon* %2547 to i32*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 15
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2550 to i64*
  %2551 = load i32, i32* %ECX.i715
  %2552 = zext i32 %2551 to i64
  %2553 = load i64, i64* %RBP.i716
  %2554 = sub i64 %2553, 8
  %2555 = load i64, i64* %PC.i714
  %2556 = add i64 %2555, 3
  store i64 %2556, i64* %PC.i714
  %2557 = inttoptr i64 %2554 to i32*
  %2558 = load i32, i32* %2557
  %2559 = sub i32 %2551, %2558
  %2560 = icmp ult i32 %2551, %2558
  %2561 = zext i1 %2560 to i8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2561, i8* %2562, align 1
  %2563 = and i32 %2559, 255
  %2564 = call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2567, i8* %2568, align 1
  %2569 = xor i32 %2558, %2551
  %2570 = xor i32 %2569, %2559
  %2571 = lshr i32 %2570, 4
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2573, i8* %2574, align 1
  %2575 = icmp eq i32 %2559, 0
  %2576 = zext i1 %2575 to i8
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2576, i8* %2577, align 1
  %2578 = lshr i32 %2559, 31
  %2579 = trunc i32 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2551, 31
  %2582 = lshr i32 %2558, 31
  %2583 = xor i32 %2582, %2581
  %2584 = xor i32 %2578, %2581
  %2585 = add i32 %2584, %2583
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2587, i8* %2588, align 1
  store %struct.Memory* %loadMem_409c48, %struct.Memory** %MEMORY
  %loadMem_409c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %PC.i713
  %2593 = add i64 %2592, 60
  %2594 = load i64, i64* %PC.i713
  %2595 = add i64 %2594, 6
  %2596 = load i64, i64* %PC.i713
  %2597 = add i64 %2596, 6
  store i64 %2597, i64* %PC.i713
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2599 = load i8, i8* %2598, align 1
  %2600 = icmp eq i8 %2599, 0
  %2601 = zext i1 %2600 to i8
  store i8 %2601, i8* %BRANCH_TAKEN, align 1
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2603 = select i1 %2600, i64 %2593, i64 %2595
  store i64 %2603, i64* %2602, align 8
  store %struct.Memory* %loadMem_409c4b, %struct.Memory** %MEMORY
  %loadBr_409c4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c4b = icmp eq i8 %loadBr_409c4b, 1
  br i1 %cmpBr_409c4b, label %block_.L_409c87, label %block_409c51

block_409c51:                                     ; preds = %block_409c3c
  %loadMem_409c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %2609 to i64*
  %2610 = load i64, i64* %PC.i711
  %2611 = add i64 %2610, 10
  store i64 %2611, i64* %PC.i711
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i712, align 8
  store %struct.Memory* %loadMem_409c51, %struct.Memory** %MEMORY
  %loadMem_409c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 5
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RCX.i709 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 15
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RBP.i710
  %2622 = sub i64 %2621, 36
  %2623 = load i64, i64* %PC.i708
  %2624 = add i64 %2623, 4
  store i64 %2624, i64* %PC.i708
  %2625 = inttoptr i64 %2622 to i32*
  %2626 = load i32, i32* %2625
  %2627 = sext i32 %2626 to i64
  store i64 %2627, i64* %RCX.i709, align 8
  store %struct.Memory* %loadMem_409c5b, %struct.Memory** %MEMORY
  %loadMem_409c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %RCX.i707
  %2635 = mul i64 %2634, 4
  %2636 = add i64 %2635, 11187184
  %2637 = load i64, i64* %PC.i706
  %2638 = add i64 %2637, 8
  store i64 %2638, i64* %PC.i706
  %2639 = inttoptr i64 %2636 to i32*
  %2640 = load i32, i32* %2639
  %2641 = sext i32 %2640 to i64
  store i64 %2641, i64* %RCX.i707, align 8
  store %struct.Memory* %loadMem_409c5f, %struct.Memory** %MEMORY
  %loadMem_409c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 33
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 5
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RCX.i705 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RCX.i705
  %2649 = load i64, i64* %PC.i704
  %2650 = add i64 %2649, 7
  store i64 %2650, i64* %PC.i704
  %2651 = sext i64 %2648 to i128
  %2652 = and i128 %2651, -18446744073709551616
  %2653 = zext i64 %2648 to i128
  %2654 = or i128 %2652, %2653
  %2655 = mul i128 744, %2654
  %2656 = trunc i128 %2655 to i64
  store i64 %2656, i64* %RCX.i705, align 8
  %2657 = sext i64 %2656 to i128
  %2658 = icmp ne i128 %2657, %2655
  %2659 = zext i1 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2659, i8* %2660, align 1
  %2661 = trunc i128 %2655 to i32
  %2662 = and i32 %2661, 255
  %2663 = call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2666, i8* %2667, align 1
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2668, align 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2669, align 1
  %2670 = lshr i64 %2656, 63
  %2671 = trunc i64 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2671, i8* %2672, align 1
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2659, i8* %2673, align 1
  store %struct.Memory* %loadMem_409c67, %struct.Memory** %MEMORY
  %loadMem_409c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 5
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RCX.i703 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RAX.i702
  %2684 = load i64, i64* %RCX.i703
  %2685 = load i64, i64* %PC.i701
  %2686 = add i64 %2685, 3
  store i64 %2686, i64* %PC.i701
  %2687 = add i64 %2684, %2683
  store i64 %2687, i64* %RAX.i702, align 8
  %2688 = icmp ult i64 %2687, %2683
  %2689 = icmp ult i64 %2687, %2684
  %2690 = or i1 %2688, %2689
  %2691 = zext i1 %2690 to i8
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2691, i8* %2692, align 1
  %2693 = trunc i64 %2687 to i32
  %2694 = and i32 %2693, 255
  %2695 = call i32 @llvm.ctpop.i32(i32 %2694)
  %2696 = trunc i32 %2695 to i8
  %2697 = and i8 %2696, 1
  %2698 = xor i8 %2697, 1
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2698, i8* %2699, align 1
  %2700 = xor i64 %2684, %2683
  %2701 = xor i64 %2700, %2687
  %2702 = lshr i64 %2701, 4
  %2703 = trunc i64 %2702 to i8
  %2704 = and i8 %2703, 1
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2704, i8* %2705, align 1
  %2706 = icmp eq i64 %2687, 0
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2707, i8* %2708, align 1
  %2709 = lshr i64 %2687, 63
  %2710 = trunc i64 %2709 to i8
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2710, i8* %2711, align 1
  %2712 = lshr i64 %2683, 63
  %2713 = lshr i64 %2684, 63
  %2714 = xor i64 %2709, %2712
  %2715 = xor i64 %2709, %2713
  %2716 = add i64 %2714, %2715
  %2717 = icmp eq i64 %2716, 2
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2718, i8* %2719, align 1
  store %struct.Memory* %loadMem_409c6e, %struct.Memory** %MEMORY
  %loadMem_409c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 1
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RAX.i700 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %RAX.i700
  %2727 = add i64 %2726, 12
  %2728 = load i64, i64* %PC.i699
  %2729 = add i64 %2728, 4
  store i64 %2729, i64* %PC.i699
  %2730 = inttoptr i64 %2727 to i32*
  %2731 = load i32, i32* %2730
  %2732 = sub i32 %2731, 1
  %2733 = icmp ult i32 %2731, 1
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2734, i8* %2735, align 1
  %2736 = and i32 %2732, 255
  %2737 = call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2740, i8* %2741, align 1
  %2742 = xor i32 %2731, 1
  %2743 = xor i32 %2742, %2732
  %2744 = lshr i32 %2743, 4
  %2745 = trunc i32 %2744 to i8
  %2746 = and i8 %2745, 1
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2746, i8* %2747, align 1
  %2748 = icmp eq i32 %2732, 0
  %2749 = zext i1 %2748 to i8
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2749, i8* %2750, align 1
  %2751 = lshr i32 %2732, 31
  %2752 = trunc i32 %2751 to i8
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2752, i8* %2753, align 1
  %2754 = lshr i32 %2731, 31
  %2755 = xor i32 %2751, %2754
  %2756 = add i32 %2755, %2754
  %2757 = icmp eq i32 %2756, 2
  %2758 = zext i1 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2758, i8* %2759, align 1
  store %struct.Memory* %loadMem_409c71, %struct.Memory** %MEMORY
  %loadMem_409c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2762 to i64*
  %2763 = load i64, i64* %PC.i698
  %2764 = add i64 %2763, 18
  %2765 = load i64, i64* %PC.i698
  %2766 = add i64 %2765, 6
  %2767 = load i64, i64* %PC.i698
  %2768 = add i64 %2767, 6
  store i64 %2768, i64* %PC.i698
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2770 = load i8, i8* %2769, align 1
  %2771 = icmp ne i8 %2770, 0
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2773 = load i8, i8* %2772, align 1
  %2774 = icmp ne i8 %2773, 0
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2776 = load i8, i8* %2775, align 1
  %2777 = icmp ne i8 %2776, 0
  %2778 = xor i1 %2774, %2777
  %2779 = or i1 %2771, %2778
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %BRANCH_TAKEN, align 1
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2782 = select i1 %2779, i64 %2764, i64 %2766
  store i64 %2782, i64* %2781, align 8
  store %struct.Memory* %loadMem_409c75, %struct.Memory** %MEMORY
  %loadBr_409c75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c75 = icmp eq i8 %loadBr_409c75, 1
  br i1 %cmpBr_409c75, label %block_.L_409c87, label %block_.L_409c7b

block_.L_409c7b:                                  ; preds = %block_409c51, %block_.L_409c27
  %loadMem_409c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2785 to i64*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 15
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %2788 to i64*
  %2789 = load i64, i64* %RBP.i697
  %2790 = sub i64 %2789, 24
  %2791 = load i64, i64* %PC.i696
  %2792 = add i64 %2791, 7
  store i64 %2792, i64* %PC.i696
  %2793 = inttoptr i64 %2790 to i32*
  store i32 1, i32* %2793
  store %struct.Memory* %loadMem_409c7b, %struct.Memory** %MEMORY
  %loadMem_409c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 33
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2796 to i64*
  %2797 = load i64, i64* %PC.i695
  %2798 = add i64 %2797, 202
  %2799 = load i64, i64* %PC.i695
  %2800 = add i64 %2799, 5
  store i64 %2800, i64* %PC.i695
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2798, i64* %2801, align 8
  store %struct.Memory* %loadMem_409c82, %struct.Memory** %MEMORY
  br label %block_.L_409d4c

block_.L_409c87:                                  ; preds = %block_409c51, %block_409c3c
  %loadMem_409c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 33
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2804 to i64*
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2806 = getelementptr inbounds %struct.GPR, %struct.GPR* %2805, i32 0, i32 1
  %2807 = getelementptr inbounds %struct.Reg, %struct.Reg* %2806, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %2807 to i64*
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 15
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %2810 to i64*
  %2811 = load i64, i64* %RBP.i694
  %2812 = sub i64 %2811, 40
  %2813 = load i64, i64* %PC.i692
  %2814 = add i64 %2813, 4
  store i64 %2814, i64* %PC.i692
  %2815 = inttoptr i64 %2812 to i32*
  %2816 = load i32, i32* %2815
  %2817 = sext i32 %2816 to i64
  store i64 %2817, i64* %RAX.i693, align 8
  store %struct.Memory* %loadMem_409c87, %struct.Memory** %MEMORY
  %loadMem_409c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 1
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 5
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RCX.i691 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RAX.i690
  %2828 = add i64 %2827, 12099168
  %2829 = load i64, i64* %PC.i689
  %2830 = add i64 %2829, 8
  store i64 %2830, i64* %PC.i689
  %2831 = inttoptr i64 %2828 to i8*
  %2832 = load i8, i8* %2831
  %2833 = zext i8 %2832 to i64
  store i64 %2833, i64* %RCX.i691, align 8
  store %struct.Memory* %loadMem_409c8b, %struct.Memory** %MEMORY
  %loadMem_409c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 33
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 5
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %ECX.i688 = bitcast %union.anon* %2839 to i32*
  %2840 = load i32, i32* %ECX.i688
  %2841 = zext i32 %2840 to i64
  %2842 = load i64, i64* %PC.i687
  %2843 = add i64 %2842, 3
  store i64 %2843, i64* %PC.i687
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2844, align 1
  %2845 = and i32 %2840, 255
  %2846 = call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2849, i8* %2850, align 1
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2851, align 1
  %2852 = icmp eq i32 %2840, 0
  %2853 = zext i1 %2852 to i8
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2853, i8* %2854, align 1
  %2855 = lshr i32 %2840, 31
  %2856 = trunc i32 %2855 to i8
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2856, i8* %2857, align 1
  %2858 = lshr i32 %2840, 31
  %2859 = xor i32 %2855, %2858
  %2860 = add i32 %2859, %2858
  %2861 = icmp eq i32 %2860, 2
  %2862 = zext i1 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2862, i8* %2863, align 1
  store %struct.Memory* %loadMem_409c93, %struct.Memory** %MEMORY
  %loadMem_409c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2866 to i64*
  %2867 = load i64, i64* %PC.i686
  %2868 = add i64 %2867, 69
  %2869 = load i64, i64* %PC.i686
  %2870 = add i64 %2869, 6
  %2871 = load i64, i64* %PC.i686
  %2872 = add i64 %2871, 6
  store i64 %2872, i64* %PC.i686
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2874 = load i8, i8* %2873, align 1
  store i8 %2874, i8* %BRANCH_TAKEN, align 1
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2876 = icmp ne i8 %2874, 0
  %2877 = select i1 %2876, i64 %2868, i64 %2870
  store i64 %2877, i64* %2875, align 8
  store %struct.Memory* %loadMem_409c96, %struct.Memory** %MEMORY
  %loadBr_409c96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c96 = icmp eq i8 %loadBr_409c96, 1
  br i1 %cmpBr_409c96, label %block_.L_409cdb, label %block_409c9c

block_409c9c:                                     ; preds = %block_.L_409c87
  %loadMem_409c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 1
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 15
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %RBP.i685
  %2888 = sub i64 %2887, 40
  %2889 = load i64, i64* %PC.i683
  %2890 = add i64 %2889, 4
  store i64 %2890, i64* %PC.i683
  %2891 = inttoptr i64 %2888 to i32*
  %2892 = load i32, i32* %2891
  %2893 = sext i32 %2892 to i64
  store i64 %2893, i64* %RAX.i684, align 8
  store %struct.Memory* %loadMem_409c9c, %struct.Memory** %MEMORY
  %loadMem_409ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 1
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %2899 to i64*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 5
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RAX.i681
  %2904 = add i64 %2903, 12099168
  %2905 = load i64, i64* %PC.i680
  %2906 = add i64 %2905, 8
  store i64 %2906, i64* %PC.i680
  %2907 = inttoptr i64 %2904 to i8*
  %2908 = load i8, i8* %2907
  %2909 = zext i8 %2908 to i64
  store i64 %2909, i64* %RCX.i682, align 8
  store %struct.Memory* %loadMem_409ca0, %struct.Memory** %MEMORY
  %loadMem_409ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 5
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %ECX.i678 = bitcast %union.anon* %2915 to i32*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 15
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %2918 to i64*
  %2919 = load i32, i32* %ECX.i678
  %2920 = zext i32 %2919 to i64
  %2921 = load i64, i64* %RBP.i679
  %2922 = sub i64 %2921, 8
  %2923 = load i64, i64* %PC.i677
  %2924 = add i64 %2923, 3
  store i64 %2924, i64* %PC.i677
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925
  %2927 = sub i32 %2919, %2926
  %2928 = icmp ult i32 %2919, %2926
  %2929 = zext i1 %2928 to i8
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2929, i8* %2930, align 1
  %2931 = and i32 %2927, 255
  %2932 = call i32 @llvm.ctpop.i32(i32 %2931)
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  %2935 = xor i8 %2934, 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2935, i8* %2936, align 1
  %2937 = xor i32 %2926, %2919
  %2938 = xor i32 %2937, %2927
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2941, i8* %2942, align 1
  %2943 = icmp eq i32 %2927, 0
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2927, 31
  %2947 = trunc i32 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2919, 31
  %2950 = lshr i32 %2926, 31
  %2951 = xor i32 %2950, %2949
  %2952 = xor i32 %2946, %2949
  %2953 = add i32 %2952, %2951
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2955, i8* %2956, align 1
  store %struct.Memory* %loadMem_409ca8, %struct.Memory** %MEMORY
  %loadMem_409cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 33
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %PC.i676
  %2961 = add i64 %2960, 60
  %2962 = load i64, i64* %PC.i676
  %2963 = add i64 %2962, 6
  %2964 = load i64, i64* %PC.i676
  %2965 = add i64 %2964, 6
  store i64 %2965, i64* %PC.i676
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2967 = load i8, i8* %2966, align 1
  %2968 = icmp eq i8 %2967, 0
  %2969 = zext i1 %2968 to i8
  store i8 %2969, i8* %BRANCH_TAKEN, align 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2971 = select i1 %2968, i64 %2961, i64 %2963
  store i64 %2971, i64* %2970, align 8
  store %struct.Memory* %loadMem_409cab, %struct.Memory** %MEMORY
  %loadBr_409cab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409cab = icmp eq i8 %loadBr_409cab, 1
  br i1 %cmpBr_409cab, label %block_.L_409ce7, label %block_409cb1

block_409cb1:                                     ; preds = %block_409c9c
  %loadMem_409cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 1
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %PC.i674
  %2979 = add i64 %2978, 10
  store i64 %2979, i64* %PC.i674
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i675, align 8
  store %struct.Memory* %loadMem_409cb1, %struct.Memory** %MEMORY
  %loadMem_409cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 5
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 15
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RBP.i673
  %2990 = sub i64 %2989, 40
  %2991 = load i64, i64* %PC.i671
  %2992 = add i64 %2991, 4
  store i64 %2992, i64* %PC.i671
  %2993 = inttoptr i64 %2990 to i32*
  %2994 = load i32, i32* %2993
  %2995 = sext i32 %2994 to i64
  store i64 %2995, i64* %RCX.i672, align 8
  store %struct.Memory* %loadMem_409cbb, %struct.Memory** %MEMORY
  %loadMem_409cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 5
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %3001 to i64*
  %3002 = load i64, i64* %RCX.i670
  %3003 = mul i64 %3002, 4
  %3004 = add i64 %3003, 11187184
  %3005 = load i64, i64* %PC.i669
  %3006 = add i64 %3005, 8
  store i64 %3006, i64* %PC.i669
  %3007 = inttoptr i64 %3004 to i32*
  %3008 = load i32, i32* %3007
  %3009 = sext i32 %3008 to i64
  store i64 %3009, i64* %RCX.i670, align 8
  store %struct.Memory* %loadMem_409cbf, %struct.Memory** %MEMORY
  %loadMem_409cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 33
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 5
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %3015 to i64*
  %3016 = load i64, i64* %RCX.i668
  %3017 = load i64, i64* %PC.i667
  %3018 = add i64 %3017, 7
  store i64 %3018, i64* %PC.i667
  %3019 = sext i64 %3016 to i128
  %3020 = and i128 %3019, -18446744073709551616
  %3021 = zext i64 %3016 to i128
  %3022 = or i128 %3020, %3021
  %3023 = mul i128 744, %3022
  %3024 = trunc i128 %3023 to i64
  store i64 %3024, i64* %RCX.i668, align 8
  %3025 = sext i64 %3024 to i128
  %3026 = icmp ne i128 %3025, %3023
  %3027 = zext i1 %3026 to i8
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3027, i8* %3028, align 1
  %3029 = trunc i128 %3023 to i32
  %3030 = and i32 %3029, 255
  %3031 = call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3034, i8* %3035, align 1
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3036, align 1
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3037, align 1
  %3038 = lshr i64 %3024, 63
  %3039 = trunc i64 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3039, i8* %3040, align 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3027, i8* %3041, align 1
  store %struct.Memory* %loadMem_409cc7, %struct.Memory** %MEMORY
  %loadMem_409cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 5
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RAX.i665
  %3052 = load i64, i64* %RCX.i666
  %3053 = load i64, i64* %PC.i664
  %3054 = add i64 %3053, 3
  store i64 %3054, i64* %PC.i664
  %3055 = add i64 %3052, %3051
  store i64 %3055, i64* %RAX.i665, align 8
  %3056 = icmp ult i64 %3055, %3051
  %3057 = icmp ult i64 %3055, %3052
  %3058 = or i1 %3056, %3057
  %3059 = zext i1 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3059, i8* %3060, align 1
  %3061 = trunc i64 %3055 to i32
  %3062 = and i32 %3061, 255
  %3063 = call i32 @llvm.ctpop.i32(i32 %3062)
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  %3066 = xor i8 %3065, 1
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3066, i8* %3067, align 1
  %3068 = xor i64 %3052, %3051
  %3069 = xor i64 %3068, %3055
  %3070 = lshr i64 %3069, 4
  %3071 = trunc i64 %3070 to i8
  %3072 = and i8 %3071, 1
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3072, i8* %3073, align 1
  %3074 = icmp eq i64 %3055, 0
  %3075 = zext i1 %3074 to i8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3075, i8* %3076, align 1
  %3077 = lshr i64 %3055, 63
  %3078 = trunc i64 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3078, i8* %3079, align 1
  %3080 = lshr i64 %3051, 63
  %3081 = lshr i64 %3052, 63
  %3082 = xor i64 %3077, %3080
  %3083 = xor i64 %3077, %3081
  %3084 = add i64 %3082, %3083
  %3085 = icmp eq i64 %3084, 2
  %3086 = zext i1 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3086, i8* %3087, align 1
  store %struct.Memory* %loadMem_409cce, %struct.Memory** %MEMORY
  %loadMem_409cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 1
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %3093 to i64*
  %3094 = load i64, i64* %RAX.i663
  %3095 = add i64 %3094, 12
  %3096 = load i64, i64* %PC.i662
  %3097 = add i64 %3096, 4
  store i64 %3097, i64* %PC.i662
  %3098 = inttoptr i64 %3095 to i32*
  %3099 = load i32, i32* %3098
  %3100 = sub i32 %3099, 1
  %3101 = icmp ult i32 %3099, 1
  %3102 = zext i1 %3101 to i8
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3102, i8* %3103, align 1
  %3104 = and i32 %3100, 255
  %3105 = call i32 @llvm.ctpop.i32(i32 %3104)
  %3106 = trunc i32 %3105 to i8
  %3107 = and i8 %3106, 1
  %3108 = xor i8 %3107, 1
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3108, i8* %3109, align 1
  %3110 = xor i32 %3099, 1
  %3111 = xor i32 %3110, %3100
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3114, i8* %3115, align 1
  %3116 = icmp eq i32 %3100, 0
  %3117 = zext i1 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3117, i8* %3118, align 1
  %3119 = lshr i32 %3100, 31
  %3120 = trunc i32 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3120, i8* %3121, align 1
  %3122 = lshr i32 %3099, 31
  %3123 = xor i32 %3119, %3122
  %3124 = add i32 %3123, %3122
  %3125 = icmp eq i32 %3124, 2
  %3126 = zext i1 %3125 to i8
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3126, i8* %3127, align 1
  store %struct.Memory* %loadMem_409cd1, %struct.Memory** %MEMORY
  %loadMem_409cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %PC.i661
  %3132 = add i64 %3131, 18
  %3133 = load i64, i64* %PC.i661
  %3134 = add i64 %3133, 6
  %3135 = load i64, i64* %PC.i661
  %3136 = add i64 %3135, 6
  store i64 %3136, i64* %PC.i661
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3138 = load i8, i8* %3137, align 1
  %3139 = icmp ne i8 %3138, 0
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3141 = load i8, i8* %3140, align 1
  %3142 = icmp ne i8 %3141, 0
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3144 = load i8, i8* %3143, align 1
  %3145 = icmp ne i8 %3144, 0
  %3146 = xor i1 %3142, %3145
  %3147 = or i1 %3139, %3146
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %BRANCH_TAKEN, align 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3150 = select i1 %3147, i64 %3132, i64 %3134
  store i64 %3150, i64* %3149, align 8
  store %struct.Memory* %loadMem_409cd5, %struct.Memory** %MEMORY
  %loadBr_409cd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409cd5 = icmp eq i8 %loadBr_409cd5, 1
  br i1 %cmpBr_409cd5, label %block_.L_409ce7, label %block_.L_409cdb

block_.L_409cdb:                                  ; preds = %block_409cb1, %block_.L_409c87
  %loadMem_409cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 15
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %RBP.i660
  %3158 = sub i64 %3157, 24
  %3159 = load i64, i64* %PC.i659
  %3160 = add i64 %3159, 7
  store i64 %3160, i64* %PC.i659
  %3161 = inttoptr i64 %3158 to i32*
  store i32 1, i32* %3161
  store %struct.Memory* %loadMem_409cdb, %struct.Memory** %MEMORY
  %loadMem_409ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 33
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %PC.i658
  %3166 = add i64 %3165, 101
  %3167 = load i64, i64* %PC.i658
  %3168 = add i64 %3167, 5
  store i64 %3168, i64* %PC.i658
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3166, i64* %3169, align 8
  store %struct.Memory* %loadMem_409ce2, %struct.Memory** %MEMORY
  br label %block_.L_409d47

block_.L_409ce7:                                  ; preds = %block_409cb1, %block_409c9c
  %loadMem_409ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 33
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 1
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 15
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %RBP.i657
  %3180 = sub i64 %3179, 44
  %3181 = load i64, i64* %PC.i655
  %3182 = add i64 %3181, 4
  store i64 %3182, i64* %PC.i655
  %3183 = inttoptr i64 %3180 to i32*
  %3184 = load i32, i32* %3183
  %3185 = sext i32 %3184 to i64
  store i64 %3185, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_409ce7, %struct.Memory** %MEMORY
  %loadMem_409ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 1
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 5
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %3194 to i64*
  %3195 = load i64, i64* %RAX.i653
  %3196 = add i64 %3195, 12099168
  %3197 = load i64, i64* %PC.i652
  %3198 = add i64 %3197, 8
  store i64 %3198, i64* %PC.i652
  %3199 = inttoptr i64 %3196 to i8*
  %3200 = load i8, i8* %3199
  %3201 = zext i8 %3200 to i64
  store i64 %3201, i64* %RCX.i654, align 8
  store %struct.Memory* %loadMem_409ceb, %struct.Memory** %MEMORY
  %loadMem_409cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 33
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 5
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %ECX.i651 = bitcast %union.anon* %3207 to i32*
  %3208 = load i32, i32* %ECX.i651
  %3209 = zext i32 %3208 to i64
  %3210 = load i64, i64* %PC.i650
  %3211 = add i64 %3210, 3
  store i64 %3211, i64* %PC.i650
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3212, align 1
  %3213 = and i32 %3208, 255
  %3214 = call i32 @llvm.ctpop.i32(i32 %3213)
  %3215 = trunc i32 %3214 to i8
  %3216 = and i8 %3215, 1
  %3217 = xor i8 %3216, 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3217, i8* %3218, align 1
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3219, align 1
  %3220 = icmp eq i32 %3208, 0
  %3221 = zext i1 %3220 to i8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3221, i8* %3222, align 1
  %3223 = lshr i32 %3208, 31
  %3224 = trunc i32 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3224, i8* %3225, align 1
  %3226 = lshr i32 %3208, 31
  %3227 = xor i32 %3223, %3226
  %3228 = add i32 %3227, %3226
  %3229 = icmp eq i32 %3228, 2
  %3230 = zext i1 %3229 to i8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3230, i8* %3231, align 1
  store %struct.Memory* %loadMem_409cf3, %struct.Memory** %MEMORY
  %loadMem_409cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %PC.i649
  %3236 = add i64 %3235, 69
  %3237 = load i64, i64* %PC.i649
  %3238 = add i64 %3237, 6
  %3239 = load i64, i64* %PC.i649
  %3240 = add i64 %3239, 6
  store i64 %3240, i64* %PC.i649
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3242 = load i8, i8* %3241, align 1
  store i8 %3242, i8* %BRANCH_TAKEN, align 1
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3244 = icmp ne i8 %3242, 0
  %3245 = select i1 %3244, i64 %3236, i64 %3238
  store i64 %3245, i64* %3243, align 8
  store %struct.Memory* %loadMem_409cf6, %struct.Memory** %MEMORY
  %loadBr_409cf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409cf6 = icmp eq i8 %loadBr_409cf6, 1
  br i1 %cmpBr_409cf6, label %block_.L_409d3b, label %block_409cfc

block_409cfc:                                     ; preds = %block_.L_409ce7
  %loadMem_409cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 1
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 15
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %3254 to i64*
  %3255 = load i64, i64* %RBP.i648
  %3256 = sub i64 %3255, 44
  %3257 = load i64, i64* %PC.i646
  %3258 = add i64 %3257, 4
  store i64 %3258, i64* %PC.i646
  %3259 = inttoptr i64 %3256 to i32*
  %3260 = load i32, i32* %3259
  %3261 = sext i32 %3260 to i64
  store i64 %3261, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_409cfc, %struct.Memory** %MEMORY
  %loadMem_409d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 1
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 5
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %RAX.i644
  %3272 = add i64 %3271, 12099168
  %3273 = load i64, i64* %PC.i643
  %3274 = add i64 %3273, 8
  store i64 %3274, i64* %PC.i643
  %3275 = inttoptr i64 %3272 to i8*
  %3276 = load i8, i8* %3275
  %3277 = zext i8 %3276 to i64
  store i64 %3277, i64* %RCX.i645, align 8
  store %struct.Memory* %loadMem_409d00, %struct.Memory** %MEMORY
  %loadMem_409d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 5
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %ECX.i641 = bitcast %union.anon* %3283 to i32*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 15
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %3286 to i64*
  %3287 = load i32, i32* %ECX.i641
  %3288 = zext i32 %3287 to i64
  %3289 = load i64, i64* %RBP.i642
  %3290 = sub i64 %3289, 8
  %3291 = load i64, i64* %PC.i640
  %3292 = add i64 %3291, 3
  store i64 %3292, i64* %PC.i640
  %3293 = inttoptr i64 %3290 to i32*
  %3294 = load i32, i32* %3293
  %3295 = sub i32 %3287, %3294
  %3296 = icmp ult i32 %3287, %3294
  %3297 = zext i1 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3297, i8* %3298, align 1
  %3299 = and i32 %3295, 255
  %3300 = call i32 @llvm.ctpop.i32(i32 %3299)
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = xor i8 %3302, 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3303, i8* %3304, align 1
  %3305 = xor i32 %3294, %3287
  %3306 = xor i32 %3305, %3295
  %3307 = lshr i32 %3306, 4
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3309, i8* %3310, align 1
  %3311 = icmp eq i32 %3295, 0
  %3312 = zext i1 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3312, i8* %3313, align 1
  %3314 = lshr i32 %3295, 31
  %3315 = trunc i32 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3315, i8* %3316, align 1
  %3317 = lshr i32 %3287, 31
  %3318 = lshr i32 %3294, 31
  %3319 = xor i32 %3318, %3317
  %3320 = xor i32 %3314, %3317
  %3321 = add i32 %3320, %3319
  %3322 = icmp eq i32 %3321, 2
  %3323 = zext i1 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3323, i8* %3324, align 1
  store %struct.Memory* %loadMem_409d08, %struct.Memory** %MEMORY
  %loadMem_409d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3327 to i64*
  %3328 = load i64, i64* %PC.i639
  %3329 = add i64 %3328, 55
  %3330 = load i64, i64* %PC.i639
  %3331 = add i64 %3330, 6
  %3332 = load i64, i64* %PC.i639
  %3333 = add i64 %3332, 6
  store i64 %3333, i64* %PC.i639
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3335 = load i8, i8* %3334, align 1
  %3336 = icmp eq i8 %3335, 0
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %BRANCH_TAKEN, align 1
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3339 = select i1 %3336, i64 %3329, i64 %3331
  store i64 %3339, i64* %3338, align 8
  store %struct.Memory* %loadMem_409d0b, %struct.Memory** %MEMORY
  %loadBr_409d0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d0b = icmp eq i8 %loadBr_409d0b, 1
  br i1 %cmpBr_409d0b, label %block_.L_409d42, label %block_409d11

block_409d11:                                     ; preds = %block_409cfc
  %loadMem_409d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 1
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %PC.i637
  %3347 = add i64 %3346, 10
  store i64 %3347, i64* %PC.i637
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_409d11, %struct.Memory** %MEMORY
  %loadMem_409d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 33
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 5
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 15
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %RBP.i636
  %3358 = sub i64 %3357, 44
  %3359 = load i64, i64* %PC.i634
  %3360 = add i64 %3359, 4
  store i64 %3360, i64* %PC.i634
  %3361 = inttoptr i64 %3358 to i32*
  %3362 = load i32, i32* %3361
  %3363 = sext i32 %3362 to i64
  store i64 %3363, i64* %RCX.i635, align 8
  store %struct.Memory* %loadMem_409d1b, %struct.Memory** %MEMORY
  %loadMem_409d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 33
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 5
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %3369 to i64*
  %3370 = load i64, i64* %RCX.i633
  %3371 = mul i64 %3370, 4
  %3372 = add i64 %3371, 11187184
  %3373 = load i64, i64* %PC.i632
  %3374 = add i64 %3373, 8
  store i64 %3374, i64* %PC.i632
  %3375 = inttoptr i64 %3372 to i32*
  %3376 = load i32, i32* %3375
  %3377 = sext i32 %3376 to i64
  store i64 %3377, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_409d1f, %struct.Memory** %MEMORY
  %loadMem_409d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 5
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %3383 to i64*
  %3384 = load i64, i64* %RCX.i631
  %3385 = load i64, i64* %PC.i630
  %3386 = add i64 %3385, 7
  store i64 %3386, i64* %PC.i630
  %3387 = sext i64 %3384 to i128
  %3388 = and i128 %3387, -18446744073709551616
  %3389 = zext i64 %3384 to i128
  %3390 = or i128 %3388, %3389
  %3391 = mul i128 744, %3390
  %3392 = trunc i128 %3391 to i64
  store i64 %3392, i64* %RCX.i631, align 8
  %3393 = sext i64 %3392 to i128
  %3394 = icmp ne i128 %3393, %3391
  %3395 = zext i1 %3394 to i8
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3395, i8* %3396, align 1
  %3397 = trunc i128 %3391 to i32
  %3398 = and i32 %3397, 255
  %3399 = call i32 @llvm.ctpop.i32(i32 %3398)
  %3400 = trunc i32 %3399 to i8
  %3401 = and i8 %3400, 1
  %3402 = xor i8 %3401, 1
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3402, i8* %3403, align 1
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3404, align 1
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3405, align 1
  %3406 = lshr i64 %3392, 63
  %3407 = trunc i64 %3406 to i8
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3407, i8* %3408, align 1
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3395, i8* %3409, align 1
  store %struct.Memory* %loadMem_409d27, %struct.Memory** %MEMORY
  %loadMem_409d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 1
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %3415 to i64*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 5
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %3418 to i64*
  %3419 = load i64, i64* %RAX.i628
  %3420 = load i64, i64* %RCX.i629
  %3421 = load i64, i64* %PC.i627
  %3422 = add i64 %3421, 3
  store i64 %3422, i64* %PC.i627
  %3423 = add i64 %3420, %3419
  store i64 %3423, i64* %RAX.i628, align 8
  %3424 = icmp ult i64 %3423, %3419
  %3425 = icmp ult i64 %3423, %3420
  %3426 = or i1 %3424, %3425
  %3427 = zext i1 %3426 to i8
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3427, i8* %3428, align 1
  %3429 = trunc i64 %3423 to i32
  %3430 = and i32 %3429, 255
  %3431 = call i32 @llvm.ctpop.i32(i32 %3430)
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = xor i8 %3433, 1
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3434, i8* %3435, align 1
  %3436 = xor i64 %3420, %3419
  %3437 = xor i64 %3436, %3423
  %3438 = lshr i64 %3437, 4
  %3439 = trunc i64 %3438 to i8
  %3440 = and i8 %3439, 1
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3440, i8* %3441, align 1
  %3442 = icmp eq i64 %3423, 0
  %3443 = zext i1 %3442 to i8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3443, i8* %3444, align 1
  %3445 = lshr i64 %3423, 63
  %3446 = trunc i64 %3445 to i8
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3446, i8* %3447, align 1
  %3448 = lshr i64 %3419, 63
  %3449 = lshr i64 %3420, 63
  %3450 = xor i64 %3445, %3448
  %3451 = xor i64 %3445, %3449
  %3452 = add i64 %3450, %3451
  %3453 = icmp eq i64 %3452, 2
  %3454 = zext i1 %3453 to i8
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3454, i8* %3455, align 1
  store %struct.Memory* %loadMem_409d2e, %struct.Memory** %MEMORY
  %loadMem_409d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 1
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RAX.i626
  %3463 = add i64 %3462, 12
  %3464 = load i64, i64* %PC.i625
  %3465 = add i64 %3464, 4
  store i64 %3465, i64* %PC.i625
  %3466 = inttoptr i64 %3463 to i32*
  %3467 = load i32, i32* %3466
  %3468 = sub i32 %3467, 1
  %3469 = icmp ult i32 %3467, 1
  %3470 = zext i1 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3470, i8* %3471, align 1
  %3472 = and i32 %3468, 255
  %3473 = call i32 @llvm.ctpop.i32(i32 %3472)
  %3474 = trunc i32 %3473 to i8
  %3475 = and i8 %3474, 1
  %3476 = xor i8 %3475, 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3476, i8* %3477, align 1
  %3478 = xor i32 %3467, 1
  %3479 = xor i32 %3478, %3468
  %3480 = lshr i32 %3479, 4
  %3481 = trunc i32 %3480 to i8
  %3482 = and i8 %3481, 1
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3482, i8* %3483, align 1
  %3484 = icmp eq i32 %3468, 0
  %3485 = zext i1 %3484 to i8
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3485, i8* %3486, align 1
  %3487 = lshr i32 %3468, 31
  %3488 = trunc i32 %3487 to i8
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3488, i8* %3489, align 1
  %3490 = lshr i32 %3467, 31
  %3491 = xor i32 %3487, %3490
  %3492 = add i32 %3491, %3490
  %3493 = icmp eq i32 %3492, 2
  %3494 = zext i1 %3493 to i8
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3494, i8* %3495, align 1
  store %struct.Memory* %loadMem_409d31, %struct.Memory** %MEMORY
  %loadMem_409d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %PC.i624
  %3500 = add i64 %3499, 13
  %3501 = load i64, i64* %PC.i624
  %3502 = add i64 %3501, 6
  %3503 = load i64, i64* %PC.i624
  %3504 = add i64 %3503, 6
  store i64 %3504, i64* %PC.i624
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3506 = load i8, i8* %3505, align 1
  %3507 = icmp ne i8 %3506, 0
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3509 = load i8, i8* %3508, align 1
  %3510 = icmp ne i8 %3509, 0
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3512 = load i8, i8* %3511, align 1
  %3513 = icmp ne i8 %3512, 0
  %3514 = xor i1 %3510, %3513
  %3515 = or i1 %3507, %3514
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %BRANCH_TAKEN, align 1
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3518 = select i1 %3515, i64 %3500, i64 %3502
  store i64 %3518, i64* %3517, align 8
  store %struct.Memory* %loadMem_409d35, %struct.Memory** %MEMORY
  %loadBr_409d35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d35 = icmp eq i8 %loadBr_409d35, 1
  br i1 %cmpBr_409d35, label %block_.L_409d42, label %block_.L_409d3b

block_.L_409d3b:                                  ; preds = %block_409d11, %block_.L_409ce7
  %loadMem_409d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 15
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %RBP.i623
  %3526 = sub i64 %3525, 24
  %3527 = load i64, i64* %PC.i622
  %3528 = add i64 %3527, 7
  store i64 %3528, i64* %PC.i622
  %3529 = inttoptr i64 %3526 to i32*
  store i32 1, i32* %3529
  store %struct.Memory* %loadMem_409d3b, %struct.Memory** %MEMORY
  br label %block_.L_409d42

block_.L_409d42:                                  ; preds = %block_.L_409d3b, %block_409d11, %block_409cfc
  %loadMem_409d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3532 to i64*
  %3533 = load i64, i64* %PC.i621
  %3534 = add i64 %3533, 5
  %3535 = load i64, i64* %PC.i621
  %3536 = add i64 %3535, 5
  store i64 %3536, i64* %PC.i621
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3534, i64* %3537, align 8
  store %struct.Memory* %loadMem_409d42, %struct.Memory** %MEMORY
  br label %block_.L_409d47

block_.L_409d47:                                  ; preds = %block_.L_409d42, %block_.L_409cdb
  %loadMem_409d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 33
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %3540 to i64*
  %3541 = load i64, i64* %PC.i620
  %3542 = add i64 %3541, 5
  %3543 = load i64, i64* %PC.i620
  %3544 = add i64 %3543, 5
  store i64 %3544, i64* %PC.i620
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3542, i64* %3545, align 8
  store %struct.Memory* %loadMem_409d47, %struct.Memory** %MEMORY
  br label %block_.L_409d4c

block_.L_409d4c:                                  ; preds = %block_.L_409d47, %block_.L_409c7b
  %loadMem_409d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %PC.i619
  %3550 = add i64 %3549, 5
  %3551 = load i64, i64* %PC.i619
  %3552 = add i64 %3551, 5
  store i64 %3552, i64* %PC.i619
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3550, i64* %3553, align 8
  store %struct.Memory* %loadMem_409d4c, %struct.Memory** %MEMORY
  br label %block_.L_409d51

block_.L_409d51:                                  ; preds = %block_.L_409d4c, %block_.L_409c1b
  %loadMem_409d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 33
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %PC.i618
  %3558 = add i64 %3557, 12
  %3559 = load i64, i64* %PC.i618
  %3560 = add i64 %3559, 5
  store i64 %3560, i64* %PC.i618
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3558, i64* %3561, align 8
  store %struct.Memory* %loadMem_409d51, %struct.Memory** %MEMORY
  br label %block_.L_409d5d

block_.L_409d56:                                  ; preds = %block_.L_409bbd
  %loadMem_409d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 15
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RBP.i617
  %3569 = sub i64 %3568, 24
  %3570 = load i64, i64* %PC.i616
  %3571 = add i64 %3570, 7
  store i64 %3571, i64* %PC.i616
  %3572 = inttoptr i64 %3569 to i32*
  store i32 1, i32* %3572
  store %struct.Memory* %loadMem_409d56, %struct.Memory** %MEMORY
  br label %block_.L_409d5d

block_.L_409d5d:                                  ; preds = %block_.L_409d56, %block_.L_409d51
  %loadMem_409d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 15
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %RBP.i615
  %3580 = sub i64 %3579, 24
  %3581 = load i64, i64* %PC.i614
  %3582 = add i64 %3581, 4
  store i64 %3582, i64* %PC.i614
  %3583 = inttoptr i64 %3580 to i32*
  %3584 = load i32, i32* %3583
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3585, align 1
  %3586 = and i32 %3584, 255
  %3587 = call i32 @llvm.ctpop.i32(i32 %3586)
  %3588 = trunc i32 %3587 to i8
  %3589 = and i8 %3588, 1
  %3590 = xor i8 %3589, 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3590, i8* %3591, align 1
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3592, align 1
  %3593 = icmp eq i32 %3584, 0
  %3594 = zext i1 %3593 to i8
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3594, i8* %3595, align 1
  %3596 = lshr i32 %3584, 31
  %3597 = trunc i32 %3596 to i8
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3597, i8* %3598, align 1
  %3599 = lshr i32 %3584, 31
  %3600 = xor i32 %3596, %3599
  %3601 = add i32 %3600, %3599
  %3602 = icmp eq i32 %3601, 2
  %3603 = zext i1 %3602 to i8
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3603, i8* %3604, align 1
  store %struct.Memory* %loadMem_409d5d, %struct.Memory** %MEMORY
  %loadMem_409d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 33
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3607 to i64*
  %3608 = load i64, i64* %PC.i613
  %3609 = add i64 %3608, 32
  %3610 = load i64, i64* %PC.i613
  %3611 = add i64 %3610, 6
  %3612 = load i64, i64* %PC.i613
  %3613 = add i64 %3612, 6
  store i64 %3613, i64* %PC.i613
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3615 = load i8, i8* %3614, align 1
  %3616 = icmp eq i8 %3615, 0
  %3617 = zext i1 %3616 to i8
  store i8 %3617, i8* %BRANCH_TAKEN, align 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3619 = select i1 %3616, i64 %3609, i64 %3611
  store i64 %3619, i64* %3618, align 8
  store %struct.Memory* %loadMem_409d61, %struct.Memory** %MEMORY
  %loadBr_409d61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d61 = icmp eq i8 %loadBr_409d61, 1
  br i1 %cmpBr_409d61, label %block_.L_409d81, label %block_409d67

block_409d67:                                     ; preds = %block_.L_409d5d
  %loadMem_409d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 15
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %3625 to i64*
  %3626 = load i64, i64* %RBP.i612
  %3627 = sub i64 %3626, 16
  %3628 = load i64, i64* %PC.i611
  %3629 = add i64 %3628, 4
  store i64 %3629, i64* %PC.i611
  %3630 = inttoptr i64 %3627 to i32*
  %3631 = load i32, i32* %3630
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3632, align 1
  %3633 = and i32 %3631, 255
  %3634 = call i32 @llvm.ctpop.i32(i32 %3633)
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  %3637 = xor i8 %3636, 1
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3637, i8* %3638, align 1
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3639, align 1
  %3640 = icmp eq i32 %3631, 0
  %3641 = zext i1 %3640 to i8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3641, i8* %3642, align 1
  %3643 = lshr i32 %3631, 31
  %3644 = trunc i32 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3644, i8* %3645, align 1
  %3646 = lshr i32 %3631, 31
  %3647 = xor i32 %3643, %3646
  %3648 = add i32 %3647, %3646
  %3649 = icmp eq i32 %3648, 2
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3650, i8* %3651, align 1
  store %struct.Memory* %loadMem_409d67, %struct.Memory** %MEMORY
  %loadMem_409d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %PC.i610
  %3656 = add i64 %3655, 22
  %3657 = load i64, i64* %PC.i610
  %3658 = add i64 %3657, 6
  %3659 = load i64, i64* %PC.i610
  %3660 = add i64 %3659, 6
  store i64 %3660, i64* %PC.i610
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3662 = load i8, i8* %3661, align 1
  %3663 = icmp eq i8 %3662, 0
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %BRANCH_TAKEN, align 1
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3666 = select i1 %3663, i64 %3656, i64 %3658
  store i64 %3666, i64* %3665, align 8
  store %struct.Memory* %loadMem_409d6b, %struct.Memory** %MEMORY
  %loadBr_409d6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d6b = icmp eq i8 %loadBr_409d6b, 1
  br i1 %cmpBr_409d6b, label %block_.L_409d81, label %block_409d71

block_409d71:                                     ; preds = %block_409d67
  %loadMem_409d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 11
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RDI.i608 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RBP.i609
  %3677 = sub i64 %3676, 4
  %3678 = load i64, i64* %PC.i607
  %3679 = add i64 %3678, 3
  store i64 %3679, i64* %PC.i607
  %3680 = inttoptr i64 %3677 to i32*
  %3681 = load i32, i32* %3680
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %RDI.i608, align 8
  store %struct.Memory* %loadMem_409d71, %struct.Memory** %MEMORY
  %loadMem_409d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 9
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RSI.i605 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 15
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %3691 to i64*
  %3692 = load i64, i64* %RBP.i606
  %3693 = sub i64 %3692, 8
  %3694 = load i64, i64* %PC.i604
  %3695 = add i64 %3694, 3
  store i64 %3695, i64* %PC.i604
  %3696 = inttoptr i64 %3693 to i32*
  %3697 = load i32, i32* %3696
  %3698 = zext i32 %3697 to i64
  store i64 %3698, i64* %RSI.i605, align 8
  store %struct.Memory* %loadMem_409d74, %struct.Memory** %MEMORY
  %loadMem1_409d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 33
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %PC.i603
  %3703 = add i64 %3702, 2153
  %3704 = load i64, i64* %PC.i603
  %3705 = add i64 %3704, 5
  %3706 = load i64, i64* %PC.i603
  %3707 = add i64 %3706, 5
  store i64 %3707, i64* %PC.i603
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3709 = load i64, i64* %3708, align 8
  %3710 = add i64 %3709, -8
  %3711 = inttoptr i64 %3710 to i64*
  store i64 %3705, i64* %3711
  store i64 %3710, i64* %3708, align 8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3703, i64* %3712, align 8
  store %struct.Memory* %loadMem1_409d77, %struct.Memory** %MEMORY
  %loadMem2_409d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409d77 = load i64, i64* %3
  %call2_409d77 = call %struct.Memory* @sub_40a5e0.do_commit_suicide(%struct.State* %0, i64 %loadPC_409d77, %struct.Memory* %loadMem2_409d77)
  store %struct.Memory* %call2_409d77, %struct.Memory** %MEMORY
  %loadMem_409d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3715 to i64*
  %3716 = load i64, i64* %PC.i602
  %3717 = add i64 %3716, 1487
  %3718 = load i64, i64* %PC.i602
  %3719 = add i64 %3718, 5
  store i64 %3719, i64* %PC.i602
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3717, i64* %3720, align 8
  store %struct.Memory* %loadMem_409d7c, %struct.Memory** %MEMORY
  br label %block_.L_40a34b

block_.L_409d81:                                  ; preds = %block_409d67, %block_.L_409d5d
  %loadMem_409d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 33
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3723 to i64*
  %3724 = load i64, i64* %PC.i601
  %3725 = add i64 %3724, 5
  %3726 = load i64, i64* %PC.i601
  %3727 = add i64 %3726, 5
  store i64 %3727, i64* %PC.i601
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3725, i64* %3728, align 8
  store %struct.Memory* %loadMem_409d81, %struct.Memory** %MEMORY
  br label %block_.L_409d86

block_.L_409d86:                                  ; preds = %block_.L_409d81
  %loadMem_409d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 11
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RDI.i600 = bitcast %union.anon* %3734 to i64*
  %3735 = load i64, i64* %PC.i599
  %3736 = add i64 %3735, 10
  store i64 %3736, i64* %PC.i599
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI.i600, align 8
  store %struct.Memory* %loadMem_409d86, %struct.Memory** %MEMORY
  %loadMem_409d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 1
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %PC.i597
  %3744 = add i64 %3743, 10
  store i64 %3744, i64* %PC.i597
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RAX.i598, align 8
  store %struct.Memory* %loadMem_409d90, %struct.Memory** %MEMORY
  %loadMem_409d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 5
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 15
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RBP.i596
  %3755 = sub i64 %3754, 4
  %3756 = load i64, i64* %PC.i594
  %3757 = add i64 %3756, 4
  store i64 %3757, i64* %PC.i594
  %3758 = inttoptr i64 %3755 to i32*
  %3759 = load i32, i32* %3758
  %3760 = sext i32 %3759 to i64
  store i64 %3760, i64* %RCX.i595, align 8
  store %struct.Memory* %loadMem_409d9a, %struct.Memory** %MEMORY
  %loadMem_409d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 33
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3763 to i64*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 1
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %3766 to i64*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 5
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %RCX.i593 = bitcast %union.anon* %3769 to i64*
  %3770 = load i64, i64* %RAX.i592
  %3771 = load i64, i64* %RCX.i593
  %3772 = load i64, i64* %PC.i591
  %3773 = add i64 %3772, 3
  store i64 %3773, i64* %PC.i591
  %3774 = add i64 %3771, %3770
  store i64 %3774, i64* %RAX.i592, align 8
  %3775 = icmp ult i64 %3774, %3770
  %3776 = icmp ult i64 %3774, %3771
  %3777 = or i1 %3775, %3776
  %3778 = zext i1 %3777 to i8
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3778, i8* %3779, align 1
  %3780 = trunc i64 %3774 to i32
  %3781 = and i32 %3780, 255
  %3782 = call i32 @llvm.ctpop.i32(i32 %3781)
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  %3785 = xor i8 %3784, 1
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3785, i8* %3786, align 1
  %3787 = xor i64 %3771, %3770
  %3788 = xor i64 %3787, %3774
  %3789 = lshr i64 %3788, 4
  %3790 = trunc i64 %3789 to i8
  %3791 = and i8 %3790, 1
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3791, i8* %3792, align 1
  %3793 = icmp eq i64 %3774, 0
  %3794 = zext i1 %3793 to i8
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3794, i8* %3795, align 1
  %3796 = lshr i64 %3774, 63
  %3797 = trunc i64 %3796 to i8
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3797, i8* %3798, align 1
  %3799 = lshr i64 %3770, 63
  %3800 = lshr i64 %3771, 63
  %3801 = xor i64 %3796, %3799
  %3802 = xor i64 %3796, %3800
  %3803 = add i64 %3801, %3802
  %3804 = icmp eq i64 %3803, 2
  %3805 = zext i1 %3804 to i8
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3805, i8* %3806, align 1
  store %struct.Memory* %loadMem_409d9e, %struct.Memory** %MEMORY
  %loadMem_409da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 33
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3809 to i64*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 5
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %3812 to i64*
  %3813 = load i64, i64* %PC.i589
  %3814 = add i64 %3813, 8
  store i64 %3814, i64* %PC.i589
  %3815 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*)
  store i64 %3815, i64* %RCX.i590, align 8
  store %struct.Memory* %loadMem_409da1, %struct.Memory** %MEMORY
  %loadMem_409da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 1
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 5
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %RCX.i588
  %3826 = load i64, i64* %RAX.i587
  %3827 = load i64, i64* %PC.i586
  %3828 = add i64 %3827, 3
  store i64 %3828, i64* %PC.i586
  %3829 = inttoptr i64 %3825 to i64*
  store i64 %3826, i64* %3829
  store %struct.Memory* %loadMem_409da9, %struct.Memory** %MEMORY
  %loadMem_409dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 1
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 15
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %RBP.i585
  %3840 = sub i64 %3839, 4
  %3841 = load i64, i64* %PC.i583
  %3842 = add i64 %3841, 4
  store i64 %3842, i64* %PC.i583
  %3843 = inttoptr i64 %3840 to i32*
  %3844 = load i32, i32* %3843
  %3845 = sext i32 %3844 to i64
  store i64 %3845, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_409dac, %struct.Memory** %MEMORY
  %loadMem_409db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 1
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 7
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RDX.i582 = bitcast %union.anon* %3854 to i64*
  %3855 = load i64, i64* %RAX.i581
  %3856 = add i64 %3855, 12099168
  %3857 = load i64, i64* %PC.i580
  %3858 = add i64 %3857, 8
  store i64 %3858, i64* %PC.i580
  %3859 = inttoptr i64 %3856 to i8*
  %3860 = load i8, i8* %3859
  %3861 = zext i8 %3860 to i64
  store i64 %3861, i64* %RDX.i582, align 8
  store %struct.Memory* %loadMem_409db0, %struct.Memory** %MEMORY
  %loadMem_409db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 1
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %3867 to i64*
  %3868 = load i64, i64* %PC.i578
  %3869 = add i64 %3868, 8
  store i64 %3869, i64* %PC.i578
  %3870 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*)
  store i64 %3870, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_409db8, %struct.Memory** %MEMORY
  %loadMem_409dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 33
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 1
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3876 to i64*
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 5
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %3879 to i64*
  %3880 = load i64, i64* %RAX.i576
  %3881 = load i64, i64* %PC.i575
  %3882 = add i64 %3881, 3
  store i64 %3882, i64* %PC.i575
  store i64 %3880, i64* %RCX.i577, align 8
  store %struct.Memory* %loadMem_409dc0, %struct.Memory** %MEMORY
  %loadMem_409dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 5
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RCX.i574
  %3890 = load i64, i64* %PC.i573
  %3891 = add i64 %3890, 4
  store i64 %3891, i64* %PC.i573
  %3892 = add i64 16, %3889
  store i64 %3892, i64* %RCX.i574, align 8
  %3893 = icmp ult i64 %3892, %3889
  %3894 = icmp ult i64 %3892, 16
  %3895 = or i1 %3893, %3894
  %3896 = zext i1 %3895 to i8
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3896, i8* %3897, align 1
  %3898 = trunc i64 %3892 to i32
  %3899 = and i32 %3898, 255
  %3900 = call i32 @llvm.ctpop.i32(i32 %3899)
  %3901 = trunc i32 %3900 to i8
  %3902 = and i8 %3901, 1
  %3903 = xor i8 %3902, 1
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3903, i8* %3904, align 1
  %3905 = xor i64 16, %3889
  %3906 = xor i64 %3905, %3892
  %3907 = lshr i64 %3906, 4
  %3908 = trunc i64 %3907 to i8
  %3909 = and i8 %3908, 1
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3909, i8* %3910, align 1
  %3911 = icmp eq i64 %3892, 0
  %3912 = zext i1 %3911 to i8
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3912, i8* %3913, align 1
  %3914 = lshr i64 %3892, 63
  %3915 = trunc i64 %3914 to i8
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3915, i8* %3916, align 1
  %3917 = lshr i64 %3889, 63
  %3918 = xor i64 %3914, %3917
  %3919 = add i64 %3918, %3914
  %3920 = icmp eq i64 %3919, 2
  %3921 = zext i1 %3920 to i8
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3921, i8* %3922, align 1
  store %struct.Memory* %loadMem_409dc3, %struct.Memory** %MEMORY
  %loadMem_409dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 5
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RCX.i572 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %RCX.i572
  %3930 = load i64, i64* %PC.i571
  %3931 = add i64 %3930, 8
  store i64 %3931, i64* %PC.i571
  store i64 %3929, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*)
  store %struct.Memory* %loadMem_409dc7, %struct.Memory** %MEMORY
  %loadMem_409dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 7
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %EDX.i569 = bitcast %union.anon* %3937 to i32*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %RAX.i570
  %3942 = add i64 %3941, 8
  %3943 = load i32, i32* %EDX.i569
  %3944 = zext i32 %3943 to i64
  %3945 = load i64, i64* %PC.i568
  %3946 = add i64 %3945, 3
  store i64 %3946, i64* %PC.i568
  %3947 = inttoptr i64 %3942 to i32*
  store i32 %3943, i32* %3947
  store %struct.Memory* %loadMem_409dcf, %struct.Memory** %MEMORY
  %loadMem_409dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 7
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 15
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %3956 to i64*
  %3957 = load i64, i64* %RBP.i567
  %3958 = sub i64 %3957, 8
  %3959 = load i64, i64* %PC.i565
  %3960 = add i64 %3959, 3
  store i64 %3960, i64* %PC.i565
  %3961 = inttoptr i64 %3958 to i32*
  %3962 = load i32, i32* %3961
  %3963 = zext i32 %3962 to i64
  store i64 %3963, i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_409dd2, %struct.Memory** %MEMORY
  %loadMem_409dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 7
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %3970 = bitcast %union.anon* %3969 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3970, i32 0, i32 0
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 9
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %3974 = bitcast %union.anon* %3973 to %struct.anon.2*
  %SIL.i564 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3974, i32 0, i32 0
  %3975 = load i8, i8* %DL.i
  %3976 = zext i8 %3975 to i64
  %3977 = load i64, i64* %PC.i563
  %3978 = add i64 %3977, 3
  store i64 %3978, i64* %PC.i563
  store i8 %3975, i8* %SIL.i564, align 1
  store %struct.Memory* %loadMem_409dd5, %struct.Memory** %MEMORY
  %loadMem_409dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 1
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 15
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %3987 to i64*
  %3988 = load i64, i64* %RBP.i562
  %3989 = sub i64 %3988, 4
  %3990 = load i64, i64* %PC.i560
  %3991 = add i64 %3990, 4
  store i64 %3991, i64* %PC.i560
  %3992 = inttoptr i64 %3989 to i32*
  %3993 = load i32, i32* %3992
  %3994 = sext i32 %3993 to i64
  store i64 %3994, i64* %RAX.i561, align 8
  store %struct.Memory* %loadMem_409dd8, %struct.Memory** %MEMORY
  %loadMem_409ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 33
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3997 to i64*
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 9
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %4001 = bitcast %union.anon* %4000 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4001, i32 0, i32 0
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 1
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %RAX.i559
  %4006 = add i64 %4005, 12099168
  %4007 = load i8, i8* %SIL.i
  %4008 = zext i8 %4007 to i64
  %4009 = load i64, i64* %PC.i558
  %4010 = add i64 %4009, 8
  store i64 %4010, i64* %PC.i558
  %4011 = inttoptr i64 %4006 to i8*
  store i8 %4007, i8* %4011
  store %struct.Memory* %loadMem_409ddc, %struct.Memory** %MEMORY
  %loadMem_409de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 9
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RSI.i556 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 15
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %4020 to i64*
  %4021 = load i64, i64* %RBP.i557
  %4022 = sub i64 %4021, 4
  %4023 = load i64, i64* %PC.i555
  %4024 = add i64 %4023, 3
  store i64 %4024, i64* %PC.i555
  %4025 = inttoptr i64 %4022 to i32*
  %4026 = load i32, i32* %4025
  %4027 = zext i32 %4026 to i64
  store i64 %4027, i64* %RSI.i556, align 8
  store %struct.Memory* %loadMem_409de4, %struct.Memory** %MEMORY
  %loadMem_409de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 33
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 7
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RDX.i553 = bitcast %union.anon* %4033 to i64*
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 15
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %4036 to i64*
  %4037 = load i64, i64* %RBP.i554
  %4038 = sub i64 %4037, 8
  %4039 = load i64, i64* %PC.i552
  %4040 = add i64 %4039, 3
  store i64 %4040, i64* %PC.i552
  %4041 = inttoptr i64 %4038 to i32*
  %4042 = load i32, i32* %4041
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %RDX.i553, align 8
  store %struct.Memory* %loadMem_409de7, %struct.Memory** %MEMORY
  %loadMem1_409dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %4046 to i64*
  %4047 = load i64, i64* %PC.i551
  %4048 = add i64 %4047, 126342
  %4049 = load i64, i64* %PC.i551
  %4050 = add i64 %4049, 5
  %4051 = load i64, i64* %PC.i551
  %4052 = add i64 %4051, 5
  store i64 %4052, i64* %PC.i551
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4054 = load i64, i64* %4053, align 8
  %4055 = add i64 %4054, -8
  %4056 = inttoptr i64 %4055 to i64*
  store i64 %4050, i64* %4056
  store i64 %4055, i64* %4053, align 8
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4048, i64* %4057, align 8
  store %struct.Memory* %loadMem1_409dea, %struct.Memory** %MEMORY
  %loadMem2_409dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409dea = load i64, i64* %3
  %call2_409dea = call %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* %0, i64 %loadPC_409dea, %struct.Memory* %loadMem2_409dea)
  store %struct.Memory* %call2_409dea, %struct.Memory** %MEMORY
  %loadMem_409def = load %struct.Memory*, %struct.Memory** %MEMORY
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 33
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 1
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %4063 to i64*
  %4064 = load i64, i64* %PC.i549
  %4065 = add i64 %4064, 7
  store i64 %4065, i64* %PC.i549
  %4066 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %4067 = zext i32 %4066 to i64
  store i64 %4067, i64* %RAX.i550, align 8
  store %struct.Memory* %loadMem_409def, %struct.Memory** %MEMORY
  %loadMem_409df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 33
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 1
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %RAX.i548
  %4075 = load i64, i64* %PC.i547
  %4076 = add i64 %4075, 3
  store i64 %4076, i64* %PC.i547
  %4077 = trunc i64 %4074 to i32
  %4078 = add i32 1, %4077
  %4079 = zext i32 %4078 to i64
  store i64 %4079, i64* %RAX.i548, align 8
  %4080 = icmp ult i32 %4078, %4077
  %4081 = icmp ult i32 %4078, 1
  %4082 = or i1 %4080, %4081
  %4083 = zext i1 %4082 to i8
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4083, i8* %4084, align 1
  %4085 = and i32 %4078, 255
  %4086 = call i32 @llvm.ctpop.i32(i32 %4085)
  %4087 = trunc i32 %4086 to i8
  %4088 = and i8 %4087, 1
  %4089 = xor i8 %4088, 1
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4089, i8* %4090, align 1
  %4091 = xor i64 1, %4074
  %4092 = trunc i64 %4091 to i32
  %4093 = xor i32 %4092, %4078
  %4094 = lshr i32 %4093, 4
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4096, i8* %4097, align 1
  %4098 = icmp eq i32 %4078, 0
  %4099 = zext i1 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4099, i8* %4100, align 1
  %4101 = lshr i32 %4078, 31
  %4102 = trunc i32 %4101 to i8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4102, i8* %4103, align 1
  %4104 = lshr i32 %4077, 31
  %4105 = xor i32 %4101, %4104
  %4106 = add i32 %4105, %4101
  %4107 = icmp eq i32 %4106, 2
  %4108 = zext i1 %4107 to i8
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4108, i8* %4109, align 1
  store %struct.Memory* %loadMem_409df6, %struct.Memory** %MEMORY
  %loadMem_409df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %4112 to i64*
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 1
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %EAX.i546 = bitcast %union.anon* %4115 to i32*
  %4116 = load i32, i32* %EAX.i546
  %4117 = zext i32 %4116 to i64
  %4118 = load i64, i64* %PC.i545
  %4119 = add i64 %4118, 7
  store i64 %4119, i64* %PC.i545
  store i32 %4116, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  store %struct.Memory* %loadMem_409df9, %struct.Memory** %MEMORY
  %loadMem_409e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 33
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 5
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RCX.i543 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 15
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %RBP.i544
  %4130 = sub i64 %4129, 32
  %4131 = load i64, i64* %PC.i542
  %4132 = add i64 %4131, 4
  store i64 %4132, i64* %PC.i542
  %4133 = inttoptr i64 %4130 to i32*
  %4134 = load i32, i32* %4133
  %4135 = sext i32 %4134 to i64
  store i64 %4135, i64* %RCX.i543, align 8
  store %struct.Memory* %loadMem_409e00, %struct.Memory** %MEMORY
  %loadMem_409e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 33
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 1
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 5
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %RCX.i541
  %4146 = add i64 %4145, 12099168
  %4147 = load i64, i64* %PC.i539
  %4148 = add i64 %4147, 8
  store i64 %4148, i64* %PC.i539
  %4149 = inttoptr i64 %4146 to i8*
  %4150 = load i8, i8* %4149
  %4151 = zext i8 %4150 to i64
  store i64 %4151, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_409e04, %struct.Memory** %MEMORY
  %loadMem_409e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 33
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 1
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %EAX.i537 = bitcast %union.anon* %4157 to i32*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 15
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %4160 to i64*
  %4161 = load i32, i32* %EAX.i537
  %4162 = zext i32 %4161 to i64
  %4163 = load i64, i64* %RBP.i538
  %4164 = sub i64 %4163, 8
  %4165 = load i64, i64* %PC.i536
  %4166 = add i64 %4165, 3
  store i64 %4166, i64* %PC.i536
  %4167 = inttoptr i64 %4164 to i32*
  %4168 = load i32, i32* %4167
  %4169 = sub i32 %4161, %4168
  %4170 = icmp ult i32 %4161, %4168
  %4171 = zext i1 %4170 to i8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4171, i8* %4172, align 1
  %4173 = and i32 %4169, 255
  %4174 = call i32 @llvm.ctpop.i32(i32 %4173)
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  %4177 = xor i8 %4176, 1
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4177, i8* %4178, align 1
  %4179 = xor i32 %4168, %4161
  %4180 = xor i32 %4179, %4169
  %4181 = lshr i32 %4180, 4
  %4182 = trunc i32 %4181 to i8
  %4183 = and i8 %4182, 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4183, i8* %4184, align 1
  %4185 = icmp eq i32 %4169, 0
  %4186 = zext i1 %4185 to i8
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4186, i8* %4187, align 1
  %4188 = lshr i32 %4169, 31
  %4189 = trunc i32 %4188 to i8
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4189, i8* %4190, align 1
  %4191 = lshr i32 %4161, 31
  %4192 = lshr i32 %4168, 31
  %4193 = xor i32 %4192, %4191
  %4194 = xor i32 %4188, %4191
  %4195 = add i32 %4194, %4193
  %4196 = icmp eq i32 %4195, 2
  %4197 = zext i1 %4196 to i8
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4197, i8* %4198, align 1
  store %struct.Memory* %loadMem_409e0c, %struct.Memory** %MEMORY
  %loadMem_409e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %4201 to i64*
  %4202 = load i64, i64* %PC.i535
  %4203 = add i64 %4202, 130
  %4204 = load i64, i64* %PC.i535
  %4205 = add i64 %4204, 6
  %4206 = load i64, i64* %PC.i535
  %4207 = add i64 %4206, 6
  store i64 %4207, i64* %PC.i535
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4209 = load i8, i8* %4208, align 1
  %4210 = icmp eq i8 %4209, 0
  %4211 = zext i1 %4210 to i8
  store i8 %4211, i8* %BRANCH_TAKEN, align 1
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4213 = select i1 %4210, i64 %4203, i64 %4205
  store i64 %4213, i64* %4212, align 8
  store %struct.Memory* %loadMem_409e0f, %struct.Memory** %MEMORY
  %loadBr_409e0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409e0f = icmp eq i8 %loadBr_409e0f, 1
  br i1 %cmpBr_409e0f, label %block_.L_409e91, label %block_409e15

block_409e15:                                     ; preds = %block_.L_409d86
  %loadMem_409e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 1
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %PC.i533
  %4221 = add i64 %4220, 10
  store i64 %4221, i64* %PC.i533
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_409e15, %struct.Memory** %MEMORY
  %loadMem_409e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 33
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 5
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %4227 to i64*
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 15
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %4230 to i64*
  %4231 = load i64, i64* %RBP.i532
  %4232 = sub i64 %4231, 32
  %4233 = load i64, i64* %PC.i530
  %4234 = add i64 %4233, 4
  store i64 %4234, i64* %PC.i530
  %4235 = inttoptr i64 %4232 to i32*
  %4236 = load i32, i32* %4235
  %4237 = sext i32 %4236 to i64
  store i64 %4237, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_409e1f, %struct.Memory** %MEMORY
  %loadMem_409e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 5
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %RCX.i529
  %4245 = mul i64 %4244, 4
  %4246 = add i64 %4245, 11187184
  %4247 = load i64, i64* %PC.i528
  %4248 = add i64 %4247, 8
  store i64 %4248, i64* %PC.i528
  %4249 = inttoptr i64 %4246 to i32*
  %4250 = load i32, i32* %4249
  %4251 = sext i32 %4250 to i64
  store i64 %4251, i64* %RCX.i529, align 8
  store %struct.Memory* %loadMem_409e23, %struct.Memory** %MEMORY
  %loadMem_409e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 33
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 5
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %4257 to i64*
  %4258 = load i64, i64* %RCX.i527
  %4259 = load i64, i64* %PC.i526
  %4260 = add i64 %4259, 7
  store i64 %4260, i64* %PC.i526
  %4261 = sext i64 %4258 to i128
  %4262 = and i128 %4261, -18446744073709551616
  %4263 = zext i64 %4258 to i128
  %4264 = or i128 %4262, %4263
  %4265 = mul i128 744, %4264
  %4266 = trunc i128 %4265 to i64
  store i64 %4266, i64* %RCX.i527, align 8
  %4267 = sext i64 %4266 to i128
  %4268 = icmp ne i128 %4267, %4265
  %4269 = zext i1 %4268 to i8
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4269, i8* %4270, align 1
  %4271 = trunc i128 %4265 to i32
  %4272 = and i32 %4271, 255
  %4273 = call i32 @llvm.ctpop.i32(i32 %4272)
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  %4276 = xor i8 %4275, 1
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4276, i8* %4277, align 1
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4278, align 1
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4279, align 1
  %4280 = lshr i64 %4266, 63
  %4281 = trunc i64 %4280 to i8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4281, i8* %4282, align 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4269, i8* %4283, align 1
  store %struct.Memory* %loadMem_409e2b, %struct.Memory** %MEMORY
  %loadMem_409e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 1
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %4289 to i64*
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 5
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %4292 to i64*
  %4293 = load i64, i64* %RAX.i524
  %4294 = load i64, i64* %RCX.i525
  %4295 = load i64, i64* %PC.i523
  %4296 = add i64 %4295, 3
  store i64 %4296, i64* %PC.i523
  %4297 = add i64 %4294, %4293
  store i64 %4297, i64* %RAX.i524, align 8
  %4298 = icmp ult i64 %4297, %4293
  %4299 = icmp ult i64 %4297, %4294
  %4300 = or i1 %4298, %4299
  %4301 = zext i1 %4300 to i8
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4301, i8* %4302, align 1
  %4303 = trunc i64 %4297 to i32
  %4304 = and i32 %4303, 255
  %4305 = call i32 @llvm.ctpop.i32(i32 %4304)
  %4306 = trunc i32 %4305 to i8
  %4307 = and i8 %4306, 1
  %4308 = xor i8 %4307, 1
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4308, i8* %4309, align 1
  %4310 = xor i64 %4294, %4293
  %4311 = xor i64 %4310, %4297
  %4312 = lshr i64 %4311, 4
  %4313 = trunc i64 %4312 to i8
  %4314 = and i8 %4313, 1
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4314, i8* %4315, align 1
  %4316 = icmp eq i64 %4297, 0
  %4317 = zext i1 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4317, i8* %4318, align 1
  %4319 = lshr i64 %4297, 63
  %4320 = trunc i64 %4319 to i8
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4320, i8* %4321, align 1
  %4322 = lshr i64 %4293, 63
  %4323 = lshr i64 %4294, 63
  %4324 = xor i64 %4319, %4322
  %4325 = xor i64 %4319, %4323
  %4326 = add i64 %4324, %4325
  %4327 = icmp eq i64 %4326, 2
  %4328 = zext i1 %4327 to i8
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4328, i8* %4329, align 1
  store %struct.Memory* %loadMem_409e32, %struct.Memory** %MEMORY
  %loadMem_409e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 1
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 7
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %RAX.i521
  %4340 = add i64 %4339, 740
  %4341 = load i64, i64* %PC.i520
  %4342 = add i64 %4341, 6
  store i64 %4342, i64* %PC.i520
  %4343 = inttoptr i64 %4340 to i32*
  %4344 = load i32, i32* %4343
  %4345 = zext i32 %4344 to i64
  store i64 %4345, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_409e35, %struct.Memory** %MEMORY
  %loadMem_409e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 33
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 7
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %EDX.i519 = bitcast %union.anon* %4351 to i32*
  %4352 = load i32, i32* %EDX.i519
  %4353 = zext i32 %4352 to i64
  %4354 = load i64, i64* %PC.i518
  %4355 = add i64 %4354, 7
  store i64 %4355, i64* %PC.i518
  %4356 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %4357 = sub i32 %4352, %4356
  %4358 = icmp ult i32 %4352, %4356
  %4359 = zext i1 %4358 to i8
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4359, i8* %4360, align 1
  %4361 = and i32 %4357, 255
  %4362 = call i32 @llvm.ctpop.i32(i32 %4361)
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  %4365 = xor i8 %4364, 1
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4365, i8* %4366, align 1
  %4367 = xor i32 %4356, %4352
  %4368 = xor i32 %4367, %4357
  %4369 = lshr i32 %4368, 4
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4371, i8* %4372, align 1
  %4373 = icmp eq i32 %4357, 0
  %4374 = zext i1 %4373 to i8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4374, i8* %4375, align 1
  %4376 = lshr i32 %4357, 31
  %4377 = trunc i32 %4376 to i8
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4377, i8* %4378, align 1
  %4379 = lshr i32 %4352, 31
  %4380 = lshr i32 %4356, 31
  %4381 = xor i32 %4380, %4379
  %4382 = xor i32 %4376, %4379
  %4383 = add i32 %4382, %4381
  %4384 = icmp eq i32 %4383, 2
  %4385 = zext i1 %4384 to i8
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4385, i8* %4386, align 1
  store %struct.Memory* %loadMem_409e3b, %struct.Memory** %MEMORY
  %loadMem_409e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 33
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4389 to i64*
  %4390 = load i64, i64* %PC.i517
  %4391 = add i64 %4390, 79
  %4392 = load i64, i64* %PC.i517
  %4393 = add i64 %4392, 6
  %4394 = load i64, i64* %PC.i517
  %4395 = add i64 %4394, 6
  store i64 %4395, i64* %PC.i517
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4397 = load i8, i8* %4396, align 1
  store i8 %4397, i8* %BRANCH_TAKEN, align 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4399 = icmp ne i8 %4397, 0
  %4400 = select i1 %4399, i64 %4391, i64 %4393
  store i64 %4400, i64* %4398, align 8
  store %struct.Memory* %loadMem_409e42, %struct.Memory** %MEMORY
  %loadBr_409e42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409e42 = icmp eq i8 %loadBr_409e42, 1
  br i1 %cmpBr_409e42, label %block_.L_409e91, label %block_409e48

block_409e48:                                     ; preds = %block_409e15
  %loadMem_409e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 1
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %4406 to i64*
  %4407 = load i64, i64* %PC.i515
  %4408 = add i64 %4407, 10
  store i64 %4408, i64* %PC.i515
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i516, align 8
  store %struct.Memory* %loadMem_409e48, %struct.Memory** %MEMORY
  %loadMem_409e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 5
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 15
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %RBP.i514
  %4419 = sub i64 %4418, 20
  %4420 = load i64, i64* %PC.i512
  %4421 = add i64 %4420, 3
  store i64 %4421, i64* %PC.i512
  %4422 = inttoptr i64 %4419 to i32*
  %4423 = load i32, i32* %4422
  %4424 = zext i32 %4423 to i64
  store i64 %4424, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_409e52, %struct.Memory** %MEMORY
  %loadMem_409e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 5
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %4430 to i64*
  %4431 = load i64, i64* %RCX.i511
  %4432 = load i64, i64* %PC.i510
  %4433 = add i64 %4432, 3
  store i64 %4433, i64* %PC.i510
  %4434 = trunc i64 %4431 to i32
  %4435 = add i32 1, %4434
  %4436 = zext i32 %4435 to i64
  store i64 %4436, i64* %RCX.i511, align 8
  %4437 = icmp ult i32 %4435, %4434
  %4438 = icmp ult i32 %4435, 1
  %4439 = or i1 %4437, %4438
  %4440 = zext i1 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4440, i8* %4441, align 1
  %4442 = and i32 %4435, 255
  %4443 = call i32 @llvm.ctpop.i32(i32 %4442)
  %4444 = trunc i32 %4443 to i8
  %4445 = and i8 %4444, 1
  %4446 = xor i8 %4445, 1
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4446, i8* %4447, align 1
  %4448 = xor i64 1, %4431
  %4449 = trunc i64 %4448 to i32
  %4450 = xor i32 %4449, %4435
  %4451 = lshr i32 %4450, 4
  %4452 = trunc i32 %4451 to i8
  %4453 = and i8 %4452, 1
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4453, i8* %4454, align 1
  %4455 = icmp eq i32 %4435, 0
  %4456 = zext i1 %4455 to i8
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4456, i8* %4457, align 1
  %4458 = lshr i32 %4435, 31
  %4459 = trunc i32 %4458 to i8
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4459, i8* %4460, align 1
  %4461 = lshr i32 %4434, 31
  %4462 = xor i32 %4458, %4461
  %4463 = add i32 %4462, %4458
  %4464 = icmp eq i32 %4463, 2
  %4465 = zext i1 %4464 to i8
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4465, i8* %4466, align 1
  store %struct.Memory* %loadMem_409e55, %struct.Memory** %MEMORY
  %loadMem_409e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 5
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %ECX.i508 = bitcast %union.anon* %4472 to i32*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 15
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %4475 to i64*
  %4476 = load i64, i64* %RBP.i509
  %4477 = sub i64 %4476, 20
  %4478 = load i32, i32* %ECX.i508
  %4479 = zext i32 %4478 to i64
  %4480 = load i64, i64* %PC.i507
  %4481 = add i64 %4480, 3
  store i64 %4481, i64* %PC.i507
  %4482 = inttoptr i64 %4477 to i32*
  store i32 %4478, i32* %4482
  store %struct.Memory* %loadMem_409e58, %struct.Memory** %MEMORY
  %loadMem_409e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 33
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %4485 to i64*
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 7
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %RDX.i505 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 15
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %RBP.i506
  %4493 = sub i64 %4492, 32
  %4494 = load i64, i64* %PC.i504
  %4495 = add i64 %4494, 4
  store i64 %4495, i64* %PC.i504
  %4496 = inttoptr i64 %4493 to i32*
  %4497 = load i32, i32* %4496
  %4498 = sext i32 %4497 to i64
  store i64 %4498, i64* %RDX.i505, align 8
  store %struct.Memory* %loadMem_409e5b, %struct.Memory** %MEMORY
  %loadMem_409e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 33
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 5
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %4504 to i64*
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 7
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %RDX.i503 = bitcast %union.anon* %4507 to i64*
  %4508 = load i64, i64* %RDX.i503
  %4509 = mul i64 %4508, 4
  %4510 = add i64 %4509, 11187184
  %4511 = load i64, i64* %PC.i501
  %4512 = add i64 %4511, 7
  store i64 %4512, i64* %PC.i501
  %4513 = inttoptr i64 %4510 to i32*
  %4514 = load i32, i32* %4513
  %4515 = zext i32 %4514 to i64
  store i64 %4515, i64* %RCX.i502, align 8
  store %struct.Memory* %loadMem_409e5f, %struct.Memory** %MEMORY
  %loadMem_409e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 33
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %4518 to i64*
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 5
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %ECX.i499 = bitcast %union.anon* %4521 to i32*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 15
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %4524 to i64*
  %4525 = load i64, i64* %RBP.i500
  %4526 = sub i64 %4525, 28
  %4527 = load i32, i32* %ECX.i499
  %4528 = zext i32 %4527 to i64
  %4529 = load i64, i64* %PC.i498
  %4530 = add i64 %4529, 3
  store i64 %4530, i64* %PC.i498
  %4531 = inttoptr i64 %4526 to i32*
  store i32 %4527, i32* %4531
  store %struct.Memory* %loadMem_409e66, %struct.Memory** %MEMORY
  %loadMem_409e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 33
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4534 to i64*
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 5
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %4537 to i64*
  %4538 = load i64, i64* %PC.i496
  %4539 = add i64 %4538, 7
  store i64 %4539, i64* %PC.i496
  %4540 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %4541 = zext i32 %4540 to i64
  store i64 %4541, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_409e69, %struct.Memory** %MEMORY
  %loadMem_409e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 33
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4544 to i64*
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 7
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %RDX.i494 = bitcast %union.anon* %4547 to i64*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 15
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %4550 to i64*
  %4551 = load i64, i64* %RBP.i495
  %4552 = sub i64 %4551, 32
  %4553 = load i64, i64* %PC.i493
  %4554 = add i64 %4553, 4
  store i64 %4554, i64* %PC.i493
  %4555 = inttoptr i64 %4552 to i32*
  %4556 = load i32, i32* %4555
  %4557 = sext i32 %4556 to i64
  store i64 %4557, i64* %RDX.i494, align 8
  store %struct.Memory* %loadMem_409e70, %struct.Memory** %MEMORY
  %loadMem_409e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 33
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4560 to i64*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 7
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %4563 to i64*
  %4564 = load i64, i64* %RDX.i492
  %4565 = mul i64 %4564, 4
  %4566 = add i64 %4565, 11187184
  %4567 = load i64, i64* %PC.i491
  %4568 = add i64 %4567, 8
  store i64 %4568, i64* %PC.i491
  %4569 = inttoptr i64 %4566 to i32*
  %4570 = load i32, i32* %4569
  %4571 = sext i32 %4570 to i64
  store i64 %4571, i64* %RDX.i492, align 8
  store %struct.Memory* %loadMem_409e74, %struct.Memory** %MEMORY
  %loadMem_409e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 7
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %RDX.i490 = bitcast %union.anon* %4577 to i64*
  %4578 = load i64, i64* %RDX.i490
  %4579 = load i64, i64* %PC.i489
  %4580 = add i64 %4579, 7
  store i64 %4580, i64* %PC.i489
  %4581 = sext i64 %4578 to i128
  %4582 = and i128 %4581, -18446744073709551616
  %4583 = zext i64 %4578 to i128
  %4584 = or i128 %4582, %4583
  %4585 = mul i128 744, %4584
  %4586 = trunc i128 %4585 to i64
  store i64 %4586, i64* %RDX.i490, align 8
  %4587 = sext i64 %4586 to i128
  %4588 = icmp ne i128 %4587, %4585
  %4589 = zext i1 %4588 to i8
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4589, i8* %4590, align 1
  %4591 = trunc i128 %4585 to i32
  %4592 = and i32 %4591, 255
  %4593 = call i32 @llvm.ctpop.i32(i32 %4592)
  %4594 = trunc i32 %4593 to i8
  %4595 = and i8 %4594, 1
  %4596 = xor i8 %4595, 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4596, i8* %4597, align 1
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4598, align 1
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4599, align 1
  %4600 = lshr i64 %4586, 63
  %4601 = trunc i64 %4600 to i8
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4601, i8* %4602, align 1
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4589, i8* %4603, align 1
  store %struct.Memory* %loadMem_409e7c, %struct.Memory** %MEMORY
  %loadMem_409e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 1
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 7
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RDX.i488 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RAX.i487
  %4614 = load i64, i64* %RDX.i488
  %4615 = load i64, i64* %PC.i486
  %4616 = add i64 %4615, 3
  store i64 %4616, i64* %PC.i486
  %4617 = add i64 %4614, %4613
  store i64 %4617, i64* %RAX.i487, align 8
  %4618 = icmp ult i64 %4617, %4613
  %4619 = icmp ult i64 %4617, %4614
  %4620 = or i1 %4618, %4619
  %4621 = zext i1 %4620 to i8
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4621, i8* %4622, align 1
  %4623 = trunc i64 %4617 to i32
  %4624 = and i32 %4623, 255
  %4625 = call i32 @llvm.ctpop.i32(i32 %4624)
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = xor i8 %4627, 1
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4628, i8* %4629, align 1
  %4630 = xor i64 %4614, %4613
  %4631 = xor i64 %4630, %4617
  %4632 = lshr i64 %4631, 4
  %4633 = trunc i64 %4632 to i8
  %4634 = and i8 %4633, 1
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4634, i8* %4635, align 1
  %4636 = icmp eq i64 %4617, 0
  %4637 = zext i1 %4636 to i8
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4637, i8* %4638, align 1
  %4639 = lshr i64 %4617, 63
  %4640 = trunc i64 %4639 to i8
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4640, i8* %4641, align 1
  %4642 = lshr i64 %4613, 63
  %4643 = lshr i64 %4614, 63
  %4644 = xor i64 %4639, %4642
  %4645 = xor i64 %4639, %4643
  %4646 = add i64 %4644, %4645
  %4647 = icmp eq i64 %4646, 2
  %4648 = zext i1 %4647 to i8
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4648, i8* %4649, align 1
  store %struct.Memory* %loadMem_409e83, %struct.Memory** %MEMORY
  %loadMem_409e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 33
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 5
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %ECX.i484 = bitcast %union.anon* %4655 to i32*
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 1
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %4658 to i64*
  %4659 = load i64, i64* %RAX.i485
  %4660 = add i64 %4659, 740
  %4661 = load i32, i32* %ECX.i484
  %4662 = zext i32 %4661 to i64
  %4663 = load i64, i64* %PC.i483
  %4664 = add i64 %4663, 6
  store i64 %4664, i64* %PC.i483
  %4665 = inttoptr i64 %4660 to i32*
  store i32 %4661, i32* %4665
  store %struct.Memory* %loadMem_409e86, %struct.Memory** %MEMORY
  %loadMem_409e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %PC.i482
  %4670 = add i64 %4669, 146
  %4671 = load i64, i64* %PC.i482
  %4672 = add i64 %4671, 5
  store i64 %4672, i64* %PC.i482
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4670, i64* %4673, align 8
  store %struct.Memory* %loadMem_409e8c, %struct.Memory** %MEMORY
  br label %block_.L_409f1e

block_.L_409e91:                                  ; preds = %block_409e15, %block_.L_409d86
  %loadMem_409e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 1
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 15
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %4682 to i64*
  %4683 = load i64, i64* %RBP.i481
  %4684 = sub i64 %4683, 32
  %4685 = load i64, i64* %PC.i479
  %4686 = add i64 %4685, 4
  store i64 %4686, i64* %PC.i479
  %4687 = inttoptr i64 %4684 to i32*
  %4688 = load i32, i32* %4687
  %4689 = sext i32 %4688 to i64
  store i64 %4689, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_409e91, %struct.Memory** %MEMORY
  %loadMem_409e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 1
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 5
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %RAX.i477
  %4700 = add i64 %4699, 12099168
  %4701 = load i64, i64* %PC.i476
  %4702 = add i64 %4701, 8
  store i64 %4702, i64* %PC.i476
  %4703 = inttoptr i64 %4700 to i8*
  %4704 = load i8, i8* %4703
  %4705 = zext i8 %4704 to i64
  store i64 %4705, i64* %RCX.i478, align 8
  store %struct.Memory* %loadMem_409e95, %struct.Memory** %MEMORY
  %loadMem_409e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 33
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4708 to i64*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 5
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %ECX.i474 = bitcast %union.anon* %4711 to i32*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 15
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %4714 to i64*
  %4715 = load i32, i32* %ECX.i474
  %4716 = zext i32 %4715 to i64
  %4717 = load i64, i64* %RBP.i475
  %4718 = sub i64 %4717, 12
  %4719 = load i64, i64* %PC.i473
  %4720 = add i64 %4719, 3
  store i64 %4720, i64* %PC.i473
  %4721 = inttoptr i64 %4718 to i32*
  %4722 = load i32, i32* %4721
  %4723 = sub i32 %4715, %4722
  %4724 = icmp ult i32 %4715, %4722
  %4725 = zext i1 %4724 to i8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4725, i8* %4726, align 1
  %4727 = and i32 %4723, 255
  %4728 = call i32 @llvm.ctpop.i32(i32 %4727)
  %4729 = trunc i32 %4728 to i8
  %4730 = and i8 %4729, 1
  %4731 = xor i8 %4730, 1
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4731, i8* %4732, align 1
  %4733 = xor i32 %4722, %4715
  %4734 = xor i32 %4733, %4723
  %4735 = lshr i32 %4734, 4
  %4736 = trunc i32 %4735 to i8
  %4737 = and i8 %4736, 1
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4737, i8* %4738, align 1
  %4739 = icmp eq i32 %4723, 0
  %4740 = zext i1 %4739 to i8
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4740, i8* %4741, align 1
  %4742 = lshr i32 %4723, 31
  %4743 = trunc i32 %4742 to i8
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4743, i8* %4744, align 1
  %4745 = lshr i32 %4715, 31
  %4746 = lshr i32 %4722, 31
  %4747 = xor i32 %4746, %4745
  %4748 = xor i32 %4742, %4745
  %4749 = add i32 %4748, %4747
  %4750 = icmp eq i32 %4749, 2
  %4751 = zext i1 %4750 to i8
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4751, i8* %4752, align 1
  store %struct.Memory* %loadMem_409e9d, %struct.Memory** %MEMORY
  %loadMem_409ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 33
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4755 to i64*
  %4756 = load i64, i64* %PC.i472
  %4757 = add i64 %4756, 121
  %4758 = load i64, i64* %PC.i472
  %4759 = add i64 %4758, 6
  %4760 = load i64, i64* %PC.i472
  %4761 = add i64 %4760, 6
  store i64 %4761, i64* %PC.i472
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4763 = load i8, i8* %4762, align 1
  %4764 = icmp eq i8 %4763, 0
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %BRANCH_TAKEN, align 1
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4767 = select i1 %4764, i64 %4757, i64 %4759
  store i64 %4767, i64* %4766, align 8
  store %struct.Memory* %loadMem_409ea0, %struct.Memory** %MEMORY
  %loadBr_409ea0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ea0 = icmp eq i8 %loadBr_409ea0, 1
  br i1 %cmpBr_409ea0, label %block_.L_409f19, label %block_409ea6

block_409ea6:                                     ; preds = %block_.L_409e91
  %loadMem_409ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 33
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 1
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %4773 to i64*
  %4774 = load i64, i64* %PC.i470
  %4775 = add i64 %4774, 10
  store i64 %4775, i64* %PC.i470
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i471, align 8
  store %struct.Memory* %loadMem_409ea6, %struct.Memory** %MEMORY
  %loadMem_409eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 33
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 5
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 15
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4784 to i64*
  %4785 = load i64, i64* %RBP.i469
  %4786 = sub i64 %4785, 32
  %4787 = load i64, i64* %PC.i467
  %4788 = add i64 %4787, 4
  store i64 %4788, i64* %PC.i467
  %4789 = inttoptr i64 %4786 to i32*
  %4790 = load i32, i32* %4789
  %4791 = sext i32 %4790 to i64
  store i64 %4791, i64* %RCX.i468, align 8
  store %struct.Memory* %loadMem_409eb0, %struct.Memory** %MEMORY
  %loadMem_409eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 33
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4794 to i64*
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 5
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %4797 to i64*
  %4798 = load i64, i64* %RCX.i466
  %4799 = mul i64 %4798, 4
  %4800 = add i64 %4799, 11187184
  %4801 = load i64, i64* %PC.i465
  %4802 = add i64 %4801, 8
  store i64 %4802, i64* %PC.i465
  %4803 = inttoptr i64 %4800 to i32*
  %4804 = load i32, i32* %4803
  %4805 = sext i32 %4804 to i64
  store i64 %4805, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_409eb4, %struct.Memory** %MEMORY
  %loadMem_409ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 5
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RCX.i464
  %4813 = load i64, i64* %PC.i463
  %4814 = add i64 %4813, 7
  store i64 %4814, i64* %PC.i463
  %4815 = sext i64 %4812 to i128
  %4816 = and i128 %4815, -18446744073709551616
  %4817 = zext i64 %4812 to i128
  %4818 = or i128 %4816, %4817
  %4819 = mul i128 744, %4818
  %4820 = trunc i128 %4819 to i64
  store i64 %4820, i64* %RCX.i464, align 8
  %4821 = sext i64 %4820 to i128
  %4822 = icmp ne i128 %4821, %4819
  %4823 = zext i1 %4822 to i8
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4823, i8* %4824, align 1
  %4825 = trunc i128 %4819 to i32
  %4826 = and i32 %4825, 255
  %4827 = call i32 @llvm.ctpop.i32(i32 %4826)
  %4828 = trunc i32 %4827 to i8
  %4829 = and i8 %4828, 1
  %4830 = xor i8 %4829, 1
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4830, i8* %4831, align 1
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4832, align 1
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4833, align 1
  %4834 = lshr i64 %4820, 63
  %4835 = trunc i64 %4834 to i8
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4835, i8* %4836, align 1
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4823, i8* %4837, align 1
  store %struct.Memory* %loadMem_409ebc, %struct.Memory** %MEMORY
  %loadMem_409ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 33
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 1
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %4843 to i64*
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 5
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %4846 to i64*
  %4847 = load i64, i64* %RAX.i461
  %4848 = load i64, i64* %RCX.i462
  %4849 = load i64, i64* %PC.i460
  %4850 = add i64 %4849, 3
  store i64 %4850, i64* %PC.i460
  %4851 = add i64 %4848, %4847
  store i64 %4851, i64* %RAX.i461, align 8
  %4852 = icmp ult i64 %4851, %4847
  %4853 = icmp ult i64 %4851, %4848
  %4854 = or i1 %4852, %4853
  %4855 = zext i1 %4854 to i8
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4855, i8* %4856, align 1
  %4857 = trunc i64 %4851 to i32
  %4858 = and i32 %4857, 255
  %4859 = call i32 @llvm.ctpop.i32(i32 %4858)
  %4860 = trunc i32 %4859 to i8
  %4861 = and i8 %4860, 1
  %4862 = xor i8 %4861, 1
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4862, i8* %4863, align 1
  %4864 = xor i64 %4848, %4847
  %4865 = xor i64 %4864, %4851
  %4866 = lshr i64 %4865, 4
  %4867 = trunc i64 %4866 to i8
  %4868 = and i8 %4867, 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4868, i8* %4869, align 1
  %4870 = icmp eq i64 %4851, 0
  %4871 = zext i1 %4870 to i8
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4871, i8* %4872, align 1
  %4873 = lshr i64 %4851, 63
  %4874 = trunc i64 %4873 to i8
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4874, i8* %4875, align 1
  %4876 = lshr i64 %4847, 63
  %4877 = lshr i64 %4848, 63
  %4878 = xor i64 %4873, %4876
  %4879 = xor i64 %4873, %4877
  %4880 = add i64 %4878, %4879
  %4881 = icmp eq i64 %4880, 2
  %4882 = zext i1 %4881 to i8
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4882, i8* %4883, align 1
  store %struct.Memory* %loadMem_409ec3, %struct.Memory** %MEMORY
  %loadMem_409ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 1
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 7
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %RAX.i458
  %4894 = add i64 %4893, 740
  %4895 = load i64, i64* %PC.i457
  %4896 = add i64 %4895, 6
  store i64 %4896, i64* %PC.i457
  %4897 = inttoptr i64 %4894 to i32*
  %4898 = load i32, i32* %4897
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RDX.i459, align 8
  store %struct.Memory* %loadMem_409ec6, %struct.Memory** %MEMORY
  %loadMem_409ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 33
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 7
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %EDX.i456 = bitcast %union.anon* %4905 to i32*
  %4906 = load i32, i32* %EDX.i456
  %4907 = zext i32 %4906 to i64
  %4908 = load i64, i64* %PC.i455
  %4909 = add i64 %4908, 7
  store i64 %4909, i64* %PC.i455
  %4910 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %4911 = sub i32 %4906, %4910
  %4912 = icmp ult i32 %4906, %4910
  %4913 = zext i1 %4912 to i8
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4913, i8* %4914, align 1
  %4915 = and i32 %4911, 255
  %4916 = call i32 @llvm.ctpop.i32(i32 %4915)
  %4917 = trunc i32 %4916 to i8
  %4918 = and i8 %4917, 1
  %4919 = xor i8 %4918, 1
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4919, i8* %4920, align 1
  %4921 = xor i32 %4910, %4906
  %4922 = xor i32 %4921, %4911
  %4923 = lshr i32 %4922, 4
  %4924 = trunc i32 %4923 to i8
  %4925 = and i8 %4924, 1
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4925, i8* %4926, align 1
  %4927 = icmp eq i32 %4911, 0
  %4928 = zext i1 %4927 to i8
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4928, i8* %4929, align 1
  %4930 = lshr i32 %4911, 31
  %4931 = trunc i32 %4930 to i8
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4931, i8* %4932, align 1
  %4933 = lshr i32 %4906, 31
  %4934 = lshr i32 %4910, 31
  %4935 = xor i32 %4934, %4933
  %4936 = xor i32 %4930, %4933
  %4937 = add i32 %4936, %4935
  %4938 = icmp eq i32 %4937, 2
  %4939 = zext i1 %4938 to i8
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4939, i8* %4940, align 1
  store %struct.Memory* %loadMem_409ecc, %struct.Memory** %MEMORY
  %loadMem_409ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 33
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4943 to i64*
  %4944 = load i64, i64* %PC.i454
  %4945 = add i64 %4944, 70
  %4946 = load i64, i64* %PC.i454
  %4947 = add i64 %4946, 6
  %4948 = load i64, i64* %PC.i454
  %4949 = add i64 %4948, 6
  store i64 %4949, i64* %PC.i454
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4951 = load i8, i8* %4950, align 1
  store i8 %4951, i8* %BRANCH_TAKEN, align 1
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4953 = icmp ne i8 %4951, 0
  %4954 = select i1 %4953, i64 %4945, i64 %4947
  store i64 %4954, i64* %4952, align 8
  store %struct.Memory* %loadMem_409ed3, %struct.Memory** %MEMORY
  %loadBr_409ed3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ed3 = icmp eq i8 %loadBr_409ed3, 1
  br i1 %cmpBr_409ed3, label %block_.L_409f19, label %block_409ed9

block_409ed9:                                     ; preds = %block_409ea6
  %loadMem_409ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 1
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %4960 to i64*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 15
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %4963 to i64*
  %4964 = load i64, i64* %RBP.i453
  %4965 = sub i64 %4964, 32
  %4966 = load i64, i64* %PC.i451
  %4967 = add i64 %4966, 4
  store i64 %4967, i64* %PC.i451
  %4968 = inttoptr i64 %4965 to i32*
  %4969 = load i32, i32* %4968
  %4970 = sext i32 %4969 to i64
  store i64 %4970, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_409ed9, %struct.Memory** %MEMORY
  %loadMem_409edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 1
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 11
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RDI.i450 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %RAX.i449
  %4981 = mul i64 %4980, 4
  %4982 = add i64 %4981, 11187184
  %4983 = load i64, i64* %PC.i448
  %4984 = add i64 %4983, 7
  store i64 %4984, i64* %PC.i448
  %4985 = inttoptr i64 %4982 to i32*
  %4986 = load i32, i32* %4985
  %4987 = zext i32 %4986 to i64
  store i64 %4987, i64* %RDI.i450, align 8
  store %struct.Memory* %loadMem_409edd, %struct.Memory** %MEMORY
  %loadMem_409ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 9
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %RSI.i446 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 15
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %RBP.i447
  %4998 = sub i64 %4997, 4
  %4999 = load i64, i64* %PC.i445
  %5000 = add i64 %4999, 3
  store i64 %5000, i64* %PC.i445
  %5001 = inttoptr i64 %4998 to i32*
  %5002 = load i32, i32* %5001
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RSI.i446, align 8
  store %struct.Memory* %loadMem_409ee4, %struct.Memory** %MEMORY
  %loadMem1_409ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %5006 to i64*
  %5007 = load i64, i64* %PC.i444
  %5008 = add i64 %5007, 2009
  %5009 = load i64, i64* %PC.i444
  %5010 = add i64 %5009, 5
  %5011 = load i64, i64* %PC.i444
  %5012 = add i64 %5011, 5
  store i64 %5012, i64* %PC.i444
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5014 = load i64, i64* %5013, align 8
  %5015 = add i64 %5014, -8
  %5016 = inttoptr i64 %5015 to i64*
  store i64 %5010, i64* %5016
  store i64 %5015, i64* %5013, align 8
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5008, i64* %5017, align 8
  store %struct.Memory* %loadMem1_409ee7, %struct.Memory** %MEMORY
  %loadMem2_409ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409ee7 = load i64, i64* %3
  %call2_409ee7 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64 %loadPC_409ee7, %struct.Memory* %loadMem2_409ee7)
  store %struct.Memory* %call2_409ee7, %struct.Memory** %MEMORY
  %loadMem_409eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 33
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %5020 to i64*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 1
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %5023 to i64*
  %5024 = load i64, i64* %PC.i442
  %5025 = add i64 %5024, 10
  store i64 %5025, i64* %PC.i442
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i443, align 8
  store %struct.Memory* %loadMem_409eec, %struct.Memory** %MEMORY
  %loadMem_409ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 33
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 9
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RSI.i441 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %PC.i440
  %5033 = add i64 %5032, 7
  store i64 %5033, i64* %PC.i440
  %5034 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5035 = zext i32 %5034 to i64
  store i64 %5035, i64* %RSI.i441, align 8
  store %struct.Memory* %loadMem_409ef6, %struct.Memory** %MEMORY
  %loadMem_409efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 33
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %5038 to i64*
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 5
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 15
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %5044 to i64*
  %5045 = load i64, i64* %RBP.i439
  %5046 = sub i64 %5045, 32
  %5047 = load i64, i64* %PC.i437
  %5048 = add i64 %5047, 4
  store i64 %5048, i64* %PC.i437
  %5049 = inttoptr i64 %5046 to i32*
  %5050 = load i32, i32* %5049
  %5051 = sext i32 %5050 to i64
  store i64 %5051, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_409efd, %struct.Memory** %MEMORY
  %loadMem_409f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 33
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 5
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %5057 to i64*
  %5058 = load i64, i64* %RCX.i436
  %5059 = mul i64 %5058, 4
  %5060 = add i64 %5059, 11187184
  %5061 = load i64, i64* %PC.i435
  %5062 = add i64 %5061, 8
  store i64 %5062, i64* %PC.i435
  %5063 = inttoptr i64 %5060 to i32*
  %5064 = load i32, i32* %5063
  %5065 = sext i32 %5064 to i64
  store i64 %5065, i64* %RCX.i436, align 8
  store %struct.Memory* %loadMem_409f01, %struct.Memory** %MEMORY
  %loadMem_409f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 33
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %5068 to i64*
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 5
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %5071 to i64*
  %5072 = load i64, i64* %RCX.i434
  %5073 = load i64, i64* %PC.i433
  %5074 = add i64 %5073, 7
  store i64 %5074, i64* %PC.i433
  %5075 = sext i64 %5072 to i128
  %5076 = and i128 %5075, -18446744073709551616
  %5077 = zext i64 %5072 to i128
  %5078 = or i128 %5076, %5077
  %5079 = mul i128 744, %5078
  %5080 = trunc i128 %5079 to i64
  store i64 %5080, i64* %RCX.i434, align 8
  %5081 = sext i64 %5080 to i128
  %5082 = icmp ne i128 %5081, %5079
  %5083 = zext i1 %5082 to i8
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5083, i8* %5084, align 1
  %5085 = trunc i128 %5079 to i32
  %5086 = and i32 %5085, 255
  %5087 = call i32 @llvm.ctpop.i32(i32 %5086)
  %5088 = trunc i32 %5087 to i8
  %5089 = and i8 %5088, 1
  %5090 = xor i8 %5089, 1
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5090, i8* %5091, align 1
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5092, align 1
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5093, align 1
  %5094 = lshr i64 %5080, 63
  %5095 = trunc i64 %5094 to i8
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5095, i8* %5096, align 1
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5083, i8* %5097, align 1
  store %struct.Memory* %loadMem_409f09, %struct.Memory** %MEMORY
  %loadMem_409f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 1
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 5
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %5106 to i64*
  %5107 = load i64, i64* %RAX.i431
  %5108 = load i64, i64* %RCX.i432
  %5109 = load i64, i64* %PC.i430
  %5110 = add i64 %5109, 3
  store i64 %5110, i64* %PC.i430
  %5111 = add i64 %5108, %5107
  store i64 %5111, i64* %RAX.i431, align 8
  %5112 = icmp ult i64 %5111, %5107
  %5113 = icmp ult i64 %5111, %5108
  %5114 = or i1 %5112, %5113
  %5115 = zext i1 %5114 to i8
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5115, i8* %5116, align 1
  %5117 = trunc i64 %5111 to i32
  %5118 = and i32 %5117, 255
  %5119 = call i32 @llvm.ctpop.i32(i32 %5118)
  %5120 = trunc i32 %5119 to i8
  %5121 = and i8 %5120, 1
  %5122 = xor i8 %5121, 1
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5122, i8* %5123, align 1
  %5124 = xor i64 %5108, %5107
  %5125 = xor i64 %5124, %5111
  %5126 = lshr i64 %5125, 4
  %5127 = trunc i64 %5126 to i8
  %5128 = and i8 %5127, 1
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5128, i8* %5129, align 1
  %5130 = icmp eq i64 %5111, 0
  %5131 = zext i1 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5131, i8* %5132, align 1
  %5133 = lshr i64 %5111, 63
  %5134 = trunc i64 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5134, i8* %5135, align 1
  %5136 = lshr i64 %5107, 63
  %5137 = lshr i64 %5108, 63
  %5138 = xor i64 %5133, %5136
  %5139 = xor i64 %5133, %5137
  %5140 = add i64 %5138, %5139
  %5141 = icmp eq i64 %5140, 2
  %5142 = zext i1 %5141 to i8
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5142, i8* %5143, align 1
  store %struct.Memory* %loadMem_409f10, %struct.Memory** %MEMORY
  %loadMem_409f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 9
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %ESI.i428 = bitcast %union.anon* %5149 to i32*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 1
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %5152 to i64*
  %5153 = load i64, i64* %RAX.i429
  %5154 = add i64 %5153, 740
  %5155 = load i32, i32* %ESI.i428
  %5156 = zext i32 %5155 to i64
  %5157 = load i64, i64* %PC.i427
  %5158 = add i64 %5157, 6
  store i64 %5158, i64* %PC.i427
  %5159 = inttoptr i64 %5154 to i32*
  store i32 %5155, i32* %5159
  store %struct.Memory* %loadMem_409f13, %struct.Memory** %MEMORY
  br label %block_.L_409f19

block_.L_409f19:                                  ; preds = %block_409ed9, %block_409ea6, %block_.L_409e91
  %loadMem_409f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %5162 to i64*
  %5163 = load i64, i64* %PC.i426
  %5164 = add i64 %5163, 5
  %5165 = load i64, i64* %PC.i426
  %5166 = add i64 %5165, 5
  store i64 %5166, i64* %PC.i426
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5164, i64* %5167, align 8
  store %struct.Memory* %loadMem_409f19, %struct.Memory** %MEMORY
  br label %block_.L_409f1e

block_.L_409f1e:                                  ; preds = %block_.L_409f19, %block_409e48
  %loadMem_409f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 33
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 1
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %5173 to i64*
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 15
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %5176 to i64*
  %5177 = load i64, i64* %RBP.i425
  %5178 = sub i64 %5177, 36
  %5179 = load i64, i64* %PC.i423
  %5180 = add i64 %5179, 4
  store i64 %5180, i64* %PC.i423
  %5181 = inttoptr i64 %5178 to i32*
  %5182 = load i32, i32* %5181
  %5183 = sext i32 %5182 to i64
  store i64 %5183, i64* %RAX.i424, align 8
  store %struct.Memory* %loadMem_409f1e, %struct.Memory** %MEMORY
  %loadMem_409f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 33
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5186 to i64*
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 1
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %5189 to i64*
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5191 = getelementptr inbounds %struct.GPR, %struct.GPR* %5190, i32 0, i32 5
  %5192 = getelementptr inbounds %struct.Reg, %struct.Reg* %5191, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %5192 to i64*
  %5193 = load i64, i64* %RAX.i421
  %5194 = add i64 %5193, 12099168
  %5195 = load i64, i64* %PC.i420
  %5196 = add i64 %5195, 8
  store i64 %5196, i64* %PC.i420
  %5197 = inttoptr i64 %5194 to i8*
  %5198 = load i8, i8* %5197
  %5199 = zext i8 %5198 to i64
  store i64 %5199, i64* %RCX.i422, align 8
  store %struct.Memory* %loadMem_409f22, %struct.Memory** %MEMORY
  %loadMem_409f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 33
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %5202 to i64*
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 5
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %ECX.i418 = bitcast %union.anon* %5205 to i32*
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 15
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %5208 to i64*
  %5209 = load i32, i32* %ECX.i418
  %5210 = zext i32 %5209 to i64
  %5211 = load i64, i64* %RBP.i419
  %5212 = sub i64 %5211, 8
  %5213 = load i64, i64* %PC.i417
  %5214 = add i64 %5213, 3
  store i64 %5214, i64* %PC.i417
  %5215 = inttoptr i64 %5212 to i32*
  %5216 = load i32, i32* %5215
  %5217 = sub i32 %5209, %5216
  %5218 = icmp ult i32 %5209, %5216
  %5219 = zext i1 %5218 to i8
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5219, i8* %5220, align 1
  %5221 = and i32 %5217, 255
  %5222 = call i32 @llvm.ctpop.i32(i32 %5221)
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = xor i8 %5224, 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5225, i8* %5226, align 1
  %5227 = xor i32 %5216, %5209
  %5228 = xor i32 %5227, %5217
  %5229 = lshr i32 %5228, 4
  %5230 = trunc i32 %5229 to i8
  %5231 = and i8 %5230, 1
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5231, i8* %5232, align 1
  %5233 = icmp eq i32 %5217, 0
  %5234 = zext i1 %5233 to i8
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5234, i8* %5235, align 1
  %5236 = lshr i32 %5217, 31
  %5237 = trunc i32 %5236 to i8
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5237, i8* %5238, align 1
  %5239 = lshr i32 %5209, 31
  %5240 = lshr i32 %5216, 31
  %5241 = xor i32 %5240, %5239
  %5242 = xor i32 %5236, %5239
  %5243 = add i32 %5242, %5241
  %5244 = icmp eq i32 %5243, 2
  %5245 = zext i1 %5244 to i8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5245, i8* %5246, align 1
  store %struct.Memory* %loadMem_409f2a, %struct.Memory** %MEMORY
  %loadMem_409f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %5249 to i64*
  %5250 = load i64, i64* %PC.i416
  %5251 = add i64 %5250, 130
  %5252 = load i64, i64* %PC.i416
  %5253 = add i64 %5252, 6
  %5254 = load i64, i64* %PC.i416
  %5255 = add i64 %5254, 6
  store i64 %5255, i64* %PC.i416
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5257 = load i8, i8* %5256, align 1
  %5258 = icmp eq i8 %5257, 0
  %5259 = zext i1 %5258 to i8
  store i8 %5259, i8* %BRANCH_TAKEN, align 1
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5261 = select i1 %5258, i64 %5251, i64 %5253
  store i64 %5261, i64* %5260, align 8
  store %struct.Memory* %loadMem_409f2d, %struct.Memory** %MEMORY
  %loadBr_409f2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409f2d = icmp eq i8 %loadBr_409f2d, 1
  br i1 %cmpBr_409f2d, label %block_.L_409faf, label %block_409f33

block_409f33:                                     ; preds = %block_.L_409f1e
  %loadMem_409f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 33
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %5264 to i64*
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5266 = getelementptr inbounds %struct.GPR, %struct.GPR* %5265, i32 0, i32 1
  %5267 = getelementptr inbounds %struct.Reg, %struct.Reg* %5266, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %5267 to i64*
  %5268 = load i64, i64* %PC.i414
  %5269 = add i64 %5268, 10
  store i64 %5269, i64* %PC.i414
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_409f33, %struct.Memory** %MEMORY
  %loadMem_409f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 5
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %5275 to i64*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 15
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %5278 to i64*
  %5279 = load i64, i64* %RBP.i413
  %5280 = sub i64 %5279, 36
  %5281 = load i64, i64* %PC.i411
  %5282 = add i64 %5281, 4
  store i64 %5282, i64* %PC.i411
  %5283 = inttoptr i64 %5280 to i32*
  %5284 = load i32, i32* %5283
  %5285 = sext i32 %5284 to i64
  store i64 %5285, i64* %RCX.i412, align 8
  store %struct.Memory* %loadMem_409f3d, %struct.Memory** %MEMORY
  %loadMem_409f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 33
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 5
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %RCX.i410
  %5293 = mul i64 %5292, 4
  %5294 = add i64 %5293, 11187184
  %5295 = load i64, i64* %PC.i409
  %5296 = add i64 %5295, 8
  store i64 %5296, i64* %PC.i409
  %5297 = inttoptr i64 %5294 to i32*
  %5298 = load i32, i32* %5297
  %5299 = sext i32 %5298 to i64
  store i64 %5299, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_409f41, %struct.Memory** %MEMORY
  %loadMem_409f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 33
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %5302 to i64*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 5
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %5305 to i64*
  %5306 = load i64, i64* %RCX.i408
  %5307 = load i64, i64* %PC.i407
  %5308 = add i64 %5307, 7
  store i64 %5308, i64* %PC.i407
  %5309 = sext i64 %5306 to i128
  %5310 = and i128 %5309, -18446744073709551616
  %5311 = zext i64 %5306 to i128
  %5312 = or i128 %5310, %5311
  %5313 = mul i128 744, %5312
  %5314 = trunc i128 %5313 to i64
  store i64 %5314, i64* %RCX.i408, align 8
  %5315 = sext i64 %5314 to i128
  %5316 = icmp ne i128 %5315, %5313
  %5317 = zext i1 %5316 to i8
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5317, i8* %5318, align 1
  %5319 = trunc i128 %5313 to i32
  %5320 = and i32 %5319, 255
  %5321 = call i32 @llvm.ctpop.i32(i32 %5320)
  %5322 = trunc i32 %5321 to i8
  %5323 = and i8 %5322, 1
  %5324 = xor i8 %5323, 1
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5324, i8* %5325, align 1
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5326, align 1
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5327, align 1
  %5328 = lshr i64 %5314, 63
  %5329 = trunc i64 %5328 to i8
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5329, i8* %5330, align 1
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5317, i8* %5331, align 1
  store %struct.Memory* %loadMem_409f49, %struct.Memory** %MEMORY
  %loadMem_409f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 33
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %5334 to i64*
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 1
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %5337 to i64*
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 5
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %5340 to i64*
  %5341 = load i64, i64* %RAX.i405
  %5342 = load i64, i64* %RCX.i406
  %5343 = load i64, i64* %PC.i404
  %5344 = add i64 %5343, 3
  store i64 %5344, i64* %PC.i404
  %5345 = add i64 %5342, %5341
  store i64 %5345, i64* %RAX.i405, align 8
  %5346 = icmp ult i64 %5345, %5341
  %5347 = icmp ult i64 %5345, %5342
  %5348 = or i1 %5346, %5347
  %5349 = zext i1 %5348 to i8
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5349, i8* %5350, align 1
  %5351 = trunc i64 %5345 to i32
  %5352 = and i32 %5351, 255
  %5353 = call i32 @llvm.ctpop.i32(i32 %5352)
  %5354 = trunc i32 %5353 to i8
  %5355 = and i8 %5354, 1
  %5356 = xor i8 %5355, 1
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5356, i8* %5357, align 1
  %5358 = xor i64 %5342, %5341
  %5359 = xor i64 %5358, %5345
  %5360 = lshr i64 %5359, 4
  %5361 = trunc i64 %5360 to i8
  %5362 = and i8 %5361, 1
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5362, i8* %5363, align 1
  %5364 = icmp eq i64 %5345, 0
  %5365 = zext i1 %5364 to i8
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5365, i8* %5366, align 1
  %5367 = lshr i64 %5345, 63
  %5368 = trunc i64 %5367 to i8
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5368, i8* %5369, align 1
  %5370 = lshr i64 %5341, 63
  %5371 = lshr i64 %5342, 63
  %5372 = xor i64 %5367, %5370
  %5373 = xor i64 %5367, %5371
  %5374 = add i64 %5372, %5373
  %5375 = icmp eq i64 %5374, 2
  %5376 = zext i1 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5376, i8* %5377, align 1
  store %struct.Memory* %loadMem_409f50, %struct.Memory** %MEMORY
  %loadMem_409f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %5383 to i64*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 7
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RDX.i403 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RAX.i402
  %5388 = add i64 %5387, 740
  %5389 = load i64, i64* %PC.i401
  %5390 = add i64 %5389, 6
  store i64 %5390, i64* %PC.i401
  %5391 = inttoptr i64 %5388 to i32*
  %5392 = load i32, i32* %5391
  %5393 = zext i32 %5392 to i64
  store i64 %5393, i64* %RDX.i403, align 8
  store %struct.Memory* %loadMem_409f53, %struct.Memory** %MEMORY
  %loadMem_409f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 33
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 7
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %EDX.i400 = bitcast %union.anon* %5399 to i32*
  %5400 = load i32, i32* %EDX.i400
  %5401 = zext i32 %5400 to i64
  %5402 = load i64, i64* %PC.i399
  %5403 = add i64 %5402, 7
  store i64 %5403, i64* %PC.i399
  %5404 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5405 = sub i32 %5400, %5404
  %5406 = icmp ult i32 %5400, %5404
  %5407 = zext i1 %5406 to i8
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5407, i8* %5408, align 1
  %5409 = and i32 %5405, 255
  %5410 = call i32 @llvm.ctpop.i32(i32 %5409)
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5413, i8* %5414, align 1
  %5415 = xor i32 %5404, %5400
  %5416 = xor i32 %5415, %5405
  %5417 = lshr i32 %5416, 4
  %5418 = trunc i32 %5417 to i8
  %5419 = and i8 %5418, 1
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5419, i8* %5420, align 1
  %5421 = icmp eq i32 %5405, 0
  %5422 = zext i1 %5421 to i8
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5422, i8* %5423, align 1
  %5424 = lshr i32 %5405, 31
  %5425 = trunc i32 %5424 to i8
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5425, i8* %5426, align 1
  %5427 = lshr i32 %5400, 31
  %5428 = lshr i32 %5404, 31
  %5429 = xor i32 %5428, %5427
  %5430 = xor i32 %5424, %5427
  %5431 = add i32 %5430, %5429
  %5432 = icmp eq i32 %5431, 2
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5433, i8* %5434, align 1
  store %struct.Memory* %loadMem_409f59, %struct.Memory** %MEMORY
  %loadMem_409f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 33
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %5437 to i64*
  %5438 = load i64, i64* %PC.i398
  %5439 = add i64 %5438, 79
  %5440 = load i64, i64* %PC.i398
  %5441 = add i64 %5440, 6
  %5442 = load i64, i64* %PC.i398
  %5443 = add i64 %5442, 6
  store i64 %5443, i64* %PC.i398
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5445 = load i8, i8* %5444, align 1
  store i8 %5445, i8* %BRANCH_TAKEN, align 1
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5447 = icmp ne i8 %5445, 0
  %5448 = select i1 %5447, i64 %5439, i64 %5441
  store i64 %5448, i64* %5446, align 8
  store %struct.Memory* %loadMem_409f60, %struct.Memory** %MEMORY
  %loadBr_409f60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409f60 = icmp eq i8 %loadBr_409f60, 1
  br i1 %cmpBr_409f60, label %block_.L_409faf, label %block_409f66

block_409f66:                                     ; preds = %block_409f33
  %loadMem_409f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 33
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %5451 to i64*
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 1
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %5454 to i64*
  %5455 = load i64, i64* %PC.i396
  %5456 = add i64 %5455, 10
  store i64 %5456, i64* %PC.i396
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_409f66, %struct.Memory** %MEMORY
  %loadMem_409f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %5459 to i64*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 5
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %5462 to i64*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 15
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %5465 to i64*
  %5466 = load i64, i64* %RBP.i395
  %5467 = sub i64 %5466, 20
  %5468 = load i64, i64* %PC.i393
  %5469 = add i64 %5468, 3
  store i64 %5469, i64* %PC.i393
  %5470 = inttoptr i64 %5467 to i32*
  %5471 = load i32, i32* %5470
  %5472 = zext i32 %5471 to i64
  store i64 %5472, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_409f70, %struct.Memory** %MEMORY
  %loadMem_409f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 33
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %5475 to i64*
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 5
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %5478 to i64*
  %5479 = load i64, i64* %RCX.i392
  %5480 = load i64, i64* %PC.i391
  %5481 = add i64 %5480, 3
  store i64 %5481, i64* %PC.i391
  %5482 = trunc i64 %5479 to i32
  %5483 = add i32 1, %5482
  %5484 = zext i32 %5483 to i64
  store i64 %5484, i64* %RCX.i392, align 8
  %5485 = icmp ult i32 %5483, %5482
  %5486 = icmp ult i32 %5483, 1
  %5487 = or i1 %5485, %5486
  %5488 = zext i1 %5487 to i8
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5488, i8* %5489, align 1
  %5490 = and i32 %5483, 255
  %5491 = call i32 @llvm.ctpop.i32(i32 %5490)
  %5492 = trunc i32 %5491 to i8
  %5493 = and i8 %5492, 1
  %5494 = xor i8 %5493, 1
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5494, i8* %5495, align 1
  %5496 = xor i64 1, %5479
  %5497 = trunc i64 %5496 to i32
  %5498 = xor i32 %5497, %5483
  %5499 = lshr i32 %5498, 4
  %5500 = trunc i32 %5499 to i8
  %5501 = and i8 %5500, 1
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5501, i8* %5502, align 1
  %5503 = icmp eq i32 %5483, 0
  %5504 = zext i1 %5503 to i8
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5504, i8* %5505, align 1
  %5506 = lshr i32 %5483, 31
  %5507 = trunc i32 %5506 to i8
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5507, i8* %5508, align 1
  %5509 = lshr i32 %5482, 31
  %5510 = xor i32 %5506, %5509
  %5511 = add i32 %5510, %5506
  %5512 = icmp eq i32 %5511, 2
  %5513 = zext i1 %5512 to i8
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5513, i8* %5514, align 1
  store %struct.Memory* %loadMem_409f73, %struct.Memory** %MEMORY
  %loadMem_409f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5516 = getelementptr inbounds %struct.GPR, %struct.GPR* %5515, i32 0, i32 33
  %5517 = getelementptr inbounds %struct.Reg, %struct.Reg* %5516, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %5517 to i64*
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 5
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %ECX.i389 = bitcast %union.anon* %5520 to i32*
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5522 = getelementptr inbounds %struct.GPR, %struct.GPR* %5521, i32 0, i32 15
  %5523 = getelementptr inbounds %struct.Reg, %struct.Reg* %5522, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %5523 to i64*
  %5524 = load i64, i64* %RBP.i390
  %5525 = sub i64 %5524, 20
  %5526 = load i32, i32* %ECX.i389
  %5527 = zext i32 %5526 to i64
  %5528 = load i64, i64* %PC.i388
  %5529 = add i64 %5528, 3
  store i64 %5529, i64* %PC.i388
  %5530 = inttoptr i64 %5525 to i32*
  store i32 %5526, i32* %5530
  store %struct.Memory* %loadMem_409f76, %struct.Memory** %MEMORY
  %loadMem_409f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 33
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %5533 to i64*
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5535 = getelementptr inbounds %struct.GPR, %struct.GPR* %5534, i32 0, i32 7
  %5536 = getelementptr inbounds %struct.Reg, %struct.Reg* %5535, i32 0, i32 0
  %RDX.i386 = bitcast %union.anon* %5536 to i64*
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5538 = getelementptr inbounds %struct.GPR, %struct.GPR* %5537, i32 0, i32 15
  %5539 = getelementptr inbounds %struct.Reg, %struct.Reg* %5538, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %5539 to i64*
  %5540 = load i64, i64* %RBP.i387
  %5541 = sub i64 %5540, 36
  %5542 = load i64, i64* %PC.i385
  %5543 = add i64 %5542, 4
  store i64 %5543, i64* %PC.i385
  %5544 = inttoptr i64 %5541 to i32*
  %5545 = load i32, i32* %5544
  %5546 = sext i32 %5545 to i64
  store i64 %5546, i64* %RDX.i386, align 8
  store %struct.Memory* %loadMem_409f79, %struct.Memory** %MEMORY
  %loadMem_409f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 33
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %5549 to i64*
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 5
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %5552 to i64*
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 7
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %5555 to i64*
  %5556 = load i64, i64* %RDX.i384
  %5557 = mul i64 %5556, 4
  %5558 = add i64 %5557, 11187184
  %5559 = load i64, i64* %PC.i382
  %5560 = add i64 %5559, 7
  store i64 %5560, i64* %PC.i382
  %5561 = inttoptr i64 %5558 to i32*
  %5562 = load i32, i32* %5561
  %5563 = zext i32 %5562 to i64
  store i64 %5563, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_409f7d, %struct.Memory** %MEMORY
  %loadMem_409f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 33
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %5566 to i64*
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5568 = getelementptr inbounds %struct.GPR, %struct.GPR* %5567, i32 0, i32 5
  %5569 = getelementptr inbounds %struct.Reg, %struct.Reg* %5568, i32 0, i32 0
  %ECX.i380 = bitcast %union.anon* %5569 to i32*
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 15
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %5572 to i64*
  %5573 = load i64, i64* %RBP.i381
  %5574 = sub i64 %5573, 28
  %5575 = load i32, i32* %ECX.i380
  %5576 = zext i32 %5575 to i64
  %5577 = load i64, i64* %PC.i379
  %5578 = add i64 %5577, 3
  store i64 %5578, i64* %PC.i379
  %5579 = inttoptr i64 %5574 to i32*
  store i32 %5575, i32* %5579
  store %struct.Memory* %loadMem_409f84, %struct.Memory** %MEMORY
  %loadMem_409f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 33
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 5
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %5585 to i64*
  %5586 = load i64, i64* %PC.i377
  %5587 = add i64 %5586, 7
  store i64 %5587, i64* %PC.i377
  %5588 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5589 = zext i32 %5588 to i64
  store i64 %5589, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_409f87, %struct.Memory** %MEMORY
  %loadMem_409f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 33
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %5592 to i64*
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 7
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %RDX.i375 = bitcast %union.anon* %5595 to i64*
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 15
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %5598 to i64*
  %5599 = load i64, i64* %RBP.i376
  %5600 = sub i64 %5599, 36
  %5601 = load i64, i64* %PC.i374
  %5602 = add i64 %5601, 4
  store i64 %5602, i64* %PC.i374
  %5603 = inttoptr i64 %5600 to i32*
  %5604 = load i32, i32* %5603
  %5605 = sext i32 %5604 to i64
  store i64 %5605, i64* %RDX.i375, align 8
  store %struct.Memory* %loadMem_409f8e, %struct.Memory** %MEMORY
  %loadMem_409f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 33
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %5608 to i64*
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 7
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %RDX.i373 = bitcast %union.anon* %5611 to i64*
  %5612 = load i64, i64* %RDX.i373
  %5613 = mul i64 %5612, 4
  %5614 = add i64 %5613, 11187184
  %5615 = load i64, i64* %PC.i372
  %5616 = add i64 %5615, 8
  store i64 %5616, i64* %PC.i372
  %5617 = inttoptr i64 %5614 to i32*
  %5618 = load i32, i32* %5617
  %5619 = sext i32 %5618 to i64
  store i64 %5619, i64* %RDX.i373, align 8
  store %struct.Memory* %loadMem_409f92, %struct.Memory** %MEMORY
  %loadMem_409f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 33
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 7
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %5625 to i64*
  %5626 = load i64, i64* %RDX.i371
  %5627 = load i64, i64* %PC.i370
  %5628 = add i64 %5627, 7
  store i64 %5628, i64* %PC.i370
  %5629 = sext i64 %5626 to i128
  %5630 = and i128 %5629, -18446744073709551616
  %5631 = zext i64 %5626 to i128
  %5632 = or i128 %5630, %5631
  %5633 = mul i128 744, %5632
  %5634 = trunc i128 %5633 to i64
  store i64 %5634, i64* %RDX.i371, align 8
  %5635 = sext i64 %5634 to i128
  %5636 = icmp ne i128 %5635, %5633
  %5637 = zext i1 %5636 to i8
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5637, i8* %5638, align 1
  %5639 = trunc i128 %5633 to i32
  %5640 = and i32 %5639, 255
  %5641 = call i32 @llvm.ctpop.i32(i32 %5640)
  %5642 = trunc i32 %5641 to i8
  %5643 = and i8 %5642, 1
  %5644 = xor i8 %5643, 1
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5644, i8* %5645, align 1
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5646, align 1
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5647, align 1
  %5648 = lshr i64 %5634, 63
  %5649 = trunc i64 %5648 to i8
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5649, i8* %5650, align 1
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5637, i8* %5651, align 1
  store %struct.Memory* %loadMem_409f9a, %struct.Memory** %MEMORY
  %loadMem_409fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 33
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5654 to i64*
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 1
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 7
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RDX.i369 = bitcast %union.anon* %5660 to i64*
  %5661 = load i64, i64* %RAX.i368
  %5662 = load i64, i64* %RDX.i369
  %5663 = load i64, i64* %PC.i367
  %5664 = add i64 %5663, 3
  store i64 %5664, i64* %PC.i367
  %5665 = add i64 %5662, %5661
  store i64 %5665, i64* %RAX.i368, align 8
  %5666 = icmp ult i64 %5665, %5661
  %5667 = icmp ult i64 %5665, %5662
  %5668 = or i1 %5666, %5667
  %5669 = zext i1 %5668 to i8
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5669, i8* %5670, align 1
  %5671 = trunc i64 %5665 to i32
  %5672 = and i32 %5671, 255
  %5673 = call i32 @llvm.ctpop.i32(i32 %5672)
  %5674 = trunc i32 %5673 to i8
  %5675 = and i8 %5674, 1
  %5676 = xor i8 %5675, 1
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5676, i8* %5677, align 1
  %5678 = xor i64 %5662, %5661
  %5679 = xor i64 %5678, %5665
  %5680 = lshr i64 %5679, 4
  %5681 = trunc i64 %5680 to i8
  %5682 = and i8 %5681, 1
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5682, i8* %5683, align 1
  %5684 = icmp eq i64 %5665, 0
  %5685 = zext i1 %5684 to i8
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5685, i8* %5686, align 1
  %5687 = lshr i64 %5665, 63
  %5688 = trunc i64 %5687 to i8
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5688, i8* %5689, align 1
  %5690 = lshr i64 %5661, 63
  %5691 = lshr i64 %5662, 63
  %5692 = xor i64 %5687, %5690
  %5693 = xor i64 %5687, %5691
  %5694 = add i64 %5692, %5693
  %5695 = icmp eq i64 %5694, 2
  %5696 = zext i1 %5695 to i8
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5696, i8* %5697, align 1
  store %struct.Memory* %loadMem_409fa1, %struct.Memory** %MEMORY
  %loadMem_409fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 33
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %5700 to i64*
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 5
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %ECX.i365 = bitcast %union.anon* %5703 to i32*
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 1
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %5706 to i64*
  %5707 = load i64, i64* %RAX.i366
  %5708 = add i64 %5707, 740
  %5709 = load i32, i32* %ECX.i365
  %5710 = zext i32 %5709 to i64
  %5711 = load i64, i64* %PC.i364
  %5712 = add i64 %5711, 6
  store i64 %5712, i64* %PC.i364
  %5713 = inttoptr i64 %5708 to i32*
  store i32 %5709, i32* %5713
  store %struct.Memory* %loadMem_409fa4, %struct.Memory** %MEMORY
  %loadMem_409faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 33
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5716 to i64*
  %5717 = load i64, i64* %PC.i363
  %5718 = add i64 %5717, 146
  %5719 = load i64, i64* %PC.i363
  %5720 = add i64 %5719, 5
  store i64 %5720, i64* %PC.i363
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5718, i64* %5721, align 8
  store %struct.Memory* %loadMem_409faa, %struct.Memory** %MEMORY
  br label %block_.L_40a03c

block_.L_409faf:                                  ; preds = %block_409f33, %block_.L_409f1e
  %loadMem_409faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 33
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5724 to i64*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 1
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %5727 to i64*
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 15
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %5730 to i64*
  %5731 = load i64, i64* %RBP.i362
  %5732 = sub i64 %5731, 36
  %5733 = load i64, i64* %PC.i360
  %5734 = add i64 %5733, 4
  store i64 %5734, i64* %PC.i360
  %5735 = inttoptr i64 %5732 to i32*
  %5736 = load i32, i32* %5735
  %5737 = sext i32 %5736 to i64
  store i64 %5737, i64* %RAX.i361, align 8
  store %struct.Memory* %loadMem_409faf, %struct.Memory** %MEMORY
  %loadMem_409fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 33
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5740 to i64*
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 1
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %5743 to i64*
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 5
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %5746 to i64*
  %5747 = load i64, i64* %RAX.i358
  %5748 = add i64 %5747, 12099168
  %5749 = load i64, i64* %PC.i357
  %5750 = add i64 %5749, 8
  store i64 %5750, i64* %PC.i357
  %5751 = inttoptr i64 %5748 to i8*
  %5752 = load i8, i8* %5751
  %5753 = zext i8 %5752 to i64
  store i64 %5753, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_409fb3, %struct.Memory** %MEMORY
  %loadMem_409fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 33
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5756 to i64*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 5
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %ECX.i355 = bitcast %union.anon* %5759 to i32*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 15
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %5762 to i64*
  %5763 = load i32, i32* %ECX.i355
  %5764 = zext i32 %5763 to i64
  %5765 = load i64, i64* %RBP.i356
  %5766 = sub i64 %5765, 12
  %5767 = load i64, i64* %PC.i354
  %5768 = add i64 %5767, 3
  store i64 %5768, i64* %PC.i354
  %5769 = inttoptr i64 %5766 to i32*
  %5770 = load i32, i32* %5769
  %5771 = sub i32 %5763, %5770
  %5772 = icmp ult i32 %5763, %5770
  %5773 = zext i1 %5772 to i8
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5773, i8* %5774, align 1
  %5775 = and i32 %5771, 255
  %5776 = call i32 @llvm.ctpop.i32(i32 %5775)
  %5777 = trunc i32 %5776 to i8
  %5778 = and i8 %5777, 1
  %5779 = xor i8 %5778, 1
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5779, i8* %5780, align 1
  %5781 = xor i32 %5770, %5763
  %5782 = xor i32 %5781, %5771
  %5783 = lshr i32 %5782, 4
  %5784 = trunc i32 %5783 to i8
  %5785 = and i8 %5784, 1
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5785, i8* %5786, align 1
  %5787 = icmp eq i32 %5771, 0
  %5788 = zext i1 %5787 to i8
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5788, i8* %5789, align 1
  %5790 = lshr i32 %5771, 31
  %5791 = trunc i32 %5790 to i8
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5791, i8* %5792, align 1
  %5793 = lshr i32 %5763, 31
  %5794 = lshr i32 %5770, 31
  %5795 = xor i32 %5794, %5793
  %5796 = xor i32 %5790, %5793
  %5797 = add i32 %5796, %5795
  %5798 = icmp eq i32 %5797, 2
  %5799 = zext i1 %5798 to i8
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5799, i8* %5800, align 1
  store %struct.Memory* %loadMem_409fbb, %struct.Memory** %MEMORY
  %loadMem_409fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 33
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5803 to i64*
  %5804 = load i64, i64* %PC.i353
  %5805 = add i64 %5804, 121
  %5806 = load i64, i64* %PC.i353
  %5807 = add i64 %5806, 6
  %5808 = load i64, i64* %PC.i353
  %5809 = add i64 %5808, 6
  store i64 %5809, i64* %PC.i353
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5811 = load i8, i8* %5810, align 1
  %5812 = icmp eq i8 %5811, 0
  %5813 = zext i1 %5812 to i8
  store i8 %5813, i8* %BRANCH_TAKEN, align 1
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5815 = select i1 %5812, i64 %5805, i64 %5807
  store i64 %5815, i64* %5814, align 8
  store %struct.Memory* %loadMem_409fbe, %struct.Memory** %MEMORY
  %loadBr_409fbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409fbe = icmp eq i8 %loadBr_409fbe, 1
  br i1 %cmpBr_409fbe, label %block_.L_40a037, label %block_409fc4

block_409fc4:                                     ; preds = %block_.L_409faf
  %loadMem_409fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 1
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %5821 to i64*
  %5822 = load i64, i64* %PC.i351
  %5823 = add i64 %5822, 10
  store i64 %5823, i64* %PC.i351
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_409fc4, %struct.Memory** %MEMORY
  %loadMem_409fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5825 = getelementptr inbounds %struct.GPR, %struct.GPR* %5824, i32 0, i32 33
  %5826 = getelementptr inbounds %struct.Reg, %struct.Reg* %5825, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5826 to i64*
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 5
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %5829 to i64*
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 15
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %5832 to i64*
  %5833 = load i64, i64* %RBP.i350
  %5834 = sub i64 %5833, 36
  %5835 = load i64, i64* %PC.i348
  %5836 = add i64 %5835, 4
  store i64 %5836, i64* %PC.i348
  %5837 = inttoptr i64 %5834 to i32*
  %5838 = load i32, i32* %5837
  %5839 = sext i32 %5838 to i64
  store i64 %5839, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_409fce, %struct.Memory** %MEMORY
  %loadMem_409fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 33
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5842 to i64*
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5844 = getelementptr inbounds %struct.GPR, %struct.GPR* %5843, i32 0, i32 5
  %5845 = getelementptr inbounds %struct.Reg, %struct.Reg* %5844, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %5845 to i64*
  %5846 = load i64, i64* %RCX.i347
  %5847 = mul i64 %5846, 4
  %5848 = add i64 %5847, 11187184
  %5849 = load i64, i64* %PC.i346
  %5850 = add i64 %5849, 8
  store i64 %5850, i64* %PC.i346
  %5851 = inttoptr i64 %5848 to i32*
  %5852 = load i32, i32* %5851
  %5853 = sext i32 %5852 to i64
  store i64 %5853, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_409fd2, %struct.Memory** %MEMORY
  %loadMem_409fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5855 = getelementptr inbounds %struct.GPR, %struct.GPR* %5854, i32 0, i32 33
  %5856 = getelementptr inbounds %struct.Reg, %struct.Reg* %5855, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5856 to i64*
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 5
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %5859 to i64*
  %5860 = load i64, i64* %RCX.i345
  %5861 = load i64, i64* %PC.i344
  %5862 = add i64 %5861, 7
  store i64 %5862, i64* %PC.i344
  %5863 = sext i64 %5860 to i128
  %5864 = and i128 %5863, -18446744073709551616
  %5865 = zext i64 %5860 to i128
  %5866 = or i128 %5864, %5865
  %5867 = mul i128 744, %5866
  %5868 = trunc i128 %5867 to i64
  store i64 %5868, i64* %RCX.i345, align 8
  %5869 = sext i64 %5868 to i128
  %5870 = icmp ne i128 %5869, %5867
  %5871 = zext i1 %5870 to i8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5871, i8* %5872, align 1
  %5873 = trunc i128 %5867 to i32
  %5874 = and i32 %5873, 255
  %5875 = call i32 @llvm.ctpop.i32(i32 %5874)
  %5876 = trunc i32 %5875 to i8
  %5877 = and i8 %5876, 1
  %5878 = xor i8 %5877, 1
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5878, i8* %5879, align 1
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5880, align 1
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5881, align 1
  %5882 = lshr i64 %5868, 63
  %5883 = trunc i64 %5882 to i8
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5883, i8* %5884, align 1
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5871, i8* %5885, align 1
  store %struct.Memory* %loadMem_409fda, %struct.Memory** %MEMORY
  %loadMem_409fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 33
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 1
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 5
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5894 to i64*
  %5895 = load i64, i64* %RAX.i342
  %5896 = load i64, i64* %RCX.i343
  %5897 = load i64, i64* %PC.i341
  %5898 = add i64 %5897, 3
  store i64 %5898, i64* %PC.i341
  %5899 = add i64 %5896, %5895
  store i64 %5899, i64* %RAX.i342, align 8
  %5900 = icmp ult i64 %5899, %5895
  %5901 = icmp ult i64 %5899, %5896
  %5902 = or i1 %5900, %5901
  %5903 = zext i1 %5902 to i8
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5903, i8* %5904, align 1
  %5905 = trunc i64 %5899 to i32
  %5906 = and i32 %5905, 255
  %5907 = call i32 @llvm.ctpop.i32(i32 %5906)
  %5908 = trunc i32 %5907 to i8
  %5909 = and i8 %5908, 1
  %5910 = xor i8 %5909, 1
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5910, i8* %5911, align 1
  %5912 = xor i64 %5896, %5895
  %5913 = xor i64 %5912, %5899
  %5914 = lshr i64 %5913, 4
  %5915 = trunc i64 %5914 to i8
  %5916 = and i8 %5915, 1
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5916, i8* %5917, align 1
  %5918 = icmp eq i64 %5899, 0
  %5919 = zext i1 %5918 to i8
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5919, i8* %5920, align 1
  %5921 = lshr i64 %5899, 63
  %5922 = trunc i64 %5921 to i8
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5922, i8* %5923, align 1
  %5924 = lshr i64 %5895, 63
  %5925 = lshr i64 %5896, 63
  %5926 = xor i64 %5921, %5924
  %5927 = xor i64 %5921, %5925
  %5928 = add i64 %5926, %5927
  %5929 = icmp eq i64 %5928, 2
  %5930 = zext i1 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5930, i8* %5931, align 1
  store %struct.Memory* %loadMem_409fe1, %struct.Memory** %MEMORY
  %loadMem_409fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 33
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 1
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %5937 to i64*
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5939 = getelementptr inbounds %struct.GPR, %struct.GPR* %5938, i32 0, i32 7
  %5940 = getelementptr inbounds %struct.Reg, %struct.Reg* %5939, i32 0, i32 0
  %RDX.i340 = bitcast %union.anon* %5940 to i64*
  %5941 = load i64, i64* %RAX.i339
  %5942 = add i64 %5941, 740
  %5943 = load i64, i64* %PC.i338
  %5944 = add i64 %5943, 6
  store i64 %5944, i64* %PC.i338
  %5945 = inttoptr i64 %5942 to i32*
  %5946 = load i32, i32* %5945
  %5947 = zext i32 %5946 to i64
  store i64 %5947, i64* %RDX.i340, align 8
  store %struct.Memory* %loadMem_409fe4, %struct.Memory** %MEMORY
  %loadMem_409fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 33
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5950 to i64*
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 7
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %EDX.i337 = bitcast %union.anon* %5953 to i32*
  %5954 = load i32, i32* %EDX.i337
  %5955 = zext i32 %5954 to i64
  %5956 = load i64, i64* %PC.i336
  %5957 = add i64 %5956, 7
  store i64 %5957, i64* %PC.i336
  %5958 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %5959 = sub i32 %5954, %5958
  %5960 = icmp ult i32 %5954, %5958
  %5961 = zext i1 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5961, i8* %5962, align 1
  %5963 = and i32 %5959, 255
  %5964 = call i32 @llvm.ctpop.i32(i32 %5963)
  %5965 = trunc i32 %5964 to i8
  %5966 = and i8 %5965, 1
  %5967 = xor i8 %5966, 1
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5967, i8* %5968, align 1
  %5969 = xor i32 %5958, %5954
  %5970 = xor i32 %5969, %5959
  %5971 = lshr i32 %5970, 4
  %5972 = trunc i32 %5971 to i8
  %5973 = and i8 %5972, 1
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5973, i8* %5974, align 1
  %5975 = icmp eq i32 %5959, 0
  %5976 = zext i1 %5975 to i8
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5976, i8* %5977, align 1
  %5978 = lshr i32 %5959, 31
  %5979 = trunc i32 %5978 to i8
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5979, i8* %5980, align 1
  %5981 = lshr i32 %5954, 31
  %5982 = lshr i32 %5958, 31
  %5983 = xor i32 %5982, %5981
  %5984 = xor i32 %5978, %5981
  %5985 = add i32 %5984, %5983
  %5986 = icmp eq i32 %5985, 2
  %5987 = zext i1 %5986 to i8
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5987, i8* %5988, align 1
  store %struct.Memory* %loadMem_409fea, %struct.Memory** %MEMORY
  %loadMem_409ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 33
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5991 to i64*
  %5992 = load i64, i64* %PC.i335
  %5993 = add i64 %5992, 70
  %5994 = load i64, i64* %PC.i335
  %5995 = add i64 %5994, 6
  %5996 = load i64, i64* %PC.i335
  %5997 = add i64 %5996, 6
  store i64 %5997, i64* %PC.i335
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5999 = load i8, i8* %5998, align 1
  store i8 %5999, i8* %BRANCH_TAKEN, align 1
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6001 = icmp ne i8 %5999, 0
  %6002 = select i1 %6001, i64 %5993, i64 %5995
  store i64 %6002, i64* %6000, align 8
  store %struct.Memory* %loadMem_409ff1, %struct.Memory** %MEMORY
  %loadBr_409ff1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ff1 = icmp eq i8 %loadBr_409ff1, 1
  br i1 %cmpBr_409ff1, label %block_.L_40a037, label %block_409ff7

block_409ff7:                                     ; preds = %block_409fc4
  %loadMem_409ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 33
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %6005 to i64*
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6007 = getelementptr inbounds %struct.GPR, %struct.GPR* %6006, i32 0, i32 1
  %6008 = getelementptr inbounds %struct.Reg, %struct.Reg* %6007, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %6008 to i64*
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 15
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %6011 to i64*
  %6012 = load i64, i64* %RBP.i334
  %6013 = sub i64 %6012, 36
  %6014 = load i64, i64* %PC.i332
  %6015 = add i64 %6014, 4
  store i64 %6015, i64* %PC.i332
  %6016 = inttoptr i64 %6013 to i32*
  %6017 = load i32, i32* %6016
  %6018 = sext i32 %6017 to i64
  store i64 %6018, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_409ff7, %struct.Memory** %MEMORY
  %loadMem_409ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 33
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %6021 to i64*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 1
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %6024 to i64*
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6026 = getelementptr inbounds %struct.GPR, %struct.GPR* %6025, i32 0, i32 11
  %6027 = getelementptr inbounds %struct.Reg, %struct.Reg* %6026, i32 0, i32 0
  %RDI.i331 = bitcast %union.anon* %6027 to i64*
  %6028 = load i64, i64* %RAX.i330
  %6029 = mul i64 %6028, 4
  %6030 = add i64 %6029, 11187184
  %6031 = load i64, i64* %PC.i329
  %6032 = add i64 %6031, 7
  store i64 %6032, i64* %PC.i329
  %6033 = inttoptr i64 %6030 to i32*
  %6034 = load i32, i32* %6033
  %6035 = zext i32 %6034 to i64
  store i64 %6035, i64* %RDI.i331, align 8
  store %struct.Memory* %loadMem_409ffb, %struct.Memory** %MEMORY
  %loadMem_40a002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 33
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %6038 to i64*
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 9
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %RSI.i327 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 15
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %6044 to i64*
  %6045 = load i64, i64* %RBP.i328
  %6046 = sub i64 %6045, 4
  %6047 = load i64, i64* %PC.i326
  %6048 = add i64 %6047, 3
  store i64 %6048, i64* %PC.i326
  %6049 = inttoptr i64 %6046 to i32*
  %6050 = load i32, i32* %6049
  %6051 = zext i32 %6050 to i64
  store i64 %6051, i64* %RSI.i327, align 8
  store %struct.Memory* %loadMem_40a002, %struct.Memory** %MEMORY
  %loadMem1_40a005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 33
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %6054 to i64*
  %6055 = load i64, i64* %PC.i325
  %6056 = add i64 %6055, 1723
  %6057 = load i64, i64* %PC.i325
  %6058 = add i64 %6057, 5
  %6059 = load i64, i64* %PC.i325
  %6060 = add i64 %6059, 5
  store i64 %6060, i64* %PC.i325
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6062 = load i64, i64* %6061, align 8
  %6063 = add i64 %6062, -8
  %6064 = inttoptr i64 %6063 to i64*
  store i64 %6058, i64* %6064
  store i64 %6063, i64* %6061, align 8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6056, i64* %6065, align 8
  store %struct.Memory* %loadMem1_40a005, %struct.Memory** %MEMORY
  %loadMem2_40a005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a005 = load i64, i64* %3
  %call2_40a005 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64 %loadPC_40a005, %struct.Memory* %loadMem2_40a005)
  store %struct.Memory* %call2_40a005, %struct.Memory** %MEMORY
  %loadMem_40a00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 33
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %6068 to i64*
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 1
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %6071 to i64*
  %6072 = load i64, i64* %PC.i323
  %6073 = add i64 %6072, 10
  store i64 %6073, i64* %PC.i323
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_40a00a, %struct.Memory** %MEMORY
  %loadMem_40a014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 33
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %6076 to i64*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 9
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RSI.i322 = bitcast %union.anon* %6079 to i64*
  %6080 = load i64, i64* %PC.i321
  %6081 = add i64 %6080, 7
  store i64 %6081, i64* %PC.i321
  %6082 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %6083 = zext i32 %6082 to i64
  store i64 %6083, i64* %RSI.i322, align 8
  store %struct.Memory* %loadMem_40a014, %struct.Memory** %MEMORY
  %loadMem_40a01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 33
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %6086 to i64*
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 5
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %6089 to i64*
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 15
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %6092 to i64*
  %6093 = load i64, i64* %RBP.i320
  %6094 = sub i64 %6093, 36
  %6095 = load i64, i64* %PC.i318
  %6096 = add i64 %6095, 4
  store i64 %6096, i64* %PC.i318
  %6097 = inttoptr i64 %6094 to i32*
  %6098 = load i32, i32* %6097
  %6099 = sext i32 %6098 to i64
  store i64 %6099, i64* %RCX.i319, align 8
  store %struct.Memory* %loadMem_40a01b, %struct.Memory** %MEMORY
  %loadMem_40a01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 33
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %6102 to i64*
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6104 = getelementptr inbounds %struct.GPR, %struct.GPR* %6103, i32 0, i32 5
  %6105 = getelementptr inbounds %struct.Reg, %struct.Reg* %6104, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %6105 to i64*
  %6106 = load i64, i64* %RCX.i317
  %6107 = mul i64 %6106, 4
  %6108 = add i64 %6107, 11187184
  %6109 = load i64, i64* %PC.i316
  %6110 = add i64 %6109, 8
  store i64 %6110, i64* %PC.i316
  %6111 = inttoptr i64 %6108 to i32*
  %6112 = load i32, i32* %6111
  %6113 = sext i32 %6112 to i64
  store i64 %6113, i64* %RCX.i317, align 8
  store %struct.Memory* %loadMem_40a01f, %struct.Memory** %MEMORY
  %loadMem_40a027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 33
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %6116 to i64*
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6118 = getelementptr inbounds %struct.GPR, %struct.GPR* %6117, i32 0, i32 5
  %6119 = getelementptr inbounds %struct.Reg, %struct.Reg* %6118, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %6119 to i64*
  %6120 = load i64, i64* %RCX.i315
  %6121 = load i64, i64* %PC.i314
  %6122 = add i64 %6121, 7
  store i64 %6122, i64* %PC.i314
  %6123 = sext i64 %6120 to i128
  %6124 = and i128 %6123, -18446744073709551616
  %6125 = zext i64 %6120 to i128
  %6126 = or i128 %6124, %6125
  %6127 = mul i128 744, %6126
  %6128 = trunc i128 %6127 to i64
  store i64 %6128, i64* %RCX.i315, align 8
  %6129 = sext i64 %6128 to i128
  %6130 = icmp ne i128 %6129, %6127
  %6131 = zext i1 %6130 to i8
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6131, i8* %6132, align 1
  %6133 = trunc i128 %6127 to i32
  %6134 = and i32 %6133, 255
  %6135 = call i32 @llvm.ctpop.i32(i32 %6134)
  %6136 = trunc i32 %6135 to i8
  %6137 = and i8 %6136, 1
  %6138 = xor i8 %6137, 1
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6138, i8* %6139, align 1
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6140, align 1
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6141, align 1
  %6142 = lshr i64 %6128, 63
  %6143 = trunc i64 %6142 to i8
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6143, i8* %6144, align 1
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6131, i8* %6145, align 1
  store %struct.Memory* %loadMem_40a027, %struct.Memory** %MEMORY
  %loadMem_40a02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 33
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %6148 to i64*
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6150 = getelementptr inbounds %struct.GPR, %struct.GPR* %6149, i32 0, i32 1
  %6151 = getelementptr inbounds %struct.Reg, %struct.Reg* %6150, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %6151 to i64*
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 5
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %6154 to i64*
  %6155 = load i64, i64* %RAX.i312
  %6156 = load i64, i64* %RCX.i313
  %6157 = load i64, i64* %PC.i311
  %6158 = add i64 %6157, 3
  store i64 %6158, i64* %PC.i311
  %6159 = add i64 %6156, %6155
  store i64 %6159, i64* %RAX.i312, align 8
  %6160 = icmp ult i64 %6159, %6155
  %6161 = icmp ult i64 %6159, %6156
  %6162 = or i1 %6160, %6161
  %6163 = zext i1 %6162 to i8
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6163, i8* %6164, align 1
  %6165 = trunc i64 %6159 to i32
  %6166 = and i32 %6165, 255
  %6167 = call i32 @llvm.ctpop.i32(i32 %6166)
  %6168 = trunc i32 %6167 to i8
  %6169 = and i8 %6168, 1
  %6170 = xor i8 %6169, 1
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6170, i8* %6171, align 1
  %6172 = xor i64 %6156, %6155
  %6173 = xor i64 %6172, %6159
  %6174 = lshr i64 %6173, 4
  %6175 = trunc i64 %6174 to i8
  %6176 = and i8 %6175, 1
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6176, i8* %6177, align 1
  %6178 = icmp eq i64 %6159, 0
  %6179 = zext i1 %6178 to i8
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6179, i8* %6180, align 1
  %6181 = lshr i64 %6159, 63
  %6182 = trunc i64 %6181 to i8
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6182, i8* %6183, align 1
  %6184 = lshr i64 %6155, 63
  %6185 = lshr i64 %6156, 63
  %6186 = xor i64 %6181, %6184
  %6187 = xor i64 %6181, %6185
  %6188 = add i64 %6186, %6187
  %6189 = icmp eq i64 %6188, 2
  %6190 = zext i1 %6189 to i8
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6190, i8* %6191, align 1
  store %struct.Memory* %loadMem_40a02e, %struct.Memory** %MEMORY
  %loadMem_40a031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6193 = getelementptr inbounds %struct.GPR, %struct.GPR* %6192, i32 0, i32 33
  %6194 = getelementptr inbounds %struct.Reg, %struct.Reg* %6193, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %6194 to i64*
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 9
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %ESI.i309 = bitcast %union.anon* %6197 to i32*
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 1
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %6200 to i64*
  %6201 = load i64, i64* %RAX.i310
  %6202 = add i64 %6201, 740
  %6203 = load i32, i32* %ESI.i309
  %6204 = zext i32 %6203 to i64
  %6205 = load i64, i64* %PC.i308
  %6206 = add i64 %6205, 6
  store i64 %6206, i64* %PC.i308
  %6207 = inttoptr i64 %6202 to i32*
  store i32 %6203, i32* %6207
  store %struct.Memory* %loadMem_40a031, %struct.Memory** %MEMORY
  br label %block_.L_40a037

block_.L_40a037:                                  ; preds = %block_409ff7, %block_409fc4, %block_.L_409faf
  %loadMem_40a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 33
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6210 to i64*
  %6211 = load i64, i64* %PC.i307
  %6212 = add i64 %6211, 5
  %6213 = load i64, i64* %PC.i307
  %6214 = add i64 %6213, 5
  store i64 %6214, i64* %PC.i307
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6212, i64* %6215, align 8
  store %struct.Memory* %loadMem_40a037, %struct.Memory** %MEMORY
  br label %block_.L_40a03c

block_.L_40a03c:                                  ; preds = %block_.L_40a037, %block_409f66
  %loadMem_40a03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6217 = getelementptr inbounds %struct.GPR, %struct.GPR* %6216, i32 0, i32 33
  %6218 = getelementptr inbounds %struct.Reg, %struct.Reg* %6217, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6218 to i64*
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 1
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 15
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6224 to i64*
  %6225 = load i64, i64* %RBP.i306
  %6226 = sub i64 %6225, 40
  %6227 = load i64, i64* %PC.i304
  %6228 = add i64 %6227, 4
  store i64 %6228, i64* %PC.i304
  %6229 = inttoptr i64 %6226 to i32*
  %6230 = load i32, i32* %6229
  %6231 = sext i32 %6230 to i64
  store i64 %6231, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_40a03c, %struct.Memory** %MEMORY
  %loadMem_40a040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 33
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %6234 to i64*
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 1
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 5
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %6240 to i64*
  %6241 = load i64, i64* %RAX.i302
  %6242 = add i64 %6241, 12099168
  %6243 = load i64, i64* %PC.i301
  %6244 = add i64 %6243, 8
  store i64 %6244, i64* %PC.i301
  %6245 = inttoptr i64 %6242 to i8*
  %6246 = load i8, i8* %6245
  %6247 = zext i8 %6246 to i64
  store i64 %6247, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_40a040, %struct.Memory** %MEMORY
  %loadMem_40a048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 33
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %6250 to i64*
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 5
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %ECX.i299 = bitcast %union.anon* %6253 to i32*
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 15
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %6256 to i64*
  %6257 = load i32, i32* %ECX.i299
  %6258 = zext i32 %6257 to i64
  %6259 = load i64, i64* %RBP.i300
  %6260 = sub i64 %6259, 8
  %6261 = load i64, i64* %PC.i298
  %6262 = add i64 %6261, 3
  store i64 %6262, i64* %PC.i298
  %6263 = inttoptr i64 %6260 to i32*
  %6264 = load i32, i32* %6263
  %6265 = sub i32 %6257, %6264
  %6266 = icmp ult i32 %6257, %6264
  %6267 = zext i1 %6266 to i8
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6267, i8* %6268, align 1
  %6269 = and i32 %6265, 255
  %6270 = call i32 @llvm.ctpop.i32(i32 %6269)
  %6271 = trunc i32 %6270 to i8
  %6272 = and i8 %6271, 1
  %6273 = xor i8 %6272, 1
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6273, i8* %6274, align 1
  %6275 = xor i32 %6264, %6257
  %6276 = xor i32 %6275, %6265
  %6277 = lshr i32 %6276, 4
  %6278 = trunc i32 %6277 to i8
  %6279 = and i8 %6278, 1
  %6280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6279, i8* %6280, align 1
  %6281 = icmp eq i32 %6265, 0
  %6282 = zext i1 %6281 to i8
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6282, i8* %6283, align 1
  %6284 = lshr i32 %6265, 31
  %6285 = trunc i32 %6284 to i8
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6285, i8* %6286, align 1
  %6287 = lshr i32 %6257, 31
  %6288 = lshr i32 %6264, 31
  %6289 = xor i32 %6288, %6287
  %6290 = xor i32 %6284, %6287
  %6291 = add i32 %6290, %6289
  %6292 = icmp eq i32 %6291, 2
  %6293 = zext i1 %6292 to i8
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6293, i8* %6294, align 1
  store %struct.Memory* %loadMem_40a048, %struct.Memory** %MEMORY
  %loadMem_40a04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6296 = getelementptr inbounds %struct.GPR, %struct.GPR* %6295, i32 0, i32 33
  %6297 = getelementptr inbounds %struct.Reg, %struct.Reg* %6296, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %6297 to i64*
  %6298 = load i64, i64* %PC.i297
  %6299 = add i64 %6298, 130
  %6300 = load i64, i64* %PC.i297
  %6301 = add i64 %6300, 6
  %6302 = load i64, i64* %PC.i297
  %6303 = add i64 %6302, 6
  store i64 %6303, i64* %PC.i297
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6305 = load i8, i8* %6304, align 1
  %6306 = icmp eq i8 %6305, 0
  %6307 = zext i1 %6306 to i8
  store i8 %6307, i8* %BRANCH_TAKEN, align 1
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6309 = select i1 %6306, i64 %6299, i64 %6301
  store i64 %6309, i64* %6308, align 8
  store %struct.Memory* %loadMem_40a04b, %struct.Memory** %MEMORY
  %loadBr_40a04b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a04b = icmp eq i8 %loadBr_40a04b, 1
  br i1 %cmpBr_40a04b, label %block_.L_40a0cd, label %block_40a051

block_40a051:                                     ; preds = %block_.L_40a03c
  %loadMem_40a051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 33
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %6312 to i64*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 1
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %6315 to i64*
  %6316 = load i64, i64* %PC.i295
  %6317 = add i64 %6316, 10
  store i64 %6317, i64* %PC.i295
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_40a051, %struct.Memory** %MEMORY
  %loadMem_40a05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6319 = getelementptr inbounds %struct.GPR, %struct.GPR* %6318, i32 0, i32 33
  %6320 = getelementptr inbounds %struct.Reg, %struct.Reg* %6319, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %6320 to i64*
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6322 = getelementptr inbounds %struct.GPR, %struct.GPR* %6321, i32 0, i32 5
  %6323 = getelementptr inbounds %struct.Reg, %struct.Reg* %6322, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %6323 to i64*
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 15
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %6326 to i64*
  %6327 = load i64, i64* %RBP.i294
  %6328 = sub i64 %6327, 40
  %6329 = load i64, i64* %PC.i292
  %6330 = add i64 %6329, 4
  store i64 %6330, i64* %PC.i292
  %6331 = inttoptr i64 %6328 to i32*
  %6332 = load i32, i32* %6331
  %6333 = sext i32 %6332 to i64
  store i64 %6333, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_40a05b, %struct.Memory** %MEMORY
  %loadMem_40a05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6335 = getelementptr inbounds %struct.GPR, %struct.GPR* %6334, i32 0, i32 33
  %6336 = getelementptr inbounds %struct.Reg, %struct.Reg* %6335, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %6336 to i64*
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6338 = getelementptr inbounds %struct.GPR, %struct.GPR* %6337, i32 0, i32 5
  %6339 = getelementptr inbounds %struct.Reg, %struct.Reg* %6338, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %6339 to i64*
  %6340 = load i64, i64* %RCX.i291
  %6341 = mul i64 %6340, 4
  %6342 = add i64 %6341, 11187184
  %6343 = load i64, i64* %PC.i290
  %6344 = add i64 %6343, 8
  store i64 %6344, i64* %PC.i290
  %6345 = inttoptr i64 %6342 to i32*
  %6346 = load i32, i32* %6345
  %6347 = sext i32 %6346 to i64
  store i64 %6347, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_40a05f, %struct.Memory** %MEMORY
  %loadMem_40a067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 33
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %6350 to i64*
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 5
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %6353 to i64*
  %6354 = load i64, i64* %RCX.i289
  %6355 = load i64, i64* %PC.i288
  %6356 = add i64 %6355, 7
  store i64 %6356, i64* %PC.i288
  %6357 = sext i64 %6354 to i128
  %6358 = and i128 %6357, -18446744073709551616
  %6359 = zext i64 %6354 to i128
  %6360 = or i128 %6358, %6359
  %6361 = mul i128 744, %6360
  %6362 = trunc i128 %6361 to i64
  store i64 %6362, i64* %RCX.i289, align 8
  %6363 = sext i64 %6362 to i128
  %6364 = icmp ne i128 %6363, %6361
  %6365 = zext i1 %6364 to i8
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6365, i8* %6366, align 1
  %6367 = trunc i128 %6361 to i32
  %6368 = and i32 %6367, 255
  %6369 = call i32 @llvm.ctpop.i32(i32 %6368)
  %6370 = trunc i32 %6369 to i8
  %6371 = and i8 %6370, 1
  %6372 = xor i8 %6371, 1
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6372, i8* %6373, align 1
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6374, align 1
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6375, align 1
  %6376 = lshr i64 %6362, 63
  %6377 = trunc i64 %6376 to i8
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6377, i8* %6378, align 1
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6365, i8* %6379, align 1
  store %struct.Memory* %loadMem_40a067, %struct.Memory** %MEMORY
  %loadMem_40a06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 33
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %6382 to i64*
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 1
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 5
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %6388 to i64*
  %6389 = load i64, i64* %RAX.i286
  %6390 = load i64, i64* %RCX.i287
  %6391 = load i64, i64* %PC.i285
  %6392 = add i64 %6391, 3
  store i64 %6392, i64* %PC.i285
  %6393 = add i64 %6390, %6389
  store i64 %6393, i64* %RAX.i286, align 8
  %6394 = icmp ult i64 %6393, %6389
  %6395 = icmp ult i64 %6393, %6390
  %6396 = or i1 %6394, %6395
  %6397 = zext i1 %6396 to i8
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6397, i8* %6398, align 1
  %6399 = trunc i64 %6393 to i32
  %6400 = and i32 %6399, 255
  %6401 = call i32 @llvm.ctpop.i32(i32 %6400)
  %6402 = trunc i32 %6401 to i8
  %6403 = and i8 %6402, 1
  %6404 = xor i8 %6403, 1
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6404, i8* %6405, align 1
  %6406 = xor i64 %6390, %6389
  %6407 = xor i64 %6406, %6393
  %6408 = lshr i64 %6407, 4
  %6409 = trunc i64 %6408 to i8
  %6410 = and i8 %6409, 1
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6410, i8* %6411, align 1
  %6412 = icmp eq i64 %6393, 0
  %6413 = zext i1 %6412 to i8
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6413, i8* %6414, align 1
  %6415 = lshr i64 %6393, 63
  %6416 = trunc i64 %6415 to i8
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6416, i8* %6417, align 1
  %6418 = lshr i64 %6389, 63
  %6419 = lshr i64 %6390, 63
  %6420 = xor i64 %6415, %6418
  %6421 = xor i64 %6415, %6419
  %6422 = add i64 %6420, %6421
  %6423 = icmp eq i64 %6422, 2
  %6424 = zext i1 %6423 to i8
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6424, i8* %6425, align 1
  store %struct.Memory* %loadMem_40a06e, %struct.Memory** %MEMORY
  %loadMem_40a071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6427 = getelementptr inbounds %struct.GPR, %struct.GPR* %6426, i32 0, i32 33
  %6428 = getelementptr inbounds %struct.Reg, %struct.Reg* %6427, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %6428 to i64*
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6430 = getelementptr inbounds %struct.GPR, %struct.GPR* %6429, i32 0, i32 1
  %6431 = getelementptr inbounds %struct.Reg, %struct.Reg* %6430, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %6431 to i64*
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6433 = getelementptr inbounds %struct.GPR, %struct.GPR* %6432, i32 0, i32 7
  %6434 = getelementptr inbounds %struct.Reg, %struct.Reg* %6433, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %6434 to i64*
  %6435 = load i64, i64* %RAX.i283
  %6436 = add i64 %6435, 740
  %6437 = load i64, i64* %PC.i282
  %6438 = add i64 %6437, 6
  store i64 %6438, i64* %PC.i282
  %6439 = inttoptr i64 %6436 to i32*
  %6440 = load i32, i32* %6439
  %6441 = zext i32 %6440 to i64
  store i64 %6441, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_40a071, %struct.Memory** %MEMORY
  %loadMem_40a077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 33
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %6444 to i64*
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 7
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %EDX.i281 = bitcast %union.anon* %6447 to i32*
  %6448 = load i32, i32* %EDX.i281
  %6449 = zext i32 %6448 to i64
  %6450 = load i64, i64* %PC.i280
  %6451 = add i64 %6450, 7
  store i64 %6451, i64* %PC.i280
  %6452 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %6453 = sub i32 %6448, %6452
  %6454 = icmp ult i32 %6448, %6452
  %6455 = zext i1 %6454 to i8
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6455, i8* %6456, align 1
  %6457 = and i32 %6453, 255
  %6458 = call i32 @llvm.ctpop.i32(i32 %6457)
  %6459 = trunc i32 %6458 to i8
  %6460 = and i8 %6459, 1
  %6461 = xor i8 %6460, 1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6461, i8* %6462, align 1
  %6463 = xor i32 %6452, %6448
  %6464 = xor i32 %6463, %6453
  %6465 = lshr i32 %6464, 4
  %6466 = trunc i32 %6465 to i8
  %6467 = and i8 %6466, 1
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6467, i8* %6468, align 1
  %6469 = icmp eq i32 %6453, 0
  %6470 = zext i1 %6469 to i8
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6470, i8* %6471, align 1
  %6472 = lshr i32 %6453, 31
  %6473 = trunc i32 %6472 to i8
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6473, i8* %6474, align 1
  %6475 = lshr i32 %6448, 31
  %6476 = lshr i32 %6452, 31
  %6477 = xor i32 %6476, %6475
  %6478 = xor i32 %6472, %6475
  %6479 = add i32 %6478, %6477
  %6480 = icmp eq i32 %6479, 2
  %6481 = zext i1 %6480 to i8
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6481, i8* %6482, align 1
  store %struct.Memory* %loadMem_40a077, %struct.Memory** %MEMORY
  %loadMem_40a07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 33
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %6485 to i64*
  %6486 = load i64, i64* %PC.i279
  %6487 = add i64 %6486, 79
  %6488 = load i64, i64* %PC.i279
  %6489 = add i64 %6488, 6
  %6490 = load i64, i64* %PC.i279
  %6491 = add i64 %6490, 6
  store i64 %6491, i64* %PC.i279
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6493 = load i8, i8* %6492, align 1
  store i8 %6493, i8* %BRANCH_TAKEN, align 1
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6495 = icmp ne i8 %6493, 0
  %6496 = select i1 %6495, i64 %6487, i64 %6489
  store i64 %6496, i64* %6494, align 8
  store %struct.Memory* %loadMem_40a07e, %struct.Memory** %MEMORY
  %loadBr_40a07e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a07e = icmp eq i8 %loadBr_40a07e, 1
  br i1 %cmpBr_40a07e, label %block_.L_40a0cd, label %block_40a084

block_40a084:                                     ; preds = %block_40a051
  %loadMem_40a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6498 = getelementptr inbounds %struct.GPR, %struct.GPR* %6497, i32 0, i32 33
  %6499 = getelementptr inbounds %struct.Reg, %struct.Reg* %6498, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %6499 to i64*
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 1
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %6502 to i64*
  %6503 = load i64, i64* %PC.i277
  %6504 = add i64 %6503, 10
  store i64 %6504, i64* %PC.i277
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_40a084, %struct.Memory** %MEMORY
  %loadMem_40a08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 33
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %6507 to i64*
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 5
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %6510 to i64*
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 15
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %6513 to i64*
  %6514 = load i64, i64* %RBP.i276
  %6515 = sub i64 %6514, 20
  %6516 = load i64, i64* %PC.i274
  %6517 = add i64 %6516, 3
  store i64 %6517, i64* %PC.i274
  %6518 = inttoptr i64 %6515 to i32*
  %6519 = load i32, i32* %6518
  %6520 = zext i32 %6519 to i64
  store i64 %6520, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_40a08e, %struct.Memory** %MEMORY
  %loadMem_40a091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 5
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %6526 to i64*
  %6527 = load i64, i64* %RCX.i273
  %6528 = load i64, i64* %PC.i272
  %6529 = add i64 %6528, 3
  store i64 %6529, i64* %PC.i272
  %6530 = trunc i64 %6527 to i32
  %6531 = add i32 1, %6530
  %6532 = zext i32 %6531 to i64
  store i64 %6532, i64* %RCX.i273, align 8
  %6533 = icmp ult i32 %6531, %6530
  %6534 = icmp ult i32 %6531, 1
  %6535 = or i1 %6533, %6534
  %6536 = zext i1 %6535 to i8
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6536, i8* %6537, align 1
  %6538 = and i32 %6531, 255
  %6539 = call i32 @llvm.ctpop.i32(i32 %6538)
  %6540 = trunc i32 %6539 to i8
  %6541 = and i8 %6540, 1
  %6542 = xor i8 %6541, 1
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6542, i8* %6543, align 1
  %6544 = xor i64 1, %6527
  %6545 = trunc i64 %6544 to i32
  %6546 = xor i32 %6545, %6531
  %6547 = lshr i32 %6546, 4
  %6548 = trunc i32 %6547 to i8
  %6549 = and i8 %6548, 1
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6549, i8* %6550, align 1
  %6551 = icmp eq i32 %6531, 0
  %6552 = zext i1 %6551 to i8
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6552, i8* %6553, align 1
  %6554 = lshr i32 %6531, 31
  %6555 = trunc i32 %6554 to i8
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6555, i8* %6556, align 1
  %6557 = lshr i32 %6530, 31
  %6558 = xor i32 %6554, %6557
  %6559 = add i32 %6558, %6554
  %6560 = icmp eq i32 %6559, 2
  %6561 = zext i1 %6560 to i8
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6561, i8* %6562, align 1
  store %struct.Memory* %loadMem_40a091, %struct.Memory** %MEMORY
  %loadMem_40a094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6564 = getelementptr inbounds %struct.GPR, %struct.GPR* %6563, i32 0, i32 33
  %6565 = getelementptr inbounds %struct.Reg, %struct.Reg* %6564, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %6565 to i64*
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 5
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %ECX.i270 = bitcast %union.anon* %6568 to i32*
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 15
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %6571 to i64*
  %6572 = load i64, i64* %RBP.i271
  %6573 = sub i64 %6572, 20
  %6574 = load i32, i32* %ECX.i270
  %6575 = zext i32 %6574 to i64
  %6576 = load i64, i64* %PC.i269
  %6577 = add i64 %6576, 3
  store i64 %6577, i64* %PC.i269
  %6578 = inttoptr i64 %6573 to i32*
  store i32 %6574, i32* %6578
  store %struct.Memory* %loadMem_40a094, %struct.Memory** %MEMORY
  %loadMem_40a097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 33
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %6581 to i64*
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 7
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %6584 to i64*
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 15
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %6587 to i64*
  %6588 = load i64, i64* %RBP.i268
  %6589 = sub i64 %6588, 40
  %6590 = load i64, i64* %PC.i266
  %6591 = add i64 %6590, 4
  store i64 %6591, i64* %PC.i266
  %6592 = inttoptr i64 %6589 to i32*
  %6593 = load i32, i32* %6592
  %6594 = sext i32 %6593 to i64
  store i64 %6594, i64* %RDX.i267, align 8
  store %struct.Memory* %loadMem_40a097, %struct.Memory** %MEMORY
  %loadMem_40a09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 33
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 5
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %6600 to i64*
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 7
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %6603 to i64*
  %6604 = load i64, i64* %RDX.i265
  %6605 = mul i64 %6604, 4
  %6606 = add i64 %6605, 11187184
  %6607 = load i64, i64* %PC.i263
  %6608 = add i64 %6607, 7
  store i64 %6608, i64* %PC.i263
  %6609 = inttoptr i64 %6606 to i32*
  %6610 = load i32, i32* %6609
  %6611 = zext i32 %6610 to i64
  store i64 %6611, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_40a09b, %struct.Memory** %MEMORY
  %loadMem_40a0a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 33
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6614 to i64*
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 5
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %ECX.i261 = bitcast %union.anon* %6617 to i32*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 15
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %6620 to i64*
  %6621 = load i64, i64* %RBP.i262
  %6622 = sub i64 %6621, 28
  %6623 = load i32, i32* %ECX.i261
  %6624 = zext i32 %6623 to i64
  %6625 = load i64, i64* %PC.i260
  %6626 = add i64 %6625, 3
  store i64 %6626, i64* %PC.i260
  %6627 = inttoptr i64 %6622 to i32*
  store i32 %6623, i32* %6627
  store %struct.Memory* %loadMem_40a0a2, %struct.Memory** %MEMORY
  %loadMem_40a0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 33
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6630 to i64*
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 5
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %6633 to i64*
  %6634 = load i64, i64* %PC.i258
  %6635 = add i64 %6634, 7
  store i64 %6635, i64* %PC.i258
  %6636 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %6637 = zext i32 %6636 to i64
  store i64 %6637, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_40a0a5, %struct.Memory** %MEMORY
  %loadMem_40a0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6639 = getelementptr inbounds %struct.GPR, %struct.GPR* %6638, i32 0, i32 33
  %6640 = getelementptr inbounds %struct.Reg, %struct.Reg* %6639, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6640 to i64*
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 7
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %6643 to i64*
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 15
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %6646 to i64*
  %6647 = load i64, i64* %RBP.i257
  %6648 = sub i64 %6647, 40
  %6649 = load i64, i64* %PC.i255
  %6650 = add i64 %6649, 4
  store i64 %6650, i64* %PC.i255
  %6651 = inttoptr i64 %6648 to i32*
  %6652 = load i32, i32* %6651
  %6653 = sext i32 %6652 to i64
  store i64 %6653, i64* %RDX.i256, align 8
  store %struct.Memory* %loadMem_40a0ac, %struct.Memory** %MEMORY
  %loadMem_40a0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6655 = getelementptr inbounds %struct.GPR, %struct.GPR* %6654, i32 0, i32 33
  %6656 = getelementptr inbounds %struct.Reg, %struct.Reg* %6655, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %6656 to i64*
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6658 = getelementptr inbounds %struct.GPR, %struct.GPR* %6657, i32 0, i32 7
  %6659 = getelementptr inbounds %struct.Reg, %struct.Reg* %6658, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %6659 to i64*
  %6660 = load i64, i64* %RDX.i254
  %6661 = mul i64 %6660, 4
  %6662 = add i64 %6661, 11187184
  %6663 = load i64, i64* %PC.i253
  %6664 = add i64 %6663, 8
  store i64 %6664, i64* %PC.i253
  %6665 = inttoptr i64 %6662 to i32*
  %6666 = load i32, i32* %6665
  %6667 = sext i32 %6666 to i64
  store i64 %6667, i64* %RDX.i254, align 8
  store %struct.Memory* %loadMem_40a0b0, %struct.Memory** %MEMORY
  %loadMem_40a0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6669 = getelementptr inbounds %struct.GPR, %struct.GPR* %6668, i32 0, i32 33
  %6670 = getelementptr inbounds %struct.Reg, %struct.Reg* %6669, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6670 to i64*
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6672 = getelementptr inbounds %struct.GPR, %struct.GPR* %6671, i32 0, i32 7
  %6673 = getelementptr inbounds %struct.Reg, %struct.Reg* %6672, i32 0, i32 0
  %RDX.i252 = bitcast %union.anon* %6673 to i64*
  %6674 = load i64, i64* %RDX.i252
  %6675 = load i64, i64* %PC.i251
  %6676 = add i64 %6675, 7
  store i64 %6676, i64* %PC.i251
  %6677 = sext i64 %6674 to i128
  %6678 = and i128 %6677, -18446744073709551616
  %6679 = zext i64 %6674 to i128
  %6680 = or i128 %6678, %6679
  %6681 = mul i128 744, %6680
  %6682 = trunc i128 %6681 to i64
  store i64 %6682, i64* %RDX.i252, align 8
  %6683 = sext i64 %6682 to i128
  %6684 = icmp ne i128 %6683, %6681
  %6685 = zext i1 %6684 to i8
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6685, i8* %6686, align 1
  %6687 = trunc i128 %6681 to i32
  %6688 = and i32 %6687, 255
  %6689 = call i32 @llvm.ctpop.i32(i32 %6688)
  %6690 = trunc i32 %6689 to i8
  %6691 = and i8 %6690, 1
  %6692 = xor i8 %6691, 1
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6692, i8* %6693, align 1
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6694, align 1
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6695, align 1
  %6696 = lshr i64 %6682, 63
  %6697 = trunc i64 %6696 to i8
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6697, i8* %6698, align 1
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6685, i8* %6699, align 1
  store %struct.Memory* %loadMem_40a0b8, %struct.Memory** %MEMORY
  %loadMem_40a0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 33
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 1
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 7
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %6708 to i64*
  %6709 = load i64, i64* %RAX.i249
  %6710 = load i64, i64* %RDX.i250
  %6711 = load i64, i64* %PC.i248
  %6712 = add i64 %6711, 3
  store i64 %6712, i64* %PC.i248
  %6713 = add i64 %6710, %6709
  store i64 %6713, i64* %RAX.i249, align 8
  %6714 = icmp ult i64 %6713, %6709
  %6715 = icmp ult i64 %6713, %6710
  %6716 = or i1 %6714, %6715
  %6717 = zext i1 %6716 to i8
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6717, i8* %6718, align 1
  %6719 = trunc i64 %6713 to i32
  %6720 = and i32 %6719, 255
  %6721 = call i32 @llvm.ctpop.i32(i32 %6720)
  %6722 = trunc i32 %6721 to i8
  %6723 = and i8 %6722, 1
  %6724 = xor i8 %6723, 1
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6724, i8* %6725, align 1
  %6726 = xor i64 %6710, %6709
  %6727 = xor i64 %6726, %6713
  %6728 = lshr i64 %6727, 4
  %6729 = trunc i64 %6728 to i8
  %6730 = and i8 %6729, 1
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6730, i8* %6731, align 1
  %6732 = icmp eq i64 %6713, 0
  %6733 = zext i1 %6732 to i8
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6733, i8* %6734, align 1
  %6735 = lshr i64 %6713, 63
  %6736 = trunc i64 %6735 to i8
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6736, i8* %6737, align 1
  %6738 = lshr i64 %6709, 63
  %6739 = lshr i64 %6710, 63
  %6740 = xor i64 %6735, %6738
  %6741 = xor i64 %6735, %6739
  %6742 = add i64 %6740, %6741
  %6743 = icmp eq i64 %6742, 2
  %6744 = zext i1 %6743 to i8
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6744, i8* %6745, align 1
  store %struct.Memory* %loadMem_40a0bf, %struct.Memory** %MEMORY
  %loadMem_40a0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6747 = getelementptr inbounds %struct.GPR, %struct.GPR* %6746, i32 0, i32 33
  %6748 = getelementptr inbounds %struct.Reg, %struct.Reg* %6747, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6748 to i64*
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6750 = getelementptr inbounds %struct.GPR, %struct.GPR* %6749, i32 0, i32 5
  %6751 = getelementptr inbounds %struct.Reg, %struct.Reg* %6750, i32 0, i32 0
  %ECX.i246 = bitcast %union.anon* %6751 to i32*
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6753 = getelementptr inbounds %struct.GPR, %struct.GPR* %6752, i32 0, i32 1
  %6754 = getelementptr inbounds %struct.Reg, %struct.Reg* %6753, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %6754 to i64*
  %6755 = load i64, i64* %RAX.i247
  %6756 = add i64 %6755, 740
  %6757 = load i32, i32* %ECX.i246
  %6758 = zext i32 %6757 to i64
  %6759 = load i64, i64* %PC.i245
  %6760 = add i64 %6759, 6
  store i64 %6760, i64* %PC.i245
  %6761 = inttoptr i64 %6756 to i32*
  store i32 %6757, i32* %6761
  store %struct.Memory* %loadMem_40a0c2, %struct.Memory** %MEMORY
  %loadMem_40a0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6763 = getelementptr inbounds %struct.GPR, %struct.GPR* %6762, i32 0, i32 33
  %6764 = getelementptr inbounds %struct.Reg, %struct.Reg* %6763, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %6764 to i64*
  %6765 = load i64, i64* %PC.i244
  %6766 = add i64 %6765, 146
  %6767 = load i64, i64* %PC.i244
  %6768 = add i64 %6767, 5
  store i64 %6768, i64* %PC.i244
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6766, i64* %6769, align 8
  store %struct.Memory* %loadMem_40a0c8, %struct.Memory** %MEMORY
  br label %block_.L_40a15a

block_.L_40a0cd:                                  ; preds = %block_40a051, %block_.L_40a03c
  %loadMem_40a0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6771 = getelementptr inbounds %struct.GPR, %struct.GPR* %6770, i32 0, i32 33
  %6772 = getelementptr inbounds %struct.Reg, %struct.Reg* %6771, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %6772 to i64*
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 1
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %6775 to i64*
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 15
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %6778 to i64*
  %6779 = load i64, i64* %RBP.i243
  %6780 = sub i64 %6779, 40
  %6781 = load i64, i64* %PC.i241
  %6782 = add i64 %6781, 4
  store i64 %6782, i64* %PC.i241
  %6783 = inttoptr i64 %6780 to i32*
  %6784 = load i32, i32* %6783
  %6785 = sext i32 %6784 to i64
  store i64 %6785, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_40a0cd, %struct.Memory** %MEMORY
  %loadMem_40a0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 33
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %6788 to i64*
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 1
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %6791 to i64*
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 5
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %6794 to i64*
  %6795 = load i64, i64* %RAX.i239
  %6796 = add i64 %6795, 12099168
  %6797 = load i64, i64* %PC.i238
  %6798 = add i64 %6797, 8
  store i64 %6798, i64* %PC.i238
  %6799 = inttoptr i64 %6796 to i8*
  %6800 = load i8, i8* %6799
  %6801 = zext i8 %6800 to i64
  store i64 %6801, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_40a0d1, %struct.Memory** %MEMORY
  %loadMem_40a0d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 33
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6804 to i64*
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 5
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %ECX.i236 = bitcast %union.anon* %6807 to i32*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 15
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %6810 to i64*
  %6811 = load i32, i32* %ECX.i236
  %6812 = zext i32 %6811 to i64
  %6813 = load i64, i64* %RBP.i237
  %6814 = sub i64 %6813, 12
  %6815 = load i64, i64* %PC.i235
  %6816 = add i64 %6815, 3
  store i64 %6816, i64* %PC.i235
  %6817 = inttoptr i64 %6814 to i32*
  %6818 = load i32, i32* %6817
  %6819 = sub i32 %6811, %6818
  %6820 = icmp ult i32 %6811, %6818
  %6821 = zext i1 %6820 to i8
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6821, i8* %6822, align 1
  %6823 = and i32 %6819, 255
  %6824 = call i32 @llvm.ctpop.i32(i32 %6823)
  %6825 = trunc i32 %6824 to i8
  %6826 = and i8 %6825, 1
  %6827 = xor i8 %6826, 1
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6827, i8* %6828, align 1
  %6829 = xor i32 %6818, %6811
  %6830 = xor i32 %6829, %6819
  %6831 = lshr i32 %6830, 4
  %6832 = trunc i32 %6831 to i8
  %6833 = and i8 %6832, 1
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6833, i8* %6834, align 1
  %6835 = icmp eq i32 %6819, 0
  %6836 = zext i1 %6835 to i8
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6836, i8* %6837, align 1
  %6838 = lshr i32 %6819, 31
  %6839 = trunc i32 %6838 to i8
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6839, i8* %6840, align 1
  %6841 = lshr i32 %6811, 31
  %6842 = lshr i32 %6818, 31
  %6843 = xor i32 %6842, %6841
  %6844 = xor i32 %6838, %6841
  %6845 = add i32 %6844, %6843
  %6846 = icmp eq i32 %6845, 2
  %6847 = zext i1 %6846 to i8
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6847, i8* %6848, align 1
  store %struct.Memory* %loadMem_40a0d9, %struct.Memory** %MEMORY
  %loadMem_40a0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 33
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6851 to i64*
  %6852 = load i64, i64* %PC.i234
  %6853 = add i64 %6852, 121
  %6854 = load i64, i64* %PC.i234
  %6855 = add i64 %6854, 6
  %6856 = load i64, i64* %PC.i234
  %6857 = add i64 %6856, 6
  store i64 %6857, i64* %PC.i234
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6859 = load i8, i8* %6858, align 1
  %6860 = icmp eq i8 %6859, 0
  %6861 = zext i1 %6860 to i8
  store i8 %6861, i8* %BRANCH_TAKEN, align 1
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6863 = select i1 %6860, i64 %6853, i64 %6855
  store i64 %6863, i64* %6862, align 8
  store %struct.Memory* %loadMem_40a0dc, %struct.Memory** %MEMORY
  %loadBr_40a0dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a0dc = icmp eq i8 %loadBr_40a0dc, 1
  br i1 %cmpBr_40a0dc, label %block_.L_40a155, label %block_40a0e2

block_40a0e2:                                     ; preds = %block_.L_40a0cd
  %loadMem_40a0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6865 = getelementptr inbounds %struct.GPR, %struct.GPR* %6864, i32 0, i32 33
  %6866 = getelementptr inbounds %struct.Reg, %struct.Reg* %6865, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6866 to i64*
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6868 = getelementptr inbounds %struct.GPR, %struct.GPR* %6867, i32 0, i32 1
  %6869 = getelementptr inbounds %struct.Reg, %struct.Reg* %6868, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %6869 to i64*
  %6870 = load i64, i64* %PC.i232
  %6871 = add i64 %6870, 10
  store i64 %6871, i64* %PC.i232
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_40a0e2, %struct.Memory** %MEMORY
  %loadMem_40a0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6873 = getelementptr inbounds %struct.GPR, %struct.GPR* %6872, i32 0, i32 33
  %6874 = getelementptr inbounds %struct.Reg, %struct.Reg* %6873, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6874 to i64*
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6876 = getelementptr inbounds %struct.GPR, %struct.GPR* %6875, i32 0, i32 5
  %6877 = getelementptr inbounds %struct.Reg, %struct.Reg* %6876, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %6877 to i64*
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6879 = getelementptr inbounds %struct.GPR, %struct.GPR* %6878, i32 0, i32 15
  %6880 = getelementptr inbounds %struct.Reg, %struct.Reg* %6879, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %6880 to i64*
  %6881 = load i64, i64* %RBP.i231
  %6882 = sub i64 %6881, 40
  %6883 = load i64, i64* %PC.i229
  %6884 = add i64 %6883, 4
  store i64 %6884, i64* %PC.i229
  %6885 = inttoptr i64 %6882 to i32*
  %6886 = load i32, i32* %6885
  %6887 = sext i32 %6886 to i64
  store i64 %6887, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_40a0ec, %struct.Memory** %MEMORY
  %loadMem_40a0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6889 = getelementptr inbounds %struct.GPR, %struct.GPR* %6888, i32 0, i32 33
  %6890 = getelementptr inbounds %struct.Reg, %struct.Reg* %6889, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6890 to i64*
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6892 = getelementptr inbounds %struct.GPR, %struct.GPR* %6891, i32 0, i32 5
  %6893 = getelementptr inbounds %struct.Reg, %struct.Reg* %6892, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %6893 to i64*
  %6894 = load i64, i64* %RCX.i228
  %6895 = mul i64 %6894, 4
  %6896 = add i64 %6895, 11187184
  %6897 = load i64, i64* %PC.i227
  %6898 = add i64 %6897, 8
  store i64 %6898, i64* %PC.i227
  %6899 = inttoptr i64 %6896 to i32*
  %6900 = load i32, i32* %6899
  %6901 = sext i32 %6900 to i64
  store i64 %6901, i64* %RCX.i228, align 8
  store %struct.Memory* %loadMem_40a0f0, %struct.Memory** %MEMORY
  %loadMem_40a0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6903 = getelementptr inbounds %struct.GPR, %struct.GPR* %6902, i32 0, i32 33
  %6904 = getelementptr inbounds %struct.Reg, %struct.Reg* %6903, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6904 to i64*
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6906 = getelementptr inbounds %struct.GPR, %struct.GPR* %6905, i32 0, i32 5
  %6907 = getelementptr inbounds %struct.Reg, %struct.Reg* %6906, i32 0, i32 0
  %RCX.i226 = bitcast %union.anon* %6907 to i64*
  %6908 = load i64, i64* %RCX.i226
  %6909 = load i64, i64* %PC.i225
  %6910 = add i64 %6909, 7
  store i64 %6910, i64* %PC.i225
  %6911 = sext i64 %6908 to i128
  %6912 = and i128 %6911, -18446744073709551616
  %6913 = zext i64 %6908 to i128
  %6914 = or i128 %6912, %6913
  %6915 = mul i128 744, %6914
  %6916 = trunc i128 %6915 to i64
  store i64 %6916, i64* %RCX.i226, align 8
  %6917 = sext i64 %6916 to i128
  %6918 = icmp ne i128 %6917, %6915
  %6919 = zext i1 %6918 to i8
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6919, i8* %6920, align 1
  %6921 = trunc i128 %6915 to i32
  %6922 = and i32 %6921, 255
  %6923 = call i32 @llvm.ctpop.i32(i32 %6922)
  %6924 = trunc i32 %6923 to i8
  %6925 = and i8 %6924, 1
  %6926 = xor i8 %6925, 1
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6926, i8* %6927, align 1
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6928, align 1
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6929, align 1
  %6930 = lshr i64 %6916, 63
  %6931 = trunc i64 %6930 to i8
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6931, i8* %6932, align 1
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6919, i8* %6933, align 1
  store %struct.Memory* %loadMem_40a0f8, %struct.Memory** %MEMORY
  %loadMem_40a0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6935 = getelementptr inbounds %struct.GPR, %struct.GPR* %6934, i32 0, i32 33
  %6936 = getelementptr inbounds %struct.Reg, %struct.Reg* %6935, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6936 to i64*
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6938 = getelementptr inbounds %struct.GPR, %struct.GPR* %6937, i32 0, i32 1
  %6939 = getelementptr inbounds %struct.Reg, %struct.Reg* %6938, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %6939 to i64*
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 5
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %6942 to i64*
  %6943 = load i64, i64* %RAX.i223
  %6944 = load i64, i64* %RCX.i224
  %6945 = load i64, i64* %PC.i222
  %6946 = add i64 %6945, 3
  store i64 %6946, i64* %PC.i222
  %6947 = add i64 %6944, %6943
  store i64 %6947, i64* %RAX.i223, align 8
  %6948 = icmp ult i64 %6947, %6943
  %6949 = icmp ult i64 %6947, %6944
  %6950 = or i1 %6948, %6949
  %6951 = zext i1 %6950 to i8
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6951, i8* %6952, align 1
  %6953 = trunc i64 %6947 to i32
  %6954 = and i32 %6953, 255
  %6955 = call i32 @llvm.ctpop.i32(i32 %6954)
  %6956 = trunc i32 %6955 to i8
  %6957 = and i8 %6956, 1
  %6958 = xor i8 %6957, 1
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6958, i8* %6959, align 1
  %6960 = xor i64 %6944, %6943
  %6961 = xor i64 %6960, %6947
  %6962 = lshr i64 %6961, 4
  %6963 = trunc i64 %6962 to i8
  %6964 = and i8 %6963, 1
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6964, i8* %6965, align 1
  %6966 = icmp eq i64 %6947, 0
  %6967 = zext i1 %6966 to i8
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6967, i8* %6968, align 1
  %6969 = lshr i64 %6947, 63
  %6970 = trunc i64 %6969 to i8
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6970, i8* %6971, align 1
  %6972 = lshr i64 %6943, 63
  %6973 = lshr i64 %6944, 63
  %6974 = xor i64 %6969, %6972
  %6975 = xor i64 %6969, %6973
  %6976 = add i64 %6974, %6975
  %6977 = icmp eq i64 %6976, 2
  %6978 = zext i1 %6977 to i8
  %6979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6978, i8* %6979, align 1
  store %struct.Memory* %loadMem_40a0ff, %struct.Memory** %MEMORY
  %loadMem_40a102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 33
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6982 to i64*
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 1
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %6985 to i64*
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 7
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %6988 to i64*
  %6989 = load i64, i64* %RAX.i220
  %6990 = add i64 %6989, 740
  %6991 = load i64, i64* %PC.i219
  %6992 = add i64 %6991, 6
  store i64 %6992, i64* %PC.i219
  %6993 = inttoptr i64 %6990 to i32*
  %6994 = load i32, i32* %6993
  %6995 = zext i32 %6994 to i64
  store i64 %6995, i64* %RDX.i221, align 8
  store %struct.Memory* %loadMem_40a102, %struct.Memory** %MEMORY
  %loadMem_40a108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 33
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6998 to i64*
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 7
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %EDX.i218 = bitcast %union.anon* %7001 to i32*
  %7002 = load i32, i32* %EDX.i218
  %7003 = zext i32 %7002 to i64
  %7004 = load i64, i64* %PC.i217
  %7005 = add i64 %7004, 7
  store i64 %7005, i64* %PC.i217
  %7006 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %7007 = sub i32 %7002, %7006
  %7008 = icmp ult i32 %7002, %7006
  %7009 = zext i1 %7008 to i8
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7009, i8* %7010, align 1
  %7011 = and i32 %7007, 255
  %7012 = call i32 @llvm.ctpop.i32(i32 %7011)
  %7013 = trunc i32 %7012 to i8
  %7014 = and i8 %7013, 1
  %7015 = xor i8 %7014, 1
  %7016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7015, i8* %7016, align 1
  %7017 = xor i32 %7006, %7002
  %7018 = xor i32 %7017, %7007
  %7019 = lshr i32 %7018, 4
  %7020 = trunc i32 %7019 to i8
  %7021 = and i8 %7020, 1
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7021, i8* %7022, align 1
  %7023 = icmp eq i32 %7007, 0
  %7024 = zext i1 %7023 to i8
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7024, i8* %7025, align 1
  %7026 = lshr i32 %7007, 31
  %7027 = trunc i32 %7026 to i8
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7027, i8* %7028, align 1
  %7029 = lshr i32 %7002, 31
  %7030 = lshr i32 %7006, 31
  %7031 = xor i32 %7030, %7029
  %7032 = xor i32 %7026, %7029
  %7033 = add i32 %7032, %7031
  %7034 = icmp eq i32 %7033, 2
  %7035 = zext i1 %7034 to i8
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7035, i8* %7036, align 1
  store %struct.Memory* %loadMem_40a108, %struct.Memory** %MEMORY
  %loadMem_40a10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7038 = getelementptr inbounds %struct.GPR, %struct.GPR* %7037, i32 0, i32 33
  %7039 = getelementptr inbounds %struct.Reg, %struct.Reg* %7038, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7039 to i64*
  %7040 = load i64, i64* %PC.i216
  %7041 = add i64 %7040, 70
  %7042 = load i64, i64* %PC.i216
  %7043 = add i64 %7042, 6
  %7044 = load i64, i64* %PC.i216
  %7045 = add i64 %7044, 6
  store i64 %7045, i64* %PC.i216
  %7046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7047 = load i8, i8* %7046, align 1
  store i8 %7047, i8* %BRANCH_TAKEN, align 1
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7049 = icmp ne i8 %7047, 0
  %7050 = select i1 %7049, i64 %7041, i64 %7043
  store i64 %7050, i64* %7048, align 8
  store %struct.Memory* %loadMem_40a10f, %struct.Memory** %MEMORY
  %loadBr_40a10f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a10f = icmp eq i8 %loadBr_40a10f, 1
  br i1 %cmpBr_40a10f, label %block_.L_40a155, label %block_40a115

block_40a115:                                     ; preds = %block_40a0e2
  %loadMem_40a115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 33
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %7053 to i64*
  %7054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7055 = getelementptr inbounds %struct.GPR, %struct.GPR* %7054, i32 0, i32 1
  %7056 = getelementptr inbounds %struct.Reg, %struct.Reg* %7055, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %7056 to i64*
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7058 = getelementptr inbounds %struct.GPR, %struct.GPR* %7057, i32 0, i32 15
  %7059 = getelementptr inbounds %struct.Reg, %struct.Reg* %7058, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %7059 to i64*
  %7060 = load i64, i64* %RBP.i215
  %7061 = sub i64 %7060, 40
  %7062 = load i64, i64* %PC.i213
  %7063 = add i64 %7062, 4
  store i64 %7063, i64* %PC.i213
  %7064 = inttoptr i64 %7061 to i32*
  %7065 = load i32, i32* %7064
  %7066 = sext i32 %7065 to i64
  store i64 %7066, i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_40a115, %struct.Memory** %MEMORY
  %loadMem_40a119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 33
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %7069 to i64*
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 1
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %7072 to i64*
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 11
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %7075 to i64*
  %7076 = load i64, i64* %RAX.i211
  %7077 = mul i64 %7076, 4
  %7078 = add i64 %7077, 11187184
  %7079 = load i64, i64* %PC.i210
  %7080 = add i64 %7079, 7
  store i64 %7080, i64* %PC.i210
  %7081 = inttoptr i64 %7078 to i32*
  %7082 = load i32, i32* %7081
  %7083 = zext i32 %7082 to i64
  store i64 %7083, i64* %RDI.i212, align 8
  store %struct.Memory* %loadMem_40a119, %struct.Memory** %MEMORY
  %loadMem_40a120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7085 = getelementptr inbounds %struct.GPR, %struct.GPR* %7084, i32 0, i32 33
  %7086 = getelementptr inbounds %struct.Reg, %struct.Reg* %7085, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %7086 to i64*
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7088 = getelementptr inbounds %struct.GPR, %struct.GPR* %7087, i32 0, i32 9
  %7089 = getelementptr inbounds %struct.Reg, %struct.Reg* %7088, i32 0, i32 0
  %RSI.i208 = bitcast %union.anon* %7089 to i64*
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7091 = getelementptr inbounds %struct.GPR, %struct.GPR* %7090, i32 0, i32 15
  %7092 = getelementptr inbounds %struct.Reg, %struct.Reg* %7091, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %7092 to i64*
  %7093 = load i64, i64* %RBP.i209
  %7094 = sub i64 %7093, 4
  %7095 = load i64, i64* %PC.i207
  %7096 = add i64 %7095, 3
  store i64 %7096, i64* %PC.i207
  %7097 = inttoptr i64 %7094 to i32*
  %7098 = load i32, i32* %7097
  %7099 = zext i32 %7098 to i64
  store i64 %7099, i64* %RSI.i208, align 8
  store %struct.Memory* %loadMem_40a120, %struct.Memory** %MEMORY
  %loadMem1_40a123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7101 = getelementptr inbounds %struct.GPR, %struct.GPR* %7100, i32 0, i32 33
  %7102 = getelementptr inbounds %struct.Reg, %struct.Reg* %7101, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7102 to i64*
  %7103 = load i64, i64* %PC.i206
  %7104 = add i64 %7103, 1437
  %7105 = load i64, i64* %PC.i206
  %7106 = add i64 %7105, 5
  %7107 = load i64, i64* %PC.i206
  %7108 = add i64 %7107, 5
  store i64 %7108, i64* %PC.i206
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7110 = load i64, i64* %7109, align 8
  %7111 = add i64 %7110, -8
  %7112 = inttoptr i64 %7111 to i64*
  store i64 %7106, i64* %7112
  store i64 %7111, i64* %7109, align 8
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7104, i64* %7113, align 8
  store %struct.Memory* %loadMem1_40a123, %struct.Memory** %MEMORY
  %loadMem2_40a123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a123 = load i64, i64* %3
  %call2_40a123 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64 %loadPC_40a123, %struct.Memory* %loadMem2_40a123)
  store %struct.Memory* %call2_40a123, %struct.Memory** %MEMORY
  %loadMem_40a128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7115 = getelementptr inbounds %struct.GPR, %struct.GPR* %7114, i32 0, i32 33
  %7116 = getelementptr inbounds %struct.Reg, %struct.Reg* %7115, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %7116 to i64*
  %7117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7118 = getelementptr inbounds %struct.GPR, %struct.GPR* %7117, i32 0, i32 1
  %7119 = getelementptr inbounds %struct.Reg, %struct.Reg* %7118, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %7119 to i64*
  %7120 = load i64, i64* %PC.i204
  %7121 = add i64 %7120, 10
  store i64 %7121, i64* %PC.i204
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_40a128, %struct.Memory** %MEMORY
  %loadMem_40a132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 33
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %7124 to i64*
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 9
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %RSI.i203 = bitcast %union.anon* %7127 to i64*
  %7128 = load i64, i64* %PC.i202
  %7129 = add i64 %7128, 7
  store i64 %7129, i64* %PC.i202
  %7130 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %7131 = zext i32 %7130 to i64
  store i64 %7131, i64* %RSI.i203, align 8
  store %struct.Memory* %loadMem_40a132, %struct.Memory** %MEMORY
  %loadMem_40a139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 33
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %7134 to i64*
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 5
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 15
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %7140 to i64*
  %7141 = load i64, i64* %RBP.i201
  %7142 = sub i64 %7141, 40
  %7143 = load i64, i64* %PC.i199
  %7144 = add i64 %7143, 4
  store i64 %7144, i64* %PC.i199
  %7145 = inttoptr i64 %7142 to i32*
  %7146 = load i32, i32* %7145
  %7147 = sext i32 %7146 to i64
  store i64 %7147, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_40a139, %struct.Memory** %MEMORY
  %loadMem_40a13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7149 = getelementptr inbounds %struct.GPR, %struct.GPR* %7148, i32 0, i32 33
  %7150 = getelementptr inbounds %struct.Reg, %struct.Reg* %7149, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %7150 to i64*
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 5
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %7153 to i64*
  %7154 = load i64, i64* %RCX.i198
  %7155 = mul i64 %7154, 4
  %7156 = add i64 %7155, 11187184
  %7157 = load i64, i64* %PC.i197
  %7158 = add i64 %7157, 8
  store i64 %7158, i64* %PC.i197
  %7159 = inttoptr i64 %7156 to i32*
  %7160 = load i32, i32* %7159
  %7161 = sext i32 %7160 to i64
  store i64 %7161, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_40a13d, %struct.Memory** %MEMORY
  %loadMem_40a145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 33
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7164 to i64*
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7166 = getelementptr inbounds %struct.GPR, %struct.GPR* %7165, i32 0, i32 5
  %7167 = getelementptr inbounds %struct.Reg, %struct.Reg* %7166, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %7167 to i64*
  %7168 = load i64, i64* %RCX.i196
  %7169 = load i64, i64* %PC.i195
  %7170 = add i64 %7169, 7
  store i64 %7170, i64* %PC.i195
  %7171 = sext i64 %7168 to i128
  %7172 = and i128 %7171, -18446744073709551616
  %7173 = zext i64 %7168 to i128
  %7174 = or i128 %7172, %7173
  %7175 = mul i128 744, %7174
  %7176 = trunc i128 %7175 to i64
  store i64 %7176, i64* %RCX.i196, align 8
  %7177 = sext i64 %7176 to i128
  %7178 = icmp ne i128 %7177, %7175
  %7179 = zext i1 %7178 to i8
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7179, i8* %7180, align 1
  %7181 = trunc i128 %7175 to i32
  %7182 = and i32 %7181, 255
  %7183 = call i32 @llvm.ctpop.i32(i32 %7182)
  %7184 = trunc i32 %7183 to i8
  %7185 = and i8 %7184, 1
  %7186 = xor i8 %7185, 1
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7186, i8* %7187, align 1
  %7188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7188, align 1
  %7189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7189, align 1
  %7190 = lshr i64 %7176, 63
  %7191 = trunc i64 %7190 to i8
  %7192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7191, i8* %7192, align 1
  %7193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7179, i8* %7193, align 1
  store %struct.Memory* %loadMem_40a145, %struct.Memory** %MEMORY
  %loadMem_40a14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7195 = getelementptr inbounds %struct.GPR, %struct.GPR* %7194, i32 0, i32 33
  %7196 = getelementptr inbounds %struct.Reg, %struct.Reg* %7195, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %7196 to i64*
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7198 = getelementptr inbounds %struct.GPR, %struct.GPR* %7197, i32 0, i32 1
  %7199 = getelementptr inbounds %struct.Reg, %struct.Reg* %7198, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %7199 to i64*
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7201 = getelementptr inbounds %struct.GPR, %struct.GPR* %7200, i32 0, i32 5
  %7202 = getelementptr inbounds %struct.Reg, %struct.Reg* %7201, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %7202 to i64*
  %7203 = load i64, i64* %RAX.i193
  %7204 = load i64, i64* %RCX.i194
  %7205 = load i64, i64* %PC.i192
  %7206 = add i64 %7205, 3
  store i64 %7206, i64* %PC.i192
  %7207 = add i64 %7204, %7203
  store i64 %7207, i64* %RAX.i193, align 8
  %7208 = icmp ult i64 %7207, %7203
  %7209 = icmp ult i64 %7207, %7204
  %7210 = or i1 %7208, %7209
  %7211 = zext i1 %7210 to i8
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7211, i8* %7212, align 1
  %7213 = trunc i64 %7207 to i32
  %7214 = and i32 %7213, 255
  %7215 = call i32 @llvm.ctpop.i32(i32 %7214)
  %7216 = trunc i32 %7215 to i8
  %7217 = and i8 %7216, 1
  %7218 = xor i8 %7217, 1
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7218, i8* %7219, align 1
  %7220 = xor i64 %7204, %7203
  %7221 = xor i64 %7220, %7207
  %7222 = lshr i64 %7221, 4
  %7223 = trunc i64 %7222 to i8
  %7224 = and i8 %7223, 1
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7224, i8* %7225, align 1
  %7226 = icmp eq i64 %7207, 0
  %7227 = zext i1 %7226 to i8
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7227, i8* %7228, align 1
  %7229 = lshr i64 %7207, 63
  %7230 = trunc i64 %7229 to i8
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7230, i8* %7231, align 1
  %7232 = lshr i64 %7203, 63
  %7233 = lshr i64 %7204, 63
  %7234 = xor i64 %7229, %7232
  %7235 = xor i64 %7229, %7233
  %7236 = add i64 %7234, %7235
  %7237 = icmp eq i64 %7236, 2
  %7238 = zext i1 %7237 to i8
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7238, i8* %7239, align 1
  store %struct.Memory* %loadMem_40a14c, %struct.Memory** %MEMORY
  %loadMem_40a14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 33
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7242 to i64*
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 9
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %7245 to i32*
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7247 = getelementptr inbounds %struct.GPR, %struct.GPR* %7246, i32 0, i32 1
  %7248 = getelementptr inbounds %struct.Reg, %struct.Reg* %7247, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %7248 to i64*
  %7249 = load i64, i64* %RAX.i191
  %7250 = add i64 %7249, 740
  %7251 = load i32, i32* %ESI.i
  %7252 = zext i32 %7251 to i64
  %7253 = load i64, i64* %PC.i190
  %7254 = add i64 %7253, 6
  store i64 %7254, i64* %PC.i190
  %7255 = inttoptr i64 %7250 to i32*
  store i32 %7251, i32* %7255
  store %struct.Memory* %loadMem_40a14f, %struct.Memory** %MEMORY
  br label %block_.L_40a155

block_.L_40a155:                                  ; preds = %block_40a115, %block_40a0e2, %block_.L_40a0cd
  %loadMem_40a155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 33
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %7258 to i64*
  %7259 = load i64, i64* %PC.i189
  %7260 = add i64 %7259, 5
  %7261 = load i64, i64* %PC.i189
  %7262 = add i64 %7261, 5
  store i64 %7262, i64* %PC.i189
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7260, i64* %7263, align 8
  store %struct.Memory* %loadMem_40a155, %struct.Memory** %MEMORY
  br label %block_.L_40a15a

block_.L_40a15a:                                  ; preds = %block_.L_40a155, %block_40a084
  %loadMem_40a15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 33
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %7266 to i64*
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 1
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %7269 to i64*
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7271 = getelementptr inbounds %struct.GPR, %struct.GPR* %7270, i32 0, i32 15
  %7272 = getelementptr inbounds %struct.Reg, %struct.Reg* %7271, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %7272 to i64*
  %7273 = load i64, i64* %RBP.i188
  %7274 = sub i64 %7273, 44
  %7275 = load i64, i64* %PC.i186
  %7276 = add i64 %7275, 4
  store i64 %7276, i64* %PC.i186
  %7277 = inttoptr i64 %7274 to i32*
  %7278 = load i32, i32* %7277
  %7279 = sext i32 %7278 to i64
  store i64 %7279, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_40a15a, %struct.Memory** %MEMORY
  %loadMem_40a15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7281 = getelementptr inbounds %struct.GPR, %struct.GPR* %7280, i32 0, i32 33
  %7282 = getelementptr inbounds %struct.Reg, %struct.Reg* %7281, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %7282 to i64*
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7284 = getelementptr inbounds %struct.GPR, %struct.GPR* %7283, i32 0, i32 1
  %7285 = getelementptr inbounds %struct.Reg, %struct.Reg* %7284, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %7285 to i64*
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7287 = getelementptr inbounds %struct.GPR, %struct.GPR* %7286, i32 0, i32 5
  %7288 = getelementptr inbounds %struct.Reg, %struct.Reg* %7287, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %7288 to i64*
  %7289 = load i64, i64* %RAX.i184
  %7290 = add i64 %7289, 12099168
  %7291 = load i64, i64* %PC.i183
  %7292 = add i64 %7291, 8
  store i64 %7292, i64* %PC.i183
  %7293 = inttoptr i64 %7290 to i8*
  %7294 = load i8, i8* %7293
  %7295 = zext i8 %7294 to i64
  store i64 %7295, i64* %RCX.i185, align 8
  store %struct.Memory* %loadMem_40a15e, %struct.Memory** %MEMORY
  %loadMem_40a166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 33
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %7298 to i64*
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7300 = getelementptr inbounds %struct.GPR, %struct.GPR* %7299, i32 0, i32 5
  %7301 = getelementptr inbounds %struct.Reg, %struct.Reg* %7300, i32 0, i32 0
  %ECX.i181 = bitcast %union.anon* %7301 to i32*
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7303 = getelementptr inbounds %struct.GPR, %struct.GPR* %7302, i32 0, i32 15
  %7304 = getelementptr inbounds %struct.Reg, %struct.Reg* %7303, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %7304 to i64*
  %7305 = load i32, i32* %ECX.i181
  %7306 = zext i32 %7305 to i64
  %7307 = load i64, i64* %RBP.i182
  %7308 = sub i64 %7307, 8
  %7309 = load i64, i64* %PC.i180
  %7310 = add i64 %7309, 3
  store i64 %7310, i64* %PC.i180
  %7311 = inttoptr i64 %7308 to i32*
  %7312 = load i32, i32* %7311
  %7313 = sub i32 %7305, %7312
  %7314 = icmp ult i32 %7305, %7312
  %7315 = zext i1 %7314 to i8
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7315, i8* %7316, align 1
  %7317 = and i32 %7313, 255
  %7318 = call i32 @llvm.ctpop.i32(i32 %7317)
  %7319 = trunc i32 %7318 to i8
  %7320 = and i8 %7319, 1
  %7321 = xor i8 %7320, 1
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7321, i8* %7322, align 1
  %7323 = xor i32 %7312, %7305
  %7324 = xor i32 %7323, %7313
  %7325 = lshr i32 %7324, 4
  %7326 = trunc i32 %7325 to i8
  %7327 = and i8 %7326, 1
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7327, i8* %7328, align 1
  %7329 = icmp eq i32 %7313, 0
  %7330 = zext i1 %7329 to i8
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7330, i8* %7331, align 1
  %7332 = lshr i32 %7313, 31
  %7333 = trunc i32 %7332 to i8
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7333, i8* %7334, align 1
  %7335 = lshr i32 %7305, 31
  %7336 = lshr i32 %7312, 31
  %7337 = xor i32 %7336, %7335
  %7338 = xor i32 %7332, %7335
  %7339 = add i32 %7338, %7337
  %7340 = icmp eq i32 %7339, 2
  %7341 = zext i1 %7340 to i8
  %7342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7341, i8* %7342, align 1
  store %struct.Memory* %loadMem_40a166, %struct.Memory** %MEMORY
  %loadMem_40a169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7344 = getelementptr inbounds %struct.GPR, %struct.GPR* %7343, i32 0, i32 33
  %7345 = getelementptr inbounds %struct.Reg, %struct.Reg* %7344, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7345 to i64*
  %7346 = load i64, i64* %PC.i179
  %7347 = add i64 %7346, 85
  %7348 = load i64, i64* %PC.i179
  %7349 = add i64 %7348, 6
  %7350 = load i64, i64* %PC.i179
  %7351 = add i64 %7350, 6
  store i64 %7351, i64* %PC.i179
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7353 = load i8, i8* %7352, align 1
  %7354 = icmp eq i8 %7353, 0
  %7355 = zext i1 %7354 to i8
  store i8 %7355, i8* %BRANCH_TAKEN, align 1
  %7356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7357 = select i1 %7354, i64 %7347, i64 %7349
  store i64 %7357, i64* %7356, align 8
  store %struct.Memory* %loadMem_40a169, %struct.Memory** %MEMORY
  %loadBr_40a169 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a169 = icmp eq i8 %loadBr_40a169, 1
  br i1 %cmpBr_40a169, label %block_.L_40a1be, label %block_40a16f

block_40a16f:                                     ; preds = %block_.L_40a15a
  %loadMem_40a16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 33
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %7360 to i64*
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 1
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %7363 to i64*
  %7364 = load i64, i64* %PC.i177
  %7365 = add i64 %7364, 10
  store i64 %7365, i64* %PC.i177
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_40a16f, %struct.Memory** %MEMORY
  %loadMem_40a179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7367 = getelementptr inbounds %struct.GPR, %struct.GPR* %7366, i32 0, i32 33
  %7368 = getelementptr inbounds %struct.Reg, %struct.Reg* %7367, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %7368 to i64*
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7370 = getelementptr inbounds %struct.GPR, %struct.GPR* %7369, i32 0, i32 5
  %7371 = getelementptr inbounds %struct.Reg, %struct.Reg* %7370, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %7371 to i64*
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7373 = getelementptr inbounds %struct.GPR, %struct.GPR* %7372, i32 0, i32 15
  %7374 = getelementptr inbounds %struct.Reg, %struct.Reg* %7373, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %7374 to i64*
  %7375 = load i64, i64* %RBP.i176
  %7376 = sub i64 %7375, 44
  %7377 = load i64, i64* %PC.i174
  %7378 = add i64 %7377, 4
  store i64 %7378, i64* %PC.i174
  %7379 = inttoptr i64 %7376 to i32*
  %7380 = load i32, i32* %7379
  %7381 = sext i32 %7380 to i64
  store i64 %7381, i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_40a179, %struct.Memory** %MEMORY
  %loadMem_40a17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 33
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %7384 to i64*
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7386 = getelementptr inbounds %struct.GPR, %struct.GPR* %7385, i32 0, i32 5
  %7387 = getelementptr inbounds %struct.Reg, %struct.Reg* %7386, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %7387 to i64*
  %7388 = load i64, i64* %RCX.i173
  %7389 = mul i64 %7388, 4
  %7390 = add i64 %7389, 11187184
  %7391 = load i64, i64* %PC.i172
  %7392 = add i64 %7391, 8
  store i64 %7392, i64* %PC.i172
  %7393 = inttoptr i64 %7390 to i32*
  %7394 = load i32, i32* %7393
  %7395 = sext i32 %7394 to i64
  store i64 %7395, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_40a17d, %struct.Memory** %MEMORY
  %loadMem_40a185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7397 = getelementptr inbounds %struct.GPR, %struct.GPR* %7396, i32 0, i32 33
  %7398 = getelementptr inbounds %struct.Reg, %struct.Reg* %7397, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %7398 to i64*
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 5
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %7401 to i64*
  %7402 = load i64, i64* %RCX.i171
  %7403 = load i64, i64* %PC.i170
  %7404 = add i64 %7403, 7
  store i64 %7404, i64* %PC.i170
  %7405 = sext i64 %7402 to i128
  %7406 = and i128 %7405, -18446744073709551616
  %7407 = zext i64 %7402 to i128
  %7408 = or i128 %7406, %7407
  %7409 = mul i128 744, %7408
  %7410 = trunc i128 %7409 to i64
  store i64 %7410, i64* %RCX.i171, align 8
  %7411 = sext i64 %7410 to i128
  %7412 = icmp ne i128 %7411, %7409
  %7413 = zext i1 %7412 to i8
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7413, i8* %7414, align 1
  %7415 = trunc i128 %7409 to i32
  %7416 = and i32 %7415, 255
  %7417 = call i32 @llvm.ctpop.i32(i32 %7416)
  %7418 = trunc i32 %7417 to i8
  %7419 = and i8 %7418, 1
  %7420 = xor i8 %7419, 1
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7420, i8* %7421, align 1
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7422, align 1
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7423, align 1
  %7424 = lshr i64 %7410, 63
  %7425 = trunc i64 %7424 to i8
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7425, i8* %7426, align 1
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7413, i8* %7427, align 1
  store %struct.Memory* %loadMem_40a185, %struct.Memory** %MEMORY
  %loadMem_40a18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 33
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %7430 to i64*
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 1
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %7433 to i64*
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7435 = getelementptr inbounds %struct.GPR, %struct.GPR* %7434, i32 0, i32 5
  %7436 = getelementptr inbounds %struct.Reg, %struct.Reg* %7435, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %7436 to i64*
  %7437 = load i64, i64* %RAX.i168
  %7438 = load i64, i64* %RCX.i169
  %7439 = load i64, i64* %PC.i167
  %7440 = add i64 %7439, 3
  store i64 %7440, i64* %PC.i167
  %7441 = add i64 %7438, %7437
  store i64 %7441, i64* %RAX.i168, align 8
  %7442 = icmp ult i64 %7441, %7437
  %7443 = icmp ult i64 %7441, %7438
  %7444 = or i1 %7442, %7443
  %7445 = zext i1 %7444 to i8
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7445, i8* %7446, align 1
  %7447 = trunc i64 %7441 to i32
  %7448 = and i32 %7447, 255
  %7449 = call i32 @llvm.ctpop.i32(i32 %7448)
  %7450 = trunc i32 %7449 to i8
  %7451 = and i8 %7450, 1
  %7452 = xor i8 %7451, 1
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7452, i8* %7453, align 1
  %7454 = xor i64 %7438, %7437
  %7455 = xor i64 %7454, %7441
  %7456 = lshr i64 %7455, 4
  %7457 = trunc i64 %7456 to i8
  %7458 = and i8 %7457, 1
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7458, i8* %7459, align 1
  %7460 = icmp eq i64 %7441, 0
  %7461 = zext i1 %7460 to i8
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7461, i8* %7462, align 1
  %7463 = lshr i64 %7441, 63
  %7464 = trunc i64 %7463 to i8
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7464, i8* %7465, align 1
  %7466 = lshr i64 %7437, 63
  %7467 = lshr i64 %7438, 63
  %7468 = xor i64 %7463, %7466
  %7469 = xor i64 %7463, %7467
  %7470 = add i64 %7468, %7469
  %7471 = icmp eq i64 %7470, 2
  %7472 = zext i1 %7471 to i8
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7472, i8* %7473, align 1
  store %struct.Memory* %loadMem_40a18c, %struct.Memory** %MEMORY
  %loadMem_40a18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7475 = getelementptr inbounds %struct.GPR, %struct.GPR* %7474, i32 0, i32 33
  %7476 = getelementptr inbounds %struct.Reg, %struct.Reg* %7475, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %7476 to i64*
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7478 = getelementptr inbounds %struct.GPR, %struct.GPR* %7477, i32 0, i32 1
  %7479 = getelementptr inbounds %struct.Reg, %struct.Reg* %7478, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %7479 to i64*
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7481 = getelementptr inbounds %struct.GPR, %struct.GPR* %7480, i32 0, i32 7
  %7482 = getelementptr inbounds %struct.Reg, %struct.Reg* %7481, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %7482 to i64*
  %7483 = load i64, i64* %RAX.i165
  %7484 = add i64 %7483, 740
  %7485 = load i64, i64* %PC.i164
  %7486 = add i64 %7485, 6
  store i64 %7486, i64* %PC.i164
  %7487 = inttoptr i64 %7484 to i32*
  %7488 = load i32, i32* %7487
  %7489 = zext i32 %7488 to i64
  store i64 %7489, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_40a18f, %struct.Memory** %MEMORY
  %loadMem_40a195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 33
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %7492 to i64*
  %7493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7494 = getelementptr inbounds %struct.GPR, %struct.GPR* %7493, i32 0, i32 7
  %7495 = getelementptr inbounds %struct.Reg, %struct.Reg* %7494, i32 0, i32 0
  %EDX.i163 = bitcast %union.anon* %7495 to i32*
  %7496 = load i32, i32* %EDX.i163
  %7497 = zext i32 %7496 to i64
  %7498 = load i64, i64* %PC.i162
  %7499 = add i64 %7498, 7
  store i64 %7499, i64* %PC.i162
  %7500 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %7501 = sub i32 %7496, %7500
  %7502 = icmp ult i32 %7496, %7500
  %7503 = zext i1 %7502 to i8
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7503, i8* %7504, align 1
  %7505 = and i32 %7501, 255
  %7506 = call i32 @llvm.ctpop.i32(i32 %7505)
  %7507 = trunc i32 %7506 to i8
  %7508 = and i8 %7507, 1
  %7509 = xor i8 %7508, 1
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7509, i8* %7510, align 1
  %7511 = xor i32 %7500, %7496
  %7512 = xor i32 %7511, %7501
  %7513 = lshr i32 %7512, 4
  %7514 = trunc i32 %7513 to i8
  %7515 = and i8 %7514, 1
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7515, i8* %7516, align 1
  %7517 = icmp eq i32 %7501, 0
  %7518 = zext i1 %7517 to i8
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7518, i8* %7519, align 1
  %7520 = lshr i32 %7501, 31
  %7521 = trunc i32 %7520 to i8
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7521, i8* %7522, align 1
  %7523 = lshr i32 %7496, 31
  %7524 = lshr i32 %7500, 31
  %7525 = xor i32 %7524, %7523
  %7526 = xor i32 %7520, %7523
  %7527 = add i32 %7526, %7525
  %7528 = icmp eq i32 %7527, 2
  %7529 = zext i1 %7528 to i8
  %7530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7529, i8* %7530, align 1
  store %struct.Memory* %loadMem_40a195, %struct.Memory** %MEMORY
  %loadMem_40a19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7532 = getelementptr inbounds %struct.GPR, %struct.GPR* %7531, i32 0, i32 33
  %7533 = getelementptr inbounds %struct.Reg, %struct.Reg* %7532, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %7533 to i64*
  %7534 = load i64, i64* %PC.i161
  %7535 = add i64 %7534, 34
  %7536 = load i64, i64* %PC.i161
  %7537 = add i64 %7536, 6
  %7538 = load i64, i64* %PC.i161
  %7539 = add i64 %7538, 6
  store i64 %7539, i64* %PC.i161
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7541 = load i8, i8* %7540, align 1
  store i8 %7541, i8* %BRANCH_TAKEN, align 1
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7543 = icmp ne i8 %7541, 0
  %7544 = select i1 %7543, i64 %7535, i64 %7537
  store i64 %7544, i64* %7542, align 8
  store %struct.Memory* %loadMem_40a19c, %struct.Memory** %MEMORY
  %loadBr_40a19c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a19c = icmp eq i8 %loadBr_40a19c, 1
  br i1 %cmpBr_40a19c, label %block_.L_40a1be, label %block_40a1a2

block_40a1a2:                                     ; preds = %block_40a16f
  %loadMem_40a1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7546 = getelementptr inbounds %struct.GPR, %struct.GPR* %7545, i32 0, i32 33
  %7547 = getelementptr inbounds %struct.Reg, %struct.Reg* %7546, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %7547 to i64*
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7549 = getelementptr inbounds %struct.GPR, %struct.GPR* %7548, i32 0, i32 1
  %7550 = getelementptr inbounds %struct.Reg, %struct.Reg* %7549, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %7550 to i64*
  %7551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7552 = getelementptr inbounds %struct.GPR, %struct.GPR* %7551, i32 0, i32 15
  %7553 = getelementptr inbounds %struct.Reg, %struct.Reg* %7552, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %7553 to i64*
  %7554 = load i64, i64* %RBP.i160
  %7555 = sub i64 %7554, 20
  %7556 = load i64, i64* %PC.i158
  %7557 = add i64 %7556, 3
  store i64 %7557, i64* %PC.i158
  %7558 = inttoptr i64 %7555 to i32*
  %7559 = load i32, i32* %7558
  %7560 = zext i32 %7559 to i64
  store i64 %7560, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_40a1a2, %struct.Memory** %MEMORY
  %loadMem_40a1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7562 = getelementptr inbounds %struct.GPR, %struct.GPR* %7561, i32 0, i32 33
  %7563 = getelementptr inbounds %struct.Reg, %struct.Reg* %7562, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %7563 to i64*
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7565 = getelementptr inbounds %struct.GPR, %struct.GPR* %7564, i32 0, i32 1
  %7566 = getelementptr inbounds %struct.Reg, %struct.Reg* %7565, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %7566 to i64*
  %7567 = load i64, i64* %RAX.i157
  %7568 = load i64, i64* %PC.i156
  %7569 = add i64 %7568, 3
  store i64 %7569, i64* %PC.i156
  %7570 = trunc i64 %7567 to i32
  %7571 = add i32 1, %7570
  %7572 = zext i32 %7571 to i64
  store i64 %7572, i64* %RAX.i157, align 8
  %7573 = icmp ult i32 %7571, %7570
  %7574 = icmp ult i32 %7571, 1
  %7575 = or i1 %7573, %7574
  %7576 = zext i1 %7575 to i8
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7576, i8* %7577, align 1
  %7578 = and i32 %7571, 255
  %7579 = call i32 @llvm.ctpop.i32(i32 %7578)
  %7580 = trunc i32 %7579 to i8
  %7581 = and i8 %7580, 1
  %7582 = xor i8 %7581, 1
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7582, i8* %7583, align 1
  %7584 = xor i64 1, %7567
  %7585 = trunc i64 %7584 to i32
  %7586 = xor i32 %7585, %7571
  %7587 = lshr i32 %7586, 4
  %7588 = trunc i32 %7587 to i8
  %7589 = and i8 %7588, 1
  %7590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7589, i8* %7590, align 1
  %7591 = icmp eq i32 %7571, 0
  %7592 = zext i1 %7591 to i8
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7592, i8* %7593, align 1
  %7594 = lshr i32 %7571, 31
  %7595 = trunc i32 %7594 to i8
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7595, i8* %7596, align 1
  %7597 = lshr i32 %7570, 31
  %7598 = xor i32 %7594, %7597
  %7599 = add i32 %7598, %7594
  %7600 = icmp eq i32 %7599, 2
  %7601 = zext i1 %7600 to i8
  %7602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7601, i8* %7602, align 1
  store %struct.Memory* %loadMem_40a1a5, %struct.Memory** %MEMORY
  %loadMem_40a1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 33
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7605 to i64*
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7607 = getelementptr inbounds %struct.GPR, %struct.GPR* %7606, i32 0, i32 1
  %7608 = getelementptr inbounds %struct.Reg, %struct.Reg* %7607, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %7608 to i32*
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7610 = getelementptr inbounds %struct.GPR, %struct.GPR* %7609, i32 0, i32 15
  %7611 = getelementptr inbounds %struct.Reg, %struct.Reg* %7610, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %7611 to i64*
  %7612 = load i64, i64* %RBP.i155
  %7613 = sub i64 %7612, 20
  %7614 = load i32, i32* %EAX.i154
  %7615 = zext i32 %7614 to i64
  %7616 = load i64, i64* %PC.i153
  %7617 = add i64 %7616, 3
  store i64 %7617, i64* %PC.i153
  %7618 = inttoptr i64 %7613 to i32*
  store i32 %7614, i32* %7618
  store %struct.Memory* %loadMem_40a1a8, %struct.Memory** %MEMORY
  %loadMem_40a1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7620 = getelementptr inbounds %struct.GPR, %struct.GPR* %7619, i32 0, i32 33
  %7621 = getelementptr inbounds %struct.Reg, %struct.Reg* %7620, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7621 to i64*
  %7622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7623 = getelementptr inbounds %struct.GPR, %struct.GPR* %7622, i32 0, i32 5
  %7624 = getelementptr inbounds %struct.Reg, %struct.Reg* %7623, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %7624 to i64*
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7626 = getelementptr inbounds %struct.GPR, %struct.GPR* %7625, i32 0, i32 15
  %7627 = getelementptr inbounds %struct.Reg, %struct.Reg* %7626, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %7627 to i64*
  %7628 = load i64, i64* %RBP.i152
  %7629 = sub i64 %7628, 44
  %7630 = load i64, i64* %PC.i150
  %7631 = add i64 %7630, 4
  store i64 %7631, i64* %PC.i150
  %7632 = inttoptr i64 %7629 to i32*
  %7633 = load i32, i32* %7632
  %7634 = sext i32 %7633 to i64
  store i64 %7634, i64* %RCX.i151, align 8
  store %struct.Memory* %loadMem_40a1ab, %struct.Memory** %MEMORY
  %loadMem_40a1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7636 = getelementptr inbounds %struct.GPR, %struct.GPR* %7635, i32 0, i32 33
  %7637 = getelementptr inbounds %struct.Reg, %struct.Reg* %7636, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7637 to i64*
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7639 = getelementptr inbounds %struct.GPR, %struct.GPR* %7638, i32 0, i32 1
  %7640 = getelementptr inbounds %struct.Reg, %struct.Reg* %7639, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %7640 to i64*
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7642 = getelementptr inbounds %struct.GPR, %struct.GPR* %7641, i32 0, i32 5
  %7643 = getelementptr inbounds %struct.Reg, %struct.Reg* %7642, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %7643 to i64*
  %7644 = load i64, i64* %RCX.i149
  %7645 = mul i64 %7644, 4
  %7646 = add i64 %7645, 11187184
  %7647 = load i64, i64* %PC.i147
  %7648 = add i64 %7647, 7
  store i64 %7648, i64* %PC.i147
  %7649 = inttoptr i64 %7646 to i32*
  %7650 = load i32, i32* %7649
  %7651 = zext i32 %7650 to i64
  store i64 %7651, i64* %RAX.i148, align 8
  store %struct.Memory* %loadMem_40a1af, %struct.Memory** %MEMORY
  %loadMem_40a1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 33
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %7654 to i64*
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7656 = getelementptr inbounds %struct.GPR, %struct.GPR* %7655, i32 0, i32 1
  %7657 = getelementptr inbounds %struct.Reg, %struct.Reg* %7656, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %7657 to i32*
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7659 = getelementptr inbounds %struct.GPR, %struct.GPR* %7658, i32 0, i32 15
  %7660 = getelementptr inbounds %struct.Reg, %struct.Reg* %7659, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %7660 to i64*
  %7661 = load i64, i64* %RBP.i146
  %7662 = sub i64 %7661, 28
  %7663 = load i32, i32* %EAX.i145
  %7664 = zext i32 %7663 to i64
  %7665 = load i64, i64* %PC.i144
  %7666 = add i64 %7665, 3
  store i64 %7666, i64* %PC.i144
  %7667 = inttoptr i64 %7662 to i32*
  store i32 %7663, i32* %7667
  store %struct.Memory* %loadMem_40a1b6, %struct.Memory** %MEMORY
  %loadMem_40a1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 33
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7670 to i64*
  %7671 = load i64, i64* %PC.i143
  %7672 = add i64 %7671, 101
  %7673 = load i64, i64* %PC.i143
  %7674 = add i64 %7673, 5
  store i64 %7674, i64* %PC.i143
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7672, i64* %7675, align 8
  store %struct.Memory* %loadMem_40a1b9, %struct.Memory** %MEMORY
  br label %block_.L_40a21e

block_.L_40a1be:                                  ; preds = %block_40a16f, %block_.L_40a15a
  %loadMem_40a1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7677 = getelementptr inbounds %struct.GPR, %struct.GPR* %7676, i32 0, i32 33
  %7678 = getelementptr inbounds %struct.Reg, %struct.Reg* %7677, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7678 to i64*
  %7679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7680 = getelementptr inbounds %struct.GPR, %struct.GPR* %7679, i32 0, i32 1
  %7681 = getelementptr inbounds %struct.Reg, %struct.Reg* %7680, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %7681 to i64*
  %7682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7683 = getelementptr inbounds %struct.GPR, %struct.GPR* %7682, i32 0, i32 15
  %7684 = getelementptr inbounds %struct.Reg, %struct.Reg* %7683, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %7684 to i64*
  %7685 = load i64, i64* %RBP.i142
  %7686 = sub i64 %7685, 44
  %7687 = load i64, i64* %PC.i140
  %7688 = add i64 %7687, 4
  store i64 %7688, i64* %PC.i140
  %7689 = inttoptr i64 %7686 to i32*
  %7690 = load i32, i32* %7689
  %7691 = sext i32 %7690 to i64
  store i64 %7691, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_40a1be, %struct.Memory** %MEMORY
  %loadMem_40a1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 33
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %7694 to i64*
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 1
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %7697 to i64*
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7699 = getelementptr inbounds %struct.GPR, %struct.GPR* %7698, i32 0, i32 5
  %7700 = getelementptr inbounds %struct.Reg, %struct.Reg* %7699, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %7700 to i64*
  %7701 = load i64, i64* %RAX.i138
  %7702 = add i64 %7701, 12099168
  %7703 = load i64, i64* %PC.i137
  %7704 = add i64 %7703, 8
  store i64 %7704, i64* %PC.i137
  %7705 = inttoptr i64 %7702 to i8*
  %7706 = load i8, i8* %7705
  %7707 = zext i8 %7706 to i64
  store i64 %7707, i64* %RCX.i139, align 8
  store %struct.Memory* %loadMem_40a1c2, %struct.Memory** %MEMORY
  %loadMem_40a1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 33
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7710 to i64*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 5
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7713 to i32*
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7715 = getelementptr inbounds %struct.GPR, %struct.GPR* %7714, i32 0, i32 15
  %7716 = getelementptr inbounds %struct.Reg, %struct.Reg* %7715, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %7716 to i64*
  %7717 = load i32, i32* %ECX.i
  %7718 = zext i32 %7717 to i64
  %7719 = load i64, i64* %RBP.i136
  %7720 = sub i64 %7719, 12
  %7721 = load i64, i64* %PC.i135
  %7722 = add i64 %7721, 3
  store i64 %7722, i64* %PC.i135
  %7723 = inttoptr i64 %7720 to i32*
  %7724 = load i32, i32* %7723
  %7725 = sub i32 %7717, %7724
  %7726 = icmp ult i32 %7717, %7724
  %7727 = zext i1 %7726 to i8
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7727, i8* %7728, align 1
  %7729 = and i32 %7725, 255
  %7730 = call i32 @llvm.ctpop.i32(i32 %7729)
  %7731 = trunc i32 %7730 to i8
  %7732 = and i8 %7731, 1
  %7733 = xor i8 %7732, 1
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7733, i8* %7734, align 1
  %7735 = xor i32 %7724, %7717
  %7736 = xor i32 %7735, %7725
  %7737 = lshr i32 %7736, 4
  %7738 = trunc i32 %7737 to i8
  %7739 = and i8 %7738, 1
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7739, i8* %7740, align 1
  %7741 = icmp eq i32 %7725, 0
  %7742 = zext i1 %7741 to i8
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7742, i8* %7743, align 1
  %7744 = lshr i32 %7725, 31
  %7745 = trunc i32 %7744 to i8
  %7746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7745, i8* %7746, align 1
  %7747 = lshr i32 %7717, 31
  %7748 = lshr i32 %7724, 31
  %7749 = xor i32 %7748, %7747
  %7750 = xor i32 %7744, %7747
  %7751 = add i32 %7750, %7749
  %7752 = icmp eq i32 %7751, 2
  %7753 = zext i1 %7752 to i8
  %7754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7753, i8* %7754, align 1
  store %struct.Memory* %loadMem_40a1ca, %struct.Memory** %MEMORY
  %loadMem_40a1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 33
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7757 to i64*
  %7758 = load i64, i64* %PC.i134
  %7759 = add i64 %7758, 76
  %7760 = load i64, i64* %PC.i134
  %7761 = add i64 %7760, 6
  %7762 = load i64, i64* %PC.i134
  %7763 = add i64 %7762, 6
  store i64 %7763, i64* %PC.i134
  %7764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7765 = load i8, i8* %7764, align 1
  %7766 = icmp eq i8 %7765, 0
  %7767 = zext i1 %7766 to i8
  store i8 %7767, i8* %BRANCH_TAKEN, align 1
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7769 = select i1 %7766, i64 %7759, i64 %7761
  store i64 %7769, i64* %7768, align 8
  store %struct.Memory* %loadMem_40a1cd, %struct.Memory** %MEMORY
  %loadBr_40a1cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a1cd = icmp eq i8 %loadBr_40a1cd, 1
  br i1 %cmpBr_40a1cd, label %block_.L_40a219, label %block_40a1d3

block_40a1d3:                                     ; preds = %block_.L_40a1be
  %loadMem_40a1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 33
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7772 to i64*
  %7773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7774 = getelementptr inbounds %struct.GPR, %struct.GPR* %7773, i32 0, i32 1
  %7775 = getelementptr inbounds %struct.Reg, %struct.Reg* %7774, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %7775 to i64*
  %7776 = load i64, i64* %PC.i132
  %7777 = add i64 %7776, 10
  store i64 %7777, i64* %PC.i132
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_40a1d3, %struct.Memory** %MEMORY
  %loadMem_40a1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7779 = getelementptr inbounds %struct.GPR, %struct.GPR* %7778, i32 0, i32 33
  %7780 = getelementptr inbounds %struct.Reg, %struct.Reg* %7779, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7780 to i64*
  %7781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7782 = getelementptr inbounds %struct.GPR, %struct.GPR* %7781, i32 0, i32 5
  %7783 = getelementptr inbounds %struct.Reg, %struct.Reg* %7782, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %7783 to i64*
  %7784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7785 = getelementptr inbounds %struct.GPR, %struct.GPR* %7784, i32 0, i32 15
  %7786 = getelementptr inbounds %struct.Reg, %struct.Reg* %7785, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %7786 to i64*
  %7787 = load i64, i64* %RBP.i131
  %7788 = sub i64 %7787, 44
  %7789 = load i64, i64* %PC.i129
  %7790 = add i64 %7789, 4
  store i64 %7790, i64* %PC.i129
  %7791 = inttoptr i64 %7788 to i32*
  %7792 = load i32, i32* %7791
  %7793 = sext i32 %7792 to i64
  store i64 %7793, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_40a1dd, %struct.Memory** %MEMORY
  %loadMem_40a1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7795 = getelementptr inbounds %struct.GPR, %struct.GPR* %7794, i32 0, i32 33
  %7796 = getelementptr inbounds %struct.Reg, %struct.Reg* %7795, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7796 to i64*
  %7797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7798 = getelementptr inbounds %struct.GPR, %struct.GPR* %7797, i32 0, i32 5
  %7799 = getelementptr inbounds %struct.Reg, %struct.Reg* %7798, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %7799 to i64*
  %7800 = load i64, i64* %RCX.i128
  %7801 = mul i64 %7800, 4
  %7802 = add i64 %7801, 11187184
  %7803 = load i64, i64* %PC.i127
  %7804 = add i64 %7803, 8
  store i64 %7804, i64* %PC.i127
  %7805 = inttoptr i64 %7802 to i32*
  %7806 = load i32, i32* %7805
  %7807 = sext i32 %7806 to i64
  store i64 %7807, i64* %RCX.i128, align 8
  store %struct.Memory* %loadMem_40a1e1, %struct.Memory** %MEMORY
  %loadMem_40a1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7809 = getelementptr inbounds %struct.GPR, %struct.GPR* %7808, i32 0, i32 33
  %7810 = getelementptr inbounds %struct.Reg, %struct.Reg* %7809, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7810 to i64*
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 5
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %7813 to i64*
  %7814 = load i64, i64* %RCX.i126
  %7815 = load i64, i64* %PC.i125
  %7816 = add i64 %7815, 7
  store i64 %7816, i64* %PC.i125
  %7817 = sext i64 %7814 to i128
  %7818 = and i128 %7817, -18446744073709551616
  %7819 = zext i64 %7814 to i128
  %7820 = or i128 %7818, %7819
  %7821 = mul i128 744, %7820
  %7822 = trunc i128 %7821 to i64
  store i64 %7822, i64* %RCX.i126, align 8
  %7823 = sext i64 %7822 to i128
  %7824 = icmp ne i128 %7823, %7821
  %7825 = zext i1 %7824 to i8
  %7826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7825, i8* %7826, align 1
  %7827 = trunc i128 %7821 to i32
  %7828 = and i32 %7827, 255
  %7829 = call i32 @llvm.ctpop.i32(i32 %7828)
  %7830 = trunc i32 %7829 to i8
  %7831 = and i8 %7830, 1
  %7832 = xor i8 %7831, 1
  %7833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7832, i8* %7833, align 1
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7834, align 1
  %7835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7835, align 1
  %7836 = lshr i64 %7822, 63
  %7837 = trunc i64 %7836 to i8
  %7838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7837, i8* %7838, align 1
  %7839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7825, i8* %7839, align 1
  store %struct.Memory* %loadMem_40a1e9, %struct.Memory** %MEMORY
  %loadMem_40a1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 33
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7842 to i64*
  %7843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7844 = getelementptr inbounds %struct.GPR, %struct.GPR* %7843, i32 0, i32 1
  %7845 = getelementptr inbounds %struct.Reg, %struct.Reg* %7844, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %7845 to i64*
  %7846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7847 = getelementptr inbounds %struct.GPR, %struct.GPR* %7846, i32 0, i32 5
  %7848 = getelementptr inbounds %struct.Reg, %struct.Reg* %7847, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %7848 to i64*
  %7849 = load i64, i64* %RAX.i123
  %7850 = load i64, i64* %RCX.i124
  %7851 = load i64, i64* %PC.i122
  %7852 = add i64 %7851, 3
  store i64 %7852, i64* %PC.i122
  %7853 = add i64 %7850, %7849
  store i64 %7853, i64* %RAX.i123, align 8
  %7854 = icmp ult i64 %7853, %7849
  %7855 = icmp ult i64 %7853, %7850
  %7856 = or i1 %7854, %7855
  %7857 = zext i1 %7856 to i8
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7857, i8* %7858, align 1
  %7859 = trunc i64 %7853 to i32
  %7860 = and i32 %7859, 255
  %7861 = call i32 @llvm.ctpop.i32(i32 %7860)
  %7862 = trunc i32 %7861 to i8
  %7863 = and i8 %7862, 1
  %7864 = xor i8 %7863, 1
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7864, i8* %7865, align 1
  %7866 = xor i64 %7850, %7849
  %7867 = xor i64 %7866, %7853
  %7868 = lshr i64 %7867, 4
  %7869 = trunc i64 %7868 to i8
  %7870 = and i8 %7869, 1
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7870, i8* %7871, align 1
  %7872 = icmp eq i64 %7853, 0
  %7873 = zext i1 %7872 to i8
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7873, i8* %7874, align 1
  %7875 = lshr i64 %7853, 63
  %7876 = trunc i64 %7875 to i8
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7876, i8* %7877, align 1
  %7878 = lshr i64 %7849, 63
  %7879 = lshr i64 %7850, 63
  %7880 = xor i64 %7875, %7878
  %7881 = xor i64 %7875, %7879
  %7882 = add i64 %7880, %7881
  %7883 = icmp eq i64 %7882, 2
  %7884 = zext i1 %7883 to i8
  %7885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7884, i8* %7885, align 1
  store %struct.Memory* %loadMem_40a1f0, %struct.Memory** %MEMORY
  %loadMem_40a1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7887 = getelementptr inbounds %struct.GPR, %struct.GPR* %7886, i32 0, i32 33
  %7888 = getelementptr inbounds %struct.Reg, %struct.Reg* %7887, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7888 to i64*
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7890 = getelementptr inbounds %struct.GPR, %struct.GPR* %7889, i32 0, i32 1
  %7891 = getelementptr inbounds %struct.Reg, %struct.Reg* %7890, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %7891 to i64*
  %7892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7893 = getelementptr inbounds %struct.GPR, %struct.GPR* %7892, i32 0, i32 7
  %7894 = getelementptr inbounds %struct.Reg, %struct.Reg* %7893, i32 0, i32 0
  %RDX.i121 = bitcast %union.anon* %7894 to i64*
  %7895 = load i64, i64* %RAX.i120
  %7896 = add i64 %7895, 740
  %7897 = load i64, i64* %PC.i119
  %7898 = add i64 %7897, 6
  store i64 %7898, i64* %PC.i119
  %7899 = inttoptr i64 %7896 to i32*
  %7900 = load i32, i32* %7899
  %7901 = zext i32 %7900 to i64
  store i64 %7901, i64* %RDX.i121, align 8
  store %struct.Memory* %loadMem_40a1f3, %struct.Memory** %MEMORY
  %loadMem_40a1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7903 = getelementptr inbounds %struct.GPR, %struct.GPR* %7902, i32 0, i32 33
  %7904 = getelementptr inbounds %struct.Reg, %struct.Reg* %7903, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %7904 to i64*
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 7
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %EDX.i118 = bitcast %union.anon* %7907 to i32*
  %7908 = load i32, i32* %EDX.i118
  %7909 = zext i32 %7908 to i64
  %7910 = load i64, i64* %PC.i117
  %7911 = add i64 %7910, 7
  store i64 %7911, i64* %PC.i117
  %7912 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %7913 = sub i32 %7908, %7912
  %7914 = icmp ult i32 %7908, %7912
  %7915 = zext i1 %7914 to i8
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7915, i8* %7916, align 1
  %7917 = and i32 %7913, 255
  %7918 = call i32 @llvm.ctpop.i32(i32 %7917)
  %7919 = trunc i32 %7918 to i8
  %7920 = and i8 %7919, 1
  %7921 = xor i8 %7920, 1
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7921, i8* %7922, align 1
  %7923 = xor i32 %7912, %7908
  %7924 = xor i32 %7923, %7913
  %7925 = lshr i32 %7924, 4
  %7926 = trunc i32 %7925 to i8
  %7927 = and i8 %7926, 1
  %7928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7927, i8* %7928, align 1
  %7929 = icmp eq i32 %7913, 0
  %7930 = zext i1 %7929 to i8
  %7931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7930, i8* %7931, align 1
  %7932 = lshr i32 %7913, 31
  %7933 = trunc i32 %7932 to i8
  %7934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7933, i8* %7934, align 1
  %7935 = lshr i32 %7908, 31
  %7936 = lshr i32 %7912, 31
  %7937 = xor i32 %7936, %7935
  %7938 = xor i32 %7932, %7935
  %7939 = add i32 %7938, %7937
  %7940 = icmp eq i32 %7939, 2
  %7941 = zext i1 %7940 to i8
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7941, i8* %7942, align 1
  store %struct.Memory* %loadMem_40a1f9, %struct.Memory** %MEMORY
  %loadMem_40a200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 33
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7945 to i64*
  %7946 = load i64, i64* %PC.i116
  %7947 = add i64 %7946, 25
  %7948 = load i64, i64* %PC.i116
  %7949 = add i64 %7948, 6
  %7950 = load i64, i64* %PC.i116
  %7951 = add i64 %7950, 6
  store i64 %7951, i64* %PC.i116
  %7952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7953 = load i8, i8* %7952, align 1
  store i8 %7953, i8* %BRANCH_TAKEN, align 1
  %7954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7955 = icmp ne i8 %7953, 0
  %7956 = select i1 %7955, i64 %7947, i64 %7949
  store i64 %7956, i64* %7954, align 8
  store %struct.Memory* %loadMem_40a200, %struct.Memory** %MEMORY
  %loadBr_40a200 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a200 = icmp eq i8 %loadBr_40a200, 1
  br i1 %cmpBr_40a200, label %block_.L_40a219, label %block_40a206

block_40a206:                                     ; preds = %block_40a1d3
  %loadMem_40a206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7958 = getelementptr inbounds %struct.GPR, %struct.GPR* %7957, i32 0, i32 33
  %7959 = getelementptr inbounds %struct.Reg, %struct.Reg* %7958, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7959 to i64*
  %7960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7961 = getelementptr inbounds %struct.GPR, %struct.GPR* %7960, i32 0, i32 1
  %7962 = getelementptr inbounds %struct.Reg, %struct.Reg* %7961, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %7962 to i64*
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7964 = getelementptr inbounds %struct.GPR, %struct.GPR* %7963, i32 0, i32 15
  %7965 = getelementptr inbounds %struct.Reg, %struct.Reg* %7964, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %7965 to i64*
  %7966 = load i64, i64* %RBP.i115
  %7967 = sub i64 %7966, 44
  %7968 = load i64, i64* %PC.i113
  %7969 = add i64 %7968, 4
  store i64 %7969, i64* %PC.i113
  %7970 = inttoptr i64 %7967 to i32*
  %7971 = load i32, i32* %7970
  %7972 = sext i32 %7971 to i64
  store i64 %7972, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_40a206, %struct.Memory** %MEMORY
  %loadMem_40a20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7974 = getelementptr inbounds %struct.GPR, %struct.GPR* %7973, i32 0, i32 33
  %7975 = getelementptr inbounds %struct.Reg, %struct.Reg* %7974, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7975 to i64*
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7977 = getelementptr inbounds %struct.GPR, %struct.GPR* %7976, i32 0, i32 1
  %7978 = getelementptr inbounds %struct.Reg, %struct.Reg* %7977, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %7978 to i64*
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7980 = getelementptr inbounds %struct.GPR, %struct.GPR* %7979, i32 0, i32 11
  %7981 = getelementptr inbounds %struct.Reg, %struct.Reg* %7980, i32 0, i32 0
  %RDI.i112 = bitcast %union.anon* %7981 to i64*
  %7982 = load i64, i64* %RAX.i111
  %7983 = mul i64 %7982, 4
  %7984 = add i64 %7983, 11187184
  %7985 = load i64, i64* %PC.i110
  %7986 = add i64 %7985, 7
  store i64 %7986, i64* %PC.i110
  %7987 = inttoptr i64 %7984 to i32*
  %7988 = load i32, i32* %7987
  %7989 = zext i32 %7988 to i64
  store i64 %7989, i64* %RDI.i112, align 8
  store %struct.Memory* %loadMem_40a20a, %struct.Memory** %MEMORY
  %loadMem_40a211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7991 = getelementptr inbounds %struct.GPR, %struct.GPR* %7990, i32 0, i32 33
  %7992 = getelementptr inbounds %struct.Reg, %struct.Reg* %7991, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7992 to i64*
  %7993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7994 = getelementptr inbounds %struct.GPR, %struct.GPR* %7993, i32 0, i32 9
  %7995 = getelementptr inbounds %struct.Reg, %struct.Reg* %7994, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %7995 to i64*
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 15
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %7998 to i64*
  %7999 = load i64, i64* %RBP.i109
  %8000 = sub i64 %7999, 4
  %8001 = load i64, i64* %PC.i107
  %8002 = add i64 %8001, 3
  store i64 %8002, i64* %PC.i107
  %8003 = inttoptr i64 %8000 to i32*
  %8004 = load i32, i32* %8003
  %8005 = zext i32 %8004 to i64
  store i64 %8005, i64* %RSI.i108, align 8
  store %struct.Memory* %loadMem_40a211, %struct.Memory** %MEMORY
  %loadMem1_40a214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8007 = getelementptr inbounds %struct.GPR, %struct.GPR* %8006, i32 0, i32 33
  %8008 = getelementptr inbounds %struct.Reg, %struct.Reg* %8007, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %8008 to i64*
  %8009 = load i64, i64* %PC.i106
  %8010 = add i64 %8009, 1196
  %8011 = load i64, i64* %PC.i106
  %8012 = add i64 %8011, 5
  %8013 = load i64, i64* %PC.i106
  %8014 = add i64 %8013, 5
  store i64 %8014, i64* %PC.i106
  %8015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8016 = load i64, i64* %8015, align 8
  %8017 = add i64 %8016, -8
  %8018 = inttoptr i64 %8017 to i64*
  store i64 %8012, i64* %8018
  store i64 %8017, i64* %8015, align 8
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8010, i64* %8019, align 8
  store %struct.Memory* %loadMem1_40a214, %struct.Memory** %MEMORY
  %loadMem2_40a214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a214 = load i64, i64* %3
  %call2_40a214 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64 %loadPC_40a214, %struct.Memory* %loadMem2_40a214)
  store %struct.Memory* %call2_40a214, %struct.Memory** %MEMORY
  br label %block_.L_40a219

block_.L_40a219:                                  ; preds = %block_40a206, %block_40a1d3, %block_.L_40a1be
  %loadMem_40a219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8021 = getelementptr inbounds %struct.GPR, %struct.GPR* %8020, i32 0, i32 33
  %8022 = getelementptr inbounds %struct.Reg, %struct.Reg* %8021, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8022 to i64*
  %8023 = load i64, i64* %PC.i105
  %8024 = add i64 %8023, 5
  %8025 = load i64, i64* %PC.i105
  %8026 = add i64 %8025, 5
  store i64 %8026, i64* %PC.i105
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8024, i64* %8027, align 8
  store %struct.Memory* %loadMem_40a219, %struct.Memory** %MEMORY
  br label %block_.L_40a21e

block_.L_40a21e:                                  ; preds = %block_.L_40a219, %block_40a1a2
  %loadMem_40a21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8029 = getelementptr inbounds %struct.GPR, %struct.GPR* %8028, i32 0, i32 33
  %8030 = getelementptr inbounds %struct.Reg, %struct.Reg* %8029, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %8030 to i64*
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 15
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %8033 to i64*
  %8034 = load i64, i64* %RBP.i104
  %8035 = sub i64 %8034, 20
  %8036 = load i64, i64* %PC.i103
  %8037 = add i64 %8036, 4
  store i64 %8037, i64* %PC.i103
  %8038 = inttoptr i64 %8035 to i32*
  %8039 = load i32, i32* %8038
  %8040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8040, align 1
  %8041 = and i32 %8039, 255
  %8042 = call i32 @llvm.ctpop.i32(i32 %8041)
  %8043 = trunc i32 %8042 to i8
  %8044 = and i8 %8043, 1
  %8045 = xor i8 %8044, 1
  %8046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8045, i8* %8046, align 1
  %8047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8047, align 1
  %8048 = icmp eq i32 %8039, 0
  %8049 = zext i1 %8048 to i8
  %8050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8049, i8* %8050, align 1
  %8051 = lshr i32 %8039, 31
  %8052 = trunc i32 %8051 to i8
  %8053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8052, i8* %8053, align 1
  %8054 = lshr i32 %8039, 31
  %8055 = xor i32 %8051, %8054
  %8056 = add i32 %8055, %8054
  %8057 = icmp eq i32 %8056, 2
  %8058 = zext i1 %8057 to i8
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8058, i8* %8059, align 1
  store %struct.Memory* %loadMem_40a21e, %struct.Memory** %MEMORY
  %loadMem_40a222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8061 = getelementptr inbounds %struct.GPR, %struct.GPR* %8060, i32 0, i32 33
  %8062 = getelementptr inbounds %struct.Reg, %struct.Reg* %8061, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %8062 to i64*
  %8063 = load i64, i64* %PC.i102
  %8064 = add i64 %8063, 19
  %8065 = load i64, i64* %PC.i102
  %8066 = add i64 %8065, 6
  %8067 = load i64, i64* %PC.i102
  %8068 = add i64 %8067, 6
  store i64 %8068, i64* %PC.i102
  %8069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8070 = load i8, i8* %8069, align 1
  %8071 = icmp eq i8 %8070, 0
  %8072 = zext i1 %8071 to i8
  store i8 %8072, i8* %BRANCH_TAKEN, align 1
  %8073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8074 = select i1 %8071, i64 %8064, i64 %8066
  store i64 %8074, i64* %8073, align 8
  store %struct.Memory* %loadMem_40a222, %struct.Memory** %MEMORY
  %loadBr_40a222 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a222 = icmp eq i8 %loadBr_40a222, 1
  br i1 %cmpBr_40a222, label %block_.L_40a235, label %block_40a228

block_40a228:                                     ; preds = %block_.L_40a21e
  %loadMem_40a228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8076 = getelementptr inbounds %struct.GPR, %struct.GPR* %8075, i32 0, i32 33
  %8077 = getelementptr inbounds %struct.Reg, %struct.Reg* %8076, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %8077 to i64*
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8079 = getelementptr inbounds %struct.GPR, %struct.GPR* %8078, i32 0, i32 11
  %8080 = getelementptr inbounds %struct.Reg, %struct.Reg* %8079, i32 0, i32 0
  %RDI.i100 = bitcast %union.anon* %8080 to i64*
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8082 = getelementptr inbounds %struct.GPR, %struct.GPR* %8081, i32 0, i32 15
  %8083 = getelementptr inbounds %struct.Reg, %struct.Reg* %8082, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %8083 to i64*
  %8084 = load i64, i64* %RBP.i101
  %8085 = sub i64 %8084, 4
  %8086 = load i64, i64* %PC.i99
  %8087 = add i64 %8086, 3
  store i64 %8087, i64* %PC.i99
  %8088 = inttoptr i64 %8085 to i32*
  %8089 = load i32, i32* %8088
  %8090 = zext i32 %8089 to i64
  store i64 %8090, i64* %RDI.i100, align 8
  store %struct.Memory* %loadMem_40a228, %struct.Memory** %MEMORY
  %loadMem1_40a22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8092 = getelementptr inbounds %struct.GPR, %struct.GPR* %8091, i32 0, i32 33
  %8093 = getelementptr inbounds %struct.Reg, %struct.Reg* %8092, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %8093 to i64*
  %8094 = load i64, i64* %PC.i98
  %8095 = add i64 %8094, 1573
  %8096 = load i64, i64* %PC.i98
  %8097 = add i64 %8096, 5
  %8098 = load i64, i64* %PC.i98
  %8099 = add i64 %8098, 5
  store i64 %8099, i64* %PC.i98
  %8100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8101 = load i64, i64* %8100, align 8
  %8102 = add i64 %8101, -8
  %8103 = inttoptr i64 %8102 to i64*
  store i64 %8097, i64* %8103
  store i64 %8102, i64* %8100, align 8
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8095, i64* %8104, align 8
  store %struct.Memory* %loadMem1_40a22b, %struct.Memory** %MEMORY
  %loadMem2_40a22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a22b = load i64, i64* %3
  %call2_40a22b = call %struct.Memory* @sub_40a850.create_new_string(%struct.State* %0, i64 %loadPC_40a22b, %struct.Memory* %loadMem2_40a22b)
  store %struct.Memory* %call2_40a22b, %struct.Memory** %MEMORY
  %loadMem_40a230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8106 = getelementptr inbounds %struct.GPR, %struct.GPR* %8105, i32 0, i32 33
  %8107 = getelementptr inbounds %struct.Reg, %struct.Reg* %8106, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8107 to i64*
  %8108 = load i64, i64* %PC.i97
  %8109 = add i64 %8108, 99
  %8110 = load i64, i64* %PC.i97
  %8111 = add i64 %8110, 5
  store i64 %8111, i64* %PC.i97
  %8112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8109, i64* %8112, align 8
  store %struct.Memory* %loadMem_40a230, %struct.Memory** %MEMORY
  br label %block_.L_40a293

block_.L_40a235:                                  ; preds = %block_.L_40a21e
  %loadMem_40a235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8114 = getelementptr inbounds %struct.GPR, %struct.GPR* %8113, i32 0, i32 33
  %8115 = getelementptr inbounds %struct.Reg, %struct.Reg* %8114, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %8115 to i64*
  %8116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8117 = getelementptr inbounds %struct.GPR, %struct.GPR* %8116, i32 0, i32 15
  %8118 = getelementptr inbounds %struct.Reg, %struct.Reg* %8117, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %8118 to i64*
  %8119 = load i64, i64* %RBP.i96
  %8120 = sub i64 %8119, 20
  %8121 = load i64, i64* %PC.i95
  %8122 = add i64 %8121, 4
  store i64 %8122, i64* %PC.i95
  %8123 = inttoptr i64 %8120 to i32*
  %8124 = load i32, i32* %8123
  %8125 = sub i32 %8124, 1
  %8126 = icmp ult i32 %8124, 1
  %8127 = zext i1 %8126 to i8
  %8128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8127, i8* %8128, align 1
  %8129 = and i32 %8125, 255
  %8130 = call i32 @llvm.ctpop.i32(i32 %8129)
  %8131 = trunc i32 %8130 to i8
  %8132 = and i8 %8131, 1
  %8133 = xor i8 %8132, 1
  %8134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8133, i8* %8134, align 1
  %8135 = xor i32 %8124, 1
  %8136 = xor i32 %8135, %8125
  %8137 = lshr i32 %8136, 4
  %8138 = trunc i32 %8137 to i8
  %8139 = and i8 %8138, 1
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8139, i8* %8140, align 1
  %8141 = icmp eq i32 %8125, 0
  %8142 = zext i1 %8141 to i8
  %8143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8142, i8* %8143, align 1
  %8144 = lshr i32 %8125, 31
  %8145 = trunc i32 %8144 to i8
  %8146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8145, i8* %8146, align 1
  %8147 = lshr i32 %8124, 31
  %8148 = xor i32 %8144, %8147
  %8149 = add i32 %8148, %8147
  %8150 = icmp eq i32 %8149, 2
  %8151 = zext i1 %8150 to i8
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8151, i8* %8152, align 1
  store %struct.Memory* %loadMem_40a235, %struct.Memory** %MEMORY
  %loadMem_40a239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8154 = getelementptr inbounds %struct.GPR, %struct.GPR* %8153, i32 0, i32 33
  %8155 = getelementptr inbounds %struct.Reg, %struct.Reg* %8154, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8155 to i64*
  %8156 = load i64, i64* %PC.i94
  %8157 = add i64 %8156, 77
  %8158 = load i64, i64* %PC.i94
  %8159 = add i64 %8158, 6
  %8160 = load i64, i64* %PC.i94
  %8161 = add i64 %8160, 6
  store i64 %8161, i64* %PC.i94
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8163 = load i8, i8* %8162, align 1
  %8164 = icmp eq i8 %8163, 0
  %8165 = zext i1 %8164 to i8
  store i8 %8165, i8* %BRANCH_TAKEN, align 1
  %8166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8167 = select i1 %8164, i64 %8157, i64 %8159
  store i64 %8167, i64* %8166, align 8
  store %struct.Memory* %loadMem_40a239, %struct.Memory** %MEMORY
  %loadBr_40a239 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a239 = icmp eq i8 %loadBr_40a239, 1
  br i1 %cmpBr_40a239, label %block_.L_40a286, label %block_40a23f

block_40a23f:                                     ; preds = %block_.L_40a235
  %loadMem_40a23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8169 = getelementptr inbounds %struct.GPR, %struct.GPR* %8168, i32 0, i32 33
  %8170 = getelementptr inbounds %struct.Reg, %struct.Reg* %8169, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8170 to i64*
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8172 = getelementptr inbounds %struct.GPR, %struct.GPR* %8171, i32 0, i32 15
  %8173 = getelementptr inbounds %struct.Reg, %struct.Reg* %8172, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %8173 to i64*
  %8174 = load i64, i64* %RBP.i93
  %8175 = sub i64 %8174, 28
  %8176 = load i64, i64* %PC.i92
  %8177 = add i64 %8176, 4
  store i64 %8177, i64* %PC.i92
  %8178 = inttoptr i64 %8175 to i32*
  %8179 = load i32, i32* %8178
  %8180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8180, align 1
  %8181 = and i32 %8179, 255
  %8182 = call i32 @llvm.ctpop.i32(i32 %8181)
  %8183 = trunc i32 %8182 to i8
  %8184 = and i8 %8183, 1
  %8185 = xor i8 %8184, 1
  %8186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8185, i8* %8186, align 1
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8187, align 1
  %8188 = icmp eq i32 %8179, 0
  %8189 = zext i1 %8188 to i8
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8189, i8* %8190, align 1
  %8191 = lshr i32 %8179, 31
  %8192 = trunc i32 %8191 to i8
  %8193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8192, i8* %8193, align 1
  %8194 = lshr i32 %8179, 31
  %8195 = xor i32 %8191, %8194
  %8196 = add i32 %8195, %8194
  %8197 = icmp eq i32 %8196, 2
  %8198 = zext i1 %8197 to i8
  %8199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8198, i8* %8199, align 1
  store %struct.Memory* %loadMem_40a23f, %struct.Memory** %MEMORY
  %loadMem_40a243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8201 = getelementptr inbounds %struct.GPR, %struct.GPR* %8200, i32 0, i32 33
  %8202 = getelementptr inbounds %struct.Reg, %struct.Reg* %8201, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %8202 to i64*
  %8203 = load i64, i64* %PC.i91
  %8204 = add i64 %8203, 11
  %8205 = load i64, i64* %PC.i91
  %8206 = add i64 %8205, 6
  %8207 = load i64, i64* %PC.i91
  %8208 = add i64 %8207, 6
  store i64 %8208, i64* %PC.i91
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8210 = load i8, i8* %8209, align 1
  %8211 = icmp ne i8 %8210, 0
  %8212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8213 = load i8, i8* %8212, align 1
  %8214 = icmp ne i8 %8213, 0
  %8215 = xor i1 %8211, %8214
  %8216 = zext i1 %8215 to i8
  store i8 %8216, i8* %BRANCH_TAKEN, align 1
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8218 = select i1 %8215, i64 %8204, i64 %8206
  store i64 %8218, i64* %8217, align 8
  store %struct.Memory* %loadMem_40a243, %struct.Memory** %MEMORY
  %loadBr_40a243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a243 = icmp eq i8 %loadBr_40a243, 1
  br i1 %cmpBr_40a243, label %block_.L_40a24e, label %block_40a249

block_40a249:                                     ; preds = %block_40a23f
  %loadMem_40a249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8220 = getelementptr inbounds %struct.GPR, %struct.GPR* %8219, i32 0, i32 33
  %8221 = getelementptr inbounds %struct.Reg, %struct.Reg* %8220, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %8221 to i64*
  %8222 = load i64, i64* %PC.i90
  %8223 = add i64 %8222, 45
  %8224 = load i64, i64* %PC.i90
  %8225 = add i64 %8224, 5
  store i64 %8225, i64* %PC.i90
  %8226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8223, i64* %8226, align 8
  store %struct.Memory* %loadMem_40a249, %struct.Memory** %MEMORY
  br label %block_.L_40a276

block_.L_40a24e:                                  ; preds = %block_40a23f
  %loadMem_40a24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8228 = getelementptr inbounds %struct.GPR, %struct.GPR* %8227, i32 0, i32 33
  %8229 = getelementptr inbounds %struct.Reg, %struct.Reg* %8228, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %8229 to i64*
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8231 = getelementptr inbounds %struct.GPR, %struct.GPR* %8230, i32 0, i32 11
  %8232 = getelementptr inbounds %struct.Reg, %struct.Reg* %8231, i32 0, i32 0
  %RDI.i89 = bitcast %union.anon* %8232 to i64*
  %8233 = load i64, i64* %PC.i88
  %8234 = add i64 %8233, 10
  store i64 %8234, i64* %PC.i88
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i89, align 8
  store %struct.Memory* %loadMem_40a24e, %struct.Memory** %MEMORY
  %loadMem_40a258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8236 = getelementptr inbounds %struct.GPR, %struct.GPR* %8235, i32 0, i32 33
  %8237 = getelementptr inbounds %struct.Reg, %struct.Reg* %8236, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %8237 to i64*
  %8238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8239 = getelementptr inbounds %struct.GPR, %struct.GPR* %8238, i32 0, i32 9
  %8240 = getelementptr inbounds %struct.Reg, %struct.Reg* %8239, i32 0, i32 0
  %RSI.i87 = bitcast %union.anon* %8240 to i64*
  %8241 = load i64, i64* %PC.i86
  %8242 = add i64 %8241, 5
  store i64 %8242, i64* %PC.i86
  store i64 3498, i64* %RSI.i87, align 8
  store %struct.Memory* %loadMem_40a258, %struct.Memory** %MEMORY
  %loadMem_40a25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8244 = getelementptr inbounds %struct.GPR, %struct.GPR* %8243, i32 0, i32 33
  %8245 = getelementptr inbounds %struct.Reg, %struct.Reg* %8244, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %8245 to i64*
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8247 = getelementptr inbounds %struct.GPR, %struct.GPR* %8246, i32 0, i32 7
  %8248 = getelementptr inbounds %struct.Reg, %struct.Reg* %8247, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %8248 to i64*
  %8249 = load i64, i64* %PC.i84
  %8250 = add i64 %8249, 10
  store i64 %8250, i64* %PC.i84
  store i64 ptrtoint (%G__0x57c4d2_type* @G__0x57c4d2 to i64), i64* %RDX.i85, align 8
  store %struct.Memory* %loadMem_40a25d, %struct.Memory** %MEMORY
  %loadMem_40a267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8252 = getelementptr inbounds %struct.GPR, %struct.GPR* %8251, i32 0, i32 33
  %8253 = getelementptr inbounds %struct.Reg, %struct.Reg* %8252, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %8253 to i64*
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8255 = getelementptr inbounds %struct.GPR, %struct.GPR* %8254, i32 0, i32 1
  %8256 = getelementptr inbounds %struct.Reg, %struct.Reg* %8255, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %8256 to i64*
  %8257 = load i64, i64* %PC.i82
  %8258 = add i64 %8257, 5
  store i64 %8258, i64* %PC.i82
  store i64 4294967295, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_40a267, %struct.Memory** %MEMORY
  %loadMem_40a26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8260 = getelementptr inbounds %struct.GPR, %struct.GPR* %8259, i32 0, i32 33
  %8261 = getelementptr inbounds %struct.Reg, %struct.Reg* %8260, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %8261 to i64*
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8263 = getelementptr inbounds %struct.GPR, %struct.GPR* %8262, i32 0, i32 1
  %8264 = getelementptr inbounds %struct.Reg, %struct.Reg* %8263, i32 0, i32 0
  %EAX.i80 = bitcast %union.anon* %8264 to i32*
  %8265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8266 = getelementptr inbounds %struct.GPR, %struct.GPR* %8265, i32 0, i32 5
  %8267 = getelementptr inbounds %struct.Reg, %struct.Reg* %8266, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %8267 to i64*
  %8268 = load i32, i32* %EAX.i80
  %8269 = zext i32 %8268 to i64
  %8270 = load i64, i64* %PC.i79
  %8271 = add i64 %8270, 2
  store i64 %8271, i64* %PC.i79
  %8272 = and i64 %8269, 4294967295
  store i64 %8272, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_40a26c, %struct.Memory** %MEMORY
  %loadMem_40a26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8274 = getelementptr inbounds %struct.GPR, %struct.GPR* %8273, i32 0, i32 33
  %8275 = getelementptr inbounds %struct.Reg, %struct.Reg* %8274, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8275 to i64*
  %8276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8277 = getelementptr inbounds %struct.GPR, %struct.GPR* %8276, i32 0, i32 1
  %8278 = getelementptr inbounds %struct.Reg, %struct.Reg* %8277, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8278 to i32*
  %8279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8280 = getelementptr inbounds %struct.GPR, %struct.GPR* %8279, i32 0, i32 17
  %8281 = getelementptr inbounds %struct.Reg, %struct.Reg* %8280, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %8281 to i32*
  %8282 = bitcast i32* %R8D.i to i64*
  %8283 = load i32, i32* %EAX.i
  %8284 = zext i32 %8283 to i64
  %8285 = load i64, i64* %PC.i78
  %8286 = add i64 %8285, 3
  store i64 %8286, i64* %PC.i78
  %8287 = and i64 %8284, 4294967295
  store i64 %8287, i64* %8282, align 8
  store %struct.Memory* %loadMem_40a26e, %struct.Memory** %MEMORY
  %loadMem1_40a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8289 = getelementptr inbounds %struct.GPR, %struct.GPR* %8288, i32 0, i32 33
  %8290 = getelementptr inbounds %struct.Reg, %struct.Reg* %8289, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %8290 to i64*
  %8291 = load i64, i64* %PC.i77
  %8292 = add i64 %8291, 294431
  %8293 = load i64, i64* %PC.i77
  %8294 = add i64 %8293, 5
  %8295 = load i64, i64* %PC.i77
  %8296 = add i64 %8295, 5
  store i64 %8296, i64* %PC.i77
  %8297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8298 = load i64, i64* %8297, align 8
  %8299 = add i64 %8298, -8
  %8300 = inttoptr i64 %8299 to i64*
  store i64 %8294, i64* %8300
  store i64 %8299, i64* %8297, align 8
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8292, i64* %8301, align 8
  store %struct.Memory* %loadMem1_40a271, %struct.Memory** %MEMORY
  %loadMem2_40a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a271 = load i64, i64* %3
  %call2_40a271 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_40a271, %struct.Memory* %loadMem2_40a271)
  store %struct.Memory* %call2_40a271, %struct.Memory** %MEMORY
  br label %block_.L_40a276

block_.L_40a276:                                  ; preds = %block_.L_40a24e, %block_40a249
  %loadMem_40a276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8303 = getelementptr inbounds %struct.GPR, %struct.GPR* %8302, i32 0, i32 33
  %8304 = getelementptr inbounds %struct.Reg, %struct.Reg* %8303, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %8304 to i64*
  %8305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8306 = getelementptr inbounds %struct.GPR, %struct.GPR* %8305, i32 0, i32 11
  %8307 = getelementptr inbounds %struct.Reg, %struct.Reg* %8306, i32 0, i32 0
  %RDI.i75 = bitcast %union.anon* %8307 to i64*
  %8308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8309 = getelementptr inbounds %struct.GPR, %struct.GPR* %8308, i32 0, i32 15
  %8310 = getelementptr inbounds %struct.Reg, %struct.Reg* %8309, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %8310 to i64*
  %8311 = load i64, i64* %RBP.i76
  %8312 = sub i64 %8311, 4
  %8313 = load i64, i64* %PC.i74
  %8314 = add i64 %8313, 3
  store i64 %8314, i64* %PC.i74
  %8315 = inttoptr i64 %8312 to i32*
  %8316 = load i32, i32* %8315
  %8317 = zext i32 %8316 to i64
  store i64 %8317, i64* %RDI.i75, align 8
  store %struct.Memory* %loadMem_40a276, %struct.Memory** %MEMORY
  %loadMem_40a279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8319 = getelementptr inbounds %struct.GPR, %struct.GPR* %8318, i32 0, i32 33
  %8320 = getelementptr inbounds %struct.Reg, %struct.Reg* %8319, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %8320 to i64*
  %8321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8322 = getelementptr inbounds %struct.GPR, %struct.GPR* %8321, i32 0, i32 9
  %8323 = getelementptr inbounds %struct.Reg, %struct.Reg* %8322, i32 0, i32 0
  %RSI.i72 = bitcast %union.anon* %8323 to i64*
  %8324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8325 = getelementptr inbounds %struct.GPR, %struct.GPR* %8324, i32 0, i32 15
  %8326 = getelementptr inbounds %struct.Reg, %struct.Reg* %8325, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %8326 to i64*
  %8327 = load i64, i64* %RBP.i73
  %8328 = sub i64 %8327, 28
  %8329 = load i64, i64* %PC.i71
  %8330 = add i64 %8329, 3
  store i64 %8330, i64* %PC.i71
  %8331 = inttoptr i64 %8328 to i32*
  %8332 = load i32, i32* %8331
  %8333 = zext i32 %8332 to i64
  store i64 %8333, i64* %RSI.i72, align 8
  store %struct.Memory* %loadMem_40a279, %struct.Memory** %MEMORY
  %loadMem1_40a27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8335 = getelementptr inbounds %struct.GPR, %struct.GPR* %8334, i32 0, i32 33
  %8336 = getelementptr inbounds %struct.Reg, %struct.Reg* %8335, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %8336 to i64*
  %8337 = load i64, i64* %PC.i70
  %8338 = add i64 %8337, 3892
  %8339 = load i64, i64* %PC.i70
  %8340 = add i64 %8339, 5
  %8341 = load i64, i64* %PC.i70
  %8342 = add i64 %8341, 5
  store i64 %8342, i64* %PC.i70
  %8343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8344 = load i64, i64* %8343, align 8
  %8345 = add i64 %8344, -8
  %8346 = inttoptr i64 %8345 to i64*
  store i64 %8340, i64* %8346
  store i64 %8345, i64* %8343, align 8
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8338, i64* %8347, align 8
  store %struct.Memory* %loadMem1_40a27c, %struct.Memory** %MEMORY
  %loadMem2_40a27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a27c = load i64, i64* %3
  %call2_40a27c = call %struct.Memory* @sub_40b1b0.extend_neighbor_string(%struct.State* %0, i64 %loadPC_40a27c, %struct.Memory* %loadMem2_40a27c)
  store %struct.Memory* %call2_40a27c, %struct.Memory** %MEMORY
  %loadMem_40a281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8349 = getelementptr inbounds %struct.GPR, %struct.GPR* %8348, i32 0, i32 33
  %8350 = getelementptr inbounds %struct.Reg, %struct.Reg* %8349, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8350 to i64*
  %8351 = load i64, i64* %PC.i69
  %8352 = add i64 %8351, 202
  %8353 = load i64, i64* %PC.i69
  %8354 = add i64 %8353, 5
  store i64 %8354, i64* %PC.i69
  %8355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8352, i64* %8355, align 8
  store %struct.Memory* %loadMem_40a281, %struct.Memory** %MEMORY
  br label %block_.L_40a34b

block_.L_40a286:                                  ; preds = %block_.L_40a235
  %loadMem_40a286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8357 = getelementptr inbounds %struct.GPR, %struct.GPR* %8356, i32 0, i32 33
  %8358 = getelementptr inbounds %struct.Reg, %struct.Reg* %8357, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8358 to i64*
  %8359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8360 = getelementptr inbounds %struct.GPR, %struct.GPR* %8359, i32 0, i32 11
  %8361 = getelementptr inbounds %struct.Reg, %struct.Reg* %8360, i32 0, i32 0
  %RDI.i67 = bitcast %union.anon* %8361 to i64*
  %8362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8363 = getelementptr inbounds %struct.GPR, %struct.GPR* %8362, i32 0, i32 15
  %8364 = getelementptr inbounds %struct.Reg, %struct.Reg* %8363, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %8364 to i64*
  %8365 = load i64, i64* %RBP.i68
  %8366 = sub i64 %8365, 4
  %8367 = load i64, i64* %PC.i66
  %8368 = add i64 %8367, 3
  store i64 %8368, i64* %PC.i66
  %8369 = inttoptr i64 %8366 to i32*
  %8370 = load i32, i32* %8369
  %8371 = zext i32 %8370 to i64
  store i64 %8371, i64* %RDI.i67, align 8
  store %struct.Memory* %loadMem_40a286, %struct.Memory** %MEMORY
  %loadMem1_40a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8373 = getelementptr inbounds %struct.GPR, %struct.GPR* %8372, i32 0, i32 33
  %8374 = getelementptr inbounds %struct.Reg, %struct.Reg* %8373, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %8374 to i64*
  %8375 = load i64, i64* %PC.i65
  %8376 = add i64 %8375, 7655
  %8377 = load i64, i64* %PC.i65
  %8378 = add i64 %8377, 5
  %8379 = load i64, i64* %PC.i65
  %8380 = add i64 %8379, 5
  store i64 %8380, i64* %PC.i65
  %8381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8382 = load i64, i64* %8381, align 8
  %8383 = add i64 %8382, -8
  %8384 = inttoptr i64 %8383 to i64*
  store i64 %8378, i64* %8384
  store i64 %8383, i64* %8381, align 8
  %8385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8376, i64* %8385, align 8
  store %struct.Memory* %loadMem1_40a289, %struct.Memory** %MEMORY
  %loadMem2_40a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a289 = load i64, i64* %3
  %call2_40a289 = call %struct.Memory* @sub_40c070.assimilate_neighbor_strings(%struct.State* %0, i64 %loadPC_40a289, %struct.Memory* %loadMem2_40a289)
  store %struct.Memory* %call2_40a289, %struct.Memory** %MEMORY
  %loadMem_40a28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8387 = getelementptr inbounds %struct.GPR, %struct.GPR* %8386, i32 0, i32 33
  %8388 = getelementptr inbounds %struct.Reg, %struct.Reg* %8387, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %8388 to i64*
  %8389 = load i64, i64* %PC.i64
  %8390 = add i64 %8389, 189
  %8391 = load i64, i64* %PC.i64
  %8392 = add i64 %8391, 5
  store i64 %8392, i64* %PC.i64
  %8393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8390, i64* %8393, align 8
  store %struct.Memory* %loadMem_40a28e, %struct.Memory** %MEMORY
  br label %block_.L_40a34b

block_.L_40a293:                                  ; preds = %block_40a228
  %loadMem_40a293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8395 = getelementptr inbounds %struct.GPR, %struct.GPR* %8394, i32 0, i32 33
  %8396 = getelementptr inbounds %struct.Reg, %struct.Reg* %8395, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %8396 to i64*
  %8397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8398 = getelementptr inbounds %struct.GPR, %struct.GPR* %8397, i32 0, i32 1
  %8399 = getelementptr inbounds %struct.Reg, %struct.Reg* %8398, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %8399 to i64*
  %8400 = load i64, i64* %PC.i62
  %8401 = add i64 %8400, 10
  store i64 %8401, i64* %PC.i62
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i63, align 8
  store %struct.Memory* %loadMem_40a293, %struct.Memory** %MEMORY
  %loadMem_40a29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8403 = getelementptr inbounds %struct.GPR, %struct.GPR* %8402, i32 0, i32 33
  %8404 = getelementptr inbounds %struct.Reg, %struct.Reg* %8403, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %8404 to i64*
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8406 = getelementptr inbounds %struct.GPR, %struct.GPR* %8405, i32 0, i32 5
  %8407 = getelementptr inbounds %struct.Reg, %struct.Reg* %8406, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %8407 to i64*
  %8408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8409 = getelementptr inbounds %struct.GPR, %struct.GPR* %8408, i32 0, i32 15
  %8410 = getelementptr inbounds %struct.Reg, %struct.Reg* %8409, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %8410 to i64*
  %8411 = load i64, i64* %RBP.i61
  %8412 = sub i64 %8411, 4
  %8413 = load i64, i64* %PC.i59
  %8414 = add i64 %8413, 4
  store i64 %8414, i64* %PC.i59
  %8415 = inttoptr i64 %8412 to i32*
  %8416 = load i32, i32* %8415
  %8417 = sext i32 %8416 to i64
  store i64 %8417, i64* %RCX.i60, align 8
  store %struct.Memory* %loadMem_40a29d, %struct.Memory** %MEMORY
  %loadMem_40a2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8419 = getelementptr inbounds %struct.GPR, %struct.GPR* %8418, i32 0, i32 33
  %8420 = getelementptr inbounds %struct.Reg, %struct.Reg* %8419, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %8420 to i64*
  %8421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8422 = getelementptr inbounds %struct.GPR, %struct.GPR* %8421, i32 0, i32 5
  %8423 = getelementptr inbounds %struct.Reg, %struct.Reg* %8422, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %8423 to i64*
  %8424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8425 = getelementptr inbounds %struct.GPR, %struct.GPR* %8424, i32 0, i32 7
  %8426 = getelementptr inbounds %struct.Reg, %struct.Reg* %8425, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %8426 to i64*
  %8427 = load i64, i64* %RCX.i57
  %8428 = mul i64 %8427, 4
  %8429 = add i64 %8428, 11187184
  %8430 = load i64, i64* %PC.i56
  %8431 = add i64 %8430, 7
  store i64 %8431, i64* %PC.i56
  %8432 = inttoptr i64 %8429 to i32*
  %8433 = load i32, i32* %8432
  %8434 = zext i32 %8433 to i64
  store i64 %8434, i64* %RDX.i58, align 8
  store %struct.Memory* %loadMem_40a2a1, %struct.Memory** %MEMORY
  %loadMem_40a2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8436 = getelementptr inbounds %struct.GPR, %struct.GPR* %8435, i32 0, i32 33
  %8437 = getelementptr inbounds %struct.Reg, %struct.Reg* %8436, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8437 to i64*
  %8438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8439 = getelementptr inbounds %struct.GPR, %struct.GPR* %8438, i32 0, i32 7
  %8440 = getelementptr inbounds %struct.Reg, %struct.Reg* %8439, i32 0, i32 0
  %EDX.i54 = bitcast %union.anon* %8440 to i32*
  %8441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8442 = getelementptr inbounds %struct.GPR, %struct.GPR* %8441, i32 0, i32 15
  %8443 = getelementptr inbounds %struct.Reg, %struct.Reg* %8442, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %8443 to i64*
  %8444 = load i64, i64* %RBP.i55
  %8445 = sub i64 %8444, 28
  %8446 = load i32, i32* %EDX.i54
  %8447 = zext i32 %8446 to i64
  %8448 = load i64, i64* %PC.i53
  %8449 = add i64 %8448, 3
  store i64 %8449, i64* %PC.i53
  %8450 = inttoptr i64 %8445 to i32*
  store i32 %8446, i32* %8450
  store %struct.Memory* %loadMem_40a2a8, %struct.Memory** %MEMORY
  %loadMem_40a2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %8451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8452 = getelementptr inbounds %struct.GPR, %struct.GPR* %8451, i32 0, i32 33
  %8453 = getelementptr inbounds %struct.Reg, %struct.Reg* %8452, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8453 to i64*
  %8454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8455 = getelementptr inbounds %struct.GPR, %struct.GPR* %8454, i32 0, i32 5
  %8456 = getelementptr inbounds %struct.Reg, %struct.Reg* %8455, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %8456 to i64*
  %8457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8458 = getelementptr inbounds %struct.GPR, %struct.GPR* %8457, i32 0, i32 15
  %8459 = getelementptr inbounds %struct.Reg, %struct.Reg* %8458, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %8459 to i64*
  %8460 = load i64, i64* %RBP.i52
  %8461 = sub i64 %8460, 28
  %8462 = load i64, i64* %PC.i50
  %8463 = add i64 %8462, 4
  store i64 %8463, i64* %PC.i50
  %8464 = inttoptr i64 %8461 to i32*
  %8465 = load i32, i32* %8464
  %8466 = sext i32 %8465 to i64
  store i64 %8466, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_40a2ab, %struct.Memory** %MEMORY
  %loadMem_40a2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %8467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8468 = getelementptr inbounds %struct.GPR, %struct.GPR* %8467, i32 0, i32 33
  %8469 = getelementptr inbounds %struct.Reg, %struct.Reg* %8468, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %8469 to i64*
  %8470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8471 = getelementptr inbounds %struct.GPR, %struct.GPR* %8470, i32 0, i32 5
  %8472 = getelementptr inbounds %struct.Reg, %struct.Reg* %8471, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %8472 to i64*
  %8473 = load i64, i64* %RCX.i49
  %8474 = load i64, i64* %PC.i48
  %8475 = add i64 %8474, 7
  store i64 %8475, i64* %PC.i48
  %8476 = sext i64 %8473 to i128
  %8477 = and i128 %8476, -18446744073709551616
  %8478 = zext i64 %8473 to i128
  %8479 = or i128 %8477, %8478
  %8480 = mul i128 744, %8479
  %8481 = trunc i128 %8480 to i64
  store i64 %8481, i64* %RCX.i49, align 8
  %8482 = sext i64 %8481 to i128
  %8483 = icmp ne i128 %8482, %8480
  %8484 = zext i1 %8483 to i8
  %8485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8484, i8* %8485, align 1
  %8486 = trunc i128 %8480 to i32
  %8487 = and i32 %8486, 255
  %8488 = call i32 @llvm.ctpop.i32(i32 %8487)
  %8489 = trunc i32 %8488 to i8
  %8490 = and i8 %8489, 1
  %8491 = xor i8 %8490, 1
  %8492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8491, i8* %8492, align 1
  %8493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8493, align 1
  %8494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8494, align 1
  %8495 = lshr i64 %8481, 63
  %8496 = trunc i64 %8495 to i8
  %8497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8496, i8* %8497, align 1
  %8498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8484, i8* %8498, align 1
  store %struct.Memory* %loadMem_40a2af, %struct.Memory** %MEMORY
  %loadMem_40a2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8500 = getelementptr inbounds %struct.GPR, %struct.GPR* %8499, i32 0, i32 33
  %8501 = getelementptr inbounds %struct.Reg, %struct.Reg* %8500, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8501 to i64*
  %8502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8503 = getelementptr inbounds %struct.GPR, %struct.GPR* %8502, i32 0, i32 1
  %8504 = getelementptr inbounds %struct.Reg, %struct.Reg* %8503, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %8504 to i64*
  %8505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8506 = getelementptr inbounds %struct.GPR, %struct.GPR* %8505, i32 0, i32 5
  %8507 = getelementptr inbounds %struct.Reg, %struct.Reg* %8506, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %8507 to i64*
  %8508 = load i64, i64* %RAX.i46
  %8509 = load i64, i64* %RCX.i47
  %8510 = load i64, i64* %PC.i45
  %8511 = add i64 %8510, 3
  store i64 %8511, i64* %PC.i45
  %8512 = add i64 %8509, %8508
  store i64 %8512, i64* %RAX.i46, align 8
  %8513 = icmp ult i64 %8512, %8508
  %8514 = icmp ult i64 %8512, %8509
  %8515 = or i1 %8513, %8514
  %8516 = zext i1 %8515 to i8
  %8517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8516, i8* %8517, align 1
  %8518 = trunc i64 %8512 to i32
  %8519 = and i32 %8518, 255
  %8520 = call i32 @llvm.ctpop.i32(i32 %8519)
  %8521 = trunc i32 %8520 to i8
  %8522 = and i8 %8521, 1
  %8523 = xor i8 %8522, 1
  %8524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8523, i8* %8524, align 1
  %8525 = xor i64 %8509, %8508
  %8526 = xor i64 %8525, %8512
  %8527 = lshr i64 %8526, 4
  %8528 = trunc i64 %8527 to i8
  %8529 = and i8 %8528, 1
  %8530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8529, i8* %8530, align 1
  %8531 = icmp eq i64 %8512, 0
  %8532 = zext i1 %8531 to i8
  %8533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8532, i8* %8533, align 1
  %8534 = lshr i64 %8512, 63
  %8535 = trunc i64 %8534 to i8
  %8536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8535, i8* %8536, align 1
  %8537 = lshr i64 %8508, 63
  %8538 = lshr i64 %8509, 63
  %8539 = xor i64 %8534, %8537
  %8540 = xor i64 %8534, %8538
  %8541 = add i64 %8539, %8540
  %8542 = icmp eq i64 %8541, 2
  %8543 = zext i1 %8542 to i8
  %8544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8543, i8* %8544, align 1
  store %struct.Memory* %loadMem_40a2b6, %struct.Memory** %MEMORY
  %loadMem_40a2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8546 = getelementptr inbounds %struct.GPR, %struct.GPR* %8545, i32 0, i32 33
  %8547 = getelementptr inbounds %struct.Reg, %struct.Reg* %8546, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8547 to i64*
  %8548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8549 = getelementptr inbounds %struct.GPR, %struct.GPR* %8548, i32 0, i32 1
  %8550 = getelementptr inbounds %struct.Reg, %struct.Reg* %8549, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %8550 to i64*
  %8551 = load i64, i64* %RAX.i44
  %8552 = add i64 %8551, 12
  %8553 = load i64, i64* %PC.i43
  %8554 = add i64 %8553, 4
  store i64 %8554, i64* %PC.i43
  %8555 = inttoptr i64 %8552 to i32*
  %8556 = load i32, i32* %8555
  %8557 = sub i32 %8556, 1
  %8558 = icmp ult i32 %8556, 1
  %8559 = zext i1 %8558 to i8
  %8560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8559, i8* %8560, align 1
  %8561 = and i32 %8557, 255
  %8562 = call i32 @llvm.ctpop.i32(i32 %8561)
  %8563 = trunc i32 %8562 to i8
  %8564 = and i8 %8563, 1
  %8565 = xor i8 %8564, 1
  %8566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8565, i8* %8566, align 1
  %8567 = xor i32 %8556, 1
  %8568 = xor i32 %8567, %8557
  %8569 = lshr i32 %8568, 4
  %8570 = trunc i32 %8569 to i8
  %8571 = and i8 %8570, 1
  %8572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8571, i8* %8572, align 1
  %8573 = icmp eq i32 %8557, 0
  %8574 = zext i1 %8573 to i8
  %8575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8574, i8* %8575, align 1
  %8576 = lshr i32 %8557, 31
  %8577 = trunc i32 %8576 to i8
  %8578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8577, i8* %8578, align 1
  %8579 = lshr i32 %8556, 31
  %8580 = xor i32 %8576, %8579
  %8581 = add i32 %8580, %8579
  %8582 = icmp eq i32 %8581, 2
  %8583 = zext i1 %8582 to i8
  %8584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8583, i8* %8584, align 1
  store %struct.Memory* %loadMem_40a2b9, %struct.Memory** %MEMORY
  %loadMem_40a2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8586 = getelementptr inbounds %struct.GPR, %struct.GPR* %8585, i32 0, i32 33
  %8587 = getelementptr inbounds %struct.Reg, %struct.Reg* %8586, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %8587 to i64*
  %8588 = load i64, i64* %PC.i42
  %8589 = add i64 %8588, 142
  %8590 = load i64, i64* %PC.i42
  %8591 = add i64 %8590, 6
  %8592 = load i64, i64* %PC.i42
  %8593 = add i64 %8592, 6
  store i64 %8593, i64* %PC.i42
  %8594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8595 = load i8, i8* %8594, align 1
  %8596 = icmp eq i8 %8595, 0
  %8597 = zext i1 %8596 to i8
  store i8 %8597, i8* %BRANCH_TAKEN, align 1
  %8598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8599 = select i1 %8596, i64 %8589, i64 %8591
  store i64 %8599, i64* %8598, align 8
  store %struct.Memory* %loadMem_40a2bd, %struct.Memory** %MEMORY
  %loadBr_40a2bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2bd = icmp eq i8 %loadBr_40a2bd, 1
  br i1 %cmpBr_40a2bd, label %block_.L_40a34b, label %block_40a2c3

block_40a2c3:                                     ; preds = %block_.L_40a293
  %loadMem_40a2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8601 = getelementptr inbounds %struct.GPR, %struct.GPR* %8600, i32 0, i32 33
  %8602 = getelementptr inbounds %struct.Reg, %struct.Reg* %8601, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8602 to i64*
  %8603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8604 = getelementptr inbounds %struct.GPR, %struct.GPR* %8603, i32 0, i32 1
  %8605 = getelementptr inbounds %struct.Reg, %struct.Reg* %8604, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %8605 to i64*
  %8606 = load i64, i64* %PC.i40
  %8607 = add i64 %8606, 10
  store i64 %8607, i64* %PC.i40
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_40a2c3, %struct.Memory** %MEMORY
  %loadMem_40a2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8609 = getelementptr inbounds %struct.GPR, %struct.GPR* %8608, i32 0, i32 33
  %8610 = getelementptr inbounds %struct.Reg, %struct.Reg* %8609, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %8610 to i64*
  %8611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8612 = getelementptr inbounds %struct.GPR, %struct.GPR* %8611, i32 0, i32 5
  %8613 = getelementptr inbounds %struct.Reg, %struct.Reg* %8612, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %8613 to i64*
  %8614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8615 = getelementptr inbounds %struct.GPR, %struct.GPR* %8614, i32 0, i32 15
  %8616 = getelementptr inbounds %struct.Reg, %struct.Reg* %8615, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %8616 to i64*
  %8617 = load i64, i64* %RBP.i39
  %8618 = sub i64 %8617, 28
  %8619 = load i64, i64* %PC.i37
  %8620 = add i64 %8619, 4
  store i64 %8620, i64* %PC.i37
  %8621 = inttoptr i64 %8618 to i32*
  %8622 = load i32, i32* %8621
  %8623 = sext i32 %8622 to i64
  store i64 %8623, i64* %RCX.i38, align 8
  store %struct.Memory* %loadMem_40a2cd, %struct.Memory** %MEMORY
  %loadMem_40a2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8625 = getelementptr inbounds %struct.GPR, %struct.GPR* %8624, i32 0, i32 33
  %8626 = getelementptr inbounds %struct.Reg, %struct.Reg* %8625, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8626 to i64*
  %8627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8628 = getelementptr inbounds %struct.GPR, %struct.GPR* %8627, i32 0, i32 5
  %8629 = getelementptr inbounds %struct.Reg, %struct.Reg* %8628, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %8629 to i64*
  %8630 = load i64, i64* %RCX.i36
  %8631 = load i64, i64* %PC.i35
  %8632 = add i64 %8631, 7
  store i64 %8632, i64* %PC.i35
  %8633 = sext i64 %8630 to i128
  %8634 = and i128 %8633, -18446744073709551616
  %8635 = zext i64 %8630 to i128
  %8636 = or i128 %8634, %8635
  %8637 = mul i128 744, %8636
  %8638 = trunc i128 %8637 to i64
  store i64 %8638, i64* %RCX.i36, align 8
  %8639 = sext i64 %8638 to i128
  %8640 = icmp ne i128 %8639, %8637
  %8641 = zext i1 %8640 to i8
  %8642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8641, i8* %8642, align 1
  %8643 = trunc i128 %8637 to i32
  %8644 = and i32 %8643, 255
  %8645 = call i32 @llvm.ctpop.i32(i32 %8644)
  %8646 = trunc i32 %8645 to i8
  %8647 = and i8 %8646, 1
  %8648 = xor i8 %8647, 1
  %8649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8648, i8* %8649, align 1
  %8650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8650, align 1
  %8651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8651, align 1
  %8652 = lshr i64 %8638, 63
  %8653 = trunc i64 %8652 to i8
  %8654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8653, i8* %8654, align 1
  %8655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8641, i8* %8655, align 1
  store %struct.Memory* %loadMem_40a2d1, %struct.Memory** %MEMORY
  %loadMem_40a2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8657 = getelementptr inbounds %struct.GPR, %struct.GPR* %8656, i32 0, i32 33
  %8658 = getelementptr inbounds %struct.Reg, %struct.Reg* %8657, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %8658 to i64*
  %8659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8660 = getelementptr inbounds %struct.GPR, %struct.GPR* %8659, i32 0, i32 1
  %8661 = getelementptr inbounds %struct.Reg, %struct.Reg* %8660, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %8661 to i64*
  %8662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8663 = getelementptr inbounds %struct.GPR, %struct.GPR* %8662, i32 0, i32 5
  %8664 = getelementptr inbounds %struct.Reg, %struct.Reg* %8663, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %8664 to i64*
  %8665 = load i64, i64* %RAX.i33
  %8666 = load i64, i64* %RCX.i34
  %8667 = load i64, i64* %PC.i32
  %8668 = add i64 %8667, 3
  store i64 %8668, i64* %PC.i32
  %8669 = add i64 %8666, %8665
  store i64 %8669, i64* %RAX.i33, align 8
  %8670 = icmp ult i64 %8669, %8665
  %8671 = icmp ult i64 %8669, %8666
  %8672 = or i1 %8670, %8671
  %8673 = zext i1 %8672 to i8
  %8674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8673, i8* %8674, align 1
  %8675 = trunc i64 %8669 to i32
  %8676 = and i32 %8675, 255
  %8677 = call i32 @llvm.ctpop.i32(i32 %8676)
  %8678 = trunc i32 %8677 to i8
  %8679 = and i8 %8678, 1
  %8680 = xor i8 %8679, 1
  %8681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8680, i8* %8681, align 1
  %8682 = xor i64 %8666, %8665
  %8683 = xor i64 %8682, %8669
  %8684 = lshr i64 %8683, 4
  %8685 = trunc i64 %8684 to i8
  %8686 = and i8 %8685, 1
  %8687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8686, i8* %8687, align 1
  %8688 = icmp eq i64 %8669, 0
  %8689 = zext i1 %8688 to i8
  %8690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8689, i8* %8690, align 1
  %8691 = lshr i64 %8669, 63
  %8692 = trunc i64 %8691 to i8
  %8693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8692, i8* %8693, align 1
  %8694 = lshr i64 %8665, 63
  %8695 = lshr i64 %8666, 63
  %8696 = xor i64 %8691, %8694
  %8697 = xor i64 %8691, %8695
  %8698 = add i64 %8696, %8697
  %8699 = icmp eq i64 %8698, 2
  %8700 = zext i1 %8699 to i8
  %8701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8700, i8* %8701, align 1
  store %struct.Memory* %loadMem_40a2d8, %struct.Memory** %MEMORY
  %loadMem_40a2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %8702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8703 = getelementptr inbounds %struct.GPR, %struct.GPR* %8702, i32 0, i32 33
  %8704 = getelementptr inbounds %struct.Reg, %struct.Reg* %8703, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8704 to i64*
  %8705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8706 = getelementptr inbounds %struct.GPR, %struct.GPR* %8705, i32 0, i32 1
  %8707 = getelementptr inbounds %struct.Reg, %struct.Reg* %8706, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %8707 to i64*
  %8708 = load i64, i64* %RAX.i31
  %8709 = add i64 %8708, 4
  %8710 = load i64, i64* %PC.i30
  %8711 = add i64 %8710, 4
  store i64 %8711, i64* %PC.i30
  %8712 = inttoptr i64 %8709 to i32*
  %8713 = load i32, i32* %8712
  %8714 = sub i32 %8713, 1
  %8715 = icmp ult i32 %8713, 1
  %8716 = zext i1 %8715 to i8
  %8717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8716, i8* %8717, align 1
  %8718 = and i32 %8714, 255
  %8719 = call i32 @llvm.ctpop.i32(i32 %8718)
  %8720 = trunc i32 %8719 to i8
  %8721 = and i8 %8720, 1
  %8722 = xor i8 %8721, 1
  %8723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8722, i8* %8723, align 1
  %8724 = xor i32 %8713, 1
  %8725 = xor i32 %8724, %8714
  %8726 = lshr i32 %8725, 4
  %8727 = trunc i32 %8726 to i8
  %8728 = and i8 %8727, 1
  %8729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8728, i8* %8729, align 1
  %8730 = icmp eq i32 %8714, 0
  %8731 = zext i1 %8730 to i8
  %8732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8731, i8* %8732, align 1
  %8733 = lshr i32 %8714, 31
  %8734 = trunc i32 %8733 to i8
  %8735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8734, i8* %8735, align 1
  %8736 = lshr i32 %8713, 31
  %8737 = xor i32 %8733, %8736
  %8738 = add i32 %8737, %8736
  %8739 = icmp eq i32 %8738, 2
  %8740 = zext i1 %8739 to i8
  %8741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8740, i8* %8741, align 1
  store %struct.Memory* %loadMem_40a2db, %struct.Memory** %MEMORY
  %loadMem_40a2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %8742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8743 = getelementptr inbounds %struct.GPR, %struct.GPR* %8742, i32 0, i32 33
  %8744 = getelementptr inbounds %struct.Reg, %struct.Reg* %8743, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8744 to i64*
  %8745 = load i64, i64* %PC.i29
  %8746 = add i64 %8745, 108
  %8747 = load i64, i64* %PC.i29
  %8748 = add i64 %8747, 6
  %8749 = load i64, i64* %PC.i29
  %8750 = add i64 %8749, 6
  store i64 %8750, i64* %PC.i29
  %8751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8752 = load i8, i8* %8751, align 1
  %8753 = icmp eq i8 %8752, 0
  %8754 = zext i1 %8753 to i8
  store i8 %8754, i8* %BRANCH_TAKEN, align 1
  %8755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8756 = select i1 %8753, i64 %8746, i64 %8748
  store i64 %8756, i64* %8755, align 8
  store %struct.Memory* %loadMem_40a2df, %struct.Memory** %MEMORY
  %loadBr_40a2df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2df = icmp eq i8 %loadBr_40a2df, 1
  br i1 %cmpBr_40a2df, label %block_.L_40a34b, label %block_40a2e5

block_40a2e5:                                     ; preds = %block_40a2c3
  %loadMem_40a2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8758 = getelementptr inbounds %struct.GPR, %struct.GPR* %8757, i32 0, i32 33
  %8759 = getelementptr inbounds %struct.Reg, %struct.Reg* %8758, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8759 to i64*
  %8760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8761 = getelementptr inbounds %struct.GPR, %struct.GPR* %8760, i32 0, i32 15
  %8762 = getelementptr inbounds %struct.Reg, %struct.Reg* %8761, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %8762 to i64*
  %8763 = load i64, i64* %RBP.i28
  %8764 = sub i64 %8763, 16
  %8765 = load i64, i64* %PC.i27
  %8766 = add i64 %8765, 4
  store i64 %8766, i64* %PC.i27
  %8767 = inttoptr i64 %8764 to i32*
  %8768 = load i32, i32* %8767
  %8769 = sub i32 %8768, 1
  %8770 = icmp ult i32 %8768, 1
  %8771 = zext i1 %8770 to i8
  %8772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8771, i8* %8772, align 1
  %8773 = and i32 %8769, 255
  %8774 = call i32 @llvm.ctpop.i32(i32 %8773)
  %8775 = trunc i32 %8774 to i8
  %8776 = and i8 %8775, 1
  %8777 = xor i8 %8776, 1
  %8778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8777, i8* %8778, align 1
  %8779 = xor i32 %8768, 1
  %8780 = xor i32 %8779, %8769
  %8781 = lshr i32 %8780, 4
  %8782 = trunc i32 %8781 to i8
  %8783 = and i8 %8782, 1
  %8784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8783, i8* %8784, align 1
  %8785 = icmp eq i32 %8769, 0
  %8786 = zext i1 %8785 to i8
  %8787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8786, i8* %8787, align 1
  %8788 = lshr i32 %8769, 31
  %8789 = trunc i32 %8788 to i8
  %8790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8789, i8* %8790, align 1
  %8791 = lshr i32 %8768, 31
  %8792 = xor i32 %8788, %8791
  %8793 = add i32 %8792, %8791
  %8794 = icmp eq i32 %8793, 2
  %8795 = zext i1 %8794 to i8
  %8796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8795, i8* %8796, align 1
  store %struct.Memory* %loadMem_40a2e5, %struct.Memory** %MEMORY
  %loadMem_40a2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8798 = getelementptr inbounds %struct.GPR, %struct.GPR* %8797, i32 0, i32 33
  %8799 = getelementptr inbounds %struct.Reg, %struct.Reg* %8798, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %8799 to i64*
  %8800 = load i64, i64* %PC.i26
  %8801 = add i64 %8800, 98
  %8802 = load i64, i64* %PC.i26
  %8803 = add i64 %8802, 6
  %8804 = load i64, i64* %PC.i26
  %8805 = add i64 %8804, 6
  store i64 %8805, i64* %PC.i26
  %8806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8807 = load i8, i8* %8806, align 1
  %8808 = icmp eq i8 %8807, 0
  %8809 = zext i1 %8808 to i8
  store i8 %8809, i8* %BRANCH_TAKEN, align 1
  %8810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8811 = select i1 %8808, i64 %8801, i64 %8803
  store i64 %8811, i64* %8810, align 8
  store %struct.Memory* %loadMem_40a2e9, %struct.Memory** %MEMORY
  %loadBr_40a2e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2e9 = icmp eq i8 %loadBr_40a2e9, 1
  br i1 %cmpBr_40a2e9, label %block_.L_40a34b, label %block_40a2ef

block_40a2ef:                                     ; preds = %block_40a2e5
  %loadMem_40a2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %8812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8813 = getelementptr inbounds %struct.GPR, %struct.GPR* %8812, i32 0, i32 33
  %8814 = getelementptr inbounds %struct.Reg, %struct.Reg* %8813, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8814 to i64*
  %8815 = load i64, i64* %PC.i25
  %8816 = add i64 %8815, 8
  store i64 %8816, i64* %PC.i25
  %8817 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %8818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8818, align 1
  %8819 = and i32 %8817, 255
  %8820 = call i32 @llvm.ctpop.i32(i32 %8819)
  %8821 = trunc i32 %8820 to i8
  %8822 = and i8 %8821, 1
  %8823 = xor i8 %8822, 1
  %8824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8823, i8* %8824, align 1
  %8825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8825, align 1
  %8826 = icmp eq i32 %8817, 0
  %8827 = zext i1 %8826 to i8
  %8828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8827, i8* %8828, align 1
  %8829 = lshr i32 %8817, 31
  %8830 = trunc i32 %8829 to i8
  %8831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8830, i8* %8831, align 1
  %8832 = lshr i32 %8817, 31
  %8833 = xor i32 %8829, %8832
  %8834 = add i32 %8833, %8832
  %8835 = icmp eq i32 %8834, 2
  %8836 = zext i1 %8835 to i8
  %8837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8836, i8* %8837, align 1
  store %struct.Memory* %loadMem_40a2ef, %struct.Memory** %MEMORY
  %loadMem_40a2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8839 = getelementptr inbounds %struct.GPR, %struct.GPR* %8838, i32 0, i32 33
  %8840 = getelementptr inbounds %struct.Reg, %struct.Reg* %8839, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8840 to i64*
  %8841 = load i64, i64* %PC.i24
  %8842 = add i64 %8841, 28
  %8843 = load i64, i64* %PC.i24
  %8844 = add i64 %8843, 6
  %8845 = load i64, i64* %PC.i24
  %8846 = add i64 %8845, 6
  store i64 %8846, i64* %PC.i24
  %8847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8848 = load i8, i8* %8847, align 1
  store i8 %8848, i8* %BRANCH_TAKEN, align 1
  %8849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8850 = icmp ne i8 %8848, 0
  %8851 = select i1 %8850, i64 %8842, i64 %8844
  store i64 %8851, i64* %8849, align 8
  store %struct.Memory* %loadMem_40a2f7, %struct.Memory** %MEMORY
  %loadBr_40a2f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2f7 = icmp eq i8 %loadBr_40a2f7, 1
  br i1 %cmpBr_40a2f7, label %block_.L_40a313, label %block_40a2fd

block_40a2fd:                                     ; preds = %block_40a2ef
  %loadMem_40a2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8853 = getelementptr inbounds %struct.GPR, %struct.GPR* %8852, i32 0, i32 33
  %8854 = getelementptr inbounds %struct.Reg, %struct.Reg* %8853, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8854 to i64*
  %8855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8856 = getelementptr inbounds %struct.GPR, %struct.GPR* %8855, i32 0, i32 11
  %8857 = getelementptr inbounds %struct.Reg, %struct.Reg* %8856, i32 0, i32 0
  %RDI.i23 = bitcast %union.anon* %8857 to i64*
  %8858 = load i64, i64* %PC.i22
  %8859 = add i64 %8858, 10
  store i64 %8859, i64* %PC.i22
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI.i23, align 8
  store %struct.Memory* %loadMem_40a2fd, %struct.Memory** %MEMORY
  %loadMem_40a307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8861 = getelementptr inbounds %struct.GPR, %struct.GPR* %8860, i32 0, i32 33
  %8862 = getelementptr inbounds %struct.Reg, %struct.Reg* %8861, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8862 to i64*
  %8863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8864 = getelementptr inbounds %struct.GPR, %struct.GPR* %8863, i32 0, i32 9
  %8865 = getelementptr inbounds %struct.Reg, %struct.Reg* %8864, i32 0, i32 0
  %RSI.i21 = bitcast %union.anon* %8865 to i64*
  %8866 = load i64, i64* %PC.i20
  %8867 = add i64 %8866, 7
  store i64 %8867, i64* %PC.i20
  %8868 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %8869 = zext i32 %8868 to i64
  store i64 %8869, i64* %RSI.i21, align 8
  store %struct.Memory* %loadMem_40a307, %struct.Memory** %MEMORY
  %loadMem1_40a30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8871 = getelementptr inbounds %struct.GPR, %struct.GPR* %8870, i32 0, i32 33
  %8872 = getelementptr inbounds %struct.Reg, %struct.Reg* %8871, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8872 to i64*
  %8873 = load i64, i64* %PC.i19
  %8874 = add i64 %8873, 124930
  %8875 = load i64, i64* %PC.i19
  %8876 = add i64 %8875, 5
  %8877 = load i64, i64* %PC.i19
  %8878 = add i64 %8877, 5
  store i64 %8878, i64* %PC.i19
  %8879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8880 = load i64, i64* %8879, align 8
  %8881 = add i64 %8880, -8
  %8882 = inttoptr i64 %8881 to i64*
  store i64 %8876, i64* %8882
  store i64 %8881, i64* %8879, align 8
  %8883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8874, i64* %8883, align 8
  store %struct.Memory* %loadMem1_40a30e, %struct.Memory** %MEMORY
  %loadMem2_40a30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a30e = load i64, i64* %3
  %call2_40a30e = call %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* %0, i64 %loadPC_40a30e, %struct.Memory* %loadMem2_40a30e)
  store %struct.Memory* %call2_40a30e, %struct.Memory** %MEMORY
  br label %block_.L_40a313

block_.L_40a313:                                  ; preds = %block_40a2fd, %block_40a2ef
  %loadMem_40a313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8885 = getelementptr inbounds %struct.GPR, %struct.GPR* %8884, i32 0, i32 33
  %8886 = getelementptr inbounds %struct.Reg, %struct.Reg* %8885, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8886 to i64*
  %8887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8888 = getelementptr inbounds %struct.GPR, %struct.GPR* %8887, i32 0, i32 11
  %8889 = getelementptr inbounds %struct.Reg, %struct.Reg* %8888, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8889 to i64*
  %8890 = load i64, i64* %PC.i18
  %8891 = add i64 %8890, 10
  store i64 %8891, i64* %PC.i18
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40a313, %struct.Memory** %MEMORY
  %loadMem_40a31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8893 = getelementptr inbounds %struct.GPR, %struct.GPR* %8892, i32 0, i32 33
  %8894 = getelementptr inbounds %struct.Reg, %struct.Reg* %8893, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %8894 to i64*
  %8895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8896 = getelementptr inbounds %struct.GPR, %struct.GPR* %8895, i32 0, i32 1
  %8897 = getelementptr inbounds %struct.Reg, %struct.Reg* %8896, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %8897 to i64*
  %8898 = load i64, i64* %PC.i16
  %8899 = add i64 %8898, 10
  store i64 %8899, i64* %PC.i16
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_40a31d, %struct.Memory** %MEMORY
  %loadMem_40a327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8901 = getelementptr inbounds %struct.GPR, %struct.GPR* %8900, i32 0, i32 33
  %8902 = getelementptr inbounds %struct.Reg, %struct.Reg* %8901, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8902 to i64*
  %8903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8904 = getelementptr inbounds %struct.GPR, %struct.GPR* %8903, i32 0, i32 5
  %8905 = getelementptr inbounds %struct.Reg, %struct.Reg* %8904, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %8905 to i64*
  %8906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8907 = getelementptr inbounds %struct.GPR, %struct.GPR* %8906, i32 0, i32 15
  %8908 = getelementptr inbounds %struct.Reg, %struct.Reg* %8907, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %8908 to i64*
  %8909 = load i64, i64* %RBP.i15
  %8910 = sub i64 %8909, 28
  %8911 = load i64, i64* %PC.i13
  %8912 = add i64 %8911, 4
  store i64 %8912, i64* %PC.i13
  %8913 = inttoptr i64 %8910 to i32*
  %8914 = load i32, i32* %8913
  %8915 = sext i32 %8914 to i64
  store i64 %8915, i64* %RCX.i14, align 8
  store %struct.Memory* %loadMem_40a327, %struct.Memory** %MEMORY
  %loadMem_40a32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8917 = getelementptr inbounds %struct.GPR, %struct.GPR* %8916, i32 0, i32 33
  %8918 = getelementptr inbounds %struct.Reg, %struct.Reg* %8917, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8918 to i64*
  %8919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8920 = getelementptr inbounds %struct.GPR, %struct.GPR* %8919, i32 0, i32 5
  %8921 = getelementptr inbounds %struct.Reg, %struct.Reg* %8920, i32 0, i32 0
  %RCX.i12 = bitcast %union.anon* %8921 to i64*
  %8922 = load i64, i64* %RCX.i12
  %8923 = load i64, i64* %PC.i11
  %8924 = add i64 %8923, 7
  store i64 %8924, i64* %PC.i11
  %8925 = sext i64 %8922 to i128
  %8926 = and i128 %8925, -18446744073709551616
  %8927 = zext i64 %8922 to i128
  %8928 = or i128 %8926, %8927
  %8929 = mul i128 744, %8928
  %8930 = trunc i128 %8929 to i64
  store i64 %8930, i64* %RCX.i12, align 8
  %8931 = sext i64 %8930 to i128
  %8932 = icmp ne i128 %8931, %8929
  %8933 = zext i1 %8932 to i8
  %8934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8933, i8* %8934, align 1
  %8935 = trunc i128 %8929 to i32
  %8936 = and i32 %8935, 255
  %8937 = call i32 @llvm.ctpop.i32(i32 %8936)
  %8938 = trunc i32 %8937 to i8
  %8939 = and i8 %8938, 1
  %8940 = xor i8 %8939, 1
  %8941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8940, i8* %8941, align 1
  %8942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8942, align 1
  %8943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8943, align 1
  %8944 = lshr i64 %8930, 63
  %8945 = trunc i64 %8944 to i8
  %8946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8945, i8* %8946, align 1
  %8947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8933, i8* %8947, align 1
  store %struct.Memory* %loadMem_40a32b, %struct.Memory** %MEMORY
  %loadMem_40a332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8949 = getelementptr inbounds %struct.GPR, %struct.GPR* %8948, i32 0, i32 33
  %8950 = getelementptr inbounds %struct.Reg, %struct.Reg* %8949, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8950 to i64*
  %8951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8952 = getelementptr inbounds %struct.GPR, %struct.GPR* %8951, i32 0, i32 1
  %8953 = getelementptr inbounds %struct.Reg, %struct.Reg* %8952, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %8953 to i64*
  %8954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8955 = getelementptr inbounds %struct.GPR, %struct.GPR* %8954, i32 0, i32 5
  %8956 = getelementptr inbounds %struct.Reg, %struct.Reg* %8955, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8956 to i64*
  %8957 = load i64, i64* %RAX.i10
  %8958 = load i64, i64* %RCX.i
  %8959 = load i64, i64* %PC.i9
  %8960 = add i64 %8959, 3
  store i64 %8960, i64* %PC.i9
  %8961 = add i64 %8958, %8957
  store i64 %8961, i64* %RAX.i10, align 8
  %8962 = icmp ult i64 %8961, %8957
  %8963 = icmp ult i64 %8961, %8958
  %8964 = or i1 %8962, %8963
  %8965 = zext i1 %8964 to i8
  %8966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8965, i8* %8966, align 1
  %8967 = trunc i64 %8961 to i32
  %8968 = and i32 %8967, 255
  %8969 = call i32 @llvm.ctpop.i32(i32 %8968)
  %8970 = trunc i32 %8969 to i8
  %8971 = and i8 %8970, 1
  %8972 = xor i8 %8971, 1
  %8973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8972, i8* %8973, align 1
  %8974 = xor i64 %8958, %8957
  %8975 = xor i64 %8974, %8961
  %8976 = lshr i64 %8975, 4
  %8977 = trunc i64 %8976 to i8
  %8978 = and i8 %8977, 1
  %8979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8978, i8* %8979, align 1
  %8980 = icmp eq i64 %8961, 0
  %8981 = zext i1 %8980 to i8
  %8982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8981, i8* %8982, align 1
  %8983 = lshr i64 %8961, 63
  %8984 = trunc i64 %8983 to i8
  %8985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8984, i8* %8985, align 1
  %8986 = lshr i64 %8957, 63
  %8987 = lshr i64 %8958, 63
  %8988 = xor i64 %8983, %8986
  %8989 = xor i64 %8983, %8987
  %8990 = add i64 %8988, %8989
  %8991 = icmp eq i64 %8990, 2
  %8992 = zext i1 %8991 to i8
  %8993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8992, i8* %8993, align 1
  store %struct.Memory* %loadMem_40a332, %struct.Memory** %MEMORY
  %loadMem_40a335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8995 = getelementptr inbounds %struct.GPR, %struct.GPR* %8994, i32 0, i32 33
  %8996 = getelementptr inbounds %struct.Reg, %struct.Reg* %8995, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8996 to i64*
  %8997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8998 = getelementptr inbounds %struct.GPR, %struct.GPR* %8997, i32 0, i32 1
  %8999 = getelementptr inbounds %struct.Reg, %struct.Reg* %8998, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8999 to i64*
  %9000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9001 = getelementptr inbounds %struct.GPR, %struct.GPR* %9000, i32 0, i32 7
  %9002 = getelementptr inbounds %struct.Reg, %struct.Reg* %9001, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %9002 to i64*
  %9003 = load i64, i64* %RAX.i
  %9004 = add i64 %9003, 16
  %9005 = load i64, i64* %PC.i8
  %9006 = add i64 %9005, 3
  store i64 %9006, i64* %PC.i8
  %9007 = inttoptr i64 %9004 to i32*
  %9008 = load i32, i32* %9007
  %9009 = zext i32 %9008 to i64
  store i64 %9009, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_40a335, %struct.Memory** %MEMORY
  %loadMem_40a338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9011 = getelementptr inbounds %struct.GPR, %struct.GPR* %9010, i32 0, i32 33
  %9012 = getelementptr inbounds %struct.Reg, %struct.Reg* %9011, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %9012 to i64*
  %9013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9014 = getelementptr inbounds %struct.GPR, %struct.GPR* %9013, i32 0, i32 7
  %9015 = getelementptr inbounds %struct.Reg, %struct.Reg* %9014, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %9015 to i32*
  %9016 = load i32, i32* %EDX.i
  %9017 = zext i32 %9016 to i64
  %9018 = load i64, i64* %PC.i7
  %9019 = add i64 %9018, 7
  store i64 %9019, i64* %PC.i7
  store i32 %9016, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  store %struct.Memory* %loadMem_40a338, %struct.Memory** %MEMORY
  %loadMem_40a33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9021 = getelementptr inbounds %struct.GPR, %struct.GPR* %9020, i32 0, i32 33
  %9022 = getelementptr inbounds %struct.Reg, %struct.Reg* %9021, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %9022 to i64*
  %9023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9024 = getelementptr inbounds %struct.GPR, %struct.GPR* %9023, i32 0, i32 9
  %9025 = getelementptr inbounds %struct.Reg, %struct.Reg* %9024, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %9025 to i64*
  %9026 = load i64, i64* %PC.i6
  %9027 = add i64 %9026, 7
  store i64 %9027, i64* %PC.i6
  %9028 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %9029 = zext i32 %9028 to i64
  store i64 %9029, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_40a33f, %struct.Memory** %MEMORY
  %loadMem1_40a346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9031 = getelementptr inbounds %struct.GPR, %struct.GPR* %9030, i32 0, i32 33
  %9032 = getelementptr inbounds %struct.Reg, %struct.Reg* %9031, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9032 to i64*
  %9033 = load i64, i64* %PC.i5
  %9034 = add i64 %9033, 124874
  %9035 = load i64, i64* %PC.i5
  %9036 = add i64 %9035, 5
  %9037 = load i64, i64* %PC.i5
  %9038 = add i64 %9037, 5
  store i64 %9038, i64* %PC.i5
  %9039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9040 = load i64, i64* %9039, align 8
  %9041 = add i64 %9040, -8
  %9042 = inttoptr i64 %9041 to i64*
  store i64 %9036, i64* %9042
  store i64 %9041, i64* %9039, align 8
  %9043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9034, i64* %9043, align 8
  store %struct.Memory* %loadMem1_40a346, %struct.Memory** %MEMORY
  %loadMem2_40a346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a346 = load i64, i64* %3
  %call2_40a346 = call %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* %0, i64 %loadPC_40a346, %struct.Memory* %loadMem2_40a346)
  store %struct.Memory* %call2_40a346, %struct.Memory** %MEMORY
  br label %block_.L_40a34b

block_.L_40a34b:                                  ; preds = %block_.L_40a313, %block_40a2e5, %block_40a2c3, %block_.L_40a293, %block_.L_40a286, %block_.L_40a276, %block_409d71
  %loadMem_40a34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %9044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9045 = getelementptr inbounds %struct.GPR, %struct.GPR* %9044, i32 0, i32 33
  %9046 = getelementptr inbounds %struct.Reg, %struct.Reg* %9045, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9046 to i64*
  %9047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9048 = getelementptr inbounds %struct.GPR, %struct.GPR* %9047, i32 0, i32 13
  %9049 = getelementptr inbounds %struct.Reg, %struct.Reg* %9048, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9049 to i64*
  %9050 = load i64, i64* %RSP.i
  %9051 = load i64, i64* %PC.i4
  %9052 = add i64 %9051, 4
  store i64 %9052, i64* %PC.i4
  %9053 = add i64 48, %9050
  store i64 %9053, i64* %RSP.i, align 8
  %9054 = icmp ult i64 %9053, %9050
  %9055 = icmp ult i64 %9053, 48
  %9056 = or i1 %9054, %9055
  %9057 = zext i1 %9056 to i8
  %9058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9057, i8* %9058, align 1
  %9059 = trunc i64 %9053 to i32
  %9060 = and i32 %9059, 255
  %9061 = call i32 @llvm.ctpop.i32(i32 %9060)
  %9062 = trunc i32 %9061 to i8
  %9063 = and i8 %9062, 1
  %9064 = xor i8 %9063, 1
  %9065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9064, i8* %9065, align 1
  %9066 = xor i64 48, %9050
  %9067 = xor i64 %9066, %9053
  %9068 = lshr i64 %9067, 4
  %9069 = trunc i64 %9068 to i8
  %9070 = and i8 %9069, 1
  %9071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9070, i8* %9071, align 1
  %9072 = icmp eq i64 %9053, 0
  %9073 = zext i1 %9072 to i8
  %9074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9073, i8* %9074, align 1
  %9075 = lshr i64 %9053, 63
  %9076 = trunc i64 %9075 to i8
  %9077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9076, i8* %9077, align 1
  %9078 = lshr i64 %9050, 63
  %9079 = xor i64 %9075, %9078
  %9080 = add i64 %9079, %9075
  %9081 = icmp eq i64 %9080, 2
  %9082 = zext i1 %9081 to i8
  %9083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9082, i8* %9083, align 1
  store %struct.Memory* %loadMem_40a34b, %struct.Memory** %MEMORY
  %loadMem_40a34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9085 = getelementptr inbounds %struct.GPR, %struct.GPR* %9084, i32 0, i32 33
  %9086 = getelementptr inbounds %struct.Reg, %struct.Reg* %9085, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9086 to i64*
  %9087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9088 = getelementptr inbounds %struct.GPR, %struct.GPR* %9087, i32 0, i32 15
  %9089 = getelementptr inbounds %struct.Reg, %struct.Reg* %9088, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9089 to i64*
  %9090 = load i64, i64* %PC.i2
  %9091 = add i64 %9090, 1
  store i64 %9091, i64* %PC.i2
  %9092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9093 = load i64, i64* %9092, align 8
  %9094 = add i64 %9093, 8
  %9095 = inttoptr i64 %9093 to i64*
  %9096 = load i64, i64* %9095
  store i64 %9096, i64* %RBP.i3, align 8
  store i64 %9094, i64* %9092, align 8
  store %struct.Memory* %loadMem_40a34f, %struct.Memory** %MEMORY
  %loadMem_40a350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9098 = getelementptr inbounds %struct.GPR, %struct.GPR* %9097, i32 0, i32 33
  %9099 = getelementptr inbounds %struct.Reg, %struct.Reg* %9098, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9099 to i64*
  %9100 = load i64, i64* %PC.i1
  %9101 = add i64 %9100, 1
  store i64 %9101, i64* %PC.i1
  %9102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9104 = load i64, i64* %9103, align 8
  %9105 = inttoptr i64 %9104 to i64*
  %9106 = load i64, i64* %9105
  store i64 %9106, i64* %9102, align 8
  %9107 = add i64 %9104, 8
  store i64 %9107, i64* %9103, align 8
  store %struct.Memory* %loadMem_40a350, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40a350
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 48
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 48
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
  %23 = xor i64 48, %9
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

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
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

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -1, i32* %13
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

define %struct.Memory* @routine_addl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jne_.L_409abe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.do_remove_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jne_.L_409b13(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_409b68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_409bbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_409d56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_409c1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jne_.L_409c27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_409c27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_409d51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_409c7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_409c87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_409c87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_409d4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_409cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_409ce7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_409ce7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_409d47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_409d3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_409d42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_409d42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_409d5d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_409d81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.do_commit_suicide(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40a34b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_409d86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xafc500___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xafc500_type* @G__0xafc500 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xb89e60___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb89e60_type* @G__0xb89e60 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xa7f420___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_movq_0xa7f420___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_addq__0x10___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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

define %struct.Memory* @routine_movq__rcx__0xa7f420(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0xa7f420_type* @G_0xa7f420 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__sil__0xb89e60___rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12099168
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.hashdata_invert_stone(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x99da08___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x99da08(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jne_.L_409e91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
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

define %struct.Memory* @routine_je_.L_409e91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 744, %15
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

define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_409f1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_409f19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_409f19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.remove_liberty(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_409faf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_409faf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40a03c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40a037(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40a037(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40a0cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40a0cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40a15a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40a155(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40a155(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40a1be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40a1be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_40a21e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40a219(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40a219(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
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

define %struct.Memory* @routine_jne_.L_40a235(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.create_new_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40a293(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 20
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

define %struct.Memory* @routine_jne_.L_40a286(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_40a24e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %BRANCH_TAKEN, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = select i1 %18, i64 %7, i64 %9
  store i64 %21, i64* %20, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40a276(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xdaa___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3498, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57c4d2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c4d2_type* @G__0x57c4d2 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_callq_.abortgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.extend_neighbor_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.assimilate_neighbor_strings(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40a34b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb6eec4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
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

define %struct.Memory* @routine_je_.L_40a313(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb6eec4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.hashdata_invert_ko(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0xb6eec4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 48, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 48
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
  %25 = xor i64 48, %9
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
