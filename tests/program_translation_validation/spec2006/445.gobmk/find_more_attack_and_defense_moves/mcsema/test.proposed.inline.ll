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
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57c2fd_type = type <{ [8 x i8] }>
%G__0x581d46_type = type <{ [8 x i8] }>
%G__0x582d8c_type = type <{ [8 x i8] }>
%G__0x582dd0_type = type <{ [8 x i8] }>
%G__0x582e06_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0xafdfc0_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G__0x57c2fd = global %G__0x57c2fd_type zeroinitializer
@G__0x581d46 = global %G__0x581d46_type zeroinitializer
@G__0x582d8c = global %G__0x582d8c_type zeroinitializer
@G__0x582dd0 = global %G__0x582dd0_type zeroinitializer
@G__0x582e06 = global %G__0x582e06_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0xafdfc0 = global %G__0xafdfc0_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

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

declare %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_431e70.defense_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_432520.add_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_431d30.attack_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_432120.add_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @find_more_attack_and_defense_moves(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_47c870 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_47c870, %struct.Memory** %MEMORY
  %loadMem_47c871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i866 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i867 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i866
  %27 = load i64, i64* %PC.i865
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i865
  store i64 %26, i64* %RBP.i867, align 8
  store %struct.Memory* %loadMem_47c871, %struct.Memory** %MEMORY
  %loadMem_47c874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i864 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i864
  %36 = load i64, i64* %PC.i863
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i863
  %38 = sub i64 %35, 1072
  store i64 %38, i64* %RSP.i864, align 8
  %39 = icmp ult i64 %35, 1072
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
  %49 = xor i64 1072, %35
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
  store %struct.Memory* %loadMem_47c874, %struct.Memory** %MEMORY
  %loadMem_47c87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i861
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i861
  store i64 3, i64* %RAX.i862, align 8
  store %struct.Memory* %loadMem_47c87b, %struct.Memory** %MEMORY
  %loadMem_47c880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i859 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i860
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i859
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i858
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i858
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_47c880, %struct.Memory** %MEMORY
  %loadMem_47c883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RBP.i857
  %98 = sub i64 %97, 980
  %99 = load i64, i64* %PC.i856
  %100 = add i64 %99, 10
  store i64 %100, i64* %PC.i856
  %101 = inttoptr i64 %98 to i32*
  store i32 0, i32* %101
  store %struct.Memory* %loadMem_47c883, %struct.Memory** %MEMORY
  %loadMem_47c88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 33
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RAX.i854 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %RAX.i854
  %112 = load i64, i64* %RBP.i855
  %113 = sub i64 %112, 4
  %114 = load i64, i64* %PC.i853
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC.i853
  %116 = trunc i64 %111 to i32
  %117 = inttoptr i64 %113 to i32*
  %118 = load i32, i32* %117
  %119 = sub i32 %116, %118
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RAX.i854, align 8
  %121 = icmp ult i32 %116, %118
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %122, i8* %123, align 1
  %124 = and i32 %119, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1
  %130 = xor i32 %118, %116
  %131 = xor i32 %130, %119
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %134, i8* %135, align 1
  %136 = icmp eq i32 %119, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1
  %139 = lshr i32 %119, 31
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1
  %142 = lshr i32 %116, 31
  %143 = lshr i32 %118, 31
  %144 = xor i32 %143, %142
  %145 = xor i32 %139, %142
  %146 = add i32 %145, %144
  %147 = icmp eq i32 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %148, i8* %149, align 1
  store %struct.Memory* %loadMem_47c88d, %struct.Memory** %MEMORY
  %loadMem_47c890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EAX.i851 = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i852
  %160 = sub i64 %159, 1000
  %161 = load i32, i32* %EAX.i851
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC.i850
  %164 = add i64 %163, 6
  store i64 %164, i64* %PC.i850
  %165 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %165
  store %struct.Memory* %loadMem_47c890, %struct.Memory** %MEMORY
  %loadMem_47c896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %PC.i849
  %170 = add i64 %169, 8
  store i64 %170, i64* %PC.i849
  %171 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %172, align 1
  %173 = and i32 %171, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %177, i8* %178, align 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %179, align 1
  %180 = icmp eq i32 %171, 0
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %181, i8* %182, align 1
  %183 = lshr i32 %171, 31
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %184, i8* %185, align 1
  %186 = lshr i32 %171, 31
  %187 = xor i32 %183, %186
  %188 = add i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %190, i8* %191, align 1
  store %struct.Memory* %loadMem_47c896, %struct.Memory** %MEMORY
  %loadMem_47c89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %PC.i848
  %196 = add i64 %195, 11
  %197 = load i64, i64* %PC.i848
  %198 = add i64 %197, 6
  %199 = load i64, i64* %PC.i848
  %200 = add i64 %199, 6
  store i64 %200, i64* %PC.i848
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %202 = load i8, i8* %201, align 1
  %203 = icmp eq i8 %202, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %BRANCH_TAKEN, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %206 = select i1 %203, i64 %196, i64 %198
  store i64 %206, i64* %205, align 8
  store %struct.Memory* %loadMem_47c89e, %struct.Memory** %MEMORY
  %loadBr_47c89e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c89e = icmp eq i8 %loadBr_47c89e, 1
  br i1 %cmpBr_47c89e, label %block_.L_47c8a9, label %block_47c8a4

block_47c8a4:                                     ; preds = %entry
  %loadMem_47c8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 33
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %PC.i847
  %211 = add i64 %210, 28
  %212 = load i64, i64* %PC.i847
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC.i847
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %211, i64* %214, align 8
  store %struct.Memory* %loadMem_47c8a4, %struct.Memory** %MEMORY
  br label %block_.L_47c8c0

block_.L_47c8a9:                                  ; preds = %entry
  %loadMem_47c8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 11
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RDI.i846 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %PC.i845
  %222 = add i64 %221, 10
  store i64 %222, i64* %PC.i845
  store i64 ptrtoint (%G__0x582d8c_type* @G__0x582d8c to i64), i64* %RDI.i846, align 8
  store %struct.Memory* %loadMem_47c8a9, %struct.Memory** %MEMORY
  %loadMem_47c8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %229 = bitcast %union.anon* %228 to %struct.anon.2*
  %AL.i844 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %229, i32 0, i32 0
  %230 = load i64, i64* %PC.i843
  %231 = add i64 %230, 2
  store i64 %231, i64* %PC.i843
  store i8 0, i8* %AL.i844, align 1
  store %struct.Memory* %loadMem_47c8b3, %struct.Memory** %MEMORY
  %loadMem1_47c8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %PC.i842
  %236 = add i64 %235, -174853
  %237 = load i64, i64* %PC.i842
  %238 = add i64 %237, 5
  %239 = load i64, i64* %PC.i842
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC.i842
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %238, i64* %244
  store i64 %243, i64* %241, align 8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %236, i64* %245, align 8
  store %struct.Memory* %loadMem1_47c8b5, %struct.Memory** %MEMORY
  %loadMem2_47c8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47c8b5 = load i64, i64* %3
  %call2_47c8b5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_47c8b5, %struct.Memory* %loadMem2_47c8b5)
  store %struct.Memory* %call2_47c8b5, %struct.Memory** %MEMORY
  %loadMem_47c8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %EAX.i840 = bitcast %union.anon* %251 to i32*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 15
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %254 to i64*
  %255 = load i64, i64* %RBP.i841
  %256 = sub i64 %255, 1044
  %257 = load i32, i32* %EAX.i840
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %PC.i839
  %260 = add i64 %259, 6
  store i64 %260, i64* %PC.i839
  %261 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %261
  store %struct.Memory* %loadMem_47c8ba, %struct.Memory** %MEMORY
  br label %block_.L_47c8c0

block_.L_47c8c0:                                  ; preds = %block_.L_47c8a9, %block_47c8a4
  %loadMem_47c8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 15
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %RBP.i838
  %269 = sub i64 %268, 984
  %270 = load i64, i64* %PC.i837
  %271 = add i64 %270, 10
  store i64 %271, i64* %PC.i837
  %272 = inttoptr i64 %269 to i32*
  store i32 0, i32* %272
  store %struct.Memory* %loadMem_47c8c0, %struct.Memory** %MEMORY
  br label %block_.L_47c8ca

block_.L_47c8ca:                                  ; preds = %block_.L_47c9e0, %block_.L_47c8c0
  %loadMem_47c8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RAX.i835 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %RBP.i836
  %283 = sub i64 %282, 984
  %284 = load i64, i64* %PC.i834
  %285 = add i64 %284, 6
  store i64 %285, i64* %PC.i834
  %286 = inttoptr i64 %283 to i32*
  %287 = load i32, i32* %286
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX.i835, align 8
  store %struct.Memory* %loadMem_47c8ca, %struct.Memory** %MEMORY
  %loadMem_47c8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %EAX.i833 = bitcast %union.anon* %294 to i32*
  %295 = load i32, i32* %EAX.i833
  %296 = zext i32 %295 to i64
  %297 = load i64, i64* %PC.i832
  %298 = add i64 %297, 7
  store i64 %298, i64* %PC.i832
  %299 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %300 = sub i32 %295, %299
  %301 = icmp ult i32 %295, %299
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %302, i8* %303, align 1
  %304 = and i32 %300, 255
  %305 = call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %308, i8* %309, align 1
  %310 = xor i32 %299, %295
  %311 = xor i32 %310, %300
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %314, i8* %315, align 1
  %316 = icmp eq i32 %300, 0
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %317, i8* %318, align 1
  %319 = lshr i32 %300, 31
  %320 = trunc i32 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %320, i8* %321, align 1
  %322 = lshr i32 %295, 31
  %323 = lshr i32 %299, 31
  %324 = xor i32 %323, %322
  %325 = xor i32 %319, %322
  %326 = add i32 %325, %324
  %327 = icmp eq i32 %326, 2
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %328, i8* %329, align 1
  store %struct.Memory* %loadMem_47c8d0, %struct.Memory** %MEMORY
  %loadMem_47c8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %PC.i831
  %334 = add i64 %333, 285
  %335 = load i64, i64* %PC.i831
  %336 = add i64 %335, 6
  %337 = load i64, i64* %PC.i831
  %338 = add i64 %337, 6
  store i64 %338, i64* %PC.i831
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %340 = load i8, i8* %339, align 1
  %341 = icmp ne i8 %340, 0
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %343 = load i8, i8* %342, align 1
  %344 = icmp ne i8 %343, 0
  %345 = xor i1 %341, %344
  %346 = xor i1 %345, true
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %BRANCH_TAKEN, align 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %349 = select i1 %345, i64 %336, i64 %334
  store i64 %349, i64* %348, align 8
  store %struct.Memory* %loadMem_47c8d7, %struct.Memory** %MEMORY
  %loadBr_47c8d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c8d7 = icmp eq i8 %loadBr_47c8d7, 1
  br i1 %cmpBr_47c8d7, label %block_.L_47c9f4, label %block_47c8dd

block_47c8dd:                                     ; preds = %block_.L_47c8ca
  %loadMem_47c8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 15
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RBP.i830 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RBP.i830
  %357 = sub i64 %356, 988
  %358 = load i64, i64* %PC.i829
  %359 = add i64 %358, 10
  store i64 %359, i64* %PC.i829
  %360 = inttoptr i64 %357 to i32*
  store i32 0, i32* %360
  store %struct.Memory* %loadMem_47c8dd, %struct.Memory** %MEMORY
  br label %block_.L_47c8e7

block_.L_47c8e7:                                  ; preds = %block_.L_47c9c7, %block_47c8dd
  %loadMem_47c8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i827 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i828
  %371 = sub i64 %370, 988
  %372 = load i64, i64* %PC.i826
  %373 = add i64 %372, 6
  store i64 %373, i64* %PC.i826
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i827, align 8
  store %struct.Memory* %loadMem_47c8e7, %struct.Memory** %MEMORY
  %loadMem_47c8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %EAX.i825 = bitcast %union.anon* %382 to i32*
  %383 = load i32, i32* %EAX.i825
  %384 = zext i32 %383 to i64
  %385 = load i64, i64* %PC.i824
  %386 = add i64 %385, 7
  store i64 %386, i64* %PC.i824
  %387 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %388 = sub i32 %383, %387
  %389 = icmp ult i32 %383, %387
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %390, i8* %391, align 1
  %392 = and i32 %388, 255
  %393 = call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %396, i8* %397, align 1
  %398 = xor i32 %387, %383
  %399 = xor i32 %398, %388
  %400 = lshr i32 %399, 4
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %402, i8* %403, align 1
  %404 = icmp eq i32 %388, 0
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %405, i8* %406, align 1
  %407 = lshr i32 %388, 31
  %408 = trunc i32 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %408, i8* %409, align 1
  %410 = lshr i32 %383, 31
  %411 = lshr i32 %387, 31
  %412 = xor i32 %411, %410
  %413 = xor i32 %407, %410
  %414 = add i32 %413, %412
  %415 = icmp eq i32 %414, 2
  %416 = zext i1 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %416, i8* %417, align 1
  store %struct.Memory* %loadMem_47c8ed, %struct.Memory** %MEMORY
  %loadMem_47c8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %PC.i823
  %422 = add i64 %421, 231
  %423 = load i64, i64* %PC.i823
  %424 = add i64 %423, 6
  %425 = load i64, i64* %PC.i823
  %426 = add i64 %425, 6
  store i64 %426, i64* %PC.i823
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %428 = load i8, i8* %427, align 1
  %429 = icmp ne i8 %428, 0
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %431 = load i8, i8* %430, align 1
  %432 = icmp ne i8 %431, 0
  %433 = xor i1 %429, %432
  %434 = xor i1 %433, true
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %BRANCH_TAKEN, align 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %437 = select i1 %433, i64 %424, i64 %422
  store i64 %437, i64* %436, align 8
  store %struct.Memory* %loadMem_47c8f4, %struct.Memory** %MEMORY
  %loadBr_47c8f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c8f4 = icmp eq i8 %loadBr_47c8f4, 1
  br i1 %cmpBr_47c8f4, label %block_.L_47c9db, label %block_47c8fa

block_47c8fa:                                     ; preds = %block_.L_47c8e7
  %loadMem_47c8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 15
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RBP.i822
  %448 = sub i64 %447, 984
  %449 = load i64, i64* %PC.i820
  %450 = add i64 %449, 7
  store i64 %450, i64* %PC.i820
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451
  %453 = sext i32 %452 to i64
  %454 = mul i64 %453, 20
  %455 = trunc i64 %454 to i32
  %456 = and i64 %454, 4294967295
  store i64 %456, i64* %RAX.i821, align 8
  %457 = shl i64 %454, 32
  %458 = ashr exact i64 %457, 32
  %459 = icmp ne i64 %458, %454
  %460 = zext i1 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %460, i8* %461, align 1
  %462 = and i32 %455, 255
  %463 = call i32 @llvm.ctpop.i32(i32 %462)
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %466, i8* %467, align 1
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %468, align 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %469, align 1
  %470 = lshr i32 %455, 31
  %471 = trunc i32 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %471, i8* %472, align 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %460, i8* %473, align 1
  store %struct.Memory* %loadMem_47c8fa, %struct.Memory** %MEMORY
  %loadMem_47c901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RAX.i819 = bitcast %union.anon* %479 to i64*
  %480 = load i64, i64* %RAX.i819
  %481 = load i64, i64* %PC.i818
  %482 = add i64 %481, 3
  store i64 %482, i64* %PC.i818
  %483 = trunc i64 %480 to i32
  %484 = add i32 21, %483
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RAX.i819, align 8
  %486 = icmp ult i32 %484, %483
  %487 = icmp ult i32 %484, 21
  %488 = or i1 %486, %487
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %489, i8* %490, align 1
  %491 = and i32 %484, 255
  %492 = call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %495, i8* %496, align 1
  %497 = xor i64 21, %480
  %498 = trunc i64 %497 to i32
  %499 = xor i32 %498, %484
  %500 = lshr i32 %499, 4
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %502, i8* %503, align 1
  %504 = icmp eq i32 %484, 0
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %505, i8* %506, align 1
  %507 = lshr i32 %484, 31
  %508 = trunc i32 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %508, i8* %509, align 1
  %510 = lshr i32 %483, 31
  %511 = xor i32 %507, %510
  %512 = add i32 %511, %507
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %514, i8* %515, align 1
  store %struct.Memory* %loadMem_47c901, %struct.Memory** %MEMORY
  %loadMem_47c904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RAX.i816 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %RAX.i816
  %526 = load i64, i64* %RBP.i817
  %527 = sub i64 %526, 988
  %528 = load i64, i64* %PC.i815
  %529 = add i64 %528, 6
  store i64 %529, i64* %PC.i815
  %530 = trunc i64 %525 to i32
  %531 = inttoptr i64 %527 to i32*
  %532 = load i32, i32* %531
  %533 = add i32 %532, %530
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i816, align 8
  %535 = icmp ult i32 %533, %530
  %536 = icmp ult i32 %533, %532
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %538, i8* %539, align 1
  %540 = and i32 %533, 255
  %541 = call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %544, i8* %545, align 1
  %546 = xor i32 %532, %530
  %547 = xor i32 %546, %533
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %550, i8* %551, align 1
  %552 = icmp eq i32 %533, 0
  %553 = zext i1 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %553, i8* %554, align 1
  %555 = lshr i32 %533, 31
  %556 = trunc i32 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %556, i8* %557, align 1
  %558 = lshr i32 %530, 31
  %559 = lshr i32 %532, 31
  %560 = xor i32 %555, %558
  %561 = xor i32 %555, %559
  %562 = add i32 %560, %561
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %564, i8* %565, align 1
  store %struct.Memory* %loadMem_47c904, %struct.Memory** %MEMORY
  %loadMem_47c90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %EAX.i813 = bitcast %union.anon* %571 to i32*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 15
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %574 to i64*
  %575 = load i64, i64* %RBP.i814
  %576 = sub i64 %575, 992
  %577 = load i32, i32* %EAX.i813
  %578 = zext i32 %577 to i64
  %579 = load i64, i64* %PC.i812
  %580 = add i64 %579, 6
  store i64 %580, i64* %PC.i812
  %581 = inttoptr i64 %576 to i32*
  store i32 %577, i32* %581
  store %struct.Memory* %loadMem_47c90a, %struct.Memory** %MEMORY
  %loadMem_47c910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 5
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RCX.i810 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 15
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %590 to i64*
  %591 = load i64, i64* %RBP.i811
  %592 = sub i64 %591, 992
  %593 = load i64, i64* %PC.i809
  %594 = add i64 %593, 7
  store i64 %594, i64* %PC.i809
  %595 = inttoptr i64 %592 to i32*
  %596 = load i32, i32* %595
  %597 = sext i32 %596 to i64
  store i64 %597, i64* %RCX.i810, align 8
  store %struct.Memory* %loadMem_47c910, %struct.Memory** %MEMORY
  %loadMem_47c917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 1
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 5
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RCX.i808
  %608 = add i64 %607, 12099168
  %609 = load i64, i64* %PC.i806
  %610 = add i64 %609, 8
  store i64 %610, i64* %PC.i806
  %611 = inttoptr i64 %608 to i8*
  %612 = load i8, i8* %611
  %613 = zext i8 %612 to i64
  store i64 %613, i64* %RAX.i807, align 8
  store %struct.Memory* %loadMem_47c917, %struct.Memory** %MEMORY
  %loadMem_47c91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 33
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %EAX.i805 = bitcast %union.anon* %619 to i32*
  %620 = load i32, i32* %EAX.i805
  %621 = zext i32 %620 to i64
  %622 = load i64, i64* %PC.i804
  %623 = add i64 %622, 3
  store i64 %623, i64* %PC.i804
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %624, align 1
  %625 = and i32 %620, 255
  %626 = call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %629, i8* %630, align 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %631, align 1
  %632 = icmp eq i32 %620, 0
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %633, i8* %634, align 1
  %635 = lshr i32 %620, 31
  %636 = trunc i32 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %636, i8* %637, align 1
  %638 = lshr i32 %620, 31
  %639 = xor i32 %635, %638
  %640 = add i32 %639, %638
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %642, i8* %643, align 1
  store %struct.Memory* %loadMem_47c91f, %struct.Memory** %MEMORY
  %loadMem_47c922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %PC.i803
  %648 = add i64 %647, 160
  %649 = load i64, i64* %PC.i803
  %650 = add i64 %649, 6
  %651 = load i64, i64* %PC.i803
  %652 = add i64 %651, 6
  store i64 %652, i64* %PC.i803
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %654 = load i8, i8* %653, align 1
  store i8 %654, i8* %BRANCH_TAKEN, align 1
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %656 = icmp ne i8 %654, 0
  %657 = select i1 %656, i64 %648, i64 %650
  store i64 %657, i64* %655, align 8
  store %struct.Memory* %loadMem_47c922, %struct.Memory** %MEMORY
  %loadBr_47c922 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c922 = icmp eq i8 %loadBr_47c922, 1
  br i1 %cmpBr_47c922, label %block_.L_47c9c2, label %block_47c928

block_47c928:                                     ; preds = %block_47c8fa
  %loadMem_47c928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %PC.i801
  %665 = add i64 %664, 10
  store i64 %665, i64* %PC.i801
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i802, align 8
  store %struct.Memory* %loadMem_47c928, %struct.Memory** %MEMORY
  %loadMem_47c932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 5
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RCX.i799 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 15
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RBP.i800 = bitcast %union.anon* %674 to i64*
  %675 = load i64, i64* %RBP.i800
  %676 = sub i64 %675, 992
  %677 = load i64, i64* %PC.i798
  %678 = add i64 %677, 7
  store i64 %678, i64* %PC.i798
  %679 = inttoptr i64 %676 to i32*
  %680 = load i32, i32* %679
  %681 = sext i32 %680 to i64
  store i64 %681, i64* %RCX.i799, align 8
  store %struct.Memory* %loadMem_47c932, %struct.Memory** %MEMORY
  %loadMem_47c939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 5
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RCX.i797
  %689 = load i64, i64* %PC.i796
  %690 = add i64 %689, 7
  store i64 %690, i64* %PC.i796
  %691 = sext i64 %688 to i128
  %692 = and i128 %691, -18446744073709551616
  %693 = zext i64 %688 to i128
  %694 = or i128 %692, %693
  %695 = mul i128 380, %694
  %696 = trunc i128 %695 to i64
  store i64 %696, i64* %RCX.i797, align 8
  %697 = sext i64 %696 to i128
  %698 = icmp ne i128 %697, %695
  %699 = zext i1 %698 to i8
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %699, i8* %700, align 1
  %701 = trunc i128 %695 to i32
  %702 = and i32 %701, 255
  %703 = call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %706, i8* %707, align 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %708, align 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %709, align 1
  %710 = lshr i64 %696, 63
  %711 = trunc i64 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %711, i8* %712, align 1
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %699, i8* %713, align 1
  store %struct.Memory* %loadMem_47c939, %struct.Memory** %MEMORY
  %loadMem_47c940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 5
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RCX.i795 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RAX.i794
  %724 = load i64, i64* %RCX.i795
  %725 = load i64, i64* %PC.i793
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC.i793
  %727 = add i64 %724, %723
  store i64 %727, i64* %RAX.i794, align 8
  %728 = icmp ult i64 %727, %723
  %729 = icmp ult i64 %727, %724
  %730 = or i1 %728, %729
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %731, i8* %732, align 1
  %733 = trunc i64 %727 to i32
  %734 = and i32 %733, 255
  %735 = call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %738, i8* %739, align 1
  %740 = xor i64 %724, %723
  %741 = xor i64 %740, %727
  %742 = lshr i64 %741, 4
  %743 = trunc i64 %742 to i8
  %744 = and i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %744, i8* %745, align 1
  %746 = icmp eq i64 %727, 0
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %747, i8* %748, align 1
  %749 = lshr i64 %727, 63
  %750 = trunc i64 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %750, i8* %751, align 1
  %752 = lshr i64 %723, 63
  %753 = lshr i64 %724, 63
  %754 = xor i64 %749, %752
  %755 = xor i64 %749, %753
  %756 = add i64 %754, %755
  %757 = icmp eq i64 %756, 2
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %758, i8* %759, align 1
  store %struct.Memory* %loadMem_47c940, %struct.Memory** %MEMORY
  %loadMem_47c943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 7
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RDX.i792 = bitcast %union.anon* %768 to i64*
  %769 = load i64, i64* %RAX.i791
  %770 = add i64 %769, 12
  %771 = load i64, i64* %PC.i790
  %772 = add i64 %771, 3
  store i64 %772, i64* %PC.i790
  %773 = inttoptr i64 %770 to i32*
  %774 = load i32, i32* %773
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RDX.i792, align 8
  store %struct.Memory* %loadMem_47c943, %struct.Memory** %MEMORY
  %loadMem_47c946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 7
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %EDX.i788 = bitcast %union.anon* %781 to i32*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 15
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %784 to i64*
  %785 = load i32, i32* %EDX.i788
  %786 = zext i32 %785 to i64
  %787 = load i64, i64* %RBP.i789
  %788 = sub i64 %787, 992
  %789 = load i64, i64* %PC.i787
  %790 = add i64 %789, 6
  store i64 %790, i64* %PC.i787
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791
  %793 = sub i32 %785, %792
  %794 = icmp ult i32 %785, %792
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %795, i8* %796, align 1
  %797 = and i32 %793, 255
  %798 = call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %801, i8* %802, align 1
  %803 = xor i32 %792, %785
  %804 = xor i32 %803, %793
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %807, i8* %808, align 1
  %809 = icmp eq i32 %793, 0
  %810 = zext i1 %809 to i8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %810, i8* %811, align 1
  %812 = lshr i32 %793, 31
  %813 = trunc i32 %812 to i8
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %813, i8* %814, align 1
  %815 = lshr i32 %785, 31
  %816 = lshr i32 %792, 31
  %817 = xor i32 %816, %815
  %818 = xor i32 %812, %815
  %819 = add i32 %818, %817
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %821, i8* %822, align 1
  store %struct.Memory* %loadMem_47c946, %struct.Memory** %MEMORY
  %loadMem_47c94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %PC.i786
  %827 = add i64 %826, 118
  %828 = load i64, i64* %PC.i786
  %829 = add i64 %828, 6
  %830 = load i64, i64* %PC.i786
  %831 = add i64 %830, 6
  store i64 %831, i64* %PC.i786
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %833 = load i8, i8* %832, align 1
  %834 = icmp eq i8 %833, 0
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %BRANCH_TAKEN, align 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %837 = select i1 %834, i64 %827, i64 %829
  store i64 %837, i64* %836, align 8
  store %struct.Memory* %loadMem_47c94c, %struct.Memory** %MEMORY
  %loadBr_47c94c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c94c = icmp eq i8 %loadBr_47c94c, 1
  br i1 %cmpBr_47c94c, label %block_.L_47c9c2, label %block_47c952

block_47c952:                                     ; preds = %block_47c928
  %loadMem_47c952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 1
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %PC.i784
  %845 = add i64 %844, 10
  store i64 %845, i64* %PC.i784
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i785, align 8
  store %struct.Memory* %loadMem_47c952, %struct.Memory** %MEMORY
  %loadMem_47c95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 5
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 15
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RBP.i783
  %856 = sub i64 %855, 992
  %857 = load i64, i64* %PC.i781
  %858 = add i64 %857, 7
  store i64 %858, i64* %PC.i781
  %859 = inttoptr i64 %856 to i32*
  %860 = load i32, i32* %859
  %861 = sext i32 %860 to i64
  store i64 %861, i64* %RCX.i782, align 8
  store %struct.Memory* %loadMem_47c95c, %struct.Memory** %MEMORY
  %loadMem_47c963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 5
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RCX.i780 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %RCX.i780
  %869 = load i64, i64* %PC.i779
  %870 = add i64 %869, 7
  store i64 %870, i64* %PC.i779
  %871 = sext i64 %868 to i128
  %872 = and i128 %871, -18446744073709551616
  %873 = zext i64 %868 to i128
  %874 = or i128 %872, %873
  %875 = mul i128 380, %874
  %876 = trunc i128 %875 to i64
  store i64 %876, i64* %RCX.i780, align 8
  %877 = sext i64 %876 to i128
  %878 = icmp ne i128 %877, %875
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %879, i8* %880, align 1
  %881 = trunc i128 %875 to i32
  %882 = and i32 %881, 255
  %883 = call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %886, i8* %887, align 1
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %888, align 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %889, align 1
  %890 = lshr i64 %876, 63
  %891 = trunc i64 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %891, i8* %892, align 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %879, i8* %893, align 1
  store %struct.Memory* %loadMem_47c963, %struct.Memory** %MEMORY
  %loadMem_47c96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 1
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RAX.i777 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 5
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RCX.i778 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RAX.i777
  %904 = load i64, i64* %RCX.i778
  %905 = load i64, i64* %PC.i776
  %906 = add i64 %905, 3
  store i64 %906, i64* %PC.i776
  %907 = add i64 %904, %903
  store i64 %907, i64* %RAX.i777, align 8
  %908 = icmp ult i64 %907, %903
  %909 = icmp ult i64 %907, %904
  %910 = or i1 %908, %909
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %911, i8* %912, align 1
  %913 = trunc i64 %907 to i32
  %914 = and i32 %913, 255
  %915 = call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %918, i8* %919, align 1
  %920 = xor i64 %904, %903
  %921 = xor i64 %920, %907
  %922 = lshr i64 %921, 4
  %923 = trunc i64 %922 to i8
  %924 = and i8 %923, 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %924, i8* %925, align 1
  %926 = icmp eq i64 %907, 0
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %927, i8* %928, align 1
  %929 = lshr i64 %907, 63
  %930 = trunc i64 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %930, i8* %931, align 1
  %932 = lshr i64 %903, 63
  %933 = lshr i64 %904, 63
  %934 = xor i64 %929, %932
  %935 = xor i64 %929, %933
  %936 = add i64 %934, %935
  %937 = icmp eq i64 %936, 2
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %938, i8* %939, align 1
  store %struct.Memory* %loadMem_47c96a, %struct.Memory** %MEMORY
  %loadMem_47c96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RAX.i775
  %947 = add i64 %946, 100
  %948 = load i64, i64* %PC.i774
  %949 = add i64 %948, 4
  store i64 %949, i64* %PC.i774
  %950 = inttoptr i64 %947 to i32*
  %951 = load i32, i32* %950
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %952, align 1
  %953 = and i32 %951, 255
  %954 = call i32 @llvm.ctpop.i32(i32 %953)
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %957, i8* %958, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %959, align 1
  %960 = icmp eq i32 %951, 0
  %961 = zext i1 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %961, i8* %962, align 1
  %963 = lshr i32 %951, 31
  %964 = trunc i32 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %964, i8* %965, align 1
  %966 = lshr i32 %951, 31
  %967 = xor i32 %963, %966
  %968 = add i32 %967, %966
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %970, i8* %971, align 1
  store %struct.Memory* %loadMem_47c96d, %struct.Memory** %MEMORY
  %loadMem_47c971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %PC.i773
  %976 = add i64 %975, 81
  %977 = load i64, i64* %PC.i773
  %978 = add i64 %977, 6
  %979 = load i64, i64* %PC.i773
  %980 = add i64 %979, 6
  store i64 %980, i64* %PC.i773
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %982 = load i8, i8* %981, align 1
  store i8 %982, i8* %BRANCH_TAKEN, align 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %984 = icmp ne i8 %982, 0
  %985 = select i1 %984, i64 %976, i64 %978
  store i64 %985, i64* %983, align 8
  store %struct.Memory* %loadMem_47c971, %struct.Memory** %MEMORY
  %loadBr_47c971 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c971 = icmp eq i8 %loadBr_47c971, 1
  br i1 %cmpBr_47c971, label %block_.L_47c9c2, label %block_47c977

block_47c977:                                     ; preds = %block_47c952
  %loadMem_47c977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %PC.i771
  %993 = add i64 %992, 10
  store i64 %993, i64* %PC.i771
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i772, align 8
  store %struct.Memory* %loadMem_47c977, %struct.Memory** %MEMORY
  %loadMem_47c981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 5
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RCX.i769 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 15
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RBP.i770
  %1004 = sub i64 %1003, 992
  %1005 = load i64, i64* %PC.i768
  %1006 = add i64 %1005, 7
  store i64 %1006, i64* %PC.i768
  %1007 = inttoptr i64 %1004 to i32*
  %1008 = load i32, i32* %1007
  %1009 = sext i32 %1008 to i64
  store i64 %1009, i64* %RCX.i769, align 8
  store %struct.Memory* %loadMem_47c981, %struct.Memory** %MEMORY
  %loadMem_47c988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 5
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %1015 to i64*
  %1016 = load i64, i64* %RCX.i767
  %1017 = load i64, i64* %PC.i766
  %1018 = add i64 %1017, 7
  store i64 %1018, i64* %PC.i766
  %1019 = sext i64 %1016 to i128
  %1020 = and i128 %1019, -18446744073709551616
  %1021 = zext i64 %1016 to i128
  %1022 = or i128 %1020, %1021
  %1023 = mul i128 380, %1022
  %1024 = trunc i128 %1023 to i64
  store i64 %1024, i64* %RCX.i767, align 8
  %1025 = sext i64 %1024 to i128
  %1026 = icmp ne i128 %1025, %1023
  %1027 = zext i1 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1027, i8* %1028, align 1
  %1029 = trunc i128 %1023 to i32
  %1030 = and i32 %1029, 255
  %1031 = call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1034, i8* %1035, align 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1036, align 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1037, align 1
  %1038 = lshr i64 %1024, 63
  %1039 = trunc i64 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1039, i8* %1040, align 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1027, i8* %1041, align 1
  store %struct.Memory* %loadMem_47c988, %struct.Memory** %MEMORY
  %loadMem_47c98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %1047 to i64*
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 5
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %RCX.i765 = bitcast %union.anon* %1050 to i64*
  %1051 = load i64, i64* %RAX.i764
  %1052 = load i64, i64* %RCX.i765
  %1053 = load i64, i64* %PC.i763
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %PC.i763
  %1055 = add i64 %1052, %1051
  store i64 %1055, i64* %RAX.i764, align 8
  %1056 = icmp ult i64 %1055, %1051
  %1057 = icmp ult i64 %1055, %1052
  %1058 = or i1 %1056, %1057
  %1059 = zext i1 %1058 to i8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1059, i8* %1060, align 1
  %1061 = trunc i64 %1055 to i32
  %1062 = and i32 %1061, 255
  %1063 = call i32 @llvm.ctpop.i32(i32 %1062)
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = xor i8 %1065, 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1066, i8* %1067, align 1
  %1068 = xor i64 %1052, %1051
  %1069 = xor i64 %1068, %1055
  %1070 = lshr i64 %1069, 4
  %1071 = trunc i64 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1072, i8* %1073, align 1
  %1074 = icmp eq i64 %1055, 0
  %1075 = zext i1 %1074 to i8
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1075, i8* %1076, align 1
  %1077 = lshr i64 %1055, 63
  %1078 = trunc i64 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1078, i8* %1079, align 1
  %1080 = lshr i64 %1051, 63
  %1081 = lshr i64 %1052, 63
  %1082 = xor i64 %1077, %1080
  %1083 = xor i64 %1077, %1081
  %1084 = add i64 %1082, %1083
  %1085 = icmp eq i64 %1084, 2
  %1086 = zext i1 %1085 to i8
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1086, i8* %1087, align 1
  store %struct.Memory* %loadMem_47c98f, %struct.Memory** %MEMORY
  %loadMem_47c992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %1093 to i64*
  %1094 = load i64, i64* %RAX.i762
  %1095 = add i64 %1094, 180
  %1096 = load i64, i64* %PC.i761
  %1097 = add i64 %1096, 7
  store i64 %1097, i64* %PC.i761
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1100, align 1
  %1101 = and i32 %1099, 255
  %1102 = call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1105, i8* %1106, align 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1107, align 1
  %1108 = icmp eq i32 %1099, 0
  %1109 = zext i1 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1109, i8* %1110, align 1
  %1111 = lshr i32 %1099, 31
  %1112 = trunc i32 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1112, i8* %1113, align 1
  %1114 = lshr i32 %1099, 31
  %1115 = xor i32 %1111, %1114
  %1116 = add i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1118, i8* %1119, align 1
  store %struct.Memory* %loadMem_47c992, %struct.Memory** %MEMORY
  %loadMem_47c999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %PC.i760
  %1124 = add i64 %1123, 41
  %1125 = load i64, i64* %PC.i760
  %1126 = add i64 %1125, 6
  %1127 = load i64, i64* %PC.i760
  %1128 = add i64 %1127, 6
  store i64 %1128, i64* %PC.i760
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1130 = load i8, i8* %1129, align 1
  store i8 %1130, i8* %BRANCH_TAKEN, align 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1132 = icmp ne i8 %1130, 0
  %1133 = select i1 %1132, i64 %1124, i64 %1126
  store i64 %1133, i64* %1131, align 8
  store %struct.Memory* %loadMem_47c999, %struct.Memory** %MEMORY
  %loadBr_47c999 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47c999 = icmp eq i8 %loadBr_47c999, 1
  br i1 %cmpBr_47c999, label %block_.L_47c9c2, label %block_47c99f

block_47c99f:                                     ; preds = %block_47c977
  %loadMem_47c99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 1
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 15
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %1142 to i64*
  %1143 = load i64, i64* %RBP.i759
  %1144 = sub i64 %1143, 992
  %1145 = load i64, i64* %PC.i757
  %1146 = add i64 %1145, 6
  store i64 %1146, i64* %PC.i757
  %1147 = inttoptr i64 %1144 to i32*
  %1148 = load i32, i32* %1147
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_47c99f, %struct.Memory** %MEMORY
  %loadMem_47c9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 33
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 5
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RCX.i755 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 15
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %RBP.i756
  %1160 = sub i64 %1159, 980
  %1161 = load i64, i64* %PC.i754
  %1162 = add i64 %1161, 7
  store i64 %1162, i64* %PC.i754
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163
  %1165 = sext i32 %1164 to i64
  store i64 %1165, i64* %RCX.i755, align 8
  store %struct.Memory* %loadMem_47c9a5, %struct.Memory** %MEMORY
  %loadMem_47c9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %EAX.i751 = bitcast %union.anon* %1171 to i32*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 5
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 15
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %1177 to i64*
  %1178 = load i64, i64* %RBP.i753
  %1179 = load i64, i64* %RCX.i752
  %1180 = mul i64 %1179, 4
  %1181 = add i64 %1178, -976
  %1182 = add i64 %1181, %1180
  %1183 = load i32, i32* %EAX.i751
  %1184 = zext i32 %1183 to i64
  %1185 = load i64, i64* %PC.i750
  %1186 = add i64 %1185, 7
  store i64 %1186, i64* %PC.i750
  %1187 = inttoptr i64 %1182 to i32*
  store i32 %1183, i32* %1187
  store %struct.Memory* %loadMem_47c9ac, %struct.Memory** %MEMORY
  %loadMem_47c9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 1
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 15
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %RBP.i749
  %1198 = sub i64 %1197, 980
  %1199 = load i64, i64* %PC.i747
  %1200 = add i64 %1199, 6
  store i64 %1200, i64* %PC.i747
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RAX.i748, align 8
  store %struct.Memory* %loadMem_47c9b3, %struct.Memory** %MEMORY
  %loadMem_47c9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 1
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RAX.i746
  %1211 = load i64, i64* %PC.i745
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC.i745
  %1213 = trunc i64 %1210 to i32
  %1214 = add i32 1, %1213
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RAX.i746, align 8
  %1216 = icmp ult i32 %1214, %1213
  %1217 = icmp ult i32 %1214, 1
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
  %1227 = xor i64 1, %1210
  %1228 = trunc i64 %1227 to i32
  %1229 = xor i32 %1228, %1214
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1232, i8* %1233, align 1
  %1234 = icmp eq i32 %1214, 0
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1235, i8* %1236, align 1
  %1237 = lshr i32 %1214, 31
  %1238 = trunc i32 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1238, i8* %1239, align 1
  %1240 = lshr i32 %1213, 31
  %1241 = xor i32 %1237, %1240
  %1242 = add i32 %1241, %1237
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1244, i8* %1245, align 1
  store %struct.Memory* %loadMem_47c9b9, %struct.Memory** %MEMORY
  %loadMem_47c9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 1
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %EAX.i743 = bitcast %union.anon* %1251 to i32*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 15
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RBP.i744
  %1256 = sub i64 %1255, 980
  %1257 = load i32, i32* %EAX.i743
  %1258 = zext i32 %1257 to i64
  %1259 = load i64, i64* %PC.i742
  %1260 = add i64 %1259, 6
  store i64 %1260, i64* %PC.i742
  %1261 = inttoptr i64 %1256 to i32*
  store i32 %1257, i32* %1261
  store %struct.Memory* %loadMem_47c9bc, %struct.Memory** %MEMORY
  br label %block_.L_47c9c2

block_.L_47c9c2:                                  ; preds = %block_47c99f, %block_47c977, %block_47c952, %block_47c928, %block_47c8fa
  %loadMem_47c9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 33
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %PC.i741
  %1266 = add i64 %1265, 5
  %1267 = load i64, i64* %PC.i741
  %1268 = add i64 %1267, 5
  store i64 %1268, i64* %PC.i741
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1266, i64* %1269, align 8
  store %struct.Memory* %loadMem_47c9c2, %struct.Memory** %MEMORY
  br label %block_.L_47c9c7

block_.L_47c9c7:                                  ; preds = %block_.L_47c9c2
  %loadMem_47c9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RBP.i740
  %1280 = sub i64 %1279, 988
  %1281 = load i64, i64* %PC.i738
  %1282 = add i64 %1281, 6
  store i64 %1282, i64* %PC.i738
  %1283 = inttoptr i64 %1280 to i32*
  %1284 = load i32, i32* %1283
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_47c9c7, %struct.Memory** %MEMORY
  %loadMem_47c9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 1
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RAX.i737
  %1293 = load i64, i64* %PC.i736
  %1294 = add i64 %1293, 3
  store i64 %1294, i64* %PC.i736
  %1295 = trunc i64 %1292 to i32
  %1296 = add i32 1, %1295
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RAX.i737, align 8
  %1298 = icmp ult i32 %1296, %1295
  %1299 = icmp ult i32 %1296, 1
  %1300 = or i1 %1298, %1299
  %1301 = zext i1 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1301, i8* %1302, align 1
  %1303 = and i32 %1296, 255
  %1304 = call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1307, i8* %1308, align 1
  %1309 = xor i64 1, %1292
  %1310 = trunc i64 %1309 to i32
  %1311 = xor i32 %1310, %1296
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1314, i8* %1315, align 1
  %1316 = icmp eq i32 %1296, 0
  %1317 = zext i1 %1316 to i8
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1317, i8* %1318, align 1
  %1319 = lshr i32 %1296, 31
  %1320 = trunc i32 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1320, i8* %1321, align 1
  %1322 = lshr i32 %1295, 31
  %1323 = xor i32 %1319, %1322
  %1324 = add i32 %1323, %1319
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1326, i8* %1327, align 1
  store %struct.Memory* %loadMem_47c9cd, %struct.Memory** %MEMORY
  %loadMem_47c9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 1
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %EAX.i734 = bitcast %union.anon* %1333 to i32*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 15
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %1336 to i64*
  %1337 = load i64, i64* %RBP.i735
  %1338 = sub i64 %1337, 988
  %1339 = load i32, i32* %EAX.i734
  %1340 = zext i32 %1339 to i64
  %1341 = load i64, i64* %PC.i733
  %1342 = add i64 %1341, 6
  store i64 %1342, i64* %PC.i733
  %1343 = inttoptr i64 %1338 to i32*
  store i32 %1339, i32* %1343
  store %struct.Memory* %loadMem_47c9d0, %struct.Memory** %MEMORY
  %loadMem_47c9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1346 to i64*
  %1347 = load i64, i64* %PC.i732
  %1348 = add i64 %1347, -239
  %1349 = load i64, i64* %PC.i732
  %1350 = add i64 %1349, 5
  store i64 %1350, i64* %PC.i732
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1348, i64* %1351, align 8
  store %struct.Memory* %loadMem_47c9d6, %struct.Memory** %MEMORY
  br label %block_.L_47c8e7

block_.L_47c9db:                                  ; preds = %block_.L_47c8e7
  %loadMem_47c9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %PC.i731
  %1356 = add i64 %1355, 5
  %1357 = load i64, i64* %PC.i731
  %1358 = add i64 %1357, 5
  store i64 %1358, i64* %PC.i731
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1356, i64* %1359, align 8
  store %struct.Memory* %loadMem_47c9db, %struct.Memory** %MEMORY
  br label %block_.L_47c9e0

block_.L_47c9e0:                                  ; preds = %block_.L_47c9db
  %loadMem_47c9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 1
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 15
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %RBP.i730
  %1370 = sub i64 %1369, 984
  %1371 = load i64, i64* %PC.i728
  %1372 = add i64 %1371, 6
  store i64 %1372, i64* %PC.i728
  %1373 = inttoptr i64 %1370 to i32*
  %1374 = load i32, i32* %1373
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_47c9e0, %struct.Memory** %MEMORY
  %loadMem_47c9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 1
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RAX.i727
  %1383 = load i64, i64* %PC.i726
  %1384 = add i64 %1383, 3
  store i64 %1384, i64* %PC.i726
  %1385 = trunc i64 %1382 to i32
  %1386 = add i32 1, %1385
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RAX.i727, align 8
  %1388 = icmp ult i32 %1386, %1385
  %1389 = icmp ult i32 %1386, 1
  %1390 = or i1 %1388, %1389
  %1391 = zext i1 %1390 to i8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1391, i8* %1392, align 1
  %1393 = and i32 %1386, 255
  %1394 = call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1397, i8* %1398, align 1
  %1399 = xor i64 1, %1382
  %1400 = trunc i64 %1399 to i32
  %1401 = xor i32 %1400, %1386
  %1402 = lshr i32 %1401, 4
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1404, i8* %1405, align 1
  %1406 = icmp eq i32 %1386, 0
  %1407 = zext i1 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1407, i8* %1408, align 1
  %1409 = lshr i32 %1386, 31
  %1410 = trunc i32 %1409 to i8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1410, i8* %1411, align 1
  %1412 = lshr i32 %1385, 31
  %1413 = xor i32 %1409, %1412
  %1414 = add i32 %1413, %1409
  %1415 = icmp eq i32 %1414, 2
  %1416 = zext i1 %1415 to i8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1416, i8* %1417, align 1
  store %struct.Memory* %loadMem_47c9e6, %struct.Memory** %MEMORY
  %loadMem_47c9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 1
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %EAX.i724 = bitcast %union.anon* %1423 to i32*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 15
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RBP.i725 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RBP.i725
  %1428 = sub i64 %1427, 984
  %1429 = load i32, i32* %EAX.i724
  %1430 = zext i32 %1429 to i64
  %1431 = load i64, i64* %PC.i723
  %1432 = add i64 %1431, 6
  store i64 %1432, i64* %PC.i723
  %1433 = inttoptr i64 %1428 to i32*
  store i32 %1429, i32* %1433
  store %struct.Memory* %loadMem_47c9e9, %struct.Memory** %MEMORY
  %loadMem_47c9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1436 to i64*
  %1437 = load i64, i64* %PC.i722
  %1438 = add i64 %1437, -293
  %1439 = load i64, i64* %PC.i722
  %1440 = add i64 %1439, 5
  store i64 %1440, i64* %PC.i722
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1438, i64* %1441, align 8
  store %struct.Memory* %loadMem_47c9ef, %struct.Memory** %MEMORY
  br label %block_.L_47c8ca

block_.L_47c9f4:                                  ; preds = %block_.L_47c8ca
  %loadMem1_47c9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %PC.i721
  %1446 = add i64 %1445, -21828
  %1447 = load i64, i64* %PC.i721
  %1448 = add i64 %1447, 5
  %1449 = load i64, i64* %PC.i721
  %1450 = add i64 %1449, 5
  store i64 %1450, i64* %PC.i721
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1452 = load i64, i64* %1451, align 8
  %1453 = add i64 %1452, -8
  %1454 = inttoptr i64 %1453 to i64*
  store i64 %1448, i64* %1454
  store i64 %1453, i64* %1451, align 8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1446, i64* %1455, align 8
  store %struct.Memory* %loadMem1_47c9f4, %struct.Memory** %MEMORY
  %loadMem2_47c9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47c9f4 = load i64, i64* %3
  %call2_47c9f4 = call %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* %0, i64 %loadPC_47c9f4, %struct.Memory* %loadMem2_47c9f4)
  store %struct.Memory* %call2_47c9f4, %struct.Memory** %MEMORY
  %loadMem_47c9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1458 to i64*
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 15
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %1461 to i64*
  %1462 = load i64, i64* %RBP.i720
  %1463 = sub i64 %1462, 984
  %1464 = load i64, i64* %PC.i719
  %1465 = add i64 %1464, 10
  store i64 %1465, i64* %PC.i719
  %1466 = inttoptr i64 %1463 to i32*
  store i32 0, i32* %1466
  store %struct.Memory* %loadMem_47c9f9, %struct.Memory** %MEMORY
  br label %block_.L_47ca03

block_.L_47ca03:                                  ; preds = %block_.L_47d121, %block_.L_47c9f4
  %loadMem_47ca03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 1
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 15
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %1475 to i64*
  %1476 = load i64, i64* %RBP.i718
  %1477 = sub i64 %1476, 984
  %1478 = load i64, i64* %PC.i716
  %1479 = add i64 %1478, 6
  store i64 %1479, i64* %PC.i716
  %1480 = inttoptr i64 %1477 to i32*
  %1481 = load i32, i32* %1480
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RAX.i717, align 8
  store %struct.Memory* %loadMem_47ca03, %struct.Memory** %MEMORY
  %loadMem_47ca09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %EAX.i715 = bitcast %union.anon* %1488 to i32*
  %1489 = load i32, i32* %EAX.i715
  %1490 = zext i32 %1489 to i64
  %1491 = load i64, i64* %PC.i714
  %1492 = add i64 %1491, 7
  store i64 %1492, i64* %PC.i714
  %1493 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1494 = sub i32 %1489, %1493
  %1495 = icmp ult i32 %1489, %1493
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1496, i8* %1497, align 1
  %1498 = and i32 %1494, 255
  %1499 = call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1502, i8* %1503, align 1
  %1504 = xor i32 %1493, %1489
  %1505 = xor i32 %1504, %1494
  %1506 = lshr i32 %1505, 4
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1508, i8* %1509, align 1
  %1510 = icmp eq i32 %1494, 0
  %1511 = zext i1 %1510 to i8
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1511, i8* %1512, align 1
  %1513 = lshr i32 %1494, 31
  %1514 = trunc i32 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1514, i8* %1515, align 1
  %1516 = lshr i32 %1489, 31
  %1517 = lshr i32 %1493, 31
  %1518 = xor i32 %1517, %1516
  %1519 = xor i32 %1513, %1516
  %1520 = add i32 %1519, %1518
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1522, i8* %1523, align 1
  store %struct.Memory* %loadMem_47ca09, %struct.Memory** %MEMORY
  %loadMem_47ca10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1526 to i64*
  %1527 = load i64, i64* %PC.i713
  %1528 = add i64 %1527, 1829
  %1529 = load i64, i64* %PC.i713
  %1530 = add i64 %1529, 6
  %1531 = load i64, i64* %PC.i713
  %1532 = add i64 %1531, 6
  store i64 %1532, i64* %PC.i713
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1534 = load i8, i8* %1533, align 1
  %1535 = icmp ne i8 %1534, 0
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1537 = load i8, i8* %1536, align 1
  %1538 = icmp ne i8 %1537, 0
  %1539 = xor i1 %1535, %1538
  %1540 = xor i1 %1539, true
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %BRANCH_TAKEN, align 1
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1543 = select i1 %1539, i64 %1530, i64 %1528
  store i64 %1543, i64* %1542, align 8
  store %struct.Memory* %loadMem_47ca10, %struct.Memory** %MEMORY
  %loadBr_47ca10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca10 = icmp eq i8 %loadBr_47ca10, 1
  br i1 %cmpBr_47ca10, label %block_.L_47d135, label %block_47ca16

block_47ca16:                                     ; preds = %block_.L_47ca03
  %loadMem_47ca16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 15
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RBP.i712
  %1551 = sub i64 %1550, 988
  %1552 = load i64, i64* %PC.i711
  %1553 = add i64 %1552, 10
  store i64 %1553, i64* %PC.i711
  %1554 = inttoptr i64 %1551 to i32*
  store i32 0, i32* %1554
  store %struct.Memory* %loadMem_47ca16, %struct.Memory** %MEMORY
  br label %block_.L_47ca20

block_.L_47ca20:                                  ; preds = %block_.L_47d108, %block_47ca16
  %loadMem_47ca20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 1
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RAX.i709 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 15
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %RBP.i710
  %1565 = sub i64 %1564, 988
  %1566 = load i64, i64* %PC.i708
  %1567 = add i64 %1566, 6
  store i64 %1567, i64* %PC.i708
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RAX.i709, align 8
  store %struct.Memory* %loadMem_47ca20, %struct.Memory** %MEMORY
  %loadMem_47ca26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %EAX.i707 = bitcast %union.anon* %1576 to i32*
  %1577 = load i32, i32* %EAX.i707
  %1578 = zext i32 %1577 to i64
  %1579 = load i64, i64* %PC.i706
  %1580 = add i64 %1579, 7
  store i64 %1580, i64* %PC.i706
  %1581 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1582 = sub i32 %1577, %1581
  %1583 = icmp ult i32 %1577, %1581
  %1584 = zext i1 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1584, i8* %1585, align 1
  %1586 = and i32 %1582, 255
  %1587 = call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1590, i8* %1591, align 1
  %1592 = xor i32 %1581, %1577
  %1593 = xor i32 %1592, %1582
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1596, i8* %1597, align 1
  %1598 = icmp eq i32 %1582, 0
  %1599 = zext i1 %1598 to i8
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1599, i8* %1600, align 1
  %1601 = lshr i32 %1582, 31
  %1602 = trunc i32 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1602, i8* %1603, align 1
  %1604 = lshr i32 %1577, 31
  %1605 = lshr i32 %1581, 31
  %1606 = xor i32 %1605, %1604
  %1607 = xor i32 %1601, %1604
  %1608 = add i32 %1607, %1606
  %1609 = icmp eq i32 %1608, 2
  %1610 = zext i1 %1609 to i8
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1610, i8* %1611, align 1
  store %struct.Memory* %loadMem_47ca26, %struct.Memory** %MEMORY
  %loadMem_47ca2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 33
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %PC.i705
  %1616 = add i64 %1615, 1775
  %1617 = load i64, i64* %PC.i705
  %1618 = add i64 %1617, 6
  %1619 = load i64, i64* %PC.i705
  %1620 = add i64 %1619, 6
  store i64 %1620, i64* %PC.i705
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1622 = load i8, i8* %1621, align 1
  %1623 = icmp ne i8 %1622, 0
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1625 = load i8, i8* %1624, align 1
  %1626 = icmp ne i8 %1625, 0
  %1627 = xor i1 %1623, %1626
  %1628 = xor i1 %1627, true
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %BRANCH_TAKEN, align 1
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1631 = select i1 %1627, i64 %1618, i64 %1616
  store i64 %1631, i64* %1630, align 8
  store %struct.Memory* %loadMem_47ca2d, %struct.Memory** %MEMORY
  %loadBr_47ca2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca2d = icmp eq i8 %loadBr_47ca2d, 1
  br i1 %cmpBr_47ca2d, label %block_.L_47d11c, label %block_47ca33

block_47ca33:                                     ; preds = %block_.L_47ca20
  %loadMem_47ca33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 1
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RAX.i703 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 15
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %1640 to i64*
  %1641 = load i64, i64* %RBP.i704
  %1642 = sub i64 %1641, 984
  %1643 = load i64, i64* %PC.i702
  %1644 = add i64 %1643, 7
  store i64 %1644, i64* %PC.i702
  %1645 = inttoptr i64 %1642 to i32*
  %1646 = load i32, i32* %1645
  %1647 = sext i32 %1646 to i64
  %1648 = mul i64 %1647, 20
  %1649 = trunc i64 %1648 to i32
  %1650 = and i64 %1648, 4294967295
  store i64 %1650, i64* %RAX.i703, align 8
  %1651 = shl i64 %1648, 32
  %1652 = ashr exact i64 %1651, 32
  %1653 = icmp ne i64 %1652, %1648
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1654, i8* %1655, align 1
  %1656 = and i32 %1649, 255
  %1657 = call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1660, i8* %1661, align 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1662, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1663, align 1
  %1664 = lshr i32 %1649, 31
  %1665 = trunc i32 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1665, i8* %1666, align 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1654, i8* %1667, align 1
  store %struct.Memory* %loadMem_47ca33, %struct.Memory** %MEMORY
  %loadMem_47ca3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 1
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RAX.i701 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RAX.i701
  %1675 = load i64, i64* %PC.i700
  %1676 = add i64 %1675, 3
  store i64 %1676, i64* %PC.i700
  %1677 = trunc i64 %1674 to i32
  %1678 = add i32 21, %1677
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RAX.i701, align 8
  %1680 = icmp ult i32 %1678, %1677
  %1681 = icmp ult i32 %1678, 21
  %1682 = or i1 %1680, %1681
  %1683 = zext i1 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1683, i8* %1684, align 1
  %1685 = and i32 %1678, 255
  %1686 = call i32 @llvm.ctpop.i32(i32 %1685)
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  %1689 = xor i8 %1688, 1
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1689, i8* %1690, align 1
  %1691 = xor i64 21, %1674
  %1692 = trunc i64 %1691 to i32
  %1693 = xor i32 %1692, %1678
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1696, i8* %1697, align 1
  %1698 = icmp eq i32 %1678, 0
  %1699 = zext i1 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1699, i8* %1700, align 1
  %1701 = lshr i32 %1678, 31
  %1702 = trunc i32 %1701 to i8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1702, i8* %1703, align 1
  %1704 = lshr i32 %1677, 31
  %1705 = xor i32 %1701, %1704
  %1706 = add i32 %1705, %1701
  %1707 = icmp eq i32 %1706, 2
  %1708 = zext i1 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1708, i8* %1709, align 1
  store %struct.Memory* %loadMem_47ca3a, %struct.Memory** %MEMORY
  %loadMem_47ca3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 1
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 15
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %RAX.i698
  %1720 = load i64, i64* %RBP.i699
  %1721 = sub i64 %1720, 988
  %1722 = load i64, i64* %PC.i697
  %1723 = add i64 %1722, 6
  store i64 %1723, i64* %PC.i697
  %1724 = trunc i64 %1719 to i32
  %1725 = inttoptr i64 %1721 to i32*
  %1726 = load i32, i32* %1725
  %1727 = add i32 %1726, %1724
  %1728 = zext i32 %1727 to i64
  store i64 %1728, i64* %RAX.i698, align 8
  %1729 = icmp ult i32 %1727, %1724
  %1730 = icmp ult i32 %1727, %1726
  %1731 = or i1 %1729, %1730
  %1732 = zext i1 %1731 to i8
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1732, i8* %1733, align 1
  %1734 = and i32 %1727, 255
  %1735 = call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1738, i8* %1739, align 1
  %1740 = xor i32 %1726, %1724
  %1741 = xor i32 %1740, %1727
  %1742 = lshr i32 %1741, 4
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1744, i8* %1745, align 1
  %1746 = icmp eq i32 %1727, 0
  %1747 = zext i1 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1747, i8* %1748, align 1
  %1749 = lshr i32 %1727, 31
  %1750 = trunc i32 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1750, i8* %1751, align 1
  %1752 = lshr i32 %1724, 31
  %1753 = lshr i32 %1726, 31
  %1754 = xor i32 %1749, %1752
  %1755 = xor i32 %1749, %1753
  %1756 = add i32 %1754, %1755
  %1757 = icmp eq i32 %1756, 2
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1758, i8* %1759, align 1
  store %struct.Memory* %loadMem_47ca3d, %struct.Memory** %MEMORY
  %loadMem_47ca43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 1
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %EAX.i695 = bitcast %union.anon* %1765 to i32*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 15
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %1768 to i64*
  %1769 = load i64, i64* %RBP.i696
  %1770 = sub i64 %1769, 992
  %1771 = load i32, i32* %EAX.i695
  %1772 = zext i32 %1771 to i64
  %1773 = load i64, i64* %PC.i694
  %1774 = add i64 %1773, 6
  store i64 %1774, i64* %PC.i694
  %1775 = inttoptr i64 %1770 to i32*
  store i32 %1771, i32* %1775
  store %struct.Memory* %loadMem_47ca43, %struct.Memory** %MEMORY
  %loadMem_47ca49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 15
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %RBP.i693
  %1783 = sub i64 %1782, 996
  %1784 = load i64, i64* %PC.i692
  %1785 = add i64 %1784, 10
  store i64 %1785, i64* %PC.i692
  %1786 = inttoptr i64 %1783 to i32*
  store i32 0, i32* %1786
  store %struct.Memory* %loadMem_47ca49, %struct.Memory** %MEMORY
  br label %block_.L_47ca53

block_.L_47ca53:                                  ; preds = %block_.L_47cbca, %block_47ca33
  %loadMem_47ca53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 15
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %RBP.i691
  %1794 = sub i64 %1793, 996
  %1795 = load i64, i64* %PC.i690
  %1796 = add i64 %1795, 7
  store i64 %1796, i64* %PC.i690
  %1797 = inttoptr i64 %1794 to i32*
  %1798 = load i32, i32* %1797
  %1799 = sub i32 %1798, 120
  %1800 = icmp ult i32 %1798, 120
  %1801 = zext i1 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1801, i8* %1802, align 1
  %1803 = and i32 %1799, 255
  %1804 = call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1807, i8* %1808, align 1
  %1809 = xor i32 %1798, 120
  %1810 = xor i32 %1809, %1799
  %1811 = lshr i32 %1810, 4
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1813, i8* %1814, align 1
  %1815 = icmp eq i32 %1799, 0
  %1816 = zext i1 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1816, i8* %1817, align 1
  %1818 = lshr i32 %1799, 31
  %1819 = trunc i32 %1818 to i8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1819, i8* %1820, align 1
  %1821 = lshr i32 %1798, 31
  %1822 = xor i32 %1818, %1821
  %1823 = add i32 %1822, %1821
  %1824 = icmp eq i32 %1823, 2
  %1825 = zext i1 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1825, i8* %1826, align 1
  store %struct.Memory* %loadMem_47ca53, %struct.Memory** %MEMORY
  %loadMem_47ca5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %PC.i689
  %1831 = add i64 %1830, 388
  %1832 = load i64, i64* %PC.i689
  %1833 = add i64 %1832, 6
  %1834 = load i64, i64* %PC.i689
  %1835 = add i64 %1834, 6
  store i64 %1835, i64* %PC.i689
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1837 = load i8, i8* %1836, align 1
  %1838 = icmp ne i8 %1837, 0
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1840 = load i8, i8* %1839, align 1
  %1841 = icmp ne i8 %1840, 0
  %1842 = xor i1 %1838, %1841
  %1843 = xor i1 %1842, true
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %BRANCH_TAKEN, align 1
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1846 = select i1 %1842, i64 %1833, i64 %1831
  store i64 %1846, i64* %1845, align 8
  store %struct.Memory* %loadMem_47ca5a, %struct.Memory** %MEMORY
  %loadBr_47ca5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca5a = icmp eq i8 %loadBr_47ca5a, 1
  br i1 %cmpBr_47ca5a, label %block_.L_47cbde, label %block_47ca60

block_47ca60:                                     ; preds = %block_.L_47ca53
  %loadMem_47ca60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 1
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %PC.i687
  %1854 = add i64 %1853, 10
  store i64 %1854, i64* %PC.i687
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_47ca60, %struct.Memory** %MEMORY
  %loadMem_47ca6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 5
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 15
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %1863 to i64*
  %1864 = load i64, i64* %RBP.i686
  %1865 = sub i64 %1864, 992
  %1866 = load i64, i64* %PC.i684
  %1867 = add i64 %1866, 7
  store i64 %1867, i64* %PC.i684
  %1868 = inttoptr i64 %1865 to i32*
  %1869 = load i32, i32* %1868
  %1870 = sext i32 %1869 to i64
  store i64 %1870, i64* %RCX.i685, align 8
  store %struct.Memory* %loadMem_47ca6a, %struct.Memory** %MEMORY
  %loadMem_47ca71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 5
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1876 to i64*
  %1877 = load i64, i64* %RCX.i683
  %1878 = load i64, i64* %PC.i682
  %1879 = add i64 %1878, 7
  store i64 %1879, i64* %PC.i682
  %1880 = sext i64 %1877 to i128
  %1881 = and i128 %1880, -18446744073709551616
  %1882 = zext i64 %1877 to i128
  %1883 = or i128 %1881, %1882
  %1884 = mul i128 564, %1883
  %1885 = trunc i128 %1884 to i64
  store i64 %1885, i64* %RCX.i683, align 8
  %1886 = sext i64 %1885 to i128
  %1887 = icmp ne i128 %1886, %1884
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1888, i8* %1889, align 1
  %1890 = trunc i128 %1884 to i32
  %1891 = and i32 %1890, 255
  %1892 = call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1895, i8* %1896, align 1
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1897, align 1
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1898, align 1
  %1899 = lshr i64 %1885, 63
  %1900 = trunc i64 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1900, i8* %1901, align 1
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1888, i8* %1902, align 1
  store %struct.Memory* %loadMem_47ca71, %struct.Memory** %MEMORY
  %loadMem_47ca78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 1
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 5
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RCX.i681 = bitcast %union.anon* %1911 to i64*
  %1912 = load i64, i64* %RAX.i680
  %1913 = load i64, i64* %RCX.i681
  %1914 = load i64, i64* %PC.i679
  %1915 = add i64 %1914, 3
  store i64 %1915, i64* %PC.i679
  %1916 = add i64 %1913, %1912
  store i64 %1916, i64* %RAX.i680, align 8
  %1917 = icmp ult i64 %1916, %1912
  %1918 = icmp ult i64 %1916, %1913
  %1919 = or i1 %1917, %1918
  %1920 = zext i1 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1920, i8* %1921, align 1
  %1922 = trunc i64 %1916 to i32
  %1923 = and i32 %1922, 255
  %1924 = call i32 @llvm.ctpop.i32(i32 %1923)
  %1925 = trunc i32 %1924 to i8
  %1926 = and i8 %1925, 1
  %1927 = xor i8 %1926, 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1927, i8* %1928, align 1
  %1929 = xor i64 %1913, %1912
  %1930 = xor i64 %1929, %1916
  %1931 = lshr i64 %1930, 4
  %1932 = trunc i64 %1931 to i8
  %1933 = and i8 %1932, 1
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1933, i8* %1934, align 1
  %1935 = icmp eq i64 %1916, 0
  %1936 = zext i1 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1936, i8* %1937, align 1
  %1938 = lshr i64 %1916, 63
  %1939 = trunc i64 %1938 to i8
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1939, i8* %1940, align 1
  %1941 = lshr i64 %1912, 63
  %1942 = lshr i64 %1913, 63
  %1943 = xor i64 %1938, %1941
  %1944 = xor i64 %1938, %1942
  %1945 = add i64 %1943, %1944
  %1946 = icmp eq i64 %1945, 2
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1947, i8* %1948, align 1
  store %struct.Memory* %loadMem_47ca78, %struct.Memory** %MEMORY
  %loadMem_47ca7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 5
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 15
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %RBP.i678
  %1959 = sub i64 %1958, 996
  %1960 = load i64, i64* %PC.i676
  %1961 = add i64 %1960, 7
  store i64 %1961, i64* %PC.i676
  %1962 = inttoptr i64 %1959 to i32*
  %1963 = load i32, i32* %1962
  %1964 = sext i32 %1963 to i64
  store i64 %1964, i64* %RCX.i677, align 8
  store %struct.Memory* %loadMem_47ca7b, %struct.Memory** %MEMORY
  %loadMem_47ca82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 1
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 5
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 7
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RDX.i675 = bitcast %union.anon* %1976 to i64*
  %1977 = load i64, i64* %RAX.i673
  %1978 = load i64, i64* %RCX.i674
  %1979 = mul i64 %1978, 4
  %1980 = add i64 %1977, 72
  %1981 = add i64 %1980, %1979
  %1982 = load i64, i64* %PC.i672
  %1983 = add i64 %1982, 4
  store i64 %1983, i64* %PC.i672
  %1984 = inttoptr i64 %1981 to i32*
  %1985 = load i32, i32* %1984
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RDX.i675, align 8
  store %struct.Memory* %loadMem_47ca82, %struct.Memory** %MEMORY
  %loadMem_47ca86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 7
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %1992 to i32*
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 15
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %1995 to i64*
  %1996 = load i64, i64* %RBP.i671
  %1997 = sub i64 %1996, 1008
  %1998 = load i32, i32* %EDX.i
  %1999 = zext i32 %1998 to i64
  %2000 = load i64, i64* %PC.i670
  %2001 = add i64 %2000, 6
  store i64 %2001, i64* %PC.i670
  %2002 = inttoptr i64 %1997 to i32*
  store i32 %1998, i32* %2002
  store %struct.Memory* %loadMem_47ca86, %struct.Memory** %MEMORY
  %loadMem_47ca8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 15
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %RBP.i669
  %2010 = sub i64 %2009, 1008
  %2011 = load i64, i64* %PC.i668
  %2012 = add i64 %2011, 7
  store i64 %2012, i64* %PC.i668
  %2013 = inttoptr i64 %2010 to i32*
  %2014 = load i32, i32* %2013
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2015, align 1
  %2016 = and i32 %2014, 255
  %2017 = call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2020, i8* %2021, align 1
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2022, align 1
  %2023 = icmp eq i32 %2014, 0
  %2024 = zext i1 %2023 to i8
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2024, i8* %2025, align 1
  %2026 = lshr i32 %2014, 31
  %2027 = trunc i32 %2026 to i8
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2027, i8* %2028, align 1
  %2029 = lshr i32 %2014, 31
  %2030 = xor i32 %2026, %2029
  %2031 = add i32 %2030, %2029
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2033, i8* %2034, align 1
  store %struct.Memory* %loadMem_47ca8c, %struct.Memory** %MEMORY
  %loadMem_47ca93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %PC.i667
  %2039 = add i64 %2038, 11
  %2040 = load i64, i64* %PC.i667
  %2041 = add i64 %2040, 6
  %2042 = load i64, i64* %PC.i667
  %2043 = add i64 %2042, 6
  store i64 %2043, i64* %PC.i667
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2045 = load i8, i8* %2044, align 1
  %2046 = icmp ne i8 %2045, 0
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2048 = load i8, i8* %2047, align 1
  %2049 = icmp ne i8 %2048, 0
  %2050 = xor i1 %2046, %2049
  %2051 = xor i1 %2050, true
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %BRANCH_TAKEN, align 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2054 = select i1 %2050, i64 %2041, i64 %2039
  store i64 %2054, i64* %2053, align 8
  store %struct.Memory* %loadMem_47ca93, %struct.Memory** %MEMORY
  %loadBr_47ca93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ca93 = icmp eq i8 %loadBr_47ca93, 1
  br i1 %cmpBr_47ca93, label %block_.L_47ca9e, label %block_47ca99

block_47ca99:                                     ; preds = %block_47ca60
  %loadMem_47ca99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2057 to i64*
  %2058 = load i64, i64* %PC.i666
  %2059 = add i64 %2058, 325
  %2060 = load i64, i64* %PC.i666
  %2061 = add i64 %2060, 5
  store i64 %2061, i64* %PC.i666
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2059, i64* %2062, align 8
  store %struct.Memory* %loadMem_47ca99, %struct.Memory** %MEMORY
  br label %block_.L_47cbde

block_.L_47ca9e:                                  ; preds = %block_47ca60
  %loadMem_47ca9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 1
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %PC.i664
  %2070 = add i64 %2069, 10
  store i64 %2070, i64* %PC.i664
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i665, align 8
  store %struct.Memory* %loadMem_47ca9e, %struct.Memory** %MEMORY
  %loadMem_47caa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 33
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 5
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RCX.i662 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 15
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %RBP.i663
  %2081 = sub i64 %2080, 1008
  %2082 = load i64, i64* %PC.i661
  %2083 = add i64 %2082, 7
  store i64 %2083, i64* %PC.i661
  %2084 = inttoptr i64 %2081 to i32*
  %2085 = load i32, i32* %2084
  %2086 = sext i32 %2085 to i64
  store i64 %2086, i64* %RCX.i662, align 8
  store %struct.Memory* %loadMem_47caa8, %struct.Memory** %MEMORY
  %loadMem_47caaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 5
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RCX.i660 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %RCX.i660
  %2094 = load i64, i64* %PC.i659
  %2095 = add i64 %2094, 4
  store i64 %2095, i64* %PC.i659
  %2096 = sext i64 %2093 to i128
  %2097 = and i128 %2096, -18446744073709551616
  %2098 = zext i64 %2093 to i128
  %2099 = or i128 %2097, %2098
  %2100 = mul i128 12, %2099
  %2101 = trunc i128 %2100 to i64
  store i64 %2101, i64* %RCX.i660, align 8
  %2102 = sext i64 %2101 to i128
  %2103 = icmp ne i128 %2102, %2100
  %2104 = zext i1 %2103 to i8
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2104, i8* %2105, align 1
  %2106 = trunc i128 %2100 to i32
  %2107 = and i32 %2106, 255
  %2108 = call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2111, i8* %2112, align 1
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2113, align 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2114, align 1
  %2115 = lshr i64 %2101, 63
  %2116 = trunc i64 %2115 to i8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2116, i8* %2117, align 1
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2104, i8* %2118, align 1
  store %struct.Memory* %loadMem_47caaf, %struct.Memory** %MEMORY
  %loadMem_47cab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 1
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 7
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RDX.i658 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RAX.i657
  %2129 = load i64, i64* %PC.i656
  %2130 = add i64 %2129, 3
  store i64 %2130, i64* %PC.i656
  store i64 %2128, i64* %RDX.i658, align 8
  store %struct.Memory* %loadMem_47cab3, %struct.Memory** %MEMORY
  %loadMem_47cab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 33
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 5
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %2136 to i64*
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 7
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %RDX.i655 = bitcast %union.anon* %2139 to i64*
  %2140 = load i64, i64* %RDX.i655
  %2141 = load i64, i64* %RCX.i654
  %2142 = load i64, i64* %PC.i653
  %2143 = add i64 %2142, 3
  store i64 %2143, i64* %PC.i653
  %2144 = add i64 %2141, %2140
  store i64 %2144, i64* %RDX.i655, align 8
  %2145 = icmp ult i64 %2144, %2140
  %2146 = icmp ult i64 %2144, %2141
  %2147 = or i1 %2145, %2146
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2148, i8* %2149, align 1
  %2150 = trunc i64 %2144 to i32
  %2151 = and i32 %2150, 255
  %2152 = call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2155, i8* %2156, align 1
  %2157 = xor i64 %2141, %2140
  %2158 = xor i64 %2157, %2144
  %2159 = lshr i64 %2158, 4
  %2160 = trunc i64 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2161, i8* %2162, align 1
  %2163 = icmp eq i64 %2144, 0
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2164, i8* %2165, align 1
  %2166 = lshr i64 %2144, 63
  %2167 = trunc i64 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2167, i8* %2168, align 1
  %2169 = lshr i64 %2140, 63
  %2170 = lshr i64 %2141, 63
  %2171 = xor i64 %2166, %2169
  %2172 = xor i64 %2166, %2170
  %2173 = add i64 %2171, %2172
  %2174 = icmp eq i64 %2173, 2
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2175, i8* %2176, align 1
  store %struct.Memory* %loadMem_47cab6, %struct.Memory** %MEMORY
  %loadMem_47cab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 7
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RDX.i651 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 9
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RSI.i652 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RDX.i651
  %2187 = add i64 %2186, 4
  %2188 = load i64, i64* %PC.i650
  %2189 = add i64 %2188, 3
  store i64 %2189, i64* %PC.i650
  %2190 = inttoptr i64 %2187 to i32*
  %2191 = load i32, i32* %2190
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RSI.i652, align 8
  store %struct.Memory* %loadMem_47cab9, %struct.Memory** %MEMORY
  %loadMem_47cabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 9
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2198 to i32*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 15
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %2201 to i64*
  %2202 = load i64, i64* %RBP.i649
  %2203 = sub i64 %2202, 1012
  %2204 = load i32, i32* %ESI.i
  %2205 = zext i32 %2204 to i64
  %2206 = load i64, i64* %PC.i648
  %2207 = add i64 %2206, 6
  store i64 %2207, i64* %PC.i648
  %2208 = inttoptr i64 %2203 to i32*
  store i32 %2204, i32* %2208
  store %struct.Memory* %loadMem_47cabc, %struct.Memory** %MEMORY
  %loadMem_47cac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 5
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RBP.i647
  %2219 = sub i64 %2218, 1008
  %2220 = load i64, i64* %PC.i645
  %2221 = add i64 %2220, 7
  store i64 %2221, i64* %PC.i645
  %2222 = inttoptr i64 %2219 to i32*
  %2223 = load i32, i32* %2222
  %2224 = sext i32 %2223 to i64
  store i64 %2224, i64* %RCX.i646, align 8
  store %struct.Memory* %loadMem_47cac2, %struct.Memory** %MEMORY
  %loadMem_47cac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 5
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RCX.i644 = bitcast %union.anon* %2230 to i64*
  %2231 = load i64, i64* %RCX.i644
  %2232 = load i64, i64* %PC.i643
  %2233 = add i64 %2232, 4
  store i64 %2233, i64* %PC.i643
  %2234 = sext i64 %2231 to i128
  %2235 = and i128 %2234, -18446744073709551616
  %2236 = zext i64 %2231 to i128
  %2237 = or i128 %2235, %2236
  %2238 = mul i128 12, %2237
  %2239 = trunc i128 %2238 to i64
  store i64 %2239, i64* %RCX.i644, align 8
  %2240 = sext i64 %2239 to i128
  %2241 = icmp ne i128 %2240, %2238
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2242, i8* %2243, align 1
  %2244 = trunc i128 %2238 to i32
  %2245 = and i32 %2244, 255
  %2246 = call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2249, i8* %2250, align 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2251, align 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2252, align 1
  %2253 = lshr i64 %2239, 63
  %2254 = trunc i64 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2254, i8* %2255, align 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2242, i8* %2256, align 1
  store %struct.Memory* %loadMem_47cac9, %struct.Memory** %MEMORY
  %loadMem_47cacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 1
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 5
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RAX.i641
  %2267 = load i64, i64* %RCX.i642
  %2268 = load i64, i64* %PC.i640
  %2269 = add i64 %2268, 3
  store i64 %2269, i64* %PC.i640
  %2270 = add i64 %2267, %2266
  store i64 %2270, i64* %RAX.i641, align 8
  %2271 = icmp ult i64 %2270, %2266
  %2272 = icmp ult i64 %2270, %2267
  %2273 = or i1 %2271, %2272
  %2274 = zext i1 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2274, i8* %2275, align 1
  %2276 = trunc i64 %2270 to i32
  %2277 = and i32 %2276, 255
  %2278 = call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2281, i8* %2282, align 1
  %2283 = xor i64 %2267, %2266
  %2284 = xor i64 %2283, %2270
  %2285 = lshr i64 %2284, 4
  %2286 = trunc i64 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2287, i8* %2288, align 1
  %2289 = icmp eq i64 %2270, 0
  %2290 = zext i1 %2289 to i8
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2290, i8* %2291, align 1
  %2292 = lshr i64 %2270, 63
  %2293 = trunc i64 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2293, i8* %2294, align 1
  %2295 = lshr i64 %2266, 63
  %2296 = lshr i64 %2267, 63
  %2297 = xor i64 %2292, %2295
  %2298 = xor i64 %2292, %2296
  %2299 = add i64 %2297, %2298
  %2300 = icmp eq i64 %2299, 2
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2301, i8* %2302, align 1
  store %struct.Memory* %loadMem_47cacd, %struct.Memory** %MEMORY
  %loadMem_47cad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 1
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %2308 to i64*
  %2309 = load i64, i64* %RAX.i639
  %2310 = load i64, i64* %PC.i638
  %2311 = add i64 %2310, 3
  store i64 %2311, i64* %PC.i638
  %2312 = inttoptr i64 %2309 to i32*
  %2313 = load i32, i32* %2312
  %2314 = sub i32 %2313, 2
  %2315 = icmp ult i32 %2313, 2
  %2316 = zext i1 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2316, i8* %2317, align 1
  %2318 = and i32 %2314, 255
  %2319 = call i32 @llvm.ctpop.i32(i32 %2318)
  %2320 = trunc i32 %2319 to i8
  %2321 = and i8 %2320, 1
  %2322 = xor i8 %2321, 1
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2322, i8* %2323, align 1
  %2324 = xor i32 %2313, 2
  %2325 = xor i32 %2324, %2314
  %2326 = lshr i32 %2325, 4
  %2327 = trunc i32 %2326 to i8
  %2328 = and i8 %2327, 1
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2328, i8* %2329, align 1
  %2330 = icmp eq i32 %2314, 0
  %2331 = zext i1 %2330 to i8
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2331, i8* %2332, align 1
  %2333 = lshr i32 %2314, 31
  %2334 = trunc i32 %2333 to i8
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2334, i8* %2335, align 1
  %2336 = lshr i32 %2313, 31
  %2337 = xor i32 %2333, %2336
  %2338 = add i32 %2337, %2336
  %2339 = icmp eq i32 %2338, 2
  %2340 = zext i1 %2339 to i8
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2340, i8* %2341, align 1
  store %struct.Memory* %loadMem_47cad0, %struct.Memory** %MEMORY
  %loadMem_47cad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %PC.i637
  %2346 = add i64 %2345, 237
  %2347 = load i64, i64* %PC.i637
  %2348 = add i64 %2347, 6
  %2349 = load i64, i64* %PC.i637
  %2350 = add i64 %2349, 6
  store i64 %2350, i64* %PC.i637
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2352 = load i8, i8* %2351, align 1
  store i8 %2352, i8* %BRANCH_TAKEN, align 1
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2354 = icmp ne i8 %2352, 0
  %2355 = select i1 %2354, i64 %2346, i64 %2348
  store i64 %2355, i64* %2353, align 8
  store %struct.Memory* %loadMem_47cad3, %struct.Memory** %MEMORY
  %loadBr_47cad3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cad3 = icmp eq i8 %loadBr_47cad3, 1
  br i1 %cmpBr_47cad3, label %block_.L_47cbc0, label %block_47cad9

block_47cad9:                                     ; preds = %block_.L_47ca9e
  %loadMem_47cad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %PC.i635
  %2363 = add i64 %2362, 10
  store i64 %2363, i64* %PC.i635
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i636, align 8
  store %struct.Memory* %loadMem_47cad9, %struct.Memory** %MEMORY
  %loadMem_47cae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 5
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 15
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %2372 to i64*
  %2373 = load i64, i64* %RBP.i634
  %2374 = sub i64 %2373, 1008
  %2375 = load i64, i64* %PC.i632
  %2376 = add i64 %2375, 7
  store i64 %2376, i64* %PC.i632
  %2377 = inttoptr i64 %2374 to i32*
  %2378 = load i32, i32* %2377
  %2379 = sext i32 %2378 to i64
  store i64 %2379, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_47cae3, %struct.Memory** %MEMORY
  %loadMem_47caea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 5
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RCX.i631
  %2387 = load i64, i64* %PC.i630
  %2388 = add i64 %2387, 4
  store i64 %2388, i64* %PC.i630
  %2389 = sext i64 %2386 to i128
  %2390 = and i128 %2389, -18446744073709551616
  %2391 = zext i64 %2386 to i128
  %2392 = or i128 %2390, %2391
  %2393 = mul i128 12, %2392
  %2394 = trunc i128 %2393 to i64
  store i64 %2394, i64* %RCX.i631, align 8
  %2395 = sext i64 %2394 to i128
  %2396 = icmp ne i128 %2395, %2393
  %2397 = zext i1 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2397, i8* %2398, align 1
  %2399 = trunc i128 %2393 to i32
  %2400 = and i32 %2399, 255
  %2401 = call i32 @llvm.ctpop.i32(i32 %2400)
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2404, i8* %2405, align 1
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2406, align 1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2407, align 1
  %2408 = lshr i64 %2394, 63
  %2409 = trunc i64 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2409, i8* %2410, align 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2397, i8* %2411, align 1
  store %struct.Memory* %loadMem_47caea, %struct.Memory** %MEMORY
  %loadMem_47caee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 1
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 5
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %RAX.i628
  %2422 = load i64, i64* %RCX.i629
  %2423 = load i64, i64* %PC.i627
  %2424 = add i64 %2423, 3
  store i64 %2424, i64* %PC.i627
  %2425 = add i64 %2422, %2421
  store i64 %2425, i64* %RAX.i628, align 8
  %2426 = icmp ult i64 %2425, %2421
  %2427 = icmp ult i64 %2425, %2422
  %2428 = or i1 %2426, %2427
  %2429 = zext i1 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2429, i8* %2430, align 1
  %2431 = trunc i64 %2425 to i32
  %2432 = and i32 %2431, 255
  %2433 = call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2436, i8* %2437, align 1
  %2438 = xor i64 %2422, %2421
  %2439 = xor i64 %2438, %2425
  %2440 = lshr i64 %2439, 4
  %2441 = trunc i64 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2442, i8* %2443, align 1
  %2444 = icmp eq i64 %2425, 0
  %2445 = zext i1 %2444 to i8
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2445, i8* %2446, align 1
  %2447 = lshr i64 %2425, 63
  %2448 = trunc i64 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2448, i8* %2449, align 1
  %2450 = lshr i64 %2421, 63
  %2451 = lshr i64 %2422, 63
  %2452 = xor i64 %2447, %2450
  %2453 = xor i64 %2447, %2451
  %2454 = add i64 %2452, %2453
  %2455 = icmp eq i64 %2454, 2
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2456, i8* %2457, align 1
  store %struct.Memory* %loadMem_47caee, %struct.Memory** %MEMORY
  %loadMem_47caf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 1
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %2463 to i64*
  %2464 = load i64, i64* %RAX.i626
  %2465 = load i64, i64* %PC.i625
  %2466 = add i64 %2465, 3
  store i64 %2466, i64* %PC.i625
  %2467 = inttoptr i64 %2464 to i32*
  %2468 = load i32, i32* %2467
  %2469 = sub i32 %2468, 4
  %2470 = icmp ult i32 %2468, 4
  %2471 = zext i1 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2471, i8* %2472, align 1
  %2473 = and i32 %2469, 255
  %2474 = call i32 @llvm.ctpop.i32(i32 %2473)
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = xor i8 %2476, 1
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2477, i8* %2478, align 1
  %2479 = xor i32 %2468, 4
  %2480 = xor i32 %2479, %2469
  %2481 = lshr i32 %2480, 4
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2483, i8* %2484, align 1
  %2485 = icmp eq i32 %2469, 0
  %2486 = zext i1 %2485 to i8
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2486, i8* %2487, align 1
  %2488 = lshr i32 %2469, 31
  %2489 = trunc i32 %2488 to i8
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2489, i8* %2490, align 1
  %2491 = lshr i32 %2468, 31
  %2492 = xor i32 %2488, %2491
  %2493 = add i32 %2492, %2491
  %2494 = icmp eq i32 %2493, 2
  %2495 = zext i1 %2494 to i8
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2495, i8* %2496, align 1
  store %struct.Memory* %loadMem_47caf1, %struct.Memory** %MEMORY
  %loadMem_47caf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %PC.i624
  %2501 = add i64 %2500, 204
  %2502 = load i64, i64* %PC.i624
  %2503 = add i64 %2502, 6
  %2504 = load i64, i64* %PC.i624
  %2505 = add i64 %2504, 6
  store i64 %2505, i64* %PC.i624
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2507 = load i8, i8* %2506, align 1
  store i8 %2507, i8* %BRANCH_TAKEN, align 1
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2509 = icmp ne i8 %2507, 0
  %2510 = select i1 %2509, i64 %2501, i64 %2503
  store i64 %2510, i64* %2508, align 8
  store %struct.Memory* %loadMem_47caf4, %struct.Memory** %MEMORY
  %loadBr_47caf4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47caf4 = icmp eq i8 %loadBr_47caf4, 1
  br i1 %cmpBr_47caf4, label %block_.L_47cbc0, label %block_47cafa

block_47cafa:                                     ; preds = %block_47cad9
  %loadMem_47cafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 33
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 1
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %2516 to i64*
  %2517 = load i64, i64* %PC.i622
  %2518 = add i64 %2517, 10
  store i64 %2518, i64* %PC.i622
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i623, align 8
  store %struct.Memory* %loadMem_47cafa, %struct.Memory** %MEMORY
  %loadMem_47cb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 5
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 15
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RBP.i621
  %2529 = sub i64 %2528, 1008
  %2530 = load i64, i64* %PC.i619
  %2531 = add i64 %2530, 7
  store i64 %2531, i64* %PC.i619
  %2532 = inttoptr i64 %2529 to i32*
  %2533 = load i32, i32* %2532
  %2534 = sext i32 %2533 to i64
  store i64 %2534, i64* %RCX.i620, align 8
  store %struct.Memory* %loadMem_47cb04, %struct.Memory** %MEMORY
  %loadMem_47cb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2537 to i64*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 5
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %RCX.i618
  %2542 = load i64, i64* %PC.i617
  %2543 = add i64 %2542, 4
  store i64 %2543, i64* %PC.i617
  %2544 = sext i64 %2541 to i128
  %2545 = and i128 %2544, -18446744073709551616
  %2546 = zext i64 %2541 to i128
  %2547 = or i128 %2545, %2546
  %2548 = mul i128 12, %2547
  %2549 = trunc i128 %2548 to i64
  store i64 %2549, i64* %RCX.i618, align 8
  %2550 = sext i64 %2549 to i128
  %2551 = icmp ne i128 %2550, %2548
  %2552 = zext i1 %2551 to i8
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2552, i8* %2553, align 1
  %2554 = trunc i128 %2548 to i32
  %2555 = and i32 %2554, 255
  %2556 = call i32 @llvm.ctpop.i32(i32 %2555)
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = xor i8 %2558, 1
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2559, i8* %2560, align 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2561, align 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2562, align 1
  %2563 = lshr i64 %2549, 63
  %2564 = trunc i64 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2564, i8* %2565, align 1
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2552, i8* %2566, align 1
  store %struct.Memory* %loadMem_47cb0b, %struct.Memory** %MEMORY
  %loadMem_47cb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 1
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 5
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %RAX.i615
  %2577 = load i64, i64* %RCX.i616
  %2578 = load i64, i64* %PC.i614
  %2579 = add i64 %2578, 3
  store i64 %2579, i64* %PC.i614
  %2580 = add i64 %2577, %2576
  store i64 %2580, i64* %RAX.i615, align 8
  %2581 = icmp ult i64 %2580, %2576
  %2582 = icmp ult i64 %2580, %2577
  %2583 = or i1 %2581, %2582
  %2584 = zext i1 %2583 to i8
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2584, i8* %2585, align 1
  %2586 = trunc i64 %2580 to i32
  %2587 = and i32 %2586, 255
  %2588 = call i32 @llvm.ctpop.i32(i32 %2587)
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  %2591 = xor i8 %2590, 1
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2591, i8* %2592, align 1
  %2593 = xor i64 %2577, %2576
  %2594 = xor i64 %2593, %2580
  %2595 = lshr i64 %2594, 4
  %2596 = trunc i64 %2595 to i8
  %2597 = and i8 %2596, 1
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2597, i8* %2598, align 1
  %2599 = icmp eq i64 %2580, 0
  %2600 = zext i1 %2599 to i8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2600, i8* %2601, align 1
  %2602 = lshr i64 %2580, 63
  %2603 = trunc i64 %2602 to i8
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2603, i8* %2604, align 1
  %2605 = lshr i64 %2576, 63
  %2606 = lshr i64 %2577, 63
  %2607 = xor i64 %2602, %2605
  %2608 = xor i64 %2602, %2606
  %2609 = add i64 %2607, %2608
  %2610 = icmp eq i64 %2609, 2
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2611, i8* %2612, align 1
  store %struct.Memory* %loadMem_47cb0f, %struct.Memory** %MEMORY
  %loadMem_47cb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 1
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %2618 to i64*
  %2619 = load i64, i64* %RAX.i613
  %2620 = load i64, i64* %PC.i612
  %2621 = add i64 %2620, 3
  store i64 %2621, i64* %PC.i612
  %2622 = inttoptr i64 %2619 to i32*
  %2623 = load i32, i32* %2622
  %2624 = sub i32 %2623, 6
  %2625 = icmp ult i32 %2623, 6
  %2626 = zext i1 %2625 to i8
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2626, i8* %2627, align 1
  %2628 = and i32 %2624, 255
  %2629 = call i32 @llvm.ctpop.i32(i32 %2628)
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  %2632 = xor i8 %2631, 1
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2632, i8* %2633, align 1
  %2634 = xor i32 %2623, 6
  %2635 = xor i32 %2634, %2624
  %2636 = lshr i32 %2635, 4
  %2637 = trunc i32 %2636 to i8
  %2638 = and i8 %2637, 1
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2638, i8* %2639, align 1
  %2640 = icmp eq i32 %2624, 0
  %2641 = zext i1 %2640 to i8
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2641, i8* %2642, align 1
  %2643 = lshr i32 %2624, 31
  %2644 = trunc i32 %2643 to i8
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2644, i8* %2645, align 1
  %2646 = lshr i32 %2623, 31
  %2647 = xor i32 %2643, %2646
  %2648 = add i32 %2647, %2646
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2650, i8* %2651, align 1
  store %struct.Memory* %loadMem_47cb12, %struct.Memory** %MEMORY
  %loadMem_47cb15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %PC.i611
  %2656 = add i64 %2655, 171
  %2657 = load i64, i64* %PC.i611
  %2658 = add i64 %2657, 6
  %2659 = load i64, i64* %PC.i611
  %2660 = add i64 %2659, 6
  store i64 %2660, i64* %PC.i611
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2662 = load i8, i8* %2661, align 1
  store i8 %2662, i8* %BRANCH_TAKEN, align 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2664 = icmp ne i8 %2662, 0
  %2665 = select i1 %2664, i64 %2656, i64 %2658
  store i64 %2665, i64* %2663, align 8
  store %struct.Memory* %loadMem_47cb15, %struct.Memory** %MEMORY
  %loadBr_47cb15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb15 = icmp eq i8 %loadBr_47cb15, 1
  br i1 %cmpBr_47cb15, label %block_.L_47cbc0, label %block_47cb1b

block_47cb1b:                                     ; preds = %block_47cafa
  %loadMem_47cb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 1
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %PC.i609
  %2673 = add i64 %2672, 10
  store i64 %2673, i64* %PC.i609
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_47cb1b, %struct.Memory** %MEMORY
  %loadMem_47cb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 5
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RCX.i607 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RBP.i608
  %2684 = sub i64 %2683, 1008
  %2685 = load i64, i64* %PC.i606
  %2686 = add i64 %2685, 7
  store i64 %2686, i64* %PC.i606
  %2687 = inttoptr i64 %2684 to i32*
  %2688 = load i32, i32* %2687
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RCX.i607, align 8
  store %struct.Memory* %loadMem_47cb25, %struct.Memory** %MEMORY
  %loadMem_47cb2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 5
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %RCX.i605
  %2697 = load i64, i64* %PC.i604
  %2698 = add i64 %2697, 4
  store i64 %2698, i64* %PC.i604
  %2699 = sext i64 %2696 to i128
  %2700 = and i128 %2699, -18446744073709551616
  %2701 = zext i64 %2696 to i128
  %2702 = or i128 %2700, %2701
  %2703 = mul i128 12, %2702
  %2704 = trunc i128 %2703 to i64
  store i64 %2704, i64* %RCX.i605, align 8
  %2705 = sext i64 %2704 to i128
  %2706 = icmp ne i128 %2705, %2703
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2707, i8* %2708, align 1
  %2709 = trunc i128 %2703 to i32
  %2710 = and i32 %2709, 255
  %2711 = call i32 @llvm.ctpop.i32(i32 %2710)
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = xor i8 %2713, 1
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2714, i8* %2715, align 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2716, align 1
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2717, align 1
  %2718 = lshr i64 %2704, 63
  %2719 = trunc i64 %2718 to i8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2719, i8* %2720, align 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2707, i8* %2721, align 1
  store %struct.Memory* %loadMem_47cb2c, %struct.Memory** %MEMORY
  %loadMem_47cb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 1
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 5
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %RAX.i602
  %2732 = load i64, i64* %RCX.i603
  %2733 = load i64, i64* %PC.i601
  %2734 = add i64 %2733, 3
  store i64 %2734, i64* %PC.i601
  %2735 = add i64 %2732, %2731
  store i64 %2735, i64* %RAX.i602, align 8
  %2736 = icmp ult i64 %2735, %2731
  %2737 = icmp ult i64 %2735, %2732
  %2738 = or i1 %2736, %2737
  %2739 = zext i1 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2739, i8* %2740, align 1
  %2741 = trunc i64 %2735 to i32
  %2742 = and i32 %2741, 255
  %2743 = call i32 @llvm.ctpop.i32(i32 %2742)
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2746, i8* %2747, align 1
  %2748 = xor i64 %2732, %2731
  %2749 = xor i64 %2748, %2735
  %2750 = lshr i64 %2749, 4
  %2751 = trunc i64 %2750 to i8
  %2752 = and i8 %2751, 1
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2752, i8* %2753, align 1
  %2754 = icmp eq i64 %2735, 0
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2755, i8* %2756, align 1
  %2757 = lshr i64 %2735, 63
  %2758 = trunc i64 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2758, i8* %2759, align 1
  %2760 = lshr i64 %2731, 63
  %2761 = lshr i64 %2732, 63
  %2762 = xor i64 %2757, %2760
  %2763 = xor i64 %2757, %2761
  %2764 = add i64 %2762, %2763
  %2765 = icmp eq i64 %2764, 2
  %2766 = zext i1 %2765 to i8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2766, i8* %2767, align 1
  store %struct.Memory* %loadMem_47cb30, %struct.Memory** %MEMORY
  %loadMem_47cb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 1
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %2773 to i64*
  %2774 = load i64, i64* %RAX.i600
  %2775 = load i64, i64* %PC.i599
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %PC.i599
  %2777 = inttoptr i64 %2774 to i32*
  %2778 = load i32, i32* %2777
  %2779 = sub i32 %2778, 8
  %2780 = icmp ult i32 %2778, 8
  %2781 = zext i1 %2780 to i8
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2781, i8* %2782, align 1
  %2783 = and i32 %2779, 255
  %2784 = call i32 @llvm.ctpop.i32(i32 %2783)
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = xor i8 %2786, 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2787, i8* %2788, align 1
  %2789 = xor i32 %2778, 8
  %2790 = xor i32 %2789, %2779
  %2791 = lshr i32 %2790, 4
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2793, i8* %2794, align 1
  %2795 = icmp eq i32 %2779, 0
  %2796 = zext i1 %2795 to i8
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2796, i8* %2797, align 1
  %2798 = lshr i32 %2779, 31
  %2799 = trunc i32 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2799, i8* %2800, align 1
  %2801 = lshr i32 %2778, 31
  %2802 = xor i32 %2798, %2801
  %2803 = add i32 %2802, %2801
  %2804 = icmp eq i32 %2803, 2
  %2805 = zext i1 %2804 to i8
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2805, i8* %2806, align 1
  store %struct.Memory* %loadMem_47cb33, %struct.Memory** %MEMORY
  %loadMem_47cb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %PC.i598
  %2811 = add i64 %2810, 138
  %2812 = load i64, i64* %PC.i598
  %2813 = add i64 %2812, 6
  %2814 = load i64, i64* %PC.i598
  %2815 = add i64 %2814, 6
  store i64 %2815, i64* %PC.i598
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2817 = load i8, i8* %2816, align 1
  store i8 %2817, i8* %BRANCH_TAKEN, align 1
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2819 = icmp ne i8 %2817, 0
  %2820 = select i1 %2819, i64 %2811, i64 %2813
  store i64 %2820, i64* %2818, align 8
  store %struct.Memory* %loadMem_47cb36, %struct.Memory** %MEMORY
  %loadBr_47cb36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb36 = icmp eq i8 %loadBr_47cb36, 1
  br i1 %cmpBr_47cb36, label %block_.L_47cbc0, label %block_47cb3c

block_47cb3c:                                     ; preds = %block_47cb1b
  %loadMem_47cb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 1
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %PC.i596
  %2828 = add i64 %2827, 10
  store i64 %2828, i64* %PC.i596
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_47cb3c, %struct.Memory** %MEMORY
  %loadMem_47cb46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 5
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 15
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %RBP.i595
  %2839 = sub i64 %2838, 1008
  %2840 = load i64, i64* %PC.i593
  %2841 = add i64 %2840, 7
  store i64 %2841, i64* %PC.i593
  %2842 = inttoptr i64 %2839 to i32*
  %2843 = load i32, i32* %2842
  %2844 = sext i32 %2843 to i64
  store i64 %2844, i64* %RCX.i594, align 8
  store %struct.Memory* %loadMem_47cb46, %struct.Memory** %MEMORY
  %loadMem_47cb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 33
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 5
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %RCX.i592
  %2852 = load i64, i64* %PC.i591
  %2853 = add i64 %2852, 4
  store i64 %2853, i64* %PC.i591
  %2854 = sext i64 %2851 to i128
  %2855 = and i128 %2854, -18446744073709551616
  %2856 = zext i64 %2851 to i128
  %2857 = or i128 %2855, %2856
  %2858 = mul i128 12, %2857
  %2859 = trunc i128 %2858 to i64
  store i64 %2859, i64* %RCX.i592, align 8
  %2860 = sext i64 %2859 to i128
  %2861 = icmp ne i128 %2860, %2858
  %2862 = zext i1 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2862, i8* %2863, align 1
  %2864 = trunc i128 %2858 to i32
  %2865 = and i32 %2864, 255
  %2866 = call i32 @llvm.ctpop.i32(i32 %2865)
  %2867 = trunc i32 %2866 to i8
  %2868 = and i8 %2867, 1
  %2869 = xor i8 %2868, 1
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2869, i8* %2870, align 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2871, align 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2872, align 1
  %2873 = lshr i64 %2859, 63
  %2874 = trunc i64 %2873 to i8
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2874, i8* %2875, align 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2862, i8* %2876, align 1
  store %struct.Memory* %loadMem_47cb4d, %struct.Memory** %MEMORY
  %loadMem_47cb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 1
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 5
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %RAX.i589
  %2887 = load i64, i64* %RCX.i590
  %2888 = load i64, i64* %PC.i588
  %2889 = add i64 %2888, 3
  store i64 %2889, i64* %PC.i588
  %2890 = add i64 %2887, %2886
  store i64 %2890, i64* %RAX.i589, align 8
  %2891 = icmp ult i64 %2890, %2886
  %2892 = icmp ult i64 %2890, %2887
  %2893 = or i1 %2891, %2892
  %2894 = zext i1 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2894, i8* %2895, align 1
  %2896 = trunc i64 %2890 to i32
  %2897 = and i32 %2896, 255
  %2898 = call i32 @llvm.ctpop.i32(i32 %2897)
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  %2901 = xor i8 %2900, 1
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2901, i8* %2902, align 1
  %2903 = xor i64 %2887, %2886
  %2904 = xor i64 %2903, %2890
  %2905 = lshr i64 %2904, 4
  %2906 = trunc i64 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2907, i8* %2908, align 1
  %2909 = icmp eq i64 %2890, 0
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2910, i8* %2911, align 1
  %2912 = lshr i64 %2890, 63
  %2913 = trunc i64 %2912 to i8
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2913, i8* %2914, align 1
  %2915 = lshr i64 %2886, 63
  %2916 = lshr i64 %2887, 63
  %2917 = xor i64 %2912, %2915
  %2918 = xor i64 %2912, %2916
  %2919 = add i64 %2917, %2918
  %2920 = icmp eq i64 %2919, 2
  %2921 = zext i1 %2920 to i8
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2921, i8* %2922, align 1
  store %struct.Memory* %loadMem_47cb51, %struct.Memory** %MEMORY
  %loadMem_47cb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 1
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %2928 to i64*
  %2929 = load i64, i64* %RAX.i587
  %2930 = load i64, i64* %PC.i586
  %2931 = add i64 %2930, 3
  store i64 %2931, i64* %PC.i586
  %2932 = inttoptr i64 %2929 to i32*
  %2933 = load i32, i32* %2932
  %2934 = sub i32 %2933, 10
  %2935 = icmp ult i32 %2933, 10
  %2936 = zext i1 %2935 to i8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2936, i8* %2937, align 1
  %2938 = and i32 %2934, 255
  %2939 = call i32 @llvm.ctpop.i32(i32 %2938)
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = xor i8 %2941, 1
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2942, i8* %2943, align 1
  %2944 = xor i32 %2933, 10
  %2945 = xor i32 %2944, %2934
  %2946 = lshr i32 %2945, 4
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2948, i8* %2949, align 1
  %2950 = icmp eq i32 %2934, 0
  %2951 = zext i1 %2950 to i8
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2951, i8* %2952, align 1
  %2953 = lshr i32 %2934, 31
  %2954 = trunc i32 %2953 to i8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2954, i8* %2955, align 1
  %2956 = lshr i32 %2933, 31
  %2957 = xor i32 %2953, %2956
  %2958 = add i32 %2957, %2956
  %2959 = icmp eq i32 %2958, 2
  %2960 = zext i1 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2960, i8* %2961, align 1
  store %struct.Memory* %loadMem_47cb54, %struct.Memory** %MEMORY
  %loadMem_47cb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2964 to i64*
  %2965 = load i64, i64* %PC.i585
  %2966 = add i64 %2965, 105
  %2967 = load i64, i64* %PC.i585
  %2968 = add i64 %2967, 6
  %2969 = load i64, i64* %PC.i585
  %2970 = add i64 %2969, 6
  store i64 %2970, i64* %PC.i585
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2972 = load i8, i8* %2971, align 1
  store i8 %2972, i8* %BRANCH_TAKEN, align 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2974 = icmp ne i8 %2972, 0
  %2975 = select i1 %2974, i64 %2966, i64 %2968
  store i64 %2975, i64* %2973, align 8
  store %struct.Memory* %loadMem_47cb57, %struct.Memory** %MEMORY
  %loadBr_47cb57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb57 = icmp eq i8 %loadBr_47cb57, 1
  br i1 %cmpBr_47cb57, label %block_.L_47cbc0, label %block_47cb5d

block_47cb5d:                                     ; preds = %block_47cb3c
  %loadMem_47cb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 33
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 1
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %2981 to i64*
  %2982 = load i64, i64* %PC.i583
  %2983 = add i64 %2982, 10
  store i64 %2983, i64* %PC.i583
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_47cb5d, %struct.Memory** %MEMORY
  %loadMem_47cb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 33
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 5
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 15
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %2992 to i64*
  %2993 = load i64, i64* %RBP.i582
  %2994 = sub i64 %2993, 1008
  %2995 = load i64, i64* %PC.i580
  %2996 = add i64 %2995, 7
  store i64 %2996, i64* %PC.i580
  %2997 = inttoptr i64 %2994 to i32*
  %2998 = load i32, i32* %2997
  %2999 = sext i32 %2998 to i64
  store i64 %2999, i64* %RCX.i581, align 8
  store %struct.Memory* %loadMem_47cb67, %struct.Memory** %MEMORY
  %loadMem_47cb6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 5
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RCX.i579 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RCX.i579
  %3007 = load i64, i64* %PC.i578
  %3008 = add i64 %3007, 4
  store i64 %3008, i64* %PC.i578
  %3009 = sext i64 %3006 to i128
  %3010 = and i128 %3009, -18446744073709551616
  %3011 = zext i64 %3006 to i128
  %3012 = or i128 %3010, %3011
  %3013 = mul i128 12, %3012
  %3014 = trunc i128 %3013 to i64
  store i64 %3014, i64* %RCX.i579, align 8
  %3015 = sext i64 %3014 to i128
  %3016 = icmp ne i128 %3015, %3013
  %3017 = zext i1 %3016 to i8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3017, i8* %3018, align 1
  %3019 = trunc i128 %3013 to i32
  %3020 = and i32 %3019, 255
  %3021 = call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3024, i8* %3025, align 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3026, align 1
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3027, align 1
  %3028 = lshr i64 %3014, 63
  %3029 = trunc i64 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3029, i8* %3030, align 1
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3017, i8* %3031, align 1
  store %struct.Memory* %loadMem_47cb6e, %struct.Memory** %MEMORY
  %loadMem_47cb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 1
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 5
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %3040 to i64*
  %3041 = load i64, i64* %RAX.i576
  %3042 = load i64, i64* %RCX.i577
  %3043 = load i64, i64* %PC.i575
  %3044 = add i64 %3043, 3
  store i64 %3044, i64* %PC.i575
  %3045 = add i64 %3042, %3041
  store i64 %3045, i64* %RAX.i576, align 8
  %3046 = icmp ult i64 %3045, %3041
  %3047 = icmp ult i64 %3045, %3042
  %3048 = or i1 %3046, %3047
  %3049 = zext i1 %3048 to i8
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3049, i8* %3050, align 1
  %3051 = trunc i64 %3045 to i32
  %3052 = and i32 %3051, 255
  %3053 = call i32 @llvm.ctpop.i32(i32 %3052)
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3056, i8* %3057, align 1
  %3058 = xor i64 %3042, %3041
  %3059 = xor i64 %3058, %3045
  %3060 = lshr i64 %3059, 4
  %3061 = trunc i64 %3060 to i8
  %3062 = and i8 %3061, 1
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3062, i8* %3063, align 1
  %3064 = icmp eq i64 %3045, 0
  %3065 = zext i1 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3065, i8* %3066, align 1
  %3067 = lshr i64 %3045, 63
  %3068 = trunc i64 %3067 to i8
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3068, i8* %3069, align 1
  %3070 = lshr i64 %3041, 63
  %3071 = lshr i64 %3042, 63
  %3072 = xor i64 %3067, %3070
  %3073 = xor i64 %3067, %3071
  %3074 = add i64 %3072, %3073
  %3075 = icmp eq i64 %3074, 2
  %3076 = zext i1 %3075 to i8
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3076, i8* %3077, align 1
  store %struct.Memory* %loadMem_47cb72, %struct.Memory** %MEMORY
  %loadMem_47cb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 1
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %3083 to i64*
  %3084 = load i64, i64* %RAX.i574
  %3085 = load i64, i64* %PC.i573
  %3086 = add i64 %3085, 3
  store i64 %3086, i64* %PC.i573
  %3087 = inttoptr i64 %3084 to i32*
  %3088 = load i32, i32* %3087
  %3089 = sub i32 %3088, 12
  %3090 = icmp ult i32 %3088, 12
  %3091 = zext i1 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3091, i8* %3092, align 1
  %3093 = and i32 %3089, 255
  %3094 = call i32 @llvm.ctpop.i32(i32 %3093)
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3097, i8* %3098, align 1
  %3099 = xor i32 %3088, 12
  %3100 = xor i32 %3099, %3089
  %3101 = lshr i32 %3100, 4
  %3102 = trunc i32 %3101 to i8
  %3103 = and i8 %3102, 1
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3103, i8* %3104, align 1
  %3105 = icmp eq i32 %3089, 0
  %3106 = zext i1 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3106, i8* %3107, align 1
  %3108 = lshr i32 %3089, 31
  %3109 = trunc i32 %3108 to i8
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3109, i8* %3110, align 1
  %3111 = lshr i32 %3088, 31
  %3112 = xor i32 %3108, %3111
  %3113 = add i32 %3112, %3111
  %3114 = icmp eq i32 %3113, 2
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3115, i8* %3116, align 1
  store %struct.Memory* %loadMem_47cb75, %struct.Memory** %MEMORY
  %loadMem_47cb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3119 to i64*
  %3120 = load i64, i64* %PC.i572
  %3121 = add i64 %3120, 72
  %3122 = load i64, i64* %PC.i572
  %3123 = add i64 %3122, 6
  %3124 = load i64, i64* %PC.i572
  %3125 = add i64 %3124, 6
  store i64 %3125, i64* %PC.i572
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3127 = load i8, i8* %3126, align 1
  store i8 %3127, i8* %BRANCH_TAKEN, align 1
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3129 = icmp ne i8 %3127, 0
  %3130 = select i1 %3129, i64 %3121, i64 %3123
  store i64 %3130, i64* %3128, align 8
  store %struct.Memory* %loadMem_47cb78, %struct.Memory** %MEMORY
  %loadBr_47cb78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb78 = icmp eq i8 %loadBr_47cb78, 1
  br i1 %cmpBr_47cb78, label %block_.L_47cbc0, label %block_47cb7e

block_47cb7e:                                     ; preds = %block_47cb5d
  %loadMem_47cb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 1
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %PC.i570
  %3138 = add i64 %3137, 10
  store i64 %3138, i64* %PC.i570
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_47cb7e, %struct.Memory** %MEMORY
  %loadMem_47cb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 5
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 15
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %3147 to i64*
  %3148 = load i64, i64* %RBP.i569
  %3149 = sub i64 %3148, 1008
  %3150 = load i64, i64* %PC.i567
  %3151 = add i64 %3150, 7
  store i64 %3151, i64* %PC.i567
  %3152 = inttoptr i64 %3149 to i32*
  %3153 = load i32, i32* %3152
  %3154 = sext i32 %3153 to i64
  store i64 %3154, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_47cb88, %struct.Memory** %MEMORY
  %loadMem_47cb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 5
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %RCX.i566
  %3162 = load i64, i64* %PC.i565
  %3163 = add i64 %3162, 4
  store i64 %3163, i64* %PC.i565
  %3164 = sext i64 %3161 to i128
  %3165 = and i128 %3164, -18446744073709551616
  %3166 = zext i64 %3161 to i128
  %3167 = or i128 %3165, %3166
  %3168 = mul i128 12, %3167
  %3169 = trunc i128 %3168 to i64
  store i64 %3169, i64* %RCX.i566, align 8
  %3170 = sext i64 %3169 to i128
  %3171 = icmp ne i128 %3170, %3168
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3172, i8* %3173, align 1
  %3174 = trunc i128 %3168 to i32
  %3175 = and i32 %3174, 255
  %3176 = call i32 @llvm.ctpop.i32(i32 %3175)
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  %3179 = xor i8 %3178, 1
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3179, i8* %3180, align 1
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3181, align 1
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3182, align 1
  %3183 = lshr i64 %3169, 63
  %3184 = trunc i64 %3183 to i8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3184, i8* %3185, align 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3172, i8* %3186, align 1
  store %struct.Memory* %loadMem_47cb8f, %struct.Memory** %MEMORY
  %loadMem_47cb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 5
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %3195 to i64*
  %3196 = load i64, i64* %RAX.i563
  %3197 = load i64, i64* %RCX.i564
  %3198 = load i64, i64* %PC.i562
  %3199 = add i64 %3198, 3
  store i64 %3199, i64* %PC.i562
  %3200 = add i64 %3197, %3196
  store i64 %3200, i64* %RAX.i563, align 8
  %3201 = icmp ult i64 %3200, %3196
  %3202 = icmp ult i64 %3200, %3197
  %3203 = or i1 %3201, %3202
  %3204 = zext i1 %3203 to i8
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3204, i8* %3205, align 1
  %3206 = trunc i64 %3200 to i32
  %3207 = and i32 %3206, 255
  %3208 = call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3211, i8* %3212, align 1
  %3213 = xor i64 %3197, %3196
  %3214 = xor i64 %3213, %3200
  %3215 = lshr i64 %3214, 4
  %3216 = trunc i64 %3215 to i8
  %3217 = and i8 %3216, 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3217, i8* %3218, align 1
  %3219 = icmp eq i64 %3200, 0
  %3220 = zext i1 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3220, i8* %3221, align 1
  %3222 = lshr i64 %3200, 63
  %3223 = trunc i64 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3223, i8* %3224, align 1
  %3225 = lshr i64 %3196, 63
  %3226 = lshr i64 %3197, 63
  %3227 = xor i64 %3222, %3225
  %3228 = xor i64 %3222, %3226
  %3229 = add i64 %3227, %3228
  %3230 = icmp eq i64 %3229, 2
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3231, i8* %3232, align 1
  store %struct.Memory* %loadMem_47cb93, %struct.Memory** %MEMORY
  %loadMem_47cb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 1
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %3238 to i64*
  %3239 = load i64, i64* %RAX.i561
  %3240 = load i64, i64* %PC.i560
  %3241 = add i64 %3240, 3
  store i64 %3241, i64* %PC.i560
  %3242 = inttoptr i64 %3239 to i32*
  %3243 = load i32, i32* %3242
  %3244 = sub i32 %3243, 14
  %3245 = icmp ult i32 %3243, 14
  %3246 = zext i1 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3246, i8* %3247, align 1
  %3248 = and i32 %3244, 255
  %3249 = call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3252, i8* %3253, align 1
  %3254 = xor i32 %3243, 14
  %3255 = xor i32 %3254, %3244
  %3256 = lshr i32 %3255, 4
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3258, i8* %3259, align 1
  %3260 = icmp eq i32 %3244, 0
  %3261 = zext i1 %3260 to i8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3261, i8* %3262, align 1
  %3263 = lshr i32 %3244, 31
  %3264 = trunc i32 %3263 to i8
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3264, i8* %3265, align 1
  %3266 = lshr i32 %3243, 31
  %3267 = xor i32 %3263, %3266
  %3268 = add i32 %3267, %3266
  %3269 = icmp eq i32 %3268, 2
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3270, i8* %3271, align 1
  store %struct.Memory* %loadMem_47cb96, %struct.Memory** %MEMORY
  %loadMem_47cb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3274 to i64*
  %3275 = load i64, i64* %PC.i559
  %3276 = add i64 %3275, 39
  %3277 = load i64, i64* %PC.i559
  %3278 = add i64 %3277, 6
  %3279 = load i64, i64* %PC.i559
  %3280 = add i64 %3279, 6
  store i64 %3280, i64* %PC.i559
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3282 = load i8, i8* %3281, align 1
  store i8 %3282, i8* %BRANCH_TAKEN, align 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3284 = icmp ne i8 %3282, 0
  %3285 = select i1 %3284, i64 %3276, i64 %3278
  store i64 %3285, i64* %3283, align 8
  store %struct.Memory* %loadMem_47cb99, %struct.Memory** %MEMORY
  %loadBr_47cb99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cb99 = icmp eq i8 %loadBr_47cb99, 1
  br i1 %cmpBr_47cb99, label %block_.L_47cbc0, label %block_47cb9f

block_47cb9f:                                     ; preds = %block_47cb7e
  %loadMem_47cb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 1
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %3291 to i64*
  %3292 = load i64, i64* %PC.i557
  %3293 = add i64 %3292, 10
  store i64 %3293, i64* %PC.i557
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_47cb9f, %struct.Memory** %MEMORY
  %loadMem_47cba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 5
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 15
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %3302 to i64*
  %3303 = load i64, i64* %RBP.i556
  %3304 = sub i64 %3303, 1008
  %3305 = load i64, i64* %PC.i554
  %3306 = add i64 %3305, 7
  store i64 %3306, i64* %PC.i554
  %3307 = inttoptr i64 %3304 to i32*
  %3308 = load i32, i32* %3307
  %3309 = sext i32 %3308 to i64
  store i64 %3309, i64* %RCX.i555, align 8
  store %struct.Memory* %loadMem_47cba9, %struct.Memory** %MEMORY
  %loadMem_47cbb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 5
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %RCX.i553
  %3317 = load i64, i64* %PC.i552
  %3318 = add i64 %3317, 4
  store i64 %3318, i64* %PC.i552
  %3319 = sext i64 %3316 to i128
  %3320 = and i128 %3319, -18446744073709551616
  %3321 = zext i64 %3316 to i128
  %3322 = or i128 %3320, %3321
  %3323 = mul i128 12, %3322
  %3324 = trunc i128 %3323 to i64
  store i64 %3324, i64* %RCX.i553, align 8
  %3325 = sext i64 %3324 to i128
  %3326 = icmp ne i128 %3325, %3323
  %3327 = zext i1 %3326 to i8
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3327, i8* %3328, align 1
  %3329 = trunc i128 %3323 to i32
  %3330 = and i32 %3329, 255
  %3331 = call i32 @llvm.ctpop.i32(i32 %3330)
  %3332 = trunc i32 %3331 to i8
  %3333 = and i8 %3332, 1
  %3334 = xor i8 %3333, 1
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3334, i8* %3335, align 1
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3336, align 1
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3337, align 1
  %3338 = lshr i64 %3324, 63
  %3339 = trunc i64 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3339, i8* %3340, align 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3327, i8* %3341, align 1
  store %struct.Memory* %loadMem_47cbb0, %struct.Memory** %MEMORY
  %loadMem_47cbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 1
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 5
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %3350 to i64*
  %3351 = load i64, i64* %RAX.i550
  %3352 = load i64, i64* %RCX.i551
  %3353 = load i64, i64* %PC.i549
  %3354 = add i64 %3353, 3
  store i64 %3354, i64* %PC.i549
  %3355 = add i64 %3352, %3351
  store i64 %3355, i64* %RAX.i550, align 8
  %3356 = icmp ult i64 %3355, %3351
  %3357 = icmp ult i64 %3355, %3352
  %3358 = or i1 %3356, %3357
  %3359 = zext i1 %3358 to i8
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3359, i8* %3360, align 1
  %3361 = trunc i64 %3355 to i32
  %3362 = and i32 %3361, 255
  %3363 = call i32 @llvm.ctpop.i32(i32 %3362)
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  %3366 = xor i8 %3365, 1
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3366, i8* %3367, align 1
  %3368 = xor i64 %3352, %3351
  %3369 = xor i64 %3368, %3355
  %3370 = lshr i64 %3369, 4
  %3371 = trunc i64 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3372, i8* %3373, align 1
  %3374 = icmp eq i64 %3355, 0
  %3375 = zext i1 %3374 to i8
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3375, i8* %3376, align 1
  %3377 = lshr i64 %3355, 63
  %3378 = trunc i64 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3378, i8* %3379, align 1
  %3380 = lshr i64 %3351, 63
  %3381 = lshr i64 %3352, 63
  %3382 = xor i64 %3377, %3380
  %3383 = xor i64 %3377, %3381
  %3384 = add i64 %3382, %3383
  %3385 = icmp eq i64 %3384, 2
  %3386 = zext i1 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3386, i8* %3387, align 1
  store %struct.Memory* %loadMem_47cbb4, %struct.Memory** %MEMORY
  %loadMem_47cbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 33
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 1
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %3393 to i64*
  %3394 = load i64, i64* %RAX.i548
  %3395 = load i64, i64* %PC.i547
  %3396 = add i64 %3395, 3
  store i64 %3396, i64* %PC.i547
  %3397 = inttoptr i64 %3394 to i32*
  %3398 = load i32, i32* %3397
  %3399 = sub i32 %3398, 16
  %3400 = icmp ult i32 %3398, 16
  %3401 = zext i1 %3400 to i8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3401, i8* %3402, align 1
  %3403 = and i32 %3399, 255
  %3404 = call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3407, i8* %3408, align 1
  %3409 = xor i32 %3398, 16
  %3410 = xor i32 %3409, %3399
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3413, i8* %3414, align 1
  %3415 = icmp eq i32 %3399, 0
  %3416 = zext i1 %3415 to i8
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3416, i8* %3417, align 1
  %3418 = lshr i32 %3399, 31
  %3419 = trunc i32 %3418 to i8
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3419, i8* %3420, align 1
  %3421 = lshr i32 %3398, 31
  %3422 = xor i32 %3418, %3421
  %3423 = add i32 %3422, %3421
  %3424 = icmp eq i32 %3423, 2
  %3425 = zext i1 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3425, i8* %3426, align 1
  store %struct.Memory* %loadMem_47cbb7, %struct.Memory** %MEMORY
  %loadMem_47cbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3429 to i64*
  %3430 = load i64, i64* %PC.i546
  %3431 = add i64 %3430, 11
  %3432 = load i64, i64* %PC.i546
  %3433 = add i64 %3432, 6
  %3434 = load i64, i64* %PC.i546
  %3435 = add i64 %3434, 6
  store i64 %3435, i64* %PC.i546
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3437 = load i8, i8* %3436, align 1
  %3438 = icmp eq i8 %3437, 0
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %BRANCH_TAKEN, align 1
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3441 = select i1 %3438, i64 %3431, i64 %3433
  store i64 %3441, i64* %3440, align 8
  store %struct.Memory* %loadMem_47cbba, %struct.Memory** %MEMORY
  %loadBr_47cbba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cbba = icmp eq i8 %loadBr_47cbba, 1
  br i1 %cmpBr_47cbba, label %block_.L_47cbc5, label %block_.L_47cbc0

block_.L_47cbc0:                                  ; preds = %block_47cb9f, %block_47cb7e, %block_47cb5d, %block_47cb3c, %block_47cb1b, %block_47cafa, %block_47cad9, %block_.L_47ca9e
  %loadMem_47cbc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3444 to i64*
  %3445 = load i64, i64* %PC.i545
  %3446 = add i64 %3445, 30
  %3447 = load i64, i64* %PC.i545
  %3448 = add i64 %3447, 5
  store i64 %3448, i64* %PC.i545
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3446, i64* %3449, align 8
  store %struct.Memory* %loadMem_47cbc0, %struct.Memory** %MEMORY
  br label %block_.L_47cbde

block_.L_47cbc5:                                  ; preds = %block_47cb9f
  %loadMem_47cbc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %PC.i544
  %3454 = add i64 %3453, 5
  %3455 = load i64, i64* %PC.i544
  %3456 = add i64 %3455, 5
  store i64 %3456, i64* %PC.i544
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3454, i64* %3457, align 8
  store %struct.Memory* %loadMem_47cbc5, %struct.Memory** %MEMORY
  br label %block_.L_47cbca

block_.L_47cbca:                                  ; preds = %block_.L_47cbc5
  %loadMem_47cbca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 1
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 15
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %3466 to i64*
  %3467 = load i64, i64* %RBP.i543
  %3468 = sub i64 %3467, 996
  %3469 = load i64, i64* %PC.i541
  %3470 = add i64 %3469, 6
  store i64 %3470, i64* %PC.i541
  %3471 = inttoptr i64 %3468 to i32*
  %3472 = load i32, i32* %3471
  %3473 = zext i32 %3472 to i64
  store i64 %3473, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_47cbca, %struct.Memory** %MEMORY
  %loadMem_47cbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 1
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %3479 to i64*
  %3480 = load i64, i64* %RAX.i540
  %3481 = load i64, i64* %PC.i539
  %3482 = add i64 %3481, 3
  store i64 %3482, i64* %PC.i539
  %3483 = trunc i64 %3480 to i32
  %3484 = add i32 1, %3483
  %3485 = zext i32 %3484 to i64
  store i64 %3485, i64* %RAX.i540, align 8
  %3486 = icmp ult i32 %3484, %3483
  %3487 = icmp ult i32 %3484, 1
  %3488 = or i1 %3486, %3487
  %3489 = zext i1 %3488 to i8
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3489, i8* %3490, align 1
  %3491 = and i32 %3484, 255
  %3492 = call i32 @llvm.ctpop.i32(i32 %3491)
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  %3495 = xor i8 %3494, 1
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3495, i8* %3496, align 1
  %3497 = xor i64 1, %3480
  %3498 = trunc i64 %3497 to i32
  %3499 = xor i32 %3498, %3484
  %3500 = lshr i32 %3499, 4
  %3501 = trunc i32 %3500 to i8
  %3502 = and i8 %3501, 1
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3502, i8* %3503, align 1
  %3504 = icmp eq i32 %3484, 0
  %3505 = zext i1 %3504 to i8
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3505, i8* %3506, align 1
  %3507 = lshr i32 %3484, 31
  %3508 = trunc i32 %3507 to i8
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3508, i8* %3509, align 1
  %3510 = lshr i32 %3483, 31
  %3511 = xor i32 %3507, %3510
  %3512 = add i32 %3511, %3507
  %3513 = icmp eq i32 %3512, 2
  %3514 = zext i1 %3513 to i8
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3514, i8* %3515, align 1
  store %struct.Memory* %loadMem_47cbd0, %struct.Memory** %MEMORY
  %loadMem_47cbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 1
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %EAX.i537 = bitcast %union.anon* %3521 to i32*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 15
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %RBP.i538
  %3526 = sub i64 %3525, 996
  %3527 = load i32, i32* %EAX.i537
  %3528 = zext i32 %3527 to i64
  %3529 = load i64, i64* %PC.i536
  %3530 = add i64 %3529, 6
  store i64 %3530, i64* %PC.i536
  %3531 = inttoptr i64 %3526 to i32*
  store i32 %3527, i32* %3531
  store %struct.Memory* %loadMem_47cbd3, %struct.Memory** %MEMORY
  %loadMem_47cbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %PC.i535
  %3536 = add i64 %3535, -390
  %3537 = load i64, i64* %PC.i535
  %3538 = add i64 %3537, 5
  store i64 %3538, i64* %PC.i535
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3536, i64* %3539, align 8
  store %struct.Memory* %loadMem_47cbd9, %struct.Memory** %MEMORY
  br label %block_.L_47ca53

block_.L_47cbde:                                  ; preds = %block_.L_47cbc0, %block_47ca99, %block_.L_47ca53
  %loadMem_47cbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 15
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %3545 to i64*
  %3546 = load i64, i64* %RBP.i534
  %3547 = sub i64 %3546, 996
  %3548 = load i64, i64* %PC.i533
  %3549 = add i64 %3548, 7
  store i64 %3549, i64* %PC.i533
  %3550 = inttoptr i64 %3547 to i32*
  %3551 = load i32, i32* %3550
  %3552 = sub i32 %3551, 120
  %3553 = icmp ult i32 %3551, 120
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3554, i8* %3555, align 1
  %3556 = and i32 %3552, 255
  %3557 = call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3560, i8* %3561, align 1
  %3562 = xor i32 %3551, 120
  %3563 = xor i32 %3562, %3552
  %3564 = lshr i32 %3563, 4
  %3565 = trunc i32 %3564 to i8
  %3566 = and i8 %3565, 1
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3566, i8* %3567, align 1
  %3568 = icmp eq i32 %3552, 0
  %3569 = zext i1 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3569, i8* %3570, align 1
  %3571 = lshr i32 %3552, 31
  %3572 = trunc i32 %3571 to i8
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3572, i8* %3573, align 1
  %3574 = lshr i32 %3551, 31
  %3575 = xor i32 %3571, %3574
  %3576 = add i32 %3575, %3574
  %3577 = icmp eq i32 %3576, 2
  %3578 = zext i1 %3577 to i8
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3578, i8* %3579, align 1
  store %struct.Memory* %loadMem_47cbde, %struct.Memory** %MEMORY
  %loadMem_47cbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %PC.i532
  %3584 = add i64 %3583, 51
  %3585 = load i64, i64* %PC.i532
  %3586 = add i64 %3585, 6
  %3587 = load i64, i64* %PC.i532
  %3588 = add i64 %3587, 6
  store i64 %3588, i64* %PC.i532
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3590 = load i8, i8* %3589, align 1
  store i8 %3590, i8* %BRANCH_TAKEN, align 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3592 = icmp ne i8 %3590, 0
  %3593 = select i1 %3592, i64 %3584, i64 %3586
  store i64 %3593, i64* %3591, align 8
  store %struct.Memory* %loadMem_47cbe5, %struct.Memory** %MEMORY
  %loadBr_47cbe5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cbe5 = icmp eq i8 %loadBr_47cbe5, 1
  br i1 %cmpBr_47cbe5, label %block_.L_47cc18, label %block_47cbeb

block_47cbeb:                                     ; preds = %block_.L_47cbde
  %loadMem_47cbeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 1
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %PC.i530
  %3601 = add i64 %3600, 10
  store i64 %3601, i64* %PC.i530
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_47cbeb, %struct.Memory** %MEMORY
  %loadMem_47cbf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 33
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3604 to i64*
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 5
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %3607 to i64*
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3609 = getelementptr inbounds %struct.GPR, %struct.GPR* %3608, i32 0, i32 15
  %3610 = getelementptr inbounds %struct.Reg, %struct.Reg* %3609, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %3610 to i64*
  %3611 = load i64, i64* %RBP.i529
  %3612 = sub i64 %3611, 992
  %3613 = load i64, i64* %PC.i527
  %3614 = add i64 %3613, 7
  store i64 %3614, i64* %PC.i527
  %3615 = inttoptr i64 %3612 to i32*
  %3616 = load i32, i32* %3615
  %3617 = sext i32 %3616 to i64
  store i64 %3617, i64* %RCX.i528, align 8
  store %struct.Memory* %loadMem_47cbf5, %struct.Memory** %MEMORY
  %loadMem_47cbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 33
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3620 to i64*
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 5
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %3623 to i64*
  %3624 = load i64, i64* %RCX.i526
  %3625 = load i64, i64* %PC.i525
  %3626 = add i64 %3625, 7
  store i64 %3626, i64* %PC.i525
  %3627 = sext i64 %3624 to i128
  %3628 = and i128 %3627, -18446744073709551616
  %3629 = zext i64 %3624 to i128
  %3630 = or i128 %3628, %3629
  %3631 = mul i128 564, %3630
  %3632 = trunc i128 %3631 to i64
  store i64 %3632, i64* %RCX.i526, align 8
  %3633 = sext i64 %3632 to i128
  %3634 = icmp ne i128 %3633, %3631
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3635, i8* %3636, align 1
  %3637 = trunc i128 %3631 to i32
  %3638 = and i32 %3637, 255
  %3639 = call i32 @llvm.ctpop.i32(i32 %3638)
  %3640 = trunc i32 %3639 to i8
  %3641 = and i8 %3640, 1
  %3642 = xor i8 %3641, 1
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3642, i8* %3643, align 1
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3644, align 1
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3645, align 1
  %3646 = lshr i64 %3632, 63
  %3647 = trunc i64 %3646 to i8
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3647, i8* %3648, align 1
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3635, i8* %3649, align 1
  store %struct.Memory* %loadMem_47cbfc, %struct.Memory** %MEMORY
  %loadMem_47cc03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 1
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 5
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %3658 to i64*
  %3659 = load i64, i64* %RAX.i523
  %3660 = load i64, i64* %RCX.i524
  %3661 = load i64, i64* %PC.i522
  %3662 = add i64 %3661, 3
  store i64 %3662, i64* %PC.i522
  %3663 = add i64 %3660, %3659
  store i64 %3663, i64* %RAX.i523, align 8
  %3664 = icmp ult i64 %3663, %3659
  %3665 = icmp ult i64 %3663, %3660
  %3666 = or i1 %3664, %3665
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3667, i8* %3668, align 1
  %3669 = trunc i64 %3663 to i32
  %3670 = and i32 %3669, 255
  %3671 = call i32 @llvm.ctpop.i32(i32 %3670)
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  %3674 = xor i8 %3673, 1
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3674, i8* %3675, align 1
  %3676 = xor i64 %3660, %3659
  %3677 = xor i64 %3676, %3663
  %3678 = lshr i64 %3677, 4
  %3679 = trunc i64 %3678 to i8
  %3680 = and i8 %3679, 1
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3680, i8* %3681, align 1
  %3682 = icmp eq i64 %3663, 0
  %3683 = zext i1 %3682 to i8
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3683, i8* %3684, align 1
  %3685 = lshr i64 %3663, 63
  %3686 = trunc i64 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3686, i8* %3687, align 1
  %3688 = lshr i64 %3659, 63
  %3689 = lshr i64 %3660, 63
  %3690 = xor i64 %3685, %3688
  %3691 = xor i64 %3685, %3689
  %3692 = add i64 %3690, %3691
  %3693 = icmp eq i64 %3692, 2
  %3694 = zext i1 %3693 to i8
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3694, i8* %3695, align 1
  store %struct.Memory* %loadMem_47cc03, %struct.Memory** %MEMORY
  %loadMem_47cc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 5
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RCX.i520 = bitcast %union.anon* %3701 to i64*
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 15
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %3704 to i64*
  %3705 = load i64, i64* %RBP.i521
  %3706 = sub i64 %3705, 996
  %3707 = load i64, i64* %PC.i519
  %3708 = add i64 %3707, 7
  store i64 %3708, i64* %PC.i519
  %3709 = inttoptr i64 %3706 to i32*
  %3710 = load i32, i32* %3709
  %3711 = sext i32 %3710 to i64
  store i64 %3711, i64* %RCX.i520, align 8
  store %struct.Memory* %loadMem_47cc06, %struct.Memory** %MEMORY
  %loadMem_47cc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 33
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 1
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 5
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %RAX.i517
  %3722 = load i64, i64* %RCX.i518
  %3723 = mul i64 %3722, 4
  %3724 = add i64 %3721, 72
  %3725 = add i64 %3724, %3723
  %3726 = load i64, i64* %PC.i516
  %3727 = add i64 %3726, 5
  store i64 %3727, i64* %PC.i516
  %3728 = inttoptr i64 %3725 to i32*
  %3729 = load i32, i32* %3728
  %3730 = sub i32 %3729, -1
  %3731 = icmp ult i32 %3729, -1
  %3732 = zext i1 %3731 to i8
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3732, i8* %3733, align 1
  %3734 = and i32 %3730, 255
  %3735 = call i32 @llvm.ctpop.i32(i32 %3734)
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  %3738 = xor i8 %3737, 1
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3738, i8* %3739, align 1
  %3740 = xor i32 %3729, -1
  %3741 = xor i32 %3740, %3730
  %3742 = lshr i32 %3741, 4
  %3743 = trunc i32 %3742 to i8
  %3744 = and i8 %3743, 1
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3744, i8* %3745, align 1
  %3746 = icmp eq i32 %3730, 0
  %3747 = zext i1 %3746 to i8
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3747, i8* %3748, align 1
  %3749 = lshr i32 %3730, 31
  %3750 = trunc i32 %3749 to i8
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3750, i8* %3751, align 1
  %3752 = lshr i32 %3729, 31
  %3753 = xor i32 %3752, 1
  %3754 = xor i32 %3749, %3752
  %3755 = add i32 %3754, %3753
  %3756 = icmp eq i32 %3755, 2
  %3757 = zext i1 %3756 to i8
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3757, i8* %3758, align 1
  store %struct.Memory* %loadMem_47cc0d, %struct.Memory** %MEMORY
  %loadMem_47cc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 33
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3761 to i64*
  %3762 = load i64, i64* %PC.i515
  %3763 = add i64 %3762, 11
  %3764 = load i64, i64* %PC.i515
  %3765 = add i64 %3764, 6
  %3766 = load i64, i64* %PC.i515
  %3767 = add i64 %3766, 6
  store i64 %3767, i64* %PC.i515
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3769 = load i8, i8* %3768, align 1
  %3770 = icmp eq i8 %3769, 0
  %3771 = zext i1 %3770 to i8
  store i8 %3771, i8* %BRANCH_TAKEN, align 1
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3773 = select i1 %3770, i64 %3763, i64 %3765
  store i64 %3773, i64* %3772, align 8
  store %struct.Memory* %loadMem_47cc12, %struct.Memory** %MEMORY
  %loadBr_47cc12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc12 = icmp eq i8 %loadBr_47cc12, 1
  br i1 %cmpBr_47cc12, label %block_.L_47cc1d, label %block_.L_47cc18

block_.L_47cc18:                                  ; preds = %block_47cbeb, %block_.L_47cbde
  %loadMem_47cc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %PC.i514
  %3778 = add i64 %3777, 1264
  %3779 = load i64, i64* %PC.i514
  %3780 = add i64 %3779, 5
  store i64 %3780, i64* %PC.i514
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3778, i64* %3781, align 8
  store %struct.Memory* %loadMem_47cc18, %struct.Memory** %MEMORY
  br label %block_.L_47d108

block_.L_47cc1d:                                  ; preds = %block_47cbeb
  %loadMem_47cc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 33
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 15
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %3787 to i64*
  %3788 = load i64, i64* %RBP.i513
  %3789 = sub i64 %3788, 1004
  %3790 = load i64, i64* %PC.i512
  %3791 = add i64 %3790, 10
  store i64 %3791, i64* %PC.i512
  %3792 = inttoptr i64 %3789 to i32*
  store i32 0, i32* %3792
  store %struct.Memory* %loadMem_47cc1d, %struct.Memory** %MEMORY
  %loadMem_47cc27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3795 to i64*
  %3796 = load i64, i64* %PC.i511
  %3797 = add i64 %3796, 8
  store i64 %3797, i64* %PC.i511
  %3798 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3799, align 1
  %3800 = and i32 %3798, 255
  %3801 = call i32 @llvm.ctpop.i32(i32 %3800)
  %3802 = trunc i32 %3801 to i8
  %3803 = and i8 %3802, 1
  %3804 = xor i8 %3803, 1
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3804, i8* %3805, align 1
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3806, align 1
  %3807 = icmp eq i32 %3798, 0
  %3808 = zext i1 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3808, i8* %3809, align 1
  %3810 = lshr i32 %3798, 31
  %3811 = trunc i32 %3810 to i8
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3811, i8* %3812, align 1
  %3813 = lshr i32 %3798, 31
  %3814 = xor i32 %3810, %3813
  %3815 = add i32 %3814, %3813
  %3816 = icmp eq i32 %3815, 2
  %3817 = zext i1 %3816 to i8
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3817, i8* %3818, align 1
  store %struct.Memory* %loadMem_47cc27, %struct.Memory** %MEMORY
  %loadMem_47cc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %PC.i510
  %3823 = add i64 %3822, 11
  %3824 = load i64, i64* %PC.i510
  %3825 = add i64 %3824, 6
  %3826 = load i64, i64* %PC.i510
  %3827 = add i64 %3826, 6
  store i64 %3827, i64* %PC.i510
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3829 = load i8, i8* %3828, align 1
  %3830 = icmp eq i8 %3829, 0
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %BRANCH_TAKEN, align 1
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3833 = select i1 %3830, i64 %3823, i64 %3825
  store i64 %3833, i64* %3832, align 8
  store %struct.Memory* %loadMem_47cc2f, %struct.Memory** %MEMORY
  %loadBr_47cc2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc2f = icmp eq i8 %loadBr_47cc2f, 1
  br i1 %cmpBr_47cc2f, label %block_.L_47cc3a, label %block_47cc35

block_47cc35:                                     ; preds = %block_.L_47cc1d
  %loadMem_47cc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 33
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3836 to i64*
  %3837 = load i64, i64* %PC.i509
  %3838 = add i64 %3837, 34
  %3839 = load i64, i64* %PC.i509
  %3840 = add i64 %3839, 5
  store i64 %3840, i64* %PC.i509
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3838, i64* %3841, align 8
  store %struct.Memory* %loadMem_47cc35, %struct.Memory** %MEMORY
  br label %block_.L_47cc57

block_.L_47cc3a:                                  ; preds = %block_.L_47cc1d
  %loadMem_47cc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 11
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %RDI.i508 = bitcast %union.anon* %3847 to i64*
  %3848 = load i64, i64* %PC.i507
  %3849 = add i64 %3848, 10
  store i64 %3849, i64* %PC.i507
  store i64 ptrtoint (%G__0x57c2fd_type* @G__0x57c2fd to i64), i64* %RDI.i508, align 8
  store %struct.Memory* %loadMem_47cc3a, %struct.Memory** %MEMORY
  %loadMem_47cc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 33
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3852 to i64*
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 9
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %RSI.i505 = bitcast %union.anon* %3855 to i64*
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 15
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %3858 to i64*
  %3859 = load i64, i64* %RBP.i506
  %3860 = sub i64 %3859, 992
  %3861 = load i64, i64* %PC.i504
  %3862 = add i64 %3861, 6
  store i64 %3862, i64* %PC.i504
  %3863 = inttoptr i64 %3860 to i32*
  %3864 = load i32, i32* %3863
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %RSI.i505, align 8
  store %struct.Memory* %loadMem_47cc44, %struct.Memory** %MEMORY
  %loadMem_47cc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 1
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %3872 = bitcast %union.anon* %3871 to %struct.anon.2*
  %AL.i503 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3872, i32 0, i32 0
  %3873 = load i64, i64* %PC.i502
  %3874 = add i64 %3873, 2
  store i64 %3874, i64* %PC.i502
  store i8 0, i8* %AL.i503, align 1
  store %struct.Memory* %loadMem_47cc4a, %struct.Memory** %MEMORY
  %loadMem1_47cc4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3877 to i64*
  %3878 = load i64, i64* %PC.i501
  %3879 = add i64 %3878, -175772
  %3880 = load i64, i64* %PC.i501
  %3881 = add i64 %3880, 5
  %3882 = load i64, i64* %PC.i501
  %3883 = add i64 %3882, 5
  store i64 %3883, i64* %PC.i501
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3885 = load i64, i64* %3884, align 8
  %3886 = add i64 %3885, -8
  %3887 = inttoptr i64 %3886 to i64*
  store i64 %3881, i64* %3887
  store i64 %3886, i64* %3884, align 8
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3879, i64* %3888, align 8
  store %struct.Memory* %loadMem1_47cc4c, %struct.Memory** %MEMORY
  %loadMem2_47cc4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cc4c = load i64, i64* %3
  %call2_47cc4c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_47cc4c, %struct.Memory* %loadMem2_47cc4c)
  store %struct.Memory* %call2_47cc4c, %struct.Memory** %MEMORY
  %loadMem_47cc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 1
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %EAX.i499 = bitcast %union.anon* %3894 to i32*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 15
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RBP.i500
  %3899 = sub i64 %3898, 1048
  %3900 = load i32, i32* %EAX.i499
  %3901 = zext i32 %3900 to i64
  %3902 = load i64, i64* %PC.i498
  %3903 = add i64 %3902, 6
  store i64 %3903, i64* %PC.i498
  %3904 = inttoptr i64 %3899 to i32*
  store i32 %3900, i32* %3904
  store %struct.Memory* %loadMem_47cc51, %struct.Memory** %MEMORY
  br label %block_.L_47cc57

block_.L_47cc57:                                  ; preds = %block_.L_47cc3a, %block_47cc35
  %loadMem_47cc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 33
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 7
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %3910 to i64*
  %3911 = load i64, i64* %PC.i496
  %3912 = add i64 %3911, 10
  store i64 %3912, i64* %PC.i496
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX.i497, align 8
  store %struct.Memory* %loadMem_47cc57, %struct.Memory** %MEMORY
  %loadMem_47cc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 33
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 1
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %EAX.i494 = bitcast %union.anon* %3918 to i32*
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 1
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %RAX.i495 = bitcast %union.anon* %3921 to i64*
  %3922 = load i64, i64* %RAX.i495
  %3923 = load i32, i32* %EAX.i494
  %3924 = zext i32 %3923 to i64
  %3925 = load i64, i64* %PC.i493
  %3926 = add i64 %3925, 2
  store i64 %3926, i64* %PC.i493
  %3927 = xor i64 %3924, %3922
  %3928 = trunc i64 %3927 to i32
  %3929 = and i64 %3927, 4294967295
  store i64 %3929, i64* %RAX.i495, align 8
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3930, align 1
  %3931 = and i32 %3928, 255
  %3932 = call i32 @llvm.ctpop.i32(i32 %3931)
  %3933 = trunc i32 %3932 to i8
  %3934 = and i8 %3933, 1
  %3935 = xor i8 %3934, 1
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3935, i8* %3936, align 1
  %3937 = icmp eq i32 %3928, 0
  %3938 = zext i1 %3937 to i8
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3938, i8* %3939, align 1
  %3940 = lshr i32 %3928, 31
  %3941 = trunc i32 %3940 to i8
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3941, i8* %3942, align 1
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3943, align 1
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3944, align 1
  store %struct.Memory* %loadMem_47cc61, %struct.Memory** %MEMORY
  %loadMem_47cc63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 33
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 11
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RDI.i491 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 15
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3953 to i64*
  %3954 = load i64, i64* %RBP.i492
  %3955 = sub i64 %3954, 992
  %3956 = load i64, i64* %PC.i490
  %3957 = add i64 %3956, 6
  store i64 %3957, i64* %PC.i490
  %3958 = inttoptr i64 %3955 to i32*
  %3959 = load i32, i32* %3958
  %3960 = zext i32 %3959 to i64
  store i64 %3960, i64* %RDI.i491, align 8
  store %struct.Memory* %loadMem_47cc63, %struct.Memory** %MEMORY
  %loadMem_47cc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 9
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RSI.i488 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 15
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3969 to i64*
  %3970 = load i64, i64* %RBP.i489
  %3971 = sub i64 %3970, 4
  %3972 = load i64, i64* %PC.i487
  %3973 = add i64 %3972, 3
  store i64 %3973, i64* %PC.i487
  %3974 = inttoptr i64 %3971 to i32*
  %3975 = load i32, i32* %3974
  %3976 = zext i32 %3975 to i64
  store i64 %3976, i64* %RSI.i488, align 8
  store %struct.Memory* %loadMem_47cc69, %struct.Memory** %MEMORY
  %loadMem_47cc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 33
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 1
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %EAX.i485 = bitcast %union.anon* %3982 to i32*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 5
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %3985 to i64*
  %3986 = load i32, i32* %EAX.i485
  %3987 = zext i32 %3986 to i64
  %3988 = load i64, i64* %PC.i484
  %3989 = add i64 %3988, 2
  store i64 %3989, i64* %PC.i484
  %3990 = and i64 %3987, 4294967295
  store i64 %3990, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_47cc6c, %struct.Memory** %MEMORY
  %loadMem_47cc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 1
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %3996 to i32*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 17
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %R8D.i483 = bitcast %union.anon* %3999 to i32*
  %4000 = bitcast i32* %R8D.i483 to i64*
  %4001 = load i32, i32* %EAX.i482
  %4002 = zext i32 %4001 to i64
  %4003 = load i64, i64* %PC.i481
  %4004 = add i64 %4003, 3
  store i64 %4004, i64* %PC.i481
  %4005 = and i64 %4002, 4294967295
  store i64 %4005, i64* %4000, align 8
  store %struct.Memory* %loadMem_47cc6e, %struct.Memory** %MEMORY
  %loadMem_47cc71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 1
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %EAX.i479 = bitcast %union.anon* %4011 to i32*
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 19
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %R9D.i480 = bitcast %union.anon* %4014 to i32*
  %4015 = bitcast i32* %R9D.i480 to i64*
  %4016 = load i32, i32* %EAX.i479
  %4017 = zext i32 %4016 to i64
  %4018 = load i64, i64* %PC.i478
  %4019 = add i64 %4018, 3
  store i64 %4019, i64* %PC.i478
  %4020 = and i64 %4017, 4294967295
  store i64 %4020, i64* %4015, align 8
  store %struct.Memory* %loadMem_47cc71, %struct.Memory** %MEMORY
  %loadMem1_47cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 33
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4023 to i64*
  %4024 = load i64, i64* %PC.i477
  %4025 = add i64 %4024, -474692
  %4026 = load i64, i64* %PC.i477
  %4027 = add i64 %4026, 5
  %4028 = load i64, i64* %PC.i477
  %4029 = add i64 %4028, 5
  store i64 %4029, i64* %PC.i477
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4031 = load i64, i64* %4030, align 8
  %4032 = add i64 %4031, -8
  %4033 = inttoptr i64 %4032 to i64*
  store i64 %4027, i64* %4033
  store i64 %4032, i64* %4030, align 8
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4025, i64* %4034, align 8
  store %struct.Memory* %loadMem1_47cc74, %struct.Memory** %MEMORY
  %loadMem2_47cc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cc74 = load i64, i64* %3
  %call2_47cc74 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47cc74, %struct.Memory* %loadMem2_47cc74)
  store %struct.Memory* %call2_47cc74, %struct.Memory** %MEMORY
  %loadMem_47cc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 33
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4037 to i64*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 1
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %EAX.i476 = bitcast %union.anon* %4040 to i32*
  %4041 = load i32, i32* %EAX.i476
  %4042 = zext i32 %4041 to i64
  %4043 = load i64, i64* %PC.i475
  %4044 = add i64 %4043, 3
  store i64 %4044, i64* %PC.i475
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4045, align 1
  %4046 = and i32 %4041, 255
  %4047 = call i32 @llvm.ctpop.i32(i32 %4046)
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  %4050 = xor i8 %4049, 1
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4050, i8* %4051, align 1
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4052, align 1
  %4053 = icmp eq i32 %4041, 0
  %4054 = zext i1 %4053 to i8
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4054, i8* %4055, align 1
  %4056 = lshr i32 %4041, 31
  %4057 = trunc i32 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4057, i8* %4058, align 1
  %4059 = lshr i32 %4041, 31
  %4060 = xor i32 %4056, %4059
  %4061 = add i32 %4060, %4059
  %4062 = icmp eq i32 %4061, 2
  %4063 = zext i1 %4062 to i8
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4063, i8* %4064, align 1
  store %struct.Memory* %loadMem_47cc79, %struct.Memory** %MEMORY
  %loadMem_47cc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 33
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4067 to i64*
  %4068 = load i64, i64* %PC.i474
  %4069 = add i64 %4068, 1159
  %4070 = load i64, i64* %PC.i474
  %4071 = add i64 %4070, 6
  %4072 = load i64, i64* %PC.i474
  %4073 = add i64 %4072, 6
  store i64 %4073, i64* %PC.i474
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4075 = load i8, i8* %4074, align 1
  store i8 %4075, i8* %BRANCH_TAKEN, align 1
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4077 = icmp ne i8 %4075, 0
  %4078 = select i1 %4077, i64 %4069, i64 %4071
  store i64 %4078, i64* %4076, align 8
  store %struct.Memory* %loadMem_47cc7c, %struct.Memory** %MEMORY
  %loadBr_47cc7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc7c = icmp eq i8 %loadBr_47cc7c, 1
  br i1 %cmpBr_47cc7c, label %block_.L_47d103, label %block_47cc82

block_47cc82:                                     ; preds = %block_.L_47cc57
  %loadMem_47cc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 15
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %4084 to i64*
  %4085 = load i64, i64* %RBP.i473
  %4086 = sub i64 %4085, 996
  %4087 = load i64, i64* %PC.i472
  %4088 = add i64 %4087, 10
  store i64 %4088, i64* %PC.i472
  %4089 = inttoptr i64 %4086 to i32*
  store i32 0, i32* %4089
  store %struct.Memory* %loadMem_47cc82, %struct.Memory** %MEMORY
  br label %block_.L_47cc8c

block_.L_47cc8c:                                  ; preds = %block_.L_47d0ea, %block_47cc82
  %loadMem_47cc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 33
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 1
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %4095 to i64*
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 15
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %4098 to i64*
  %4099 = load i64, i64* %RBP.i471
  %4100 = sub i64 %4099, 996
  %4101 = load i64, i64* %PC.i469
  %4102 = add i64 %4101, 6
  store i64 %4102, i64* %PC.i469
  %4103 = inttoptr i64 %4100 to i32*
  %4104 = load i32, i32* %4103
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_47cc8c, %struct.Memory** %MEMORY
  %loadMem_47cc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 1
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %4111 to i32*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 15
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %4114 to i64*
  %4115 = load i32, i32* %EAX.i467
  %4116 = zext i32 %4115 to i64
  %4117 = load i64, i64* %RBP.i468
  %4118 = sub i64 %4117, 980
  %4119 = load i64, i64* %PC.i466
  %4120 = add i64 %4119, 6
  store i64 %4120, i64* %PC.i466
  %4121 = inttoptr i64 %4118 to i32*
  %4122 = load i32, i32* %4121
  %4123 = sub i32 %4115, %4122
  %4124 = icmp ult i32 %4115, %4122
  %4125 = zext i1 %4124 to i8
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4125, i8* %4126, align 1
  %4127 = and i32 %4123, 255
  %4128 = call i32 @llvm.ctpop.i32(i32 %4127)
  %4129 = trunc i32 %4128 to i8
  %4130 = and i8 %4129, 1
  %4131 = xor i8 %4130, 1
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4131, i8* %4132, align 1
  %4133 = xor i32 %4122, %4115
  %4134 = xor i32 %4133, %4123
  %4135 = lshr i32 %4134, 4
  %4136 = trunc i32 %4135 to i8
  %4137 = and i8 %4136, 1
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4137, i8* %4138, align 1
  %4139 = icmp eq i32 %4123, 0
  %4140 = zext i1 %4139 to i8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4140, i8* %4141, align 1
  %4142 = lshr i32 %4123, 31
  %4143 = trunc i32 %4142 to i8
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4143, i8* %4144, align 1
  %4145 = lshr i32 %4115, 31
  %4146 = lshr i32 %4122, 31
  %4147 = xor i32 %4146, %4145
  %4148 = xor i32 %4142, %4145
  %4149 = add i32 %4148, %4147
  %4150 = icmp eq i32 %4149, 2
  %4151 = zext i1 %4150 to i8
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4151, i8* %4152, align 1
  store %struct.Memory* %loadMem_47cc92, %struct.Memory** %MEMORY
  %loadMem_47cc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 33
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4155 to i64*
  %4156 = load i64, i64* %PC.i465
  %4157 = add i64 %4156, 1126
  %4158 = load i64, i64* %PC.i465
  %4159 = add i64 %4158, 6
  %4160 = load i64, i64* %PC.i465
  %4161 = add i64 %4160, 6
  store i64 %4161, i64* %PC.i465
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4163 = load i8, i8* %4162, align 1
  %4164 = icmp ne i8 %4163, 0
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4166 = load i8, i8* %4165, align 1
  %4167 = icmp ne i8 %4166, 0
  %4168 = xor i1 %4164, %4167
  %4169 = xor i1 %4168, true
  %4170 = zext i1 %4169 to i8
  store i8 %4170, i8* %BRANCH_TAKEN, align 1
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4172 = select i1 %4168, i64 %4159, i64 %4157
  store i64 %4172, i64* %4171, align 8
  store %struct.Memory* %loadMem_47cc98, %struct.Memory** %MEMORY
  %loadBr_47cc98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cc98 = icmp eq i8 %loadBr_47cc98, 1
  br i1 %cmpBr_47cc98, label %block_.L_47d0fe, label %block_47cc9e

block_47cc9e:                                     ; preds = %block_.L_47cc8c
  %loadMem_47cc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 33
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 1
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 15
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %4181 to i64*
  %4182 = load i64, i64* %RBP.i464
  %4183 = sub i64 %4182, 996
  %4184 = load i64, i64* %PC.i462
  %4185 = add i64 %4184, 7
  store i64 %4185, i64* %PC.i462
  %4186 = inttoptr i64 %4183 to i32*
  %4187 = load i32, i32* %4186
  %4188 = sext i32 %4187 to i64
  store i64 %4188, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_47cc9e, %struct.Memory** %MEMORY
  %loadMem_47cca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 33
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 1
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %4194 to i64*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 5
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 15
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4200 to i64*
  %4201 = load i64, i64* %RBP.i461
  %4202 = load i64, i64* %RAX.i459
  %4203 = mul i64 %4202, 4
  %4204 = add i64 %4201, -976
  %4205 = add i64 %4204, %4203
  %4206 = load i64, i64* %PC.i458
  %4207 = add i64 %4206, 7
  store i64 %4207, i64* %PC.i458
  %4208 = inttoptr i64 %4205 to i32*
  %4209 = load i32, i32* %4208
  %4210 = zext i32 %4209 to i64
  store i64 %4210, i64* %RCX.i460, align 8
  store %struct.Memory* %loadMem_47cca5, %struct.Memory** %MEMORY
  %loadMem_47ccac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 5
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %ECX.i456 = bitcast %union.anon* %4216 to i32*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 15
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %RBP.i457
  %4221 = sub i64 %4220, 1016
  %4222 = load i32, i32* %ECX.i456
  %4223 = zext i32 %4222 to i64
  %4224 = load i64, i64* %PC.i455
  %4225 = add i64 %4224, 6
  store i64 %4225, i64* %PC.i455
  %4226 = inttoptr i64 %4221 to i32*
  store i32 %4222, i32* %4226
  store %struct.Memory* %loadMem_47ccac, %struct.Memory** %MEMORY
  %loadMem_47ccb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 1
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 15
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RBP.i454
  %4237 = sub i64 %4236, 1016
  %4238 = load i64, i64* %PC.i452
  %4239 = add i64 %4238, 7
  store i64 %4239, i64* %PC.i452
  %4240 = inttoptr i64 %4237 to i32*
  %4241 = load i32, i32* %4240
  %4242 = sext i32 %4241 to i64
  store i64 %4242, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_47ccb2, %struct.Memory** %MEMORY
  %loadMem_47ccb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 1
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4248 to i64*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 5
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %4251 to i64*
  %4252 = load i64, i64* %RAX.i450
  %4253 = add i64 %4252, 12099168
  %4254 = load i64, i64* %PC.i449
  %4255 = add i64 %4254, 8
  store i64 %4255, i64* %PC.i449
  %4256 = inttoptr i64 %4253 to i8*
  %4257 = load i8, i8* %4256
  %4258 = zext i8 %4257 to i64
  store i64 %4258, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_47ccb9, %struct.Memory** %MEMORY
  %loadMem_47ccc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 33
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4261 to i64*
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 5
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %ECX.i447 = bitcast %union.anon* %4264 to i32*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 15
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %4267 to i64*
  %4268 = load i32, i32* %ECX.i447
  %4269 = zext i32 %4268 to i64
  %4270 = load i64, i64* %RBP.i448
  %4271 = sub i64 %4270, 4
  %4272 = load i64, i64* %PC.i446
  %4273 = add i64 %4272, 3
  store i64 %4273, i64* %PC.i446
  %4274 = inttoptr i64 %4271 to i32*
  %4275 = load i32, i32* %4274
  %4276 = sub i32 %4268, %4275
  %4277 = icmp ult i32 %4268, %4275
  %4278 = zext i1 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4278, i8* %4279, align 1
  %4280 = and i32 %4276, 255
  %4281 = call i32 @llvm.ctpop.i32(i32 %4280)
  %4282 = trunc i32 %4281 to i8
  %4283 = and i8 %4282, 1
  %4284 = xor i8 %4283, 1
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4284, i8* %4285, align 1
  %4286 = xor i32 %4275, %4268
  %4287 = xor i32 %4286, %4276
  %4288 = lshr i32 %4287, 4
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4290, i8* %4291, align 1
  %4292 = icmp eq i32 %4276, 0
  %4293 = zext i1 %4292 to i8
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4293, i8* %4294, align 1
  %4295 = lshr i32 %4276, 31
  %4296 = trunc i32 %4295 to i8
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4296, i8* %4297, align 1
  %4298 = lshr i32 %4268, 31
  %4299 = lshr i32 %4275, 31
  %4300 = xor i32 %4299, %4298
  %4301 = xor i32 %4295, %4298
  %4302 = add i32 %4301, %4300
  %4303 = icmp eq i32 %4302, 2
  %4304 = zext i1 %4303 to i8
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4304, i8* %4305, align 1
  store %struct.Memory* %loadMem_47ccc1, %struct.Memory** %MEMORY
  %loadMem_47ccc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 33
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %PC.i445
  %4310 = add i64 %4309, 534
  %4311 = load i64, i64* %PC.i445
  %4312 = add i64 %4311, 6
  %4313 = load i64, i64* %PC.i445
  %4314 = add i64 %4313, 6
  store i64 %4314, i64* %PC.i445
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4316 = load i8, i8* %4315, align 1
  %4317 = icmp eq i8 %4316, 0
  %4318 = zext i1 %4317 to i8
  store i8 %4318, i8* %BRANCH_TAKEN, align 1
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4320 = select i1 %4317, i64 %4310, i64 %4312
  store i64 %4320, i64* %4319, align 8
  store %struct.Memory* %loadMem_47ccc4, %struct.Memory** %MEMORY
  %loadBr_47ccc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ccc4 = icmp eq i8 %loadBr_47ccc4, 1
  br i1 %cmpBr_47ccc4, label %block_.L_47ceda, label %block_47ccca

block_47ccca:                                     ; preds = %block_47cc9e
  %loadMem_47ccca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 33
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 11
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %RDI.i443 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 15
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %4329 to i64*
  %4330 = load i64, i64* %RBP.i444
  %4331 = sub i64 %4330, 992
  %4332 = load i64, i64* %PC.i442
  %4333 = add i64 %4332, 6
  store i64 %4333, i64* %PC.i442
  %4334 = inttoptr i64 %4331 to i32*
  %4335 = load i32, i32* %4334
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RDI.i443, align 8
  store %struct.Memory* %loadMem_47ccca, %struct.Memory** %MEMORY
  %loadMem_47ccd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 33
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 1
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %4342 to i64*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 15
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %4345 to i64*
  %4346 = load i64, i64* %RBP.i441
  %4347 = sub i64 %4346, 996
  %4348 = load i64, i64* %PC.i439
  %4349 = add i64 %4348, 7
  store i64 %4349, i64* %PC.i439
  %4350 = inttoptr i64 %4347 to i32*
  %4351 = load i32, i32* %4350
  %4352 = sext i32 %4351 to i64
  store i64 %4352, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_47ccd0, %struct.Memory** %MEMORY
  %loadMem_47ccd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4354 = getelementptr inbounds %struct.GPR, %struct.GPR* %4353, i32 0, i32 33
  %4355 = getelementptr inbounds %struct.Reg, %struct.Reg* %4354, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4355 to i64*
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 1
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 9
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RSI.i437 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 15
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RBP.i438
  %4366 = load i64, i64* %RAX.i436
  %4367 = mul i64 %4366, 4
  %4368 = add i64 %4365, -976
  %4369 = add i64 %4368, %4367
  %4370 = load i64, i64* %PC.i435
  %4371 = add i64 %4370, 7
  store i64 %4371, i64* %PC.i435
  %4372 = inttoptr i64 %4369 to i32*
  %4373 = load i32, i32* %4372
  %4374 = zext i32 %4373 to i64
  store i64 %4374, i64* %RSI.i437, align 8
  store %struct.Memory* %loadMem_47ccd7, %struct.Memory** %MEMORY
  %loadMem1_47ccde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %PC.i434
  %4379 = add i64 %4378, -306798
  %4380 = load i64, i64* %PC.i434
  %4381 = add i64 %4380, 5
  %4382 = load i64, i64* %PC.i434
  %4383 = add i64 %4382, 5
  store i64 %4383, i64* %PC.i434
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4385 = load i64, i64* %4384, align 8
  %4386 = add i64 %4385, -8
  %4387 = inttoptr i64 %4386 to i64*
  store i64 %4381, i64* %4387
  store i64 %4386, i64* %4384, align 8
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4379, i64* %4388, align 8
  store %struct.Memory* %loadMem1_47ccde, %struct.Memory** %MEMORY
  %loadMem2_47ccde = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ccde = load i64, i64* %3
  %call2_47ccde = call %struct.Memory* @sub_431e70.defense_move_reason_known(%struct.State* %0, i64 %loadPC_47ccde, %struct.Memory* %loadMem2_47ccde)
  store %struct.Memory* %call2_47ccde, %struct.Memory** %MEMORY
  %loadMem_47cce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 1
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %EAX.i433 = bitcast %union.anon* %4394 to i32*
  %4395 = load i32, i32* %EAX.i433
  %4396 = zext i32 %4395 to i64
  %4397 = load i64, i64* %PC.i432
  %4398 = add i64 %4397, 3
  store i64 %4398, i64* %PC.i432
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4399, align 1
  %4400 = and i32 %4395, 255
  %4401 = call i32 @llvm.ctpop.i32(i32 %4400)
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = xor i8 %4403, 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4404, i8* %4405, align 1
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4406, align 1
  %4407 = icmp eq i32 %4395, 0
  %4408 = zext i1 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4408, i8* %4409, align 1
  %4410 = lshr i32 %4395, 31
  %4411 = trunc i32 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4411, i8* %4412, align 1
  %4413 = lshr i32 %4395, 31
  %4414 = xor i32 %4410, %4413
  %4415 = add i32 %4414, %4413
  %4416 = icmp eq i32 %4415, 2
  %4417 = zext i1 %4416 to i8
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4417, i8* %4418, align 1
  store %struct.Memory* %loadMem_47cce3, %struct.Memory** %MEMORY
  %loadMem_47cce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 33
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4421 to i64*
  %4422 = load i64, i64* %PC.i431
  %4423 = add i64 %4422, 500
  %4424 = load i64, i64* %PC.i431
  %4425 = add i64 %4424, 6
  %4426 = load i64, i64* %PC.i431
  %4427 = add i64 %4426, 6
  store i64 %4427, i64* %PC.i431
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4429 = load i8, i8* %4428, align 1
  %4430 = icmp eq i8 %4429, 0
  %4431 = zext i1 %4430 to i8
  store i8 %4431, i8* %BRANCH_TAKEN, align 1
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4433 = select i1 %4430, i64 %4423, i64 %4425
  store i64 %4433, i64* %4432, align 8
  store %struct.Memory* %loadMem_47cce6, %struct.Memory** %MEMORY
  %loadBr_47cce6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cce6 = icmp eq i8 %loadBr_47cce6, 1
  br i1 %cmpBr_47cce6, label %block_.L_47ceda, label %block_47ccec

block_47ccec:                                     ; preds = %block_47ccca
  %loadMem_47ccec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4436 to i64*
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 1
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %EAX.i429 = bitcast %union.anon* %4439 to i32*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 1
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %4442 to i64*
  %4443 = load i64, i64* %RAX.i430
  %4444 = load i32, i32* %EAX.i429
  %4445 = zext i32 %4444 to i64
  %4446 = load i64, i64* %PC.i428
  %4447 = add i64 %4446, 2
  store i64 %4447, i64* %PC.i428
  %4448 = xor i64 %4445, %4443
  %4449 = trunc i64 %4448 to i32
  %4450 = and i64 %4448, 4294967295
  store i64 %4450, i64* %RAX.i430, align 8
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4451, align 1
  %4452 = and i32 %4449, 255
  %4453 = call i32 @llvm.ctpop.i32(i32 %4452)
  %4454 = trunc i32 %4453 to i8
  %4455 = and i8 %4454, 1
  %4456 = xor i8 %4455, 1
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4456, i8* %4457, align 1
  %4458 = icmp eq i32 %4449, 0
  %4459 = zext i1 %4458 to i8
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4459, i8* %4460, align 1
  %4461 = lshr i32 %4449, 31
  %4462 = trunc i32 %4461 to i8
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4462, i8* %4463, align 1
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4464, align 1
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4465, align 1
  store %struct.Memory* %loadMem_47ccec, %struct.Memory** %MEMORY
  %loadMem_47ccee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 1
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %4471 to i32*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 9
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RSI.i427 = bitcast %union.anon* %4474 to i64*
  %4475 = load i32, i32* %EAX.i426
  %4476 = zext i32 %4475 to i64
  %4477 = load i64, i64* %PC.i425
  %4478 = add i64 %4477, 2
  store i64 %4478, i64* %PC.i425
  %4479 = and i64 %4476, 4294967295
  store i64 %4479, i64* %RSI.i427, align 8
  store %struct.Memory* %loadMem_47ccee, %struct.Memory** %MEMORY
  %loadMem_47ccf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 33
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4482 to i64*
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 11
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %RDI.i423 = bitcast %union.anon* %4485 to i64*
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 15
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %4488 to i64*
  %4489 = load i64, i64* %RBP.i424
  %4490 = sub i64 %4489, 1016
  %4491 = load i64, i64* %PC.i422
  %4492 = add i64 %4491, 6
  store i64 %4492, i64* %PC.i422
  %4493 = inttoptr i64 %4490 to i32*
  %4494 = load i32, i32* %4493
  %4495 = zext i32 %4494 to i64
  store i64 %4495, i64* %RDI.i423, align 8
  store %struct.Memory* %loadMem_47ccf0, %struct.Memory** %MEMORY
  %loadMem1_47ccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 33
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %PC.i421
  %4500 = add i64 %4499, -127414
  %4501 = load i64, i64* %PC.i421
  %4502 = add i64 %4501, 5
  %4503 = load i64, i64* %PC.i421
  %4504 = add i64 %4503, 5
  store i64 %4504, i64* %PC.i421
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4506 = load i64, i64* %4505, align 8
  %4507 = add i64 %4506, -8
  %4508 = inttoptr i64 %4507 to i64*
  store i64 %4502, i64* %4508
  store i64 %4507, i64* %4505, align 8
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4500, i64* %4509, align 8
  store %struct.Memory* %loadMem1_47ccf6, %struct.Memory** %MEMORY
  %loadMem2_47ccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ccf6 = load i64, i64* %3
  %call2_47ccf6 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_47ccf6, %struct.Memory* %loadMem2_47ccf6)
  store %struct.Memory* %call2_47ccf6, %struct.Memory** %MEMORY
  %loadMem_47ccfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 33
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4512 to i64*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 9
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RSI.i420 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %PC.i419
  %4517 = add i64 %4516, 10
  store i64 %4517, i64* %PC.i419
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i420, align 8
  store %struct.Memory* %loadMem_47ccfb, %struct.Memory** %MEMORY
  %loadMem_47cd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 33
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4520 to i64*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 1
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %4523 to i32*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 15
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %4526 to i64*
  %4527 = load i64, i64* %RBP.i418
  %4528 = sub i64 %4527, 1020
  %4529 = load i32, i32* %EAX.i417
  %4530 = zext i32 %4529 to i64
  %4531 = load i64, i64* %PC.i416
  %4532 = add i64 %4531, 6
  store i64 %4532, i64* %PC.i416
  %4533 = inttoptr i64 %4528 to i32*
  store i32 %4529, i32* %4533
  store %struct.Memory* %loadMem_47cd05, %struct.Memory** %MEMORY
  %loadMem_47cd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 33
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4536 to i64*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 1
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 15
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %4542 to i64*
  %4543 = load i64, i64* %RBP.i415
  %4544 = sub i64 %4543, 1020
  %4545 = load i64, i64* %PC.i413
  %4546 = add i64 %4545, 6
  store i64 %4546, i64* %PC.i413
  %4547 = inttoptr i64 %4544 to i32*
  %4548 = load i32, i32* %4547
  %4549 = zext i32 %4548 to i64
  store i64 %4549, i64* %RAX.i414, align 8
  store %struct.Memory* %loadMem_47cd0b, %struct.Memory** %MEMORY
  %loadMem_47cd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 33
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4552 to i64*
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 5
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %4555 to i64*
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 15
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %4558 to i64*
  %4559 = load i64, i64* %RBP.i412
  %4560 = sub i64 %4559, 1016
  %4561 = load i64, i64* %PC.i410
  %4562 = add i64 %4561, 7
  store i64 %4562, i64* %PC.i410
  %4563 = inttoptr i64 %4560 to i32*
  %4564 = load i32, i32* %4563
  %4565 = sext i32 %4564 to i64
  store i64 %4565, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_47cd11, %struct.Memory** %MEMORY
  %loadMem_47cd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 5
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RCX.i409 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %RCX.i409
  %4573 = load i64, i64* %PC.i408
  %4574 = add i64 %4573, 7
  store i64 %4574, i64* %PC.i408
  %4575 = sext i64 %4572 to i128
  %4576 = and i128 %4575, -18446744073709551616
  %4577 = zext i64 %4572 to i128
  %4578 = or i128 %4576, %4577
  %4579 = mul i128 380, %4578
  %4580 = trunc i128 %4579 to i64
  store i64 %4580, i64* %RCX.i409, align 8
  %4581 = sext i64 %4580 to i128
  %4582 = icmp ne i128 %4581, %4579
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4583, i8* %4584, align 1
  %4585 = trunc i128 %4579 to i32
  %4586 = and i32 %4585, 255
  %4587 = call i32 @llvm.ctpop.i32(i32 %4586)
  %4588 = trunc i32 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = xor i8 %4589, 1
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4590, i8* %4591, align 1
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4592, align 1
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4593, align 1
  %4594 = lshr i64 %4580, 63
  %4595 = trunc i64 %4594 to i8
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4595, i8* %4596, align 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4583, i8* %4597, align 1
  store %struct.Memory* %loadMem_47cd18, %struct.Memory** %MEMORY
  %loadMem_47cd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 33
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4600 to i64*
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 5
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %4603 to i64*
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 9
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %RSI.i407 = bitcast %union.anon* %4606 to i64*
  %4607 = load i64, i64* %RSI.i407
  %4608 = load i64, i64* %RCX.i406
  %4609 = load i64, i64* %PC.i405
  %4610 = add i64 %4609, 3
  store i64 %4610, i64* %PC.i405
  %4611 = add i64 %4608, %4607
  store i64 %4611, i64* %RSI.i407, align 8
  %4612 = icmp ult i64 %4611, %4607
  %4613 = icmp ult i64 %4611, %4608
  %4614 = or i1 %4612, %4613
  %4615 = zext i1 %4614 to i8
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4615, i8* %4616, align 1
  %4617 = trunc i64 %4611 to i32
  %4618 = and i32 %4617, 255
  %4619 = call i32 @llvm.ctpop.i32(i32 %4618)
  %4620 = trunc i32 %4619 to i8
  %4621 = and i8 %4620, 1
  %4622 = xor i8 %4621, 1
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4622, i8* %4623, align 1
  %4624 = xor i64 %4608, %4607
  %4625 = xor i64 %4624, %4611
  %4626 = lshr i64 %4625, 4
  %4627 = trunc i64 %4626 to i8
  %4628 = and i8 %4627, 1
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4628, i8* %4629, align 1
  %4630 = icmp eq i64 %4611, 0
  %4631 = zext i1 %4630 to i8
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4631, i8* %4632, align 1
  %4633 = lshr i64 %4611, 63
  %4634 = trunc i64 %4633 to i8
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4634, i8* %4635, align 1
  %4636 = lshr i64 %4607, 63
  %4637 = lshr i64 %4608, 63
  %4638 = xor i64 %4633, %4636
  %4639 = xor i64 %4633, %4637
  %4640 = add i64 %4638, %4639
  %4641 = icmp eq i64 %4640, 2
  %4642 = zext i1 %4641 to i8
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4642, i8* %4643, align 1
  store %struct.Memory* %loadMem_47cd1f, %struct.Memory** %MEMORY
  %loadMem_47cd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 33
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 1
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %EAX.i403 = bitcast %union.anon* %4649 to i32*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 9
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RSI.i404 = bitcast %union.anon* %4652 to i64*
  %4653 = load i32, i32* %EAX.i403
  %4654 = zext i32 %4653 to i64
  %4655 = load i64, i64* %RSI.i404
  %4656 = add i64 %4655, 100
  %4657 = load i64, i64* %PC.i402
  %4658 = add i64 %4657, 3
  store i64 %4658, i64* %PC.i402
  %4659 = inttoptr i64 %4656 to i32*
  %4660 = load i32, i32* %4659
  %4661 = sub i32 %4653, %4660
  %4662 = icmp ult i32 %4653, %4660
  %4663 = zext i1 %4662 to i8
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4663, i8* %4664, align 1
  %4665 = and i32 %4661, 255
  %4666 = call i32 @llvm.ctpop.i32(i32 %4665)
  %4667 = trunc i32 %4666 to i8
  %4668 = and i8 %4667, 1
  %4669 = xor i8 %4668, 1
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4669, i8* %4670, align 1
  %4671 = xor i32 %4660, %4653
  %4672 = xor i32 %4671, %4661
  %4673 = lshr i32 %4672, 4
  %4674 = trunc i32 %4673 to i8
  %4675 = and i8 %4674, 1
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4675, i8* %4676, align 1
  %4677 = icmp eq i32 %4661, 0
  %4678 = zext i1 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4678, i8* %4679, align 1
  %4680 = lshr i32 %4661, 31
  %4681 = trunc i32 %4680 to i8
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4681, i8* %4682, align 1
  %4683 = lshr i32 %4653, 31
  %4684 = lshr i32 %4660, 31
  %4685 = xor i32 %4684, %4683
  %4686 = xor i32 %4680, %4683
  %4687 = add i32 %4686, %4685
  %4688 = icmp eq i32 %4687, 2
  %4689 = zext i1 %4688 to i8
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4689, i8* %4690, align 1
  store %struct.Memory* %loadMem_47cd22, %struct.Memory** %MEMORY
  %loadMem_47cd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 33
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4693 to i64*
  %4694 = load i64, i64* %PC.i401
  %4695 = add i64 %4694, 432
  %4696 = load i64, i64* %PC.i401
  %4697 = add i64 %4696, 6
  %4698 = load i64, i64* %PC.i401
  %4699 = add i64 %4698, 6
  store i64 %4699, i64* %PC.i401
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4701 = load i8, i8* %4700, align 1
  %4702 = icmp ne i8 %4701, 0
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4704 = load i8, i8* %4703, align 1
  %4705 = icmp ne i8 %4704, 0
  %4706 = xor i1 %4702, %4705
  %4707 = xor i1 %4706, true
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %BRANCH_TAKEN, align 1
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4710 = select i1 %4706, i64 %4697, i64 %4695
  store i64 %4710, i64* %4709, align 8
  store %struct.Memory* %loadMem_47cd25, %struct.Memory** %MEMORY
  %loadBr_47cd25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd25 = icmp eq i8 %loadBr_47cd25, 1
  br i1 %cmpBr_47cd25, label %block_.L_47ced5, label %block_47cd2b

block_47cd2b:                                     ; preds = %block_47ccec
  %loadMem_47cd2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 33
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 7
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %4716 to i64*
  %4717 = load i64, i64* %PC.i399
  %4718 = add i64 %4717, 10
  store i64 %4718, i64* %PC.i399
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX.i400, align 8
  store %struct.Memory* %loadMem_47cd2b, %struct.Memory** %MEMORY
  %loadMem_47cd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 33
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4721 to i64*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 1
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %EAX.i397 = bitcast %union.anon* %4724 to i32*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 1
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %4727 to i64*
  %4728 = load i64, i64* %RAX.i398
  %4729 = load i32, i32* %EAX.i397
  %4730 = zext i32 %4729 to i64
  %4731 = load i64, i64* %PC.i396
  %4732 = add i64 %4731, 2
  store i64 %4732, i64* %PC.i396
  %4733 = xor i64 %4730, %4728
  %4734 = trunc i64 %4733 to i32
  %4735 = and i64 %4733, 4294967295
  store i64 %4735, i64* %RAX.i398, align 8
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4736, align 1
  %4737 = and i32 %4734, 255
  %4738 = call i32 @llvm.ctpop.i32(i32 %4737)
  %4739 = trunc i32 %4738 to i8
  %4740 = and i8 %4739, 1
  %4741 = xor i8 %4740, 1
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4741, i8* %4742, align 1
  %4743 = icmp eq i32 %4734, 0
  %4744 = zext i1 %4743 to i8
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4744, i8* %4745, align 1
  %4746 = lshr i32 %4734, 31
  %4747 = trunc i32 %4746 to i8
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4747, i8* %4748, align 1
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4749, align 1
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4750, align 1
  store %struct.Memory* %loadMem_47cd35, %struct.Memory** %MEMORY
  %loadMem_47cd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 5
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %PC.i394
  %4758 = add i64 %4757, 10
  store i64 %4758, i64* %PC.i394
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i395, align 8
  store %struct.Memory* %loadMem_47cd37, %struct.Memory** %MEMORY
  %loadMem_47cd41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 33
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4761 to i64*
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 15
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %4764 to i64*
  %4765 = load i64, i64* %RBP.i393
  %4766 = sub i64 %4765, 1024
  %4767 = load i64, i64* %PC.i392
  %4768 = add i64 %4767, 10
  store i64 %4768, i64* %PC.i392
  %4769 = inttoptr i64 %4766 to i32*
  store i32 1, i32* %4769
  store %struct.Memory* %loadMem_47cd41, %struct.Memory** %MEMORY
  %loadMem_47cd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 9
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RSI.i390 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 15
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4778 to i64*
  %4779 = load i64, i64* %RBP.i391
  %4780 = sub i64 %4779, 1016
  %4781 = load i64, i64* %PC.i389
  %4782 = add i64 %4781, 7
  store i64 %4782, i64* %PC.i389
  %4783 = inttoptr i64 %4780 to i32*
  %4784 = load i32, i32* %4783
  %4785 = sext i32 %4784 to i64
  store i64 %4785, i64* %RSI.i390, align 8
  store %struct.Memory* %loadMem_47cd4b, %struct.Memory** %MEMORY
  %loadMem_47cd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 9
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RSI.i388 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RSI.i388
  %4793 = load i64, i64* %PC.i387
  %4794 = add i64 %4793, 7
  store i64 %4794, i64* %PC.i387
  %4795 = sext i64 %4792 to i128
  %4796 = and i128 %4795, -18446744073709551616
  %4797 = zext i64 %4792 to i128
  %4798 = or i128 %4796, %4797
  %4799 = mul i128 380, %4798
  %4800 = trunc i128 %4799 to i64
  store i64 %4800, i64* %RSI.i388, align 8
  %4801 = sext i64 %4800 to i128
  %4802 = icmp ne i128 %4801, %4799
  %4803 = zext i1 %4802 to i8
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4803, i8* %4804, align 1
  %4805 = trunc i128 %4799 to i32
  %4806 = and i32 %4805, 255
  %4807 = call i32 @llvm.ctpop.i32(i32 %4806)
  %4808 = trunc i32 %4807 to i8
  %4809 = and i8 %4808, 1
  %4810 = xor i8 %4809, 1
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4810, i8* %4811, align 1
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4812, align 1
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4813, align 1
  %4814 = lshr i64 %4800, 63
  %4815 = trunc i64 %4814 to i8
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4815, i8* %4816, align 1
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4803, i8* %4817, align 1
  store %struct.Memory* %loadMem_47cd52, %struct.Memory** %MEMORY
  %loadMem_47cd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 33
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 5
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %4823 to i64*
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 9
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %RSI.i386 = bitcast %union.anon* %4826 to i64*
  %4827 = load i64, i64* %RCX.i385
  %4828 = load i64, i64* %RSI.i386
  %4829 = load i64, i64* %PC.i384
  %4830 = add i64 %4829, 3
  store i64 %4830, i64* %PC.i384
  %4831 = add i64 %4828, %4827
  store i64 %4831, i64* %RCX.i385, align 8
  %4832 = icmp ult i64 %4831, %4827
  %4833 = icmp ult i64 %4831, %4828
  %4834 = or i1 %4832, %4833
  %4835 = zext i1 %4834 to i8
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4835, i8* %4836, align 1
  %4837 = trunc i64 %4831 to i32
  %4838 = and i32 %4837, 255
  %4839 = call i32 @llvm.ctpop.i32(i32 %4838)
  %4840 = trunc i32 %4839 to i8
  %4841 = and i8 %4840, 1
  %4842 = xor i8 %4841, 1
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4842, i8* %4843, align 1
  %4844 = xor i64 %4828, %4827
  %4845 = xor i64 %4844, %4831
  %4846 = lshr i64 %4845, 4
  %4847 = trunc i64 %4846 to i8
  %4848 = and i8 %4847, 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4848, i8* %4849, align 1
  %4850 = icmp eq i64 %4831, 0
  %4851 = zext i1 %4850 to i8
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4851, i8* %4852, align 1
  %4853 = lshr i64 %4831, 63
  %4854 = trunc i64 %4853 to i8
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4854, i8* %4855, align 1
  %4856 = lshr i64 %4827, 63
  %4857 = lshr i64 %4828, 63
  %4858 = xor i64 %4853, %4856
  %4859 = xor i64 %4853, %4857
  %4860 = add i64 %4858, %4859
  %4861 = icmp eq i64 %4860, 2
  %4862 = zext i1 %4861 to i8
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4862, i8* %4863, align 1
  store %struct.Memory* %loadMem_47cd59, %struct.Memory** %MEMORY
  %loadMem_47cd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4866 to i64*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 5
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %4869 to i64*
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 11
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %4872 to i64*
  %4873 = load i64, i64* %RCX.i382
  %4874 = add i64 %4873, 60
  %4875 = load i64, i64* %PC.i381
  %4876 = add i64 %4875, 3
  store i64 %4876, i64* %PC.i381
  %4877 = inttoptr i64 %4874 to i32*
  %4878 = load i32, i32* %4877
  %4879 = zext i32 %4878 to i64
  store i64 %4879, i64* %RDI.i383, align 8
  store %struct.Memory* %loadMem_47cd5c, %struct.Memory** %MEMORY
  %loadMem_47cd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 33
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 9
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RSI.i379 = bitcast %union.anon* %4885 to i64*
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4887 = getelementptr inbounds %struct.GPR, %struct.GPR* %4886, i32 0, i32 15
  %4888 = getelementptr inbounds %struct.Reg, %struct.Reg* %4887, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %4888 to i64*
  %4889 = load i64, i64* %RBP.i380
  %4890 = sub i64 %4889, 1000
  %4891 = load i64, i64* %PC.i378
  %4892 = add i64 %4891, 6
  store i64 %4892, i64* %PC.i378
  %4893 = inttoptr i64 %4890 to i32*
  %4894 = load i32, i32* %4893
  %4895 = zext i32 %4894 to i64
  store i64 %4895, i64* %RSI.i379, align 8
  store %struct.Memory* %loadMem_47cd5f, %struct.Memory** %MEMORY
  %loadMem_47cd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 33
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 1
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %4901 to i32*
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 5
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %4904 to i64*
  %4905 = load i32, i32* %EAX.i376
  %4906 = zext i32 %4905 to i64
  %4907 = load i64, i64* %PC.i375
  %4908 = add i64 %4907, 2
  store i64 %4908, i64* %PC.i375
  %4909 = and i64 %4906, 4294967295
  store i64 %4909, i64* %RCX.i377, align 8
  store %struct.Memory* %loadMem_47cd65, %struct.Memory** %MEMORY
  %loadMem_47cd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 33
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4912 to i64*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 1
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %EAX.i373 = bitcast %union.anon* %4915 to i32*
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 17
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %R8D.i374 = bitcast %union.anon* %4918 to i32*
  %4919 = bitcast i32* %R8D.i374 to i64*
  %4920 = load i32, i32* %EAX.i373
  %4921 = zext i32 %4920 to i64
  %4922 = load i64, i64* %PC.i372
  %4923 = add i64 %4922, 3
  store i64 %4923, i64* %PC.i372
  %4924 = and i64 %4921, 4294967295
  store i64 %4924, i64* %4919, align 8
  store %struct.Memory* %loadMem_47cd67, %struct.Memory** %MEMORY
  %loadMem_47cd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 33
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 1
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %EAX.i370 = bitcast %union.anon* %4930 to i32*
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 19
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %R9D.i371 = bitcast %union.anon* %4933 to i32*
  %4934 = bitcast i32* %R9D.i371 to i64*
  %4935 = load i32, i32* %EAX.i370
  %4936 = zext i32 %4935 to i64
  %4937 = load i64, i64* %PC.i369
  %4938 = add i64 %4937, 3
  store i64 %4938, i64* %PC.i369
  %4939 = and i64 %4936, 4294967295
  store i64 %4939, i64* %4934, align 8
  store %struct.Memory* %loadMem_47cd6a, %struct.Memory** %MEMORY
  %loadMem1_47cd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 33
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %PC.i368
  %4944 = add i64 %4943, -474941
  %4945 = load i64, i64* %PC.i368
  %4946 = add i64 %4945, 5
  %4947 = load i64, i64* %PC.i368
  %4948 = add i64 %4947, 5
  store i64 %4948, i64* %PC.i368
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4950 = load i64, i64* %4949, align 8
  %4951 = add i64 %4950, -8
  %4952 = inttoptr i64 %4951 to i64*
  store i64 %4946, i64* %4952
  store i64 %4951, i64* %4949, align 8
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4944, i64* %4953, align 8
  store %struct.Memory* %loadMem1_47cd6d, %struct.Memory** %MEMORY
  %loadMem2_47cd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cd6d = load i64, i64* %3
  %call2_47cd6d = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47cd6d, %struct.Memory* %loadMem2_47cd6d)
  store %struct.Memory* %call2_47cd6d, %struct.Memory** %MEMORY
  %loadMem_47cd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 33
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4956 to i64*
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 1
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %EAX.i367 = bitcast %union.anon* %4959 to i32*
  %4960 = load i32, i32* %EAX.i367
  %4961 = zext i32 %4960 to i64
  %4962 = load i64, i64* %PC.i366
  %4963 = add i64 %4962, 3
  store i64 %4963, i64* %PC.i366
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4964, align 1
  %4965 = and i32 %4960, 255
  %4966 = call i32 @llvm.ctpop.i32(i32 %4965)
  %4967 = trunc i32 %4966 to i8
  %4968 = and i8 %4967, 1
  %4969 = xor i8 %4968, 1
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4969, i8* %4970, align 1
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4971, align 1
  %4972 = icmp eq i32 %4960, 0
  %4973 = zext i1 %4972 to i8
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4973, i8* %4974, align 1
  %4975 = lshr i32 %4960, 31
  %4976 = trunc i32 %4975 to i8
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4976, i8* %4977, align 1
  %4978 = lshr i32 %4960, 31
  %4979 = xor i32 %4975, %4978
  %4980 = add i32 %4979, %4978
  %4981 = icmp eq i32 %4980, 2
  %4982 = zext i1 %4981 to i8
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4982, i8* %4983, align 1
  store %struct.Memory* %loadMem_47cd72, %struct.Memory** %MEMORY
  %loadMem_47cd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 33
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4986 to i64*
  %4987 = load i64, i64* %PC.i365
  %4988 = add i64 %4987, 167
  %4989 = load i64, i64* %PC.i365
  %4990 = add i64 %4989, 6
  %4991 = load i64, i64* %PC.i365
  %4992 = add i64 %4991, 6
  store i64 %4992, i64* %PC.i365
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4994 = load i8, i8* %4993, align 1
  store i8 %4994, i8* %BRANCH_TAKEN, align 1
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4996 = icmp ne i8 %4994, 0
  %4997 = select i1 %4996, i64 %4988, i64 %4990
  store i64 %4997, i64* %4995, align 8
  store %struct.Memory* %loadMem_47cd75, %struct.Memory** %MEMORY
  %loadBr_47cd75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd75 = icmp eq i8 %loadBr_47cd75, 1
  br i1 %cmpBr_47cd75, label %block_.L_47ce1c, label %block_47cd7b

block_47cd7b:                                     ; preds = %block_47cd2b
  %loadMem_47cd7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 33
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5000 to i64*
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 1
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %5003 to i64*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 15
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %5006 to i64*
  %5007 = load i64, i64* %RBP.i364
  %5008 = sub i64 %5007, 1016
  %5009 = load i64, i64* %PC.i362
  %5010 = add i64 %5009, 7
  store i64 %5010, i64* %PC.i362
  %5011 = inttoptr i64 %5008 to i32*
  %5012 = load i32, i32* %5011
  %5013 = sext i32 %5012 to i64
  store i64 %5013, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_47cd7b, %struct.Memory** %MEMORY
  %loadMem_47cd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 33
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5016 to i64*
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 1
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %5019 to i64*
  %5020 = load i64, i64* %RAX.i361
  %5021 = add i64 %5020, 12099168
  %5022 = load i64, i64* %PC.i360
  %5023 = add i64 %5022, 8
  store i64 %5023, i64* %PC.i360
  %5024 = inttoptr i64 %5021 to i8*
  %5025 = load i8, i8* %5024
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5026, align 1
  %5027 = zext i8 %5025 to i32
  %5028 = call i32 @llvm.ctpop.i32(i32 %5027)
  %5029 = trunc i32 %5028 to i8
  %5030 = and i8 %5029, 1
  %5031 = xor i8 %5030, 1
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5031, i8* %5032, align 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5033, align 1
  %5034 = icmp eq i8 %5025, 0
  %5035 = zext i1 %5034 to i8
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5035, i8* %5036, align 1
  %5037 = lshr i8 %5025, 7
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5037, i8* %5038, align 1
  %5039 = lshr i8 %5025, 7
  %5040 = xor i8 %5037, %5039
  %5041 = add i8 %5040, %5039
  %5042 = icmp eq i8 %5041, 2
  %5043 = zext i1 %5042 to i8
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5043, i8* %5044, align 1
  store %struct.Memory* %loadMem_47cd82, %struct.Memory** %MEMORY
  %loadMem_47cd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 33
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5047 to i64*
  %5048 = load i64, i64* %PC.i359
  %5049 = add i64 %5048, 21
  %5050 = load i64, i64* %PC.i359
  %5051 = add i64 %5050, 6
  %5052 = load i64, i64* %PC.i359
  %5053 = add i64 %5052, 6
  store i64 %5053, i64* %PC.i359
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5055 = load i8, i8* %5054, align 1
  %5056 = icmp eq i8 %5055, 0
  %5057 = zext i1 %5056 to i8
  store i8 %5057, i8* %BRANCH_TAKEN, align 1
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5059 = select i1 %5056, i64 %5049, i64 %5051
  store i64 %5059, i64* %5058, align 8
  store %struct.Memory* %loadMem_47cd8a, %struct.Memory** %MEMORY
  %loadBr_47cd8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd8a = icmp eq i8 %loadBr_47cd8a, 1
  br i1 %cmpBr_47cd8a, label %block_.L_47cd9f, label %block_47cd90

block_47cd90:                                     ; preds = %block_47cd7b
  %loadMem_47cd90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 33
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5062 to i64*
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 15
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %5065 to i64*
  %5066 = load i64, i64* %RBP.i358
  %5067 = sub i64 %5066, 1024
  %5068 = load i64, i64* %PC.i357
  %5069 = add i64 %5068, 10
  store i64 %5069, i64* %PC.i357
  %5070 = inttoptr i64 %5067 to i32*
  store i32 0, i32* %5070
  store %struct.Memory* %loadMem_47cd90, %struct.Memory** %MEMORY
  %loadMem_47cd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5073 to i64*
  %5074 = load i64, i64* %PC.i356
  %5075 = add i64 %5074, 125
  %5076 = load i64, i64* %PC.i356
  %5077 = add i64 %5076, 5
  store i64 %5077, i64* %PC.i356
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5075, i64* %5078, align 8
  store %struct.Memory* %loadMem_47cd9a, %struct.Memory** %MEMORY
  br label %block_.L_47ce17

block_.L_47cd9f:                                  ; preds = %block_47cd7b
  %loadMem_47cd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 33
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5081 to i64*
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 1
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %5084 to i32*
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 1
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %5087 to i64*
  %5088 = load i64, i64* %RAX.i355
  %5089 = load i32, i32* %EAX.i354
  %5090 = zext i32 %5089 to i64
  %5091 = load i64, i64* %PC.i353
  %5092 = add i64 %5091, 2
  store i64 %5092, i64* %PC.i353
  %5093 = xor i64 %5090, %5088
  %5094 = trunc i64 %5093 to i32
  %5095 = and i64 %5093, 4294967295
  store i64 %5095, i64* %RAX.i355, align 8
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5096, align 1
  %5097 = and i32 %5094, 255
  %5098 = call i32 @llvm.ctpop.i32(i32 %5097)
  %5099 = trunc i32 %5098 to i8
  %5100 = and i8 %5099, 1
  %5101 = xor i8 %5100, 1
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5101, i8* %5102, align 1
  %5103 = icmp eq i32 %5094, 0
  %5104 = zext i1 %5103 to i8
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5104, i8* %5105, align 1
  %5106 = lshr i32 %5094, 31
  %5107 = trunc i32 %5106 to i8
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5107, i8* %5108, align 1
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5109, align 1
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5110, align 1
  store %struct.Memory* %loadMem_47cd9f, %struct.Memory** %MEMORY
  %loadMem_47cda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 1
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %5116 to i32*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 9
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RSI.i352 = bitcast %union.anon* %5119 to i64*
  %5120 = load i32, i32* %EAX.i351
  %5121 = zext i32 %5120 to i64
  %5122 = load i64, i64* %PC.i350
  %5123 = add i64 %5122, 2
  store i64 %5123, i64* %PC.i350
  %5124 = and i64 %5121, 4294967295
  store i64 %5124, i64* %RSI.i352, align 8
  store %struct.Memory* %loadMem_47cda1, %struct.Memory** %MEMORY
  %loadMem_47cda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5126 = getelementptr inbounds %struct.GPR, %struct.GPR* %5125, i32 0, i32 33
  %5127 = getelementptr inbounds %struct.Reg, %struct.Reg* %5126, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5127 to i64*
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 11
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %RDI.i348 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 15
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %5133 to i64*
  %5134 = load i64, i64* %RBP.i349
  %5135 = sub i64 %5134, 1016
  %5136 = load i64, i64* %PC.i347
  %5137 = add i64 %5136, 6
  store i64 %5137, i64* %PC.i347
  %5138 = inttoptr i64 %5135 to i32*
  %5139 = load i32, i32* %5138
  %5140 = zext i32 %5139 to i64
  store i64 %5140, i64* %RDI.i348, align 8
  store %struct.Memory* %loadMem_47cda3, %struct.Memory** %MEMORY
  %loadMem1_47cda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 33
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5143 to i64*
  %5144 = load i64, i64* %PC.i346
  %5145 = add i64 %5144, -75305
  %5146 = load i64, i64* %PC.i346
  %5147 = add i64 %5146, 5
  %5148 = load i64, i64* %PC.i346
  %5149 = add i64 %5148, 5
  store i64 %5149, i64* %PC.i346
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5151 = load i64, i64* %5150, align 8
  %5152 = add i64 %5151, -8
  %5153 = inttoptr i64 %5152 to i64*
  store i64 %5147, i64* %5153
  store i64 %5152, i64* %5150, align 8
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5145, i64* %5154, align 8
  store %struct.Memory* %loadMem1_47cda9, %struct.Memory** %MEMORY
  %loadMem2_47cda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cda9 = load i64, i64* %3
  %call2_47cda9 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_47cda9, %struct.Memory* %loadMem2_47cda9)
  store %struct.Memory* %call2_47cda9, %struct.Memory** %MEMORY
  %loadMem_47cdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 33
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5157 to i64*
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 11
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %RDI.i345 = bitcast %union.anon* %5160 to i64*
  %5161 = load i64, i64* %PC.i344
  %5162 = add i64 %5161, 5
  store i64 %5162, i64* %PC.i344
  store i64 5, i64* %RDI.i345, align 8
  store %struct.Memory* %loadMem_47cdae, %struct.Memory** %MEMORY
  %loadMem_47cdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 33
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 1
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %EAX.i342 = bitcast %union.anon* %5168 to i32*
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 11
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %RDI.i343 = bitcast %union.anon* %5171 to i64*
  %5172 = load i64, i64* %RDI.i343
  %5173 = load i32, i32* %EAX.i342
  %5174 = zext i32 %5173 to i64
  %5175 = load i64, i64* %PC.i341
  %5176 = add i64 %5175, 2
  store i64 %5176, i64* %PC.i341
  %5177 = trunc i64 %5172 to i32
  %5178 = sub i32 %5177, %5173
  %5179 = zext i32 %5178 to i64
  store i64 %5179, i64* %RDI.i343, align 8
  %5180 = icmp ult i32 %5177, %5173
  %5181 = zext i1 %5180 to i8
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5181, i8* %5182, align 1
  %5183 = and i32 %5178, 255
  %5184 = call i32 @llvm.ctpop.i32(i32 %5183)
  %5185 = trunc i32 %5184 to i8
  %5186 = and i8 %5185, 1
  %5187 = xor i8 %5186, 1
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5187, i8* %5188, align 1
  %5189 = xor i64 %5174, %5172
  %5190 = trunc i64 %5189 to i32
  %5191 = xor i32 %5190, %5178
  %5192 = lshr i32 %5191, 4
  %5193 = trunc i32 %5192 to i8
  %5194 = and i8 %5193, 1
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5194, i8* %5195, align 1
  %5196 = icmp eq i32 %5178, 0
  %5197 = zext i1 %5196 to i8
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5197, i8* %5198, align 1
  %5199 = lshr i32 %5178, 31
  %5200 = trunc i32 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5200, i8* %5201, align 1
  %5202 = lshr i32 %5177, 31
  %5203 = lshr i32 %5173, 31
  %5204 = xor i32 %5203, %5202
  %5205 = xor i32 %5199, %5202
  %5206 = add i32 %5205, %5204
  %5207 = icmp eq i32 %5206, 2
  %5208 = zext i1 %5207 to i8
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5208, i8* %5209, align 1
  store %struct.Memory* %loadMem_47cdb3, %struct.Memory** %MEMORY
  %loadMem_47cdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 33
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5212 to i64*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 11
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %EDI.i339 = bitcast %union.anon* %5215 to i32*
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 15
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %5218 to i64*
  %5219 = load i64, i64* %RBP.i340
  %5220 = sub i64 %5219, 1028
  %5221 = load i32, i32* %EDI.i339
  %5222 = zext i32 %5221 to i64
  %5223 = load i64, i64* %PC.i338
  %5224 = add i64 %5223, 6
  store i64 %5224, i64* %PC.i338
  %5225 = inttoptr i64 %5220 to i32*
  store i32 %5221, i32* %5225
  store %struct.Memory* %loadMem_47cdb5, %struct.Memory** %MEMORY
  %loadMem_47cdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 1
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 15
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RBP.i337
  %5236 = sub i64 %5235, 1028
  %5237 = load i64, i64* %PC.i335
  %5238 = add i64 %5237, 6
  store i64 %5238, i64* %PC.i335
  %5239 = inttoptr i64 %5236 to i32*
  %5240 = load i32, i32* %5239
  %5241 = zext i32 %5240 to i64
  store i64 %5241, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_47cdbb, %struct.Memory** %MEMORY
  %loadMem_47cdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 33
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 1
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %5247 to i32*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 15
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %5250 to i64*
  %5251 = load i32, i32* %EAX.i333
  %5252 = zext i32 %5251 to i64
  %5253 = load i64, i64* %RBP.i334
  %5254 = sub i64 %5253, 1020
  %5255 = load i64, i64* %PC.i332
  %5256 = add i64 %5255, 6
  store i64 %5256, i64* %PC.i332
  %5257 = inttoptr i64 %5254 to i32*
  %5258 = load i32, i32* %5257
  %5259 = sub i32 %5251, %5258
  %5260 = icmp ult i32 %5251, %5258
  %5261 = zext i1 %5260 to i8
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5261, i8* %5262, align 1
  %5263 = and i32 %5259, 255
  %5264 = call i32 @llvm.ctpop.i32(i32 %5263)
  %5265 = trunc i32 %5264 to i8
  %5266 = and i8 %5265, 1
  %5267 = xor i8 %5266, 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5267, i8* %5268, align 1
  %5269 = xor i32 %5258, %5251
  %5270 = xor i32 %5269, %5259
  %5271 = lshr i32 %5270, 4
  %5272 = trunc i32 %5271 to i8
  %5273 = and i8 %5272, 1
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5273, i8* %5274, align 1
  %5275 = icmp eq i32 %5259, 0
  %5276 = zext i1 %5275 to i8
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5276, i8* %5277, align 1
  %5278 = lshr i32 %5259, 31
  %5279 = trunc i32 %5278 to i8
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5279, i8* %5280, align 1
  %5281 = lshr i32 %5251, 31
  %5282 = lshr i32 %5258, 31
  %5283 = xor i32 %5282, %5281
  %5284 = xor i32 %5278, %5281
  %5285 = add i32 %5284, %5283
  %5286 = icmp eq i32 %5285, 2
  %5287 = zext i1 %5286 to i8
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5287, i8* %5288, align 1
  store %struct.Memory* %loadMem_47cdc1, %struct.Memory** %MEMORY
  %loadMem_47cdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %PC.i331
  %5293 = add i64 %5292, 75
  %5294 = load i64, i64* %PC.i331
  %5295 = add i64 %5294, 6
  %5296 = load i64, i64* %PC.i331
  %5297 = add i64 %5296, 6
  store i64 %5297, i64* %PC.i331
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5299 = load i8, i8* %5298, align 1
  %5300 = icmp ne i8 %5299, 0
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5302 = load i8, i8* %5301, align 1
  %5303 = icmp ne i8 %5302, 0
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5305 = load i8, i8* %5304, align 1
  %5306 = icmp ne i8 %5305, 0
  %5307 = xor i1 %5303, %5306
  %5308 = or i1 %5300, %5307
  %5309 = zext i1 %5308 to i8
  store i8 %5309, i8* %BRANCH_TAKEN, align 1
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5311 = select i1 %5308, i64 %5293, i64 %5295
  store i64 %5311, i64* %5310, align 8
  store %struct.Memory* %loadMem_47cdc7, %struct.Memory** %MEMORY
  %loadBr_47cdc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cdc7 = icmp eq i8 %loadBr_47cdc7, 1
  br i1 %cmpBr_47cdc7, label %block_.L_47ce12, label %block_47cdcd

block_47cdcd:                                     ; preds = %block_.L_47cd9f
  %loadMem_47cdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 1
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %5317 to i64*
  %5318 = load i64, i64* %PC.i329
  %5319 = add i64 %5318, 10
  store i64 %5319, i64* %PC.i329
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_47cdcd, %struct.Memory** %MEMORY
  %loadMem_47cdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 5
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 15
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RBP.i328
  %5330 = sub i64 %5329, 1028
  %5331 = load i64, i64* %PC.i326
  %5332 = add i64 %5331, 6
  store i64 %5332, i64* %PC.i326
  %5333 = inttoptr i64 %5330 to i32*
  %5334 = load i32, i32* %5333
  %5335 = zext i32 %5334 to i64
  store i64 %5335, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_47cdd7, %struct.Memory** %MEMORY
  %loadMem_47cddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 5
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %ECX.i324 = bitcast %union.anon* %5341 to i32*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 15
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5344 to i64*
  %5345 = load i64, i64* %RBP.i325
  %5346 = sub i64 %5345, 1020
  %5347 = load i32, i32* %ECX.i324
  %5348 = zext i32 %5347 to i64
  %5349 = load i64, i64* %PC.i323
  %5350 = add i64 %5349, 6
  store i64 %5350, i64* %PC.i323
  %5351 = inttoptr i64 %5346 to i32*
  store i32 %5347, i32* %5351
  store %struct.Memory* %loadMem_47cddd, %struct.Memory** %MEMORY
  %loadMem_47cde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5354 to i64*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 5
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 15
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %5360 to i64*
  %5361 = load i64, i64* %RBP.i322
  %5362 = sub i64 %5361, 1020
  %5363 = load i64, i64* %PC.i320
  %5364 = add i64 %5363, 6
  store i64 %5364, i64* %PC.i320
  %5365 = inttoptr i64 %5362 to i32*
  %5366 = load i32, i32* %5365
  %5367 = zext i32 %5366 to i64
  store i64 %5367, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_47cde3, %struct.Memory** %MEMORY
  %loadMem_47cde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 7
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %5373 to i64*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 15
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %5376 to i64*
  %5377 = load i64, i64* %RBP.i319
  %5378 = sub i64 %5377, 1016
  %5379 = load i64, i64* %PC.i317
  %5380 = add i64 %5379, 7
  store i64 %5380, i64* %PC.i317
  %5381 = inttoptr i64 %5378 to i32*
  %5382 = load i32, i32* %5381
  %5383 = sext i32 %5382 to i64
  store i64 %5383, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_47cde9, %struct.Memory** %MEMORY
  %loadMem_47cdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %5386 to i64*
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 7
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %RDX.i316
  %5391 = load i64, i64* %PC.i315
  %5392 = add i64 %5391, 7
  store i64 %5392, i64* %PC.i315
  %5393 = sext i64 %5390 to i128
  %5394 = and i128 %5393, -18446744073709551616
  %5395 = zext i64 %5390 to i128
  %5396 = or i128 %5394, %5395
  %5397 = mul i128 380, %5396
  %5398 = trunc i128 %5397 to i64
  store i64 %5398, i64* %RDX.i316, align 8
  %5399 = sext i64 %5398 to i128
  %5400 = icmp ne i128 %5399, %5397
  %5401 = zext i1 %5400 to i8
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5401, i8* %5402, align 1
  %5403 = trunc i128 %5397 to i32
  %5404 = and i32 %5403, 255
  %5405 = call i32 @llvm.ctpop.i32(i32 %5404)
  %5406 = trunc i32 %5405 to i8
  %5407 = and i8 %5406, 1
  %5408 = xor i8 %5407, 1
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5408, i8* %5409, align 1
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5410, align 1
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5411, align 1
  %5412 = lshr i64 %5398, 63
  %5413 = trunc i64 %5412 to i8
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5413, i8* %5414, align 1
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5401, i8* %5415, align 1
  store %struct.Memory* %loadMem_47cdf0, %struct.Memory** %MEMORY
  %loadMem_47cdf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5417 = getelementptr inbounds %struct.GPR, %struct.GPR* %5416, i32 0, i32 33
  %5418 = getelementptr inbounds %struct.Reg, %struct.Reg* %5417, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %5418 to i64*
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 1
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %5421 to i64*
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 7
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %5424 to i64*
  %5425 = load i64, i64* %RAX.i313
  %5426 = load i64, i64* %RDX.i314
  %5427 = load i64, i64* %PC.i312
  %5428 = add i64 %5427, 3
  store i64 %5428, i64* %PC.i312
  %5429 = add i64 %5426, %5425
  store i64 %5429, i64* %RAX.i313, align 8
  %5430 = icmp ult i64 %5429, %5425
  %5431 = icmp ult i64 %5429, %5426
  %5432 = or i1 %5430, %5431
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5433, i8* %5434, align 1
  %5435 = trunc i64 %5429 to i32
  %5436 = and i32 %5435, 255
  %5437 = call i32 @llvm.ctpop.i32(i32 %5436)
  %5438 = trunc i32 %5437 to i8
  %5439 = and i8 %5438, 1
  %5440 = xor i8 %5439, 1
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5440, i8* %5441, align 1
  %5442 = xor i64 %5426, %5425
  %5443 = xor i64 %5442, %5429
  %5444 = lshr i64 %5443, 4
  %5445 = trunc i64 %5444 to i8
  %5446 = and i8 %5445, 1
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5446, i8* %5447, align 1
  %5448 = icmp eq i64 %5429, 0
  %5449 = zext i1 %5448 to i8
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5449, i8* %5450, align 1
  %5451 = lshr i64 %5429, 63
  %5452 = trunc i64 %5451 to i8
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5452, i8* %5453, align 1
  %5454 = lshr i64 %5425, 63
  %5455 = lshr i64 %5426, 63
  %5456 = xor i64 %5451, %5454
  %5457 = xor i64 %5451, %5455
  %5458 = add i64 %5456, %5457
  %5459 = icmp eq i64 %5458, 2
  %5460 = zext i1 %5459 to i8
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5460, i8* %5461, align 1
  store %struct.Memory* %loadMem_47cdf7, %struct.Memory** %MEMORY
  %loadMem_47cdfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 5
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %ECX.i310 = bitcast %union.anon* %5467 to i32*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 1
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %5470 to i64*
  %5471 = load i32, i32* %ECX.i310
  %5472 = zext i32 %5471 to i64
  %5473 = load i64, i64* %RAX.i311
  %5474 = add i64 %5473, 100
  %5475 = load i64, i64* %PC.i309
  %5476 = add i64 %5475, 3
  store i64 %5476, i64* %PC.i309
  %5477 = inttoptr i64 %5474 to i32*
  %5478 = load i32, i32* %5477
  %5479 = sub i32 %5471, %5478
  %5480 = icmp ult i32 %5471, %5478
  %5481 = zext i1 %5480 to i8
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5481, i8* %5482, align 1
  %5483 = and i32 %5479, 255
  %5484 = call i32 @llvm.ctpop.i32(i32 %5483)
  %5485 = trunc i32 %5484 to i8
  %5486 = and i8 %5485, 1
  %5487 = xor i8 %5486, 1
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5487, i8* %5488, align 1
  %5489 = xor i32 %5478, %5471
  %5490 = xor i32 %5489, %5479
  %5491 = lshr i32 %5490, 4
  %5492 = trunc i32 %5491 to i8
  %5493 = and i8 %5492, 1
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5493, i8* %5494, align 1
  %5495 = icmp eq i32 %5479, 0
  %5496 = zext i1 %5495 to i8
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5496, i8* %5497, align 1
  %5498 = lshr i32 %5479, 31
  %5499 = trunc i32 %5498 to i8
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5499, i8* %5500, align 1
  %5501 = lshr i32 %5471, 31
  %5502 = lshr i32 %5478, 31
  %5503 = xor i32 %5502, %5501
  %5504 = xor i32 %5498, %5501
  %5505 = add i32 %5504, %5503
  %5506 = icmp eq i32 %5505, 2
  %5507 = zext i1 %5506 to i8
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5507, i8* %5508, align 1
  store %struct.Memory* %loadMem_47cdfa, %struct.Memory** %MEMORY
  %loadMem_47cdfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 33
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %5511 to i64*
  %5512 = load i64, i64* %PC.i308
  %5513 = add i64 %5512, 16
  %5514 = load i64, i64* %PC.i308
  %5515 = add i64 %5514, 6
  %5516 = load i64, i64* %PC.i308
  %5517 = add i64 %5516, 6
  store i64 %5517, i64* %PC.i308
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5519 = load i8, i8* %5518, align 1
  %5520 = icmp ne i8 %5519, 0
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5522 = load i8, i8* %5521, align 1
  %5523 = icmp ne i8 %5522, 0
  %5524 = xor i1 %5520, %5523
  %5525 = zext i1 %5524 to i8
  store i8 %5525, i8* %BRANCH_TAKEN, align 1
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5527 = select i1 %5524, i64 %5513, i64 %5515
  store i64 %5527, i64* %5526, align 8
  store %struct.Memory* %loadMem_47cdfd, %struct.Memory** %MEMORY
  %loadBr_47cdfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cdfd = icmp eq i8 %loadBr_47cdfd, 1
  br i1 %cmpBr_47cdfd, label %block_.L_47ce0d, label %block_47ce03

block_47ce03:                                     ; preds = %block_47cdcd
  %loadMem_47ce03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 33
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 15
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %5533 to i64*
  %5534 = load i64, i64* %RBP.i307
  %5535 = sub i64 %5534, 1024
  %5536 = load i64, i64* %PC.i306
  %5537 = add i64 %5536, 10
  store i64 %5537, i64* %PC.i306
  %5538 = inttoptr i64 %5535 to i32*
  store i32 0, i32* %5538
  store %struct.Memory* %loadMem_47ce03, %struct.Memory** %MEMORY
  br label %block_.L_47ce0d

block_.L_47ce0d:                                  ; preds = %block_47ce03, %block_47cdcd
  %loadMem_47ce0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5541 to i64*
  %5542 = load i64, i64* %PC.i305
  %5543 = add i64 %5542, 5
  %5544 = load i64, i64* %PC.i305
  %5545 = add i64 %5544, 5
  store i64 %5545, i64* %PC.i305
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5543, i64* %5546, align 8
  store %struct.Memory* %loadMem_47ce0d, %struct.Memory** %MEMORY
  br label %block_.L_47ce12

block_.L_47ce12:                                  ; preds = %block_.L_47ce0d, %block_.L_47cd9f
  %loadMem_47ce12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 33
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5549 to i64*
  %5550 = load i64, i64* %PC.i304
  %5551 = add i64 %5550, 5
  %5552 = load i64, i64* %PC.i304
  %5553 = add i64 %5552, 5
  store i64 %5553, i64* %PC.i304
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5551, i64* %5554, align 8
  store %struct.Memory* %loadMem_47ce12, %struct.Memory** %MEMORY
  br label %block_.L_47ce17

block_.L_47ce17:                                  ; preds = %block_.L_47ce12, %block_47cd90
  %loadMem1_47ce17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %PC.i303
  %5559 = add i64 %5558, -454839
  %5560 = load i64, i64* %PC.i303
  %5561 = add i64 %5560, 5
  %5562 = load i64, i64* %PC.i303
  %5563 = add i64 %5562, 5
  store i64 %5563, i64* %PC.i303
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5565 = load i64, i64* %5564, align 8
  %5566 = add i64 %5565, -8
  %5567 = inttoptr i64 %5566 to i64*
  store i64 %5561, i64* %5567
  store i64 %5566, i64* %5564, align 8
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5559, i64* %5568, align 8
  store %struct.Memory* %loadMem1_47ce17, %struct.Memory** %MEMORY
  %loadMem2_47ce17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ce17 = load i64, i64* %3
  %call2_47ce17 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_47ce17, %struct.Memory* %loadMem2_47ce17)
  store %struct.Memory* %call2_47ce17, %struct.Memory** %MEMORY
  br label %block_.L_47ce1c

block_.L_47ce1c:                                  ; preds = %block_.L_47ce17, %block_47cd2b
  %loadMem_47ce1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 33
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5571 to i64*
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 15
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %5574 to i64*
  %5575 = load i64, i64* %RBP.i302
  %5576 = sub i64 %5575, 1024
  %5577 = load i64, i64* %PC.i301
  %5578 = add i64 %5577, 7
  store i64 %5578, i64* %PC.i301
  %5579 = inttoptr i64 %5576 to i32*
  %5580 = load i32, i32* %5579
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5581, align 1
  %5582 = and i32 %5580, 255
  %5583 = call i32 @llvm.ctpop.i32(i32 %5582)
  %5584 = trunc i32 %5583 to i8
  %5585 = and i8 %5584, 1
  %5586 = xor i8 %5585, 1
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5586, i8* %5587, align 1
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5588, align 1
  %5589 = icmp eq i32 %5580, 0
  %5590 = zext i1 %5589 to i8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5590, i8* %5591, align 1
  %5592 = lshr i32 %5580, 31
  %5593 = trunc i32 %5592 to i8
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5593, i8* %5594, align 1
  %5595 = lshr i32 %5580, 31
  %5596 = xor i32 %5592, %5595
  %5597 = add i32 %5596, %5595
  %5598 = icmp eq i32 %5597, 2
  %5599 = zext i1 %5598 to i8
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5599, i8* %5600, align 1
  store %struct.Memory* %loadMem_47ce1c, %struct.Memory** %MEMORY
  %loadMem_47ce23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 33
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5603 to i64*
  %5604 = load i64, i64* %PC.i300
  %5605 = add i64 %5604, 173
  %5606 = load i64, i64* %PC.i300
  %5607 = add i64 %5606, 6
  %5608 = load i64, i64* %PC.i300
  %5609 = add i64 %5608, 6
  store i64 %5609, i64* %PC.i300
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5611 = load i8, i8* %5610, align 1
  store i8 %5611, i8* %BRANCH_TAKEN, align 1
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5613 = icmp ne i8 %5611, 0
  %5614 = select i1 %5613, i64 %5605, i64 %5607
  store i64 %5614, i64* %5612, align 8
  store %struct.Memory* %loadMem_47ce23, %struct.Memory** %MEMORY
  %loadBr_47ce23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce23 = icmp eq i8 %loadBr_47ce23, 1
  br i1 %cmpBr_47ce23, label %block_.L_47ced0, label %block_47ce29

block_47ce29:                                     ; preds = %block_.L_47ce1c
  %loadMem_47ce29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 33
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5617 to i64*
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 15
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %RBP.i299
  %5622 = sub i64 %5621, 1004
  %5623 = load i64, i64* %PC.i298
  %5624 = add i64 %5623, 7
  store i64 %5624, i64* %PC.i298
  %5625 = inttoptr i64 %5622 to i32*
  %5626 = load i32, i32* %5625
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5627, align 1
  %5628 = and i32 %5626, 255
  %5629 = call i32 @llvm.ctpop.i32(i32 %5628)
  %5630 = trunc i32 %5629 to i8
  %5631 = and i8 %5630, 1
  %5632 = xor i8 %5631, 1
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5632, i8* %5633, align 1
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5634, align 1
  %5635 = icmp eq i32 %5626, 0
  %5636 = zext i1 %5635 to i8
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5636, i8* %5637, align 1
  %5638 = lshr i32 %5626, 31
  %5639 = trunc i32 %5638 to i8
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5639, i8* %5640, align 1
  %5641 = lshr i32 %5626, 31
  %5642 = xor i32 %5638, %5641
  %5643 = add i32 %5642, %5641
  %5644 = icmp eq i32 %5643, 2
  %5645 = zext i1 %5644 to i8
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5645, i8* %5646, align 1
  store %struct.Memory* %loadMem_47ce29, %struct.Memory** %MEMORY
  %loadMem_47ce30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 33
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5649 to i64*
  %5650 = load i64, i64* %PC.i297
  %5651 = add i64 %5650, 53
  %5652 = load i64, i64* %PC.i297
  %5653 = add i64 %5652, 6
  %5654 = load i64, i64* %PC.i297
  %5655 = add i64 %5654, 6
  store i64 %5655, i64* %PC.i297
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5657 = load i8, i8* %5656, align 1
  %5658 = icmp eq i8 %5657, 0
  %5659 = zext i1 %5658 to i8
  store i8 %5659, i8* %BRANCH_TAKEN, align 1
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5661 = select i1 %5658, i64 %5651, i64 %5653
  store i64 %5661, i64* %5660, align 8
  store %struct.Memory* %loadMem_47ce30, %struct.Memory** %MEMORY
  %loadBr_47ce30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce30 = icmp eq i8 %loadBr_47ce30, 1
  br i1 %cmpBr_47ce30, label %block_.L_47ce65, label %block_47ce36

block_47ce36:                                     ; preds = %block_47ce29
  %loadMem_47ce36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 33
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5664 to i64*
  %5665 = load i64, i64* %PC.i296
  %5666 = add i64 %5665, 8
  store i64 %5666, i64* %PC.i296
  %5667 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5668, align 1
  %5669 = and i32 %5667, 255
  %5670 = call i32 @llvm.ctpop.i32(i32 %5669)
  %5671 = trunc i32 %5670 to i8
  %5672 = and i8 %5671, 1
  %5673 = xor i8 %5672, 1
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5673, i8* %5674, align 1
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5675, align 1
  %5676 = icmp eq i32 %5667, 0
  %5677 = zext i1 %5676 to i8
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5677, i8* %5678, align 1
  %5679 = lshr i32 %5667, 31
  %5680 = trunc i32 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5680, i8* %5681, align 1
  %5682 = lshr i32 %5667, 31
  %5683 = xor i32 %5679, %5682
  %5684 = add i32 %5683, %5682
  %5685 = icmp eq i32 %5684, 2
  %5686 = zext i1 %5685 to i8
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5686, i8* %5687, align 1
  store %struct.Memory* %loadMem_47ce36, %struct.Memory** %MEMORY
  %loadMem_47ce3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 33
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5690 to i64*
  %5691 = load i64, i64* %PC.i295
  %5692 = add i64 %5691, 11
  %5693 = load i64, i64* %PC.i295
  %5694 = add i64 %5693, 6
  %5695 = load i64, i64* %PC.i295
  %5696 = add i64 %5695, 6
  store i64 %5696, i64* %PC.i295
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5698 = load i8, i8* %5697, align 1
  %5699 = icmp eq i8 %5698, 0
  %5700 = zext i1 %5699 to i8
  store i8 %5700, i8* %BRANCH_TAKEN, align 1
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5702 = select i1 %5699, i64 %5692, i64 %5694
  store i64 %5702, i64* %5701, align 8
  store %struct.Memory* %loadMem_47ce3e, %struct.Memory** %MEMORY
  %loadBr_47ce3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce3e = icmp eq i8 %loadBr_47ce3e, 1
  br i1 %cmpBr_47ce3e, label %block_.L_47ce49, label %block_47ce44

block_47ce44:                                     ; preds = %block_47ce36
  %loadMem_47ce44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 33
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5705 to i64*
  %5706 = load i64, i64* %PC.i294
  %5707 = add i64 %5706, 28
  %5708 = load i64, i64* %PC.i294
  %5709 = add i64 %5708, 5
  store i64 %5709, i64* %PC.i294
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5707, i64* %5710, align 8
  store %struct.Memory* %loadMem_47ce44, %struct.Memory** %MEMORY
  br label %block_.L_47ce60

block_.L_47ce49:                                  ; preds = %block_47ce36
  %loadMem_47ce49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5712 = getelementptr inbounds %struct.GPR, %struct.GPR* %5711, i32 0, i32 33
  %5713 = getelementptr inbounds %struct.Reg, %struct.Reg* %5712, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5713 to i64*
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 11
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %RDI.i293 = bitcast %union.anon* %5716 to i64*
  %5717 = load i64, i64* %PC.i292
  %5718 = add i64 %5717, 10
  store i64 %5718, i64* %PC.i292
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i293, align 8
  store %struct.Memory* %loadMem_47ce49, %struct.Memory** %MEMORY
  %loadMem_47ce53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 33
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5721 to i64*
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 1
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %5725 = bitcast %union.anon* %5724 to %struct.anon.2*
  %AL.i291 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5725, i32 0, i32 0
  %5726 = load i64, i64* %PC.i290
  %5727 = add i64 %5726, 2
  store i64 %5727, i64* %PC.i290
  store i8 0, i8* %AL.i291, align 1
  store %struct.Memory* %loadMem_47ce53, %struct.Memory** %MEMORY
  %loadMem1_47ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 33
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5730 to i64*
  %5731 = load i64, i64* %PC.i289
  %5732 = add i64 %5731, -176293
  %5733 = load i64, i64* %PC.i289
  %5734 = add i64 %5733, 5
  %5735 = load i64, i64* %PC.i289
  %5736 = add i64 %5735, 5
  store i64 %5736, i64* %PC.i289
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5738 = load i64, i64* %5737, align 8
  %5739 = add i64 %5738, -8
  %5740 = inttoptr i64 %5739 to i64*
  store i64 %5734, i64* %5740
  store i64 %5739, i64* %5737, align 8
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5732, i64* %5741, align 8
  store %struct.Memory* %loadMem1_47ce55, %struct.Memory** %MEMORY
  %loadMem2_47ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ce55 = load i64, i64* %3
  %call2_47ce55 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_47ce55, %struct.Memory* %loadMem2_47ce55)
  store %struct.Memory* %call2_47ce55, %struct.Memory** %MEMORY
  %loadMem_47ce5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5743 = getelementptr inbounds %struct.GPR, %struct.GPR* %5742, i32 0, i32 33
  %5744 = getelementptr inbounds %struct.Reg, %struct.Reg* %5743, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5744 to i64*
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5746 = getelementptr inbounds %struct.GPR, %struct.GPR* %5745, i32 0, i32 1
  %5747 = getelementptr inbounds %struct.Reg, %struct.Reg* %5746, i32 0, i32 0
  %EAX.i287 = bitcast %union.anon* %5747 to i32*
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 15
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %5750 to i64*
  %5751 = load i64, i64* %RBP.i288
  %5752 = sub i64 %5751, 1052
  %5753 = load i32, i32* %EAX.i287
  %5754 = zext i32 %5753 to i64
  %5755 = load i64, i64* %PC.i286
  %5756 = add i64 %5755, 6
  store i64 %5756, i64* %PC.i286
  %5757 = inttoptr i64 %5752 to i32*
  store i32 %5753, i32* %5757
  store %struct.Memory* %loadMem_47ce5a, %struct.Memory** %MEMORY
  br label %block_.L_47ce60

block_.L_47ce60:                                  ; preds = %block_.L_47ce49, %block_47ce44
  %loadMem_47ce60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5760 to i64*
  %5761 = load i64, i64* %PC.i285
  %5762 = add i64 %5761, 5
  %5763 = load i64, i64* %PC.i285
  %5764 = add i64 %5763, 5
  store i64 %5764, i64* %PC.i285
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5762, i64* %5765, align 8
  store %struct.Memory* %loadMem_47ce60, %struct.Memory** %MEMORY
  br label %block_.L_47ce65

block_.L_47ce65:                                  ; preds = %block_.L_47ce60, %block_47ce29
  %loadMem_47ce65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 33
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5768 to i64*
  %5769 = load i64, i64* %PC.i284
  %5770 = add i64 %5769, 8
  store i64 %5770, i64* %PC.i284
  %5771 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5772, align 1
  %5773 = and i32 %5771, 255
  %5774 = call i32 @llvm.ctpop.i32(i32 %5773)
  %5775 = trunc i32 %5774 to i8
  %5776 = and i8 %5775, 1
  %5777 = xor i8 %5776, 1
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5777, i8* %5778, align 1
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5779, align 1
  %5780 = icmp eq i32 %5771, 0
  %5781 = zext i1 %5780 to i8
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5781, i8* %5782, align 1
  %5783 = lshr i32 %5771, 31
  %5784 = trunc i32 %5783 to i8
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5784, i8* %5785, align 1
  %5786 = lshr i32 %5771, 31
  %5787 = xor i32 %5783, %5786
  %5788 = add i32 %5787, %5786
  %5789 = icmp eq i32 %5788, 2
  %5790 = zext i1 %5789 to i8
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5790, i8* %5791, align 1
  store %struct.Memory* %loadMem_47ce65, %struct.Memory** %MEMORY
  %loadMem_47ce6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 33
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5794 to i64*
  %5795 = load i64, i64* %PC.i283
  %5796 = add i64 %5795, 11
  %5797 = load i64, i64* %PC.i283
  %5798 = add i64 %5797, 6
  %5799 = load i64, i64* %PC.i283
  %5800 = add i64 %5799, 6
  store i64 %5800, i64* %PC.i283
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5802 = load i8, i8* %5801, align 1
  %5803 = icmp eq i8 %5802, 0
  %5804 = zext i1 %5803 to i8
  store i8 %5804, i8* %BRANCH_TAKEN, align 1
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5806 = select i1 %5803, i64 %5796, i64 %5798
  store i64 %5806, i64* %5805, align 8
  store %struct.Memory* %loadMem_47ce6d, %struct.Memory** %MEMORY
  %loadBr_47ce6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce6d = icmp eq i8 %loadBr_47ce6d, 1
  br i1 %cmpBr_47ce6d, label %block_.L_47ce78, label %block_47ce73

block_47ce73:                                     ; preds = %block_.L_47ce65
  %loadMem_47ce73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 33
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5809 to i64*
  %5810 = load i64, i64* %PC.i282
  %5811 = add i64 %5810, 53
  %5812 = load i64, i64* %PC.i282
  %5813 = add i64 %5812, 5
  store i64 %5813, i64* %PC.i282
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5811, i64* %5814, align 8
  store %struct.Memory* %loadMem_47ce73, %struct.Memory** %MEMORY
  br label %block_.L_47cea8

block_.L_47ce78:                                  ; preds = %block_.L_47ce65
  %loadMem_47ce78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 33
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5817 to i64*
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5819 = getelementptr inbounds %struct.GPR, %struct.GPR* %5818, i32 0, i32 11
  %5820 = getelementptr inbounds %struct.Reg, %struct.Reg* %5819, i32 0, i32 0
  %RDI.i281 = bitcast %union.anon* %5820 to i64*
  %5821 = load i64, i64* %PC.i280
  %5822 = add i64 %5821, 10
  store i64 %5822, i64* %PC.i280
  store i64 ptrtoint (%G__0x582dd0_type* @G__0x582dd0 to i64), i64* %RDI.i281, align 8
  store %struct.Memory* %loadMem_47ce78, %struct.Memory** %MEMORY
  %loadMem_47ce82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 33
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5825 to i64*
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 1
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %5828 to i64*
  %5829 = load i64, i64* %PC.i278
  %5830 = add i64 %5829, 5
  store i64 %5830, i64* %PC.i278
  store i64 5, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_47ce82, %struct.Memory** %MEMORY
  %loadMem_47ce87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 9
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RSI.i276 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 15
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5839 to i64*
  %5840 = load i64, i64* %RBP.i277
  %5841 = sub i64 %5840, 1016
  %5842 = load i64, i64* %PC.i275
  %5843 = add i64 %5842, 6
  store i64 %5843, i64* %PC.i275
  %5844 = inttoptr i64 %5841 to i32*
  %5845 = load i32, i32* %5844
  %5846 = zext i32 %5845 to i64
  store i64 %5846, i64* %RSI.i276, align 8
  store %struct.Memory* %loadMem_47ce87, %struct.Memory** %MEMORY
  %loadMem_47ce8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5848 = getelementptr inbounds %struct.GPR, %struct.GPR* %5847, i32 0, i32 33
  %5849 = getelementptr inbounds %struct.Reg, %struct.Reg* %5848, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5849 to i64*
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5851 = getelementptr inbounds %struct.GPR, %struct.GPR* %5850, i32 0, i32 7
  %5852 = getelementptr inbounds %struct.Reg, %struct.Reg* %5851, i32 0, i32 0
  %RDX.i273 = bitcast %union.anon* %5852 to i64*
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5854 = getelementptr inbounds %struct.GPR, %struct.GPR* %5853, i32 0, i32 15
  %5855 = getelementptr inbounds %struct.Reg, %struct.Reg* %5854, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %5855 to i64*
  %5856 = load i64, i64* %RBP.i274
  %5857 = sub i64 %5856, 992
  %5858 = load i64, i64* %PC.i272
  %5859 = add i64 %5858, 6
  store i64 %5859, i64* %PC.i272
  %5860 = inttoptr i64 %5857 to i32*
  %5861 = load i32, i32* %5860
  %5862 = zext i32 %5861 to i64
  store i64 %5862, i64* %RDX.i273, align 8
  store %struct.Memory* %loadMem_47ce8d, %struct.Memory** %MEMORY
  %loadMem_47ce93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 33
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5865 to i64*
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5867 = getelementptr inbounds %struct.GPR, %struct.GPR* %5866, i32 0, i32 1
  %5868 = getelementptr inbounds %struct.Reg, %struct.Reg* %5867, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %5868 to i64*
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5870 = getelementptr inbounds %struct.GPR, %struct.GPR* %5869, i32 0, i32 15
  %5871 = getelementptr inbounds %struct.Reg, %struct.Reg* %5870, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5871 to i64*
  %5872 = load i64, i64* %RAX.i270
  %5873 = load i64, i64* %RBP.i271
  %5874 = sub i64 %5873, 1020
  %5875 = load i64, i64* %PC.i269
  %5876 = add i64 %5875, 6
  store i64 %5876, i64* %PC.i269
  %5877 = trunc i64 %5872 to i32
  %5878 = inttoptr i64 %5874 to i32*
  %5879 = load i32, i32* %5878
  %5880 = sub i32 %5877, %5879
  %5881 = zext i32 %5880 to i64
  store i64 %5881, i64* %RAX.i270, align 8
  %5882 = icmp ult i32 %5877, %5879
  %5883 = zext i1 %5882 to i8
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5883, i8* %5884, align 1
  %5885 = and i32 %5880, 255
  %5886 = call i32 @llvm.ctpop.i32(i32 %5885)
  %5887 = trunc i32 %5886 to i8
  %5888 = and i8 %5887, 1
  %5889 = xor i8 %5888, 1
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5889, i8* %5890, align 1
  %5891 = xor i32 %5879, %5877
  %5892 = xor i32 %5891, %5880
  %5893 = lshr i32 %5892, 4
  %5894 = trunc i32 %5893 to i8
  %5895 = and i8 %5894, 1
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5895, i8* %5896, align 1
  %5897 = icmp eq i32 %5880, 0
  %5898 = zext i1 %5897 to i8
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5898, i8* %5899, align 1
  %5900 = lshr i32 %5880, 31
  %5901 = trunc i32 %5900 to i8
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5901, i8* %5902, align 1
  %5903 = lshr i32 %5877, 31
  %5904 = lshr i32 %5879, 31
  %5905 = xor i32 %5904, %5903
  %5906 = xor i32 %5900, %5903
  %5907 = add i32 %5906, %5905
  %5908 = icmp eq i32 %5907, 2
  %5909 = zext i1 %5908 to i8
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5909, i8* %5910, align 1
  store %struct.Memory* %loadMem_47ce93, %struct.Memory** %MEMORY
  %loadMem_47ce99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 33
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 1
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %5916 to i32*
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 5
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %5919 to i64*
  %5920 = load i32, i32* %EAX.i267
  %5921 = zext i32 %5920 to i64
  %5922 = load i64, i64* %PC.i266
  %5923 = add i64 %5922, 2
  store i64 %5923, i64* %PC.i266
  %5924 = and i64 %5921, 4294967295
  store i64 %5924, i64* %RCX.i268, align 8
  store %struct.Memory* %loadMem_47ce99, %struct.Memory** %MEMORY
  %loadMem_47ce9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 1
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %5931 = bitcast %union.anon* %5930 to %struct.anon.2*
  %AL.i265 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5931, i32 0, i32 0
  %5932 = load i64, i64* %PC.i264
  %5933 = add i64 %5932, 2
  store i64 %5933, i64* %PC.i264
  store i8 0, i8* %AL.i265, align 1
  store %struct.Memory* %loadMem_47ce9b, %struct.Memory** %MEMORY
  %loadMem1_47ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5935 = getelementptr inbounds %struct.GPR, %struct.GPR* %5934, i32 0, i32 33
  %5936 = getelementptr inbounds %struct.Reg, %struct.Reg* %5935, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5936 to i64*
  %5937 = load i64, i64* %PC.i263
  %5938 = add i64 %5937, -176365
  %5939 = load i64, i64* %PC.i263
  %5940 = add i64 %5939, 5
  %5941 = load i64, i64* %PC.i263
  %5942 = add i64 %5941, 5
  store i64 %5942, i64* %PC.i263
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5944 = load i64, i64* %5943, align 8
  %5945 = add i64 %5944, -8
  %5946 = inttoptr i64 %5945 to i64*
  store i64 %5940, i64* %5946
  store i64 %5945, i64* %5943, align 8
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5938, i64* %5947, align 8
  store %struct.Memory* %loadMem1_47ce9d, %struct.Memory** %MEMORY
  %loadMem2_47ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ce9d = load i64, i64* %3
  %call2_47ce9d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_47ce9d, %struct.Memory* %loadMem2_47ce9d)
  store %struct.Memory* %call2_47ce9d, %struct.Memory** %MEMORY
  %loadMem_47cea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 33
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5950 to i64*
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5952 = getelementptr inbounds %struct.GPR, %struct.GPR* %5951, i32 0, i32 1
  %5953 = getelementptr inbounds %struct.Reg, %struct.Reg* %5952, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %5953 to i32*
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 15
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %5956 to i64*
  %5957 = load i64, i64* %RBP.i262
  %5958 = sub i64 %5957, 1056
  %5959 = load i32, i32* %EAX.i261
  %5960 = zext i32 %5959 to i64
  %5961 = load i64, i64* %PC.i260
  %5962 = add i64 %5961, 6
  store i64 %5962, i64* %PC.i260
  %5963 = inttoptr i64 %5958 to i32*
  store i32 %5959, i32* %5963
  store %struct.Memory* %loadMem_47cea2, %struct.Memory** %MEMORY
  br label %block_.L_47cea8

block_.L_47cea8:                                  ; preds = %block_.L_47ce78, %block_47ce73
  %loadMem_47cea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 33
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 1
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %5969 to i64*
  %5970 = load i64, i64* %PC.i258
  %5971 = add i64 %5970, 5
  store i64 %5971, i64* %PC.i258
  store i64 5, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_47cea8, %struct.Memory** %MEMORY
  %loadMem_47cead = load %struct.Memory*, %struct.Memory** %MEMORY
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 33
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5974 to i64*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 15
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5977 to i64*
  %5978 = load i64, i64* %RBP.i257
  %5979 = sub i64 %5978, 1004
  %5980 = load i64, i64* %PC.i256
  %5981 = add i64 %5980, 10
  store i64 %5981, i64* %PC.i256
  %5982 = inttoptr i64 %5979 to i32*
  store i32 1, i32* %5982
  store %struct.Memory* %loadMem_47cead, %struct.Memory** %MEMORY
  %loadMem_47ceb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5984 = getelementptr inbounds %struct.GPR, %struct.GPR* %5983, i32 0, i32 33
  %5985 = getelementptr inbounds %struct.Reg, %struct.Reg* %5984, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5985 to i64*
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 11
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %RDI.i254 = bitcast %union.anon* %5988 to i64*
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5990 = getelementptr inbounds %struct.GPR, %struct.GPR* %5989, i32 0, i32 15
  %5991 = getelementptr inbounds %struct.Reg, %struct.Reg* %5990, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %5991 to i64*
  %5992 = load i64, i64* %RBP.i255
  %5993 = sub i64 %5992, 992
  %5994 = load i64, i64* %PC.i253
  %5995 = add i64 %5994, 6
  store i64 %5995, i64* %PC.i253
  %5996 = inttoptr i64 %5993 to i32*
  %5997 = load i32, i32* %5996
  %5998 = zext i32 %5997 to i64
  store i64 %5998, i64* %RDI.i254, align 8
  store %struct.Memory* %loadMem_47ceb7, %struct.Memory** %MEMORY
  %loadMem_47cebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6000 = getelementptr inbounds %struct.GPR, %struct.GPR* %5999, i32 0, i32 33
  %6001 = getelementptr inbounds %struct.Reg, %struct.Reg* %6000, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %6001 to i64*
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 9
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %RSI.i251 = bitcast %union.anon* %6004 to i64*
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 15
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %6007 to i64*
  %6008 = load i64, i64* %RBP.i252
  %6009 = sub i64 %6008, 1016
  %6010 = load i64, i64* %PC.i250
  %6011 = add i64 %6010, 6
  store i64 %6011, i64* %PC.i250
  %6012 = inttoptr i64 %6009 to i32*
  %6013 = load i32, i32* %6012
  %6014 = zext i32 %6013 to i64
  store i64 %6014, i64* %RSI.i251, align 8
  store %struct.Memory* %loadMem_47cebd, %struct.Memory** %MEMORY
  %loadMem_47cec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 33
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6017 to i64*
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 1
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %6020 to i64*
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 15
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %6023 to i64*
  %6024 = load i64, i64* %RAX.i248
  %6025 = load i64, i64* %RBP.i249
  %6026 = sub i64 %6025, 1020
  %6027 = load i64, i64* %PC.i247
  %6028 = add i64 %6027, 6
  store i64 %6028, i64* %PC.i247
  %6029 = trunc i64 %6024 to i32
  %6030 = inttoptr i64 %6026 to i32*
  %6031 = load i32, i32* %6030
  %6032 = sub i32 %6029, %6031
  %6033 = zext i32 %6032 to i64
  store i64 %6033, i64* %RAX.i248, align 8
  %6034 = icmp ult i32 %6029, %6031
  %6035 = zext i1 %6034 to i8
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6035, i8* %6036, align 1
  %6037 = and i32 %6032, 255
  %6038 = call i32 @llvm.ctpop.i32(i32 %6037)
  %6039 = trunc i32 %6038 to i8
  %6040 = and i8 %6039, 1
  %6041 = xor i8 %6040, 1
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6041, i8* %6042, align 1
  %6043 = xor i32 %6031, %6029
  %6044 = xor i32 %6043, %6032
  %6045 = lshr i32 %6044, 4
  %6046 = trunc i32 %6045 to i8
  %6047 = and i8 %6046, 1
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6047, i8* %6048, align 1
  %6049 = icmp eq i32 %6032, 0
  %6050 = zext i1 %6049 to i8
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6050, i8* %6051, align 1
  %6052 = lshr i32 %6032, 31
  %6053 = trunc i32 %6052 to i8
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6053, i8* %6054, align 1
  %6055 = lshr i32 %6029, 31
  %6056 = lshr i32 %6031, 31
  %6057 = xor i32 %6056, %6055
  %6058 = xor i32 %6052, %6055
  %6059 = add i32 %6058, %6057
  %6060 = icmp eq i32 %6059, 2
  %6061 = zext i1 %6060 to i8
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6061, i8* %6062, align 1
  store %struct.Memory* %loadMem_47cec3, %struct.Memory** %MEMORY
  %loadMem_47cec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 33
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %6065 to i64*
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 1
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %EAX.i245 = bitcast %union.anon* %6068 to i32*
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 7
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %RDX.i246 = bitcast %union.anon* %6071 to i64*
  %6072 = load i32, i32* %EAX.i245
  %6073 = zext i32 %6072 to i64
  %6074 = load i64, i64* %PC.i244
  %6075 = add i64 %6074, 2
  store i64 %6075, i64* %PC.i244
  %6076 = and i64 %6073, 4294967295
  store i64 %6076, i64* %RDX.i246, align 8
  store %struct.Memory* %loadMem_47cec9, %struct.Memory** %MEMORY
  %loadMem1_47cecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6079 to i64*
  %6080 = load i64, i64* %PC.i243
  %6081 = add i64 %6080, -305579
  %6082 = load i64, i64* %PC.i243
  %6083 = add i64 %6082, 5
  %6084 = load i64, i64* %PC.i243
  %6085 = add i64 %6084, 5
  store i64 %6085, i64* %PC.i243
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6087 = load i64, i64* %6086, align 8
  %6088 = add i64 %6087, -8
  %6089 = inttoptr i64 %6088 to i64*
  store i64 %6083, i64* %6089
  store i64 %6088, i64* %6086, align 8
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6081, i64* %6090, align 8
  store %struct.Memory* %loadMem1_47cecb, %struct.Memory** %MEMORY
  %loadMem2_47cecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cecb = load i64, i64* %3
  %call2_47cecb = call %struct.Memory* @sub_432520.add_defense_move(%struct.State* %0, i64 %loadPC_47cecb, %struct.Memory* %loadMem2_47cecb)
  store %struct.Memory* %call2_47cecb, %struct.Memory** %MEMORY
  br label %block_.L_47ced0

block_.L_47ced0:                                  ; preds = %block_.L_47cea8, %block_.L_47ce1c
  %loadMem_47ced0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 33
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6093 to i64*
  %6094 = load i64, i64* %PC.i242
  %6095 = add i64 %6094, 5
  %6096 = load i64, i64* %PC.i242
  %6097 = add i64 %6096, 5
  store i64 %6097, i64* %PC.i242
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6095, i64* %6098, align 8
  store %struct.Memory* %loadMem_47ced0, %struct.Memory** %MEMORY
  br label %block_.L_47ced5

block_.L_47ced5:                                  ; preds = %block_.L_47ced0, %block_47ccec
  %loadMem_47ced5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 33
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %6101 to i64*
  %6102 = load i64, i64* %PC.i241
  %6103 = add i64 %6102, 5
  %6104 = load i64, i64* %PC.i241
  %6105 = add i64 %6104, 5
  store i64 %6105, i64* %PC.i241
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6103, i64* %6106, align 8
  store %struct.Memory* %loadMem_47ced5, %struct.Memory** %MEMORY
  br label %block_.L_47ceda

block_.L_47ceda:                                  ; preds = %block_.L_47ced5, %block_47ccca, %block_47cc9e
  %loadMem_47ceda = load %struct.Memory*, %struct.Memory** %MEMORY
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 33
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %6109 to i64*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 1
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 15
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %6115 to i64*
  %6116 = load i64, i64* %RBP.i240
  %6117 = sub i64 %6116, 1016
  %6118 = load i64, i64* %PC.i238
  %6119 = add i64 %6118, 7
  store i64 %6119, i64* %PC.i238
  %6120 = inttoptr i64 %6117 to i32*
  %6121 = load i32, i32* %6120
  %6122 = sext i32 %6121 to i64
  store i64 %6122, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_47ceda, %struct.Memory** %MEMORY
  %loadMem_47cee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 33
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 1
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 5
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %6131 to i64*
  %6132 = load i64, i64* %RAX.i236
  %6133 = add i64 %6132, 12099168
  %6134 = load i64, i64* %PC.i235
  %6135 = add i64 %6134, 8
  store i64 %6135, i64* %PC.i235
  %6136 = inttoptr i64 %6133 to i8*
  %6137 = load i8, i8* %6136
  %6138 = zext i8 %6137 to i64
  store i64 %6138, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_47cee1, %struct.Memory** %MEMORY
  %loadMem_47cee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 33
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 5
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %ECX.i233 = bitcast %union.anon* %6144 to i32*
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 15
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %6147 to i64*
  %6148 = load i32, i32* %ECX.i233
  %6149 = zext i32 %6148 to i64
  %6150 = load i64, i64* %RBP.i234
  %6151 = sub i64 %6150, 1000
  %6152 = load i64, i64* %PC.i232
  %6153 = add i64 %6152, 6
  store i64 %6153, i64* %PC.i232
  %6154 = inttoptr i64 %6151 to i32*
  %6155 = load i32, i32* %6154
  %6156 = sub i32 %6148, %6155
  %6157 = icmp ult i32 %6148, %6155
  %6158 = zext i1 %6157 to i8
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6158, i8* %6159, align 1
  %6160 = and i32 %6156, 255
  %6161 = call i32 @llvm.ctpop.i32(i32 %6160)
  %6162 = trunc i32 %6161 to i8
  %6163 = and i8 %6162, 1
  %6164 = xor i8 %6163, 1
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6164, i8* %6165, align 1
  %6166 = xor i32 %6155, %6148
  %6167 = xor i32 %6166, %6156
  %6168 = lshr i32 %6167, 4
  %6169 = trunc i32 %6168 to i8
  %6170 = and i8 %6169, 1
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6170, i8* %6171, align 1
  %6172 = icmp eq i32 %6156, 0
  %6173 = zext i1 %6172 to i8
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6173, i8* %6174, align 1
  %6175 = lshr i32 %6156, 31
  %6176 = trunc i32 %6175 to i8
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6176, i8* %6177, align 1
  %6178 = lshr i32 %6148, 31
  %6179 = lshr i32 %6155, 31
  %6180 = xor i32 %6179, %6178
  %6181 = xor i32 %6175, %6178
  %6182 = add i32 %6181, %6180
  %6183 = icmp eq i32 %6182, 2
  %6184 = zext i1 %6183 to i8
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6184, i8* %6185, align 1
  store %struct.Memory* %loadMem_47cee9, %struct.Memory** %MEMORY
  %loadMem_47ceef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 33
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6188 to i64*
  %6189 = load i64, i64* %PC.i231
  %6190 = add i64 %6189, 502
  %6191 = load i64, i64* %PC.i231
  %6192 = add i64 %6191, 6
  %6193 = load i64, i64* %PC.i231
  %6194 = add i64 %6193, 6
  store i64 %6194, i64* %PC.i231
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6196 = load i8, i8* %6195, align 1
  %6197 = icmp eq i8 %6196, 0
  %6198 = zext i1 %6197 to i8
  store i8 %6198, i8* %BRANCH_TAKEN, align 1
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6200 = select i1 %6197, i64 %6190, i64 %6192
  store i64 %6200, i64* %6199, align 8
  store %struct.Memory* %loadMem_47ceef, %struct.Memory** %MEMORY
  %loadBr_47ceef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ceef = icmp eq i8 %loadBr_47ceef, 1
  br i1 %cmpBr_47ceef, label %block_.L_47d0e5, label %block_47cef5

block_47cef5:                                     ; preds = %block_.L_47ceda
  %loadMem_47cef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6202 = getelementptr inbounds %struct.GPR, %struct.GPR* %6201, i32 0, i32 33
  %6203 = getelementptr inbounds %struct.Reg, %struct.Reg* %6202, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6203 to i64*
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6205 = getelementptr inbounds %struct.GPR, %struct.GPR* %6204, i32 0, i32 11
  %6206 = getelementptr inbounds %struct.Reg, %struct.Reg* %6205, i32 0, i32 0
  %RDI.i229 = bitcast %union.anon* %6206 to i64*
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6208 = getelementptr inbounds %struct.GPR, %struct.GPR* %6207, i32 0, i32 15
  %6209 = getelementptr inbounds %struct.Reg, %struct.Reg* %6208, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %6209 to i64*
  %6210 = load i64, i64* %RBP.i230
  %6211 = sub i64 %6210, 992
  %6212 = load i64, i64* %PC.i228
  %6213 = add i64 %6212, 6
  store i64 %6213, i64* %PC.i228
  %6214 = inttoptr i64 %6211 to i32*
  %6215 = load i32, i32* %6214
  %6216 = zext i32 %6215 to i64
  store i64 %6216, i64* %RDI.i229, align 8
  store %struct.Memory* %loadMem_47cef5, %struct.Memory** %MEMORY
  %loadMem_47cefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6218 = getelementptr inbounds %struct.GPR, %struct.GPR* %6217, i32 0, i32 33
  %6219 = getelementptr inbounds %struct.Reg, %struct.Reg* %6218, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6219 to i64*
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 1
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %6222 to i64*
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6224 = getelementptr inbounds %struct.GPR, %struct.GPR* %6223, i32 0, i32 15
  %6225 = getelementptr inbounds %struct.Reg, %struct.Reg* %6224, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %6225 to i64*
  %6226 = load i64, i64* %RBP.i227
  %6227 = sub i64 %6226, 996
  %6228 = load i64, i64* %PC.i225
  %6229 = add i64 %6228, 7
  store i64 %6229, i64* %PC.i225
  %6230 = inttoptr i64 %6227 to i32*
  %6231 = load i32, i32* %6230
  %6232 = sext i32 %6231 to i64
  store i64 %6232, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_47cefb, %struct.Memory** %MEMORY
  %loadMem_47cf02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 33
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %6235 to i64*
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 1
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %6238 to i64*
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 9
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %RSI.i223 = bitcast %union.anon* %6241 to i64*
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 15
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %6244 to i64*
  %6245 = load i64, i64* %RBP.i224
  %6246 = load i64, i64* %RAX.i222
  %6247 = mul i64 %6246, 4
  %6248 = add i64 %6245, -976
  %6249 = add i64 %6248, %6247
  %6250 = load i64, i64* %PC.i221
  %6251 = add i64 %6250, 7
  store i64 %6251, i64* %PC.i221
  %6252 = inttoptr i64 %6249 to i32*
  %6253 = load i32, i32* %6252
  %6254 = zext i32 %6253 to i64
  store i64 %6254, i64* %RSI.i223, align 8
  store %struct.Memory* %loadMem_47cf02, %struct.Memory** %MEMORY
  %loadMem1_47cf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6256 = getelementptr inbounds %struct.GPR, %struct.GPR* %6255, i32 0, i32 33
  %6257 = getelementptr inbounds %struct.Reg, %struct.Reg* %6256, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6257 to i64*
  %6258 = load i64, i64* %PC.i220
  %6259 = add i64 %6258, -307673
  %6260 = load i64, i64* %PC.i220
  %6261 = add i64 %6260, 5
  %6262 = load i64, i64* %PC.i220
  %6263 = add i64 %6262, 5
  store i64 %6263, i64* %PC.i220
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6265 = load i64, i64* %6264, align 8
  %6266 = add i64 %6265, -8
  %6267 = inttoptr i64 %6266 to i64*
  store i64 %6261, i64* %6267
  store i64 %6266, i64* %6264, align 8
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6259, i64* %6268, align 8
  store %struct.Memory* %loadMem1_47cf09, %struct.Memory** %MEMORY
  %loadMem2_47cf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cf09 = load i64, i64* %3
  %call2_47cf09 = call %struct.Memory* @sub_431d30.attack_move_reason_known(%struct.State* %0, i64 %loadPC_47cf09, %struct.Memory* %loadMem2_47cf09)
  store %struct.Memory* %call2_47cf09, %struct.Memory** %MEMORY
  %loadMem_47cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 33
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %6271 to i64*
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 1
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %6274 to i32*
  %6275 = load i32, i32* %EAX.i219
  %6276 = zext i32 %6275 to i64
  %6277 = load i64, i64* %PC.i218
  %6278 = add i64 %6277, 3
  store i64 %6278, i64* %PC.i218
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6279, align 1
  %6280 = and i32 %6275, 255
  %6281 = call i32 @llvm.ctpop.i32(i32 %6280)
  %6282 = trunc i32 %6281 to i8
  %6283 = and i8 %6282, 1
  %6284 = xor i8 %6283, 1
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6284, i8* %6285, align 1
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6286, align 1
  %6287 = icmp eq i32 %6275, 0
  %6288 = zext i1 %6287 to i8
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6288, i8* %6289, align 1
  %6290 = lshr i32 %6275, 31
  %6291 = trunc i32 %6290 to i8
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6291, i8* %6292, align 1
  %6293 = lshr i32 %6275, 31
  %6294 = xor i32 %6290, %6293
  %6295 = add i32 %6294, %6293
  %6296 = icmp eq i32 %6295, 2
  %6297 = zext i1 %6296 to i8
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6297, i8* %6298, align 1
  store %struct.Memory* %loadMem_47cf0e, %struct.Memory** %MEMORY
  %loadMem_47cf11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6301 to i64*
  %6302 = load i64, i64* %PC.i217
  %6303 = add i64 %6302, 468
  %6304 = load i64, i64* %PC.i217
  %6305 = add i64 %6304, 6
  %6306 = load i64, i64* %PC.i217
  %6307 = add i64 %6306, 6
  store i64 %6307, i64* %PC.i217
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6309 = load i8, i8* %6308, align 1
  %6310 = icmp eq i8 %6309, 0
  %6311 = zext i1 %6310 to i8
  store i8 %6311, i8* %BRANCH_TAKEN, align 1
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6313 = select i1 %6310, i64 %6303, i64 %6305
  store i64 %6313, i64* %6312, align 8
  store %struct.Memory* %loadMem_47cf11, %struct.Memory** %MEMORY
  %loadBr_47cf11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cf11 = icmp eq i8 %loadBr_47cf11, 1
  br i1 %cmpBr_47cf11, label %block_.L_47d0e5, label %block_47cf17

block_47cf17:                                     ; preds = %block_47cef5
  %loadMem_47cf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 33
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6316 to i64*
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 1
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %EAX.i215 = bitcast %union.anon* %6319 to i32*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 1
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %6322 to i64*
  %6323 = load i64, i64* %RAX.i216
  %6324 = load i32, i32* %EAX.i215
  %6325 = zext i32 %6324 to i64
  %6326 = load i64, i64* %PC.i214
  %6327 = add i64 %6326, 2
  store i64 %6327, i64* %PC.i214
  %6328 = xor i64 %6325, %6323
  %6329 = trunc i64 %6328 to i32
  %6330 = and i64 %6328, 4294967295
  store i64 %6330, i64* %RAX.i216, align 8
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6331, align 1
  %6332 = and i32 %6329, 255
  %6333 = call i32 @llvm.ctpop.i32(i32 %6332)
  %6334 = trunc i32 %6333 to i8
  %6335 = and i8 %6334, 1
  %6336 = xor i8 %6335, 1
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6336, i8* %6337, align 1
  %6338 = icmp eq i32 %6329, 0
  %6339 = zext i1 %6338 to i8
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6339, i8* %6340, align 1
  %6341 = lshr i32 %6329, 31
  %6342 = trunc i32 %6341 to i8
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6342, i8* %6343, align 1
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6344, align 1
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6345, align 1
  store %struct.Memory* %loadMem_47cf17, %struct.Memory** %MEMORY
  %loadMem_47cf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 33
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6348 to i64*
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6350 = getelementptr inbounds %struct.GPR, %struct.GPR* %6349, i32 0, i32 1
  %6351 = getelementptr inbounds %struct.Reg, %struct.Reg* %6350, i32 0, i32 0
  %EAX.i212 = bitcast %union.anon* %6351 to i32*
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6353 = getelementptr inbounds %struct.GPR, %struct.GPR* %6352, i32 0, i32 9
  %6354 = getelementptr inbounds %struct.Reg, %struct.Reg* %6353, i32 0, i32 0
  %RSI.i213 = bitcast %union.anon* %6354 to i64*
  %6355 = load i32, i32* %EAX.i212
  %6356 = zext i32 %6355 to i64
  %6357 = load i64, i64* %PC.i211
  %6358 = add i64 %6357, 2
  store i64 %6358, i64* %PC.i211
  %6359 = and i64 %6356, 4294967295
  store i64 %6359, i64* %RSI.i213, align 8
  store %struct.Memory* %loadMem_47cf19, %struct.Memory** %MEMORY
  %loadMem_47cf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 33
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 11
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %RDI.i209 = bitcast %union.anon* %6365 to i64*
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 15
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %6368 to i64*
  %6369 = load i64, i64* %RBP.i210
  %6370 = sub i64 %6369, 1016
  %6371 = load i64, i64* %PC.i208
  %6372 = add i64 %6371, 6
  store i64 %6372, i64* %PC.i208
  %6373 = inttoptr i64 %6370 to i32*
  %6374 = load i32, i32* %6373
  %6375 = zext i32 %6374 to i64
  store i64 %6375, i64* %RDI.i209, align 8
  store %struct.Memory* %loadMem_47cf1b, %struct.Memory** %MEMORY
  %loadMem1_47cf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6377 = getelementptr inbounds %struct.GPR, %struct.GPR* %6376, i32 0, i32 33
  %6378 = getelementptr inbounds %struct.Reg, %struct.Reg* %6377, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6378 to i64*
  %6379 = load i64, i64* %PC.i207
  %6380 = add i64 %6379, -75681
  %6381 = load i64, i64* %PC.i207
  %6382 = add i64 %6381, 5
  %6383 = load i64, i64* %PC.i207
  %6384 = add i64 %6383, 5
  store i64 %6384, i64* %PC.i207
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6386 = load i64, i64* %6385, align 8
  %6387 = add i64 %6386, -8
  %6388 = inttoptr i64 %6387 to i64*
  store i64 %6382, i64* %6388
  store i64 %6387, i64* %6385, align 8
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6380, i64* %6389, align 8
  store %struct.Memory* %loadMem1_47cf21, %struct.Memory** %MEMORY
  %loadMem2_47cf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cf21 = load i64, i64* %3
  %call2_47cf21 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_47cf21, %struct.Memory* %loadMem2_47cf21)
  store %struct.Memory* %call2_47cf21, %struct.Memory** %MEMORY
  %loadMem_47cf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 33
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6392 to i64*
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6394 = getelementptr inbounds %struct.GPR, %struct.GPR* %6393, i32 0, i32 9
  %6395 = getelementptr inbounds %struct.Reg, %struct.Reg* %6394, i32 0, i32 0
  %RSI.i206 = bitcast %union.anon* %6395 to i64*
  %6396 = load i64, i64* %PC.i205
  %6397 = add i64 %6396, 10
  store i64 %6397, i64* %PC.i205
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i206, align 8
  store %struct.Memory* %loadMem_47cf26, %struct.Memory** %MEMORY
  %loadMem_47cf30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6399 = getelementptr inbounds %struct.GPR, %struct.GPR* %6398, i32 0, i32 33
  %6400 = getelementptr inbounds %struct.Reg, %struct.Reg* %6399, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6400 to i64*
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6402 = getelementptr inbounds %struct.GPR, %struct.GPR* %6401, i32 0, i32 1
  %6403 = getelementptr inbounds %struct.Reg, %struct.Reg* %6402, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %6403 to i32*
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 15
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %6406 to i64*
  %6407 = load i64, i64* %RBP.i204
  %6408 = sub i64 %6407, 1032
  %6409 = load i32, i32* %EAX.i203
  %6410 = zext i32 %6409 to i64
  %6411 = load i64, i64* %PC.i202
  %6412 = add i64 %6411, 6
  store i64 %6412, i64* %PC.i202
  %6413 = inttoptr i64 %6408 to i32*
  store i32 %6409, i32* %6413
  store %struct.Memory* %loadMem_47cf30, %struct.Memory** %MEMORY
  %loadMem_47cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6415 = getelementptr inbounds %struct.GPR, %struct.GPR* %6414, i32 0, i32 33
  %6416 = getelementptr inbounds %struct.Reg, %struct.Reg* %6415, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6416 to i64*
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 1
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %6419 to i64*
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6421 = getelementptr inbounds %struct.GPR, %struct.GPR* %6420, i32 0, i32 15
  %6422 = getelementptr inbounds %struct.Reg, %struct.Reg* %6421, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %6422 to i64*
  %6423 = load i64, i64* %RBP.i201
  %6424 = sub i64 %6423, 1032
  %6425 = load i64, i64* %PC.i199
  %6426 = add i64 %6425, 6
  store i64 %6426, i64* %PC.i199
  %6427 = inttoptr i64 %6424 to i32*
  %6428 = load i32, i32* %6427
  %6429 = zext i32 %6428 to i64
  store i64 %6429, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_47cf36, %struct.Memory** %MEMORY
  %loadMem_47cf3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6431 = getelementptr inbounds %struct.GPR, %struct.GPR* %6430, i32 0, i32 33
  %6432 = getelementptr inbounds %struct.Reg, %struct.Reg* %6431, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6432 to i64*
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6434 = getelementptr inbounds %struct.GPR, %struct.GPR* %6433, i32 0, i32 5
  %6435 = getelementptr inbounds %struct.Reg, %struct.Reg* %6434, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %6435 to i64*
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 15
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %6438 to i64*
  %6439 = load i64, i64* %RBP.i198
  %6440 = sub i64 %6439, 1016
  %6441 = load i64, i64* %PC.i196
  %6442 = add i64 %6441, 7
  store i64 %6442, i64* %PC.i196
  %6443 = inttoptr i64 %6440 to i32*
  %6444 = load i32, i32* %6443
  %6445 = sext i32 %6444 to i64
  store i64 %6445, i64* %RCX.i197, align 8
  store %struct.Memory* %loadMem_47cf3c, %struct.Memory** %MEMORY
  %loadMem_47cf43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6447 = getelementptr inbounds %struct.GPR, %struct.GPR* %6446, i32 0, i32 33
  %6448 = getelementptr inbounds %struct.Reg, %struct.Reg* %6447, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6448 to i64*
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 5
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %6451 to i64*
  %6452 = load i64, i64* %RCX.i195
  %6453 = load i64, i64* %PC.i194
  %6454 = add i64 %6453, 7
  store i64 %6454, i64* %PC.i194
  %6455 = sext i64 %6452 to i128
  %6456 = and i128 %6455, -18446744073709551616
  %6457 = zext i64 %6452 to i128
  %6458 = or i128 %6456, %6457
  %6459 = mul i128 380, %6458
  %6460 = trunc i128 %6459 to i64
  store i64 %6460, i64* %RCX.i195, align 8
  %6461 = sext i64 %6460 to i128
  %6462 = icmp ne i128 %6461, %6459
  %6463 = zext i1 %6462 to i8
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6463, i8* %6464, align 1
  %6465 = trunc i128 %6459 to i32
  %6466 = and i32 %6465, 255
  %6467 = call i32 @llvm.ctpop.i32(i32 %6466)
  %6468 = trunc i32 %6467 to i8
  %6469 = and i8 %6468, 1
  %6470 = xor i8 %6469, 1
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6470, i8* %6471, align 1
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6472, align 1
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6473, align 1
  %6474 = lshr i64 %6460, 63
  %6475 = trunc i64 %6474 to i8
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6475, i8* %6476, align 1
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6463, i8* %6477, align 1
  store %struct.Memory* %loadMem_47cf43, %struct.Memory** %MEMORY
  %loadMem_47cf4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 33
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6480 to i64*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 5
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %6483 to i64*
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 9
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %RSI.i193 = bitcast %union.anon* %6486 to i64*
  %6487 = load i64, i64* %RSI.i193
  %6488 = load i64, i64* %RCX.i192
  %6489 = load i64, i64* %PC.i191
  %6490 = add i64 %6489, 3
  store i64 %6490, i64* %PC.i191
  %6491 = add i64 %6488, %6487
  store i64 %6491, i64* %RSI.i193, align 8
  %6492 = icmp ult i64 %6491, %6487
  %6493 = icmp ult i64 %6491, %6488
  %6494 = or i1 %6492, %6493
  %6495 = zext i1 %6494 to i8
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6495, i8* %6496, align 1
  %6497 = trunc i64 %6491 to i32
  %6498 = and i32 %6497, 255
  %6499 = call i32 @llvm.ctpop.i32(i32 %6498)
  %6500 = trunc i32 %6499 to i8
  %6501 = and i8 %6500, 1
  %6502 = xor i8 %6501, 1
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6502, i8* %6503, align 1
  %6504 = xor i64 %6488, %6487
  %6505 = xor i64 %6504, %6491
  %6506 = lshr i64 %6505, 4
  %6507 = trunc i64 %6506 to i8
  %6508 = and i8 %6507, 1
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6508, i8* %6509, align 1
  %6510 = icmp eq i64 %6491, 0
  %6511 = zext i1 %6510 to i8
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6511, i8* %6512, align 1
  %6513 = lshr i64 %6491, 63
  %6514 = trunc i64 %6513 to i8
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6514, i8* %6515, align 1
  %6516 = lshr i64 %6487, 63
  %6517 = lshr i64 %6488, 63
  %6518 = xor i64 %6513, %6516
  %6519 = xor i64 %6513, %6517
  %6520 = add i64 %6518, %6519
  %6521 = icmp eq i64 %6520, 2
  %6522 = zext i1 %6521 to i8
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6522, i8* %6523, align 1
  store %struct.Memory* %loadMem_47cf4a, %struct.Memory** %MEMORY
  %loadMem_47cf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 1
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %6529 to i32*
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 9
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %RSI.i190 = bitcast %union.anon* %6532 to i64*
  %6533 = load i32, i32* %EAX.i189
  %6534 = zext i32 %6533 to i64
  %6535 = load i64, i64* %RSI.i190
  %6536 = add i64 %6535, 180
  %6537 = load i64, i64* %PC.i188
  %6538 = add i64 %6537, 6
  store i64 %6538, i64* %PC.i188
  %6539 = inttoptr i64 %6536 to i32*
  %6540 = load i32, i32* %6539
  %6541 = sub i32 %6533, %6540
  %6542 = icmp ult i32 %6533, %6540
  %6543 = zext i1 %6542 to i8
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6543, i8* %6544, align 1
  %6545 = and i32 %6541, 255
  %6546 = call i32 @llvm.ctpop.i32(i32 %6545)
  %6547 = trunc i32 %6546 to i8
  %6548 = and i8 %6547, 1
  %6549 = xor i8 %6548, 1
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6549, i8* %6550, align 1
  %6551 = xor i32 %6540, %6533
  %6552 = xor i32 %6551, %6541
  %6553 = lshr i32 %6552, 4
  %6554 = trunc i32 %6553 to i8
  %6555 = and i8 %6554, 1
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6555, i8* %6556, align 1
  %6557 = icmp eq i32 %6541, 0
  %6558 = zext i1 %6557 to i8
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6558, i8* %6559, align 1
  %6560 = lshr i32 %6541, 31
  %6561 = trunc i32 %6560 to i8
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6561, i8* %6562, align 1
  %6563 = lshr i32 %6533, 31
  %6564 = lshr i32 %6540, 31
  %6565 = xor i32 %6564, %6563
  %6566 = xor i32 %6560, %6563
  %6567 = add i32 %6566, %6565
  %6568 = icmp eq i32 %6567, 2
  %6569 = zext i1 %6568 to i8
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6569, i8* %6570, align 1
  store %struct.Memory* %loadMem_47cf4d, %struct.Memory** %MEMORY
  %loadMem_47cf53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6572 = getelementptr inbounds %struct.GPR, %struct.GPR* %6571, i32 0, i32 33
  %6573 = getelementptr inbounds %struct.Reg, %struct.Reg* %6572, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6573 to i64*
  %6574 = load i64, i64* %PC.i187
  %6575 = add i64 %6574, 397
  %6576 = load i64, i64* %PC.i187
  %6577 = add i64 %6576, 6
  %6578 = load i64, i64* %PC.i187
  %6579 = add i64 %6578, 6
  store i64 %6579, i64* %PC.i187
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6581 = load i8, i8* %6580, align 1
  %6582 = icmp ne i8 %6581, 0
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6584 = load i8, i8* %6583, align 1
  %6585 = icmp ne i8 %6584, 0
  %6586 = xor i1 %6582, %6585
  %6587 = xor i1 %6586, true
  %6588 = zext i1 %6587 to i8
  store i8 %6588, i8* %BRANCH_TAKEN, align 1
  %6589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6590 = select i1 %6586, i64 %6577, i64 %6575
  store i64 %6590, i64* %6589, align 8
  store %struct.Memory* %loadMem_47cf53, %struct.Memory** %MEMORY
  %loadBr_47cf53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cf53 = icmp eq i8 %loadBr_47cf53, 1
  br i1 %cmpBr_47cf53, label %block_.L_47d0e0, label %block_47cf59

block_47cf59:                                     ; preds = %block_47cf17
  %loadMem_47cf59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 33
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6593 to i64*
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 7
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %RDX.i186 = bitcast %union.anon* %6596 to i64*
  %6597 = load i64, i64* %PC.i185
  %6598 = add i64 %6597, 10
  store i64 %6598, i64* %PC.i185
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX.i186, align 8
  store %struct.Memory* %loadMem_47cf59, %struct.Memory** %MEMORY
  %loadMem_47cf63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6600 = getelementptr inbounds %struct.GPR, %struct.GPR* %6599, i32 0, i32 33
  %6601 = getelementptr inbounds %struct.Reg, %struct.Reg* %6600, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6601 to i64*
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6603 = getelementptr inbounds %struct.GPR, %struct.GPR* %6602, i32 0, i32 1
  %6604 = getelementptr inbounds %struct.Reg, %struct.Reg* %6603, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %6604 to i32*
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6606 = getelementptr inbounds %struct.GPR, %struct.GPR* %6605, i32 0, i32 1
  %6607 = getelementptr inbounds %struct.Reg, %struct.Reg* %6606, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6607 to i64*
  %6608 = load i64, i64* %RAX.i184
  %6609 = load i32, i32* %EAX.i183
  %6610 = zext i32 %6609 to i64
  %6611 = load i64, i64* %PC.i182
  %6612 = add i64 %6611, 2
  store i64 %6612, i64* %PC.i182
  %6613 = xor i64 %6610, %6608
  %6614 = trunc i64 %6613 to i32
  %6615 = and i64 %6613, 4294967295
  store i64 %6615, i64* %RAX.i184, align 8
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6616, align 1
  %6617 = and i32 %6614, 255
  %6618 = call i32 @llvm.ctpop.i32(i32 %6617)
  %6619 = trunc i32 %6618 to i8
  %6620 = and i8 %6619, 1
  %6621 = xor i8 %6620, 1
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6621, i8* %6622, align 1
  %6623 = icmp eq i32 %6614, 0
  %6624 = zext i1 %6623 to i8
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6624, i8* %6625, align 1
  %6626 = lshr i32 %6614, 31
  %6627 = trunc i32 %6626 to i8
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6627, i8* %6628, align 1
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6629, align 1
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6630, align 1
  store %struct.Memory* %loadMem_47cf63, %struct.Memory** %MEMORY
  %loadMem_47cf65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 33
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6633 to i64*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 5
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %6636 to i64*
  %6637 = load i64, i64* %PC.i180
  %6638 = add i64 %6637, 10
  store i64 %6638, i64* %PC.i180
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_47cf65, %struct.Memory** %MEMORY
  %loadMem_47cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 33
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6641 to i64*
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 15
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %6644 to i64*
  %6645 = load i64, i64* %RBP.i179
  %6646 = sub i64 %6645, 1036
  %6647 = load i64, i64* %PC.i178
  %6648 = add i64 %6647, 10
  store i64 %6648, i64* %PC.i178
  %6649 = inttoptr i64 %6646 to i32*
  store i32 1, i32* %6649
  store %struct.Memory* %loadMem_47cf6f, %struct.Memory** %MEMORY
  %loadMem_47cf79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 33
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6652 to i64*
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 9
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %RSI.i176 = bitcast %union.anon* %6655 to i64*
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 15
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %6658 to i64*
  %6659 = load i64, i64* %RBP.i177
  %6660 = sub i64 %6659, 1016
  %6661 = load i64, i64* %PC.i175
  %6662 = add i64 %6661, 7
  store i64 %6662, i64* %PC.i175
  %6663 = inttoptr i64 %6660 to i32*
  %6664 = load i32, i32* %6663
  %6665 = sext i32 %6664 to i64
  store i64 %6665, i64* %RSI.i176, align 8
  store %struct.Memory* %loadMem_47cf79, %struct.Memory** %MEMORY
  %loadMem_47cf80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 33
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6668 to i64*
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6670 = getelementptr inbounds %struct.GPR, %struct.GPR* %6669, i32 0, i32 9
  %6671 = getelementptr inbounds %struct.Reg, %struct.Reg* %6670, i32 0, i32 0
  %RSI.i174 = bitcast %union.anon* %6671 to i64*
  %6672 = load i64, i64* %RSI.i174
  %6673 = load i64, i64* %PC.i173
  %6674 = add i64 %6673, 7
  store i64 %6674, i64* %PC.i173
  %6675 = sext i64 %6672 to i128
  %6676 = and i128 %6675, -18446744073709551616
  %6677 = zext i64 %6672 to i128
  %6678 = or i128 %6676, %6677
  %6679 = mul i128 380, %6678
  %6680 = trunc i128 %6679 to i64
  store i64 %6680, i64* %RSI.i174, align 8
  %6681 = sext i64 %6680 to i128
  %6682 = icmp ne i128 %6681, %6679
  %6683 = zext i1 %6682 to i8
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6683, i8* %6684, align 1
  %6685 = trunc i128 %6679 to i32
  %6686 = and i32 %6685, 255
  %6687 = call i32 @llvm.ctpop.i32(i32 %6686)
  %6688 = trunc i32 %6687 to i8
  %6689 = and i8 %6688, 1
  %6690 = xor i8 %6689, 1
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6690, i8* %6691, align 1
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6692, align 1
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6693, align 1
  %6694 = lshr i64 %6680, 63
  %6695 = trunc i64 %6694 to i8
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6695, i8* %6696, align 1
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6683, i8* %6697, align 1
  store %struct.Memory* %loadMem_47cf80, %struct.Memory** %MEMORY
  %loadMem_47cf87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6699 = getelementptr inbounds %struct.GPR, %struct.GPR* %6698, i32 0, i32 33
  %6700 = getelementptr inbounds %struct.Reg, %struct.Reg* %6699, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6700 to i64*
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 5
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %6703 to i64*
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 9
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %RSI.i172 = bitcast %union.anon* %6706 to i64*
  %6707 = load i64, i64* %RCX.i171
  %6708 = load i64, i64* %RSI.i172
  %6709 = load i64, i64* %PC.i170
  %6710 = add i64 %6709, 3
  store i64 %6710, i64* %PC.i170
  %6711 = add i64 %6708, %6707
  store i64 %6711, i64* %RCX.i171, align 8
  %6712 = icmp ult i64 %6711, %6707
  %6713 = icmp ult i64 %6711, %6708
  %6714 = or i1 %6712, %6713
  %6715 = zext i1 %6714 to i8
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6715, i8* %6716, align 1
  %6717 = trunc i64 %6711 to i32
  %6718 = and i32 %6717, 255
  %6719 = call i32 @llvm.ctpop.i32(i32 %6718)
  %6720 = trunc i32 %6719 to i8
  %6721 = and i8 %6720, 1
  %6722 = xor i8 %6721, 1
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6722, i8* %6723, align 1
  %6724 = xor i64 %6708, %6707
  %6725 = xor i64 %6724, %6711
  %6726 = lshr i64 %6725, 4
  %6727 = trunc i64 %6726 to i8
  %6728 = and i8 %6727, 1
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6728, i8* %6729, align 1
  %6730 = icmp eq i64 %6711, 0
  %6731 = zext i1 %6730 to i8
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6731, i8* %6732, align 1
  %6733 = lshr i64 %6711, 63
  %6734 = trunc i64 %6733 to i8
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6734, i8* %6735, align 1
  %6736 = lshr i64 %6707, 63
  %6737 = lshr i64 %6708, 63
  %6738 = xor i64 %6733, %6736
  %6739 = xor i64 %6733, %6737
  %6740 = add i64 %6738, %6739
  %6741 = icmp eq i64 %6740, 2
  %6742 = zext i1 %6741 to i8
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6742, i8* %6743, align 1
  store %struct.Memory* %loadMem_47cf87, %struct.Memory** %MEMORY
  %loadMem_47cf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 33
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6746 to i64*
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6748 = getelementptr inbounds %struct.GPR, %struct.GPR* %6747, i32 0, i32 5
  %6749 = getelementptr inbounds %struct.Reg, %struct.Reg* %6748, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %6749 to i64*
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6751 = getelementptr inbounds %struct.GPR, %struct.GPR* %6750, i32 0, i32 11
  %6752 = getelementptr inbounds %struct.Reg, %struct.Reg* %6751, i32 0, i32 0
  %RDI.i169 = bitcast %union.anon* %6752 to i64*
  %6753 = load i64, i64* %RCX.i168
  %6754 = add i64 %6753, 140
  %6755 = load i64, i64* %PC.i167
  %6756 = add i64 %6755, 6
  store i64 %6756, i64* %PC.i167
  %6757 = inttoptr i64 %6754 to i32*
  %6758 = load i32, i32* %6757
  %6759 = zext i32 %6758 to i64
  store i64 %6759, i64* %RDI.i169, align 8
  store %struct.Memory* %loadMem_47cf8a, %struct.Memory** %MEMORY
  %loadMem_47cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6761 = getelementptr inbounds %struct.GPR, %struct.GPR* %6760, i32 0, i32 33
  %6762 = getelementptr inbounds %struct.Reg, %struct.Reg* %6761, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6762 to i64*
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 9
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %RSI.i165 = bitcast %union.anon* %6765 to i64*
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 15
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %6768 to i64*
  %6769 = load i64, i64* %RBP.i166
  %6770 = sub i64 %6769, 1000
  %6771 = load i64, i64* %PC.i164
  %6772 = add i64 %6771, 6
  store i64 %6772, i64* %PC.i164
  %6773 = inttoptr i64 %6770 to i32*
  %6774 = load i32, i32* %6773
  %6775 = zext i32 %6774 to i64
  store i64 %6775, i64* %RSI.i165, align 8
  store %struct.Memory* %loadMem_47cf90, %struct.Memory** %MEMORY
  %loadMem_47cf96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 33
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6778 to i64*
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 1
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %6781 to i32*
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6783 = getelementptr inbounds %struct.GPR, %struct.GPR* %6782, i32 0, i32 5
  %6784 = getelementptr inbounds %struct.Reg, %struct.Reg* %6783, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %6784 to i64*
  %6785 = load i32, i32* %EAX.i162
  %6786 = zext i32 %6785 to i64
  %6787 = load i64, i64* %PC.i161
  %6788 = add i64 %6787, 2
  store i64 %6788, i64* %PC.i161
  %6789 = and i64 %6786, 4294967295
  store i64 %6789, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_47cf96, %struct.Memory** %MEMORY
  %loadMem_47cf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6791 = getelementptr inbounds %struct.GPR, %struct.GPR* %6790, i32 0, i32 33
  %6792 = getelementptr inbounds %struct.Reg, %struct.Reg* %6791, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6792 to i64*
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 1
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %6795 to i32*
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 17
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %6798 to i32*
  %6799 = bitcast i32* %R8D.i to i64*
  %6800 = load i32, i32* %EAX.i160
  %6801 = zext i32 %6800 to i64
  %6802 = load i64, i64* %PC.i159
  %6803 = add i64 %6802, 3
  store i64 %6803, i64* %PC.i159
  %6804 = and i64 %6801, 4294967295
  store i64 %6804, i64* %6799, align 8
  store %struct.Memory* %loadMem_47cf98, %struct.Memory** %MEMORY
  %loadMem_47cf9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 33
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6807 to i64*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 1
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %6810 to i32*
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6812 = getelementptr inbounds %struct.GPR, %struct.GPR* %6811, i32 0, i32 19
  %6813 = getelementptr inbounds %struct.Reg, %struct.Reg* %6812, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %6813 to i32*
  %6814 = bitcast i32* %R9D.i to i64*
  %6815 = load i32, i32* %EAX.i158
  %6816 = zext i32 %6815 to i64
  %6817 = load i64, i64* %PC.i157
  %6818 = add i64 %6817, 3
  store i64 %6818, i64* %PC.i157
  %6819 = and i64 %6816, 4294967295
  store i64 %6819, i64* %6814, align 8
  store %struct.Memory* %loadMem_47cf9b, %struct.Memory** %MEMORY
  %loadMem1_47cf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 33
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %PC.i156
  %6824 = add i64 %6823, -475502
  %6825 = load i64, i64* %PC.i156
  %6826 = add i64 %6825, 5
  %6827 = load i64, i64* %PC.i156
  %6828 = add i64 %6827, 5
  store i64 %6828, i64* %PC.i156
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6830 = load i64, i64* %6829, align 8
  %6831 = add i64 %6830, -8
  %6832 = inttoptr i64 %6831 to i64*
  store i64 %6826, i64* %6832
  store i64 %6831, i64* %6829, align 8
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6824, i64* %6833, align 8
  store %struct.Memory* %loadMem1_47cf9e, %struct.Memory** %MEMORY
  %loadMem2_47cf9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cf9e = load i64, i64* %3
  %call2_47cf9e = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_47cf9e, %struct.Memory* %loadMem2_47cf9e)
  store %struct.Memory* %call2_47cf9e, %struct.Memory** %MEMORY
  %loadMem_47cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 1
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %6839 to i32*
  %6840 = load i32, i32* %EAX.i155
  %6841 = zext i32 %6840 to i64
  %6842 = load i64, i64* %PC.i154
  %6843 = add i64 %6842, 3
  store i64 %6843, i64* %PC.i154
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6844, align 1
  %6845 = and i32 %6840, 255
  %6846 = call i32 @llvm.ctpop.i32(i32 %6845)
  %6847 = trunc i32 %6846 to i8
  %6848 = and i8 %6847, 1
  %6849 = xor i8 %6848, 1
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6849, i8* %6850, align 1
  %6851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6851, align 1
  %6852 = icmp eq i32 %6840, 0
  %6853 = zext i1 %6852 to i8
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6853, i8* %6854, align 1
  %6855 = lshr i32 %6840, 31
  %6856 = trunc i32 %6855 to i8
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6856, i8* %6857, align 1
  %6858 = lshr i32 %6840, 31
  %6859 = xor i32 %6855, %6858
  %6860 = add i32 %6859, %6858
  %6861 = icmp eq i32 %6860, 2
  %6862 = zext i1 %6861 to i8
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6862, i8* %6863, align 1
  store %struct.Memory* %loadMem_47cfa3, %struct.Memory** %MEMORY
  %loadMem_47cfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6865 = getelementptr inbounds %struct.GPR, %struct.GPR* %6864, i32 0, i32 33
  %6866 = getelementptr inbounds %struct.Reg, %struct.Reg* %6865, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %6866 to i64*
  %6867 = load i64, i64* %PC.i153
  %6868 = add i64 %6867, 129
  %6869 = load i64, i64* %PC.i153
  %6870 = add i64 %6869, 6
  %6871 = load i64, i64* %PC.i153
  %6872 = add i64 %6871, 6
  store i64 %6872, i64* %PC.i153
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6874 = load i8, i8* %6873, align 1
  store i8 %6874, i8* %BRANCH_TAKEN, align 1
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6876 = icmp ne i8 %6874, 0
  %6877 = select i1 %6876, i64 %6868, i64 %6870
  store i64 %6877, i64* %6875, align 8
  store %struct.Memory* %loadMem_47cfa6, %struct.Memory** %MEMORY
  %loadBr_47cfa6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cfa6 = icmp eq i8 %loadBr_47cfa6, 1
  br i1 %cmpBr_47cfa6, label %block_.L_47d027, label %block_47cfac

block_47cfac:                                     ; preds = %block_47cf59
  %loadMem_47cfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6879 = getelementptr inbounds %struct.GPR, %struct.GPR* %6878, i32 0, i32 33
  %6880 = getelementptr inbounds %struct.Reg, %struct.Reg* %6879, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6880 to i64*
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6882 = getelementptr inbounds %struct.GPR, %struct.GPR* %6881, i32 0, i32 1
  %6883 = getelementptr inbounds %struct.Reg, %struct.Reg* %6882, i32 0, i32 0
  %EAX.i151 = bitcast %union.anon* %6883 to i32*
  %6884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6885 = getelementptr inbounds %struct.GPR, %struct.GPR* %6884, i32 0, i32 1
  %6886 = getelementptr inbounds %struct.Reg, %struct.Reg* %6885, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %6886 to i64*
  %6887 = load i64, i64* %RAX.i152
  %6888 = load i32, i32* %EAX.i151
  %6889 = zext i32 %6888 to i64
  %6890 = load i64, i64* %PC.i150
  %6891 = add i64 %6890, 2
  store i64 %6891, i64* %PC.i150
  %6892 = xor i64 %6889, %6887
  %6893 = trunc i64 %6892 to i32
  %6894 = and i64 %6892, 4294967295
  store i64 %6894, i64* %RAX.i152, align 8
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6895, align 1
  %6896 = and i32 %6893, 255
  %6897 = call i32 @llvm.ctpop.i32(i32 %6896)
  %6898 = trunc i32 %6897 to i8
  %6899 = and i8 %6898, 1
  %6900 = xor i8 %6899, 1
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6900, i8* %6901, align 1
  %6902 = icmp eq i32 %6893, 0
  %6903 = zext i1 %6902 to i8
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6903, i8* %6904, align 1
  %6905 = lshr i32 %6893, 31
  %6906 = trunc i32 %6905 to i8
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6906, i8* %6907, align 1
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6908, align 1
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6909, align 1
  store %struct.Memory* %loadMem_47cfac, %struct.Memory** %MEMORY
  %loadMem_47cfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6911 = getelementptr inbounds %struct.GPR, %struct.GPR* %6910, i32 0, i32 33
  %6912 = getelementptr inbounds %struct.Reg, %struct.Reg* %6911, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %6912 to i64*
  %6913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6914 = getelementptr inbounds %struct.GPR, %struct.GPR* %6913, i32 0, i32 1
  %6915 = getelementptr inbounds %struct.Reg, %struct.Reg* %6914, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %6915 to i32*
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6917 = getelementptr inbounds %struct.GPR, %struct.GPR* %6916, i32 0, i32 9
  %6918 = getelementptr inbounds %struct.Reg, %struct.Reg* %6917, i32 0, i32 0
  %RSI.i149 = bitcast %union.anon* %6918 to i64*
  %6919 = load i32, i32* %EAX.i148
  %6920 = zext i32 %6919 to i64
  %6921 = load i64, i64* %PC.i147
  %6922 = add i64 %6921, 2
  store i64 %6922, i64* %PC.i147
  %6923 = and i64 %6920, 4294967295
  store i64 %6923, i64* %RSI.i149, align 8
  store %struct.Memory* %loadMem_47cfae, %struct.Memory** %MEMORY
  %loadMem_47cfb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 33
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6926 to i64*
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6928 = getelementptr inbounds %struct.GPR, %struct.GPR* %6927, i32 0, i32 11
  %6929 = getelementptr inbounds %struct.Reg, %struct.Reg* %6928, i32 0, i32 0
  %RDI.i145 = bitcast %union.anon* %6929 to i64*
  %6930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6931 = getelementptr inbounds %struct.GPR, %struct.GPR* %6930, i32 0, i32 15
  %6932 = getelementptr inbounds %struct.Reg, %struct.Reg* %6931, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %6932 to i64*
  %6933 = load i64, i64* %RBP.i146
  %6934 = sub i64 %6933, 1016
  %6935 = load i64, i64* %PC.i144
  %6936 = add i64 %6935, 6
  store i64 %6936, i64* %PC.i144
  %6937 = inttoptr i64 %6934 to i32*
  %6938 = load i32, i32* %6937
  %6939 = zext i32 %6938 to i64
  store i64 %6939, i64* %RDI.i145, align 8
  store %struct.Memory* %loadMem_47cfb0, %struct.Memory** %MEMORY
  %loadMem1_47cfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6941 = getelementptr inbounds %struct.GPR, %struct.GPR* %6940, i32 0, i32 33
  %6942 = getelementptr inbounds %struct.Reg, %struct.Reg* %6941, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6942 to i64*
  %6943 = load i64, i64* %PC.i143
  %6944 = add i64 %6943, -128118
  %6945 = load i64, i64* %PC.i143
  %6946 = add i64 %6945, 5
  %6947 = load i64, i64* %PC.i143
  %6948 = add i64 %6947, 5
  store i64 %6948, i64* %PC.i143
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6950 = load i64, i64* %6949, align 8
  %6951 = add i64 %6950, -8
  %6952 = inttoptr i64 %6951 to i64*
  store i64 %6946, i64* %6952
  store i64 %6951, i64* %6949, align 8
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6944, i64* %6953, align 8
  store %struct.Memory* %loadMem1_47cfb6, %struct.Memory** %MEMORY
  %loadMem2_47cfb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47cfb6 = load i64, i64* %3
  %call2_47cfb6 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_47cfb6, %struct.Memory* %loadMem2_47cfb6)
  store %struct.Memory* %call2_47cfb6, %struct.Memory** %MEMORY
  %loadMem_47cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 33
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %6956 to i64*
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6958 = getelementptr inbounds %struct.GPR, %struct.GPR* %6957, i32 0, i32 11
  %6959 = getelementptr inbounds %struct.Reg, %struct.Reg* %6958, i32 0, i32 0
  %RDI.i142 = bitcast %union.anon* %6959 to i64*
  %6960 = load i64, i64* %PC.i141
  %6961 = add i64 %6960, 5
  store i64 %6961, i64* %PC.i141
  store i64 5, i64* %RDI.i142, align 8
  store %struct.Memory* %loadMem_47cfbb, %struct.Memory** %MEMORY
  %loadMem_47cfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6963 = getelementptr inbounds %struct.GPR, %struct.GPR* %6962, i32 0, i32 33
  %6964 = getelementptr inbounds %struct.Reg, %struct.Reg* %6963, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6964 to i64*
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6966 = getelementptr inbounds %struct.GPR, %struct.GPR* %6965, i32 0, i32 1
  %6967 = getelementptr inbounds %struct.Reg, %struct.Reg* %6966, i32 0, i32 0
  %EAX.i139 = bitcast %union.anon* %6967 to i32*
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 11
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %RDI.i140 = bitcast %union.anon* %6970 to i64*
  %6971 = load i64, i64* %RDI.i140
  %6972 = load i32, i32* %EAX.i139
  %6973 = zext i32 %6972 to i64
  %6974 = load i64, i64* %PC.i138
  %6975 = add i64 %6974, 2
  store i64 %6975, i64* %PC.i138
  %6976 = trunc i64 %6971 to i32
  %6977 = sub i32 %6976, %6972
  %6978 = zext i32 %6977 to i64
  store i64 %6978, i64* %RDI.i140, align 8
  %6979 = icmp ult i32 %6976, %6972
  %6980 = zext i1 %6979 to i8
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6980, i8* %6981, align 1
  %6982 = and i32 %6977, 255
  %6983 = call i32 @llvm.ctpop.i32(i32 %6982)
  %6984 = trunc i32 %6983 to i8
  %6985 = and i8 %6984, 1
  %6986 = xor i8 %6985, 1
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6986, i8* %6987, align 1
  %6988 = xor i64 %6973, %6971
  %6989 = trunc i64 %6988 to i32
  %6990 = xor i32 %6989, %6977
  %6991 = lshr i32 %6990, 4
  %6992 = trunc i32 %6991 to i8
  %6993 = and i8 %6992, 1
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6993, i8* %6994, align 1
  %6995 = icmp eq i32 %6977, 0
  %6996 = zext i1 %6995 to i8
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6996, i8* %6997, align 1
  %6998 = lshr i32 %6977, 31
  %6999 = trunc i32 %6998 to i8
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6999, i8* %7000, align 1
  %7001 = lshr i32 %6976, 31
  %7002 = lshr i32 %6972, 31
  %7003 = xor i32 %7002, %7001
  %7004 = xor i32 %6998, %7001
  %7005 = add i32 %7004, %7003
  %7006 = icmp eq i32 %7005, 2
  %7007 = zext i1 %7006 to i8
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7007, i8* %7008, align 1
  store %struct.Memory* %loadMem_47cfc0, %struct.Memory** %MEMORY
  %loadMem_47cfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7010 = getelementptr inbounds %struct.GPR, %struct.GPR* %7009, i32 0, i32 33
  %7011 = getelementptr inbounds %struct.Reg, %struct.Reg* %7010, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7011 to i64*
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7013 = getelementptr inbounds %struct.GPR, %struct.GPR* %7012, i32 0, i32 11
  %7014 = getelementptr inbounds %struct.Reg, %struct.Reg* %7013, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7014 to i32*
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7016 = getelementptr inbounds %struct.GPR, %struct.GPR* %7015, i32 0, i32 15
  %7017 = getelementptr inbounds %struct.Reg, %struct.Reg* %7016, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %7017 to i64*
  %7018 = load i64, i64* %RBP.i137
  %7019 = sub i64 %7018, 1040
  %7020 = load i32, i32* %EDI.i
  %7021 = zext i32 %7020 to i64
  %7022 = load i64, i64* %PC.i136
  %7023 = add i64 %7022, 6
  store i64 %7023, i64* %PC.i136
  %7024 = inttoptr i64 %7019 to i32*
  store i32 %7020, i32* %7024
  store %struct.Memory* %loadMem_47cfc2, %struct.Memory** %MEMORY
  %loadMem_47cfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 33
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %7027 to i64*
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7029 = getelementptr inbounds %struct.GPR, %struct.GPR* %7028, i32 0, i32 1
  %7030 = getelementptr inbounds %struct.Reg, %struct.Reg* %7029, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %7030 to i64*
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7032 = getelementptr inbounds %struct.GPR, %struct.GPR* %7031, i32 0, i32 15
  %7033 = getelementptr inbounds %struct.Reg, %struct.Reg* %7032, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %7033 to i64*
  %7034 = load i64, i64* %RBP.i135
  %7035 = sub i64 %7034, 1040
  %7036 = load i64, i64* %PC.i133
  %7037 = add i64 %7036, 6
  store i64 %7037, i64* %PC.i133
  %7038 = inttoptr i64 %7035 to i32*
  %7039 = load i32, i32* %7038
  %7040 = zext i32 %7039 to i64
  store i64 %7040, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_47cfc8, %struct.Memory** %MEMORY
  %loadMem_47cfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 33
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 1
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %EAX.i131 = bitcast %union.anon* %7046 to i32*
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7048 = getelementptr inbounds %struct.GPR, %struct.GPR* %7047, i32 0, i32 15
  %7049 = getelementptr inbounds %struct.Reg, %struct.Reg* %7048, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %7049 to i64*
  %7050 = load i32, i32* %EAX.i131
  %7051 = zext i32 %7050 to i64
  %7052 = load i64, i64* %RBP.i132
  %7053 = sub i64 %7052, 1032
  %7054 = load i64, i64* %PC.i130
  %7055 = add i64 %7054, 6
  store i64 %7055, i64* %PC.i130
  %7056 = inttoptr i64 %7053 to i32*
  %7057 = load i32, i32* %7056
  %7058 = sub i32 %7050, %7057
  %7059 = icmp ult i32 %7050, %7057
  %7060 = zext i1 %7059 to i8
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7060, i8* %7061, align 1
  %7062 = and i32 %7058, 255
  %7063 = call i32 @llvm.ctpop.i32(i32 %7062)
  %7064 = trunc i32 %7063 to i8
  %7065 = and i8 %7064, 1
  %7066 = xor i8 %7065, 1
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7066, i8* %7067, align 1
  %7068 = xor i32 %7057, %7050
  %7069 = xor i32 %7068, %7058
  %7070 = lshr i32 %7069, 4
  %7071 = trunc i32 %7070 to i8
  %7072 = and i8 %7071, 1
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7072, i8* %7073, align 1
  %7074 = icmp eq i32 %7058, 0
  %7075 = zext i1 %7074 to i8
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7075, i8* %7076, align 1
  %7077 = lshr i32 %7058, 31
  %7078 = trunc i32 %7077 to i8
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7078, i8* %7079, align 1
  %7080 = lshr i32 %7050, 31
  %7081 = lshr i32 %7057, 31
  %7082 = xor i32 %7081, %7080
  %7083 = xor i32 %7077, %7080
  %7084 = add i32 %7083, %7082
  %7085 = icmp eq i32 %7084, 2
  %7086 = zext i1 %7085 to i8
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7086, i8* %7087, align 1
  store %struct.Memory* %loadMem_47cfce, %struct.Memory** %MEMORY
  %loadMem_47cfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7089 = getelementptr inbounds %struct.GPR, %struct.GPR* %7088, i32 0, i32 33
  %7090 = getelementptr inbounds %struct.Reg, %struct.Reg* %7089, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7090 to i64*
  %7091 = load i64, i64* %PC.i129
  %7092 = add i64 %7091, 78
  %7093 = load i64, i64* %PC.i129
  %7094 = add i64 %7093, 6
  %7095 = load i64, i64* %PC.i129
  %7096 = add i64 %7095, 6
  store i64 %7096, i64* %PC.i129
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7098 = load i8, i8* %7097, align 1
  %7099 = icmp ne i8 %7098, 0
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7101 = load i8, i8* %7100, align 1
  %7102 = icmp ne i8 %7101, 0
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7104 = load i8, i8* %7103, align 1
  %7105 = icmp ne i8 %7104, 0
  %7106 = xor i1 %7102, %7105
  %7107 = or i1 %7099, %7106
  %7108 = zext i1 %7107 to i8
  store i8 %7108, i8* %BRANCH_TAKEN, align 1
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7110 = select i1 %7107, i64 %7092, i64 %7094
  store i64 %7110, i64* %7109, align 8
  store %struct.Memory* %loadMem_47cfd4, %struct.Memory** %MEMORY
  %loadBr_47cfd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cfd4 = icmp eq i8 %loadBr_47cfd4, 1
  br i1 %cmpBr_47cfd4, label %block_.L_47d022, label %block_47cfda

block_47cfda:                                     ; preds = %block_47cfac
  %loadMem_47cfda = load %struct.Memory*, %struct.Memory** %MEMORY
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7112 = getelementptr inbounds %struct.GPR, %struct.GPR* %7111, i32 0, i32 33
  %7113 = getelementptr inbounds %struct.Reg, %struct.Reg* %7112, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7113 to i64*
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7115 = getelementptr inbounds %struct.GPR, %struct.GPR* %7114, i32 0, i32 1
  %7116 = getelementptr inbounds %struct.Reg, %struct.Reg* %7115, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %7116 to i64*
  %7117 = load i64, i64* %PC.i127
  %7118 = add i64 %7117, 10
  store i64 %7118, i64* %PC.i127
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_47cfda, %struct.Memory** %MEMORY
  %loadMem_47cfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7120 = getelementptr inbounds %struct.GPR, %struct.GPR* %7119, i32 0, i32 33
  %7121 = getelementptr inbounds %struct.Reg, %struct.Reg* %7120, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %7121 to i64*
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 5
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %RCX.i125 = bitcast %union.anon* %7124 to i64*
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 15
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %7127 to i64*
  %7128 = load i64, i64* %RBP.i126
  %7129 = sub i64 %7128, 1040
  %7130 = load i64, i64* %PC.i124
  %7131 = add i64 %7130, 6
  store i64 %7131, i64* %PC.i124
  %7132 = inttoptr i64 %7129 to i32*
  %7133 = load i32, i32* %7132
  %7134 = zext i32 %7133 to i64
  store i64 %7134, i64* %RCX.i125, align 8
  store %struct.Memory* %loadMem_47cfe4, %struct.Memory** %MEMORY
  %loadMem_47cfea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 5
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %ECX.i122 = bitcast %union.anon* %7140 to i32*
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 15
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %7143 to i64*
  %7144 = load i64, i64* %RBP.i123
  %7145 = sub i64 %7144, 1032
  %7146 = load i32, i32* %ECX.i122
  %7147 = zext i32 %7146 to i64
  %7148 = load i64, i64* %PC.i121
  %7149 = add i64 %7148, 6
  store i64 %7149, i64* %PC.i121
  %7150 = inttoptr i64 %7145 to i32*
  store i32 %7146, i32* %7150
  store %struct.Memory* %loadMem_47cfea, %struct.Memory** %MEMORY
  %loadMem_47cff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 33
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 5
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %7156 to i64*
  %7157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7158 = getelementptr inbounds %struct.GPR, %struct.GPR* %7157, i32 0, i32 15
  %7159 = getelementptr inbounds %struct.Reg, %struct.Reg* %7158, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %7159 to i64*
  %7160 = load i64, i64* %RBP.i120
  %7161 = sub i64 %7160, 1032
  %7162 = load i64, i64* %PC.i118
  %7163 = add i64 %7162, 6
  store i64 %7163, i64* %PC.i118
  %7164 = inttoptr i64 %7161 to i32*
  %7165 = load i32, i32* %7164
  %7166 = zext i32 %7165 to i64
  store i64 %7166, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_47cff0, %struct.Memory** %MEMORY
  %loadMem_47cff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 7
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %7172 to i64*
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7174 = getelementptr inbounds %struct.GPR, %struct.GPR* %7173, i32 0, i32 15
  %7175 = getelementptr inbounds %struct.Reg, %struct.Reg* %7174, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %7175 to i64*
  %7176 = load i64, i64* %RBP.i117
  %7177 = sub i64 %7176, 1016
  %7178 = load i64, i64* %PC.i115
  %7179 = add i64 %7178, 7
  store i64 %7179, i64* %PC.i115
  %7180 = inttoptr i64 %7177 to i32*
  %7181 = load i32, i32* %7180
  %7182 = sext i32 %7181 to i64
  store i64 %7182, i64* %RDX.i116, align 8
  store %struct.Memory* %loadMem_47cff6, %struct.Memory** %MEMORY
  %loadMem_47cffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 7
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RDX.i114
  %7190 = load i64, i64* %PC.i113
  %7191 = add i64 %7190, 7
  store i64 %7191, i64* %PC.i113
  %7192 = sext i64 %7189 to i128
  %7193 = and i128 %7192, -18446744073709551616
  %7194 = zext i64 %7189 to i128
  %7195 = or i128 %7193, %7194
  %7196 = mul i128 380, %7195
  %7197 = trunc i128 %7196 to i64
  store i64 %7197, i64* %RDX.i114, align 8
  %7198 = sext i64 %7197 to i128
  %7199 = icmp ne i128 %7198, %7196
  %7200 = zext i1 %7199 to i8
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7200, i8* %7201, align 1
  %7202 = trunc i128 %7196 to i32
  %7203 = and i32 %7202, 255
  %7204 = call i32 @llvm.ctpop.i32(i32 %7203)
  %7205 = trunc i32 %7204 to i8
  %7206 = and i8 %7205, 1
  %7207 = xor i8 %7206, 1
  %7208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7207, i8* %7208, align 1
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7209, align 1
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7210, align 1
  %7211 = lshr i64 %7197, 63
  %7212 = trunc i64 %7211 to i8
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7212, i8* %7213, align 1
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7200, i8* %7214, align 1
  store %struct.Memory* %loadMem_47cffd, %struct.Memory** %MEMORY
  %loadMem_47d004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 33
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7217 to i64*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 1
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %7220 to i64*
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 7
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %7223 to i64*
  %7224 = load i64, i64* %RAX.i111
  %7225 = load i64, i64* %RDX.i112
  %7226 = load i64, i64* %PC.i110
  %7227 = add i64 %7226, 3
  store i64 %7227, i64* %PC.i110
  %7228 = add i64 %7225, %7224
  store i64 %7228, i64* %RAX.i111, align 8
  %7229 = icmp ult i64 %7228, %7224
  %7230 = icmp ult i64 %7228, %7225
  %7231 = or i1 %7229, %7230
  %7232 = zext i1 %7231 to i8
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7232, i8* %7233, align 1
  %7234 = trunc i64 %7228 to i32
  %7235 = and i32 %7234, 255
  %7236 = call i32 @llvm.ctpop.i32(i32 %7235)
  %7237 = trunc i32 %7236 to i8
  %7238 = and i8 %7237, 1
  %7239 = xor i8 %7238, 1
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7239, i8* %7240, align 1
  %7241 = xor i64 %7225, %7224
  %7242 = xor i64 %7241, %7228
  %7243 = lshr i64 %7242, 4
  %7244 = trunc i64 %7243 to i8
  %7245 = and i8 %7244, 1
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7245, i8* %7246, align 1
  %7247 = icmp eq i64 %7228, 0
  %7248 = zext i1 %7247 to i8
  %7249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7248, i8* %7249, align 1
  %7250 = lshr i64 %7228, 63
  %7251 = trunc i64 %7250 to i8
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7251, i8* %7252, align 1
  %7253 = lshr i64 %7224, 63
  %7254 = lshr i64 %7225, 63
  %7255 = xor i64 %7250, %7253
  %7256 = xor i64 %7250, %7254
  %7257 = add i64 %7255, %7256
  %7258 = icmp eq i64 %7257, 2
  %7259 = zext i1 %7258 to i8
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7259, i8* %7260, align 1
  store %struct.Memory* %loadMem_47d004, %struct.Memory** %MEMORY
  %loadMem_47d007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7262 = getelementptr inbounds %struct.GPR, %struct.GPR* %7261, i32 0, i32 33
  %7263 = getelementptr inbounds %struct.Reg, %struct.Reg* %7262, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7263 to i64*
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 5
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7266 to i32*
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 1
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %7269 to i64*
  %7270 = load i32, i32* %ECX.i
  %7271 = zext i32 %7270 to i64
  %7272 = load i64, i64* %RAX.i109
  %7273 = add i64 %7272, 180
  %7274 = load i64, i64* %PC.i108
  %7275 = add i64 %7274, 6
  store i64 %7275, i64* %PC.i108
  %7276 = inttoptr i64 %7273 to i32*
  %7277 = load i32, i32* %7276
  %7278 = sub i32 %7270, %7277
  %7279 = icmp ult i32 %7270, %7277
  %7280 = zext i1 %7279 to i8
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7280, i8* %7281, align 1
  %7282 = and i32 %7278, 255
  %7283 = call i32 @llvm.ctpop.i32(i32 %7282)
  %7284 = trunc i32 %7283 to i8
  %7285 = and i8 %7284, 1
  %7286 = xor i8 %7285, 1
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7286, i8* %7287, align 1
  %7288 = xor i32 %7277, %7270
  %7289 = xor i32 %7288, %7278
  %7290 = lshr i32 %7289, 4
  %7291 = trunc i32 %7290 to i8
  %7292 = and i8 %7291, 1
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7292, i8* %7293, align 1
  %7294 = icmp eq i32 %7278, 0
  %7295 = zext i1 %7294 to i8
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7295, i8* %7296, align 1
  %7297 = lshr i32 %7278, 31
  %7298 = trunc i32 %7297 to i8
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7298, i8* %7299, align 1
  %7300 = lshr i32 %7270, 31
  %7301 = lshr i32 %7277, 31
  %7302 = xor i32 %7301, %7300
  %7303 = xor i32 %7297, %7300
  %7304 = add i32 %7303, %7302
  %7305 = icmp eq i32 %7304, 2
  %7306 = zext i1 %7305 to i8
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7306, i8* %7307, align 1
  store %struct.Memory* %loadMem_47d007, %struct.Memory** %MEMORY
  %loadMem_47d00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 33
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7310 to i64*
  %7311 = load i64, i64* %PC.i107
  %7312 = add i64 %7311, 16
  %7313 = load i64, i64* %PC.i107
  %7314 = add i64 %7313, 6
  %7315 = load i64, i64* %PC.i107
  %7316 = add i64 %7315, 6
  store i64 %7316, i64* %PC.i107
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7318 = load i8, i8* %7317, align 1
  %7319 = icmp ne i8 %7318, 0
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7321 = load i8, i8* %7320, align 1
  %7322 = icmp ne i8 %7321, 0
  %7323 = xor i1 %7319, %7322
  %7324 = zext i1 %7323 to i8
  store i8 %7324, i8* %BRANCH_TAKEN, align 1
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7326 = select i1 %7323, i64 %7312, i64 %7314
  store i64 %7326, i64* %7325, align 8
  store %struct.Memory* %loadMem_47d00d, %struct.Memory** %MEMORY
  %loadBr_47d00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d00d = icmp eq i8 %loadBr_47d00d, 1
  br i1 %cmpBr_47d00d, label %block_.L_47d01d, label %block_47d013

block_47d013:                                     ; preds = %block_47cfda
  %loadMem_47d013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7328 = getelementptr inbounds %struct.GPR, %struct.GPR* %7327, i32 0, i32 33
  %7329 = getelementptr inbounds %struct.Reg, %struct.Reg* %7328, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7329 to i64*
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 15
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %7332 to i64*
  %7333 = load i64, i64* %RBP.i106
  %7334 = sub i64 %7333, 1036
  %7335 = load i64, i64* %PC.i105
  %7336 = add i64 %7335, 10
  store i64 %7336, i64* %PC.i105
  %7337 = inttoptr i64 %7334 to i32*
  store i32 0, i32* %7337
  store %struct.Memory* %loadMem_47d013, %struct.Memory** %MEMORY
  br label %block_.L_47d01d

block_.L_47d01d:                                  ; preds = %block_47d013, %block_47cfda
  %loadMem_47d01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7339 = getelementptr inbounds %struct.GPR, %struct.GPR* %7338, i32 0, i32 33
  %7340 = getelementptr inbounds %struct.Reg, %struct.Reg* %7339, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %7340 to i64*
  %7341 = load i64, i64* %PC.i104
  %7342 = add i64 %7341, 5
  %7343 = load i64, i64* %PC.i104
  %7344 = add i64 %7343, 5
  store i64 %7344, i64* %PC.i104
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7342, i64* %7345, align 8
  store %struct.Memory* %loadMem_47d01d, %struct.Memory** %MEMORY
  br label %block_.L_47d022

block_.L_47d022:                                  ; preds = %block_.L_47d01d, %block_47cfac
  %loadMem1_47d022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 33
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %7348 to i64*
  %7349 = load i64, i64* %PC.i103
  %7350 = add i64 %7349, -455362
  %7351 = load i64, i64* %PC.i103
  %7352 = add i64 %7351, 5
  %7353 = load i64, i64* %PC.i103
  %7354 = add i64 %7353, 5
  store i64 %7354, i64* %PC.i103
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7356 = load i64, i64* %7355, align 8
  %7357 = add i64 %7356, -8
  %7358 = inttoptr i64 %7357 to i64*
  store i64 %7352, i64* %7358
  store i64 %7357, i64* %7355, align 8
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7350, i64* %7359, align 8
  store %struct.Memory* %loadMem1_47d022, %struct.Memory** %MEMORY
  %loadMem2_47d022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d022 = load i64, i64* %3
  %call2_47d022 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_47d022, %struct.Memory* %loadMem2_47d022)
  store %struct.Memory* %call2_47d022, %struct.Memory** %MEMORY
  br label %block_.L_47d027

block_.L_47d027:                                  ; preds = %block_.L_47d022, %block_47cf59
  %loadMem_47d027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 33
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7362 to i64*
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7364 = getelementptr inbounds %struct.GPR, %struct.GPR* %7363, i32 0, i32 15
  %7365 = getelementptr inbounds %struct.Reg, %struct.Reg* %7364, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %7365 to i64*
  %7366 = load i64, i64* %RBP.i102
  %7367 = sub i64 %7366, 1036
  %7368 = load i64, i64* %PC.i101
  %7369 = add i64 %7368, 7
  store i64 %7369, i64* %PC.i101
  %7370 = inttoptr i64 %7367 to i32*
  %7371 = load i32, i32* %7370
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7372, align 1
  %7373 = and i32 %7371, 255
  %7374 = call i32 @llvm.ctpop.i32(i32 %7373)
  %7375 = trunc i32 %7374 to i8
  %7376 = and i8 %7375, 1
  %7377 = xor i8 %7376, 1
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7377, i8* %7378, align 1
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7379, align 1
  %7380 = icmp eq i32 %7371, 0
  %7381 = zext i1 %7380 to i8
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7381, i8* %7382, align 1
  %7383 = lshr i32 %7371, 31
  %7384 = trunc i32 %7383 to i8
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7384, i8* %7385, align 1
  %7386 = lshr i32 %7371, 31
  %7387 = xor i32 %7383, %7386
  %7388 = add i32 %7387, %7386
  %7389 = icmp eq i32 %7388, 2
  %7390 = zext i1 %7389 to i8
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7390, i8* %7391, align 1
  store %struct.Memory* %loadMem_47d027, %struct.Memory** %MEMORY
  %loadMem_47d02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 33
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %7394 to i64*
  %7395 = load i64, i64* %PC.i100
  %7396 = add i64 %7395, 173
  %7397 = load i64, i64* %PC.i100
  %7398 = add i64 %7397, 6
  %7399 = load i64, i64* %PC.i100
  %7400 = add i64 %7399, 6
  store i64 %7400, i64* %PC.i100
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7402 = load i8, i8* %7401, align 1
  store i8 %7402, i8* %BRANCH_TAKEN, align 1
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7404 = icmp ne i8 %7402, 0
  %7405 = select i1 %7404, i64 %7396, i64 %7398
  store i64 %7405, i64* %7403, align 8
  store %struct.Memory* %loadMem_47d02e, %struct.Memory** %MEMORY
  %loadBr_47d02e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d02e = icmp eq i8 %loadBr_47d02e, 1
  br i1 %cmpBr_47d02e, label %block_.L_47d0db, label %block_47d034

block_47d034:                                     ; preds = %block_.L_47d027
  %loadMem_47d034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 33
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7408 to i64*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 15
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %7411 to i64*
  %7412 = load i64, i64* %RBP.i99
  %7413 = sub i64 %7412, 1004
  %7414 = load i64, i64* %PC.i98
  %7415 = add i64 %7414, 7
  store i64 %7415, i64* %PC.i98
  %7416 = inttoptr i64 %7413 to i32*
  %7417 = load i32, i32* %7416
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7418, align 1
  %7419 = and i32 %7417, 255
  %7420 = call i32 @llvm.ctpop.i32(i32 %7419)
  %7421 = trunc i32 %7420 to i8
  %7422 = and i8 %7421, 1
  %7423 = xor i8 %7422, 1
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7423, i8* %7424, align 1
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7425, align 1
  %7426 = icmp eq i32 %7417, 0
  %7427 = zext i1 %7426 to i8
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7427, i8* %7428, align 1
  %7429 = lshr i32 %7417, 31
  %7430 = trunc i32 %7429 to i8
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7430, i8* %7431, align 1
  %7432 = lshr i32 %7417, 31
  %7433 = xor i32 %7429, %7432
  %7434 = add i32 %7433, %7432
  %7435 = icmp eq i32 %7434, 2
  %7436 = zext i1 %7435 to i8
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7436, i8* %7437, align 1
  store %struct.Memory* %loadMem_47d034, %struct.Memory** %MEMORY
  %loadMem_47d03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 33
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %7440 to i64*
  %7441 = load i64, i64* %PC.i97
  %7442 = add i64 %7441, 53
  %7443 = load i64, i64* %PC.i97
  %7444 = add i64 %7443, 6
  %7445 = load i64, i64* %PC.i97
  %7446 = add i64 %7445, 6
  store i64 %7446, i64* %PC.i97
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7448 = load i8, i8* %7447, align 1
  %7449 = icmp eq i8 %7448, 0
  %7450 = zext i1 %7449 to i8
  store i8 %7450, i8* %BRANCH_TAKEN, align 1
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7452 = select i1 %7449, i64 %7442, i64 %7444
  store i64 %7452, i64* %7451, align 8
  store %struct.Memory* %loadMem_47d03b, %struct.Memory** %MEMORY
  %loadBr_47d03b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d03b = icmp eq i8 %loadBr_47d03b, 1
  br i1 %cmpBr_47d03b, label %block_.L_47d070, label %block_47d041

block_47d041:                                     ; preds = %block_47d034
  %loadMem_47d041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 33
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7455 to i64*
  %7456 = load i64, i64* %PC.i96
  %7457 = add i64 %7456, 8
  store i64 %7457, i64* %PC.i96
  %7458 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7459, align 1
  %7460 = and i32 %7458, 255
  %7461 = call i32 @llvm.ctpop.i32(i32 %7460)
  %7462 = trunc i32 %7461 to i8
  %7463 = and i8 %7462, 1
  %7464 = xor i8 %7463, 1
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7464, i8* %7465, align 1
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7466, align 1
  %7467 = icmp eq i32 %7458, 0
  %7468 = zext i1 %7467 to i8
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7468, i8* %7469, align 1
  %7470 = lshr i32 %7458, 31
  %7471 = trunc i32 %7470 to i8
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7471, i8* %7472, align 1
  %7473 = lshr i32 %7458, 31
  %7474 = xor i32 %7470, %7473
  %7475 = add i32 %7474, %7473
  %7476 = icmp eq i32 %7475, 2
  %7477 = zext i1 %7476 to i8
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7477, i8* %7478, align 1
  store %struct.Memory* %loadMem_47d041, %struct.Memory** %MEMORY
  %loadMem_47d049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7480 = getelementptr inbounds %struct.GPR, %struct.GPR* %7479, i32 0, i32 33
  %7481 = getelementptr inbounds %struct.Reg, %struct.Reg* %7480, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7481 to i64*
  %7482 = load i64, i64* %PC.i95
  %7483 = add i64 %7482, 11
  %7484 = load i64, i64* %PC.i95
  %7485 = add i64 %7484, 6
  %7486 = load i64, i64* %PC.i95
  %7487 = add i64 %7486, 6
  store i64 %7487, i64* %PC.i95
  %7488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7489 = load i8, i8* %7488, align 1
  %7490 = icmp eq i8 %7489, 0
  %7491 = zext i1 %7490 to i8
  store i8 %7491, i8* %BRANCH_TAKEN, align 1
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7493 = select i1 %7490, i64 %7483, i64 %7485
  store i64 %7493, i64* %7492, align 8
  store %struct.Memory* %loadMem_47d049, %struct.Memory** %MEMORY
  %loadBr_47d049 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d049 = icmp eq i8 %loadBr_47d049, 1
  br i1 %cmpBr_47d049, label %block_.L_47d054, label %block_47d04f

block_47d04f:                                     ; preds = %block_47d041
  %loadMem_47d04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7495 = getelementptr inbounds %struct.GPR, %struct.GPR* %7494, i32 0, i32 33
  %7496 = getelementptr inbounds %struct.Reg, %struct.Reg* %7495, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %7496 to i64*
  %7497 = load i64, i64* %PC.i94
  %7498 = add i64 %7497, 28
  %7499 = load i64, i64* %PC.i94
  %7500 = add i64 %7499, 5
  store i64 %7500, i64* %PC.i94
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7498, i64* %7501, align 8
  store %struct.Memory* %loadMem_47d04f, %struct.Memory** %MEMORY
  br label %block_.L_47d06b

block_.L_47d054:                                  ; preds = %block_47d041
  %loadMem_47d054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7503 = getelementptr inbounds %struct.GPR, %struct.GPR* %7502, i32 0, i32 33
  %7504 = getelementptr inbounds %struct.Reg, %struct.Reg* %7503, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7504 to i64*
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7506 = getelementptr inbounds %struct.GPR, %struct.GPR* %7505, i32 0, i32 11
  %7507 = getelementptr inbounds %struct.Reg, %struct.Reg* %7506, i32 0, i32 0
  %RDI.i93 = bitcast %union.anon* %7507 to i64*
  %7508 = load i64, i64* %PC.i92
  %7509 = add i64 %7508, 10
  store i64 %7509, i64* %PC.i92
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i93, align 8
  store %struct.Memory* %loadMem_47d054, %struct.Memory** %MEMORY
  %loadMem_47d05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 33
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7512 to i64*
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 1
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %7516 = bitcast %union.anon* %7515 to %struct.anon.2*
  %AL.i91 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7516, i32 0, i32 0
  %7517 = load i64, i64* %PC.i90
  %7518 = add i64 %7517, 2
  store i64 %7518, i64* %PC.i90
  store i8 0, i8* %AL.i91, align 1
  store %struct.Memory* %loadMem_47d05e, %struct.Memory** %MEMORY
  %loadMem1_47d060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7520 = getelementptr inbounds %struct.GPR, %struct.GPR* %7519, i32 0, i32 33
  %7521 = getelementptr inbounds %struct.Reg, %struct.Reg* %7520, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7521 to i64*
  %7522 = load i64, i64* %PC.i89
  %7523 = add i64 %7522, -176816
  %7524 = load i64, i64* %PC.i89
  %7525 = add i64 %7524, 5
  %7526 = load i64, i64* %PC.i89
  %7527 = add i64 %7526, 5
  store i64 %7527, i64* %PC.i89
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7529 = load i64, i64* %7528, align 8
  %7530 = add i64 %7529, -8
  %7531 = inttoptr i64 %7530 to i64*
  store i64 %7525, i64* %7531
  store i64 %7530, i64* %7528, align 8
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7523, i64* %7532, align 8
  store %struct.Memory* %loadMem1_47d060, %struct.Memory** %MEMORY
  %loadMem2_47d060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d060 = load i64, i64* %3
  %call2_47d060 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_47d060, %struct.Memory* %loadMem2_47d060)
  store %struct.Memory* %call2_47d060, %struct.Memory** %MEMORY
  %loadMem_47d065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7534 = getelementptr inbounds %struct.GPR, %struct.GPR* %7533, i32 0, i32 33
  %7535 = getelementptr inbounds %struct.Reg, %struct.Reg* %7534, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7535 to i64*
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7537 = getelementptr inbounds %struct.GPR, %struct.GPR* %7536, i32 0, i32 1
  %7538 = getelementptr inbounds %struct.Reg, %struct.Reg* %7537, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %7538 to i32*
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 15
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %7541 to i64*
  %7542 = load i64, i64* %RBP.i88
  %7543 = sub i64 %7542, 1060
  %7544 = load i32, i32* %EAX.i87
  %7545 = zext i32 %7544 to i64
  %7546 = load i64, i64* %PC.i86
  %7547 = add i64 %7546, 6
  store i64 %7547, i64* %PC.i86
  %7548 = inttoptr i64 %7543 to i32*
  store i32 %7544, i32* %7548
  store %struct.Memory* %loadMem_47d065, %struct.Memory** %MEMORY
  br label %block_.L_47d06b

block_.L_47d06b:                                  ; preds = %block_.L_47d054, %block_47d04f
  %loadMem_47d06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7551 to i64*
  %7552 = load i64, i64* %PC.i85
  %7553 = add i64 %7552, 5
  %7554 = load i64, i64* %PC.i85
  %7555 = add i64 %7554, 5
  store i64 %7555, i64* %PC.i85
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7553, i64* %7556, align 8
  store %struct.Memory* %loadMem_47d06b, %struct.Memory** %MEMORY
  br label %block_.L_47d070

block_.L_47d070:                                  ; preds = %block_.L_47d06b, %block_47d034
  %loadMem_47d070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7558 = getelementptr inbounds %struct.GPR, %struct.GPR* %7557, i32 0, i32 33
  %7559 = getelementptr inbounds %struct.Reg, %struct.Reg* %7558, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7559 to i64*
  %7560 = load i64, i64* %PC.i84
  %7561 = add i64 %7560, 8
  store i64 %7561, i64* %PC.i84
  %7562 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %7563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7563, align 1
  %7564 = and i32 %7562, 255
  %7565 = call i32 @llvm.ctpop.i32(i32 %7564)
  %7566 = trunc i32 %7565 to i8
  %7567 = and i8 %7566, 1
  %7568 = xor i8 %7567, 1
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7568, i8* %7569, align 1
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7570, align 1
  %7571 = icmp eq i32 %7562, 0
  %7572 = zext i1 %7571 to i8
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7572, i8* %7573, align 1
  %7574 = lshr i32 %7562, 31
  %7575 = trunc i32 %7574 to i8
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7575, i8* %7576, align 1
  %7577 = lshr i32 %7562, 31
  %7578 = xor i32 %7574, %7577
  %7579 = add i32 %7578, %7577
  %7580 = icmp eq i32 %7579, 2
  %7581 = zext i1 %7580 to i8
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7581, i8* %7582, align 1
  store %struct.Memory* %loadMem_47d070, %struct.Memory** %MEMORY
  %loadMem_47d078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 33
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %7585 to i64*
  %7586 = load i64, i64* %PC.i83
  %7587 = add i64 %7586, 11
  %7588 = load i64, i64* %PC.i83
  %7589 = add i64 %7588, 6
  %7590 = load i64, i64* %PC.i83
  %7591 = add i64 %7590, 6
  store i64 %7591, i64* %PC.i83
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7593 = load i8, i8* %7592, align 1
  %7594 = icmp eq i8 %7593, 0
  %7595 = zext i1 %7594 to i8
  store i8 %7595, i8* %BRANCH_TAKEN, align 1
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7597 = select i1 %7594, i64 %7587, i64 %7589
  store i64 %7597, i64* %7596, align 8
  store %struct.Memory* %loadMem_47d078, %struct.Memory** %MEMORY
  %loadBr_47d078 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d078 = icmp eq i8 %loadBr_47d078, 1
  br i1 %cmpBr_47d078, label %block_.L_47d083, label %block_47d07e

block_47d07e:                                     ; preds = %block_.L_47d070
  %loadMem_47d07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7599 = getelementptr inbounds %struct.GPR, %struct.GPR* %7598, i32 0, i32 33
  %7600 = getelementptr inbounds %struct.Reg, %struct.Reg* %7599, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %7600 to i64*
  %7601 = load i64, i64* %PC.i82
  %7602 = add i64 %7601, 53
  %7603 = load i64, i64* %PC.i82
  %7604 = add i64 %7603, 5
  store i64 %7604, i64* %PC.i82
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7602, i64* %7605, align 8
  store %struct.Memory* %loadMem_47d07e, %struct.Memory** %MEMORY
  br label %block_.L_47d0b3

block_.L_47d083:                                  ; preds = %block_.L_47d070
  %loadMem_47d083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7607 = getelementptr inbounds %struct.GPR, %struct.GPR* %7606, i32 0, i32 33
  %7608 = getelementptr inbounds %struct.Reg, %struct.Reg* %7607, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7608 to i64*
  %7609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7610 = getelementptr inbounds %struct.GPR, %struct.GPR* %7609, i32 0, i32 11
  %7611 = getelementptr inbounds %struct.Reg, %struct.Reg* %7610, i32 0, i32 0
  %RDI.i81 = bitcast %union.anon* %7611 to i64*
  %7612 = load i64, i64* %PC.i80
  %7613 = add i64 %7612, 10
  store i64 %7613, i64* %PC.i80
  store i64 ptrtoint (%G__0x582e06_type* @G__0x582e06 to i64), i64* %RDI.i81, align 8
  store %struct.Memory* %loadMem_47d083, %struct.Memory** %MEMORY
  %loadMem_47d08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7615 = getelementptr inbounds %struct.GPR, %struct.GPR* %7614, i32 0, i32 33
  %7616 = getelementptr inbounds %struct.Reg, %struct.Reg* %7615, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7616 to i64*
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7618 = getelementptr inbounds %struct.GPR, %struct.GPR* %7617, i32 0, i32 1
  %7619 = getelementptr inbounds %struct.Reg, %struct.Reg* %7618, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %7619 to i64*
  %7620 = load i64, i64* %PC.i78
  %7621 = add i64 %7620, 5
  store i64 %7621, i64* %PC.i78
  store i64 5, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_47d08d, %struct.Memory** %MEMORY
  %loadMem_47d092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7623 = getelementptr inbounds %struct.GPR, %struct.GPR* %7622, i32 0, i32 33
  %7624 = getelementptr inbounds %struct.Reg, %struct.Reg* %7623, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7624 to i64*
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7626 = getelementptr inbounds %struct.GPR, %struct.GPR* %7625, i32 0, i32 9
  %7627 = getelementptr inbounds %struct.Reg, %struct.Reg* %7626, i32 0, i32 0
  %RSI.i76 = bitcast %union.anon* %7627 to i64*
  %7628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7629 = getelementptr inbounds %struct.GPR, %struct.GPR* %7628, i32 0, i32 15
  %7630 = getelementptr inbounds %struct.Reg, %struct.Reg* %7629, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %7630 to i64*
  %7631 = load i64, i64* %RBP.i77
  %7632 = sub i64 %7631, 1016
  %7633 = load i64, i64* %PC.i75
  %7634 = add i64 %7633, 6
  store i64 %7634, i64* %PC.i75
  %7635 = inttoptr i64 %7632 to i32*
  %7636 = load i32, i32* %7635
  %7637 = zext i32 %7636 to i64
  store i64 %7637, i64* %RSI.i76, align 8
  store %struct.Memory* %loadMem_47d092, %struct.Memory** %MEMORY
  %loadMem_47d098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7639 = getelementptr inbounds %struct.GPR, %struct.GPR* %7638, i32 0, i32 33
  %7640 = getelementptr inbounds %struct.Reg, %struct.Reg* %7639, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7640 to i64*
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7642 = getelementptr inbounds %struct.GPR, %struct.GPR* %7641, i32 0, i32 7
  %7643 = getelementptr inbounds %struct.Reg, %struct.Reg* %7642, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %7643 to i64*
  %7644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7645 = getelementptr inbounds %struct.GPR, %struct.GPR* %7644, i32 0, i32 15
  %7646 = getelementptr inbounds %struct.Reg, %struct.Reg* %7645, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %7646 to i64*
  %7647 = load i64, i64* %RBP.i74
  %7648 = sub i64 %7647, 992
  %7649 = load i64, i64* %PC.i72
  %7650 = add i64 %7649, 6
  store i64 %7650, i64* %PC.i72
  %7651 = inttoptr i64 %7648 to i32*
  %7652 = load i32, i32* %7651
  %7653 = zext i32 %7652 to i64
  store i64 %7653, i64* %RDX.i73, align 8
  store %struct.Memory* %loadMem_47d098, %struct.Memory** %MEMORY
  %loadMem_47d09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7655 = getelementptr inbounds %struct.GPR, %struct.GPR* %7654, i32 0, i32 33
  %7656 = getelementptr inbounds %struct.Reg, %struct.Reg* %7655, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7656 to i64*
  %7657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7658 = getelementptr inbounds %struct.GPR, %struct.GPR* %7657, i32 0, i32 1
  %7659 = getelementptr inbounds %struct.Reg, %struct.Reg* %7658, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %7659 to i64*
  %7660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7661 = getelementptr inbounds %struct.GPR, %struct.GPR* %7660, i32 0, i32 15
  %7662 = getelementptr inbounds %struct.Reg, %struct.Reg* %7661, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %7662 to i64*
  %7663 = load i64, i64* %RAX.i70
  %7664 = load i64, i64* %RBP.i71
  %7665 = sub i64 %7664, 1032
  %7666 = load i64, i64* %PC.i69
  %7667 = add i64 %7666, 6
  store i64 %7667, i64* %PC.i69
  %7668 = trunc i64 %7663 to i32
  %7669 = inttoptr i64 %7665 to i32*
  %7670 = load i32, i32* %7669
  %7671 = sub i32 %7668, %7670
  %7672 = zext i32 %7671 to i64
  store i64 %7672, i64* %RAX.i70, align 8
  %7673 = icmp ult i32 %7668, %7670
  %7674 = zext i1 %7673 to i8
  %7675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7674, i8* %7675, align 1
  %7676 = and i32 %7671, 255
  %7677 = call i32 @llvm.ctpop.i32(i32 %7676)
  %7678 = trunc i32 %7677 to i8
  %7679 = and i8 %7678, 1
  %7680 = xor i8 %7679, 1
  %7681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7680, i8* %7681, align 1
  %7682 = xor i32 %7670, %7668
  %7683 = xor i32 %7682, %7671
  %7684 = lshr i32 %7683, 4
  %7685 = trunc i32 %7684 to i8
  %7686 = and i8 %7685, 1
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7686, i8* %7687, align 1
  %7688 = icmp eq i32 %7671, 0
  %7689 = zext i1 %7688 to i8
  %7690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7689, i8* %7690, align 1
  %7691 = lshr i32 %7671, 31
  %7692 = trunc i32 %7691 to i8
  %7693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7692, i8* %7693, align 1
  %7694 = lshr i32 %7668, 31
  %7695 = lshr i32 %7670, 31
  %7696 = xor i32 %7695, %7694
  %7697 = xor i32 %7691, %7694
  %7698 = add i32 %7697, %7696
  %7699 = icmp eq i32 %7698, 2
  %7700 = zext i1 %7699 to i8
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7700, i8* %7701, align 1
  store %struct.Memory* %loadMem_47d09e, %struct.Memory** %MEMORY
  %loadMem_47d0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 33
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7704 to i64*
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 1
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %7707 to i32*
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 5
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7710 to i64*
  %7711 = load i32, i32* %EAX.i68
  %7712 = zext i32 %7711 to i64
  %7713 = load i64, i64* %PC.i67
  %7714 = add i64 %7713, 2
  store i64 %7714, i64* %PC.i67
  %7715 = and i64 %7712, 4294967295
  store i64 %7715, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_47d0a4, %struct.Memory** %MEMORY
  %loadMem_47d0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7717 = getelementptr inbounds %struct.GPR, %struct.GPR* %7716, i32 0, i32 33
  %7718 = getelementptr inbounds %struct.Reg, %struct.Reg* %7717, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7718 to i64*
  %7719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7720 = getelementptr inbounds %struct.GPR, %struct.GPR* %7719, i32 0, i32 1
  %7721 = getelementptr inbounds %struct.Reg, %struct.Reg* %7720, i32 0, i32 0
  %7722 = bitcast %union.anon* %7721 to %struct.anon.2*
  %AL.i66 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7722, i32 0, i32 0
  %7723 = load i64, i64* %PC.i65
  %7724 = add i64 %7723, 2
  store i64 %7724, i64* %PC.i65
  store i8 0, i8* %AL.i66, align 1
  store %struct.Memory* %loadMem_47d0a6, %struct.Memory** %MEMORY
  %loadMem1_47d0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7726 = getelementptr inbounds %struct.GPR, %struct.GPR* %7725, i32 0, i32 33
  %7727 = getelementptr inbounds %struct.Reg, %struct.Reg* %7726, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7727 to i64*
  %7728 = load i64, i64* %PC.i64
  %7729 = add i64 %7728, -176888
  %7730 = load i64, i64* %PC.i64
  %7731 = add i64 %7730, 5
  %7732 = load i64, i64* %PC.i64
  %7733 = add i64 %7732, 5
  store i64 %7733, i64* %PC.i64
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7735 = load i64, i64* %7734, align 8
  %7736 = add i64 %7735, -8
  %7737 = inttoptr i64 %7736 to i64*
  store i64 %7731, i64* %7737
  store i64 %7736, i64* %7734, align 8
  %7738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7729, i64* %7738, align 8
  store %struct.Memory* %loadMem1_47d0a8, %struct.Memory** %MEMORY
  %loadMem2_47d0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d0a8 = load i64, i64* %3
  %call2_47d0a8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_47d0a8, %struct.Memory* %loadMem2_47d0a8)
  store %struct.Memory* %call2_47d0a8, %struct.Memory** %MEMORY
  %loadMem_47d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7740 = getelementptr inbounds %struct.GPR, %struct.GPR* %7739, i32 0, i32 33
  %7741 = getelementptr inbounds %struct.Reg, %struct.Reg* %7740, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7741 to i64*
  %7742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7743 = getelementptr inbounds %struct.GPR, %struct.GPR* %7742, i32 0, i32 1
  %7744 = getelementptr inbounds %struct.Reg, %struct.Reg* %7743, i32 0, i32 0
  %EAX.i62 = bitcast %union.anon* %7744 to i32*
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7746 = getelementptr inbounds %struct.GPR, %struct.GPR* %7745, i32 0, i32 15
  %7747 = getelementptr inbounds %struct.Reg, %struct.Reg* %7746, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %7747 to i64*
  %7748 = load i64, i64* %RBP.i63
  %7749 = sub i64 %7748, 1064
  %7750 = load i32, i32* %EAX.i62
  %7751 = zext i32 %7750 to i64
  %7752 = load i64, i64* %PC.i61
  %7753 = add i64 %7752, 6
  store i64 %7753, i64* %PC.i61
  %7754 = inttoptr i64 %7749 to i32*
  store i32 %7750, i32* %7754
  store %struct.Memory* %loadMem_47d0ad, %struct.Memory** %MEMORY
  br label %block_.L_47d0b3

block_.L_47d0b3:                                  ; preds = %block_.L_47d083, %block_47d07e
  %loadMem_47d0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 33
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7757 to i64*
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7759 = getelementptr inbounds %struct.GPR, %struct.GPR* %7758, i32 0, i32 1
  %7760 = getelementptr inbounds %struct.Reg, %struct.Reg* %7759, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %7760 to i64*
  %7761 = load i64, i64* %PC.i59
  %7762 = add i64 %7761, 5
  store i64 %7762, i64* %PC.i59
  store i64 5, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_47d0b3, %struct.Memory** %MEMORY
  %loadMem_47d0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7764 = getelementptr inbounds %struct.GPR, %struct.GPR* %7763, i32 0, i32 33
  %7765 = getelementptr inbounds %struct.Reg, %struct.Reg* %7764, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7765 to i64*
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7767 = getelementptr inbounds %struct.GPR, %struct.GPR* %7766, i32 0, i32 15
  %7768 = getelementptr inbounds %struct.Reg, %struct.Reg* %7767, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %7768 to i64*
  %7769 = load i64, i64* %RBP.i58
  %7770 = sub i64 %7769, 1004
  %7771 = load i64, i64* %PC.i57
  %7772 = add i64 %7771, 10
  store i64 %7772, i64* %PC.i57
  %7773 = inttoptr i64 %7770 to i32*
  store i32 1, i32* %7773
  store %struct.Memory* %loadMem_47d0b8, %struct.Memory** %MEMORY
  %loadMem_47d0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7775 = getelementptr inbounds %struct.GPR, %struct.GPR* %7774, i32 0, i32 33
  %7776 = getelementptr inbounds %struct.Reg, %struct.Reg* %7775, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7776 to i64*
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7778 = getelementptr inbounds %struct.GPR, %struct.GPR* %7777, i32 0, i32 11
  %7779 = getelementptr inbounds %struct.Reg, %struct.Reg* %7778, i32 0, i32 0
  %RDI.i55 = bitcast %union.anon* %7779 to i64*
  %7780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7781 = getelementptr inbounds %struct.GPR, %struct.GPR* %7780, i32 0, i32 15
  %7782 = getelementptr inbounds %struct.Reg, %struct.Reg* %7781, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %7782 to i64*
  %7783 = load i64, i64* %RBP.i56
  %7784 = sub i64 %7783, 992
  %7785 = load i64, i64* %PC.i54
  %7786 = add i64 %7785, 6
  store i64 %7786, i64* %PC.i54
  %7787 = inttoptr i64 %7784 to i32*
  %7788 = load i32, i32* %7787
  %7789 = zext i32 %7788 to i64
  store i64 %7789, i64* %RDI.i55, align 8
  store %struct.Memory* %loadMem_47d0c2, %struct.Memory** %MEMORY
  %loadMem_47d0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 33
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7792 to i64*
  %7793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7794 = getelementptr inbounds %struct.GPR, %struct.GPR* %7793, i32 0, i32 9
  %7795 = getelementptr inbounds %struct.Reg, %struct.Reg* %7794, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7795 to i64*
  %7796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7797 = getelementptr inbounds %struct.GPR, %struct.GPR* %7796, i32 0, i32 15
  %7798 = getelementptr inbounds %struct.Reg, %struct.Reg* %7797, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %7798 to i64*
  %7799 = load i64, i64* %RBP.i53
  %7800 = sub i64 %7799, 1016
  %7801 = load i64, i64* %PC.i52
  %7802 = add i64 %7801, 6
  store i64 %7802, i64* %PC.i52
  %7803 = inttoptr i64 %7800 to i32*
  %7804 = load i32, i32* %7803
  %7805 = zext i32 %7804 to i64
  store i64 %7805, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_47d0c8, %struct.Memory** %MEMORY
  %loadMem_47d0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7807 = getelementptr inbounds %struct.GPR, %struct.GPR* %7806, i32 0, i32 33
  %7808 = getelementptr inbounds %struct.Reg, %struct.Reg* %7807, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7808 to i64*
  %7809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7810 = getelementptr inbounds %struct.GPR, %struct.GPR* %7809, i32 0, i32 1
  %7811 = getelementptr inbounds %struct.Reg, %struct.Reg* %7810, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %7811 to i64*
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7813 = getelementptr inbounds %struct.GPR, %struct.GPR* %7812, i32 0, i32 15
  %7814 = getelementptr inbounds %struct.Reg, %struct.Reg* %7813, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %7814 to i64*
  %7815 = load i64, i64* %RAX.i50
  %7816 = load i64, i64* %RBP.i51
  %7817 = sub i64 %7816, 1032
  %7818 = load i64, i64* %PC.i49
  %7819 = add i64 %7818, 6
  store i64 %7819, i64* %PC.i49
  %7820 = trunc i64 %7815 to i32
  %7821 = inttoptr i64 %7817 to i32*
  %7822 = load i32, i32* %7821
  %7823 = sub i32 %7820, %7822
  %7824 = zext i32 %7823 to i64
  store i64 %7824, i64* %RAX.i50, align 8
  %7825 = icmp ult i32 %7820, %7822
  %7826 = zext i1 %7825 to i8
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7826, i8* %7827, align 1
  %7828 = and i32 %7823, 255
  %7829 = call i32 @llvm.ctpop.i32(i32 %7828)
  %7830 = trunc i32 %7829 to i8
  %7831 = and i8 %7830, 1
  %7832 = xor i8 %7831, 1
  %7833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7832, i8* %7833, align 1
  %7834 = xor i32 %7822, %7820
  %7835 = xor i32 %7834, %7823
  %7836 = lshr i32 %7835, 4
  %7837 = trunc i32 %7836 to i8
  %7838 = and i8 %7837, 1
  %7839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7838, i8* %7839, align 1
  %7840 = icmp eq i32 %7823, 0
  %7841 = zext i1 %7840 to i8
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7841, i8* %7842, align 1
  %7843 = lshr i32 %7823, 31
  %7844 = trunc i32 %7843 to i8
  %7845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7844, i8* %7845, align 1
  %7846 = lshr i32 %7820, 31
  %7847 = lshr i32 %7822, 31
  %7848 = xor i32 %7847, %7846
  %7849 = xor i32 %7843, %7846
  %7850 = add i32 %7849, %7848
  %7851 = icmp eq i32 %7850, 2
  %7852 = zext i1 %7851 to i8
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7852, i8* %7853, align 1
  store %struct.Memory* %loadMem_47d0ce, %struct.Memory** %MEMORY
  %loadMem_47d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7855 = getelementptr inbounds %struct.GPR, %struct.GPR* %7854, i32 0, i32 33
  %7856 = getelementptr inbounds %struct.Reg, %struct.Reg* %7855, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7856 to i64*
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7858 = getelementptr inbounds %struct.GPR, %struct.GPR* %7857, i32 0, i32 1
  %7859 = getelementptr inbounds %struct.Reg, %struct.Reg* %7858, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %7859 to i32*
  %7860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7861 = getelementptr inbounds %struct.GPR, %struct.GPR* %7860, i32 0, i32 7
  %7862 = getelementptr inbounds %struct.Reg, %struct.Reg* %7861, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7862 to i64*
  %7863 = load i32, i32* %EAX.i48
  %7864 = zext i32 %7863 to i64
  %7865 = load i64, i64* %PC.i47
  %7866 = add i64 %7865, 2
  store i64 %7866, i64* %PC.i47
  %7867 = and i64 %7864, 4294967295
  store i64 %7867, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_47d0d4, %struct.Memory** %MEMORY
  %loadMem1_47d0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7869 = getelementptr inbounds %struct.GPR, %struct.GPR* %7868, i32 0, i32 33
  %7870 = getelementptr inbounds %struct.Reg, %struct.Reg* %7869, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7870 to i64*
  %7871 = load i64, i64* %PC.i46
  %7872 = add i64 %7871, -307126
  %7873 = load i64, i64* %PC.i46
  %7874 = add i64 %7873, 5
  %7875 = load i64, i64* %PC.i46
  %7876 = add i64 %7875, 5
  store i64 %7876, i64* %PC.i46
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7878 = load i64, i64* %7877, align 8
  %7879 = add i64 %7878, -8
  %7880 = inttoptr i64 %7879 to i64*
  store i64 %7874, i64* %7880
  store i64 %7879, i64* %7877, align 8
  %7881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7872, i64* %7881, align 8
  store %struct.Memory* %loadMem1_47d0d6, %struct.Memory** %MEMORY
  %loadMem2_47d0d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d0d6 = load i64, i64* %3
  %call2_47d0d6 = call %struct.Memory* @sub_432120.add_attack_move(%struct.State* %0, i64 %loadPC_47d0d6, %struct.Memory* %loadMem2_47d0d6)
  store %struct.Memory* %call2_47d0d6, %struct.Memory** %MEMORY
  br label %block_.L_47d0db

block_.L_47d0db:                                  ; preds = %block_.L_47d0b3, %block_.L_47d027
  %loadMem_47d0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %7882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7883 = getelementptr inbounds %struct.GPR, %struct.GPR* %7882, i32 0, i32 33
  %7884 = getelementptr inbounds %struct.Reg, %struct.Reg* %7883, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7884 to i64*
  %7885 = load i64, i64* %PC.i45
  %7886 = add i64 %7885, 5
  %7887 = load i64, i64* %PC.i45
  %7888 = add i64 %7887, 5
  store i64 %7888, i64* %PC.i45
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7886, i64* %7889, align 8
  store %struct.Memory* %loadMem_47d0db, %struct.Memory** %MEMORY
  br label %block_.L_47d0e0

block_.L_47d0e0:                                  ; preds = %block_.L_47d0db, %block_47cf17
  %loadMem_47d0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7891 = getelementptr inbounds %struct.GPR, %struct.GPR* %7890, i32 0, i32 33
  %7892 = getelementptr inbounds %struct.Reg, %struct.Reg* %7891, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7892 to i64*
  %7893 = load i64, i64* %PC.i44
  %7894 = add i64 %7893, 5
  %7895 = load i64, i64* %PC.i44
  %7896 = add i64 %7895, 5
  store i64 %7896, i64* %PC.i44
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7894, i64* %7897, align 8
  store %struct.Memory* %loadMem_47d0e0, %struct.Memory** %MEMORY
  br label %block_.L_47d0e5

block_.L_47d0e5:                                  ; preds = %block_.L_47d0e0, %block_47cef5, %block_.L_47ceda
  %loadMem_47d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7899 = getelementptr inbounds %struct.GPR, %struct.GPR* %7898, i32 0, i32 33
  %7900 = getelementptr inbounds %struct.Reg, %struct.Reg* %7899, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7900 to i64*
  %7901 = load i64, i64* %PC.i43
  %7902 = add i64 %7901, 5
  %7903 = load i64, i64* %PC.i43
  %7904 = add i64 %7903, 5
  store i64 %7904, i64* %PC.i43
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7902, i64* %7905, align 8
  store %struct.Memory* %loadMem_47d0e5, %struct.Memory** %MEMORY
  br label %block_.L_47d0ea

block_.L_47d0ea:                                  ; preds = %block_.L_47d0e5
  %loadMem_47d0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7907 = getelementptr inbounds %struct.GPR, %struct.GPR* %7906, i32 0, i32 33
  %7908 = getelementptr inbounds %struct.Reg, %struct.Reg* %7907, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7908 to i64*
  %7909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7910 = getelementptr inbounds %struct.GPR, %struct.GPR* %7909, i32 0, i32 1
  %7911 = getelementptr inbounds %struct.Reg, %struct.Reg* %7910, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %7911 to i64*
  %7912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7913 = getelementptr inbounds %struct.GPR, %struct.GPR* %7912, i32 0, i32 15
  %7914 = getelementptr inbounds %struct.Reg, %struct.Reg* %7913, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %7914 to i64*
  %7915 = load i64, i64* %RBP.i42
  %7916 = sub i64 %7915, 996
  %7917 = load i64, i64* %PC.i40
  %7918 = add i64 %7917, 6
  store i64 %7918, i64* %PC.i40
  %7919 = inttoptr i64 %7916 to i32*
  %7920 = load i32, i32* %7919
  %7921 = zext i32 %7920 to i64
  store i64 %7921, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_47d0ea, %struct.Memory** %MEMORY
  %loadMem_47d0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7923 = getelementptr inbounds %struct.GPR, %struct.GPR* %7922, i32 0, i32 33
  %7924 = getelementptr inbounds %struct.Reg, %struct.Reg* %7923, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7924 to i64*
  %7925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7926 = getelementptr inbounds %struct.GPR, %struct.GPR* %7925, i32 0, i32 1
  %7927 = getelementptr inbounds %struct.Reg, %struct.Reg* %7926, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %7927 to i64*
  %7928 = load i64, i64* %RAX.i39
  %7929 = load i64, i64* %PC.i38
  %7930 = add i64 %7929, 3
  store i64 %7930, i64* %PC.i38
  %7931 = trunc i64 %7928 to i32
  %7932 = add i32 1, %7931
  %7933 = zext i32 %7932 to i64
  store i64 %7933, i64* %RAX.i39, align 8
  %7934 = icmp ult i32 %7932, %7931
  %7935 = icmp ult i32 %7932, 1
  %7936 = or i1 %7934, %7935
  %7937 = zext i1 %7936 to i8
  %7938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7937, i8* %7938, align 1
  %7939 = and i32 %7932, 255
  %7940 = call i32 @llvm.ctpop.i32(i32 %7939)
  %7941 = trunc i32 %7940 to i8
  %7942 = and i8 %7941, 1
  %7943 = xor i8 %7942, 1
  %7944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7943, i8* %7944, align 1
  %7945 = xor i64 1, %7928
  %7946 = trunc i64 %7945 to i32
  %7947 = xor i32 %7946, %7932
  %7948 = lshr i32 %7947, 4
  %7949 = trunc i32 %7948 to i8
  %7950 = and i8 %7949, 1
  %7951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7950, i8* %7951, align 1
  %7952 = icmp eq i32 %7932, 0
  %7953 = zext i1 %7952 to i8
  %7954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7953, i8* %7954, align 1
  %7955 = lshr i32 %7932, 31
  %7956 = trunc i32 %7955 to i8
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7956, i8* %7957, align 1
  %7958 = lshr i32 %7931, 31
  %7959 = xor i32 %7955, %7958
  %7960 = add i32 %7959, %7955
  %7961 = icmp eq i32 %7960, 2
  %7962 = zext i1 %7961 to i8
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7962, i8* %7963, align 1
  store %struct.Memory* %loadMem_47d0f0, %struct.Memory** %MEMORY
  %loadMem_47d0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7965 = getelementptr inbounds %struct.GPR, %struct.GPR* %7964, i32 0, i32 33
  %7966 = getelementptr inbounds %struct.Reg, %struct.Reg* %7965, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7966 to i64*
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7968 = getelementptr inbounds %struct.GPR, %struct.GPR* %7967, i32 0, i32 1
  %7969 = getelementptr inbounds %struct.Reg, %struct.Reg* %7968, i32 0, i32 0
  %EAX.i36 = bitcast %union.anon* %7969 to i32*
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7971 = getelementptr inbounds %struct.GPR, %struct.GPR* %7970, i32 0, i32 15
  %7972 = getelementptr inbounds %struct.Reg, %struct.Reg* %7971, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %7972 to i64*
  %7973 = load i64, i64* %RBP.i37
  %7974 = sub i64 %7973, 996
  %7975 = load i32, i32* %EAX.i36
  %7976 = zext i32 %7975 to i64
  %7977 = load i64, i64* %PC.i35
  %7978 = add i64 %7977, 6
  store i64 %7978, i64* %PC.i35
  %7979 = inttoptr i64 %7974 to i32*
  store i32 %7975, i32* %7979
  store %struct.Memory* %loadMem_47d0f3, %struct.Memory** %MEMORY
  %loadMem_47d0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7981 = getelementptr inbounds %struct.GPR, %struct.GPR* %7980, i32 0, i32 33
  %7982 = getelementptr inbounds %struct.Reg, %struct.Reg* %7981, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7982 to i64*
  %7983 = load i64, i64* %PC.i34
  %7984 = add i64 %7983, -1133
  %7985 = load i64, i64* %PC.i34
  %7986 = add i64 %7985, 5
  store i64 %7986, i64* %PC.i34
  %7987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7984, i64* %7987, align 8
  store %struct.Memory* %loadMem_47d0f9, %struct.Memory** %MEMORY
  br label %block_.L_47cc8c

block_.L_47d0fe:                                  ; preds = %block_.L_47cc8c
  %loadMem1_47d0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7989 = getelementptr inbounds %struct.GPR, %struct.GPR* %7988, i32 0, i32 33
  %7990 = getelementptr inbounds %struct.Reg, %struct.Reg* %7989, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7990 to i64*
  %7991 = load i64, i64* %PC.i33
  %7992 = add i64 %7991, -455582
  %7993 = load i64, i64* %PC.i33
  %7994 = add i64 %7993, 5
  %7995 = load i64, i64* %PC.i33
  %7996 = add i64 %7995, 5
  store i64 %7996, i64* %PC.i33
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7998 = load i64, i64* %7997, align 8
  %7999 = add i64 %7998, -8
  %8000 = inttoptr i64 %7999 to i64*
  store i64 %7994, i64* %8000
  store i64 %7999, i64* %7997, align 8
  %8001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7992, i64* %8001, align 8
  store %struct.Memory* %loadMem1_47d0fe, %struct.Memory** %MEMORY
  %loadMem2_47d0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d0fe = load i64, i64* %3
  %call2_47d0fe = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_47d0fe, %struct.Memory* %loadMem2_47d0fe)
  store %struct.Memory* %call2_47d0fe, %struct.Memory** %MEMORY
  br label %block_.L_47d103

block_.L_47d103:                                  ; preds = %block_.L_47d0fe, %block_.L_47cc57
  %loadMem_47d103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8003 = getelementptr inbounds %struct.GPR, %struct.GPR* %8002, i32 0, i32 33
  %8004 = getelementptr inbounds %struct.Reg, %struct.Reg* %8003, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %8004 to i64*
  %8005 = load i64, i64* %PC.i32
  %8006 = add i64 %8005, 5
  %8007 = load i64, i64* %PC.i32
  %8008 = add i64 %8007, 5
  store i64 %8008, i64* %PC.i32
  %8009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8006, i64* %8009, align 8
  store %struct.Memory* %loadMem_47d103, %struct.Memory** %MEMORY
  br label %block_.L_47d108

block_.L_47d108:                                  ; preds = %block_.L_47d103, %block_.L_47cc18
  %loadMem_47d108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8011 = getelementptr inbounds %struct.GPR, %struct.GPR* %8010, i32 0, i32 33
  %8012 = getelementptr inbounds %struct.Reg, %struct.Reg* %8011, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8012 to i64*
  %8013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8014 = getelementptr inbounds %struct.GPR, %struct.GPR* %8013, i32 0, i32 1
  %8015 = getelementptr inbounds %struct.Reg, %struct.Reg* %8014, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %8015 to i64*
  %8016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8017 = getelementptr inbounds %struct.GPR, %struct.GPR* %8016, i32 0, i32 15
  %8018 = getelementptr inbounds %struct.Reg, %struct.Reg* %8017, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %8018 to i64*
  %8019 = load i64, i64* %RBP.i31
  %8020 = sub i64 %8019, 988
  %8021 = load i64, i64* %PC.i29
  %8022 = add i64 %8021, 6
  store i64 %8022, i64* %PC.i29
  %8023 = inttoptr i64 %8020 to i32*
  %8024 = load i32, i32* %8023
  %8025 = zext i32 %8024 to i64
  store i64 %8025, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_47d108, %struct.Memory** %MEMORY
  %loadMem_47d10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8027 = getelementptr inbounds %struct.GPR, %struct.GPR* %8026, i32 0, i32 33
  %8028 = getelementptr inbounds %struct.Reg, %struct.Reg* %8027, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8028 to i64*
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8030 = getelementptr inbounds %struct.GPR, %struct.GPR* %8029, i32 0, i32 1
  %8031 = getelementptr inbounds %struct.Reg, %struct.Reg* %8030, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %8031 to i64*
  %8032 = load i64, i64* %RAX.i28
  %8033 = load i64, i64* %PC.i27
  %8034 = add i64 %8033, 3
  store i64 %8034, i64* %PC.i27
  %8035 = trunc i64 %8032 to i32
  %8036 = add i32 1, %8035
  %8037 = zext i32 %8036 to i64
  store i64 %8037, i64* %RAX.i28, align 8
  %8038 = icmp ult i32 %8036, %8035
  %8039 = icmp ult i32 %8036, 1
  %8040 = or i1 %8038, %8039
  %8041 = zext i1 %8040 to i8
  %8042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8041, i8* %8042, align 1
  %8043 = and i32 %8036, 255
  %8044 = call i32 @llvm.ctpop.i32(i32 %8043)
  %8045 = trunc i32 %8044 to i8
  %8046 = and i8 %8045, 1
  %8047 = xor i8 %8046, 1
  %8048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8047, i8* %8048, align 1
  %8049 = xor i64 1, %8032
  %8050 = trunc i64 %8049 to i32
  %8051 = xor i32 %8050, %8036
  %8052 = lshr i32 %8051, 4
  %8053 = trunc i32 %8052 to i8
  %8054 = and i8 %8053, 1
  %8055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8054, i8* %8055, align 1
  %8056 = icmp eq i32 %8036, 0
  %8057 = zext i1 %8056 to i8
  %8058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8057, i8* %8058, align 1
  %8059 = lshr i32 %8036, 31
  %8060 = trunc i32 %8059 to i8
  %8061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8060, i8* %8061, align 1
  %8062 = lshr i32 %8035, 31
  %8063 = xor i32 %8059, %8062
  %8064 = add i32 %8063, %8059
  %8065 = icmp eq i32 %8064, 2
  %8066 = zext i1 %8065 to i8
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8066, i8* %8067, align 1
  store %struct.Memory* %loadMem_47d10e, %struct.Memory** %MEMORY
  %loadMem_47d111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8069 = getelementptr inbounds %struct.GPR, %struct.GPR* %8068, i32 0, i32 33
  %8070 = getelementptr inbounds %struct.Reg, %struct.Reg* %8069, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8070 to i64*
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8072 = getelementptr inbounds %struct.GPR, %struct.GPR* %8071, i32 0, i32 1
  %8073 = getelementptr inbounds %struct.Reg, %struct.Reg* %8072, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %8073 to i32*
  %8074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8075 = getelementptr inbounds %struct.GPR, %struct.GPR* %8074, i32 0, i32 15
  %8076 = getelementptr inbounds %struct.Reg, %struct.Reg* %8075, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %8076 to i64*
  %8077 = load i64, i64* %RBP.i26
  %8078 = sub i64 %8077, 988
  %8079 = load i32, i32* %EAX.i25
  %8080 = zext i32 %8079 to i64
  %8081 = load i64, i64* %PC.i24
  %8082 = add i64 %8081, 6
  store i64 %8082, i64* %PC.i24
  %8083 = inttoptr i64 %8078 to i32*
  store i32 %8079, i32* %8083
  store %struct.Memory* %loadMem_47d111, %struct.Memory** %MEMORY
  %loadMem_47d117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8085 = getelementptr inbounds %struct.GPR, %struct.GPR* %8084, i32 0, i32 33
  %8086 = getelementptr inbounds %struct.Reg, %struct.Reg* %8085, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8086 to i64*
  %8087 = load i64, i64* %PC.i23
  %8088 = add i64 %8087, -1783
  %8089 = load i64, i64* %PC.i23
  %8090 = add i64 %8089, 5
  store i64 %8090, i64* %PC.i23
  %8091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8088, i64* %8091, align 8
  store %struct.Memory* %loadMem_47d117, %struct.Memory** %MEMORY
  br label %block_.L_47ca20

block_.L_47d11c:                                  ; preds = %block_.L_47ca20
  %loadMem_47d11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8093 = getelementptr inbounds %struct.GPR, %struct.GPR* %8092, i32 0, i32 33
  %8094 = getelementptr inbounds %struct.Reg, %struct.Reg* %8093, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8094 to i64*
  %8095 = load i64, i64* %PC.i22
  %8096 = add i64 %8095, 5
  %8097 = load i64, i64* %PC.i22
  %8098 = add i64 %8097, 5
  store i64 %8098, i64* %PC.i22
  %8099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8096, i64* %8099, align 8
  store %struct.Memory* %loadMem_47d11c, %struct.Memory** %MEMORY
  br label %block_.L_47d121

block_.L_47d121:                                  ; preds = %block_.L_47d11c
  %loadMem_47d121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8101 = getelementptr inbounds %struct.GPR, %struct.GPR* %8100, i32 0, i32 33
  %8102 = getelementptr inbounds %struct.Reg, %struct.Reg* %8101, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8102 to i64*
  %8103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8104 = getelementptr inbounds %struct.GPR, %struct.GPR* %8103, i32 0, i32 1
  %8105 = getelementptr inbounds %struct.Reg, %struct.Reg* %8104, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %8105 to i64*
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 15
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %8108 to i64*
  %8109 = load i64, i64* %RBP.i21
  %8110 = sub i64 %8109, 984
  %8111 = load i64, i64* %PC.i19
  %8112 = add i64 %8111, 6
  store i64 %8112, i64* %PC.i19
  %8113 = inttoptr i64 %8110 to i32*
  %8114 = load i32, i32* %8113
  %8115 = zext i32 %8114 to i64
  store i64 %8115, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_47d121, %struct.Memory** %MEMORY
  %loadMem_47d127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8117 = getelementptr inbounds %struct.GPR, %struct.GPR* %8116, i32 0, i32 33
  %8118 = getelementptr inbounds %struct.Reg, %struct.Reg* %8117, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8118 to i64*
  %8119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8120 = getelementptr inbounds %struct.GPR, %struct.GPR* %8119, i32 0, i32 1
  %8121 = getelementptr inbounds %struct.Reg, %struct.Reg* %8120, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8121 to i64*
  %8122 = load i64, i64* %RAX.i
  %8123 = load i64, i64* %PC.i18
  %8124 = add i64 %8123, 3
  store i64 %8124, i64* %PC.i18
  %8125 = trunc i64 %8122 to i32
  %8126 = add i32 1, %8125
  %8127 = zext i32 %8126 to i64
  store i64 %8127, i64* %RAX.i, align 8
  %8128 = icmp ult i32 %8126, %8125
  %8129 = icmp ult i32 %8126, 1
  %8130 = or i1 %8128, %8129
  %8131 = zext i1 %8130 to i8
  %8132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8131, i8* %8132, align 1
  %8133 = and i32 %8126, 255
  %8134 = call i32 @llvm.ctpop.i32(i32 %8133)
  %8135 = trunc i32 %8134 to i8
  %8136 = and i8 %8135, 1
  %8137 = xor i8 %8136, 1
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8137, i8* %8138, align 1
  %8139 = xor i64 1, %8122
  %8140 = trunc i64 %8139 to i32
  %8141 = xor i32 %8140, %8126
  %8142 = lshr i32 %8141, 4
  %8143 = trunc i32 %8142 to i8
  %8144 = and i8 %8143, 1
  %8145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8144, i8* %8145, align 1
  %8146 = icmp eq i32 %8126, 0
  %8147 = zext i1 %8146 to i8
  %8148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8147, i8* %8148, align 1
  %8149 = lshr i32 %8126, 31
  %8150 = trunc i32 %8149 to i8
  %8151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8150, i8* %8151, align 1
  %8152 = lshr i32 %8125, 31
  %8153 = xor i32 %8149, %8152
  %8154 = add i32 %8153, %8149
  %8155 = icmp eq i32 %8154, 2
  %8156 = zext i1 %8155 to i8
  %8157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8156, i8* %8157, align 1
  store %struct.Memory* %loadMem_47d127, %struct.Memory** %MEMORY
  %loadMem_47d12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8159 = getelementptr inbounds %struct.GPR, %struct.GPR* %8158, i32 0, i32 33
  %8160 = getelementptr inbounds %struct.Reg, %struct.Reg* %8159, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8160 to i64*
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8162 = getelementptr inbounds %struct.GPR, %struct.GPR* %8161, i32 0, i32 1
  %8163 = getelementptr inbounds %struct.Reg, %struct.Reg* %8162, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %8163 to i32*
  %8164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8165 = getelementptr inbounds %struct.GPR, %struct.GPR* %8164, i32 0, i32 15
  %8166 = getelementptr inbounds %struct.Reg, %struct.Reg* %8165, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %8166 to i64*
  %8167 = load i64, i64* %RBP.i17
  %8168 = sub i64 %8167, 984
  %8169 = load i32, i32* %EAX.i16
  %8170 = zext i32 %8169 to i64
  %8171 = load i64, i64* %PC.i15
  %8172 = add i64 %8171, 6
  store i64 %8172, i64* %PC.i15
  %8173 = inttoptr i64 %8168 to i32*
  store i32 %8169, i32* %8173
  store %struct.Memory* %loadMem_47d12a, %struct.Memory** %MEMORY
  %loadMem_47d130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8175 = getelementptr inbounds %struct.GPR, %struct.GPR* %8174, i32 0, i32 33
  %8176 = getelementptr inbounds %struct.Reg, %struct.Reg* %8175, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8176 to i64*
  %8177 = load i64, i64* %PC.i14
  %8178 = add i64 %8177, -1837
  %8179 = load i64, i64* %PC.i14
  %8180 = add i64 %8179, 5
  store i64 %8180, i64* %PC.i14
  %8181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8178, i64* %8181, align 8
  store %struct.Memory* %loadMem_47d130, %struct.Memory** %MEMORY
  br label %block_.L_47ca03

block_.L_47d135:                                  ; preds = %block_.L_47ca03
  %loadMem_47d135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8183 = getelementptr inbounds %struct.GPR, %struct.GPR* %8182, i32 0, i32 33
  %8184 = getelementptr inbounds %struct.Reg, %struct.Reg* %8183, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8184 to i64*
  %8185 = load i64, i64* %PC.i13
  %8186 = add i64 %8185, 8
  store i64 %8186, i64* %PC.i13
  %8187 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %8188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8188, align 1
  %8189 = and i32 %8187, 255
  %8190 = call i32 @llvm.ctpop.i32(i32 %8189)
  %8191 = trunc i32 %8190 to i8
  %8192 = and i8 %8191, 1
  %8193 = xor i8 %8192, 1
  %8194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8193, i8* %8194, align 1
  %8195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8195, align 1
  %8196 = icmp eq i32 %8187, 0
  %8197 = zext i1 %8196 to i8
  %8198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8197, i8* %8198, align 1
  %8199 = lshr i32 %8187, 31
  %8200 = trunc i32 %8199 to i8
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8200, i8* %8201, align 1
  %8202 = lshr i32 %8187, 31
  %8203 = xor i32 %8199, %8202
  %8204 = add i32 %8203, %8202
  %8205 = icmp eq i32 %8204, 2
  %8206 = zext i1 %8205 to i8
  %8207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8206, i8* %8207, align 1
  store %struct.Memory* %loadMem_47d135, %struct.Memory** %MEMORY
  %loadMem_47d13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8209 = getelementptr inbounds %struct.GPR, %struct.GPR* %8208, i32 0, i32 33
  %8210 = getelementptr inbounds %struct.Reg, %struct.Reg* %8209, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8210 to i64*
  %8211 = load i64, i64* %PC.i12
  %8212 = add i64 %8211, 11
  %8213 = load i64, i64* %PC.i12
  %8214 = add i64 %8213, 6
  %8215 = load i64, i64* %PC.i12
  %8216 = add i64 %8215, 6
  store i64 %8216, i64* %PC.i12
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8218 = load i8, i8* %8217, align 1
  %8219 = icmp eq i8 %8218, 0
  %8220 = zext i1 %8219 to i8
  store i8 %8220, i8* %BRANCH_TAKEN, align 1
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8222 = select i1 %8219, i64 %8212, i64 %8214
  store i64 %8222, i64* %8221, align 8
  store %struct.Memory* %loadMem_47d13d, %struct.Memory** %MEMORY
  %loadBr_47d13d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d13d = icmp eq i8 %loadBr_47d13d, 1
  br i1 %cmpBr_47d13d, label %block_.L_47d148, label %block_47d143

block_47d143:                                     ; preds = %block_.L_47d135
  %loadMem_47d143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8224 = getelementptr inbounds %struct.GPR, %struct.GPR* %8223, i32 0, i32 33
  %8225 = getelementptr inbounds %struct.Reg, %struct.Reg* %8224, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8225 to i64*
  %8226 = load i64, i64* %PC.i11
  %8227 = add i64 %8226, 28
  %8228 = load i64, i64* %PC.i11
  %8229 = add i64 %8228, 5
  store i64 %8229, i64* %PC.i11
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8227, i64* %8230, align 8
  store %struct.Memory* %loadMem_47d143, %struct.Memory** %MEMORY
  br label %block_.L_47d15f

block_.L_47d148:                                  ; preds = %block_.L_47d135
  %loadMem_47d148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8232 = getelementptr inbounds %struct.GPR, %struct.GPR* %8231, i32 0, i32 33
  %8233 = getelementptr inbounds %struct.Reg, %struct.Reg* %8232, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8233 to i64*
  %8234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8235 = getelementptr inbounds %struct.GPR, %struct.GPR* %8234, i32 0, i32 11
  %8236 = getelementptr inbounds %struct.Reg, %struct.Reg* %8235, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8236 to i64*
  %8237 = load i64, i64* %PC.i10
  %8238 = add i64 %8237, 10
  store i64 %8238, i64* %PC.i10
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_47d148, %struct.Memory** %MEMORY
  %loadMem_47d152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8240 = getelementptr inbounds %struct.GPR, %struct.GPR* %8239, i32 0, i32 33
  %8241 = getelementptr inbounds %struct.Reg, %struct.Reg* %8240, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8241 to i64*
  %8242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8243 = getelementptr inbounds %struct.GPR, %struct.GPR* %8242, i32 0, i32 1
  %8244 = getelementptr inbounds %struct.Reg, %struct.Reg* %8243, i32 0, i32 0
  %8245 = bitcast %union.anon* %8244 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8245, i32 0, i32 0
  %8246 = load i64, i64* %PC.i9
  %8247 = add i64 %8246, 2
  store i64 %8247, i64* %PC.i9
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_47d152, %struct.Memory** %MEMORY
  %loadMem1_47d154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8249 = getelementptr inbounds %struct.GPR, %struct.GPR* %8248, i32 0, i32 33
  %8250 = getelementptr inbounds %struct.Reg, %struct.Reg* %8249, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8250 to i64*
  %8251 = load i64, i64* %PC.i8
  %8252 = add i64 %8251, -177060
  %8253 = load i64, i64* %PC.i8
  %8254 = add i64 %8253, 5
  %8255 = load i64, i64* %PC.i8
  %8256 = add i64 %8255, 5
  store i64 %8256, i64* %PC.i8
  %8257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8258 = load i64, i64* %8257, align 8
  %8259 = add i64 %8258, -8
  %8260 = inttoptr i64 %8259 to i64*
  store i64 %8254, i64* %8260
  store i64 %8259, i64* %8257, align 8
  %8261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8252, i64* %8261, align 8
  store %struct.Memory* %loadMem1_47d154, %struct.Memory** %MEMORY
  %loadMem2_47d154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d154 = load i64, i64* %3
  %call2_47d154 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_47d154, %struct.Memory* %loadMem2_47d154)
  store %struct.Memory* %call2_47d154, %struct.Memory** %MEMORY
  %loadMem_47d159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8263 = getelementptr inbounds %struct.GPR, %struct.GPR* %8262, i32 0, i32 33
  %8264 = getelementptr inbounds %struct.Reg, %struct.Reg* %8263, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8264 to i64*
  %8265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8266 = getelementptr inbounds %struct.GPR, %struct.GPR* %8265, i32 0, i32 1
  %8267 = getelementptr inbounds %struct.Reg, %struct.Reg* %8266, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8267 to i32*
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8269 = getelementptr inbounds %struct.GPR, %struct.GPR* %8268, i32 0, i32 15
  %8270 = getelementptr inbounds %struct.Reg, %struct.Reg* %8269, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8270 to i64*
  %8271 = load i64, i64* %RBP.i7
  %8272 = sub i64 %8271, 1068
  %8273 = load i32, i32* %EAX.i
  %8274 = zext i32 %8273 to i64
  %8275 = load i64, i64* %PC.i6
  %8276 = add i64 %8275, 6
  store i64 %8276, i64* %PC.i6
  %8277 = inttoptr i64 %8272 to i32*
  store i32 %8273, i32* %8277
  store %struct.Memory* %loadMem_47d159, %struct.Memory** %MEMORY
  br label %block_.L_47d15f

block_.L_47d15f:                                  ; preds = %block_.L_47d148, %block_47d143
  %loadMem1_47d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8279 = getelementptr inbounds %struct.GPR, %struct.GPR* %8278, i32 0, i32 33
  %8280 = getelementptr inbounds %struct.Reg, %struct.Reg* %8279, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8280 to i64*
  %8281 = load i64, i64* %PC.i5
  %8282 = add i64 %8281, -23711
  %8283 = load i64, i64* %PC.i5
  %8284 = add i64 %8283, 5
  %8285 = load i64, i64* %PC.i5
  %8286 = add i64 %8285, 5
  store i64 %8286, i64* %PC.i5
  %8287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8288 = load i64, i64* %8287, align 8
  %8289 = add i64 %8288, -8
  %8290 = inttoptr i64 %8289 to i64*
  store i64 %8284, i64* %8290
  store i64 %8289, i64* %8287, align 8
  %8291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8282, i64* %8291, align 8
  store %struct.Memory* %loadMem1_47d15f, %struct.Memory** %MEMORY
  %loadMem2_47d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d15f = load i64, i64* %3
  %call2_47d15f = call %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* %0, i64 %loadPC_47d15f, %struct.Memory* %loadMem2_47d15f)
  store %struct.Memory* %call2_47d15f, %struct.Memory** %MEMORY
  %loadMem_47d164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8293 = getelementptr inbounds %struct.GPR, %struct.GPR* %8292, i32 0, i32 33
  %8294 = getelementptr inbounds %struct.Reg, %struct.Reg* %8293, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8294 to i64*
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8296 = getelementptr inbounds %struct.GPR, %struct.GPR* %8295, i32 0, i32 13
  %8297 = getelementptr inbounds %struct.Reg, %struct.Reg* %8296, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8297 to i64*
  %8298 = load i64, i64* %RSP.i
  %8299 = load i64, i64* %PC.i4
  %8300 = add i64 %8299, 7
  store i64 %8300, i64* %PC.i4
  %8301 = add i64 1072, %8298
  store i64 %8301, i64* %RSP.i, align 8
  %8302 = icmp ult i64 %8301, %8298
  %8303 = icmp ult i64 %8301, 1072
  %8304 = or i1 %8302, %8303
  %8305 = zext i1 %8304 to i8
  %8306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8305, i8* %8306, align 1
  %8307 = trunc i64 %8301 to i32
  %8308 = and i32 %8307, 255
  %8309 = call i32 @llvm.ctpop.i32(i32 %8308)
  %8310 = trunc i32 %8309 to i8
  %8311 = and i8 %8310, 1
  %8312 = xor i8 %8311, 1
  %8313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8312, i8* %8313, align 1
  %8314 = xor i64 1072, %8298
  %8315 = xor i64 %8314, %8301
  %8316 = lshr i64 %8315, 4
  %8317 = trunc i64 %8316 to i8
  %8318 = and i8 %8317, 1
  %8319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8318, i8* %8319, align 1
  %8320 = icmp eq i64 %8301, 0
  %8321 = zext i1 %8320 to i8
  %8322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8321, i8* %8322, align 1
  %8323 = lshr i64 %8301, 63
  %8324 = trunc i64 %8323 to i8
  %8325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8324, i8* %8325, align 1
  %8326 = lshr i64 %8298, 63
  %8327 = xor i64 %8323, %8326
  %8328 = add i64 %8327, %8323
  %8329 = icmp eq i64 %8328, 2
  %8330 = zext i1 %8329 to i8
  %8331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8330, i8* %8331, align 1
  store %struct.Memory* %loadMem_47d164, %struct.Memory** %MEMORY
  %loadMem_47d16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8333 = getelementptr inbounds %struct.GPR, %struct.GPR* %8332, i32 0, i32 33
  %8334 = getelementptr inbounds %struct.Reg, %struct.Reg* %8333, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8334 to i64*
  %8335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8336 = getelementptr inbounds %struct.GPR, %struct.GPR* %8335, i32 0, i32 15
  %8337 = getelementptr inbounds %struct.Reg, %struct.Reg* %8336, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8337 to i64*
  %8338 = load i64, i64* %PC.i2
  %8339 = add i64 %8338, 1
  store i64 %8339, i64* %PC.i2
  %8340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8341 = load i64, i64* %8340, align 8
  %8342 = add i64 %8341, 8
  %8343 = inttoptr i64 %8341 to i64*
  %8344 = load i64, i64* %8343
  store i64 %8344, i64* %RBP.i3, align 8
  store i64 %8342, i64* %8340, align 8
  store %struct.Memory* %loadMem_47d16b, %struct.Memory** %MEMORY
  %loadMem_47d16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8346 = getelementptr inbounds %struct.GPR, %struct.GPR* %8345, i32 0, i32 33
  %8347 = getelementptr inbounds %struct.Reg, %struct.Reg* %8346, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8347 to i64*
  %8348 = load i64, i64* %PC.i1
  %8349 = add i64 %8348, 1
  store i64 %8349, i64* %PC.i1
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8352 = load i64, i64* %8351, align 8
  %8353 = inttoptr i64 %8352 to i64*
  %8354 = load i64, i64* %8353
  store i64 %8354, i64* %8350, align 8
  %8355 = add i64 %8352, 8
  store i64 %8355, i64* %8351, align 8
  store %struct.Memory* %loadMem_47d16c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47d16c
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

define %struct.Memory* @routine_subq__0x430___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1072
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1072
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
  %23 = xor i64 1072, %9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 980
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
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

define %struct.Memory* @routine_movl__eax__MINUS0x3e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1000
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
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

define %struct.Memory* @routine_jne_.L_47c8a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47c8c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x582d8c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x582d8c_type* @G__0x582d8c to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1044
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 984
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3d8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 984
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_jge_.L_47c9f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 988
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3dc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 988
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_47c9db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x3d8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 984
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_addl_MINUS0x3dc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 988
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0x3e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 992
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3e0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_je_.L_47c9c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0x3e0__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 992
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

define %struct.Memory* @routine_jne_.L_47c9c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 100
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

define %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 180
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

define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3d4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 980
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3d0__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -976
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3d4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 980
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl__eax__MINUS0x3d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 980
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c9c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 988
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c8e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47c9e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 984
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47c8ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.increase_depth_values(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47d135(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47d11c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 996
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x78__MINUS0x3e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 996
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 120
  %16 = icmp ult i32 %14, 120
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
  %25 = xor i32 %14, 120
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

define %struct.Memory* @routine_jge_.L_47cbde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 564, %15
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

define %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 996
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 72
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x3f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1008
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x3f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1008
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

define %struct.Memory* @routine_jge_.L_47ca9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47cbde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xafdfc0_type* @G__0xafdfc0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1008
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 12, %15
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl__esi__MINUS0x3f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1012
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 2
  %15 = icmp ult i32 %13, 2
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
  %24 = xor i32 %13, 2
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_47cbc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 4
  %15 = icmp ult i32 %13, 4
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
  %24 = xor i32 %13, 4
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x6____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 6
  %15 = icmp ult i32 %13, 6
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
  %24 = xor i32 %13, 6
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 8
  %15 = icmp ult i32 %13, 8
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
  %24 = xor i32 %13, 8
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xa____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 10
  %15 = icmp ult i32 %13, 10
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
  %24 = xor i32 %13, 10
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xc____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 12
  %15 = icmp ult i32 %13, 12
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
  %24 = xor i32 %13, 12
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 14
  %15 = icmp ult i32 %13, 14
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
  %24 = xor i32 %13, 14
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 16
  %15 = icmp ult i32 %13, 16
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
  %24 = xor i32 %13, 16
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_47cbc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47cbca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x3e4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 996
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 996
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47ca53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_47cc18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xffffffff__0x48__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 72
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, -1
  %22 = icmp ult i32 %20, -1
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, -1
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %20, 31
  %44 = xor i32 %43, 1
  %45 = xor i32 %40, %43
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_47cc1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47d108(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1004
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_47cc3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47cc57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57c2fd___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c2fd_type* @G__0x57c2fd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1048
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x581d46___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x581d46_type* @G__0x581d46 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_je_.L_47d103(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x3d4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 980
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

define %struct.Memory* @routine_jge_.L_47d0fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3e4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 996
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -976
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x3f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 4
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

define %struct.Memory* @routine_jne_.L_47ceda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3d0__rbp__rax_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -976
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.defense_move_reason_known(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3fc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
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

define %struct.Memory* @routine_cmpl_0x64__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = add i64 %14, 100
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

define %struct.Memory* @routine_jge_.L_47ced5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x400__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1024
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x3c__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3e8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1000
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_47ce1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47cd9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x400__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1024
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47ce17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x5___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1028
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x404__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1028
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x3fc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1020
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

define %struct.Memory* @routine_jle_.L_47ce12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x404__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1028
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x3fc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3fc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1020
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_cmpl_0x64__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 100
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

define %struct.Memory* @routine_jl_.L_47ce0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47ce12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x400__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1024
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

define %struct.Memory* @routine_je_.L_47ced0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x3ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1004
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

define %struct.Memory* @routine_jne_.L_47ce65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47ce49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47ce60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1052
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47ce65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_47ce78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47cea8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x582dd0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x582dd0_type* @G__0x582dd0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3e0__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 992
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x3fc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1020
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

define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1056
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x3ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1004
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_callq_.add_defense_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47ced5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ceda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x3e8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1000
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

define %struct.Memory* @routine_jne_.L_47d0e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.attack_move_reason_known(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb4__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = add i64 %14, 180
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

define %struct.Memory* @routine_jge_.L_47d0e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x40c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1036
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8c__rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_47d027(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edi__MINUS0x410__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x408__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1032
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

define %struct.Memory* @routine_jle_.L_47d022(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x410__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x408__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x408__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 180
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

define %struct.Memory* @routine_jl_.L_47d01d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x40c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1036
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47d022(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x40c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1036
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

define %struct.Memory* @routine_je_.L_47d0db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47d070(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_47d054(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47d06b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1060
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47d070(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_47d083(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47d0b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x582e06___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x582e06_type* @G__0x582e06 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x408__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1032
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

define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1064
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.add_attack_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47d0e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47d0e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47d0ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47cc8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ca20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47d121(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ca03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_47d148(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_47d15f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1068
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.decrease_depth_values(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x430___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1072, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1072
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
  %25 = xor i64 1072, %9
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
