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
%G_0xab0f28_type = type <{ [1 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x582e3b_type = type <{ [8 x i8] }>
%G__0x582f5f_type = type <{ [8 x i8] }>
%G__0x58312b_type = type <{ [8 x i8] }>
%G__0x583146_type = type <{ [8 x i8] }>
%G__0x58316a_type = type <{ [8 x i8] }>
%G__0x583186_type = type <{ [8 x i8] }>
%G__0x5831aa_type = type <{ [8 x i8] }>
%G__0xae4250_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x582e3b = global %G__0x582e3b_type zeroinitializer
@G__0x582f5f = global %G__0x582f5f_type zeroinitializer
@G__0x58312b = global %G__0x58312b_type zeroinitializer
@G__0x583146 = global %G__0x583146_type zeroinitializer
@G__0x58316a = global %G__0x58316a_type zeroinitializer
@G__0x583186 = global %G__0x583186_type zeroinitializer
@G__0x5831aa = global %G__0x5831aa_type zeroinitializer
@G__0xae4250 = global %G__0xae4250_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

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

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_488480.propagate_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_488740.change_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4898c0.find_attack_patterns(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_488800.change_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_489900.find_defense_patterns(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_489940.attack_move_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4899a0.defense_move_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @find_worm_attacks_and_defenses(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4879c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4879c0, %struct.Memory** %MEMORY
  %loadMem_4879c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i798 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i798
  %27 = load i64, i64* %PC.i797
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i797
  store i64 %26, i64* %RBP.i799, align 8
  store %struct.Memory* %loadMem_4879c1, %struct.Memory** %MEMORY
  %loadMem_4879c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i796 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i796
  %36 = load i64, i64* %PC.i795
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i795
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i796, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_4879c4, %struct.Memory** %MEMORY
  %loadMem_4879c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %RBP.i794
  %74 = sub i64 %73, 4
  %75 = load i64, i64* %PC.i793
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i793
  %77 = inttoptr i64 %74 to i32*
  store i32 21, i32* %77
  store %struct.Memory* %loadMem_4879c8, %struct.Memory** %MEMORY
  br label %block_.L_4879cf

block_.L_4879cf:                                  ; preds = %block_.L_487b51, %entry
  %loadMem_4879cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 33
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i792
  %85 = sub i64 %84, 4
  %86 = load i64, i64* %PC.i791
  %87 = add i64 %86, 7
  store i64 %87, i64* %PC.i791
  %88 = inttoptr i64 %85 to i32*
  %89 = load i32, i32* %88
  %90 = sub i32 %89, 400
  %91 = icmp ult i32 %89, 400
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %92, i8* %93, align 1
  %94 = and i32 %90, 255
  %95 = call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %98, i8* %99, align 1
  %100 = xor i32 %89, 400
  %101 = xor i32 %100, %90
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %104, i8* %105, align 1
  %106 = icmp eq i32 %90, 0
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %107, i8* %108, align 1
  %109 = lshr i32 %90, 31
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %110, i8* %111, align 1
  %112 = lshr i32 %89, 31
  %113 = xor i32 %109, %112
  %114 = add i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %116, i8* %117, align 1
  store %struct.Memory* %loadMem_4879cf, %struct.Memory** %MEMORY
  %loadMem_4879d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %PC.i790
  %122 = add i64 %121, 393
  %123 = load i64, i64* %PC.i790
  %124 = add i64 %123, 6
  %125 = load i64, i64* %PC.i790
  %126 = add i64 %125, 6
  store i64 %126, i64* %PC.i790
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  %133 = xor i1 %129, %132
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %BRANCH_TAKEN, align 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %137 = select i1 %133, i64 %124, i64 %122
  store i64 %137, i64* %136, align 8
  store %struct.Memory* %loadMem_4879d6, %struct.Memory** %MEMORY
  %loadBr_4879d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4879d6 = icmp eq i8 %loadBr_4879d6, 1
  br i1 %cmpBr_4879d6, label %block_.L_487b5f, label %block_4879dc

block_4879dc:                                     ; preds = %block_.L_4879cf
  %loadMem_4879dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %146 to i64*
  %147 = load i64, i64* %RBP.i789
  %148 = sub i64 %147, 4
  %149 = load i64, i64* %PC.i787
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC.i787
  %151 = inttoptr i64 %148 to i32*
  %152 = load i32, i32* %151
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %RAX.i788, align 8
  store %struct.Memory* %loadMem_4879dc, %struct.Memory** %MEMORY
  %loadMem_4879e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %RCX.i786 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %RAX.i785
  %164 = add i64 %163, 12099168
  %165 = load i64, i64* %PC.i784
  %166 = add i64 %165, 8
  store i64 %166, i64* %PC.i784
  %167 = inttoptr i64 %164 to i8*
  %168 = load i8, i8* %167
  %169 = zext i8 %168 to i64
  store i64 %169, i64* %RCX.i786, align 8
  store %struct.Memory* %loadMem_4879e0, %struct.Memory** %MEMORY
  %loadMem_4879e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 33
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %ECX.i783 = bitcast %union.anon* %175 to i32*
  %176 = load i32, i32* %ECX.i783
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %PC.i782
  %179 = add i64 %178, 3
  store i64 %179, i64* %PC.i782
  %180 = sub i32 %176, 1
  %181 = icmp ult i32 %176, 1
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %182, i8* %183, align 1
  %184 = and i32 %180, 255
  %185 = call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %188, i8* %189, align 1
  %190 = xor i64 1, %177
  %191 = trunc i64 %190 to i32
  %192 = xor i32 %191, %180
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %195, i8* %196, align 1
  %197 = icmp eq i32 %180, 0
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %198, i8* %199, align 1
  %200 = lshr i32 %180, 31
  %201 = trunc i32 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %201, i8* %202, align 1
  %203 = lshr i32 %176, 31
  %204 = xor i32 %200, %203
  %205 = add i32 %204, %203
  %206 = icmp eq i32 %205, 2
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %207, i8* %208, align 1
  store %struct.Memory* %loadMem_4879e8, %struct.Memory** %MEMORY
  %loadMem_4879eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %PC.i781
  %213 = add i64 %212, 27
  %214 = load i64, i64* %PC.i781
  %215 = add i64 %214, 6
  %216 = load i64, i64* %PC.i781
  %217 = add i64 %216, 6
  store i64 %217, i64* %PC.i781
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %219 = load i8, i8* %218, align 1
  store i8 %219, i8* %BRANCH_TAKEN, align 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %221 = icmp ne i8 %219, 0
  %222 = select i1 %221, i64 %213, i64 %215
  store i64 %222, i64* %220, align 8
  store %struct.Memory* %loadMem_4879eb, %struct.Memory** %MEMORY
  %loadBr_4879eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4879eb = icmp eq i8 %loadBr_4879eb, 1
  br i1 %cmpBr_4879eb, label %block_.L_487a06, label %block_4879f1

block_4879f1:                                     ; preds = %block_4879dc
  %loadMem_4879f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 15
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %231 to i64*
  %232 = load i64, i64* %RBP.i780
  %233 = sub i64 %232, 4
  %234 = load i64, i64* %PC.i778
  %235 = add i64 %234, 4
  store i64 %235, i64* %PC.i778
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = sext i32 %237 to i64
  store i64 %238, i64* %RAX.i779, align 8
  store %struct.Memory* %loadMem_4879f1, %struct.Memory** %MEMORY
  %loadMem_4879f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %241 to i64*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RCX.i777 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %RAX.i776
  %249 = add i64 %248, 12099168
  %250 = load i64, i64* %PC.i775
  %251 = add i64 %250, 8
  store i64 %251, i64* %PC.i775
  %252 = inttoptr i64 %249 to i8*
  %253 = load i8, i8* %252
  %254 = zext i8 %253 to i64
  store i64 %254, i64* %RCX.i777, align 8
  store %struct.Memory* %loadMem_4879f5, %struct.Memory** %MEMORY
  %loadMem_4879fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %ECX.i774 = bitcast %union.anon* %260 to i32*
  %261 = load i32, i32* %ECX.i774
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %PC.i773
  %264 = add i64 %263, 3
  store i64 %264, i64* %PC.i773
  %265 = sub i32 %261, 2
  %266 = icmp ult i32 %261, 2
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %267, i8* %268, align 1
  %269 = and i32 %265, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269)
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1
  %275 = xor i64 2, %262
  %276 = trunc i64 %275 to i32
  %277 = xor i32 %276, %265
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %280, i8* %281, align 1
  %282 = icmp eq i32 %265, 0
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %283, i8* %284, align 1
  %285 = lshr i32 %265, 31
  %286 = trunc i32 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %286, i8* %287, align 1
  %288 = lshr i32 %261, 31
  %289 = xor i32 %285, %288
  %290 = add i32 %289, %288
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %292, i8* %293, align 1
  store %struct.Memory* %loadMem_4879fd, %struct.Memory** %MEMORY
  %loadMem_487a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %296 to i64*
  %297 = load i64, i64* %PC.i772
  %298 = add i64 %297, 26
  %299 = load i64, i64* %PC.i772
  %300 = add i64 %299, 6
  %301 = load i64, i64* %PC.i772
  %302 = add i64 %301, 6
  store i64 %302, i64* %PC.i772
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %304 = load i8, i8* %303, align 1
  %305 = icmp eq i8 %304, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %BRANCH_TAKEN, align 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %308 = select i1 %305, i64 %298, i64 %300
  store i64 %308, i64* %307, align 8
  store %struct.Memory* %loadMem_487a00, %struct.Memory** %MEMORY
  %loadBr_487a00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a00 = icmp eq i8 %loadBr_487a00, 1
  br i1 %cmpBr_487a00, label %block_.L_487a1a, label %block_.L_487a06

block_.L_487a06:                                  ; preds = %block_4879f1, %block_4879dc
  %loadMem_487a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 11
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RDI.i770 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 15
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RBP.i771
  %319 = sub i64 %318, 4
  %320 = load i64, i64* %PC.i769
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC.i769
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RDI.i770, align 8
  store %struct.Memory* %loadMem_487a06, %struct.Memory** %MEMORY
  %loadMem_487a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 9
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RSI.i767 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i768
  %335 = sub i64 %334, 4
  %336 = load i64, i64* %PC.i766
  %337 = add i64 %336, 3
  store i64 %337, i64* %PC.i766
  %338 = inttoptr i64 %335 to i32*
  %339 = load i32, i32* %338
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RSI.i767, align 8
  store %struct.Memory* %loadMem_487a09, %struct.Memory** %MEMORY
  %loadMem1_487a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %PC.i765
  %345 = add i64 %344, 1764
  %346 = load i64, i64* %PC.i765
  %347 = add i64 %346, 5
  %348 = load i64, i64* %PC.i765
  %349 = add i64 %348, 5
  store i64 %349, i64* %PC.i765
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = add i64 %351, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %347, i64* %353
  store i64 %352, i64* %350, align 8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %345, i64* %354, align 8
  store %struct.Memory* %loadMem1_487a0c, %struct.Memory** %MEMORY
  %loadMem2_487a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487a0c = load i64, i64* %3
  %call2_487a0c = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_487a0c, %struct.Memory* %loadMem2_487a0c)
  store %struct.Memory* %call2_487a0c, %struct.Memory** %MEMORY
  %loadMem_487a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %EAX.i764 = bitcast %union.anon* %360 to i32*
  %361 = load i32, i32* %EAX.i764
  %362 = zext i32 %361 to i64
  %363 = load i64, i64* %PC.i763
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC.i763
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %365, align 1
  %366 = and i32 %361, 255
  %367 = call i32 @llvm.ctpop.i32(i32 %366)
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %370, i8* %371, align 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %372, align 1
  %373 = icmp eq i32 %361, 0
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %374, i8* %375, align 1
  %376 = lshr i32 %361, 31
  %377 = trunc i32 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %377, i8* %378, align 1
  %379 = lshr i32 %361, 31
  %380 = xor i32 %376, %379
  %381 = add i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %383, i8* %384, align 1
  store %struct.Memory* %loadMem_487a11, %struct.Memory** %MEMORY
  %loadMem_487a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %387 to i64*
  %388 = load i64, i64* %PC.i762
  %389 = add i64 %388, 11
  %390 = load i64, i64* %PC.i762
  %391 = add i64 %390, 6
  %392 = load i64, i64* %PC.i762
  %393 = add i64 %392, 6
  store i64 %393, i64* %PC.i762
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %395 = load i8, i8* %394, align 1
  %396 = icmp eq i8 %395, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %BRANCH_TAKEN, align 1
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %399 = select i1 %396, i64 %389, i64 %391
  store i64 %399, i64* %398, align 8
  store %struct.Memory* %loadMem_487a14, %struct.Memory** %MEMORY
  %loadBr_487a14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a14 = icmp eq i8 %loadBr_487a14, 1
  br i1 %cmpBr_487a14, label %block_.L_487a1f, label %block_.L_487a1a

block_.L_487a1a:                                  ; preds = %block_.L_487a06, %block_4879f1
  %loadMem_487a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %PC.i761
  %404 = add i64 %403, 311
  %405 = load i64, i64* %PC.i761
  %406 = add i64 %405, 5
  store i64 %406, i64* %PC.i761
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %404, i64* %407, align 8
  store %struct.Memory* %loadMem_487a1a, %struct.Memory** %MEMORY
  br label %block_.L_487b51

block_.L_487a1f:                                  ; preds = %block_.L_487a06
  %loadMem_487a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %PC.i760
  %412 = add i64 %411, 8
  store i64 %412, i64* %PC.i760
  %413 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %414, align 1
  %415 = and i32 %413, 255
  %416 = call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %419, i8* %420, align 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %421, align 1
  %422 = icmp eq i32 %413, 0
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %423, i8* %424, align 1
  %425 = lshr i32 %413, 31
  %426 = trunc i32 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %426, i8* %427, align 1
  %428 = lshr i32 %413, 31
  %429 = xor i32 %425, %428
  %430 = add i32 %429, %428
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %432, i8* %433, align 1
  store %struct.Memory* %loadMem_487a1f, %struct.Memory** %MEMORY
  %loadMem_487a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %PC.i759
  %438 = add i64 %437, 11
  %439 = load i64, i64* %PC.i759
  %440 = add i64 %439, 6
  %441 = load i64, i64* %PC.i759
  %442 = add i64 %441, 6
  store i64 %442, i64* %PC.i759
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %444 = load i8, i8* %443, align 1
  %445 = icmp eq i8 %444, 0
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %BRANCH_TAKEN, align 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %448 = select i1 %445, i64 %438, i64 %440
  store i64 %448, i64* %447, align 8
  store %struct.Memory* %loadMem_487a27, %struct.Memory** %MEMORY
  %loadBr_487a27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a27 = icmp eq i8 %loadBr_487a27, 1
  br i1 %cmpBr_487a27, label %block_.L_487a32, label %block_487a2d

block_487a2d:                                     ; preds = %block_.L_487a1f
  %loadMem_487a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i758
  %453 = add i64 %452, 28
  %454 = load i64, i64* %PC.i758
  %455 = add i64 %454, 5
  store i64 %455, i64* %PC.i758
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %453, i64* %456, align 8
  store %struct.Memory* %loadMem_487a2d, %struct.Memory** %MEMORY
  br label %block_.L_487a49

block_.L_487a32:                                  ; preds = %block_.L_487a1f
  %loadMem_487a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 11
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RDI.i757 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %PC.i756
  %464 = add i64 %463, 10
  store i64 %464, i64* %PC.i756
  store i64 ptrtoint (%G__0x58312b_type* @G__0x58312b to i64), i64* %RDI.i757, align 8
  store %struct.Memory* %loadMem_487a32, %struct.Memory** %MEMORY
  %loadMem_487a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 9
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RSI.i754 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 15
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RBP.i755
  %475 = sub i64 %474, 4
  %476 = load i64, i64* %PC.i753
  %477 = add i64 %476, 3
  store i64 %477, i64* %PC.i753
  %478 = inttoptr i64 %475 to i32*
  %479 = load i32, i32* %478
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RSI.i754, align 8
  store %struct.Memory* %loadMem_487a3c, %struct.Memory** %MEMORY
  %loadMem_487a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %487 = bitcast %union.anon* %486 to %struct.anon.2*
  %AL.i752 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %487, i32 0, i32 0
  %488 = load i64, i64* %PC.i751
  %489 = add i64 %488, 2
  store i64 %489, i64* %PC.i751
  store i8 0, i8* %AL.i752, align 1
  store %struct.Memory* %loadMem_487a3f, %struct.Memory** %MEMORY
  %loadMem1_487a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %PC.i750
  %494 = add i64 %493, -220305
  %495 = load i64, i64* %PC.i750
  %496 = add i64 %495, 5
  %497 = load i64, i64* %PC.i750
  %498 = add i64 %497, 5
  store i64 %498, i64* %PC.i750
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 %496, i64* %502
  store i64 %501, i64* %499, align 8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %494, i64* %503, align 8
  store %struct.Memory* %loadMem1_487a41, %struct.Memory** %MEMORY
  %loadMem2_487a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487a41 = load i64, i64* %3
  %call2_487a41 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_487a41, %struct.Memory* %loadMem2_487a41)
  store %struct.Memory* %call2_487a41, %struct.Memory** %MEMORY
  %loadMem_487a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %EAX.i748 = bitcast %union.anon* %509 to i32*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 15
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %512 to i64*
  %513 = load i64, i64* %RBP.i749
  %514 = sub i64 %513, 48
  %515 = load i32, i32* %EAX.i748
  %516 = zext i32 %515 to i64
  %517 = load i64, i64* %PC.i747
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC.i747
  %519 = inttoptr i64 %514 to i32*
  store i32 %515, i32* %519
  store %struct.Memory* %loadMem_487a46, %struct.Memory** %MEMORY
  br label %block_.L_487a49

block_.L_487a49:                                  ; preds = %block_.L_487a32, %block_487a2d
  %loadMem_487a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 15
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %525 to i64*
  %526 = load i64, i64* %RBP.i746
  %527 = sub i64 %526, 8
  %528 = load i64, i64* %PC.i745
  %529 = add i64 %528, 7
  store i64 %529, i64* %PC.i745
  %530 = inttoptr i64 %527 to i32*
  store i32 0, i32* %530
  store %struct.Memory* %loadMem_487a49, %struct.Memory** %MEMORY
  br label %block_.L_487a50

block_.L_487a50:                                  ; preds = %block_487a5a, %block_.L_487a49
  %loadMem_487a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 15
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %RBP.i744
  %538 = sub i64 %537, 8
  %539 = load i64, i64* %PC.i743
  %540 = add i64 %539, 4
  store i64 %540, i64* %PC.i743
  %541 = inttoptr i64 %538 to i32*
  %542 = load i32, i32* %541
  %543 = sub i32 %542, 10
  %544 = icmp ult i32 %542, 10
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %545, i8* %546, align 1
  %547 = and i32 %543, 255
  %548 = call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %551, i8* %552, align 1
  %553 = xor i32 %542, 10
  %554 = xor i32 %553, %543
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %557, i8* %558, align 1
  %559 = icmp eq i32 %543, 0
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %560, i8* %561, align 1
  %562 = lshr i32 %543, 31
  %563 = trunc i32 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %563, i8* %564, align 1
  %565 = lshr i32 %542, 31
  %566 = xor i32 %562, %565
  %567 = add i32 %566, %565
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %569, i8* %570, align 1
  store %struct.Memory* %loadMem_487a50, %struct.Memory** %MEMORY
  %loadMem_487a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %PC.i742
  %575 = add i64 %574, 149
  %576 = load i64, i64* %PC.i742
  %577 = add i64 %576, 6
  %578 = load i64, i64* %PC.i742
  %579 = add i64 %578, 6
  store i64 %579, i64* %PC.i742
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %581 = load i8, i8* %580, align 1
  %582 = icmp ne i8 %581, 0
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %584 = load i8, i8* %583, align 1
  %585 = icmp ne i8 %584, 0
  %586 = xor i1 %582, %585
  %587 = xor i1 %586, true
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %BRANCH_TAKEN, align 1
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %590 = select i1 %586, i64 %577, i64 %575
  store i64 %590, i64* %589, align 8
  store %struct.Memory* %loadMem_487a54, %struct.Memory** %MEMORY
  %loadBr_487a54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a54 = icmp eq i8 %loadBr_487a54, 1
  br i1 %cmpBr_487a54, label %block_.L_487ae9, label %block_487a5a

block_487a5a:                                     ; preds = %block_.L_487a50
  %loadMem_487a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 33
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 1
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %PC.i740
  %598 = add i64 %597, 10
  store i64 %598, i64* %PC.i740
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i741, align 8
  store %struct.Memory* %loadMem_487a5a, %struct.Memory** %MEMORY
  %loadMem_487a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 33
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 15
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %607 to i64*
  %608 = load i64, i64* %RBP.i739
  %609 = sub i64 %608, 4
  %610 = load i64, i64* %PC.i737
  %611 = add i64 %610, 4
  store i64 %611, i64* %PC.i737
  %612 = inttoptr i64 %609 to i32*
  %613 = load i32, i32* %612
  %614 = sext i32 %613 to i64
  store i64 %614, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_487a64, %struct.Memory** %MEMORY
  %loadMem_487a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 5
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %RCX.i736
  %622 = load i64, i64* %PC.i735
  %623 = add i64 %622, 7
  store i64 %623, i64* %PC.i735
  %624 = sext i64 %621 to i128
  %625 = and i128 %624, -18446744073709551616
  %626 = zext i64 %621 to i128
  %627 = or i128 %625, %626
  %628 = mul i128 380, %627
  %629 = trunc i128 %628 to i64
  store i64 %629, i64* %RCX.i736, align 8
  %630 = sext i64 %629 to i128
  %631 = icmp ne i128 %630, %628
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %632, i8* %633, align 1
  %634 = trunc i128 %628 to i32
  %635 = and i32 %634, 255
  %636 = call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %639, i8* %640, align 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %641, align 1
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %642, align 1
  %643 = lshr i64 %629, 63
  %644 = trunc i64 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %644, i8* %645, align 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %632, i8* %646, align 1
  store %struct.Memory* %loadMem_487a68, %struct.Memory** %MEMORY
  %loadMem_487a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 1
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 7
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RDX.i734 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %RAX.i733
  %657 = load i64, i64* %PC.i732
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC.i732
  store i64 %656, i64* %RDX.i734, align 8
  store %struct.Memory* %loadMem_487a6f, %struct.Memory** %MEMORY
  %loadMem_487a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 5
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RCX.i730 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 7
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RDX.i731 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %RDX.i731
  %669 = load i64, i64* %RCX.i730
  %670 = load i64, i64* %PC.i729
  %671 = add i64 %670, 3
  store i64 %671, i64* %PC.i729
  %672 = add i64 %669, %668
  store i64 %672, i64* %RDX.i731, align 8
  %673 = icmp ult i64 %672, %668
  %674 = icmp ult i64 %672, %669
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %676, i8* %677, align 1
  %678 = trunc i64 %672 to i32
  %679 = and i32 %678, 255
  %680 = call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %683, i8* %684, align 1
  %685 = xor i64 %669, %668
  %686 = xor i64 %685, %672
  %687 = lshr i64 %686, 4
  %688 = trunc i64 %687 to i8
  %689 = and i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %689, i8* %690, align 1
  %691 = icmp eq i64 %672, 0
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %692, i8* %693, align 1
  %694 = lshr i64 %672, 63
  %695 = trunc i64 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %695, i8* %696, align 1
  %697 = lshr i64 %668, 63
  %698 = lshr i64 %669, 63
  %699 = xor i64 %694, %697
  %700 = xor i64 %694, %698
  %701 = add i64 %699, %700
  %702 = icmp eq i64 %701, 2
  %703 = zext i1 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %703, i8* %704, align 1
  store %struct.Memory* %loadMem_487a72, %struct.Memory** %MEMORY
  %loadMem_487a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 5
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RCX.i727 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 15
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %713 to i64*
  %714 = load i64, i64* %RBP.i728
  %715 = sub i64 %714, 8
  %716 = load i64, i64* %PC.i726
  %717 = add i64 %716, 4
  store i64 %717, i64* %PC.i726
  %718 = inttoptr i64 %715 to i32*
  %719 = load i32, i32* %718
  %720 = sext i32 %719 to i64
  store i64 %720, i64* %RCX.i727, align 8
  store %struct.Memory* %loadMem_487a75, %struct.Memory** %MEMORY
  %loadMem_487a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 5
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 7
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RDX.i725 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RDX.i725
  %731 = load i64, i64* %RCX.i724
  %732 = mul i64 %731, 4
  %733 = add i64 %730, 100
  %734 = add i64 %733, %732
  %735 = load i64, i64* %PC.i723
  %736 = add i64 %735, 8
  store i64 %736, i64* %PC.i723
  %737 = inttoptr i64 %734 to i32*
  store i32 0, i32* %737
  store %struct.Memory* %loadMem_487a79, %struct.Memory** %MEMORY
  %loadMem_487a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 5
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %RBP.i722
  %748 = sub i64 %747, 4
  %749 = load i64, i64* %PC.i720
  %750 = add i64 %749, 4
  store i64 %750, i64* %PC.i720
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = sext i32 %752 to i64
  store i64 %753, i64* %RCX.i721, align 8
  store %struct.Memory* %loadMem_487a81, %struct.Memory** %MEMORY
  %loadMem_487a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 5
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RCX.i719
  %761 = load i64, i64* %PC.i718
  %762 = add i64 %761, 7
  store i64 %762, i64* %PC.i718
  %763 = sext i64 %760 to i128
  %764 = and i128 %763, -18446744073709551616
  %765 = zext i64 %760 to i128
  %766 = or i128 %764, %765
  %767 = mul i128 380, %766
  %768 = trunc i128 %767 to i64
  store i64 %768, i64* %RCX.i719, align 8
  %769 = sext i64 %768 to i128
  %770 = icmp ne i128 %769, %767
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %771, i8* %772, align 1
  %773 = trunc i128 %767 to i32
  %774 = and i32 %773, 255
  %775 = call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %778, i8* %779, align 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %780, align 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %781, align 1
  %782 = lshr i64 %768, 63
  %783 = trunc i64 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %783, i8* %784, align 1
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %771, i8* %785, align 1
  store %struct.Memory* %loadMem_487a85, %struct.Memory** %MEMORY
  %loadMem_487a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 1
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RAX.i716 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 7
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RDX.i717 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %RAX.i716
  %796 = load i64, i64* %PC.i715
  %797 = add i64 %796, 3
  store i64 %797, i64* %PC.i715
  store i64 %795, i64* %RDX.i717, align 8
  store %struct.Memory* %loadMem_487a8c, %struct.Memory** %MEMORY
  %loadMem_487a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 5
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 7
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RDX.i714 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %RDX.i714
  %808 = load i64, i64* %RCX.i713
  %809 = load i64, i64* %PC.i712
  %810 = add i64 %809, 3
  store i64 %810, i64* %PC.i712
  %811 = add i64 %808, %807
  store i64 %811, i64* %RDX.i714, align 8
  %812 = icmp ult i64 %811, %807
  %813 = icmp ult i64 %811, %808
  %814 = or i1 %812, %813
  %815 = zext i1 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %815, i8* %816, align 1
  %817 = trunc i64 %811 to i32
  %818 = and i32 %817, 255
  %819 = call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %822, i8* %823, align 1
  %824 = xor i64 %808, %807
  %825 = xor i64 %824, %811
  %826 = lshr i64 %825, 4
  %827 = trunc i64 %826 to i8
  %828 = and i8 %827, 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %828, i8* %829, align 1
  %830 = icmp eq i64 %811, 0
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %831, i8* %832, align 1
  %833 = lshr i64 %811, 63
  %834 = trunc i64 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %834, i8* %835, align 1
  %836 = lshr i64 %807, 63
  %837 = lshr i64 %808, 63
  %838 = xor i64 %833, %836
  %839 = xor i64 %833, %837
  %840 = add i64 %838, %839
  %841 = icmp eq i64 %840, 2
  %842 = zext i1 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %842, i8* %843, align 1
  store %struct.Memory* %loadMem_487a8f, %struct.Memory** %MEMORY
  %loadMem_487a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 5
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RBP.i711
  %854 = sub i64 %853, 8
  %855 = load i64, i64* %PC.i709
  %856 = add i64 %855, 4
  store i64 %856, i64* %PC.i709
  %857 = inttoptr i64 %854 to i32*
  %858 = load i32, i32* %857
  %859 = sext i32 %858 to i64
  store i64 %859, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_487a92, %struct.Memory** %MEMORY
  %loadMem_487a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 5
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 7
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RDX.i708 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RDX.i708
  %870 = load i64, i64* %RCX.i707
  %871 = mul i64 %870, 4
  %872 = add i64 %869, 60
  %873 = add i64 %872, %871
  %874 = load i64, i64* %PC.i706
  %875 = add i64 %874, 8
  store i64 %875, i64* %PC.i706
  %876 = inttoptr i64 %873 to i32*
  store i32 0, i32* %876
  store %struct.Memory* %loadMem_487a96, %struct.Memory** %MEMORY
  %loadMem_487a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 5
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 15
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RBP.i705
  %887 = sub i64 %886, 4
  %888 = load i64, i64* %PC.i703
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i703
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890
  %892 = sext i32 %891 to i64
  store i64 %892, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_487a9e, %struct.Memory** %MEMORY
  %loadMem_487aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 5
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %RCX.i702
  %900 = load i64, i64* %PC.i701
  %901 = add i64 %900, 7
  store i64 %901, i64* %PC.i701
  %902 = sext i64 %899 to i128
  %903 = and i128 %902, -18446744073709551616
  %904 = zext i64 %899 to i128
  %905 = or i128 %903, %904
  %906 = mul i128 380, %905
  %907 = trunc i128 %906 to i64
  store i64 %907, i64* %RCX.i702, align 8
  %908 = sext i64 %907 to i128
  %909 = icmp ne i128 %908, %906
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %910, i8* %911, align 1
  %912 = trunc i128 %906 to i32
  %913 = and i32 %912, 255
  %914 = call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %917, i8* %918, align 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %919, align 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %920, align 1
  %921 = lshr i64 %907, 63
  %922 = trunc i64 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %922, i8* %923, align 1
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %910, i8* %924, align 1
  store %struct.Memory* %loadMem_487aa2, %struct.Memory** %MEMORY
  %loadMem_487aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 7
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RDX.i700 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RAX.i699
  %935 = load i64, i64* %PC.i698
  %936 = add i64 %935, 3
  store i64 %936, i64* %PC.i698
  store i64 %934, i64* %RDX.i700, align 8
  store %struct.Memory* %loadMem_487aa9, %struct.Memory** %MEMORY
  %loadMem_487aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 5
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 7
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RDX.i697 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RDX.i697
  %947 = load i64, i64* %RCX.i696
  %948 = load i64, i64* %PC.i695
  %949 = add i64 %948, 3
  store i64 %949, i64* %PC.i695
  %950 = add i64 %947, %946
  store i64 %950, i64* %RDX.i697, align 8
  %951 = icmp ult i64 %950, %946
  %952 = icmp ult i64 %950, %947
  %953 = or i1 %951, %952
  %954 = zext i1 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %954, i8* %955, align 1
  %956 = trunc i64 %950 to i32
  %957 = and i32 %956, 255
  %958 = call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %961, i8* %962, align 1
  %963 = xor i64 %947, %946
  %964 = xor i64 %963, %950
  %965 = lshr i64 %964, 4
  %966 = trunc i64 %965 to i8
  %967 = and i8 %966, 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %967, i8* %968, align 1
  %969 = icmp eq i64 %950, 0
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %970, i8* %971, align 1
  %972 = lshr i64 %950, 63
  %973 = trunc i64 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %973, i8* %974, align 1
  %975 = lshr i64 %946, 63
  %976 = lshr i64 %947, 63
  %977 = xor i64 %972, %975
  %978 = xor i64 %972, %976
  %979 = add i64 %977, %978
  %980 = icmp eq i64 %979, 2
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %981, i8* %982, align 1
  store %struct.Memory* %loadMem_487aac, %struct.Memory** %MEMORY
  %loadMem_487aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 5
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 15
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %RBP.i694
  %993 = sub i64 %992, 8
  %994 = load i64, i64* %PC.i692
  %995 = add i64 %994, 4
  store i64 %995, i64* %PC.i692
  %996 = inttoptr i64 %993 to i32*
  %997 = load i32, i32* %996
  %998 = sext i32 %997 to i64
  store i64 %998, i64* %RCX.i693, align 8
  store %struct.Memory* %loadMem_487aaf, %struct.Memory** %MEMORY
  %loadMem_487ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 5
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 7
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %RDX.i691
  %1009 = load i64, i64* %RCX.i690
  %1010 = mul i64 %1009, 4
  %1011 = add i64 %1008, 180
  %1012 = add i64 %1011, %1010
  %1013 = load i64, i64* %PC.i689
  %1014 = add i64 %1013, 11
  store i64 %1014, i64* %PC.i689
  %1015 = inttoptr i64 %1012 to i32*
  store i32 0, i32* %1015
  store %struct.Memory* %loadMem_487ab3, %struct.Memory** %MEMORY
  %loadMem_487abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 5
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 15
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RBP.i688
  %1026 = sub i64 %1025, 4
  %1027 = load i64, i64* %PC.i686
  %1028 = add i64 %1027, 4
  store i64 %1028, i64* %PC.i686
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = sext i32 %1030 to i64
  store i64 %1031, i64* %RCX.i687, align 8
  store %struct.Memory* %loadMem_487abe, %struct.Memory** %MEMORY
  %loadMem_487ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 5
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %RCX.i685
  %1039 = load i64, i64* %PC.i684
  %1040 = add i64 %1039, 7
  store i64 %1040, i64* %PC.i684
  %1041 = sext i64 %1038 to i128
  %1042 = and i128 %1041, -18446744073709551616
  %1043 = zext i64 %1038 to i128
  %1044 = or i128 %1042, %1043
  %1045 = mul i128 380, %1044
  %1046 = trunc i128 %1045 to i64
  store i64 %1046, i64* %RCX.i685, align 8
  %1047 = sext i64 %1046 to i128
  %1048 = icmp ne i128 %1047, %1045
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1049, i8* %1050, align 1
  %1051 = trunc i128 %1045 to i32
  %1052 = and i32 %1051, 255
  %1053 = call i32 @llvm.ctpop.i32(i32 %1052)
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1056, i8* %1057, align 1
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1058, align 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1059, align 1
  %1060 = lshr i64 %1046, 63
  %1061 = trunc i64 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1061, i8* %1062, align 1
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1049, i8* %1063, align 1
  store %struct.Memory* %loadMem_487ac2, %struct.Memory** %MEMORY
  %loadMem_487ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 33
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 1
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 5
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RAX.i682
  %1074 = load i64, i64* %RCX.i683
  %1075 = load i64, i64* %PC.i681
  %1076 = add i64 %1075, 3
  store i64 %1076, i64* %PC.i681
  %1077 = add i64 %1074, %1073
  store i64 %1077, i64* %RAX.i682, align 8
  %1078 = icmp ult i64 %1077, %1073
  %1079 = icmp ult i64 %1077, %1074
  %1080 = or i1 %1078, %1079
  %1081 = zext i1 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1081, i8* %1082, align 1
  %1083 = trunc i64 %1077 to i32
  %1084 = and i32 %1083, 255
  %1085 = call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1088, i8* %1089, align 1
  %1090 = xor i64 %1074, %1073
  %1091 = xor i64 %1090, %1077
  %1092 = lshr i64 %1091, 4
  %1093 = trunc i64 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1094, i8* %1095, align 1
  %1096 = icmp eq i64 %1077, 0
  %1097 = zext i1 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1097, i8* %1098, align 1
  %1099 = lshr i64 %1077, 63
  %1100 = trunc i64 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1100, i8* %1101, align 1
  %1102 = lshr i64 %1073, 63
  %1103 = lshr i64 %1074, 63
  %1104 = xor i64 %1099, %1102
  %1105 = xor i64 %1099, %1103
  %1106 = add i64 %1104, %1105
  %1107 = icmp eq i64 %1106, 2
  %1108 = zext i1 %1107 to i8
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1108, i8* %1109, align 1
  store %struct.Memory* %loadMem_487ac9, %struct.Memory** %MEMORY
  %loadMem_487acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 33
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1112 to i64*
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1114 = getelementptr inbounds %struct.GPR, %struct.GPR* %1113, i32 0, i32 5
  %1115 = getelementptr inbounds %struct.Reg, %struct.Reg* %1114, i32 0, i32 0
  %RCX.i679 = bitcast %union.anon* %1115 to i64*
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 15
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %1118 to i64*
  %1119 = load i64, i64* %RBP.i680
  %1120 = sub i64 %1119, 8
  %1121 = load i64, i64* %PC.i678
  %1122 = add i64 %1121, 4
  store i64 %1122, i64* %PC.i678
  %1123 = inttoptr i64 %1120 to i32*
  %1124 = load i32, i32* %1123
  %1125 = sext i32 %1124 to i64
  store i64 %1125, i64* %RCX.i679, align 8
  store %struct.Memory* %loadMem_487acc, %struct.Memory** %MEMORY
  %loadMem_487ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 1
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RAX.i676 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 5
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %1134 to i64*
  %1135 = load i64, i64* %RAX.i676
  %1136 = load i64, i64* %RCX.i677
  %1137 = mul i64 %1136, 4
  %1138 = add i64 %1135, 140
  %1139 = add i64 %1138, %1137
  %1140 = load i64, i64* %PC.i675
  %1141 = add i64 %1140, 11
  store i64 %1141, i64* %PC.i675
  %1142 = inttoptr i64 %1139 to i32*
  store i32 0, i32* %1142
  store %struct.Memory* %loadMem_487ad0, %struct.Memory** %MEMORY
  %loadMem_487adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 1
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 15
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %RBP.i674
  %1153 = sub i64 %1152, 8
  %1154 = load i64, i64* %PC.i672
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i672
  %1156 = inttoptr i64 %1153 to i32*
  %1157 = load i32, i32* %1156
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RAX.i673, align 8
  store %struct.Memory* %loadMem_487adb, %struct.Memory** %MEMORY
  %loadMem_487ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 1
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %1164 to i64*
  %1165 = load i64, i64* %RAX.i671
  %1166 = load i64, i64* %PC.i670
  %1167 = add i64 %1166, 3
  store i64 %1167, i64* %PC.i670
  %1168 = trunc i64 %1165 to i32
  %1169 = add i32 1, %1168
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RAX.i671, align 8
  %1171 = icmp ult i32 %1169, %1168
  %1172 = icmp ult i32 %1169, 1
  %1173 = or i1 %1171, %1172
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1174, i8* %1175, align 1
  %1176 = and i32 %1169, 255
  %1177 = call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1180, i8* %1181, align 1
  %1182 = xor i64 1, %1165
  %1183 = trunc i64 %1182 to i32
  %1184 = xor i32 %1183, %1169
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1187, i8* %1188, align 1
  %1189 = icmp eq i32 %1169, 0
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1190, i8* %1191, align 1
  %1192 = lshr i32 %1169, 31
  %1193 = trunc i32 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1193, i8* %1194, align 1
  %1195 = lshr i32 %1168, 31
  %1196 = xor i32 %1192, %1195
  %1197 = add i32 %1196, %1192
  %1198 = icmp eq i32 %1197, 2
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1199, i8* %1200, align 1
  store %struct.Memory* %loadMem_487ade, %struct.Memory** %MEMORY
  %loadMem_487ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %EAX.i668 = bitcast %union.anon* %1206 to i32*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RBP.i669
  %1211 = sub i64 %1210, 8
  %1212 = load i32, i32* %EAX.i668
  %1213 = zext i32 %1212 to i64
  %1214 = load i64, i64* %PC.i667
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC.i667
  %1216 = inttoptr i64 %1211 to i32*
  store i32 %1212, i32* %1216
  store %struct.Memory* %loadMem_487ae1, %struct.Memory** %MEMORY
  %loadMem_487ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %PC.i666
  %1221 = add i64 %1220, -148
  %1222 = load i64, i64* %PC.i666
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC.i666
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1221, i64* %1224, align 8
  store %struct.Memory* %loadMem_487ae4, %struct.Memory** %MEMORY
  br label %block_.L_487a50

block_.L_487ae9:                                  ; preds = %block_.L_487a50
  %loadMem_487ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 11
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RDI.i664 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 15
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %RBP.i665
  %1235 = sub i64 %1234, 4
  %1236 = load i64, i64* %PC.i663
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %PC.i663
  %1238 = inttoptr i64 %1235 to i32*
  %1239 = load i32, i32* %1238
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RDI.i664, align 8
  store %struct.Memory* %loadMem_487ae9, %struct.Memory** %MEMORY
  %loadMem1_487aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %PC.i662
  %1245 = add i64 %1244, 2452
  %1246 = load i64, i64* %PC.i662
  %1247 = add i64 %1246, 5
  %1248 = load i64, i64* %PC.i662
  %1249 = add i64 %1248, 5
  store i64 %1249, i64* %PC.i662
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1251 = load i64, i64* %1250, align 8
  %1252 = add i64 %1251, -8
  %1253 = inttoptr i64 %1252 to i64*
  store i64 %1247, i64* %1253
  store i64 %1252, i64* %1250, align 8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1245, i64* %1254, align 8
  store %struct.Memory* %loadMem1_487aec, %struct.Memory** %MEMORY
  %loadMem2_487aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487aec = load i64, i64* %3
  %call2_487aec = call %struct.Memory* @sub_488480.propagate_worm(%struct.State* %0, i64 %loadPC_487aec, %struct.Memory* %loadMem2_487aec)
  store %struct.Memory* %call2_487aec, %struct.Memory** %MEMORY
  %loadMem_487af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 9
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RSI.i660 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i661
  %1265 = sub i64 %1264, 20
  %1266 = load i64, i64* %PC.i659
  %1267 = add i64 %1266, 4
  store i64 %1267, i64* %PC.i659
  store i64 %1265, i64* %RSI.i660, align 8
  store %struct.Memory* %loadMem_487af1, %struct.Memory** %MEMORY
  %loadMem_487af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 33
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 11
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RDI.i657 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 15
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %RBP.i658
  %1278 = sub i64 %1277, 4
  %1279 = load i64, i64* %PC.i656
  %1280 = add i64 %1279, 3
  store i64 %1280, i64* %PC.i656
  %1281 = inttoptr i64 %1278 to i32*
  %1282 = load i32, i32* %1281
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RDI.i657, align 8
  store %struct.Memory* %loadMem_487af5, %struct.Memory** %MEMORY
  %loadMem1_487af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1286 to i64*
  %1287 = load i64, i64* %PC.i655
  %1288 = add i64 %1287, -171960
  %1289 = load i64, i64* %PC.i655
  %1290 = add i64 %1289, 5
  %1291 = load i64, i64* %PC.i655
  %1292 = add i64 %1291, 5
  store i64 %1292, i64* %PC.i655
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1294 = load i64, i64* %1293, align 8
  %1295 = add i64 %1294, -8
  %1296 = inttoptr i64 %1295 to i64*
  store i64 %1290, i64* %1296
  store i64 %1295, i64* %1293, align 8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1288, i64* %1297, align 8
  store %struct.Memory* %loadMem1_487af8, %struct.Memory** %MEMORY
  %loadMem2_487af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487af8 = load i64, i64* %3
  %call2_487af8 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_487af8, %struct.Memory* %loadMem2_487af8)
  store %struct.Memory* %call2_487af8, %struct.Memory** %MEMORY
  %loadMem_487afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 1
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %EAX.i653 = bitcast %union.anon* %1303 to i32*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 15
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %RBP.i654
  %1308 = sub i64 %1307, 12
  %1309 = load i32, i32* %EAX.i653
  %1310 = zext i32 %1309 to i64
  %1311 = load i64, i64* %PC.i652
  %1312 = add i64 %1311, 3
  store i64 %1312, i64* %PC.i652
  %1313 = inttoptr i64 %1308 to i32*
  store i32 %1309, i32* %1313
  store %struct.Memory* %loadMem_487afd, %struct.Memory** %MEMORY
  %loadMem_487b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 15
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %RBP.i651
  %1321 = sub i64 %1320, 12
  %1322 = load i64, i64* %PC.i650
  %1323 = add i64 %1322, 4
  store i64 %1323, i64* %PC.i650
  %1324 = inttoptr i64 %1321 to i32*
  %1325 = load i32, i32* %1324
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1326, align 1
  %1327 = and i32 %1325, 255
  %1328 = call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1331, i8* %1332, align 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1333, align 1
  %1334 = icmp eq i32 %1325, 0
  %1335 = zext i1 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1335, i8* %1336, align 1
  %1337 = lshr i32 %1325, 31
  %1338 = trunc i32 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1338, i8* %1339, align 1
  %1340 = lshr i32 %1325, 31
  %1341 = xor i32 %1337, %1340
  %1342 = add i32 %1341, %1340
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1344, i8* %1345, align 1
  store %struct.Memory* %loadMem_487b00, %struct.Memory** %MEMORY
  %loadMem_487b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %PC.i649
  %1350 = add i64 %1349, 72
  %1351 = load i64, i64* %PC.i649
  %1352 = add i64 %1351, 6
  %1353 = load i64, i64* %PC.i649
  %1354 = add i64 %1353, 6
  store i64 %1354, i64* %PC.i649
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1356 = load i8, i8* %1355, align 1
  store i8 %1356, i8* %BRANCH_TAKEN, align 1
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1358 = icmp ne i8 %1356, 0
  %1359 = select i1 %1358, i64 %1350, i64 %1352
  store i64 %1359, i64* %1357, align 8
  store %struct.Memory* %loadMem_487b04, %struct.Memory** %MEMORY
  %loadBr_487b04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487b04 = icmp eq i8 %loadBr_487b04, 1
  br i1 %cmpBr_487b04, label %block_.L_487b4c, label %block_487b0a

block_487b0a:                                     ; preds = %block_.L_487ae9
  %loadMem_487b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 1
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %PC.i647
  %1367 = add i64 %1366, 7
  store i64 %1367, i64* %PC.i647
  %1368 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %1369 = zext i32 %1368 to i64
  store i64 %1369, i64* %RAX.i648, align 8
  store %struct.Memory* %loadMem_487b0a, %struct.Memory** %MEMORY
  %loadMem_487b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 1
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %1375 to i64*
  %1376 = load i64, i64* %RAX.i646
  %1377 = load i64, i64* %PC.i645
  %1378 = add i64 %1377, 5
  store i64 %1378, i64* %PC.i645
  %1379 = and i64 1024, %1376
  %1380 = trunc i64 %1379 to i32
  store i64 %1379, i64* %RAX.i646, align 8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1381, align 1
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1382, align 1
  %1383 = icmp eq i32 %1380, 0
  %1384 = zext i1 %1383 to i8
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1384, i8* %1385, align 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1386, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1387, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1388, align 1
  store %struct.Memory* %loadMem_487b11, %struct.Memory** %MEMORY
  %loadMem_487b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 1
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %EAX.i644 = bitcast %union.anon* %1394 to i32*
  %1395 = load i32, i32* %EAX.i644
  %1396 = zext i32 %1395 to i64
  %1397 = load i64, i64* %PC.i643
  %1398 = add i64 %1397, 3
  store i64 %1398, i64* %PC.i643
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1399, align 1
  %1400 = and i32 %1395, 255
  %1401 = call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1404, i8* %1405, align 1
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1406, align 1
  %1407 = icmp eq i32 %1395, 0
  %1408 = zext i1 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1408, i8* %1409, align 1
  %1410 = lshr i32 %1395, 31
  %1411 = trunc i32 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1411, i8* %1412, align 1
  %1413 = lshr i32 %1395, 31
  %1414 = xor i32 %1410, %1413
  %1415 = add i32 %1414, %1413
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1417, i8* %1418, align 1
  store %struct.Memory* %loadMem_487b16, %struct.Memory** %MEMORY
  %loadMem_487b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %PC.i642
  %1423 = add i64 %1422, 11
  %1424 = load i64, i64* %PC.i642
  %1425 = add i64 %1424, 6
  %1426 = load i64, i64* %PC.i642
  %1427 = add i64 %1426, 6
  store i64 %1427, i64* %PC.i642
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1429 = load i8, i8* %1428, align 1
  %1430 = icmp eq i8 %1429, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %BRANCH_TAKEN, align 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1433 = select i1 %1430, i64 %1423, i64 %1425
  store i64 %1433, i64* %1432, align 8
  store %struct.Memory* %loadMem_487b19, %struct.Memory** %MEMORY
  %loadBr_487b19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487b19 = icmp eq i8 %loadBr_487b19, 1
  br i1 %cmpBr_487b19, label %block_.L_487b24, label %block_487b1f

block_487b1f:                                     ; preds = %block_487b0a
  %loadMem_487b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1436 to i64*
  %1437 = load i64, i64* %PC.i641
  %1438 = add i64 %1437, 31
  %1439 = load i64, i64* %PC.i641
  %1440 = add i64 %1439, 5
  store i64 %1440, i64* %PC.i641
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1438, i64* %1441, align 8
  store %struct.Memory* %loadMem_487b1f, %struct.Memory** %MEMORY
  br label %block_.L_487b3e

block_.L_487b24:                                  ; preds = %block_487b0a
  %loadMem_487b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 11
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RDI.i640 = bitcast %union.anon* %1447 to i64*
  %1448 = load i64, i64* %PC.i639
  %1449 = add i64 %1448, 10
  store i64 %1449, i64* %PC.i639
  store i64 ptrtoint (%G__0x583146_type* @G__0x583146 to i64), i64* %RDI.i640, align 8
  store %struct.Memory* %loadMem_487b24, %struct.Memory** %MEMORY
  %loadMem_487b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 9
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RSI.i637 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RBP.i638
  %1460 = sub i64 %1459, 4
  %1461 = load i64, i64* %PC.i636
  %1462 = add i64 %1461, 3
  store i64 %1462, i64* %PC.i636
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RSI.i637, align 8
  store %struct.Memory* %loadMem_487b2e, %struct.Memory** %MEMORY
  %loadMem_487b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 7
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RDX.i634 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 15
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %RBP.i635
  %1476 = sub i64 %1475, 20
  %1477 = load i64, i64* %PC.i633
  %1478 = add i64 %1477, 3
  store i64 %1478, i64* %PC.i633
  %1479 = inttoptr i64 %1476 to i32*
  %1480 = load i32, i32* %1479
  %1481 = zext i32 %1480 to i64
  store i64 %1481, i64* %RDX.i634, align 8
  store %struct.Memory* %loadMem_487b31, %struct.Memory** %MEMORY
  %loadMem_487b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 1
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %1488 = bitcast %union.anon* %1487 to %struct.anon.2*
  %AL.i632 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1488, i32 0, i32 0
  %1489 = load i64, i64* %PC.i631
  %1490 = add i64 %1489, 2
  store i64 %1490, i64* %PC.i631
  store i8 0, i8* %AL.i632, align 1
  store %struct.Memory* %loadMem_487b34, %struct.Memory** %MEMORY
  %loadMem1_487b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1493 to i64*
  %1494 = load i64, i64* %PC.i630
  %1495 = add i64 %1494, -220550
  %1496 = load i64, i64* %PC.i630
  %1497 = add i64 %1496, 5
  %1498 = load i64, i64* %PC.i630
  %1499 = add i64 %1498, 5
  store i64 %1499, i64* %PC.i630
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1501 = load i64, i64* %1500, align 8
  %1502 = add i64 %1501, -8
  %1503 = inttoptr i64 %1502 to i64*
  store i64 %1497, i64* %1503
  store i64 %1502, i64* %1500, align 8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1495, i64* %1504, align 8
  store %struct.Memory* %loadMem1_487b36, %struct.Memory** %MEMORY
  %loadMem2_487b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b36 = load i64, i64* %3
  %call2_487b36 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_487b36, %struct.Memory* %loadMem2_487b36)
  store %struct.Memory* %call2_487b36, %struct.Memory** %MEMORY
  %loadMem_487b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 33
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 1
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %EAX.i628 = bitcast %union.anon* %1510 to i32*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 15
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %RBP.i629
  %1515 = sub i64 %1514, 52
  %1516 = load i32, i32* %EAX.i628
  %1517 = zext i32 %1516 to i64
  %1518 = load i64, i64* %PC.i627
  %1519 = add i64 %1518, 3
  store i64 %1519, i64* %PC.i627
  %1520 = inttoptr i64 %1515 to i32*
  store i32 %1516, i32* %1520
  store %struct.Memory* %loadMem_487b3b, %struct.Memory** %MEMORY
  br label %block_.L_487b3e

block_.L_487b3e:                                  ; preds = %block_.L_487b24, %block_487b1f
  %loadMem_487b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 11
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RDI.i625 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 15
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %1529 to i64*
  %1530 = load i64, i64* %RBP.i626
  %1531 = sub i64 %1530, 4
  %1532 = load i64, i64* %PC.i624
  %1533 = add i64 %1532, 3
  store i64 %1533, i64* %PC.i624
  %1534 = inttoptr i64 %1531 to i32*
  %1535 = load i32, i32* %1534
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RDI.i625, align 8
  store %struct.Memory* %loadMem_487b3e, %struct.Memory** %MEMORY
  %loadMem_487b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 9
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RSI.i622 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 15
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %1545 to i64*
  %1546 = load i64, i64* %RBP.i623
  %1547 = sub i64 %1546, 20
  %1548 = load i64, i64* %PC.i621
  %1549 = add i64 %1548, 3
  store i64 %1549, i64* %PC.i621
  %1550 = inttoptr i64 %1547 to i32*
  %1551 = load i32, i32* %1550
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RSI.i622, align 8
  store %struct.Memory* %loadMem_487b41, %struct.Memory** %MEMORY
  %loadMem_487b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 7
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RDX.i619 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 15
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %RBP.i620
  %1563 = sub i64 %1562, 12
  %1564 = load i64, i64* %PC.i618
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %PC.i618
  %1566 = inttoptr i64 %1563 to i32*
  %1567 = load i32, i32* %1566
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RDX.i619, align 8
  store %struct.Memory* %loadMem_487b44, %struct.Memory** %MEMORY
  %loadMem1_487b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %PC.i617
  %1573 = add i64 %1572, 3065
  %1574 = load i64, i64* %PC.i617
  %1575 = add i64 %1574, 5
  %1576 = load i64, i64* %PC.i617
  %1577 = add i64 %1576, 5
  store i64 %1577, i64* %PC.i617
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1579 = load i64, i64* %1578, align 8
  %1580 = add i64 %1579, -8
  %1581 = inttoptr i64 %1580 to i64*
  store i64 %1575, i64* %1581
  store i64 %1580, i64* %1578, align 8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1573, i64* %1582, align 8
  store %struct.Memory* %loadMem1_487b47, %struct.Memory** %MEMORY
  %loadMem2_487b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b47 = load i64, i64* %3
  %call2_487b47 = call %struct.Memory* @sub_488740.change_attack(%struct.State* %0, i64 %loadPC_487b47, %struct.Memory* %loadMem2_487b47)
  store %struct.Memory* %call2_487b47, %struct.Memory** %MEMORY
  br label %block_.L_487b4c

block_.L_487b4c:                                  ; preds = %block_.L_487b3e, %block_.L_487ae9
  %loadMem_487b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %PC.i616
  %1587 = add i64 %1586, 5
  %1588 = load i64, i64* %PC.i616
  %1589 = add i64 %1588, 5
  store i64 %1589, i64* %PC.i616
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1587, i64* %1590, align 8
  store %struct.Memory* %loadMem_487b4c, %struct.Memory** %MEMORY
  br label %block_.L_487b51

block_.L_487b51:                                  ; preds = %block_.L_487b4c, %block_.L_487a1a
  %loadMem_487b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 1
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 15
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %1599 to i64*
  %1600 = load i64, i64* %RBP.i615
  %1601 = sub i64 %1600, 4
  %1602 = load i64, i64* %PC.i613
  %1603 = add i64 %1602, 3
  store i64 %1603, i64* %PC.i613
  %1604 = inttoptr i64 %1601 to i32*
  %1605 = load i32, i32* %1604
  %1606 = zext i32 %1605 to i64
  store i64 %1606, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_487b51, %struct.Memory** %MEMORY
  %loadMem_487b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 1
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RAX.i612
  %1614 = load i64, i64* %PC.i611
  %1615 = add i64 %1614, 3
  store i64 %1615, i64* %PC.i611
  %1616 = trunc i64 %1613 to i32
  %1617 = add i32 1, %1616
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX.i612, align 8
  %1619 = icmp ult i32 %1617, %1616
  %1620 = icmp ult i32 %1617, 1
  %1621 = or i1 %1619, %1620
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1622, i8* %1623, align 1
  %1624 = and i32 %1617, 255
  %1625 = call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1628, i8* %1629, align 1
  %1630 = xor i64 1, %1613
  %1631 = trunc i64 %1630 to i32
  %1632 = xor i32 %1631, %1617
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1635, i8* %1636, align 1
  %1637 = icmp eq i32 %1617, 0
  %1638 = zext i1 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1638, i8* %1639, align 1
  %1640 = lshr i32 %1617, 31
  %1641 = trunc i32 %1640 to i8
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1641, i8* %1642, align 1
  %1643 = lshr i32 %1616, 31
  %1644 = xor i32 %1640, %1643
  %1645 = add i32 %1644, %1640
  %1646 = icmp eq i32 %1645, 2
  %1647 = zext i1 %1646 to i8
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1647, i8* %1648, align 1
  store %struct.Memory* %loadMem_487b54, %struct.Memory** %MEMORY
  %loadMem_487b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %EAX.i609 = bitcast %union.anon* %1654 to i32*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 15
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RBP.i610 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RBP.i610
  %1659 = sub i64 %1658, 4
  %1660 = load i32, i32* %EAX.i609
  %1661 = zext i32 %1660 to i64
  %1662 = load i64, i64* %PC.i608
  %1663 = add i64 %1662, 3
  store i64 %1663, i64* %PC.i608
  %1664 = inttoptr i64 %1659 to i32*
  store i32 %1660, i32* %1664
  store %struct.Memory* %loadMem_487b57, %struct.Memory** %MEMORY
  %loadMem_487b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %PC.i607
  %1669 = add i64 %1668, -395
  %1670 = load i64, i64* %PC.i607
  %1671 = add i64 %1670, 5
  store i64 %1671, i64* %PC.i607
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1669, i64* %1672, align 8
  store %struct.Memory* %loadMem_487b5a, %struct.Memory** %MEMORY
  br label %block_.L_4879cf

block_.L_487b5f:                                  ; preds = %block_.L_4879cf
  %loadMem_487b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %PC.i606
  %1677 = add i64 %1676, 8
  store i64 %1677, i64* %PC.i606
  %1678 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1679, align 1
  %1680 = and i32 %1678, 255
  %1681 = call i32 @llvm.ctpop.i32(i32 %1680)
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  %1684 = xor i8 %1683, 1
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1684, i8* %1685, align 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1686, align 1
  %1687 = icmp eq i32 %1678, 0
  %1688 = zext i1 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1688, i8* %1689, align 1
  %1690 = lshr i32 %1678, 31
  %1691 = trunc i32 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1678, 31
  %1694 = xor i32 %1690, %1693
  %1695 = add i32 %1694, %1693
  %1696 = icmp eq i32 %1695, 2
  %1697 = zext i1 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1697, i8* %1698, align 1
  store %struct.Memory* %loadMem_487b5f, %struct.Memory** %MEMORY
  %loadMem_487b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %PC.i605
  %1703 = add i64 %1702, 11
  %1704 = load i64, i64* %PC.i605
  %1705 = add i64 %1704, 6
  %1706 = load i64, i64* %PC.i605
  %1707 = add i64 %1706, 6
  store i64 %1707, i64* %PC.i605
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1709 = load i8, i8* %1708, align 1
  %1710 = icmp eq i8 %1709, 0
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %BRANCH_TAKEN, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1713 = select i1 %1710, i64 %1703, i64 %1705
  store i64 %1713, i64* %1712, align 8
  store %struct.Memory* %loadMem_487b67, %struct.Memory** %MEMORY
  %loadBr_487b67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487b67 = icmp eq i8 %loadBr_487b67, 1
  br i1 %cmpBr_487b67, label %block_.L_487b72, label %block_487b6d

block_487b6d:                                     ; preds = %block_.L_487b5f
  %loadMem_487b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1716 to i64*
  %1717 = load i64, i64* %PC.i604
  %1718 = add i64 %1717, 45
  %1719 = load i64, i64* %PC.i604
  %1720 = add i64 %1719, 5
  store i64 %1720, i64* %PC.i604
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1718, i64* %1721, align 8
  store %struct.Memory* %loadMem_487b6d, %struct.Memory** %MEMORY
  br label %block_.L_487b9a

block_.L_487b72:                                  ; preds = %block_.L_487b5f
  %loadMem_487b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 11
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RDI.i603 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %PC.i602
  %1729 = add i64 %1728, 10
  store i64 %1729, i64* %PC.i602
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i603, align 8
  store %struct.Memory* %loadMem_487b72, %struct.Memory** %MEMORY
  %loadMem_487b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 9
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RSI.i601 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %PC.i600
  %1737 = add i64 %1736, 5
  store i64 %1737, i64* %PC.i600
  store i64 764, i64* %RSI.i601, align 8
  store %struct.Memory* %loadMem_487b7c, %struct.Memory** %MEMORY
  %loadMem_487b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 7
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %PC.i598
  %1745 = add i64 %1744, 10
  store i64 %1745, i64* %PC.i598
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i599, align 8
  store %struct.Memory* %loadMem_487b81, %struct.Memory** %MEMORY
  %loadMem_487b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %1751 to i64*
  %1752 = load i64, i64* %PC.i596
  %1753 = add i64 %1752, 5
  store i64 %1753, i64* %PC.i596
  store i64 4294967295, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_487b8b, %struct.Memory** %MEMORY
  %loadMem_487b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 1
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %EAX.i594 = bitcast %union.anon* %1759 to i32*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 5
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %1762 to i64*
  %1763 = load i32, i32* %EAX.i594
  %1764 = zext i32 %1763 to i64
  %1765 = load i64, i64* %PC.i593
  %1766 = add i64 %1765, 2
  store i64 %1766, i64* %PC.i593
  %1767 = and i64 %1764, 4294967295
  store i64 %1767, i64* %RCX.i595, align 8
  store %struct.Memory* %loadMem_487b90, %struct.Memory** %MEMORY
  %loadMem_487b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 1
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %EAX.i591 = bitcast %union.anon* %1773 to i32*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 17
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %R8D.i592 = bitcast %union.anon* %1776 to i32*
  %1777 = bitcast i32* %R8D.i592 to i64*
  %1778 = load i32, i32* %EAX.i591
  %1779 = zext i32 %1778 to i64
  %1780 = load i64, i64* %PC.i590
  %1781 = add i64 %1780, 3
  store i64 %1781, i64* %PC.i590
  %1782 = and i64 %1779, 4294967295
  store i64 %1782, i64* %1777, align 8
  store %struct.Memory* %loadMem_487b92, %struct.Memory** %MEMORY
  %loadMem1_487b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1785 to i64*
  %1786 = load i64, i64* %PC.i589
  %1787 = add i64 %1786, -219909
  %1788 = load i64, i64* %PC.i589
  %1789 = add i64 %1788, 5
  %1790 = load i64, i64* %PC.i589
  %1791 = add i64 %1790, 5
  store i64 %1791, i64* %PC.i589
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1793 = load i64, i64* %1792, align 8
  %1794 = add i64 %1793, -8
  %1795 = inttoptr i64 %1794 to i64*
  store i64 %1789, i64* %1795
  store i64 %1794, i64* %1792, align 8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1787, i64* %1796, align 8
  store %struct.Memory* %loadMem1_487b95, %struct.Memory** %MEMORY
  %loadMem2_487b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b95 = load i64, i64* %3
  %call2_487b95 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_487b95, %struct.Memory* %loadMem2_487b95)
  store %struct.Memory* %call2_487b95, %struct.Memory** %MEMORY
  br label %block_.L_487b9a

block_.L_487b9a:                                  ; preds = %block_.L_487b72, %block_487b6d
  %loadMem1_487b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %PC.i588
  %1801 = add i64 %1800, 7462
  %1802 = load i64, i64* %PC.i588
  %1803 = add i64 %1802, 5
  %1804 = load i64, i64* %PC.i588
  %1805 = add i64 %1804, 5
  store i64 %1805, i64* %PC.i588
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1807 = load i64, i64* %1806, align 8
  %1808 = add i64 %1807, -8
  %1809 = inttoptr i64 %1808 to i64*
  store i64 %1803, i64* %1809
  store i64 %1808, i64* %1806, align 8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1801, i64* %1810, align 8
  store %struct.Memory* %loadMem1_487b9a, %struct.Memory** %MEMORY
  %loadMem2_487b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b9a = load i64, i64* %3
  %call2_487b9a = call %struct.Memory* @sub_4898c0.find_attack_patterns(%struct.State* %0, i64 %loadPC_487b9a, %struct.Memory* %loadMem2_487b9a)
  store %struct.Memory* %call2_487b9a, %struct.Memory** %MEMORY
  %loadMem_487b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %PC.i587
  %1815 = add i64 %1814, 8
  store i64 %1815, i64* %PC.i587
  %1816 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1817, align 1
  %1818 = and i32 %1816, 255
  %1819 = call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1822, i8* %1823, align 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1824, align 1
  %1825 = icmp eq i32 %1816, 0
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1826, i8* %1827, align 1
  %1828 = lshr i32 %1816, 31
  %1829 = trunc i32 %1828 to i8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1829, i8* %1830, align 1
  %1831 = lshr i32 %1816, 31
  %1832 = xor i32 %1828, %1831
  %1833 = add i32 %1832, %1831
  %1834 = icmp eq i32 %1833, 2
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1835, i8* %1836, align 1
  store %struct.Memory* %loadMem_487b9f, %struct.Memory** %MEMORY
  %loadMem_487ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %PC.i586
  %1841 = add i64 %1840, 11
  %1842 = load i64, i64* %PC.i586
  %1843 = add i64 %1842, 6
  %1844 = load i64, i64* %PC.i586
  %1845 = add i64 %1844, 6
  store i64 %1845, i64* %PC.i586
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1847 = load i8, i8* %1846, align 1
  %1848 = icmp eq i8 %1847, 0
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %BRANCH_TAKEN, align 1
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1851 = select i1 %1848, i64 %1841, i64 %1843
  store i64 %1851, i64* %1850, align 8
  store %struct.Memory* %loadMem_487ba7, %struct.Memory** %MEMORY
  %loadBr_487ba7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487ba7 = icmp eq i8 %loadBr_487ba7, 1
  br i1 %cmpBr_487ba7, label %block_.L_487bb2, label %block_487bad

block_487bad:                                     ; preds = %block_.L_487b9a
  %loadMem_487bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1854 to i64*
  %1855 = load i64, i64* %PC.i585
  %1856 = add i64 %1855, 45
  %1857 = load i64, i64* %PC.i585
  %1858 = add i64 %1857, 5
  store i64 %1858, i64* %PC.i585
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1856, i64* %1859, align 8
  store %struct.Memory* %loadMem_487bad, %struct.Memory** %MEMORY
  br label %block_.L_487bda

block_.L_487bb2:                                  ; preds = %block_.L_487b9a
  %loadMem_487bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 11
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %RDI.i584 = bitcast %union.anon* %1865 to i64*
  %1866 = load i64, i64* %PC.i583
  %1867 = add i64 %1866, 10
  store i64 %1867, i64* %PC.i583
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i584, align 8
  store %struct.Memory* %loadMem_487bb2, %struct.Memory** %MEMORY
  %loadMem_487bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 9
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RSI.i582 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %PC.i581
  %1875 = add i64 %1874, 5
  store i64 %1875, i64* %PC.i581
  store i64 768, i64* %RSI.i582, align 8
  store %struct.Memory* %loadMem_487bbc, %struct.Memory** %MEMORY
  %loadMem_487bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %1878 to i64*
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 7
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %RDX.i580 = bitcast %union.anon* %1881 to i64*
  %1882 = load i64, i64* %PC.i579
  %1883 = add i64 %1882, 10
  store i64 %1883, i64* %PC.i579
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i580, align 8
  store %struct.Memory* %loadMem_487bc1, %struct.Memory** %MEMORY
  %loadMem_487bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 1
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %1889 to i64*
  %1890 = load i64, i64* %PC.i577
  %1891 = add i64 %1890, 5
  store i64 %1891, i64* %PC.i577
  store i64 4294967295, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_487bcb, %struct.Memory** %MEMORY
  %loadMem_487bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 1
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %EAX.i575 = bitcast %union.anon* %1897 to i32*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 5
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RCX.i576 = bitcast %union.anon* %1900 to i64*
  %1901 = load i32, i32* %EAX.i575
  %1902 = zext i32 %1901 to i64
  %1903 = load i64, i64* %PC.i574
  %1904 = add i64 %1903, 2
  store i64 %1904, i64* %PC.i574
  %1905 = and i64 %1902, 4294967295
  store i64 %1905, i64* %RCX.i576, align 8
  store %struct.Memory* %loadMem_487bd0, %struct.Memory** %MEMORY
  %loadMem_487bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 1
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %EAX.i572 = bitcast %union.anon* %1911 to i32*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 17
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %R8D.i573 = bitcast %union.anon* %1914 to i32*
  %1915 = bitcast i32* %R8D.i573 to i64*
  %1916 = load i32, i32* %EAX.i572
  %1917 = zext i32 %1916 to i64
  %1918 = load i64, i64* %PC.i571
  %1919 = add i64 %1918, 3
  store i64 %1919, i64* %PC.i571
  %1920 = and i64 %1917, 4294967295
  store i64 %1920, i64* %1915, align 8
  store %struct.Memory* %loadMem_487bd2, %struct.Memory** %MEMORY
  %loadMem1_487bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %PC.i570
  %1925 = add i64 %1924, -219973
  %1926 = load i64, i64* %PC.i570
  %1927 = add i64 %1926, 5
  %1928 = load i64, i64* %PC.i570
  %1929 = add i64 %1928, 5
  store i64 %1929, i64* %PC.i570
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1931 = load i64, i64* %1930, align 8
  %1932 = add i64 %1931, -8
  %1933 = inttoptr i64 %1932 to i64*
  store i64 %1927, i64* %1933
  store i64 %1932, i64* %1930, align 8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1925, i64* %1934, align 8
  store %struct.Memory* %loadMem1_487bd5, %struct.Memory** %MEMORY
  %loadMem2_487bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487bd5 = load i64, i64* %3
  %call2_487bd5 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_487bd5, %struct.Memory* %loadMem2_487bd5)
  store %struct.Memory* %call2_487bd5, %struct.Memory** %MEMORY
  br label %block_.L_487bda

block_.L_487bda:                                  ; preds = %block_.L_487bb2, %block_487bad
  %loadMem_487bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 15
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %RBP.i569
  %1942 = sub i64 %1941, 4
  %1943 = load i64, i64* %PC.i568
  %1944 = add i64 %1943, 7
  store i64 %1944, i64* %PC.i568
  %1945 = inttoptr i64 %1942 to i32*
  store i32 21, i32* %1945
  store %struct.Memory* %loadMem_487bda, %struct.Memory** %MEMORY
  br label %block_.L_487be1

block_.L_487be1:                                  ; preds = %block_.L_487dd4, %block_.L_487bda
  %loadMem_487be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 15
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %1951 to i64*
  %1952 = load i64, i64* %RBP.i567
  %1953 = sub i64 %1952, 4
  %1954 = load i64, i64* %PC.i566
  %1955 = add i64 %1954, 7
  store i64 %1955, i64* %PC.i566
  %1956 = inttoptr i64 %1953 to i32*
  %1957 = load i32, i32* %1956
  %1958 = sub i32 %1957, 400
  %1959 = icmp ult i32 %1957, 400
  %1960 = zext i1 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1960, i8* %1961, align 1
  %1962 = and i32 %1958, 255
  %1963 = call i32 @llvm.ctpop.i32(i32 %1962)
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = xor i8 %1965, 1
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1966, i8* %1967, align 1
  %1968 = xor i32 %1957, 400
  %1969 = xor i32 %1968, %1958
  %1970 = lshr i32 %1969, 4
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1972, i8* %1973, align 1
  %1974 = icmp eq i32 %1958, 0
  %1975 = zext i1 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1975, i8* %1976, align 1
  %1977 = lshr i32 %1958, 31
  %1978 = trunc i32 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1978, i8* %1979, align 1
  %1980 = lshr i32 %1957, 31
  %1981 = xor i32 %1977, %1980
  %1982 = add i32 %1981, %1980
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1984, i8* %1985, align 1
  store %struct.Memory* %loadMem_487be1, %struct.Memory** %MEMORY
  %loadMem_487be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1988 to i64*
  %1989 = load i64, i64* %PC.i565
  %1990 = add i64 %1989, 506
  %1991 = load i64, i64* %PC.i565
  %1992 = add i64 %1991, 6
  %1993 = load i64, i64* %PC.i565
  %1994 = add i64 %1993, 6
  store i64 %1994, i64* %PC.i565
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1996 = load i8, i8* %1995, align 1
  %1997 = icmp ne i8 %1996, 0
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1999 = load i8, i8* %1998, align 1
  %2000 = icmp ne i8 %1999, 0
  %2001 = xor i1 %1997, %2000
  %2002 = xor i1 %2001, true
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %BRANCH_TAKEN, align 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2005 = select i1 %2001, i64 %1992, i64 %1990
  store i64 %2005, i64* %2004, align 8
  store %struct.Memory* %loadMem_487be8, %struct.Memory** %MEMORY
  %loadBr_487be8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487be8 = icmp eq i8 %loadBr_487be8, 1
  br i1 %cmpBr_487be8, label %block_.L_487de2, label %block_487bee

block_487bee:                                     ; preds = %block_.L_487be1
  %loadMem_487bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 1
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 15
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %RBP.i564
  %2016 = sub i64 %2015, 4
  %2017 = load i64, i64* %PC.i562
  %2018 = add i64 %2017, 4
  store i64 %2018, i64* %PC.i562
  %2019 = inttoptr i64 %2016 to i32*
  %2020 = load i32, i32* %2019
  %2021 = sext i32 %2020 to i64
  store i64 %2021, i64* %RAX.i563, align 8
  store %struct.Memory* %loadMem_487bee, %struct.Memory** %MEMORY
  %loadMem_487bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 1
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 5
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RCX.i561 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RAX.i560
  %2032 = add i64 %2031, 12099168
  %2033 = load i64, i64* %PC.i559
  %2034 = add i64 %2033, 8
  store i64 %2034, i64* %PC.i559
  %2035 = inttoptr i64 %2032 to i8*
  %2036 = load i8, i8* %2035
  %2037 = zext i8 %2036 to i64
  store i64 %2037, i64* %RCX.i561, align 8
  store %struct.Memory* %loadMem_487bf2, %struct.Memory** %MEMORY
  %loadMem_487bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 5
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %ECX.i558 = bitcast %union.anon* %2043 to i32*
  %2044 = load i32, i32* %ECX.i558
  %2045 = zext i32 %2044 to i64
  %2046 = load i64, i64* %PC.i557
  %2047 = add i64 %2046, 3
  store i64 %2047, i64* %PC.i557
  %2048 = sub i32 %2044, 1
  %2049 = icmp ult i32 %2044, 1
  %2050 = zext i1 %2049 to i8
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2050, i8* %2051, align 1
  %2052 = and i32 %2048, 255
  %2053 = call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2056, i8* %2057, align 1
  %2058 = xor i64 1, %2045
  %2059 = trunc i64 %2058 to i32
  %2060 = xor i32 %2059, %2048
  %2061 = lshr i32 %2060, 4
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2063, i8* %2064, align 1
  %2065 = icmp eq i32 %2048, 0
  %2066 = zext i1 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2066, i8* %2067, align 1
  %2068 = lshr i32 %2048, 31
  %2069 = trunc i32 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i32 %2044, 31
  %2072 = xor i32 %2068, %2071
  %2073 = add i32 %2072, %2071
  %2074 = icmp eq i32 %2073, 2
  %2075 = zext i1 %2074 to i8
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2075, i8* %2076, align 1
  store %struct.Memory* %loadMem_487bfa, %struct.Memory** %MEMORY
  %loadMem_487bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2079 to i64*
  %2080 = load i64, i64* %PC.i556
  %2081 = add i64 %2080, 27
  %2082 = load i64, i64* %PC.i556
  %2083 = add i64 %2082, 6
  %2084 = load i64, i64* %PC.i556
  %2085 = add i64 %2084, 6
  store i64 %2085, i64* %PC.i556
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2087 = load i8, i8* %2086, align 1
  store i8 %2087, i8* %BRANCH_TAKEN, align 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2089 = icmp ne i8 %2087, 0
  %2090 = select i1 %2089, i64 %2081, i64 %2083
  store i64 %2090, i64* %2088, align 8
  store %struct.Memory* %loadMem_487bfd, %struct.Memory** %MEMORY
  %loadBr_487bfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487bfd = icmp eq i8 %loadBr_487bfd, 1
  br i1 %cmpBr_487bfd, label %block_.L_487c18, label %block_487c03

block_487c03:                                     ; preds = %block_487bee
  %loadMem_487c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 1
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 15
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %RBP.i555
  %2101 = sub i64 %2100, 4
  %2102 = load i64, i64* %PC.i553
  %2103 = add i64 %2102, 4
  store i64 %2103, i64* %PC.i553
  %2104 = inttoptr i64 %2101 to i32*
  %2105 = load i32, i32* %2104
  %2106 = sext i32 %2105 to i64
  store i64 %2106, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_487c03, %struct.Memory** %MEMORY
  %loadMem_487c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 1
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 5
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RAX.i551
  %2117 = add i64 %2116, 12099168
  %2118 = load i64, i64* %PC.i550
  %2119 = add i64 %2118, 8
  store i64 %2119, i64* %PC.i550
  %2120 = inttoptr i64 %2117 to i8*
  %2121 = load i8, i8* %2120
  %2122 = zext i8 %2121 to i64
  store i64 %2122, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_487c07, %struct.Memory** %MEMORY
  %loadMem_487c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 5
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %ECX.i549 = bitcast %union.anon* %2128 to i32*
  %2129 = load i32, i32* %ECX.i549
  %2130 = zext i32 %2129 to i64
  %2131 = load i64, i64* %PC.i548
  %2132 = add i64 %2131, 3
  store i64 %2132, i64* %PC.i548
  %2133 = sub i32 %2129, 2
  %2134 = icmp ult i32 %2129, 2
  %2135 = zext i1 %2134 to i8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2135, i8* %2136, align 1
  %2137 = and i32 %2133, 255
  %2138 = call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2141, i8* %2142, align 1
  %2143 = xor i64 2, %2130
  %2144 = trunc i64 %2143 to i32
  %2145 = xor i32 %2144, %2133
  %2146 = lshr i32 %2145, 4
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2148, i8* %2149, align 1
  %2150 = icmp eq i32 %2133, 0
  %2151 = zext i1 %2150 to i8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2151, i8* %2152, align 1
  %2153 = lshr i32 %2133, 31
  %2154 = trunc i32 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2154, i8* %2155, align 1
  %2156 = lshr i32 %2129, 31
  %2157 = xor i32 %2153, %2156
  %2158 = add i32 %2157, %2156
  %2159 = icmp eq i32 %2158, 2
  %2160 = zext i1 %2159 to i8
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2160, i8* %2161, align 1
  store %struct.Memory* %loadMem_487c0f, %struct.Memory** %MEMORY
  %loadMem_487c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2164 to i64*
  %2165 = load i64, i64* %PC.i547
  %2166 = add i64 %2165, 26
  %2167 = load i64, i64* %PC.i547
  %2168 = add i64 %2167, 6
  %2169 = load i64, i64* %PC.i547
  %2170 = add i64 %2169, 6
  store i64 %2170, i64* %PC.i547
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2172 = load i8, i8* %2171, align 1
  %2173 = icmp eq i8 %2172, 0
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %BRANCH_TAKEN, align 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2176 = select i1 %2173, i64 %2166, i64 %2168
  store i64 %2176, i64* %2175, align 8
  store %struct.Memory* %loadMem_487c12, %struct.Memory** %MEMORY
  %loadBr_487c12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c12 = icmp eq i8 %loadBr_487c12, 1
  br i1 %cmpBr_487c12, label %block_.L_487c2c, label %block_.L_487c18

block_.L_487c18:                                  ; preds = %block_487c03, %block_487bee
  %loadMem_487c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 11
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RDI.i545 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 15
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RBP.i546
  %2187 = sub i64 %2186, 4
  %2188 = load i64, i64* %PC.i544
  %2189 = add i64 %2188, 3
  store i64 %2189, i64* %PC.i544
  %2190 = inttoptr i64 %2187 to i32*
  %2191 = load i32, i32* %2190
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RDI.i545, align 8
  store %struct.Memory* %loadMem_487c18, %struct.Memory** %MEMORY
  %loadMem_487c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 9
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %RSI.i542 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 15
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2201 to i64*
  %2202 = load i64, i64* %RBP.i543
  %2203 = sub i64 %2202, 4
  %2204 = load i64, i64* %PC.i541
  %2205 = add i64 %2204, 3
  store i64 %2205, i64* %PC.i541
  %2206 = inttoptr i64 %2203 to i32*
  %2207 = load i32, i32* %2206
  %2208 = zext i32 %2207 to i64
  store i64 %2208, i64* %RSI.i542, align 8
  store %struct.Memory* %loadMem_487c1b, %struct.Memory** %MEMORY
  %loadMem1_487c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2211 to i64*
  %2212 = load i64, i64* %PC.i540
  %2213 = add i64 %2212, 1234
  %2214 = load i64, i64* %PC.i540
  %2215 = add i64 %2214, 5
  %2216 = load i64, i64* %PC.i540
  %2217 = add i64 %2216, 5
  store i64 %2217, i64* %PC.i540
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2219 = load i64, i64* %2218, align 8
  %2220 = add i64 %2219, -8
  %2221 = inttoptr i64 %2220 to i64*
  store i64 %2215, i64* %2221
  store i64 %2220, i64* %2218, align 8
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2213, i64* %2222, align 8
  store %struct.Memory* %loadMem1_487c1e, %struct.Memory** %MEMORY
  %loadMem2_487c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487c1e = load i64, i64* %3
  %call2_487c1e = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_487c1e, %struct.Memory* %loadMem2_487c1e)
  store %struct.Memory* %call2_487c1e, %struct.Memory** %MEMORY
  %loadMem_487c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 1
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %EAX.i539 = bitcast %union.anon* %2228 to i32*
  %2229 = load i32, i32* %EAX.i539
  %2230 = zext i32 %2229 to i64
  %2231 = load i64, i64* %PC.i538
  %2232 = add i64 %2231, 3
  store i64 %2232, i64* %PC.i538
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2233, align 1
  %2234 = and i32 %2229, 255
  %2235 = call i32 @llvm.ctpop.i32(i32 %2234)
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2238, i8* %2239, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2240, align 1
  %2241 = icmp eq i32 %2229, 0
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2242, i8* %2243, align 1
  %2244 = lshr i32 %2229, 31
  %2245 = trunc i32 %2244 to i8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2245, i8* %2246, align 1
  %2247 = lshr i32 %2229, 31
  %2248 = xor i32 %2244, %2247
  %2249 = add i32 %2248, %2247
  %2250 = icmp eq i32 %2249, 2
  %2251 = zext i1 %2250 to i8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2251, i8* %2252, align 1
  store %struct.Memory* %loadMem_487c23, %struct.Memory** %MEMORY
  %loadMem_487c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2255 to i64*
  %2256 = load i64, i64* %PC.i537
  %2257 = add i64 %2256, 11
  %2258 = load i64, i64* %PC.i537
  %2259 = add i64 %2258, 6
  %2260 = load i64, i64* %PC.i537
  %2261 = add i64 %2260, 6
  store i64 %2261, i64* %PC.i537
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2263 = load i8, i8* %2262, align 1
  %2264 = icmp eq i8 %2263, 0
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %BRANCH_TAKEN, align 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2267 = select i1 %2264, i64 %2257, i64 %2259
  store i64 %2267, i64* %2266, align 8
  store %struct.Memory* %loadMem_487c26, %struct.Memory** %MEMORY
  %loadBr_487c26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c26 = icmp eq i8 %loadBr_487c26, 1
  br i1 %cmpBr_487c26, label %block_.L_487c31, label %block_.L_487c2c

block_.L_487c2c:                                  ; preds = %block_.L_487c18, %block_487c03
  %loadMem_487c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2270 to i64*
  %2271 = load i64, i64* %PC.i536
  %2272 = add i64 %2271, 424
  %2273 = load i64, i64* %PC.i536
  %2274 = add i64 %2273, 5
  store i64 %2274, i64* %PC.i536
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2272, i64* %2275, align 8
  store %struct.Memory* %loadMem_487c2c, %struct.Memory** %MEMORY
  br label %block_.L_487dd4

block_.L_487c31:                                  ; preds = %block_.L_487c18
  %loadMem_487c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 1
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %PC.i534
  %2283 = add i64 %2282, 10
  store i64 %2283, i64* %PC.i534
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i535, align 8
  store %struct.Memory* %loadMem_487c31, %struct.Memory** %MEMORY
  %loadMem_487c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 33
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 5
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 15
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RBP.i533
  %2294 = sub i64 %2293, 4
  %2295 = load i64, i64* %PC.i531
  %2296 = add i64 %2295, 4
  store i64 %2296, i64* %PC.i531
  %2297 = inttoptr i64 %2294 to i32*
  %2298 = load i32, i32* %2297
  %2299 = sext i32 %2298 to i64
  store i64 %2299, i64* %RCX.i532, align 8
  store %struct.Memory* %loadMem_487c3b, %struct.Memory** %MEMORY
  %loadMem_487c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 33
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 5
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RCX.i530 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RCX.i530
  %2307 = load i64, i64* %PC.i529
  %2308 = add i64 %2307, 7
  store i64 %2308, i64* %PC.i529
  %2309 = sext i64 %2306 to i128
  %2310 = and i128 %2309, -18446744073709551616
  %2311 = zext i64 %2306 to i128
  %2312 = or i128 %2310, %2311
  %2313 = mul i128 380, %2312
  %2314 = trunc i128 %2313 to i64
  store i64 %2314, i64* %RCX.i530, align 8
  %2315 = sext i64 %2314 to i128
  %2316 = icmp ne i128 %2315, %2313
  %2317 = zext i1 %2316 to i8
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2317, i8* %2318, align 1
  %2319 = trunc i128 %2313 to i32
  %2320 = and i32 %2319, 255
  %2321 = call i32 @llvm.ctpop.i32(i32 %2320)
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = xor i8 %2323, 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2324, i8* %2325, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2326, align 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2327, align 1
  %2328 = lshr i64 %2314, 63
  %2329 = trunc i64 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2329, i8* %2330, align 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2317, i8* %2331, align 1
  store %struct.Memory* %loadMem_487c3f, %struct.Memory** %MEMORY
  %loadMem_487c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 1
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 5
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RAX.i527
  %2342 = load i64, i64* %RCX.i528
  %2343 = load i64, i64* %PC.i526
  %2344 = add i64 %2343, 3
  store i64 %2344, i64* %PC.i526
  %2345 = add i64 %2342, %2341
  store i64 %2345, i64* %RAX.i527, align 8
  %2346 = icmp ult i64 %2345, %2341
  %2347 = icmp ult i64 %2345, %2342
  %2348 = or i1 %2346, %2347
  %2349 = zext i1 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2349, i8* %2350, align 1
  %2351 = trunc i64 %2345 to i32
  %2352 = and i32 %2351, 255
  %2353 = call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2356, i8* %2357, align 1
  %2358 = xor i64 %2342, %2341
  %2359 = xor i64 %2358, %2345
  %2360 = lshr i64 %2359, 4
  %2361 = trunc i64 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2362, i8* %2363, align 1
  %2364 = icmp eq i64 %2345, 0
  %2365 = zext i1 %2364 to i8
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2365, i8* %2366, align 1
  %2367 = lshr i64 %2345, 63
  %2368 = trunc i64 %2367 to i8
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2368, i8* %2369, align 1
  %2370 = lshr i64 %2341, 63
  %2371 = lshr i64 %2342, 63
  %2372 = xor i64 %2367, %2370
  %2373 = xor i64 %2367, %2371
  %2374 = add i64 %2372, %2373
  %2375 = icmp eq i64 %2374, 2
  %2376 = zext i1 %2375 to i8
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2376, i8* %2377, align 1
  store %struct.Memory* %loadMem_487c46, %struct.Memory** %MEMORY
  %loadMem_487c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 1
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RAX.i525
  %2385 = add i64 %2384, 100
  %2386 = load i64, i64* %PC.i524
  %2387 = add i64 %2386, 4
  store i64 %2387, i64* %PC.i524
  %2388 = inttoptr i64 %2385 to i32*
  %2389 = load i32, i32* %2388
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2390, align 1
  %2391 = and i32 %2389, 255
  %2392 = call i32 @llvm.ctpop.i32(i32 %2391)
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  %2395 = xor i8 %2394, 1
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2395, i8* %2396, align 1
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2397, align 1
  %2398 = icmp eq i32 %2389, 0
  %2399 = zext i1 %2398 to i8
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2399, i8* %2400, align 1
  %2401 = lshr i32 %2389, 31
  %2402 = trunc i32 %2401 to i8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2402, i8* %2403, align 1
  %2404 = lshr i32 %2389, 31
  %2405 = xor i32 %2401, %2404
  %2406 = add i32 %2405, %2404
  %2407 = icmp eq i32 %2406, 2
  %2408 = zext i1 %2407 to i8
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2408, i8* %2409, align 1
  store %struct.Memory* %loadMem_487c49, %struct.Memory** %MEMORY
  %loadMem_487c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 33
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %PC.i523
  %2414 = add i64 %2413, 386
  %2415 = load i64, i64* %PC.i523
  %2416 = add i64 %2415, 6
  %2417 = load i64, i64* %PC.i523
  %2418 = add i64 %2417, 6
  store i64 %2418, i64* %PC.i523
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2420 = load i8, i8* %2419, align 1
  store i8 %2420, i8* %BRANCH_TAKEN, align 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2422 = icmp ne i8 %2420, 0
  %2423 = select i1 %2422, i64 %2414, i64 %2416
  store i64 %2423, i64* %2421, align 8
  store %struct.Memory* %loadMem_487c4d, %struct.Memory** %MEMORY
  %loadBr_487c4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c4d = icmp eq i8 %loadBr_487c4d, 1
  br i1 %cmpBr_487c4d, label %block_.L_487dcf, label %block_487c53

block_487c53:                                     ; preds = %block_.L_487c31
  %loadMem_487c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 33
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2426 to i64*
  %2427 = load i64, i64* %PC.i522
  %2428 = add i64 %2427, 8
  store i64 %2428, i64* %PC.i522
  %2429 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2430, align 1
  %2431 = and i32 %2429, 255
  %2432 = call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2435, i8* %2436, align 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2437, align 1
  %2438 = icmp eq i32 %2429, 0
  %2439 = zext i1 %2438 to i8
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2439, i8* %2440, align 1
  %2441 = lshr i32 %2429, 31
  %2442 = trunc i32 %2441 to i8
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2442, i8* %2443, align 1
  %2444 = lshr i32 %2429, 31
  %2445 = xor i32 %2441, %2444
  %2446 = add i32 %2445, %2444
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2448, i8* %2449, align 1
  store %struct.Memory* %loadMem_487c53, %struct.Memory** %MEMORY
  %loadMem_487c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %PC.i521
  %2454 = add i64 %2453, 11
  %2455 = load i64, i64* %PC.i521
  %2456 = add i64 %2455, 6
  %2457 = load i64, i64* %PC.i521
  %2458 = add i64 %2457, 6
  store i64 %2458, i64* %PC.i521
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2460 = load i8, i8* %2459, align 1
  %2461 = icmp eq i8 %2460, 0
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %BRANCH_TAKEN, align 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2464 = select i1 %2461, i64 %2454, i64 %2456
  store i64 %2464, i64* %2463, align 8
  store %struct.Memory* %loadMem_487c5b, %struct.Memory** %MEMORY
  %loadBr_487c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c5b = icmp eq i8 %loadBr_487c5b, 1
  br i1 %cmpBr_487c5b, label %block_.L_487c66, label %block_487c61

block_487c61:                                     ; preds = %block_487c53
  %loadMem_487c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 33
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %PC.i520
  %2469 = add i64 %2468, 28
  %2470 = load i64, i64* %PC.i520
  %2471 = add i64 %2470, 5
  store i64 %2471, i64* %PC.i520
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2469, i64* %2472, align 8
  store %struct.Memory* %loadMem_487c61, %struct.Memory** %MEMORY
  br label %block_.L_487c7d

block_.L_487c66:                                  ; preds = %block_487c53
  %loadMem_487c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 33
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2475 to i64*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 11
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %RDI.i519 = bitcast %union.anon* %2478 to i64*
  %2479 = load i64, i64* %PC.i518
  %2480 = add i64 %2479, 10
  store i64 %2480, i64* %PC.i518
  store i64 ptrtoint (%G__0x58316a_type* @G__0x58316a to i64), i64* %RDI.i519, align 8
  store %struct.Memory* %loadMem_487c66, %struct.Memory** %MEMORY
  %loadMem_487c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 9
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RSI.i516 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 15
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %RBP.i517
  %2491 = sub i64 %2490, 4
  %2492 = load i64, i64* %PC.i515
  %2493 = add i64 %2492, 3
  store i64 %2493, i64* %PC.i515
  %2494 = inttoptr i64 %2491 to i32*
  %2495 = load i32, i32* %2494
  %2496 = zext i32 %2495 to i64
  store i64 %2496, i64* %RSI.i516, align 8
  store %struct.Memory* %loadMem_487c70, %struct.Memory** %MEMORY
  %loadMem_487c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 1
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %2503 = bitcast %union.anon* %2502 to %struct.anon.2*
  %AL.i514 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2503, i32 0, i32 0
  %2504 = load i64, i64* %PC.i513
  %2505 = add i64 %2504, 2
  store i64 %2505, i64* %PC.i513
  store i8 0, i8* %AL.i514, align 1
  store %struct.Memory* %loadMem_487c73, %struct.Memory** %MEMORY
  %loadMem1_487c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %PC.i512
  %2510 = add i64 %2509, -220869
  %2511 = load i64, i64* %PC.i512
  %2512 = add i64 %2511, 5
  %2513 = load i64, i64* %PC.i512
  %2514 = add i64 %2513, 5
  store i64 %2514, i64* %PC.i512
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2516 = load i64, i64* %2515, align 8
  %2517 = add i64 %2516, -8
  %2518 = inttoptr i64 %2517 to i64*
  store i64 %2512, i64* %2518
  store i64 %2517, i64* %2515, align 8
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2510, i64* %2519, align 8
  store %struct.Memory* %loadMem1_487c75, %struct.Memory** %MEMORY
  %loadMem2_487c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487c75 = load i64, i64* %3
  %call2_487c75 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_487c75, %struct.Memory* %loadMem2_487c75)
  store %struct.Memory* %call2_487c75, %struct.Memory** %MEMORY
  %loadMem_487c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 1
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %EAX.i510 = bitcast %union.anon* %2525 to i32*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 15
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %2528 to i64*
  %2529 = load i64, i64* %RBP.i511
  %2530 = sub i64 %2529, 56
  %2531 = load i32, i32* %EAX.i510
  %2532 = zext i32 %2531 to i64
  %2533 = load i64, i64* %PC.i509
  %2534 = add i64 %2533, 3
  store i64 %2534, i64* %PC.i509
  %2535 = inttoptr i64 %2530 to i32*
  store i32 %2531, i32* %2535
  store %struct.Memory* %loadMem_487c7a, %struct.Memory** %MEMORY
  br label %block_.L_487c7d

block_.L_487c7d:                                  ; preds = %block_.L_487c66, %block_487c61
  %loadMem_487c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 9
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RSI.i507 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 15
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %RBP.i508
  %2546 = sub i64 %2545, 24
  %2547 = load i64, i64* %PC.i506
  %2548 = add i64 %2547, 4
  store i64 %2548, i64* %PC.i506
  store i64 %2546, i64* %RSI.i507, align 8
  store %struct.Memory* %loadMem_487c7d, %struct.Memory** %MEMORY
  %loadMem_487c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 11
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RDI.i504 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 15
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %RBP.i505
  %2559 = sub i64 %2558, 4
  %2560 = load i64, i64* %PC.i503
  %2561 = add i64 %2560, 3
  store i64 %2561, i64* %PC.i503
  %2562 = inttoptr i64 %2559 to i32*
  %2563 = load i32, i32* %2562
  %2564 = zext i32 %2563 to i64
  store i64 %2564, i64* %RDI.i504, align 8
  store %struct.Memory* %loadMem_487c81, %struct.Memory** %MEMORY
  %loadMem1_487c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %PC.i502
  %2569 = add i64 %2568, -120068
  %2570 = load i64, i64* %PC.i502
  %2571 = add i64 %2570, 5
  %2572 = load i64, i64* %PC.i502
  %2573 = add i64 %2572, 5
  store i64 %2573, i64* %PC.i502
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2575 = load i64, i64* %2574, align 8
  %2576 = add i64 %2575, -8
  %2577 = inttoptr i64 %2576 to i64*
  store i64 %2571, i64* %2577
  store i64 %2576, i64* %2574, align 8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2569, i64* %2578, align 8
  store %struct.Memory* %loadMem1_487c84, %struct.Memory** %MEMORY
  %loadMem2_487c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487c84 = load i64, i64* %3
  %call2_487c84 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_487c84, %struct.Memory* %loadMem2_487c84)
  store %struct.Memory* %call2_487c84, %struct.Memory** %MEMORY
  %loadMem_487c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 1
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %2584 to i32*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 15
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %RBP.i501
  %2589 = sub i64 %2588, 16
  %2590 = load i32, i32* %EAX.i500
  %2591 = zext i32 %2590 to i64
  %2592 = load i64, i64* %PC.i499
  %2593 = add i64 %2592, 3
  store i64 %2593, i64* %PC.i499
  %2594 = inttoptr i64 %2589 to i32*
  store i32 %2590, i32* %2594
  store %struct.Memory* %loadMem_487c89, %struct.Memory** %MEMORY
  %loadMem_487c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 15
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %RBP.i498
  %2602 = sub i64 %2601, 16
  %2603 = load i64, i64* %PC.i497
  %2604 = add i64 %2603, 4
  store i64 %2604, i64* %PC.i497
  %2605 = inttoptr i64 %2602 to i32*
  %2606 = load i32, i32* %2605
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2607, align 1
  %2608 = and i32 %2606, 255
  %2609 = call i32 @llvm.ctpop.i32(i32 %2608)
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = xor i8 %2611, 1
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2612, i8* %2613, align 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2614, align 1
  %2615 = icmp eq i32 %2606, 0
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2616, i8* %2617, align 1
  %2618 = lshr i32 %2606, 31
  %2619 = trunc i32 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2619, i8* %2620, align 1
  %2621 = lshr i32 %2606, 31
  %2622 = xor i32 %2618, %2621
  %2623 = add i32 %2622, %2621
  %2624 = icmp eq i32 %2623, 2
  %2625 = zext i1 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2625, i8* %2626, align 1
  store %struct.Memory* %loadMem_487c8c, %struct.Memory** %MEMORY
  %loadMem_487c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2629 to i64*
  %2630 = load i64, i64* %PC.i496
  %2631 = add i64 %2630, 80
  %2632 = load i64, i64* %PC.i496
  %2633 = add i64 %2632, 6
  %2634 = load i64, i64* %PC.i496
  %2635 = add i64 %2634, 6
  store i64 %2635, i64* %PC.i496
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2637 = load i8, i8* %2636, align 1
  store i8 %2637, i8* %BRANCH_TAKEN, align 1
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2639 = icmp ne i8 %2637, 0
  %2640 = select i1 %2639, i64 %2631, i64 %2633
  store i64 %2640, i64* %2638, align 8
  store %struct.Memory* %loadMem_487c90, %struct.Memory** %MEMORY
  %loadBr_487c90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c90 = icmp eq i8 %loadBr_487c90, 1
  br i1 %cmpBr_487c90, label %block_.L_487ce0, label %block_487c96

block_487c96:                                     ; preds = %block_.L_487c7d
  %loadMem_487c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %PC.i495
  %2645 = add i64 %2644, 8
  store i64 %2645, i64* %PC.i495
  %2646 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2647, align 1
  %2648 = and i32 %2646, 255
  %2649 = call i32 @llvm.ctpop.i32(i32 %2648)
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2652, i8* %2653, align 1
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2654, align 1
  %2655 = icmp eq i32 %2646, 0
  %2656 = zext i1 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2656, i8* %2657, align 1
  %2658 = lshr i32 %2646, 31
  %2659 = trunc i32 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2659, i8* %2660, align 1
  %2661 = lshr i32 %2646, 31
  %2662 = xor i32 %2658, %2661
  %2663 = add i32 %2662, %2661
  %2664 = icmp eq i32 %2663, 2
  %2665 = zext i1 %2664 to i8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2665, i8* %2666, align 1
  store %struct.Memory* %loadMem_487c96, %struct.Memory** %MEMORY
  %loadMem_487c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %PC.i494
  %2671 = add i64 %2670, 11
  %2672 = load i64, i64* %PC.i494
  %2673 = add i64 %2672, 6
  %2674 = load i64, i64* %PC.i494
  %2675 = add i64 %2674, 6
  store i64 %2675, i64* %PC.i494
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2677 = load i8, i8* %2676, align 1
  %2678 = icmp eq i8 %2677, 0
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %BRANCH_TAKEN, align 1
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2681 = select i1 %2678, i64 %2671, i64 %2673
  store i64 %2681, i64* %2680, align 8
  store %struct.Memory* %loadMem_487c9e, %struct.Memory** %MEMORY
  %loadBr_487c9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c9e = icmp eq i8 %loadBr_487c9e, 1
  br i1 %cmpBr_487c9e, label %block_.L_487ca9, label %block_487ca4

block_487ca4:                                     ; preds = %block_487c96
  %loadMem_487ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2684 to i64*
  %2685 = load i64, i64* %PC.i493
  %2686 = add i64 %2685, 31
  %2687 = load i64, i64* %PC.i493
  %2688 = add i64 %2687, 5
  store i64 %2688, i64* %PC.i493
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2686, i64* %2689, align 8
  store %struct.Memory* %loadMem_487ca4, %struct.Memory** %MEMORY
  br label %block_.L_487cc3

block_.L_487ca9:                                  ; preds = %block_487c96
  %loadMem_487ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 11
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RDI.i492 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %PC.i491
  %2697 = add i64 %2696, 10
  store i64 %2697, i64* %PC.i491
  store i64 ptrtoint (%G__0x583186_type* @G__0x583186 to i64), i64* %RDI.i492, align 8
  store %struct.Memory* %loadMem_487ca9, %struct.Memory** %MEMORY
  %loadMem_487cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 9
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RSI.i489 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i490
  %2708 = sub i64 %2707, 4
  %2709 = load i64, i64* %PC.i488
  %2710 = add i64 %2709, 3
  store i64 %2710, i64* %PC.i488
  %2711 = inttoptr i64 %2708 to i32*
  %2712 = load i32, i32* %2711
  %2713 = zext i32 %2712 to i64
  store i64 %2713, i64* %RSI.i489, align 8
  store %struct.Memory* %loadMem_487cb3, %struct.Memory** %MEMORY
  %loadMem_487cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 7
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RBP.i487
  %2724 = sub i64 %2723, 24
  %2725 = load i64, i64* %PC.i485
  %2726 = add i64 %2725, 3
  store i64 %2726, i64* %PC.i485
  %2727 = inttoptr i64 %2724 to i32*
  %2728 = load i32, i32* %2727
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RDX.i486, align 8
  store %struct.Memory* %loadMem_487cb6, %struct.Memory** %MEMORY
  %loadMem_487cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 1
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %2736 = bitcast %union.anon* %2735 to %struct.anon.2*
  %AL.i484 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2736, i32 0, i32 0
  %2737 = load i64, i64* %PC.i483
  %2738 = add i64 %2737, 2
  store i64 %2738, i64* %PC.i483
  store i8 0, i8* %AL.i484, align 1
  store %struct.Memory* %loadMem_487cb9, %struct.Memory** %MEMORY
  %loadMem1_487cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2741 to i64*
  %2742 = load i64, i64* %PC.i482
  %2743 = add i64 %2742, -220939
  %2744 = load i64, i64* %PC.i482
  %2745 = add i64 %2744, 5
  %2746 = load i64, i64* %PC.i482
  %2747 = add i64 %2746, 5
  store i64 %2747, i64* %PC.i482
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2749 = load i64, i64* %2748, align 8
  %2750 = add i64 %2749, -8
  %2751 = inttoptr i64 %2750 to i64*
  store i64 %2745, i64* %2751
  store i64 %2750, i64* %2748, align 8
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2743, i64* %2752, align 8
  store %struct.Memory* %loadMem1_487cbb, %struct.Memory** %MEMORY
  %loadMem2_487cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487cbb = load i64, i64* %3
  %call2_487cbb = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_487cbb, %struct.Memory* %loadMem2_487cbb)
  store %struct.Memory* %call2_487cbb, %struct.Memory** %MEMORY
  %loadMem_487cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 1
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %EAX.i480 = bitcast %union.anon* %2758 to i32*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RBP.i481
  %2763 = sub i64 %2762, 60
  %2764 = load i32, i32* %EAX.i480
  %2765 = zext i32 %2764 to i64
  %2766 = load i64, i64* %PC.i479
  %2767 = add i64 %2766, 3
  store i64 %2767, i64* %PC.i479
  %2768 = inttoptr i64 %2763 to i32*
  store i32 %2764, i32* %2768
  store %struct.Memory* %loadMem_487cc0, %struct.Memory** %MEMORY
  br label %block_.L_487cc3

block_.L_487cc3:                                  ; preds = %block_.L_487ca9, %block_487ca4
  %loadMem_487cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 15
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %RBP.i478
  %2776 = sub i64 %2775, 24
  %2777 = load i64, i64* %PC.i477
  %2778 = add i64 %2777, 4
  store i64 %2778, i64* %PC.i477
  %2779 = inttoptr i64 %2776 to i32*
  %2780 = load i32, i32* %2779
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2781, align 1
  %2782 = and i32 %2780, 255
  %2783 = call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2786, i8* %2787, align 1
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2788, align 1
  %2789 = icmp eq i32 %2780, 0
  %2790 = zext i1 %2789 to i8
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2790, i8* %2791, align 1
  %2792 = lshr i32 %2780, 31
  %2793 = trunc i32 %2792 to i8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2793, i8* %2794, align 1
  %2795 = lshr i32 %2780, 31
  %2796 = xor i32 %2792, %2795
  %2797 = add i32 %2796, %2795
  %2798 = icmp eq i32 %2797, 2
  %2799 = zext i1 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2799, i8* %2800, align 1
  store %struct.Memory* %loadMem_487cc3, %struct.Memory** %MEMORY
  %loadMem_487cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %PC.i476
  %2805 = add i64 %2804, 20
  %2806 = load i64, i64* %PC.i476
  %2807 = add i64 %2806, 6
  %2808 = load i64, i64* %PC.i476
  %2809 = add i64 %2808, 6
  store i64 %2809, i64* %PC.i476
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2811 = load i8, i8* %2810, align 1
  store i8 %2811, i8* %BRANCH_TAKEN, align 1
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2813 = icmp ne i8 %2811, 0
  %2814 = select i1 %2813, i64 %2805, i64 %2807
  store i64 %2814, i64* %2812, align 8
  store %struct.Memory* %loadMem_487cc7, %struct.Memory** %MEMORY
  %loadBr_487cc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487cc7 = icmp eq i8 %loadBr_487cc7, 1
  br i1 %cmpBr_487cc7, label %block_.L_487cdb, label %block_487ccd

block_487ccd:                                     ; preds = %block_.L_487cc3
  %loadMem_487ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 11
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RDI.i474 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 15
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %2823 to i64*
  %2824 = load i64, i64* %RBP.i475
  %2825 = sub i64 %2824, 4
  %2826 = load i64, i64* %PC.i473
  %2827 = add i64 %2826, 3
  store i64 %2827, i64* %PC.i473
  %2828 = inttoptr i64 %2825 to i32*
  %2829 = load i32, i32* %2828
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RDI.i474, align 8
  store %struct.Memory* %loadMem_487ccd, %struct.Memory** %MEMORY
  %loadMem_487cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 9
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RSI.i471 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 15
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2839 to i64*
  %2840 = load i64, i64* %RBP.i472
  %2841 = sub i64 %2840, 24
  %2842 = load i64, i64* %PC.i470
  %2843 = add i64 %2842, 3
  store i64 %2843, i64* %PC.i470
  %2844 = inttoptr i64 %2841 to i32*
  %2845 = load i32, i32* %2844
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RSI.i471, align 8
  store %struct.Memory* %loadMem_487cd0, %struct.Memory** %MEMORY
  %loadMem_487cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 7
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RBP.i469
  %2857 = sub i64 %2856, 16
  %2858 = load i64, i64* %PC.i467
  %2859 = add i64 %2858, 3
  store i64 %2859, i64* %PC.i467
  %2860 = inttoptr i64 %2857 to i32*
  %2861 = load i32, i32* %2860
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_487cd3, %struct.Memory** %MEMORY
  %loadMem1_487cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %PC.i466
  %2867 = add i64 %2866, 2858
  %2868 = load i64, i64* %PC.i466
  %2869 = add i64 %2868, 5
  %2870 = load i64, i64* %PC.i466
  %2871 = add i64 %2870, 5
  store i64 %2871, i64* %PC.i466
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2873 = load i64, i64* %2872, align 8
  %2874 = add i64 %2873, -8
  %2875 = inttoptr i64 %2874 to i64*
  store i64 %2869, i64* %2875
  store i64 %2874, i64* %2872, align 8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2867, i64* %2876, align 8
  store %struct.Memory* %loadMem1_487cd6, %struct.Memory** %MEMORY
  %loadMem2_487cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487cd6 = load i64, i64* %3
  %call2_487cd6 = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64 %loadPC_487cd6, %struct.Memory* %loadMem2_487cd6)
  store %struct.Memory* %call2_487cd6, %struct.Memory** %MEMORY
  br label %block_.L_487cdb

block_.L_487cdb:                                  ; preds = %block_487ccd, %block_.L_487cc3
  %loadMem_487cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %PC.i465
  %2881 = add i64 %2880, 239
  %2882 = load i64, i64* %PC.i465
  %2883 = add i64 %2882, 5
  store i64 %2883, i64* %PC.i465
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2881, i64* %2884, align 8
  store %struct.Memory* %loadMem_487cdb, %struct.Memory** %MEMORY
  br label %block_.L_487dca

block_.L_487ce0:                                  ; preds = %block_.L_487c7d
  %loadMem_487ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 33
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2887 to i64*
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 1
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %2890 to i64*
  %2891 = load i64, i64* %PC.i463
  %2892 = add i64 %2891, 10
  store i64 %2892, i64* %PC.i463
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_487ce0, %struct.Memory** %MEMORY
  %loadMem_487cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 33
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 5
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RCX.i461 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 15
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %2901 to i64*
  %2902 = load i64, i64* %RBP.i462
  %2903 = sub i64 %2902, 4
  %2904 = load i64, i64* %PC.i460
  %2905 = add i64 %2904, 4
  store i64 %2905, i64* %PC.i460
  %2906 = inttoptr i64 %2903 to i32*
  %2907 = load i32, i32* %2906
  %2908 = sext i32 %2907 to i64
  store i64 %2908, i64* %RCX.i461, align 8
  store %struct.Memory* %loadMem_487cea, %struct.Memory** %MEMORY
  %loadMem_487cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 33
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %2911 to i64*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 5
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RCX.i459 = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %RCX.i459
  %2916 = load i64, i64* %PC.i458
  %2917 = add i64 %2916, 7
  store i64 %2917, i64* %PC.i458
  %2918 = sext i64 %2915 to i128
  %2919 = and i128 %2918, -18446744073709551616
  %2920 = zext i64 %2915 to i128
  %2921 = or i128 %2919, %2920
  %2922 = mul i128 380, %2921
  %2923 = trunc i128 %2922 to i64
  store i64 %2923, i64* %RCX.i459, align 8
  %2924 = sext i64 %2923 to i128
  %2925 = icmp ne i128 %2924, %2922
  %2926 = zext i1 %2925 to i8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2926, i8* %2927, align 1
  %2928 = trunc i128 %2922 to i32
  %2929 = and i32 %2928, 255
  %2930 = call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2933, i8* %2934, align 1
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2935, align 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2936, align 1
  %2937 = lshr i64 %2923, 63
  %2938 = trunc i64 %2937 to i8
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2938, i8* %2939, align 1
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2926, i8* %2940, align 1
  store %struct.Memory* %loadMem_487cee, %struct.Memory** %MEMORY
  %loadMem_487cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 33
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 1
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 5
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %RAX.i456
  %2951 = load i64, i64* %RCX.i457
  %2952 = load i64, i64* %PC.i455
  %2953 = add i64 %2952, 3
  store i64 %2953, i64* %PC.i455
  %2954 = add i64 %2951, %2950
  store i64 %2954, i64* %RAX.i456, align 8
  %2955 = icmp ult i64 %2954, %2950
  %2956 = icmp ult i64 %2954, %2951
  %2957 = or i1 %2955, %2956
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2958, i8* %2959, align 1
  %2960 = trunc i64 %2954 to i32
  %2961 = and i32 %2960, 255
  %2962 = call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2965, i8* %2966, align 1
  %2967 = xor i64 %2951, %2950
  %2968 = xor i64 %2967, %2954
  %2969 = lshr i64 %2968, 4
  %2970 = trunc i64 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2971, i8* %2972, align 1
  %2973 = icmp eq i64 %2954, 0
  %2974 = zext i1 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2974, i8* %2975, align 1
  %2976 = lshr i64 %2954, 63
  %2977 = trunc i64 %2976 to i8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2977, i8* %2978, align 1
  %2979 = lshr i64 %2950, 63
  %2980 = lshr i64 %2951, 63
  %2981 = xor i64 %2976, %2979
  %2982 = xor i64 %2976, %2980
  %2983 = add i64 %2981, %2982
  %2984 = icmp eq i64 %2983, 2
  %2985 = zext i1 %2984 to i8
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2985, i8* %2986, align 1
  store %struct.Memory* %loadMem_487cf5, %struct.Memory** %MEMORY
  %loadMem_487cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 1
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 7
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %RAX.i453
  %2997 = add i64 %2996, 60
  %2998 = load i64, i64* %PC.i452
  %2999 = add i64 %2998, 3
  store i64 %2999, i64* %PC.i452
  %3000 = inttoptr i64 %2997 to i32*
  %3001 = load i32, i32* %3000
  %3002 = zext i32 %3001 to i64
  store i64 %3002, i64* %RDX.i454, align 8
  store %struct.Memory* %loadMem_487cf8, %struct.Memory** %MEMORY
  %loadMem_487cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 7
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3008 to i32*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 15
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RBP.i451
  %3013 = sub i64 %3012, 20
  %3014 = load i32, i32* %EDX.i
  %3015 = zext i32 %3014 to i64
  %3016 = load i64, i64* %PC.i450
  %3017 = add i64 %3016, 3
  store i64 %3017, i64* %PC.i450
  %3018 = inttoptr i64 %3013 to i32*
  store i32 %3014, i32* %3018
  store %struct.Memory* %loadMem_487cfb, %struct.Memory** %MEMORY
  %loadMem_487cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 11
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RDI.i448 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 15
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %3027 to i64*
  %3028 = load i64, i64* %RBP.i449
  %3029 = sub i64 %3028, 20
  %3030 = load i64, i64* %PC.i447
  %3031 = add i64 %3030, 3
  store i64 %3031, i64* %PC.i447
  %3032 = inttoptr i64 %3029 to i32*
  %3033 = load i32, i32* %3032
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RDI.i448, align 8
  store %struct.Memory* %loadMem_487cfe, %struct.Memory** %MEMORY
  %loadMem_487d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 33
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 9
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RSI.i445 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 15
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %RBP.i446
  %3045 = sub i64 %3044, 4
  %3046 = load i64, i64* %PC.i444
  %3047 = add i64 %3046, 3
  store i64 %3047, i64* %PC.i444
  %3048 = inttoptr i64 %3045 to i32*
  %3049 = load i32, i32* %3048
  %3050 = zext i32 %3049 to i64
  store i64 %3050, i64* %RSI.i445, align 8
  store %struct.Memory* %loadMem_487d01, %struct.Memory** %MEMORY
  %loadMem1_487d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %PC.i443
  %3055 = add i64 %3054, -471636
  %3056 = load i64, i64* %PC.i443
  %3057 = add i64 %3056, 5
  %3058 = load i64, i64* %PC.i443
  %3059 = add i64 %3058, 5
  store i64 %3059, i64* %PC.i443
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3061 = load i64, i64* %3060, align 8
  %3062 = add i64 %3061, -8
  %3063 = inttoptr i64 %3062 to i64*
  store i64 %3057, i64* %3063
  store i64 %3062, i64* %3060, align 8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3055, i64* %3064, align 8
  store %struct.Memory* %loadMem1_487d04, %struct.Memory** %MEMORY
  %loadMem2_487d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d04 = load i64, i64* %3
  %call2_487d04 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64 %loadPC_487d04, %struct.Memory* %loadMem2_487d04)
  store %struct.Memory* %call2_487d04, %struct.Memory** %MEMORY
  %loadMem_487d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 1
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %3070 to i32*
  %3071 = load i32, i32* %EAX.i442
  %3072 = zext i32 %3071 to i64
  %3073 = load i64, i64* %PC.i441
  %3074 = add i64 %3073, 3
  store i64 %3074, i64* %PC.i441
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3075, align 1
  %3076 = and i32 %3071, 255
  %3077 = call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3080, i8* %3081, align 1
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3082, align 1
  %3083 = icmp eq i32 %3071, 0
  %3084 = zext i1 %3083 to i8
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3084, i8* %3085, align 1
  %3086 = lshr i32 %3071, 31
  %3087 = trunc i32 %3086 to i8
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3087, i8* %3088, align 1
  %3089 = lshr i32 %3071, 31
  %3090 = xor i32 %3086, %3089
  %3091 = add i32 %3090, %3089
  %3092 = icmp eq i32 %3091, 2
  %3093 = zext i1 %3092 to i8
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3093, i8* %3094, align 1
  store %struct.Memory* %loadMem_487d09, %struct.Memory** %MEMORY
  %loadMem_487d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3097 to i64*
  %3098 = load i64, i64* %PC.i440
  %3099 = add i64 %3098, 185
  %3100 = load i64, i64* %PC.i440
  %3101 = add i64 %3100, 6
  %3102 = load i64, i64* %PC.i440
  %3103 = add i64 %3102, 6
  store i64 %3103, i64* %PC.i440
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3105 = load i8, i8* %3104, align 1
  %3106 = icmp eq i8 %3105, 0
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %BRANCH_TAKEN, align 1
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3109 = select i1 %3106, i64 %3099, i64 %3101
  store i64 %3109, i64* %3108, align 8
  store %struct.Memory* %loadMem_487d0c, %struct.Memory** %MEMORY
  %loadBr_487d0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d0c = icmp eq i8 %loadBr_487d0c, 1
  br i1 %cmpBr_487d0c, label %block_.L_487dc5, label %block_487d12

block_487d12:                                     ; preds = %block_.L_487ce0
  %loadMem_487d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 7
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RDX.i439 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %PC.i438
  %3117 = add i64 %3116, 10
  store i64 %3117, i64* %PC.i438
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i439, align 8
  store %struct.Memory* %loadMem_487d12, %struct.Memory** %MEMORY
  %loadMem_487d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 1
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %EAX.i436 = bitcast %union.anon* %3123 to i32*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 1
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %3126 to i64*
  %3127 = load i64, i64* %RAX.i437
  %3128 = load i32, i32* %EAX.i436
  %3129 = zext i32 %3128 to i64
  %3130 = load i64, i64* %PC.i435
  %3131 = add i64 %3130, 2
  store i64 %3131, i64* %PC.i435
  %3132 = xor i64 %3129, %3127
  %3133 = trunc i64 %3132 to i32
  %3134 = and i64 %3132, 4294967295
  store i64 %3134, i64* %RAX.i437, align 8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3135, align 1
  %3136 = and i32 %3133, 255
  %3137 = call i32 @llvm.ctpop.i32(i32 %3136)
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = xor i8 %3139, 1
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3140, i8* %3141, align 1
  %3142 = icmp eq i32 %3133, 0
  %3143 = zext i1 %3142 to i8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3143, i8* %3144, align 1
  %3145 = lshr i32 %3133, 31
  %3146 = trunc i32 %3145 to i8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3146, i8* %3147, align 1
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3148, align 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3149, align 1
  store %struct.Memory* %loadMem_487d1c, %struct.Memory** %MEMORY
  %loadMem_487d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 5
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %PC.i433
  %3157 = add i64 %3156, 10
  store i64 %3157, i64* %PC.i433
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i434, align 8
  store %struct.Memory* %loadMem_487d1e, %struct.Memory** %MEMORY
  %loadMem_487d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 33
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 11
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RDI.i431 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 15
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %RBP.i432
  %3168 = sub i64 %3167, 20
  %3169 = load i64, i64* %PC.i430
  %3170 = add i64 %3169, 3
  store i64 %3170, i64* %PC.i430
  %3171 = inttoptr i64 %3168 to i32*
  %3172 = load i32, i32* %3171
  %3173 = zext i32 %3172 to i64
  store i64 %3173, i64* %RDI.i431, align 8
  store %struct.Memory* %loadMem_487d28, %struct.Memory** %MEMORY
  %loadMem_487d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 9
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RSI.i428 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 15
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %RBP.i429
  %3184 = sub i64 %3183, 4
  %3185 = load i64, i64* %PC.i427
  %3186 = add i64 %3185, 4
  store i64 %3186, i64* %PC.i427
  %3187 = inttoptr i64 %3184 to i32*
  %3188 = load i32, i32* %3187
  %3189 = sext i32 %3188 to i64
  store i64 %3189, i64* %RSI.i428, align 8
  store %struct.Memory* %loadMem_487d2b, %struct.Memory** %MEMORY
  %loadMem_487d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 9
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %RSI.i426 = bitcast %union.anon* %3195 to i64*
  %3196 = load i64, i64* %RSI.i426
  %3197 = load i64, i64* %PC.i425
  %3198 = add i64 %3197, 7
  store i64 %3198, i64* %PC.i425
  %3199 = sext i64 %3196 to i128
  %3200 = and i128 %3199, -18446744073709551616
  %3201 = zext i64 %3196 to i128
  %3202 = or i128 %3200, %3201
  %3203 = mul i128 380, %3202
  %3204 = trunc i128 %3203 to i64
  store i64 %3204, i64* %RSI.i426, align 8
  %3205 = sext i64 %3204 to i128
  %3206 = icmp ne i128 %3205, %3203
  %3207 = zext i1 %3206 to i8
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3207, i8* %3208, align 1
  %3209 = trunc i128 %3203 to i32
  %3210 = and i32 %3209, 255
  %3211 = call i32 @llvm.ctpop.i32(i32 %3210)
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = xor i8 %3213, 1
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3214, i8* %3215, align 1
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3216, align 1
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3217, align 1
  %3218 = lshr i64 %3204, 63
  %3219 = trunc i64 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3219, i8* %3220, align 1
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3207, i8* %3221, align 1
  store %struct.Memory* %loadMem_487d2f, %struct.Memory** %MEMORY
  %loadMem_487d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 33
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 5
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %3227 to i64*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 9
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RSI.i424 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %RCX.i423
  %3232 = load i64, i64* %RSI.i424
  %3233 = load i64, i64* %PC.i422
  %3234 = add i64 %3233, 3
  store i64 %3234, i64* %PC.i422
  %3235 = add i64 %3232, %3231
  store i64 %3235, i64* %RCX.i423, align 8
  %3236 = icmp ult i64 %3235, %3231
  %3237 = icmp ult i64 %3235, %3232
  %3238 = or i1 %3236, %3237
  %3239 = zext i1 %3238 to i8
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3239, i8* %3240, align 1
  %3241 = trunc i64 %3235 to i32
  %3242 = and i32 %3241, 255
  %3243 = call i32 @llvm.ctpop.i32(i32 %3242)
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = xor i8 %3245, 1
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3246, i8* %3247, align 1
  %3248 = xor i64 %3232, %3231
  %3249 = xor i64 %3248, %3235
  %3250 = lshr i64 %3249, 4
  %3251 = trunc i64 %3250 to i8
  %3252 = and i8 %3251, 1
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3252, i8* %3253, align 1
  %3254 = icmp eq i64 %3235, 0
  %3255 = zext i1 %3254 to i8
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3255, i8* %3256, align 1
  %3257 = lshr i64 %3235, 63
  %3258 = trunc i64 %3257 to i8
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3258, i8* %3259, align 1
  %3260 = lshr i64 %3231, 63
  %3261 = lshr i64 %3232, 63
  %3262 = xor i64 %3257, %3260
  %3263 = xor i64 %3257, %3261
  %3264 = add i64 %3262, %3263
  %3265 = icmp eq i64 %3264, 2
  %3266 = zext i1 %3265 to i8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3266, i8* %3267, align 1
  store %struct.Memory* %loadMem_487d36, %struct.Memory** %MEMORY
  %loadMem_487d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 33
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 5
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 9
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RSI.i421 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %RCX.i420
  %3278 = load i64, i64* %PC.i419
  %3279 = add i64 %3278, 2
  store i64 %3279, i64* %PC.i419
  %3280 = inttoptr i64 %3277 to i32*
  %3281 = load i32, i32* %3280
  %3282 = zext i32 %3281 to i64
  store i64 %3282, i64* %RSI.i421, align 8
  store %struct.Memory* %loadMem_487d39, %struct.Memory** %MEMORY
  %loadMem_487d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 1
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %3288 to i32*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 5
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %3291 to i64*
  %3292 = load i32, i32* %EAX.i417
  %3293 = zext i32 %3292 to i64
  %3294 = load i64, i64* %PC.i416
  %3295 = add i64 %3294, 2
  store i64 %3295, i64* %PC.i416
  %3296 = and i64 %3293, 4294967295
  store i64 %3296, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_487d3b, %struct.Memory** %MEMORY
  %loadMem_487d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 1
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %3302 to i32*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 17
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %R8D.i415 = bitcast %union.anon* %3305 to i32*
  %3306 = bitcast i32* %R8D.i415 to i64*
  %3307 = load i32, i32* %EAX.i414
  %3308 = zext i32 %3307 to i64
  %3309 = load i64, i64* %PC.i413
  %3310 = add i64 %3309, 3
  store i64 %3310, i64* %PC.i413
  %3311 = and i64 %3308, 4294967295
  store i64 %3311, i64* %3306, align 8
  store %struct.Memory* %loadMem_487d3d, %struct.Memory** %MEMORY
  %loadMem_487d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 1
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %EAX.i411 = bitcast %union.anon* %3317 to i32*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 19
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %R9D.i412 = bitcast %union.anon* %3320 to i32*
  %3321 = bitcast i32* %R9D.i412 to i64*
  %3322 = load i32, i32* %EAX.i411
  %3323 = zext i32 %3322 to i64
  %3324 = load i64, i64* %PC.i410
  %3325 = add i64 %3324, 3
  store i64 %3325, i64* %PC.i410
  %3326 = and i64 %3323, 4294967295
  store i64 %3326, i64* %3321, align 8
  store %struct.Memory* %loadMem_487d40, %struct.Memory** %MEMORY
  %loadMem1_487d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %PC.i409
  %3331 = add i64 %3330, -519955
  %3332 = load i64, i64* %PC.i409
  %3333 = add i64 %3332, 5
  %3334 = load i64, i64* %PC.i409
  %3335 = add i64 %3334, 5
  store i64 %3335, i64* %PC.i409
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3337 = load i64, i64* %3336, align 8
  %3338 = add i64 %3337, -8
  %3339 = inttoptr i64 %3338 to i64*
  store i64 %3333, i64* %3339
  store i64 %3338, i64* %3336, align 8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3331, i64* %3340, align 8
  store %struct.Memory* %loadMem1_487d43, %struct.Memory** %MEMORY
  %loadMem2_487d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d43 = load i64, i64* %3
  %call2_487d43 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_487d43, %struct.Memory* %loadMem2_487d43)
  store %struct.Memory* %call2_487d43, %struct.Memory** %MEMORY
  %loadMem_487d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 1
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %EAX.i408 = bitcast %union.anon* %3346 to i32*
  %3347 = load i32, i32* %EAX.i408
  %3348 = zext i32 %3347 to i64
  %3349 = load i64, i64* %PC.i407
  %3350 = add i64 %3349, 3
  store i64 %3350, i64* %PC.i407
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3351, align 1
  %3352 = and i32 %3347, 255
  %3353 = call i32 @llvm.ctpop.i32(i32 %3352)
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = xor i8 %3355, 1
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3356, i8* %3357, align 1
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3358, align 1
  %3359 = icmp eq i32 %3347, 0
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3360, i8* %3361, align 1
  %3362 = lshr i32 %3347, 31
  %3363 = trunc i32 %3362 to i8
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3363, i8* %3364, align 1
  %3365 = lshr i32 %3347, 31
  %3366 = xor i32 %3362, %3365
  %3367 = add i32 %3366, %3365
  %3368 = icmp eq i32 %3367, 2
  %3369 = zext i1 %3368 to i8
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3369, i8* %3370, align 1
  store %struct.Memory* %loadMem_487d48, %struct.Memory** %MEMORY
  %loadMem_487d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3373 to i64*
  %3374 = load i64, i64* %PC.i406
  %3375 = add i64 %3374, 117
  %3376 = load i64, i64* %PC.i406
  %3377 = add i64 %3376, 6
  %3378 = load i64, i64* %PC.i406
  %3379 = add i64 %3378, 6
  store i64 %3379, i64* %PC.i406
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3381 = load i8, i8* %3380, align 1
  store i8 %3381, i8* %BRANCH_TAKEN, align 1
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3383 = icmp ne i8 %3381, 0
  %3384 = select i1 %3383, i64 %3375, i64 %3377
  store i64 %3384, i64* %3382, align 8
  store %struct.Memory* %loadMem_487d4b, %struct.Memory** %MEMORY
  %loadBr_487d4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d4b = icmp eq i8 %loadBr_487d4b, 1
  br i1 %cmpBr_487d4b, label %block_.L_487dc0, label %block_487d51

block_487d51:                                     ; preds = %block_487d12
  %loadMem_487d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 1
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %3390 to i32*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 1
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %3393 to i64*
  %3394 = load i64, i64* %RAX.i405
  %3395 = load i32, i32* %EAX.i404
  %3396 = zext i32 %3395 to i64
  %3397 = load i64, i64* %PC.i403
  %3398 = add i64 %3397, 2
  store i64 %3398, i64* %PC.i403
  %3399 = xor i64 %3396, %3394
  %3400 = trunc i64 %3399 to i32
  %3401 = and i64 %3399, 4294967295
  store i64 %3401, i64* %RAX.i405, align 8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3402, align 1
  %3403 = and i32 %3400, 255
  %3404 = call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3407, i8* %3408, align 1
  %3409 = icmp eq i32 %3400, 0
  %3410 = zext i1 %3409 to i8
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3410, i8* %3411, align 1
  %3412 = lshr i32 %3400, 31
  %3413 = trunc i32 %3412 to i8
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3413, i8* %3414, align 1
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3415, align 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3416, align 1
  store %struct.Memory* %loadMem_487d51, %struct.Memory** %MEMORY
  %loadMem_487d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %3422 to i32*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 9
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RSI.i402 = bitcast %union.anon* %3425 to i64*
  %3426 = load i32, i32* %EAX.i401
  %3427 = zext i32 %3426 to i64
  %3428 = load i64, i64* %PC.i400
  %3429 = add i64 %3428, 2
  store i64 %3429, i64* %PC.i400
  %3430 = and i64 %3427, 4294967295
  store i64 %3430, i64* %RSI.i402, align 8
  store %struct.Memory* %loadMem_487d53, %struct.Memory** %MEMORY
  %loadMem_487d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 11
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %RDI.i398 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 15
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RBP.i399
  %3441 = sub i64 %3440, 4
  %3442 = load i64, i64* %PC.i397
  %3443 = add i64 %3442, 3
  store i64 %3443, i64* %PC.i397
  %3444 = inttoptr i64 %3441 to i32*
  %3445 = load i32, i32* %3444
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RDI.i398, align 8
  store %struct.Memory* %loadMem_487d55, %struct.Memory** %MEMORY
  %loadMem1_487d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3449 to i64*
  %3450 = load i64, i64* %PC.i396
  %3451 = add i64 %3450, -172568
  %3452 = load i64, i64* %PC.i396
  %3453 = add i64 %3452, 5
  %3454 = load i64, i64* %PC.i396
  %3455 = add i64 %3454, 5
  store i64 %3455, i64* %PC.i396
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3457 = load i64, i64* %3456, align 8
  %3458 = add i64 %3457, -8
  %3459 = inttoptr i64 %3458 to i64*
  store i64 %3453, i64* %3459
  store i64 %3458, i64* %3456, align 8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3451, i64* %3460, align 8
  store %struct.Memory* %loadMem1_487d58, %struct.Memory** %MEMORY
  %loadMem2_487d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d58 = load i64, i64* %3
  %call2_487d58 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_487d58, %struct.Memory* %loadMem2_487d58)
  store %struct.Memory* %call2_487d58, %struct.Memory** %MEMORY
  %loadMem_487d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 1
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %3466 to i32*
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 15
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %3469 to i64*
  %3470 = load i64, i64* %RBP.i395
  %3471 = sub i64 %3470, 40
  %3472 = load i32, i32* %EAX.i394
  %3473 = zext i32 %3472 to i64
  %3474 = load i64, i64* %PC.i393
  %3475 = add i64 %3474, 3
  store i64 %3475, i64* %PC.i393
  %3476 = inttoptr i64 %3471 to i32*
  store i32 %3472, i32* %3476
  store %struct.Memory* %loadMem_487d5d, %struct.Memory** %MEMORY
  %loadMem_487d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3479 to i64*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 15
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %3482 to i64*
  %3483 = load i64, i64* %RBP.i392
  %3484 = sub i64 %3483, 40
  %3485 = load i64, i64* %PC.i391
  %3486 = add i64 %3485, 4
  store i64 %3486, i64* %PC.i391
  %3487 = inttoptr i64 %3484 to i32*
  %3488 = load i32, i32* %3487
  %3489 = sub i32 %3488, 5
  %3490 = icmp ult i32 %3488, 5
  %3491 = zext i1 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3491, i8* %3492, align 1
  %3493 = and i32 %3489, 255
  %3494 = call i32 @llvm.ctpop.i32(i32 %3493)
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = xor i8 %3496, 1
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3497, i8* %3498, align 1
  %3499 = xor i32 %3488, 5
  %3500 = xor i32 %3499, %3489
  %3501 = lshr i32 %3500, 4
  %3502 = trunc i32 %3501 to i8
  %3503 = and i8 %3502, 1
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3503, i8* %3504, align 1
  %3505 = icmp eq i32 %3489, 0
  %3506 = zext i1 %3505 to i8
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3506, i8* %3507, align 1
  %3508 = lshr i32 %3489, 31
  %3509 = trunc i32 %3508 to i8
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3509, i8* %3510, align 1
  %3511 = lshr i32 %3488, 31
  %3512 = xor i32 %3508, %3511
  %3513 = add i32 %3512, %3511
  %3514 = icmp eq i32 %3513, 2
  %3515 = zext i1 %3514 to i8
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3515, i8* %3516, align 1
  store %struct.Memory* %loadMem_487d60, %struct.Memory** %MEMORY
  %loadMem_487d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 33
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %PC.i390
  %3521 = add i64 %3520, 87
  %3522 = load i64, i64* %PC.i390
  %3523 = add i64 %3522, 6
  %3524 = load i64, i64* %PC.i390
  %3525 = add i64 %3524, 6
  store i64 %3525, i64* %PC.i390
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3527 = load i8, i8* %3526, align 1
  store i8 %3527, i8* %BRANCH_TAKEN, align 1
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3529 = icmp ne i8 %3527, 0
  %3530 = select i1 %3529, i64 %3521, i64 %3523
  store i64 %3530, i64* %3528, align 8
  store %struct.Memory* %loadMem_487d64, %struct.Memory** %MEMORY
  %loadBr_487d64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d64 = icmp eq i8 %loadBr_487d64, 1
  br i1 %cmpBr_487d64, label %block_.L_487dbb, label %block_487d6a

block_487d6a:                                     ; preds = %block_487d51
  %loadMem_487d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 1
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %PC.i388
  %3538 = add i64 %3537, 5
  store i64 %3538, i64* %PC.i388
  store i64 5, i64* %RAX.i389, align 8
  store %struct.Memory* %loadMem_487d6a, %struct.Memory** %MEMORY
  %loadMem_487d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 11
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RDI.i386 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 15
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %3547 to i64*
  %3548 = load i64, i64* %RBP.i387
  %3549 = sub i64 %3548, 4
  %3550 = load i64, i64* %PC.i385
  %3551 = add i64 %3550, 3
  store i64 %3551, i64* %PC.i385
  %3552 = inttoptr i64 %3549 to i32*
  %3553 = load i32, i32* %3552
  %3554 = zext i32 %3553 to i64
  store i64 %3554, i64* %RDI.i386, align 8
  store %struct.Memory* %loadMem_487d6f, %struct.Memory** %MEMORY
  %loadMem_487d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 33
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3557 to i64*
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 9
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %RSI.i383 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 15
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %3563 to i64*
  %3564 = load i64, i64* %RBP.i384
  %3565 = sub i64 %3564, 20
  %3566 = load i64, i64* %PC.i382
  %3567 = add i64 %3566, 3
  store i64 %3567, i64* %PC.i382
  %3568 = inttoptr i64 %3565 to i32*
  %3569 = load i32, i32* %3568
  %3570 = zext i32 %3569 to i64
  store i64 %3570, i64* %RSI.i383, align 8
  store %struct.Memory* %loadMem_487d72, %struct.Memory** %MEMORY
  %loadMem_487d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 33
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 1
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 15
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %3579 to i64*
  %3580 = load i64, i64* %RAX.i380
  %3581 = load i64, i64* %RBP.i381
  %3582 = sub i64 %3581, 40
  %3583 = load i64, i64* %PC.i379
  %3584 = add i64 %3583, 3
  store i64 %3584, i64* %PC.i379
  %3585 = trunc i64 %3580 to i32
  %3586 = inttoptr i64 %3582 to i32*
  %3587 = load i32, i32* %3586
  %3588 = sub i32 %3585, %3587
  %3589 = zext i32 %3588 to i64
  store i64 %3589, i64* %RAX.i380, align 8
  %3590 = icmp ult i32 %3585, %3587
  %3591 = zext i1 %3590 to i8
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3591, i8* %3592, align 1
  %3593 = and i32 %3588, 255
  %3594 = call i32 @llvm.ctpop.i32(i32 %3593)
  %3595 = trunc i32 %3594 to i8
  %3596 = and i8 %3595, 1
  %3597 = xor i8 %3596, 1
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3597, i8* %3598, align 1
  %3599 = xor i32 %3587, %3585
  %3600 = xor i32 %3599, %3588
  %3601 = lshr i32 %3600, 4
  %3602 = trunc i32 %3601 to i8
  %3603 = and i8 %3602, 1
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3603, i8* %3604, align 1
  %3605 = icmp eq i32 %3588, 0
  %3606 = zext i1 %3605 to i8
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3606, i8* %3607, align 1
  %3608 = lshr i32 %3588, 31
  %3609 = trunc i32 %3608 to i8
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3609, i8* %3610, align 1
  %3611 = lshr i32 %3585, 31
  %3612 = lshr i32 %3587, 31
  %3613 = xor i32 %3612, %3611
  %3614 = xor i32 %3608, %3611
  %3615 = add i32 %3614, %3613
  %3616 = icmp eq i32 %3615, 2
  %3617 = zext i1 %3616 to i8
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3617, i8* %3618, align 1
  store %struct.Memory* %loadMem_487d75, %struct.Memory** %MEMORY
  %loadMem_487d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 1
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %3624 to i32*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 7
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %3627 to i64*
  %3628 = load i32, i32* %EAX.i377
  %3629 = zext i32 %3628 to i64
  %3630 = load i64, i64* %PC.i376
  %3631 = add i64 %3630, 2
  store i64 %3631, i64* %PC.i376
  %3632 = and i64 %3629, 4294967295
  store i64 %3632, i64* %RDX.i378, align 8
  store %struct.Memory* %loadMem_487d78, %struct.Memory** %MEMORY
  %loadMem1_487d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %3635 to i64*
  %3636 = load i64, i64* %PC.i375
  %3637 = add i64 %3636, 2694
  %3638 = load i64, i64* %PC.i375
  %3639 = add i64 %3638, 5
  %3640 = load i64, i64* %PC.i375
  %3641 = add i64 %3640, 5
  store i64 %3641, i64* %PC.i375
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3643 = load i64, i64* %3642, align 8
  %3644 = add i64 %3643, -8
  %3645 = inttoptr i64 %3644 to i64*
  store i64 %3639, i64* %3645
  store i64 %3644, i64* %3642, align 8
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3637, i64* %3646, align 8
  store %struct.Memory* %loadMem1_487d7a, %struct.Memory** %MEMORY
  %loadMem2_487d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d7a = load i64, i64* %3
  %call2_487d7a = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64 %loadPC_487d7a, %struct.Memory* %loadMem2_487d7a)
  store %struct.Memory* %call2_487d7a, %struct.Memory** %MEMORY
  %loadMem_487d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %3649 to i64*
  %3650 = load i64, i64* %PC.i374
  %3651 = add i64 %3650, 8
  store i64 %3651, i64* %PC.i374
  %3652 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3653, align 1
  %3654 = and i32 %3652, 255
  %3655 = call i32 @llvm.ctpop.i32(i32 %3654)
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3658, i8* %3659, align 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3660, align 1
  %3661 = icmp eq i32 %3652, 0
  %3662 = zext i1 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i32 %3652, 31
  %3665 = trunc i32 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3665, i8* %3666, align 1
  %3667 = lshr i32 %3652, 31
  %3668 = xor i32 %3664, %3667
  %3669 = add i32 %3668, %3667
  %3670 = icmp eq i32 %3669, 2
  %3671 = zext i1 %3670 to i8
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3671, i8* %3672, align 1
  store %struct.Memory* %loadMem_487d7f, %struct.Memory** %MEMORY
  %loadMem_487d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 33
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %PC.i373
  %3677 = add i64 %3676, 11
  %3678 = load i64, i64* %PC.i373
  %3679 = add i64 %3678, 6
  %3680 = load i64, i64* %PC.i373
  %3681 = add i64 %3680, 6
  store i64 %3681, i64* %PC.i373
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3683 = load i8, i8* %3682, align 1
  %3684 = icmp eq i8 %3683, 0
  %3685 = zext i1 %3684 to i8
  store i8 %3685, i8* %BRANCH_TAKEN, align 1
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3687 = select i1 %3684, i64 %3677, i64 %3679
  store i64 %3687, i64* %3686, align 8
  store %struct.Memory* %loadMem_487d87, %struct.Memory** %MEMORY
  %loadBr_487d87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d87 = icmp eq i8 %loadBr_487d87, 1
  br i1 %cmpBr_487d87, label %block_.L_487d92, label %block_487d8d

block_487d8d:                                     ; preds = %block_487d6a
  %loadMem_487d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %PC.i372
  %3692 = add i64 %3691, 41
  %3693 = load i64, i64* %PC.i372
  %3694 = add i64 %3693, 5
  store i64 %3694, i64* %PC.i372
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3692, i64* %3695, align 8
  store %struct.Memory* %loadMem_487d8d, %struct.Memory** %MEMORY
  br label %block_.L_487db6

block_.L_487d92:                                  ; preds = %block_487d6a
  %loadMem_487d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 11
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RDI.i371 = bitcast %union.anon* %3701 to i64*
  %3702 = load i64, i64* %PC.i370
  %3703 = add i64 %3702, 10
  store i64 %3703, i64* %PC.i370
  store i64 ptrtoint (%G__0x5831aa_type* @G__0x5831aa to i64), i64* %RDI.i371, align 8
  store %struct.Memory* %loadMem_487d92, %struct.Memory** %MEMORY
  %loadMem_487d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 33
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3706 to i64*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 1
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %RAX.i369 = bitcast %union.anon* %3709 to i64*
  %3710 = load i64, i64* %PC.i368
  %3711 = add i64 %3710, 5
  store i64 %3711, i64* %PC.i368
  store i64 5, i64* %RAX.i369, align 8
  store %struct.Memory* %loadMem_487d9c, %struct.Memory** %MEMORY
  %loadMem_487da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 33
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3714 to i64*
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 9
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %RSI.i366 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 15
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %3720 to i64*
  %3721 = load i64, i64* %RBP.i367
  %3722 = sub i64 %3721, 4
  %3723 = load i64, i64* %PC.i365
  %3724 = add i64 %3723, 3
  store i64 %3724, i64* %PC.i365
  %3725 = inttoptr i64 %3722 to i32*
  %3726 = load i32, i32* %3725
  %3727 = zext i32 %3726 to i64
  store i64 %3727, i64* %RSI.i366, align 8
  store %struct.Memory* %loadMem_487da1, %struct.Memory** %MEMORY
  %loadMem_487da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 7
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 15
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %3736 to i64*
  %3737 = load i64, i64* %RBP.i364
  %3738 = sub i64 %3737, 20
  %3739 = load i64, i64* %PC.i362
  %3740 = add i64 %3739, 3
  store i64 %3740, i64* %PC.i362
  %3741 = inttoptr i64 %3738 to i32*
  %3742 = load i32, i32* %3741
  %3743 = zext i32 %3742 to i64
  store i64 %3743, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_487da4, %struct.Memory** %MEMORY
  %loadMem_487da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 33
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 1
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %3749 to i64*
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 15
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3752 to i64*
  %3753 = load i64, i64* %RAX.i360
  %3754 = load i64, i64* %RBP.i361
  %3755 = sub i64 %3754, 40
  %3756 = load i64, i64* %PC.i359
  %3757 = add i64 %3756, 3
  store i64 %3757, i64* %PC.i359
  %3758 = trunc i64 %3753 to i32
  %3759 = inttoptr i64 %3755 to i32*
  %3760 = load i32, i32* %3759
  %3761 = sub i32 %3758, %3760
  %3762 = zext i32 %3761 to i64
  store i64 %3762, i64* %RAX.i360, align 8
  %3763 = icmp ult i32 %3758, %3760
  %3764 = zext i1 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3764, i8* %3765, align 1
  %3766 = and i32 %3761, 255
  %3767 = call i32 @llvm.ctpop.i32(i32 %3766)
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = xor i8 %3769, 1
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3770, i8* %3771, align 1
  %3772 = xor i32 %3760, %3758
  %3773 = xor i32 %3772, %3761
  %3774 = lshr i32 %3773, 4
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3776, i8* %3777, align 1
  %3778 = icmp eq i32 %3761, 0
  %3779 = zext i1 %3778 to i8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3779, i8* %3780, align 1
  %3781 = lshr i32 %3761, 31
  %3782 = trunc i32 %3781 to i8
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3782, i8* %3783, align 1
  %3784 = lshr i32 %3758, 31
  %3785 = lshr i32 %3760, 31
  %3786 = xor i32 %3785, %3784
  %3787 = xor i32 %3781, %3784
  %3788 = add i32 %3787, %3786
  %3789 = icmp eq i32 %3788, 2
  %3790 = zext i1 %3789 to i8
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3790, i8* %3791, align 1
  store %struct.Memory* %loadMem_487da7, %struct.Memory** %MEMORY
  %loadMem_487daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 1
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %EAX.i357 = bitcast %union.anon* %3797 to i32*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 5
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %3800 to i64*
  %3801 = load i32, i32* %EAX.i357
  %3802 = zext i32 %3801 to i64
  %3803 = load i64, i64* %PC.i356
  %3804 = add i64 %3803, 2
  store i64 %3804, i64* %PC.i356
  %3805 = and i64 %3802, 4294967295
  store i64 %3805, i64* %RCX.i358, align 8
  store %struct.Memory* %loadMem_487daa, %struct.Memory** %MEMORY
  %loadMem_487dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 33
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 1
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %3812 = bitcast %union.anon* %3811 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3812, i32 0, i32 0
  %3813 = load i64, i64* %PC.i355
  %3814 = add i64 %3813, 2
  store i64 %3814, i64* %PC.i355
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_487dac, %struct.Memory** %MEMORY
  %loadMem1_487dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 33
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %PC.i354
  %3819 = add i64 %3818, -221182
  %3820 = load i64, i64* %PC.i354
  %3821 = add i64 %3820, 5
  %3822 = load i64, i64* %PC.i354
  %3823 = add i64 %3822, 5
  store i64 %3823, i64* %PC.i354
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3825 = load i64, i64* %3824, align 8
  %3826 = add i64 %3825, -8
  %3827 = inttoptr i64 %3826 to i64*
  store i64 %3821, i64* %3827
  store i64 %3826, i64* %3824, align 8
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3819, i64* %3828, align 8
  store %struct.Memory* %loadMem1_487dae, %struct.Memory** %MEMORY
  %loadMem2_487dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487dae = load i64, i64* %3
  %call2_487dae = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_487dae, %struct.Memory* %loadMem2_487dae)
  store %struct.Memory* %call2_487dae, %struct.Memory** %MEMORY
  %loadMem_487db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 1
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %3834 to i32*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 15
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %RBP.i353
  %3839 = sub i64 %3838, 64
  %3840 = load i32, i32* %EAX.i352
  %3841 = zext i32 %3840 to i64
  %3842 = load i64, i64* %PC.i351
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %PC.i351
  %3844 = inttoptr i64 %3839 to i32*
  store i32 %3840, i32* %3844
  store %struct.Memory* %loadMem_487db3, %struct.Memory** %MEMORY
  br label %block_.L_487db6

block_.L_487db6:                                  ; preds = %block_.L_487d92, %block_487d8d
  %loadMem_487db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3847 to i64*
  %3848 = load i64, i64* %PC.i350
  %3849 = add i64 %3848, 5
  %3850 = load i64, i64* %PC.i350
  %3851 = add i64 %3850, 5
  store i64 %3851, i64* %PC.i350
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3849, i64* %3852, align 8
  store %struct.Memory* %loadMem_487db6, %struct.Memory** %MEMORY
  br label %block_.L_487dbb

block_.L_487dbb:                                  ; preds = %block_.L_487db6, %block_487d51
  %loadMem1_487dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3854 = getelementptr inbounds %struct.GPR, %struct.GPR* %3853, i32 0, i32 33
  %3855 = getelementptr inbounds %struct.Reg, %struct.Reg* %3854, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3855 to i64*
  %3856 = load i64, i64* %PC.i349
  %3857 = add i64 %3856, -499803
  %3858 = load i64, i64* %PC.i349
  %3859 = add i64 %3858, 5
  %3860 = load i64, i64* %PC.i349
  %3861 = add i64 %3860, 5
  store i64 %3861, i64* %PC.i349
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3863 = load i64, i64* %3862, align 8
  %3864 = add i64 %3863, -8
  %3865 = inttoptr i64 %3864 to i64*
  store i64 %3859, i64* %3865
  store i64 %3864, i64* %3862, align 8
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3857, i64* %3866, align 8
  store %struct.Memory* %loadMem1_487dbb, %struct.Memory** %MEMORY
  %loadMem2_487dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487dbb = load i64, i64* %3
  %call2_487dbb = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_487dbb, %struct.Memory* %loadMem2_487dbb)
  store %struct.Memory* %call2_487dbb, %struct.Memory** %MEMORY
  br label %block_.L_487dc0

block_.L_487dc0:                                  ; preds = %block_.L_487dbb, %block_487d12
  %loadMem_487dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3869 to i64*
  %3870 = load i64, i64* %PC.i348
  %3871 = add i64 %3870, 5
  %3872 = load i64, i64* %PC.i348
  %3873 = add i64 %3872, 5
  store i64 %3873, i64* %PC.i348
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3871, i64* %3874, align 8
  store %struct.Memory* %loadMem_487dc0, %struct.Memory** %MEMORY
  br label %block_.L_487dc5

block_.L_487dc5:                                  ; preds = %block_.L_487dc0, %block_.L_487ce0
  %loadMem_487dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3877 to i64*
  %3878 = load i64, i64* %PC.i347
  %3879 = add i64 %3878, 5
  %3880 = load i64, i64* %PC.i347
  %3881 = add i64 %3880, 5
  store i64 %3881, i64* %PC.i347
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3879, i64* %3882, align 8
  store %struct.Memory* %loadMem_487dc5, %struct.Memory** %MEMORY
  br label %block_.L_487dca

block_.L_487dca:                                  ; preds = %block_.L_487dc5, %block_.L_487cdb
  %loadMem_487dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %PC.i346
  %3887 = add i64 %3886, 5
  %3888 = load i64, i64* %PC.i346
  %3889 = add i64 %3888, 5
  store i64 %3889, i64* %PC.i346
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3887, i64* %3890, align 8
  store %struct.Memory* %loadMem_487dca, %struct.Memory** %MEMORY
  br label %block_.L_487dcf

block_.L_487dcf:                                  ; preds = %block_.L_487dca, %block_.L_487c31
  %loadMem_487dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3893 to i64*
  %3894 = load i64, i64* %PC.i345
  %3895 = add i64 %3894, 5
  %3896 = load i64, i64* %PC.i345
  %3897 = add i64 %3896, 5
  store i64 %3897, i64* %PC.i345
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3895, i64* %3898, align 8
  store %struct.Memory* %loadMem_487dcf, %struct.Memory** %MEMORY
  br label %block_.L_487dd4

block_.L_487dd4:                                  ; preds = %block_.L_487dcf, %block_.L_487c2c
  %loadMem_487dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 1
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 15
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %RBP.i344
  %3909 = sub i64 %3908, 4
  %3910 = load i64, i64* %PC.i342
  %3911 = add i64 %3910, 3
  store i64 %3911, i64* %PC.i342
  %3912 = inttoptr i64 %3909 to i32*
  %3913 = load i32, i32* %3912
  %3914 = zext i32 %3913 to i64
  store i64 %3914, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_487dd4, %struct.Memory** %MEMORY
  %loadMem_487dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 33
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3917 to i64*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 1
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %RAX.i341
  %3922 = load i64, i64* %PC.i340
  %3923 = add i64 %3922, 3
  store i64 %3923, i64* %PC.i340
  %3924 = trunc i64 %3921 to i32
  %3925 = add i32 1, %3924
  %3926 = zext i32 %3925 to i64
  store i64 %3926, i64* %RAX.i341, align 8
  %3927 = icmp ult i32 %3925, %3924
  %3928 = icmp ult i32 %3925, 1
  %3929 = or i1 %3927, %3928
  %3930 = zext i1 %3929 to i8
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3930, i8* %3931, align 1
  %3932 = and i32 %3925, 255
  %3933 = call i32 @llvm.ctpop.i32(i32 %3932)
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  %3936 = xor i8 %3935, 1
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3936, i8* %3937, align 1
  %3938 = xor i64 1, %3921
  %3939 = trunc i64 %3938 to i32
  %3940 = xor i32 %3939, %3925
  %3941 = lshr i32 %3940, 4
  %3942 = trunc i32 %3941 to i8
  %3943 = and i8 %3942, 1
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3943, i8* %3944, align 1
  %3945 = icmp eq i32 %3925, 0
  %3946 = zext i1 %3945 to i8
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3946, i8* %3947, align 1
  %3948 = lshr i32 %3925, 31
  %3949 = trunc i32 %3948 to i8
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3949, i8* %3950, align 1
  %3951 = lshr i32 %3924, 31
  %3952 = xor i32 %3948, %3951
  %3953 = add i32 %3952, %3948
  %3954 = icmp eq i32 %3953, 2
  %3955 = zext i1 %3954 to i8
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3955, i8* %3956, align 1
  store %struct.Memory* %loadMem_487dd7, %struct.Memory** %MEMORY
  %loadMem_487dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 33
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 1
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %EAX.i338 = bitcast %union.anon* %3962 to i32*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 15
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %3965 to i64*
  %3966 = load i64, i64* %RBP.i339
  %3967 = sub i64 %3966, 4
  %3968 = load i32, i32* %EAX.i338
  %3969 = zext i32 %3968 to i64
  %3970 = load i64, i64* %PC.i337
  %3971 = add i64 %3970, 3
  store i64 %3971, i64* %PC.i337
  %3972 = inttoptr i64 %3967 to i32*
  store i32 %3968, i32* %3972
  store %struct.Memory* %loadMem_487dda, %struct.Memory** %MEMORY
  %loadMem_487ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 33
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %PC.i336
  %3977 = add i64 %3976, -508
  %3978 = load i64, i64* %PC.i336
  %3979 = add i64 %3978, 5
  store i64 %3979, i64* %PC.i336
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3977, i64* %3980, align 8
  store %struct.Memory* %loadMem_487ddd, %struct.Memory** %MEMORY
  br label %block_.L_487be1

block_.L_487de2:                                  ; preds = %block_.L_487be1
  %loadMem_487de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3983 to i64*
  %3984 = load i64, i64* %PC.i335
  %3985 = add i64 %3984, 8
  store i64 %3985, i64* %PC.i335
  %3986 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3987, align 1
  %3988 = and i32 %3986, 255
  %3989 = call i32 @llvm.ctpop.i32(i32 %3988)
  %3990 = trunc i32 %3989 to i8
  %3991 = and i8 %3990, 1
  %3992 = xor i8 %3991, 1
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3992, i8* %3993, align 1
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3994, align 1
  %3995 = icmp eq i32 %3986, 0
  %3996 = zext i1 %3995 to i8
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3996, i8* %3997, align 1
  %3998 = lshr i32 %3986, 31
  %3999 = trunc i32 %3998 to i8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3999, i8* %4000, align 1
  %4001 = lshr i32 %3986, 31
  %4002 = xor i32 %3998, %4001
  %4003 = add i32 %4002, %4001
  %4004 = icmp eq i32 %4003, 2
  %4005 = zext i1 %4004 to i8
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4005, i8* %4006, align 1
  store %struct.Memory* %loadMem_487de2, %struct.Memory** %MEMORY
  %loadMem_487dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %PC.i334
  %4011 = add i64 %4010, 11
  %4012 = load i64, i64* %PC.i334
  %4013 = add i64 %4012, 6
  %4014 = load i64, i64* %PC.i334
  %4015 = add i64 %4014, 6
  store i64 %4015, i64* %PC.i334
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4017 = load i8, i8* %4016, align 1
  %4018 = icmp eq i8 %4017, 0
  %4019 = zext i1 %4018 to i8
  store i8 %4019, i8* %BRANCH_TAKEN, align 1
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4021 = select i1 %4018, i64 %4011, i64 %4013
  store i64 %4021, i64* %4020, align 8
  store %struct.Memory* %loadMem_487dea, %struct.Memory** %MEMORY
  %loadBr_487dea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487dea = icmp eq i8 %loadBr_487dea, 1
  br i1 %cmpBr_487dea, label %block_.L_487df5, label %block_487df0

block_487df0:                                     ; preds = %block_.L_487de2
  %loadMem_487df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 33
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4024 to i64*
  %4025 = load i64, i64* %PC.i333
  %4026 = add i64 %4025, 45
  %4027 = load i64, i64* %PC.i333
  %4028 = add i64 %4027, 5
  store i64 %4028, i64* %PC.i333
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4026, i64* %4029, align 8
  store %struct.Memory* %loadMem_487df0, %struct.Memory** %MEMORY
  br label %block_.L_487e1d

block_.L_487df5:                                  ; preds = %block_.L_487de2
  %loadMem_487df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 11
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RDI.i332 = bitcast %union.anon* %4035 to i64*
  %4036 = load i64, i64* %PC.i331
  %4037 = add i64 %4036, 10
  store i64 %4037, i64* %PC.i331
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i332, align 8
  store %struct.Memory* %loadMem_487df5, %struct.Memory** %MEMORY
  %loadMem_487dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 9
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RSI.i330 = bitcast %union.anon* %4043 to i64*
  %4044 = load i64, i64* %PC.i329
  %4045 = add i64 %4044, 5
  store i64 %4045, i64* %PC.i329
  store i64 804, i64* %RSI.i330, align 8
  store %struct.Memory* %loadMem_487dff, %struct.Memory** %MEMORY
  %loadMem_487e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 33
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4048 to i64*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 7
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %4051 to i64*
  %4052 = load i64, i64* %PC.i327
  %4053 = add i64 %4052, 10
  store i64 %4053, i64* %PC.i327
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i328, align 8
  store %struct.Memory* %loadMem_487e04, %struct.Memory** %MEMORY
  %loadMem_487e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 33
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 1
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %PC.i325
  %4061 = add i64 %4060, 5
  store i64 %4061, i64* %PC.i325
  store i64 4294967295, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_487e0e, %struct.Memory** %MEMORY
  %loadMem_487e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 33
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4064 to i64*
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 1
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %EAX.i323 = bitcast %union.anon* %4067 to i32*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 5
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %4070 to i64*
  %4071 = load i32, i32* %EAX.i323
  %4072 = zext i32 %4071 to i64
  %4073 = load i64, i64* %PC.i322
  %4074 = add i64 %4073, 2
  store i64 %4074, i64* %PC.i322
  %4075 = and i64 %4072, 4294967295
  store i64 %4075, i64* %RCX.i324, align 8
  store %struct.Memory* %loadMem_487e13, %struct.Memory** %MEMORY
  %loadMem_487e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 33
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %4078 to i64*
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 1
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %EAX.i320 = bitcast %union.anon* %4081 to i32*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 17
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %R8D.i321 = bitcast %union.anon* %4084 to i32*
  %4085 = bitcast i32* %R8D.i321 to i64*
  %4086 = load i32, i32* %EAX.i320
  %4087 = zext i32 %4086 to i64
  %4088 = load i64, i64* %PC.i319
  %4089 = add i64 %4088, 3
  store i64 %4089, i64* %PC.i319
  %4090 = and i64 %4087, 4294967295
  store i64 %4090, i64* %4085, align 8
  store %struct.Memory* %loadMem_487e15, %struct.Memory** %MEMORY
  %loadMem1_487e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %PC.i318
  %4095 = add i64 %4094, -220552
  %4096 = load i64, i64* %PC.i318
  %4097 = add i64 %4096, 5
  %4098 = load i64, i64* %PC.i318
  %4099 = add i64 %4098, 5
  store i64 %4099, i64* %PC.i318
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4101 = load i64, i64* %4100, align 8
  %4102 = add i64 %4101, -8
  %4103 = inttoptr i64 %4102 to i64*
  store i64 %4097, i64* %4103
  store i64 %4102, i64* %4100, align 8
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4095, i64* %4104, align 8
  store %struct.Memory* %loadMem1_487e18, %struct.Memory** %MEMORY
  %loadMem2_487e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e18 = load i64, i64* %3
  %call2_487e18 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_487e18, %struct.Memory* %loadMem2_487e18)
  store %struct.Memory* %call2_487e18, %struct.Memory** %MEMORY
  br label %block_.L_487e1d

block_.L_487e1d:                                  ; preds = %block_.L_487df5, %block_487df0
  %loadMem1_487e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4107 to i64*
  %4108 = load i64, i64* %PC.i317
  %4109 = add i64 %4108, 6883
  %4110 = load i64, i64* %PC.i317
  %4111 = add i64 %4110, 5
  %4112 = load i64, i64* %PC.i317
  %4113 = add i64 %4112, 5
  store i64 %4113, i64* %PC.i317
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4115 = load i64, i64* %4114, align 8
  %4116 = add i64 %4115, -8
  %4117 = inttoptr i64 %4116 to i64*
  store i64 %4111, i64* %4117
  store i64 %4116, i64* %4114, align 8
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4109, i64* %4118, align 8
  store %struct.Memory* %loadMem1_487e1d, %struct.Memory** %MEMORY
  %loadMem2_487e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e1d = load i64, i64* %3
  %call2_487e1d = call %struct.Memory* @sub_489900.find_defense_patterns(%struct.State* %0, i64 %loadPC_487e1d, %struct.Memory* %loadMem2_487e1d)
  store %struct.Memory* %call2_487e1d, %struct.Memory** %MEMORY
  %loadMem_487e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 33
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %PC.i316
  %4123 = add i64 %4122, 8
  store i64 %4123, i64* %PC.i316
  %4124 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4125, align 1
  %4126 = and i32 %4124, 255
  %4127 = call i32 @llvm.ctpop.i32(i32 %4126)
  %4128 = trunc i32 %4127 to i8
  %4129 = and i8 %4128, 1
  %4130 = xor i8 %4129, 1
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4130, i8* %4131, align 1
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4132, align 1
  %4133 = icmp eq i32 %4124, 0
  %4134 = zext i1 %4133 to i8
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4134, i8* %4135, align 1
  %4136 = lshr i32 %4124, 31
  %4137 = trunc i32 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4137, i8* %4138, align 1
  %4139 = lshr i32 %4124, 31
  %4140 = xor i32 %4136, %4139
  %4141 = add i32 %4140, %4139
  %4142 = icmp eq i32 %4141, 2
  %4143 = zext i1 %4142 to i8
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4143, i8* %4144, align 1
  store %struct.Memory* %loadMem_487e22, %struct.Memory** %MEMORY
  %loadMem_487e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 33
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4147 to i64*
  %4148 = load i64, i64* %PC.i315
  %4149 = add i64 %4148, 11
  %4150 = load i64, i64* %PC.i315
  %4151 = add i64 %4150, 6
  %4152 = load i64, i64* %PC.i315
  %4153 = add i64 %4152, 6
  store i64 %4153, i64* %PC.i315
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4155 = load i8, i8* %4154, align 1
  %4156 = icmp eq i8 %4155, 0
  %4157 = zext i1 %4156 to i8
  store i8 %4157, i8* %BRANCH_TAKEN, align 1
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4159 = select i1 %4156, i64 %4149, i64 %4151
  store i64 %4159, i64* %4158, align 8
  store %struct.Memory* %loadMem_487e2a, %struct.Memory** %MEMORY
  %loadBr_487e2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e2a = icmp eq i8 %loadBr_487e2a, 1
  br i1 %cmpBr_487e2a, label %block_.L_487e35, label %block_487e30

block_487e30:                                     ; preds = %block_.L_487e1d
  %loadMem_487e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 33
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4162 to i64*
  %4163 = load i64, i64* %PC.i314
  %4164 = add i64 %4163, 45
  %4165 = load i64, i64* %PC.i314
  %4166 = add i64 %4165, 5
  store i64 %4166, i64* %PC.i314
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4164, i64* %4167, align 8
  store %struct.Memory* %loadMem_487e30, %struct.Memory** %MEMORY
  br label %block_.L_487e5d

block_.L_487e35:                                  ; preds = %block_.L_487e1d
  %loadMem_487e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 33
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 11
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %RDI.i313 = bitcast %union.anon* %4173 to i64*
  %4174 = load i64, i64* %PC.i312
  %4175 = add i64 %4174, 10
  store i64 %4175, i64* %PC.i312
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i313, align 8
  store %struct.Memory* %loadMem_487e35, %struct.Memory** %MEMORY
  %loadMem_487e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 33
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 9
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RSI.i311 = bitcast %union.anon* %4181 to i64*
  %4182 = load i64, i64* %PC.i310
  %4183 = add i64 %4182, 5
  store i64 %4183, i64* %PC.i310
  store i64 808, i64* %RSI.i311, align 8
  store %struct.Memory* %loadMem_487e3f, %struct.Memory** %MEMORY
  %loadMem_487e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 7
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %4189 to i64*
  %4190 = load i64, i64* %PC.i308
  %4191 = add i64 %4190, 10
  store i64 %4191, i64* %PC.i308
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i309, align 8
  store %struct.Memory* %loadMem_487e44, %struct.Memory** %MEMORY
  %loadMem_487e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 33
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4194 to i64*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 1
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %4197 to i64*
  %4198 = load i64, i64* %PC.i306
  %4199 = add i64 %4198, 5
  store i64 %4199, i64* %PC.i306
  store i64 4294967295, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_487e4e, %struct.Memory** %MEMORY
  %loadMem_487e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 1
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %EAX.i304 = bitcast %union.anon* %4205 to i32*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 5
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %4208 to i64*
  %4209 = load i32, i32* %EAX.i304
  %4210 = zext i32 %4209 to i64
  %4211 = load i64, i64* %PC.i303
  %4212 = add i64 %4211, 2
  store i64 %4212, i64* %PC.i303
  %4213 = and i64 %4210, 4294967295
  store i64 %4213, i64* %RCX.i305, align 8
  store %struct.Memory* %loadMem_487e53, %struct.Memory** %MEMORY
  %loadMem_487e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 1
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %4219 to i32*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 17
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %R8D.i302 = bitcast %union.anon* %4222 to i32*
  %4223 = bitcast i32* %R8D.i302 to i64*
  %4224 = load i32, i32* %EAX.i301
  %4225 = zext i32 %4224 to i64
  %4226 = load i64, i64* %PC.i300
  %4227 = add i64 %4226, 3
  store i64 %4227, i64* %PC.i300
  %4228 = and i64 %4225, 4294967295
  store i64 %4228, i64* %4223, align 8
  store %struct.Memory* %loadMem_487e55, %struct.Memory** %MEMORY
  %loadMem1_487e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 33
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4231 to i64*
  %4232 = load i64, i64* %PC.i299
  %4233 = add i64 %4232, -220616
  %4234 = load i64, i64* %PC.i299
  %4235 = add i64 %4234, 5
  %4236 = load i64, i64* %PC.i299
  %4237 = add i64 %4236, 5
  store i64 %4237, i64* %PC.i299
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4239 = load i64, i64* %4238, align 8
  %4240 = add i64 %4239, -8
  %4241 = inttoptr i64 %4240 to i64*
  store i64 %4235, i64* %4241
  store i64 %4240, i64* %4238, align 8
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4233, i64* %4242, align 8
  store %struct.Memory* %loadMem1_487e58, %struct.Memory** %MEMORY
  %loadMem2_487e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e58 = load i64, i64* %3
  %call2_487e58 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_487e58, %struct.Memory* %loadMem2_487e58)
  store %struct.Memory* %call2_487e58, %struct.Memory** %MEMORY
  br label %block_.L_487e5d

block_.L_487e5d:                                  ; preds = %block_.L_487e35, %block_487e30
  %loadMem_487e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 15
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %4248 to i64*
  %4249 = load i64, i64* %RBP.i298
  %4250 = sub i64 %4249, 4
  %4251 = load i64, i64* %PC.i297
  %4252 = add i64 %4251, 7
  store i64 %4252, i64* %PC.i297
  %4253 = inttoptr i64 %4250 to i32*
  store i32 21, i32* %4253
  store %struct.Memory* %loadMem_487e5d, %struct.Memory** %MEMORY
  br label %block_.L_487e64

block_.L_487e64:                                  ; preds = %block_.L_488095, %block_.L_487e5d
  %loadMem_487e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 15
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RBP.i296
  %4261 = sub i64 %4260, 4
  %4262 = load i64, i64* %PC.i295
  %4263 = add i64 %4262, 7
  store i64 %4263, i64* %PC.i295
  %4264 = inttoptr i64 %4261 to i32*
  %4265 = load i32, i32* %4264
  %4266 = sub i32 %4265, 400
  %4267 = icmp ult i32 %4265, 400
  %4268 = zext i1 %4267 to i8
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4268, i8* %4269, align 1
  %4270 = and i32 %4266, 255
  %4271 = call i32 @llvm.ctpop.i32(i32 %4270)
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = xor i8 %4273, 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4274, i8* %4275, align 1
  %4276 = xor i32 %4265, 400
  %4277 = xor i32 %4276, %4266
  %4278 = lshr i32 %4277, 4
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4280, i8* %4281, align 1
  %4282 = icmp eq i32 %4266, 0
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4283, i8* %4284, align 1
  %4285 = lshr i32 %4266, 31
  %4286 = trunc i32 %4285 to i8
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4286, i8* %4287, align 1
  %4288 = lshr i32 %4265, 31
  %4289 = xor i32 %4285, %4288
  %4290 = add i32 %4289, %4288
  %4291 = icmp eq i32 %4290, 2
  %4292 = zext i1 %4291 to i8
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4292, i8* %4293, align 1
  store %struct.Memory* %loadMem_487e64, %struct.Memory** %MEMORY
  %loadMem_487e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 33
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4296 to i64*
  %4297 = load i64, i64* %PC.i294
  %4298 = add i64 %4297, 568
  %4299 = load i64, i64* %PC.i294
  %4300 = add i64 %4299, 6
  %4301 = load i64, i64* %PC.i294
  %4302 = add i64 %4301, 6
  store i64 %4302, i64* %PC.i294
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4304 = load i8, i8* %4303, align 1
  %4305 = icmp ne i8 %4304, 0
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4307 = load i8, i8* %4306, align 1
  %4308 = icmp ne i8 %4307, 0
  %4309 = xor i1 %4305, %4308
  %4310 = xor i1 %4309, true
  %4311 = zext i1 %4310 to i8
  store i8 %4311, i8* %BRANCH_TAKEN, align 1
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4313 = select i1 %4309, i64 %4300, i64 %4298
  store i64 %4313, i64* %4312, align 8
  store %struct.Memory* %loadMem_487e6b, %struct.Memory** %MEMORY
  %loadBr_487e6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e6b = icmp eq i8 %loadBr_487e6b, 1
  br i1 %cmpBr_487e6b, label %block_.L_4880a3, label %block_487e71

block_487e71:                                     ; preds = %block_.L_487e64
  %loadMem_487e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RBP.i293
  %4324 = sub i64 %4323, 4
  %4325 = load i64, i64* %PC.i291
  %4326 = add i64 %4325, 4
  store i64 %4326, i64* %PC.i291
  %4327 = inttoptr i64 %4324 to i32*
  %4328 = load i32, i32* %4327
  %4329 = sext i32 %4328 to i64
  store i64 %4329, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_487e71, %struct.Memory** %MEMORY
  %loadMem_487e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 1
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 5
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %RAX.i289
  %4340 = add i64 %4339, 12099168
  %4341 = load i64, i64* %PC.i288
  %4342 = add i64 %4341, 8
  store i64 %4342, i64* %PC.i288
  %4343 = inttoptr i64 %4340 to i8*
  %4344 = load i8, i8* %4343
  %4345 = zext i8 %4344 to i64
  store i64 %4345, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_487e75, %struct.Memory** %MEMORY
  %loadMem_487e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 33
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 5
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %ECX.i286 = bitcast %union.anon* %4351 to i32*
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 15
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %4354 to i64*
  %4355 = load i64, i64* %RBP.i287
  %4356 = sub i64 %4355, 32
  %4357 = load i32, i32* %ECX.i286
  %4358 = zext i32 %4357 to i64
  %4359 = load i64, i64* %PC.i285
  %4360 = add i64 %4359, 3
  store i64 %4360, i64* %PC.i285
  %4361 = inttoptr i64 %4356 to i32*
  store i32 %4357, i32* %4361
  store %struct.Memory* %loadMem_487e7d, %struct.Memory** %MEMORY
  %loadMem_487e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 33
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 15
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %4367 to i64*
  %4368 = load i64, i64* %RBP.i284
  %4369 = sub i64 %4368, 32
  %4370 = load i64, i64* %PC.i283
  %4371 = add i64 %4370, 4
  store i64 %4371, i64* %PC.i283
  %4372 = inttoptr i64 %4369 to i32*
  %4373 = load i32, i32* %4372
  %4374 = sub i32 %4373, 1
  %4375 = icmp ult i32 %4373, 1
  %4376 = zext i1 %4375 to i8
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4376, i8* %4377, align 1
  %4378 = and i32 %4374, 255
  %4379 = call i32 @llvm.ctpop.i32(i32 %4378)
  %4380 = trunc i32 %4379 to i8
  %4381 = and i8 %4380, 1
  %4382 = xor i8 %4381, 1
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4382, i8* %4383, align 1
  %4384 = xor i32 %4373, 1
  %4385 = xor i32 %4384, %4374
  %4386 = lshr i32 %4385, 4
  %4387 = trunc i32 %4386 to i8
  %4388 = and i8 %4387, 1
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4388, i8* %4389, align 1
  %4390 = icmp eq i32 %4374, 0
  %4391 = zext i1 %4390 to i8
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4391, i8* %4392, align 1
  %4393 = lshr i32 %4374, 31
  %4394 = trunc i32 %4393 to i8
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4394, i8* %4395, align 1
  %4396 = lshr i32 %4373, 31
  %4397 = xor i32 %4393, %4396
  %4398 = add i32 %4397, %4396
  %4399 = icmp eq i32 %4398, 2
  %4400 = zext i1 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4400, i8* %4401, align 1
  store %struct.Memory* %loadMem_487e80, %struct.Memory** %MEMORY
  %loadMem_487e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 33
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %PC.i282
  %4406 = add i64 %4405, 16
  %4407 = load i64, i64* %PC.i282
  %4408 = add i64 %4407, 6
  %4409 = load i64, i64* %PC.i282
  %4410 = add i64 %4409, 6
  store i64 %4410, i64* %PC.i282
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4412 = load i8, i8* %4411, align 1
  store i8 %4412, i8* %BRANCH_TAKEN, align 1
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4414 = icmp ne i8 %4412, 0
  %4415 = select i1 %4414, i64 %4406, i64 %4408
  store i64 %4415, i64* %4413, align 8
  store %struct.Memory* %loadMem_487e84, %struct.Memory** %MEMORY
  %loadBr_487e84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e84 = icmp eq i8 %loadBr_487e84, 1
  br i1 %cmpBr_487e84, label %block_.L_487e94, label %block_487e8a

block_487e8a:                                     ; preds = %block_487e71
  %loadMem_487e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 33
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4418 to i64*
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 15
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %4421 to i64*
  %4422 = load i64, i64* %RBP.i281
  %4423 = sub i64 %4422, 32
  %4424 = load i64, i64* %PC.i280
  %4425 = add i64 %4424, 4
  store i64 %4425, i64* %PC.i280
  %4426 = inttoptr i64 %4423 to i32*
  %4427 = load i32, i32* %4426
  %4428 = sub i32 %4427, 2
  %4429 = icmp ult i32 %4427, 2
  %4430 = zext i1 %4429 to i8
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4430, i8* %4431, align 1
  %4432 = and i32 %4428, 255
  %4433 = call i32 @llvm.ctpop.i32(i32 %4432)
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4436, i8* %4437, align 1
  %4438 = xor i32 %4427, 2
  %4439 = xor i32 %4438, %4428
  %4440 = lshr i32 %4439, 4
  %4441 = trunc i32 %4440 to i8
  %4442 = and i8 %4441, 1
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4442, i8* %4443, align 1
  %4444 = icmp eq i32 %4428, 0
  %4445 = zext i1 %4444 to i8
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4445, i8* %4446, align 1
  %4447 = lshr i32 %4428, 31
  %4448 = trunc i32 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4448, i8* %4449, align 1
  %4450 = lshr i32 %4427, 31
  %4451 = xor i32 %4447, %4450
  %4452 = add i32 %4451, %4450
  %4453 = icmp eq i32 %4452, 2
  %4454 = zext i1 %4453 to i8
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4454, i8* %4455, align 1
  store %struct.Memory* %loadMem_487e8a, %struct.Memory** %MEMORY
  %loadMem_487e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 33
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %PC.i279
  %4460 = add i64 %4459, 26
  %4461 = load i64, i64* %PC.i279
  %4462 = add i64 %4461, 6
  %4463 = load i64, i64* %PC.i279
  %4464 = add i64 %4463, 6
  store i64 %4464, i64* %PC.i279
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4466 = load i8, i8* %4465, align 1
  %4467 = icmp eq i8 %4466, 0
  %4468 = zext i1 %4467 to i8
  store i8 %4468, i8* %BRANCH_TAKEN, align 1
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4470 = select i1 %4467, i64 %4460, i64 %4462
  store i64 %4470, i64* %4469, align 8
  store %struct.Memory* %loadMem_487e8e, %struct.Memory** %MEMORY
  %loadBr_487e8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e8e = icmp eq i8 %loadBr_487e8e, 1
  br i1 %cmpBr_487e8e, label %block_.L_487ea8, label %block_.L_487e94

block_.L_487e94:                                  ; preds = %block_487e8a, %block_487e71
  %loadMem_487e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 11
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RDI.i277 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 15
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %RBP.i278
  %4481 = sub i64 %4480, 4
  %4482 = load i64, i64* %PC.i276
  %4483 = add i64 %4482, 3
  store i64 %4483, i64* %PC.i276
  %4484 = inttoptr i64 %4481 to i32*
  %4485 = load i32, i32* %4484
  %4486 = zext i32 %4485 to i64
  store i64 %4486, i64* %RDI.i277, align 8
  store %struct.Memory* %loadMem_487e94, %struct.Memory** %MEMORY
  %loadMem_487e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 9
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RSI.i274 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 15
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %4495 to i64*
  %4496 = load i64, i64* %RBP.i275
  %4497 = sub i64 %4496, 4
  %4498 = load i64, i64* %PC.i273
  %4499 = add i64 %4498, 3
  store i64 %4499, i64* %PC.i273
  %4500 = inttoptr i64 %4497 to i32*
  %4501 = load i32, i32* %4500
  %4502 = zext i32 %4501 to i64
  store i64 %4502, i64* %RSI.i274, align 8
  store %struct.Memory* %loadMem_487e97, %struct.Memory** %MEMORY
  %loadMem1_487e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4505 to i64*
  %4506 = load i64, i64* %PC.i272
  %4507 = add i64 %4506, 598
  %4508 = load i64, i64* %PC.i272
  %4509 = add i64 %4508, 5
  %4510 = load i64, i64* %PC.i272
  %4511 = add i64 %4510, 5
  store i64 %4511, i64* %PC.i272
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4513 = load i64, i64* %4512, align 8
  %4514 = add i64 %4513, -8
  %4515 = inttoptr i64 %4514 to i64*
  store i64 %4509, i64* %4515
  store i64 %4514, i64* %4512, align 8
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4507, i64* %4516, align 8
  store %struct.Memory* %loadMem1_487e9a, %struct.Memory** %MEMORY
  %loadMem2_487e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e9a = load i64, i64* %3
  %call2_487e9a = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64 %loadPC_487e9a, %struct.Memory* %loadMem2_487e9a)
  store %struct.Memory* %call2_487e9a, %struct.Memory** %MEMORY
  %loadMem_487e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 33
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 1
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %EAX.i271 = bitcast %union.anon* %4522 to i32*
  %4523 = load i32, i32* %EAX.i271
  %4524 = zext i32 %4523 to i64
  %4525 = load i64, i64* %PC.i270
  %4526 = add i64 %4525, 3
  store i64 %4526, i64* %PC.i270
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4527, align 1
  %4528 = and i32 %4523, 255
  %4529 = call i32 @llvm.ctpop.i32(i32 %4528)
  %4530 = trunc i32 %4529 to i8
  %4531 = and i8 %4530, 1
  %4532 = xor i8 %4531, 1
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4532, i8* %4533, align 1
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4534, align 1
  %4535 = icmp eq i32 %4523, 0
  %4536 = zext i1 %4535 to i8
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4536, i8* %4537, align 1
  %4538 = lshr i32 %4523, 31
  %4539 = trunc i32 %4538 to i8
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4539, i8* %4540, align 1
  %4541 = lshr i32 %4523, 31
  %4542 = xor i32 %4538, %4541
  %4543 = add i32 %4542, %4541
  %4544 = icmp eq i32 %4543, 2
  %4545 = zext i1 %4544 to i8
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4545, i8* %4546, align 1
  store %struct.Memory* %loadMem_487e9f, %struct.Memory** %MEMORY
  %loadMem_487ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 33
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %PC.i269
  %4551 = add i64 %4550, 11
  %4552 = load i64, i64* %PC.i269
  %4553 = add i64 %4552, 6
  %4554 = load i64, i64* %PC.i269
  %4555 = add i64 %4554, 6
  store i64 %4555, i64* %PC.i269
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4557 = load i8, i8* %4556, align 1
  %4558 = icmp eq i8 %4557, 0
  %4559 = zext i1 %4558 to i8
  store i8 %4559, i8* %BRANCH_TAKEN, align 1
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4561 = select i1 %4558, i64 %4551, i64 %4553
  store i64 %4561, i64* %4560, align 8
  store %struct.Memory* %loadMem_487ea2, %struct.Memory** %MEMORY
  %loadBr_487ea2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487ea2 = icmp eq i8 %loadBr_487ea2, 1
  br i1 %cmpBr_487ea2, label %block_.L_487ead, label %block_.L_487ea8

block_.L_487ea8:                                  ; preds = %block_.L_487e94, %block_487e8a
  %loadMem_487ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 33
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4564 to i64*
  %4565 = load i64, i64* %PC.i268
  %4566 = add i64 %4565, 493
  %4567 = load i64, i64* %PC.i268
  %4568 = add i64 %4567, 5
  store i64 %4568, i64* %PC.i268
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4566, i64* %4569, align 8
  store %struct.Memory* %loadMem_487ea8, %struct.Memory** %MEMORY
  br label %block_.L_488095

block_.L_487ead:                                  ; preds = %block_.L_487e94
  %loadMem_487ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 33
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4572 to i64*
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 1
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %4575 to i64*
  %4576 = load i64, i64* %PC.i266
  %4577 = add i64 %4576, 10
  store i64 %4577, i64* %PC.i266
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_487ead, %struct.Memory** %MEMORY
  %loadMem_487eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 33
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %4580 to i64*
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 5
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %PC.i264
  %4585 = add i64 %4584, 5
  store i64 %4585, i64* %PC.i264
  store i64 3, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_487eb7, %struct.Memory** %MEMORY
  %loadMem_487ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 33
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4588 to i64*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 5
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %4591 to i64*
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 15
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %4594 to i64*
  %4595 = load i64, i64* %RCX.i262
  %4596 = load i64, i64* %RBP.i263
  %4597 = sub i64 %4596, 32
  %4598 = load i64, i64* %PC.i261
  %4599 = add i64 %4598, 3
  store i64 %4599, i64* %PC.i261
  %4600 = trunc i64 %4595 to i32
  %4601 = inttoptr i64 %4597 to i32*
  %4602 = load i32, i32* %4601
  %4603 = sub i32 %4600, %4602
  %4604 = zext i32 %4603 to i64
  store i64 %4604, i64* %RCX.i262, align 8
  %4605 = icmp ult i32 %4600, %4602
  %4606 = zext i1 %4605 to i8
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4606, i8* %4607, align 1
  %4608 = and i32 %4603, 255
  %4609 = call i32 @llvm.ctpop.i32(i32 %4608)
  %4610 = trunc i32 %4609 to i8
  %4611 = and i8 %4610, 1
  %4612 = xor i8 %4611, 1
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4612, i8* %4613, align 1
  %4614 = xor i32 %4602, %4600
  %4615 = xor i32 %4614, %4603
  %4616 = lshr i32 %4615, 4
  %4617 = trunc i32 %4616 to i8
  %4618 = and i8 %4617, 1
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4618, i8* %4619, align 1
  %4620 = icmp eq i32 %4603, 0
  %4621 = zext i1 %4620 to i8
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4621, i8* %4622, align 1
  %4623 = lshr i32 %4603, 31
  %4624 = trunc i32 %4623 to i8
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4624, i8* %4625, align 1
  %4626 = lshr i32 %4600, 31
  %4627 = lshr i32 %4602, 31
  %4628 = xor i32 %4627, %4626
  %4629 = xor i32 %4623, %4626
  %4630 = add i32 %4629, %4628
  %4631 = icmp eq i32 %4630, 2
  %4632 = zext i1 %4631 to i8
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4632, i8* %4633, align 1
  store %struct.Memory* %loadMem_487ebc, %struct.Memory** %MEMORY
  %loadMem_487ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 33
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 5
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %ECX.i259 = bitcast %union.anon* %4639 to i32*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 15
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %4642 to i64*
  %4643 = load i64, i64* %RBP.i260
  %4644 = sub i64 %4643, 36
  %4645 = load i32, i32* %ECX.i259
  %4646 = zext i32 %4645 to i64
  %4647 = load i64, i64* %PC.i258
  %4648 = add i64 %4647, 3
  store i64 %4648, i64* %PC.i258
  %4649 = inttoptr i64 %4644 to i32*
  store i32 %4645, i32* %4649
  store %struct.Memory* %loadMem_487ebf, %struct.Memory** %MEMORY
  %loadMem_487ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 33
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 7
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %4655 to i64*
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 15
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %4658 to i64*
  %4659 = load i64, i64* %RBP.i257
  %4660 = sub i64 %4659, 4
  %4661 = load i64, i64* %PC.i255
  %4662 = add i64 %4661, 4
  store i64 %4662, i64* %PC.i255
  %4663 = inttoptr i64 %4660 to i32*
  %4664 = load i32, i32* %4663
  %4665 = sext i32 %4664 to i64
  store i64 %4665, i64* %RDX.i256, align 8
  store %struct.Memory* %loadMem_487ec2, %struct.Memory** %MEMORY
  %loadMem_487ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 33
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 7
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %4671 to i64*
  %4672 = load i64, i64* %RDX.i254
  %4673 = load i64, i64* %PC.i253
  %4674 = add i64 %4673, 7
  store i64 %4674, i64* %PC.i253
  %4675 = sext i64 %4672 to i128
  %4676 = and i128 %4675, -18446744073709551616
  %4677 = zext i64 %4672 to i128
  %4678 = or i128 %4676, %4677
  %4679 = mul i128 380, %4678
  %4680 = trunc i128 %4679 to i64
  store i64 %4680, i64* %RDX.i254, align 8
  %4681 = sext i64 %4680 to i128
  %4682 = icmp ne i128 %4681, %4679
  %4683 = zext i1 %4682 to i8
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4683, i8* %4684, align 1
  %4685 = trunc i128 %4679 to i32
  %4686 = and i32 %4685, 255
  %4687 = call i32 @llvm.ctpop.i32(i32 %4686)
  %4688 = trunc i32 %4687 to i8
  %4689 = and i8 %4688, 1
  %4690 = xor i8 %4689, 1
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4690, i8* %4691, align 1
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4692, align 1
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4693, align 1
  %4694 = lshr i64 %4680, 63
  %4695 = trunc i64 %4694 to i8
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4695, i8* %4696, align 1
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4683, i8* %4697, align 1
  store %struct.Memory* %loadMem_487ec6, %struct.Memory** %MEMORY
  %loadMem_487ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 1
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 7
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RDX.i252 = bitcast %union.anon* %4706 to i64*
  %4707 = load i64, i64* %RAX.i251
  %4708 = load i64, i64* %RDX.i252
  %4709 = load i64, i64* %PC.i250
  %4710 = add i64 %4709, 3
  store i64 %4710, i64* %PC.i250
  %4711 = add i64 %4708, %4707
  store i64 %4711, i64* %RAX.i251, align 8
  %4712 = icmp ult i64 %4711, %4707
  %4713 = icmp ult i64 %4711, %4708
  %4714 = or i1 %4712, %4713
  %4715 = zext i1 %4714 to i8
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4715, i8* %4716, align 1
  %4717 = trunc i64 %4711 to i32
  %4718 = and i32 %4717, 255
  %4719 = call i32 @llvm.ctpop.i32(i32 %4718)
  %4720 = trunc i32 %4719 to i8
  %4721 = and i8 %4720, 1
  %4722 = xor i8 %4721, 1
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4722, i8* %4723, align 1
  %4724 = xor i64 %4708, %4707
  %4725 = xor i64 %4724, %4711
  %4726 = lshr i64 %4725, 4
  %4727 = trunc i64 %4726 to i8
  %4728 = and i8 %4727, 1
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4728, i8* %4729, align 1
  %4730 = icmp eq i64 %4711, 0
  %4731 = zext i1 %4730 to i8
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4731, i8* %4732, align 1
  %4733 = lshr i64 %4711, 63
  %4734 = trunc i64 %4733 to i8
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4734, i8* %4735, align 1
  %4736 = lshr i64 %4707, 63
  %4737 = lshr i64 %4708, 63
  %4738 = xor i64 %4733, %4736
  %4739 = xor i64 %4733, %4737
  %4740 = add i64 %4738, %4739
  %4741 = icmp eq i64 %4740, 2
  %4742 = zext i1 %4741 to i8
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4742, i8* %4743, align 1
  store %struct.Memory* %loadMem_487ecd, %struct.Memory** %MEMORY
  %loadMem_487ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 33
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 1
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %4749 to i64*
  %4750 = load i64, i64* %RAX.i249
  %4751 = add i64 %4750, 100
  %4752 = load i64, i64* %PC.i248
  %4753 = add i64 %4752, 4
  store i64 %4753, i64* %PC.i248
  %4754 = inttoptr i64 %4751 to i32*
  %4755 = load i32, i32* %4754
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4756, align 1
  %4757 = and i32 %4755, 255
  %4758 = call i32 @llvm.ctpop.i32(i32 %4757)
  %4759 = trunc i32 %4758 to i8
  %4760 = and i8 %4759, 1
  %4761 = xor i8 %4760, 1
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4761, i8* %4762, align 1
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4763, align 1
  %4764 = icmp eq i32 %4755, 0
  %4765 = zext i1 %4764 to i8
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4765, i8* %4766, align 1
  %4767 = lshr i32 %4755, 31
  %4768 = trunc i32 %4767 to i8
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4768, i8* %4769, align 1
  %4770 = lshr i32 %4755, 31
  %4771 = xor i32 %4767, %4770
  %4772 = add i32 %4771, %4770
  %4773 = icmp eq i32 %4772, 2
  %4774 = zext i1 %4773 to i8
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4774, i8* %4775, align 1
  store %struct.Memory* %loadMem_487ed0, %struct.Memory** %MEMORY
  %loadMem_487ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 33
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4778 to i64*
  %4779 = load i64, i64* %PC.i247
  %4780 = add i64 %4779, 11
  %4781 = load i64, i64* %PC.i247
  %4782 = add i64 %4781, 6
  %4783 = load i64, i64* %PC.i247
  %4784 = add i64 %4783, 6
  store i64 %4784, i64* %PC.i247
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4786 = load i8, i8* %4785, align 1
  %4787 = icmp eq i8 %4786, 0
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %BRANCH_TAKEN, align 1
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4790 = select i1 %4787, i64 %4780, i64 %4782
  store i64 %4790, i64* %4789, align 8
  store %struct.Memory* %loadMem_487ed4, %struct.Memory** %MEMORY
  %loadBr_487ed4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487ed4 = icmp eq i8 %loadBr_487ed4, 1
  br i1 %cmpBr_487ed4, label %block_.L_487edf, label %block_487eda

block_487eda:                                     ; preds = %block_.L_487ead
  %loadMem_487eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 33
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %4793 to i64*
  %4794 = load i64, i64* %PC.i246
  %4795 = add i64 %4794, 443
  %4796 = load i64, i64* %PC.i246
  %4797 = add i64 %4796, 5
  store i64 %4797, i64* %PC.i246
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4795, i64* %4798, align 8
  store %struct.Memory* %loadMem_487eda, %struct.Memory** %MEMORY
  br label %block_.L_488095

block_.L_487edf:                                  ; preds = %block_.L_487ead
  %loadMem_487edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 9
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %4804 to i64*
  %4805 = load i64, i64* %PC.i244
  %4806 = add i64 %4805, 5
  store i64 %4806, i64* %PC.i244
  store i64 241, i64* %RSI.i245, align 8
  store %struct.Memory* %loadMem_487edf, %struct.Memory** %MEMORY
  %loadMem_487ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4809 to i64*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 7
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %4812 to i64*
  %4813 = load i64, i64* %PC.i242
  %4814 = add i64 %4813, 10
  store i64 %4814, i64* %PC.i242
  store i64 ptrtoint (%G__0xae4250_type* @G__0xae4250 to i64), i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_487ee4, %struct.Memory** %MEMORY
  %loadMem_487eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 11
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RDI.i240 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 15
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %RBP.i241
  %4825 = sub i64 %4824, 4
  %4826 = load i64, i64* %PC.i239
  %4827 = add i64 %4826, 3
  store i64 %4827, i64* %PC.i239
  %4828 = inttoptr i64 %4825 to i32*
  %4829 = load i32, i32* %4828
  %4830 = zext i32 %4829 to i64
  store i64 %4830, i64* %RDI.i240, align 8
  store %struct.Memory* %loadMem_487eee, %struct.Memory** %MEMORY
  %loadMem1_487ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 33
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4833 to i64*
  %4834 = load i64, i64* %PC.i238
  %4835 = add i64 %4834, -493233
  %4836 = load i64, i64* %PC.i238
  %4837 = add i64 %4836, 5
  %4838 = load i64, i64* %PC.i238
  %4839 = add i64 %4838, 5
  store i64 %4839, i64* %PC.i238
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4841 = load i64, i64* %4840, align 8
  %4842 = add i64 %4841, -8
  %4843 = inttoptr i64 %4842 to i64*
  store i64 %4837, i64* %4843
  store i64 %4842, i64* %4840, align 8
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4835, i64* %4844, align 8
  store %struct.Memory* %loadMem1_487ef1, %struct.Memory** %MEMORY
  %loadMem2_487ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487ef1 = load i64, i64* %3
  %call2_487ef1 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_487ef1, %struct.Memory* %loadMem2_487ef1)
  store %struct.Memory* %call2_487ef1, %struct.Memory** %MEMORY
  %loadMem_487ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 1
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %4850 to i32*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 15
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %4853 to i64*
  %4854 = load i64, i64* %RBP.i237
  %4855 = sub i64 %4854, 28
  %4856 = load i32, i32* %EAX.i236
  %4857 = zext i32 %4856 to i64
  %4858 = load i64, i64* %PC.i235
  %4859 = add i64 %4858, 3
  store i64 %4859, i64* %PC.i235
  %4860 = inttoptr i64 %4855 to i32*
  store i32 %4856, i32* %4860
  store %struct.Memory* %loadMem_487ef6, %struct.Memory** %MEMORY
  %loadMem_487ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 15
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RBP.i234
  %4868 = sub i64 %4867, 8
  %4869 = load i64, i64* %PC.i233
  %4870 = add i64 %4869, 7
  store i64 %4870, i64* %PC.i233
  %4871 = inttoptr i64 %4868 to i32*
  store i32 0, i32* %4871
  store %struct.Memory* %loadMem_487ef9, %struct.Memory** %MEMORY
  br label %block_.L_487f00

block_.L_487f00:                                  ; preds = %block_.L_488082, %block_.L_487edf
  %loadMem_487f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 1
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %4877 to i64*
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 15
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %4880 to i64*
  %4881 = load i64, i64* %RBP.i232
  %4882 = sub i64 %4881, 8
  %4883 = load i64, i64* %PC.i230
  %4884 = add i64 %4883, 3
  store i64 %4884, i64* %PC.i230
  %4885 = inttoptr i64 %4882 to i32*
  %4886 = load i32, i32* %4885
  %4887 = zext i32 %4886 to i64
  store i64 %4887, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_487f00, %struct.Memory** %MEMORY
  %loadMem_487f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 1
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %4893 to i32*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 15
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %4896 to i64*
  %4897 = load i32, i32* %EAX.i228
  %4898 = zext i32 %4897 to i64
  %4899 = load i64, i64* %RBP.i229
  %4900 = sub i64 %4899, 28
  %4901 = load i64, i64* %PC.i227
  %4902 = add i64 %4901, 3
  store i64 %4902, i64* %PC.i227
  %4903 = inttoptr i64 %4900 to i32*
  %4904 = load i32, i32* %4903
  %4905 = sub i32 %4897, %4904
  %4906 = icmp ult i32 %4897, %4904
  %4907 = zext i1 %4906 to i8
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4907, i8* %4908, align 1
  %4909 = and i32 %4905, 255
  %4910 = call i32 @llvm.ctpop.i32(i32 %4909)
  %4911 = trunc i32 %4910 to i8
  %4912 = and i8 %4911, 1
  %4913 = xor i8 %4912, 1
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4913, i8* %4914, align 1
  %4915 = xor i32 %4904, %4897
  %4916 = xor i32 %4915, %4905
  %4917 = lshr i32 %4916, 4
  %4918 = trunc i32 %4917 to i8
  %4919 = and i8 %4918, 1
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4919, i8* %4920, align 1
  %4921 = icmp eq i32 %4905, 0
  %4922 = zext i1 %4921 to i8
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4922, i8* %4923, align 1
  %4924 = lshr i32 %4905, 31
  %4925 = trunc i32 %4924 to i8
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4925, i8* %4926, align 1
  %4927 = lshr i32 %4897, 31
  %4928 = lshr i32 %4904, 31
  %4929 = xor i32 %4928, %4927
  %4930 = xor i32 %4924, %4927
  %4931 = add i32 %4930, %4929
  %4932 = icmp eq i32 %4931, 2
  %4933 = zext i1 %4932 to i8
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4933, i8* %4934, align 1
  store %struct.Memory* %loadMem_487f03, %struct.Memory** %MEMORY
  %loadMem_487f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 33
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %PC.i226
  %4939 = add i64 %4938, 394
  %4940 = load i64, i64* %PC.i226
  %4941 = add i64 %4940, 6
  %4942 = load i64, i64* %PC.i226
  %4943 = add i64 %4942, 6
  store i64 %4943, i64* %PC.i226
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4945 = load i8, i8* %4944, align 1
  %4946 = icmp ne i8 %4945, 0
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4948 = load i8, i8* %4947, align 1
  %4949 = icmp ne i8 %4948, 0
  %4950 = xor i1 %4946, %4949
  %4951 = xor i1 %4950, true
  %4952 = zext i1 %4951 to i8
  store i8 %4952, i8* %BRANCH_TAKEN, align 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4954 = select i1 %4950, i64 %4941, i64 %4939
  store i64 %4954, i64* %4953, align 8
  store %struct.Memory* %loadMem_487f06, %struct.Memory** %MEMORY
  %loadBr_487f06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f06 = icmp eq i8 %loadBr_487f06, 1
  br i1 %cmpBr_487f06, label %block_.L_488090, label %block_487f0c

block_487f0c:                                     ; preds = %block_.L_487f00
  %loadMem_487f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 33
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4957 to i64*
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4959 = getelementptr inbounds %struct.GPR, %struct.GPR* %4958, i32 0, i32 1
  %4960 = getelementptr inbounds %struct.Reg, %struct.Reg* %4959, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %4960 to i64*
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 15
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %4963 to i64*
  %4964 = load i64, i64* %RBP.i225
  %4965 = sub i64 %4964, 8
  %4966 = load i64, i64* %PC.i223
  %4967 = add i64 %4966, 4
  store i64 %4967, i64* %PC.i223
  %4968 = inttoptr i64 %4965 to i32*
  %4969 = load i32, i32* %4968
  %4970 = sext i32 %4969 to i64
  store i64 %4970, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_487f0c, %struct.Memory** %MEMORY
  %loadMem_487f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 33
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4973 to i64*
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 1
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 5
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %RAX.i221
  %4981 = mul i64 %4980, 4
  %4982 = add i64 %4981, 11420240
  %4983 = load i64, i64* %PC.i220
  %4984 = add i64 %4983, 7
  store i64 %4984, i64* %PC.i220
  %4985 = inttoptr i64 %4982 to i32*
  %4986 = load i32, i32* %4985
  %4987 = zext i32 %4986 to i64
  store i64 %4987, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_487f10, %struct.Memory** %MEMORY
  %loadMem_487f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 5
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %ECX.i218 = bitcast %union.anon* %4993 to i32*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 15
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %RBP.i219
  %4998 = sub i64 %4997, 44
  %4999 = load i32, i32* %ECX.i218
  %5000 = zext i32 %4999 to i64
  %5001 = load i64, i64* %PC.i217
  %5002 = add i64 %5001, 3
  store i64 %5002, i64* %PC.i217
  %5003 = inttoptr i64 %4998 to i32*
  store i32 %4999, i32* %5003
  store %struct.Memory* %loadMem_487f17, %struct.Memory** %MEMORY
  %loadMem_487f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 11
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RDI.i215 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 15
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %RBP.i216
  %5014 = sub i64 %5013, 44
  %5015 = load i64, i64* %PC.i214
  %5016 = add i64 %5015, 3
  store i64 %5016, i64* %PC.i214
  %5017 = inttoptr i64 %5014 to i32*
  %5018 = load i32, i32* %5017
  %5019 = zext i32 %5018 to i64
  store i64 %5019, i64* %RDI.i215, align 8
  store %struct.Memory* %loadMem_487f1a, %struct.Memory** %MEMORY
  %loadMem_487f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 33
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5022 to i64*
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 9
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %RSI.i212 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 15
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %5028 to i64*
  %5029 = load i64, i64* %RBP.i213
  %5030 = sub i64 %5029, 4
  %5031 = load i64, i64* %PC.i211
  %5032 = add i64 %5031, 3
  store i64 %5032, i64* %PC.i211
  %5033 = inttoptr i64 %5030 to i32*
  %5034 = load i32, i32* %5033
  %5035 = zext i32 %5034 to i64
  store i64 %5035, i64* %RSI.i212, align 8
  store %struct.Memory* %loadMem_487f1d, %struct.Memory** %MEMORY
  %loadMem1_487f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 33
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5038 to i64*
  %5039 = load i64, i64* %PC.i210
  %5040 = add i64 %5039, 6688
  %5041 = load i64, i64* %PC.i210
  %5042 = add i64 %5041, 5
  %5043 = load i64, i64* %PC.i210
  %5044 = add i64 %5043, 5
  store i64 %5044, i64* %PC.i210
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5046 = load i64, i64* %5045, align 8
  %5047 = add i64 %5046, -8
  %5048 = inttoptr i64 %5047 to i64*
  store i64 %5042, i64* %5048
  store i64 %5047, i64* %5045, align 8
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5040, i64* %5049, align 8
  store %struct.Memory* %loadMem1_487f20, %struct.Memory** %MEMORY
  %loadMem2_487f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487f20 = load i64, i64* %3
  %call2_487f20 = call %struct.Memory* @sub_489940.attack_move_known(%struct.State* %0, i64 %loadPC_487f20, %struct.Memory* %loadMem2_487f20)
  store %struct.Memory* %call2_487f20, %struct.Memory** %MEMORY
  %loadMem_487f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 33
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5052 to i64*
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 1
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %5055 to i32*
  %5056 = load i32, i32* %EAX.i209
  %5057 = zext i32 %5056 to i64
  %5058 = load i64, i64* %PC.i208
  %5059 = add i64 %5058, 3
  store i64 %5059, i64* %PC.i208
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5060, align 1
  %5061 = and i32 %5056, 255
  %5062 = call i32 @llvm.ctpop.i32(i32 %5061)
  %5063 = trunc i32 %5062 to i8
  %5064 = and i8 %5063, 1
  %5065 = xor i8 %5064, 1
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5065, i8* %5066, align 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5067, align 1
  %5068 = icmp eq i32 %5056, 0
  %5069 = zext i1 %5068 to i8
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5069, i8* %5070, align 1
  %5071 = lshr i32 %5056, 31
  %5072 = trunc i32 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5072, i8* %5073, align 1
  %5074 = lshr i32 %5056, 31
  %5075 = xor i32 %5071, %5074
  %5076 = add i32 %5075, %5074
  %5077 = icmp eq i32 %5076, 2
  %5078 = zext i1 %5077 to i8
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5078, i8* %5079, align 1
  store %struct.Memory* %loadMem_487f25, %struct.Memory** %MEMORY
  %loadMem_487f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %PC.i207
  %5084 = add i64 %5083, 183
  %5085 = load i64, i64* %PC.i207
  %5086 = add i64 %5085, 6
  %5087 = load i64, i64* %PC.i207
  %5088 = add i64 %5087, 6
  store i64 %5088, i64* %PC.i207
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5090 = load i8, i8* %5089, align 1
  %5091 = icmp eq i8 %5090, 0
  %5092 = zext i1 %5091 to i8
  store i8 %5092, i8* %BRANCH_TAKEN, align 1
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5094 = select i1 %5091, i64 %5084, i64 %5086
  store i64 %5094, i64* %5093, align 8
  store %struct.Memory* %loadMem_487f28, %struct.Memory** %MEMORY
  %loadBr_487f28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f28 = icmp eq i8 %loadBr_487f28, 1
  br i1 %cmpBr_487f28, label %block_.L_487fdf, label %block_487f2e

block_487f2e:                                     ; preds = %block_487f0c
  %loadMem_487f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 33
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5097 to i64*
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 7
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %5100 to i64*
  %5101 = load i64, i64* %PC.i205
  %5102 = add i64 %5101, 10
  store i64 %5102, i64* %PC.i205
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i206, align 8
  store %struct.Memory* %loadMem_487f2e, %struct.Memory** %MEMORY
  %loadMem_487f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5105 to i64*
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 1
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %5108 to i32*
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 1
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %5111 to i64*
  %5112 = load i64, i64* %RAX.i204
  %5113 = load i32, i32* %EAX.i203
  %5114 = zext i32 %5113 to i64
  %5115 = load i64, i64* %PC.i202
  %5116 = add i64 %5115, 2
  store i64 %5116, i64* %PC.i202
  %5117 = xor i64 %5114, %5112
  %5118 = trunc i64 %5117 to i32
  %5119 = and i64 %5117, 4294967295
  store i64 %5119, i64* %RAX.i204, align 8
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5120, align 1
  %5121 = and i32 %5118, 255
  %5122 = call i32 @llvm.ctpop.i32(i32 %5121)
  %5123 = trunc i32 %5122 to i8
  %5124 = and i8 %5123, 1
  %5125 = xor i8 %5124, 1
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5125, i8* %5126, align 1
  %5127 = icmp eq i32 %5118, 0
  %5128 = zext i1 %5127 to i8
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5128, i8* %5129, align 1
  %5130 = lshr i32 %5118, 31
  %5131 = trunc i32 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5131, i8* %5132, align 1
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5133, align 1
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5134, align 1
  store %struct.Memory* %loadMem_487f38, %struct.Memory** %MEMORY
  %loadMem_487f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 33
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %5137 to i64*
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5139 = getelementptr inbounds %struct.GPR, %struct.GPR* %5138, i32 0, i32 11
  %5140 = getelementptr inbounds %struct.Reg, %struct.Reg* %5139, i32 0, i32 0
  %RDI.i200 = bitcast %union.anon* %5140 to i64*
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 15
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %5143 to i64*
  %5144 = load i64, i64* %RBP.i201
  %5145 = sub i64 %5144, 44
  %5146 = load i64, i64* %PC.i199
  %5147 = add i64 %5146, 3
  store i64 %5147, i64* %PC.i199
  %5148 = inttoptr i64 %5145 to i32*
  %5149 = load i32, i32* %5148
  %5150 = zext i32 %5149 to i64
  store i64 %5150, i64* %RDI.i200, align 8
  store %struct.Memory* %loadMem_487f3a, %struct.Memory** %MEMORY
  %loadMem_487f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 9
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RSI.i197 = bitcast %union.anon* %5156 to i64*
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 15
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %5159 to i64*
  %5160 = load i64, i64* %RBP.i198
  %5161 = sub i64 %5160, 36
  %5162 = load i64, i64* %PC.i196
  %5163 = add i64 %5162, 3
  store i64 %5163, i64* %PC.i196
  %5164 = inttoptr i64 %5161 to i32*
  %5165 = load i32, i32* %5164
  %5166 = zext i32 %5165 to i64
  store i64 %5166, i64* %RSI.i197, align 8
  store %struct.Memory* %loadMem_487f3d, %struct.Memory** %MEMORY
  %loadMem_487f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 33
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5169 to i64*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 5
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 15
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %5175 to i64*
  %5176 = load i64, i64* %RBP.i195
  %5177 = sub i64 %5176, 4
  %5178 = load i64, i64* %PC.i193
  %5179 = add i64 %5178, 3
  store i64 %5179, i64* %PC.i193
  %5180 = inttoptr i64 %5177 to i32*
  %5181 = load i32, i32* %5180
  %5182 = zext i32 %5181 to i64
  store i64 %5182, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_487f40, %struct.Memory** %MEMORY
  %loadMem_487f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 33
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5185 to i64*
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 1
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %5188 to i32*
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 17
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %R8D.i192 = bitcast %union.anon* %5191 to i32*
  %5192 = bitcast i32* %R8D.i192 to i64*
  %5193 = load i32, i32* %EAX.i191
  %5194 = zext i32 %5193 to i64
  %5195 = load i64, i64* %PC.i190
  %5196 = add i64 %5195, 3
  store i64 %5196, i64* %PC.i190
  %5197 = and i64 %5194, 4294967295
  store i64 %5197, i64* %5192, align 8
  store %struct.Memory* %loadMem_487f43, %struct.Memory** %MEMORY
  %loadMem_487f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 33
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5200 to i64*
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 1
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %EAX.i188 = bitcast %union.anon* %5203 to i32*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 19
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %R9D.i189 = bitcast %union.anon* %5206 to i32*
  %5207 = bitcast i32* %R9D.i189 to i64*
  %5208 = load i32, i32* %EAX.i188
  %5209 = zext i32 %5208 to i64
  %5210 = load i64, i64* %PC.i187
  %5211 = add i64 %5210, 3
  store i64 %5211, i64* %PC.i187
  %5212 = and i64 %5209, 4294967295
  store i64 %5212, i64* %5207, align 8
  store %struct.Memory* %loadMem_487f46, %struct.Memory** %MEMORY
  %loadMem1_487f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 33
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %5215 to i64*
  %5216 = load i64, i64* %PC.i186
  %5217 = add i64 %5216, -520473
  %5218 = load i64, i64* %PC.i186
  %5219 = add i64 %5218, 5
  %5220 = load i64, i64* %PC.i186
  %5221 = add i64 %5220, 5
  store i64 %5221, i64* %PC.i186
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5223 = load i64, i64* %5222, align 8
  %5224 = add i64 %5223, -8
  %5225 = inttoptr i64 %5224 to i64*
  store i64 %5219, i64* %5225
  store i64 %5224, i64* %5222, align 8
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5217, i64* %5226, align 8
  store %struct.Memory* %loadMem1_487f49, %struct.Memory** %MEMORY
  %loadMem2_487f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487f49 = load i64, i64* %3
  %call2_487f49 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_487f49, %struct.Memory* %loadMem2_487f49)
  store %struct.Memory* %call2_487f49, %struct.Memory** %MEMORY
  %loadMem_487f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 33
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5229 to i64*
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 1
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %5232 to i32*
  %5233 = load i32, i32* %EAX.i185
  %5234 = zext i32 %5233 to i64
  %5235 = load i64, i64* %PC.i184
  %5236 = add i64 %5235, 3
  store i64 %5236, i64* %PC.i184
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5237, align 1
  %5238 = and i32 %5233, 255
  %5239 = call i32 @llvm.ctpop.i32(i32 %5238)
  %5240 = trunc i32 %5239 to i8
  %5241 = and i8 %5240, 1
  %5242 = xor i8 %5241, 1
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5242, i8* %5243, align 1
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5244, align 1
  %5245 = icmp eq i32 %5233, 0
  %5246 = zext i1 %5245 to i8
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5246, i8* %5247, align 1
  %5248 = lshr i32 %5233, 31
  %5249 = trunc i32 %5248 to i8
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5249, i8* %5250, align 1
  %5251 = lshr i32 %5233, 31
  %5252 = xor i32 %5248, %5251
  %5253 = add i32 %5252, %5251
  %5254 = icmp eq i32 %5253, 2
  %5255 = zext i1 %5254 to i8
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5255, i8* %5256, align 1
  store %struct.Memory* %loadMem_487f4e, %struct.Memory** %MEMORY
  %loadMem_487f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 33
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5259 to i64*
  %5260 = load i64, i64* %PC.i183
  %5261 = add i64 %5260, 137
  %5262 = load i64, i64* %PC.i183
  %5263 = add i64 %5262, 6
  %5264 = load i64, i64* %PC.i183
  %5265 = add i64 %5264, 6
  store i64 %5265, i64* %PC.i183
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5267 = load i8, i8* %5266, align 1
  store i8 %5267, i8* %BRANCH_TAKEN, align 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5269 = icmp ne i8 %5267, 0
  %5270 = select i1 %5269, i64 %5261, i64 %5263
  store i64 %5270, i64* %5268, align 8
  store %struct.Memory* %loadMem_487f51, %struct.Memory** %MEMORY
  %loadBr_487f51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f51 = icmp eq i8 %loadBr_487f51, 1
  br i1 %cmpBr_487f51, label %block_.L_487fda, label %block_487f57

block_487f57:                                     ; preds = %block_487f2e
  %loadMem_487f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 33
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 1
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %5276 to i64*
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 15
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %RBP.i182
  %5281 = sub i64 %5280, 4
  %5282 = load i64, i64* %PC.i180
  %5283 = add i64 %5282, 4
  store i64 %5283, i64* %PC.i180
  %5284 = inttoptr i64 %5281 to i32*
  %5285 = load i32, i32* %5284
  %5286 = sext i32 %5285 to i64
  store i64 %5286, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_487f57, %struct.Memory** %MEMORY
  %loadMem_487f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 5
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %RAX.i178
  %5297 = add i64 %5296, 12099168
  %5298 = load i64, i64* %PC.i177
  %5299 = add i64 %5298, 8
  store i64 %5299, i64* %PC.i177
  %5300 = inttoptr i64 %5297 to i8*
  %5301 = load i8, i8* %5300
  %5302 = zext i8 %5301 to i64
  store i64 %5302, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_487f5b, %struct.Memory** %MEMORY
  %loadMem_487f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 33
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 5
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %ECX.i176 = bitcast %union.anon* %5308 to i32*
  %5309 = load i32, i32* %ECX.i176
  %5310 = zext i32 %5309 to i64
  %5311 = load i64, i64* %PC.i175
  %5312 = add i64 %5311, 3
  store i64 %5312, i64* %PC.i175
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5313, align 1
  %5314 = and i32 %5309, 255
  %5315 = call i32 @llvm.ctpop.i32(i32 %5314)
  %5316 = trunc i32 %5315 to i8
  %5317 = and i8 %5316, 1
  %5318 = xor i8 %5317, 1
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5318, i8* %5319, align 1
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5320, align 1
  %5321 = icmp eq i32 %5309, 0
  %5322 = zext i1 %5321 to i8
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5322, i8* %5323, align 1
  %5324 = lshr i32 %5309, 31
  %5325 = trunc i32 %5324 to i8
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5325, i8* %5326, align 1
  %5327 = lshr i32 %5309, 31
  %5328 = xor i32 %5324, %5327
  %5329 = add i32 %5328, %5327
  %5330 = icmp eq i32 %5329, 2
  %5331 = zext i1 %5330 to i8
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5331, i8* %5332, align 1
  store %struct.Memory* %loadMem_487f63, %struct.Memory** %MEMORY
  %loadMem_487f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 33
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %5335 to i64*
  %5336 = load i64, i64* %PC.i174
  %5337 = add i64 %5336, 27
  %5338 = load i64, i64* %PC.i174
  %5339 = add i64 %5338, 6
  %5340 = load i64, i64* %PC.i174
  %5341 = add i64 %5340, 6
  store i64 %5341, i64* %PC.i174
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5343 = load i8, i8* %5342, align 1
  store i8 %5343, i8* %BRANCH_TAKEN, align 1
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5345 = icmp ne i8 %5343, 0
  %5346 = select i1 %5345, i64 %5337, i64 %5339
  store i64 %5346, i64* %5344, align 8
  store %struct.Memory* %loadMem_487f66, %struct.Memory** %MEMORY
  %loadBr_487f66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f66 = icmp eq i8 %loadBr_487f66, 1
  br i1 %cmpBr_487f66, label %block_.L_487f81, label %block_487f6c

block_487f6c:                                     ; preds = %block_487f57
  %loadMem_487f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 33
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %5349 to i64*
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 1
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %5352 to i32*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 1
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %5355 to i64*
  %5356 = load i64, i64* %RAX.i173
  %5357 = load i32, i32* %EAX.i172
  %5358 = zext i32 %5357 to i64
  %5359 = load i64, i64* %PC.i171
  %5360 = add i64 %5359, 2
  store i64 %5360, i64* %PC.i171
  %5361 = xor i64 %5358, %5356
  %5362 = trunc i64 %5361 to i32
  %5363 = and i64 %5361, 4294967295
  store i64 %5363, i64* %RAX.i173, align 8
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5364, align 1
  %5365 = and i32 %5362, 255
  %5366 = call i32 @llvm.ctpop.i32(i32 %5365)
  %5367 = trunc i32 %5366 to i8
  %5368 = and i8 %5367, 1
  %5369 = xor i8 %5368, 1
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5369, i8* %5370, align 1
  %5371 = icmp eq i32 %5362, 0
  %5372 = zext i1 %5371 to i8
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5372, i8* %5373, align 1
  %5374 = lshr i32 %5362, 31
  %5375 = trunc i32 %5374 to i8
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5375, i8* %5376, align 1
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5377, align 1
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5378, align 1
  store %struct.Memory* %loadMem_487f6c, %struct.Memory** %MEMORY
  %loadMem_487f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 33
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5381 to i64*
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 1
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %EAX.i169 = bitcast %union.anon* %5384 to i32*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 9
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RSI.i170 = bitcast %union.anon* %5387 to i64*
  %5388 = load i32, i32* %EAX.i169
  %5389 = zext i32 %5388 to i64
  %5390 = load i64, i64* %PC.i168
  %5391 = add i64 %5390, 2
  store i64 %5391, i64* %PC.i168
  %5392 = and i64 %5389, 4294967295
  store i64 %5392, i64* %RSI.i170, align 8
  store %struct.Memory* %loadMem_487f6e, %struct.Memory** %MEMORY
  %loadMem_487f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 11
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RDI.i166 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 15
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %5401 to i64*
  %5402 = load i64, i64* %RBP.i167
  %5403 = sub i64 %5402, 4
  %5404 = load i64, i64* %PC.i165
  %5405 = add i64 %5404, 3
  store i64 %5405, i64* %PC.i165
  %5406 = inttoptr i64 %5403 to i32*
  %5407 = load i32, i32* %5406
  %5408 = zext i32 %5407 to i64
  store i64 %5408, i64* %RDI.i166, align 8
  store %struct.Memory* %loadMem_487f70, %struct.Memory** %MEMORY
  %loadMem1_487f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 33
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %5411 to i64*
  %5412 = load i64, i64* %PC.i164
  %5413 = add i64 %5412, -173107
  %5414 = load i64, i64* %PC.i164
  %5415 = add i64 %5414, 5
  %5416 = load i64, i64* %PC.i164
  %5417 = add i64 %5416, 5
  store i64 %5417, i64* %PC.i164
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5419 = load i64, i64* %5418, align 8
  %5420 = add i64 %5419, -8
  %5421 = inttoptr i64 %5420 to i64*
  store i64 %5415, i64* %5421
  store i64 %5420, i64* %5418, align 8
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5413, i64* %5422, align 8
  store %struct.Memory* %loadMem1_487f73, %struct.Memory** %MEMORY
  %loadMem2_487f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487f73 = load i64, i64* %3
  %call2_487f73 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_487f73, %struct.Memory* %loadMem2_487f73)
  store %struct.Memory* %call2_487f73, %struct.Memory** %MEMORY
  %loadMem_487f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 33
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 1
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %5428 to i32*
  %5429 = load i32, i32* %EAX.i163
  %5430 = zext i32 %5429 to i64
  %5431 = load i64, i64* %PC.i162
  %5432 = add i64 %5431, 3
  store i64 %5432, i64* %PC.i162
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5433, align 1
  %5434 = and i32 %5429, 255
  %5435 = call i32 @llvm.ctpop.i32(i32 %5434)
  %5436 = trunc i32 %5435 to i8
  %5437 = and i8 %5436, 1
  %5438 = xor i8 %5437, 1
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5438, i8* %5439, align 1
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5440, align 1
  %5441 = icmp eq i32 %5429, 0
  %5442 = zext i1 %5441 to i8
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5442, i8* %5443, align 1
  %5444 = lshr i32 %5429, 31
  %5445 = trunc i32 %5444 to i8
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5445, i8* %5446, align 1
  %5447 = lshr i32 %5429, 31
  %5448 = xor i32 %5444, %5447
  %5449 = add i32 %5448, %5447
  %5450 = icmp eq i32 %5449, 2
  %5451 = zext i1 %5450 to i8
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5451, i8* %5452, align 1
  store %struct.Memory* %loadMem_487f78, %struct.Memory** %MEMORY
  %loadMem_487f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 33
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %5455 to i64*
  %5456 = load i64, i64* %PC.i161
  %5457 = add i64 %5456, 90
  %5458 = load i64, i64* %PC.i161
  %5459 = add i64 %5458, 6
  %5460 = load i64, i64* %PC.i161
  %5461 = add i64 %5460, 6
  store i64 %5461, i64* %PC.i161
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5463 = load i8, i8* %5462, align 1
  store i8 %5463, i8* %BRANCH_TAKEN, align 1
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5465 = icmp ne i8 %5463, 0
  %5466 = select i1 %5465, i64 %5457, i64 %5459
  store i64 %5466, i64* %5464, align 8
  store %struct.Memory* %loadMem_487f7b, %struct.Memory** %MEMORY
  %loadBr_487f7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f7b = icmp eq i8 %loadBr_487f7b, 1
  br i1 %cmpBr_487f7b, label %block_.L_487fd5, label %block_.L_487f81

block_.L_487f81:                                  ; preds = %block_487f6c, %block_487f57
  %loadMem_487f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5468 = getelementptr inbounds %struct.GPR, %struct.GPR* %5467, i32 0, i32 33
  %5469 = getelementptr inbounds %struct.Reg, %struct.Reg* %5468, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5469 to i64*
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 1
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 15
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %5475 to i64*
  %5476 = load i64, i64* %RBP.i160
  %5477 = sub i64 %5476, 4
  %5478 = load i64, i64* %PC.i158
  %5479 = add i64 %5478, 4
  store i64 %5479, i64* %PC.i158
  %5480 = inttoptr i64 %5477 to i32*
  %5481 = load i32, i32* %5480
  %5482 = sext i32 %5481 to i64
  store i64 %5482, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_487f81, %struct.Memory** %MEMORY
  %loadMem_487f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 33
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %5485 to i64*
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5487 = getelementptr inbounds %struct.GPR, %struct.GPR* %5486, i32 0, i32 1
  %5488 = getelementptr inbounds %struct.Reg, %struct.Reg* %5487, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %5488 to i64*
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 5
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %5491 to i64*
  %5492 = load i64, i64* %RAX.i156
  %5493 = add i64 %5492, 12099168
  %5494 = load i64, i64* %PC.i155
  %5495 = add i64 %5494, 8
  store i64 %5495, i64* %PC.i155
  %5496 = inttoptr i64 %5493 to i8*
  %5497 = load i8, i8* %5496
  %5498 = zext i8 %5497 to i64
  store i64 %5498, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_487f85, %struct.Memory** %MEMORY
  %loadMem_487f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 5
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5504 to i32*
  %5505 = load i32, i32* %ECX.i
  %5506 = zext i32 %5505 to i64
  %5507 = load i64, i64* %PC.i154
  %5508 = add i64 %5507, 3
  store i64 %5508, i64* %PC.i154
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5509, align 1
  %5510 = and i32 %5505, 255
  %5511 = call i32 @llvm.ctpop.i32(i32 %5510)
  %5512 = trunc i32 %5511 to i8
  %5513 = and i8 %5512, 1
  %5514 = xor i8 %5513, 1
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5514, i8* %5515, align 1
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5516, align 1
  %5517 = icmp eq i32 %5505, 0
  %5518 = zext i1 %5517 to i8
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5518, i8* %5519, align 1
  %5520 = lshr i32 %5505, 31
  %5521 = trunc i32 %5520 to i8
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5521, i8* %5522, align 1
  %5523 = lshr i32 %5505, 31
  %5524 = xor i32 %5520, %5523
  %5525 = add i32 %5524, %5523
  %5526 = icmp eq i32 %5525, 2
  %5527 = zext i1 %5526 to i8
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5527, i8* %5528, align 1
  store %struct.Memory* %loadMem_487f8d, %struct.Memory** %MEMORY
  %loadMem_487f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 33
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5531 to i64*
  %5532 = load i64, i64* %PC.i153
  %5533 = add i64 %5532, 18
  %5534 = load i64, i64* %PC.i153
  %5535 = add i64 %5534, 6
  %5536 = load i64, i64* %PC.i153
  %5537 = add i64 %5536, 6
  store i64 %5537, i64* %PC.i153
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5539 = load i8, i8* %5538, align 1
  %5540 = icmp eq i8 %5539, 0
  %5541 = zext i1 %5540 to i8
  store i8 %5541, i8* %BRANCH_TAKEN, align 1
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5543 = select i1 %5540, i64 %5533, i64 %5535
  store i64 %5543, i64* %5542, align 8
  store %struct.Memory* %loadMem_487f90, %struct.Memory** %MEMORY
  %loadBr_487f90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f90 = icmp eq i8 %loadBr_487f90, 1
  br i1 %cmpBr_487f90, label %block_.L_487fa2, label %block_487f96

block_487f96:                                     ; preds = %block_.L_487f81
  %loadMem_487f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 33
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5546 to i64*
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 15
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %5549 to i64*
  %5550 = load i64, i64* %RBP.i152
  %5551 = sub i64 %5550, 16
  %5552 = load i64, i64* %PC.i151
  %5553 = add i64 %5552, 7
  store i64 %5553, i64* %PC.i151
  %5554 = inttoptr i64 %5551 to i32*
  store i32 0, i32* %5554
  store %struct.Memory* %loadMem_487f96, %struct.Memory** %MEMORY
  %loadMem_487f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %PC.i150
  %5559 = add i64 %5558, 20
  %5560 = load i64, i64* %PC.i150
  %5561 = add i64 %5560, 5
  store i64 %5561, i64* %PC.i150
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5559, i64* %5562, align 8
  store %struct.Memory* %loadMem_487f9d, %struct.Memory** %MEMORY
  br label %block_.L_487fb1

block_.L_487fa2:                                  ; preds = %block_.L_487f81
  %loadMem_487fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 33
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %5565 to i64*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 1
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %5568 to i32*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 1
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %5571 to i64*
  %5572 = load i64, i64* %RAX.i149
  %5573 = load i32, i32* %EAX.i148
  %5574 = zext i32 %5573 to i64
  %5575 = load i64, i64* %PC.i147
  %5576 = add i64 %5575, 2
  store i64 %5576, i64* %PC.i147
  %5577 = xor i64 %5574, %5572
  %5578 = trunc i64 %5577 to i32
  %5579 = and i64 %5577, 4294967295
  store i64 %5579, i64* %RAX.i149, align 8
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5580, align 1
  %5581 = and i32 %5578, 255
  %5582 = call i32 @llvm.ctpop.i32(i32 %5581)
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = xor i8 %5584, 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5585, i8* %5586, align 1
  %5587 = icmp eq i32 %5578, 0
  %5588 = zext i1 %5587 to i8
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5588, i8* %5589, align 1
  %5590 = lshr i32 %5578, 31
  %5591 = trunc i32 %5590 to i8
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5591, i8* %5592, align 1
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5593, align 1
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5594, align 1
  store %struct.Memory* %loadMem_487fa2, %struct.Memory** %MEMORY
  %loadMem_487fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 33
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %5597 to i64*
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 1
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %5600 to i32*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 9
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %RSI.i146 = bitcast %union.anon* %5603 to i64*
  %5604 = load i32, i32* %EAX.i145
  %5605 = zext i32 %5604 to i64
  %5606 = load i64, i64* %PC.i144
  %5607 = add i64 %5606, 2
  store i64 %5607, i64* %PC.i144
  %5608 = and i64 %5605, 4294967295
  store i64 %5608, i64* %RSI.i146, align 8
  store %struct.Memory* %loadMem_487fa4, %struct.Memory** %MEMORY
  %loadMem_487fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 33
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %5611 to i64*
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 11
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %RDI.i142 = bitcast %union.anon* %5614 to i64*
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 15
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %5617 to i64*
  %5618 = load i64, i64* %RBP.i143
  %5619 = sub i64 %5618, 4
  %5620 = load i64, i64* %PC.i141
  %5621 = add i64 %5620, 3
  store i64 %5621, i64* %PC.i141
  %5622 = inttoptr i64 %5619 to i32*
  %5623 = load i32, i32* %5622
  %5624 = zext i32 %5623 to i64
  store i64 %5624, i64* %RDI.i142, align 8
  store %struct.Memory* %loadMem_487fa6, %struct.Memory** %MEMORY
  %loadMem1_487fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 33
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5627 to i64*
  %5628 = load i64, i64* %PC.i140
  %5629 = add i64 %5628, -120873
  %5630 = load i64, i64* %PC.i140
  %5631 = add i64 %5630, 5
  %5632 = load i64, i64* %PC.i140
  %5633 = add i64 %5632, 5
  store i64 %5633, i64* %PC.i140
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5635 = load i64, i64* %5634, align 8
  %5636 = add i64 %5635, -8
  %5637 = inttoptr i64 %5636 to i64*
  store i64 %5631, i64* %5637
  store i64 %5636, i64* %5634, align 8
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5629, i64* %5638, align 8
  store %struct.Memory* %loadMem1_487fa9, %struct.Memory** %MEMORY
  %loadMem2_487fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fa9 = load i64, i64* %3
  %call2_487fa9 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64 %loadPC_487fa9, %struct.Memory* %loadMem2_487fa9)
  store %struct.Memory* %call2_487fa9, %struct.Memory** %MEMORY
  %loadMem_487fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 33
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %5641 to i64*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 1
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %5644 to i32*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 15
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RBP.i139
  %5649 = sub i64 %5648, 16
  %5650 = load i32, i32* %EAX.i138
  %5651 = zext i32 %5650 to i64
  %5652 = load i64, i64* %PC.i137
  %5653 = add i64 %5652, 3
  store i64 %5653, i64* %PC.i137
  %5654 = inttoptr i64 %5649 to i32*
  store i32 %5650, i32* %5654
  store %struct.Memory* %loadMem_487fae, %struct.Memory** %MEMORY
  br label %block_.L_487fb1

block_.L_487fb1:                                  ; preds = %block_.L_487fa2, %block_487f96
  %loadMem_487fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 15
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %5660 to i64*
  %5661 = load i64, i64* %RBP.i136
  %5662 = sub i64 %5661, 16
  %5663 = load i64, i64* %PC.i135
  %5664 = add i64 %5663, 4
  store i64 %5664, i64* %PC.i135
  %5665 = inttoptr i64 %5662 to i32*
  %5666 = load i32, i32* %5665
  %5667 = sub i32 %5666, 5
  %5668 = icmp ult i32 %5666, 5
  %5669 = zext i1 %5668 to i8
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5669, i8* %5670, align 1
  %5671 = and i32 %5667, 255
  %5672 = call i32 @llvm.ctpop.i32(i32 %5671)
  %5673 = trunc i32 %5672 to i8
  %5674 = and i8 %5673, 1
  %5675 = xor i8 %5674, 1
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5675, i8* %5676, align 1
  %5677 = xor i32 %5666, 5
  %5678 = xor i32 %5677, %5667
  %5679 = lshr i32 %5678, 4
  %5680 = trunc i32 %5679 to i8
  %5681 = and i8 %5680, 1
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5681, i8* %5682, align 1
  %5683 = icmp eq i32 %5667, 0
  %5684 = zext i1 %5683 to i8
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5684, i8* %5685, align 1
  %5686 = lshr i32 %5667, 31
  %5687 = trunc i32 %5686 to i8
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5687, i8* %5688, align 1
  %5689 = lshr i32 %5666, 31
  %5690 = xor i32 %5686, %5689
  %5691 = add i32 %5690, %5689
  %5692 = icmp eq i32 %5691, 2
  %5693 = zext i1 %5692 to i8
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5693, i8* %5694, align 1
  store %struct.Memory* %loadMem_487fb1, %struct.Memory** %MEMORY
  %loadMem_487fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 33
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5697 to i64*
  %5698 = load i64, i64* %PC.i134
  %5699 = add i64 %5698, 27
  %5700 = load i64, i64* %PC.i134
  %5701 = add i64 %5700, 6
  %5702 = load i64, i64* %PC.i134
  %5703 = add i64 %5702, 6
  store i64 %5703, i64* %PC.i134
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5705 = load i8, i8* %5704, align 1
  store i8 %5705, i8* %BRANCH_TAKEN, align 1
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5707 = icmp ne i8 %5705, 0
  %5708 = select i1 %5707, i64 %5699, i64 %5701
  store i64 %5708, i64* %5706, align 8
  store %struct.Memory* %loadMem_487fb5, %struct.Memory** %MEMORY
  %loadBr_487fb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487fb5 = icmp eq i8 %loadBr_487fb5, 1
  br i1 %cmpBr_487fb5, label %block_.L_487fd0, label %block_487fbb

block_487fbb:                                     ; preds = %block_.L_487fb1
  %loadMem_487fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 33
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5711 to i64*
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 1
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %5714 to i64*
  %5715 = load i64, i64* %PC.i132
  %5716 = add i64 %5715, 5
  store i64 %5716, i64* %PC.i132
  store i64 5, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_487fbb, %struct.Memory** %MEMORY
  %loadMem_487fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 33
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %5719 to i64*
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 11
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %RDI.i130 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 15
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %5725 to i64*
  %5726 = load i64, i64* %RBP.i131
  %5727 = sub i64 %5726, 4
  %5728 = load i64, i64* %PC.i129
  %5729 = add i64 %5728, 3
  store i64 %5729, i64* %PC.i129
  %5730 = inttoptr i64 %5727 to i32*
  %5731 = load i32, i32* %5730
  %5732 = zext i32 %5731 to i64
  store i64 %5732, i64* %RDI.i130, align 8
  store %struct.Memory* %loadMem_487fc0, %struct.Memory** %MEMORY
  %loadMem_487fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 33
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 9
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RSI.i127 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 15
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %RBP.i128
  %5743 = sub i64 %5742, 44
  %5744 = load i64, i64* %PC.i126
  %5745 = add i64 %5744, 3
  store i64 %5745, i64* %PC.i126
  %5746 = inttoptr i64 %5743 to i32*
  %5747 = load i32, i32* %5746
  %5748 = zext i32 %5747 to i64
  store i64 %5748, i64* %RSI.i127, align 8
  store %struct.Memory* %loadMem_487fc3, %struct.Memory** %MEMORY
  %loadMem_487fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 33
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5751 to i64*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 1
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %5754 to i64*
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5756 = getelementptr inbounds %struct.GPR, %struct.GPR* %5755, i32 0, i32 15
  %5757 = getelementptr inbounds %struct.Reg, %struct.Reg* %5756, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %5757 to i64*
  %5758 = load i64, i64* %RAX.i124
  %5759 = load i64, i64* %RBP.i125
  %5760 = sub i64 %5759, 16
  %5761 = load i64, i64* %PC.i123
  %5762 = add i64 %5761, 3
  store i64 %5762, i64* %PC.i123
  %5763 = trunc i64 %5758 to i32
  %5764 = inttoptr i64 %5760 to i32*
  %5765 = load i32, i32* %5764
  %5766 = sub i32 %5763, %5765
  %5767 = zext i32 %5766 to i64
  store i64 %5767, i64* %RAX.i124, align 8
  %5768 = icmp ult i32 %5763, %5765
  %5769 = zext i1 %5768 to i8
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5769, i8* %5770, align 1
  %5771 = and i32 %5766, 255
  %5772 = call i32 @llvm.ctpop.i32(i32 %5771)
  %5773 = trunc i32 %5772 to i8
  %5774 = and i8 %5773, 1
  %5775 = xor i8 %5774, 1
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5775, i8* %5776, align 1
  %5777 = xor i32 %5765, %5763
  %5778 = xor i32 %5777, %5766
  %5779 = lshr i32 %5778, 4
  %5780 = trunc i32 %5779 to i8
  %5781 = and i8 %5780, 1
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5781, i8* %5782, align 1
  %5783 = icmp eq i32 %5766, 0
  %5784 = zext i1 %5783 to i8
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5784, i8* %5785, align 1
  %5786 = lshr i32 %5766, 31
  %5787 = trunc i32 %5786 to i8
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5787, i8* %5788, align 1
  %5789 = lshr i32 %5763, 31
  %5790 = lshr i32 %5765, 31
  %5791 = xor i32 %5790, %5789
  %5792 = xor i32 %5786, %5789
  %5793 = add i32 %5792, %5791
  %5794 = icmp eq i32 %5793, 2
  %5795 = zext i1 %5794 to i8
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5795, i8* %5796, align 1
  store %struct.Memory* %loadMem_487fc6, %struct.Memory** %MEMORY
  %loadMem_487fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 33
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5799 to i64*
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 1
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %5802 to i32*
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5804 = getelementptr inbounds %struct.GPR, %struct.GPR* %5803, i32 0, i32 7
  %5805 = getelementptr inbounds %struct.Reg, %struct.Reg* %5804, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %5805 to i64*
  %5806 = load i32, i32* %EAX.i121
  %5807 = zext i32 %5806 to i64
  %5808 = load i64, i64* %PC.i120
  %5809 = add i64 %5808, 2
  store i64 %5809, i64* %PC.i120
  %5810 = and i64 %5807, 4294967295
  store i64 %5810, i64* %RDX.i122, align 8
  store %struct.Memory* %loadMem_487fc9, %struct.Memory** %MEMORY
  %loadMem1_487fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5812 = getelementptr inbounds %struct.GPR, %struct.GPR* %5811, i32 0, i32 33
  %5813 = getelementptr inbounds %struct.Reg, %struct.Reg* %5812, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5813 to i64*
  %5814 = load i64, i64* %PC.i119
  %5815 = add i64 %5814, 1909
  %5816 = load i64, i64* %PC.i119
  %5817 = add i64 %5816, 5
  %5818 = load i64, i64* %PC.i119
  %5819 = add i64 %5818, 5
  store i64 %5819, i64* %PC.i119
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5821 = load i64, i64* %5820, align 8
  %5822 = add i64 %5821, -8
  %5823 = inttoptr i64 %5822 to i64*
  store i64 %5817, i64* %5823
  store i64 %5822, i64* %5820, align 8
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5815, i64* %5824, align 8
  store %struct.Memory* %loadMem1_487fcb, %struct.Memory** %MEMORY
  %loadMem2_487fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fcb = load i64, i64* %3
  %call2_487fcb = call %struct.Memory* @sub_488740.change_attack(%struct.State* %0, i64 %loadPC_487fcb, %struct.Memory* %loadMem2_487fcb)
  store %struct.Memory* %call2_487fcb, %struct.Memory** %MEMORY
  br label %block_.L_487fd0

block_.L_487fd0:                                  ; preds = %block_487fbb, %block_.L_487fb1
  %loadMem_487fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 33
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5827 to i64*
  %5828 = load i64, i64* %PC.i118
  %5829 = add i64 %5828, 5
  %5830 = load i64, i64* %PC.i118
  %5831 = add i64 %5830, 5
  store i64 %5831, i64* %PC.i118
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5829, i64* %5832, align 8
  store %struct.Memory* %loadMem_487fd0, %struct.Memory** %MEMORY
  br label %block_.L_487fd5

block_.L_487fd5:                                  ; preds = %block_.L_487fd0, %block_487f6c
  %loadMem1_487fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 33
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5835 to i64*
  %5836 = load i64, i64* %PC.i117
  %5837 = add i64 %5836, -500341
  %5838 = load i64, i64* %PC.i117
  %5839 = add i64 %5838, 5
  %5840 = load i64, i64* %PC.i117
  %5841 = add i64 %5840, 5
  store i64 %5841, i64* %PC.i117
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5843 = load i64, i64* %5842, align 8
  %5844 = add i64 %5843, -8
  %5845 = inttoptr i64 %5844 to i64*
  store i64 %5839, i64* %5845
  store i64 %5844, i64* %5842, align 8
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5837, i64* %5846, align 8
  store %struct.Memory* %loadMem1_487fd5, %struct.Memory** %MEMORY
  %loadMem2_487fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fd5 = load i64, i64* %3
  %call2_487fd5 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_487fd5, %struct.Memory* %loadMem2_487fd5)
  store %struct.Memory* %call2_487fd5, %struct.Memory** %MEMORY
  br label %block_.L_487fda

block_.L_487fda:                                  ; preds = %block_.L_487fd5, %block_487f2e
  %loadMem_487fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5848 = getelementptr inbounds %struct.GPR, %struct.GPR* %5847, i32 0, i32 33
  %5849 = getelementptr inbounds %struct.Reg, %struct.Reg* %5848, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5849 to i64*
  %5850 = load i64, i64* %PC.i116
  %5851 = add i64 %5850, 5
  %5852 = load i64, i64* %PC.i116
  %5853 = add i64 %5852, 5
  store i64 %5853, i64* %PC.i116
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5851, i64* %5854, align 8
  store %struct.Memory* %loadMem_487fda, %struct.Memory** %MEMORY
  br label %block_.L_487fdf

block_.L_487fdf:                                  ; preds = %block_.L_487fda, %block_487f0c
  %loadMem_487fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 33
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5857 to i64*
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5859 = getelementptr inbounds %struct.GPR, %struct.GPR* %5858, i32 0, i32 11
  %5860 = getelementptr inbounds %struct.Reg, %struct.Reg* %5859, i32 0, i32 0
  %RDI.i114 = bitcast %union.anon* %5860 to i64*
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 15
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %5863 to i64*
  %5864 = load i64, i64* %RBP.i115
  %5865 = sub i64 %5864, 44
  %5866 = load i64, i64* %PC.i113
  %5867 = add i64 %5866, 3
  store i64 %5867, i64* %PC.i113
  %5868 = inttoptr i64 %5865 to i32*
  %5869 = load i32, i32* %5868
  %5870 = zext i32 %5869 to i64
  store i64 %5870, i64* %RDI.i114, align 8
  store %struct.Memory* %loadMem_487fdf, %struct.Memory** %MEMORY
  %loadMem_487fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 9
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 15
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RBP.i112
  %5881 = sub i64 %5880, 4
  %5882 = load i64, i64* %PC.i110
  %5883 = add i64 %5882, 3
  store i64 %5883, i64* %PC.i110
  %5884 = inttoptr i64 %5881 to i32*
  %5885 = load i32, i32* %5884
  %5886 = zext i32 %5885 to i64
  store i64 %5886, i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_487fe2, %struct.Memory** %MEMORY
  %loadMem1_487fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5889 to i64*
  %5890 = load i64, i64* %PC.i109
  %5891 = add i64 %5890, 6587
  %5892 = load i64, i64* %PC.i109
  %5893 = add i64 %5892, 5
  %5894 = load i64, i64* %PC.i109
  %5895 = add i64 %5894, 5
  store i64 %5895, i64* %PC.i109
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5897 = load i64, i64* %5896, align 8
  %5898 = add i64 %5897, -8
  %5899 = inttoptr i64 %5898 to i64*
  store i64 %5893, i64* %5899
  store i64 %5898, i64* %5896, align 8
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5891, i64* %5900, align 8
  store %struct.Memory* %loadMem1_487fe5, %struct.Memory** %MEMORY
  %loadMem2_487fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fe5 = load i64, i64* %3
  %call2_487fe5 = call %struct.Memory* @sub_4899a0.defense_move_known(%struct.State* %0, i64 %loadPC_487fe5, %struct.Memory* %loadMem2_487fe5)
  store %struct.Memory* %call2_487fe5, %struct.Memory** %MEMORY
  %loadMem_487fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 33
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5903 to i64*
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 1
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %5906 to i32*
  %5907 = load i32, i32* %EAX.i108
  %5908 = zext i32 %5907 to i64
  %5909 = load i64, i64* %PC.i107
  %5910 = add i64 %5909, 3
  store i64 %5910, i64* %PC.i107
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5911, align 1
  %5912 = and i32 %5907, 255
  %5913 = call i32 @llvm.ctpop.i32(i32 %5912)
  %5914 = trunc i32 %5913 to i8
  %5915 = and i8 %5914, 1
  %5916 = xor i8 %5915, 1
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5916, i8* %5917, align 1
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5918, align 1
  %5919 = icmp eq i32 %5907, 0
  %5920 = zext i1 %5919 to i8
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5920, i8* %5921, align 1
  %5922 = lshr i32 %5907, 31
  %5923 = trunc i32 %5922 to i8
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5923, i8* %5924, align 1
  %5925 = lshr i32 %5907, 31
  %5926 = xor i32 %5922, %5925
  %5927 = add i32 %5926, %5925
  %5928 = icmp eq i32 %5927, 2
  %5929 = zext i1 %5928 to i8
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5929, i8* %5930, align 1
  store %struct.Memory* %loadMem_487fea, %struct.Memory** %MEMORY
  %loadMem_487fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 33
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5933 to i64*
  %5934 = load i64, i64* %PC.i106
  %5935 = add i64 %5934, 144
  %5936 = load i64, i64* %PC.i106
  %5937 = add i64 %5936, 6
  %5938 = load i64, i64* %PC.i106
  %5939 = add i64 %5938, 6
  store i64 %5939, i64* %PC.i106
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5941 = load i8, i8* %5940, align 1
  %5942 = icmp eq i8 %5941, 0
  %5943 = zext i1 %5942 to i8
  store i8 %5943, i8* %BRANCH_TAKEN, align 1
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5945 = select i1 %5942, i64 %5935, i64 %5937
  store i64 %5945, i64* %5944, align 8
  store %struct.Memory* %loadMem_487fed, %struct.Memory** %MEMORY
  %loadBr_487fed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487fed = icmp eq i8 %loadBr_487fed, 1
  br i1 %cmpBr_487fed, label %block_.L_48807d, label %block_487ff3

block_487ff3:                                     ; preds = %block_.L_487fdf
  %loadMem_487ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 33
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %5948 to i64*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 1
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %5951 to i64*
  %5952 = load i64, i64* %PC.i104
  %5953 = add i64 %5952, 10
  store i64 %5953, i64* %PC.i104
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_487ff3, %struct.Memory** %MEMORY
  %loadMem_487ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 33
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %5956 to i64*
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 5
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %5959 to i64*
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 15
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %5962 to i64*
  %5963 = load i64, i64* %RBP.i103
  %5964 = sub i64 %5963, 4
  %5965 = load i64, i64* %PC.i101
  %5966 = add i64 %5965, 4
  store i64 %5966, i64* %PC.i101
  %5967 = inttoptr i64 %5964 to i32*
  %5968 = load i32, i32* %5967
  %5969 = sext i32 %5968 to i64
  store i64 %5969, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_487ffd, %struct.Memory** %MEMORY
  %loadMem_488001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 33
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5972 to i64*
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 5
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %5975 to i64*
  %5976 = load i64, i64* %RCX.i100
  %5977 = load i64, i64* %PC.i99
  %5978 = add i64 %5977, 7
  store i64 %5978, i64* %PC.i99
  %5979 = sext i64 %5976 to i128
  %5980 = and i128 %5979, -18446744073709551616
  %5981 = zext i64 %5976 to i128
  %5982 = or i128 %5980, %5981
  %5983 = mul i128 380, %5982
  %5984 = trunc i128 %5983 to i64
  store i64 %5984, i64* %RCX.i100, align 8
  %5985 = sext i64 %5984 to i128
  %5986 = icmp ne i128 %5985, %5983
  %5987 = zext i1 %5986 to i8
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5987, i8* %5988, align 1
  %5989 = trunc i128 %5983 to i32
  %5990 = and i32 %5989, 255
  %5991 = call i32 @llvm.ctpop.i32(i32 %5990)
  %5992 = trunc i32 %5991 to i8
  %5993 = and i8 %5992, 1
  %5994 = xor i8 %5993, 1
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5994, i8* %5995, align 1
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5996, align 1
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5997, align 1
  %5998 = lshr i64 %5984, 63
  %5999 = trunc i64 %5998 to i8
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5999, i8* %6000, align 1
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5987, i8* %6001, align 1
  store %struct.Memory* %loadMem_488001, %struct.Memory** %MEMORY
  %loadMem_488008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 33
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6004 to i64*
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6006 = getelementptr inbounds %struct.GPR, %struct.GPR* %6005, i32 0, i32 1
  %6007 = getelementptr inbounds %struct.Reg, %struct.Reg* %6006, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %6007 to i64*
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 5
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %6010 to i64*
  %6011 = load i64, i64* %RAX.i97
  %6012 = load i64, i64* %RCX.i98
  %6013 = load i64, i64* %PC.i96
  %6014 = add i64 %6013, 3
  store i64 %6014, i64* %PC.i96
  %6015 = add i64 %6012, %6011
  store i64 %6015, i64* %RAX.i97, align 8
  %6016 = icmp ult i64 %6015, %6011
  %6017 = icmp ult i64 %6015, %6012
  %6018 = or i1 %6016, %6017
  %6019 = zext i1 %6018 to i8
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6019, i8* %6020, align 1
  %6021 = trunc i64 %6015 to i32
  %6022 = and i32 %6021, 255
  %6023 = call i32 @llvm.ctpop.i32(i32 %6022)
  %6024 = trunc i32 %6023 to i8
  %6025 = and i8 %6024, 1
  %6026 = xor i8 %6025, 1
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6026, i8* %6027, align 1
  %6028 = xor i64 %6012, %6011
  %6029 = xor i64 %6028, %6015
  %6030 = lshr i64 %6029, 4
  %6031 = trunc i64 %6030 to i8
  %6032 = and i8 %6031, 1
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6032, i8* %6033, align 1
  %6034 = icmp eq i64 %6015, 0
  %6035 = zext i1 %6034 to i8
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6035, i8* %6036, align 1
  %6037 = lshr i64 %6015, 63
  %6038 = trunc i64 %6037 to i8
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6038, i8* %6039, align 1
  %6040 = lshr i64 %6011, 63
  %6041 = lshr i64 %6012, 63
  %6042 = xor i64 %6037, %6040
  %6043 = xor i64 %6037, %6041
  %6044 = add i64 %6042, %6043
  %6045 = icmp eq i64 %6044, 2
  %6046 = zext i1 %6045 to i8
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6046, i8* %6047, align 1
  store %struct.Memory* %loadMem_488008, %struct.Memory** %MEMORY
  %loadMem_48800b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 33
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6050 to i64*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6052 = getelementptr inbounds %struct.GPR, %struct.GPR* %6051, i32 0, i32 1
  %6053 = getelementptr inbounds %struct.Reg, %struct.Reg* %6052, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %6053 to i64*
  %6054 = load i64, i64* %RAX.i95
  %6055 = add i64 %6054, 180
  %6056 = load i64, i64* %PC.i94
  %6057 = add i64 %6056, 7
  store i64 %6057, i64* %PC.i94
  %6058 = inttoptr i64 %6055 to i32*
  %6059 = load i32, i32* %6058
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6060, align 1
  %6061 = and i32 %6059, 255
  %6062 = call i32 @llvm.ctpop.i32(i32 %6061)
  %6063 = trunc i32 %6062 to i8
  %6064 = and i8 %6063, 1
  %6065 = xor i8 %6064, 1
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6065, i8* %6066, align 1
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6067, align 1
  %6068 = icmp eq i32 %6059, 0
  %6069 = zext i1 %6068 to i8
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6069, i8* %6070, align 1
  %6071 = lshr i32 %6059, 31
  %6072 = trunc i32 %6071 to i8
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6072, i8* %6073, align 1
  %6074 = lshr i32 %6059, 31
  %6075 = xor i32 %6071, %6074
  %6076 = add i32 %6075, %6074
  %6077 = icmp eq i32 %6076, 2
  %6078 = zext i1 %6077 to i8
  %6079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6078, i8* %6079, align 1
  store %struct.Memory* %loadMem_48800b, %struct.Memory** %MEMORY
  %loadMem_488012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 33
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %PC.i93
  %6084 = add i64 %6083, 102
  %6085 = load i64, i64* %PC.i93
  %6086 = add i64 %6085, 6
  %6087 = load i64, i64* %PC.i93
  %6088 = add i64 %6087, 6
  store i64 %6088, i64* %PC.i93
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6090 = load i8, i8* %6089, align 1
  store i8 %6090, i8* %BRANCH_TAKEN, align 1
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6092 = icmp ne i8 %6090, 0
  %6093 = select i1 %6092, i64 %6084, i64 %6086
  store i64 %6093, i64* %6091, align 8
  store %struct.Memory* %loadMem_488012, %struct.Memory** %MEMORY
  %loadBr_488012 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_488012 = icmp eq i8 %loadBr_488012, 1
  br i1 %cmpBr_488012, label %block_.L_488078, label %block_488018

block_488018:                                     ; preds = %block_487ff3
  %loadMem_488018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6095 = getelementptr inbounds %struct.GPR, %struct.GPR* %6094, i32 0, i32 33
  %6096 = getelementptr inbounds %struct.Reg, %struct.Reg* %6095, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %6096 to i64*
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6098 = getelementptr inbounds %struct.GPR, %struct.GPR* %6097, i32 0, i32 7
  %6099 = getelementptr inbounds %struct.Reg, %struct.Reg* %6098, i32 0, i32 0
  %RDX.i92 = bitcast %union.anon* %6099 to i64*
  %6100 = load i64, i64* %PC.i91
  %6101 = add i64 %6100, 10
  store i64 %6101, i64* %PC.i91
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX.i92, align 8
  store %struct.Memory* %loadMem_488018, %struct.Memory** %MEMORY
  %loadMem_488022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 33
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 1
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %EAX.i89 = bitcast %union.anon* %6107 to i32*
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 1
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %6110 to i64*
  %6111 = load i64, i64* %RAX.i90
  %6112 = load i32, i32* %EAX.i89
  %6113 = zext i32 %6112 to i64
  %6114 = load i64, i64* %PC.i88
  %6115 = add i64 %6114, 2
  store i64 %6115, i64* %PC.i88
  %6116 = xor i64 %6113, %6111
  %6117 = trunc i64 %6116 to i32
  %6118 = and i64 %6116, 4294967295
  store i64 %6118, i64* %RAX.i90, align 8
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6119, align 1
  %6120 = and i32 %6117, 255
  %6121 = call i32 @llvm.ctpop.i32(i32 %6120)
  %6122 = trunc i32 %6121 to i8
  %6123 = and i8 %6122, 1
  %6124 = xor i8 %6123, 1
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6124, i8* %6125, align 1
  %6126 = icmp eq i32 %6117, 0
  %6127 = zext i1 %6126 to i8
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6127, i8* %6128, align 1
  %6129 = lshr i32 %6117, 31
  %6130 = trunc i32 %6129 to i8
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6130, i8* %6131, align 1
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6132, align 1
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6133, align 1
  store %struct.Memory* %loadMem_488022, %struct.Memory** %MEMORY
  %loadMem_488024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6135 = getelementptr inbounds %struct.GPR, %struct.GPR* %6134, i32 0, i32 33
  %6136 = getelementptr inbounds %struct.Reg, %struct.Reg* %6135, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %6136 to i64*
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6138 = getelementptr inbounds %struct.GPR, %struct.GPR* %6137, i32 0, i32 11
  %6139 = getelementptr inbounds %struct.Reg, %struct.Reg* %6138, i32 0, i32 0
  %RDI.i86 = bitcast %union.anon* %6139 to i64*
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6141 = getelementptr inbounds %struct.GPR, %struct.GPR* %6140, i32 0, i32 15
  %6142 = getelementptr inbounds %struct.Reg, %struct.Reg* %6141, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %6142 to i64*
  %6143 = load i64, i64* %RBP.i87
  %6144 = sub i64 %6143, 44
  %6145 = load i64, i64* %PC.i85
  %6146 = add i64 %6145, 3
  store i64 %6146, i64* %PC.i85
  %6147 = inttoptr i64 %6144 to i32*
  %6148 = load i32, i32* %6147
  %6149 = zext i32 %6148 to i64
  store i64 %6149, i64* %RDI.i86, align 8
  store %struct.Memory* %loadMem_488024, %struct.Memory** %MEMORY
  %loadMem_488027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6151 = getelementptr inbounds %struct.GPR, %struct.GPR* %6150, i32 0, i32 33
  %6152 = getelementptr inbounds %struct.Reg, %struct.Reg* %6151, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6152 to i64*
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 9
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %6155 to i64*
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6157 = getelementptr inbounds %struct.GPR, %struct.GPR* %6156, i32 0, i32 15
  %6158 = getelementptr inbounds %struct.Reg, %struct.Reg* %6157, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %6158 to i64*
  %6159 = load i64, i64* %RBP.i84
  %6160 = sub i64 %6159, 32
  %6161 = load i64, i64* %PC.i82
  %6162 = add i64 %6161, 3
  store i64 %6162, i64* %PC.i82
  %6163 = inttoptr i64 %6160 to i32*
  %6164 = load i32, i32* %6163
  %6165 = zext i32 %6164 to i64
  store i64 %6165, i64* %RSI.i83, align 8
  store %struct.Memory* %loadMem_488027, %struct.Memory** %MEMORY
  %loadMem_48802a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6167 = getelementptr inbounds %struct.GPR, %struct.GPR* %6166, i32 0, i32 33
  %6168 = getelementptr inbounds %struct.Reg, %struct.Reg* %6167, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6168 to i64*
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6170 = getelementptr inbounds %struct.GPR, %struct.GPR* %6169, i32 0, i32 1
  %6171 = getelementptr inbounds %struct.Reg, %struct.Reg* %6170, i32 0, i32 0
  %EAX.i80 = bitcast %union.anon* %6171 to i32*
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 5
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %6174 to i64*
  %6175 = load i32, i32* %EAX.i80
  %6176 = zext i32 %6175 to i64
  %6177 = load i64, i64* %PC.i79
  %6178 = add i64 %6177, 2
  store i64 %6178, i64* %PC.i79
  %6179 = and i64 %6176, 4294967295
  store i64 %6179, i64* %RCX.i81, align 8
  store %struct.Memory* %loadMem_48802a, %struct.Memory** %MEMORY
  %loadMem_48802c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6181 = getelementptr inbounds %struct.GPR, %struct.GPR* %6180, i32 0, i32 33
  %6182 = getelementptr inbounds %struct.Reg, %struct.Reg* %6181, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6182 to i64*
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 1
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %6185 to i32*
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 17
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %R8D.i78 = bitcast %union.anon* %6188 to i32*
  %6189 = bitcast i32* %R8D.i78 to i64*
  %6190 = load i32, i32* %EAX.i77
  %6191 = zext i32 %6190 to i64
  %6192 = load i64, i64* %PC.i76
  %6193 = add i64 %6192, 3
  store i64 %6193, i64* %PC.i76
  %6194 = and i64 %6191, 4294967295
  store i64 %6194, i64* %6189, align 8
  store %struct.Memory* %loadMem_48802c, %struct.Memory** %MEMORY
  %loadMem_48802f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 33
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %6197 to i64*
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 1
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %EAX.i75 = bitcast %union.anon* %6200 to i32*
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6202 = getelementptr inbounds %struct.GPR, %struct.GPR* %6201, i32 0, i32 19
  %6203 = getelementptr inbounds %struct.Reg, %struct.Reg* %6202, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %6203 to i32*
  %6204 = bitcast i32* %R9D.i to i64*
  %6205 = load i32, i32* %EAX.i75
  %6206 = zext i32 %6205 to i64
  %6207 = load i64, i64* %PC.i74
  %6208 = add i64 %6207, 3
  store i64 %6208, i64* %PC.i74
  %6209 = and i64 %6206, 4294967295
  store i64 %6209, i64* %6204, align 8
  store %struct.Memory* %loadMem_48802f, %struct.Memory** %MEMORY
  %loadMem1_488032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6211 = getelementptr inbounds %struct.GPR, %struct.GPR* %6210, i32 0, i32 33
  %6212 = getelementptr inbounds %struct.Reg, %struct.Reg* %6211, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6212 to i64*
  %6213 = load i64, i64* %PC.i73
  %6214 = add i64 %6213, -520706
  %6215 = load i64, i64* %PC.i73
  %6216 = add i64 %6215, 5
  %6217 = load i64, i64* %PC.i73
  %6218 = add i64 %6217, 5
  store i64 %6218, i64* %PC.i73
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6220 = load i64, i64* %6219, align 8
  %6221 = add i64 %6220, -8
  %6222 = inttoptr i64 %6221 to i64*
  store i64 %6216, i64* %6222
  store i64 %6221, i64* %6219, align 8
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6214, i64* %6223, align 8
  store %struct.Memory* %loadMem1_488032, %struct.Memory** %MEMORY
  %loadMem2_488032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_488032 = load i64, i64* %3
  %call2_488032 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_488032, %struct.Memory* %loadMem2_488032)
  store %struct.Memory* %call2_488032, %struct.Memory** %MEMORY
  %loadMem_488037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 33
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6226 to i64*
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6228 = getelementptr inbounds %struct.GPR, %struct.GPR* %6227, i32 0, i32 1
  %6229 = getelementptr inbounds %struct.Reg, %struct.Reg* %6228, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %6229 to i32*
  %6230 = load i32, i32* %EAX.i72
  %6231 = zext i32 %6230 to i64
  %6232 = load i64, i64* %PC.i71
  %6233 = add i64 %6232, 3
  store i64 %6233, i64* %PC.i71
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6234, align 1
  %6235 = and i32 %6230, 255
  %6236 = call i32 @llvm.ctpop.i32(i32 %6235)
  %6237 = trunc i32 %6236 to i8
  %6238 = and i8 %6237, 1
  %6239 = xor i8 %6238, 1
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6239, i8* %6240, align 1
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6241, align 1
  %6242 = icmp eq i32 %6230, 0
  %6243 = zext i1 %6242 to i8
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6243, i8* %6244, align 1
  %6245 = lshr i32 %6230, 31
  %6246 = trunc i32 %6245 to i8
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6246, i8* %6247, align 1
  %6248 = lshr i32 %6230, 31
  %6249 = xor i32 %6245, %6248
  %6250 = add i32 %6249, %6248
  %6251 = icmp eq i32 %6250, 2
  %6252 = zext i1 %6251 to i8
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6252, i8* %6253, align 1
  store %struct.Memory* %loadMem_488037, %struct.Memory** %MEMORY
  %loadMem_48803a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 33
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6256 to i64*
  %6257 = load i64, i64* %PC.i70
  %6258 = add i64 %6257, 57
  %6259 = load i64, i64* %PC.i70
  %6260 = add i64 %6259, 6
  %6261 = load i64, i64* %PC.i70
  %6262 = add i64 %6261, 6
  store i64 %6262, i64* %PC.i70
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6264 = load i8, i8* %6263, align 1
  store i8 %6264, i8* %BRANCH_TAKEN, align 1
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6266 = icmp ne i8 %6264, 0
  %6267 = select i1 %6266, i64 %6258, i64 %6260
  store i64 %6267, i64* %6265, align 8
  store %struct.Memory* %loadMem_48803a, %struct.Memory** %MEMORY
  %loadBr_48803a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48803a = icmp eq i8 %loadBr_48803a, 1
  br i1 %cmpBr_48803a, label %block_.L_488073, label %block_488040

block_488040:                                     ; preds = %block_488018
  %loadMem_488040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6269 = getelementptr inbounds %struct.GPR, %struct.GPR* %6268, i32 0, i32 33
  %6270 = getelementptr inbounds %struct.Reg, %struct.Reg* %6269, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6270 to i64*
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6272 = getelementptr inbounds %struct.GPR, %struct.GPR* %6271, i32 0, i32 1
  %6273 = getelementptr inbounds %struct.Reg, %struct.Reg* %6272, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %6273 to i32*
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6275 = getelementptr inbounds %struct.GPR, %struct.GPR* %6274, i32 0, i32 1
  %6276 = getelementptr inbounds %struct.Reg, %struct.Reg* %6275, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %6276 to i64*
  %6277 = load i64, i64* %RAX.i69
  %6278 = load i32, i32* %EAX.i68
  %6279 = zext i32 %6278 to i64
  %6280 = load i64, i64* %PC.i67
  %6281 = add i64 %6280, 2
  store i64 %6281, i64* %PC.i67
  %6282 = xor i64 %6279, %6277
  %6283 = trunc i64 %6282 to i32
  %6284 = and i64 %6282, 4294967295
  store i64 %6284, i64* %RAX.i69, align 8
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6285, align 1
  %6286 = and i32 %6283, 255
  %6287 = call i32 @llvm.ctpop.i32(i32 %6286)
  %6288 = trunc i32 %6287 to i8
  %6289 = and i8 %6288, 1
  %6290 = xor i8 %6289, 1
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6290, i8* %6291, align 1
  %6292 = icmp eq i32 %6283, 0
  %6293 = zext i1 %6292 to i8
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6293, i8* %6294, align 1
  %6295 = lshr i32 %6283, 31
  %6296 = trunc i32 %6295 to i8
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6296, i8* %6297, align 1
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6298, align 1
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6299, align 1
  store %struct.Memory* %loadMem_488040, %struct.Memory** %MEMORY
  %loadMem_488042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6301 = getelementptr inbounds %struct.GPR, %struct.GPR* %6300, i32 0, i32 33
  %6302 = getelementptr inbounds %struct.Reg, %struct.Reg* %6301, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6302 to i64*
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6304 = getelementptr inbounds %struct.GPR, %struct.GPR* %6303, i32 0, i32 1
  %6305 = getelementptr inbounds %struct.Reg, %struct.Reg* %6304, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %6305 to i32*
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6307 = getelementptr inbounds %struct.GPR, %struct.GPR* %6306, i32 0, i32 9
  %6308 = getelementptr inbounds %struct.Reg, %struct.Reg* %6307, i32 0, i32 0
  %RSI.i66 = bitcast %union.anon* %6308 to i64*
  %6309 = load i32, i32* %EAX.i65
  %6310 = zext i32 %6309 to i64
  %6311 = load i64, i64* %PC.i64
  %6312 = add i64 %6311, 2
  store i64 %6312, i64* %PC.i64
  %6313 = and i64 %6310, 4294967295
  store i64 %6313, i64* %RSI.i66, align 8
  store %struct.Memory* %loadMem_488042, %struct.Memory** %MEMORY
  %loadMem_488044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 33
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6316 to i64*
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 11
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %RDI.i62 = bitcast %union.anon* %6319 to i64*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 15
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %6322 to i64*
  %6323 = load i64, i64* %RBP.i63
  %6324 = sub i64 %6323, 4
  %6325 = load i64, i64* %PC.i61
  %6326 = add i64 %6325, 3
  store i64 %6326, i64* %PC.i61
  %6327 = inttoptr i64 %6324 to i32*
  %6328 = load i32, i32* %6327
  %6329 = zext i32 %6328 to i64
  store i64 %6329, i64* %RDI.i62, align 8
  store %struct.Memory* %loadMem_488044, %struct.Memory** %MEMORY
  %loadMem1_488047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6331 = getelementptr inbounds %struct.GPR, %struct.GPR* %6330, i32 0, i32 33
  %6332 = getelementptr inbounds %struct.Reg, %struct.Reg* %6331, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %6332 to i64*
  %6333 = load i64, i64* %PC.i60
  %6334 = add i64 %6333, -173319
  %6335 = load i64, i64* %PC.i60
  %6336 = add i64 %6335, 5
  %6337 = load i64, i64* %PC.i60
  %6338 = add i64 %6337, 5
  store i64 %6338, i64* %PC.i60
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6340 = load i64, i64* %6339, align 8
  %6341 = add i64 %6340, -8
  %6342 = inttoptr i64 %6341 to i64*
  store i64 %6336, i64* %6342
  store i64 %6341, i64* %6339, align 8
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6334, i64* %6343, align 8
  store %struct.Memory* %loadMem1_488047, %struct.Memory** %MEMORY
  %loadMem2_488047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_488047 = load i64, i64* %3
  %call2_488047 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_488047, %struct.Memory* %loadMem2_488047)
  store %struct.Memory* %call2_488047, %struct.Memory** %MEMORY
  %loadMem_48804c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6345 = getelementptr inbounds %struct.GPR, %struct.GPR* %6344, i32 0, i32 33
  %6346 = getelementptr inbounds %struct.Reg, %struct.Reg* %6345, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %6346 to i64*
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 1
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %6349 to i32*
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 15
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %6352 to i64*
  %6353 = load i64, i64* %RBP.i59
  %6354 = sub i64 %6353, 12
  %6355 = load i32, i32* %EAX.i58
  %6356 = zext i32 %6355 to i64
  %6357 = load i64, i64* %PC.i57
  %6358 = add i64 %6357, 3
  store i64 %6358, i64* %PC.i57
  %6359 = inttoptr i64 %6354 to i32*
  store i32 %6355, i32* %6359
  store %struct.Memory* %loadMem_48804c, %struct.Memory** %MEMORY
  %loadMem_48804f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 33
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 15
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %6365 to i64*
  %6366 = load i64, i64* %RBP.i56
  %6367 = sub i64 %6366, 12
  %6368 = load i64, i64* %PC.i55
  %6369 = add i64 %6368, 4
  store i64 %6369, i64* %PC.i55
  %6370 = inttoptr i64 %6367 to i32*
  %6371 = load i32, i32* %6370
  %6372 = sub i32 %6371, 5
  %6373 = icmp ult i32 %6371, 5
  %6374 = zext i1 %6373 to i8
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6374, i8* %6375, align 1
  %6376 = and i32 %6372, 255
  %6377 = call i32 @llvm.ctpop.i32(i32 %6376)
  %6378 = trunc i32 %6377 to i8
  %6379 = and i8 %6378, 1
  %6380 = xor i8 %6379, 1
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6380, i8* %6381, align 1
  %6382 = xor i32 %6371, 5
  %6383 = xor i32 %6382, %6372
  %6384 = lshr i32 %6383, 4
  %6385 = trunc i32 %6384 to i8
  %6386 = and i8 %6385, 1
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6386, i8* %6387, align 1
  %6388 = icmp eq i32 %6372, 0
  %6389 = zext i1 %6388 to i8
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6389, i8* %6390, align 1
  %6391 = lshr i32 %6372, 31
  %6392 = trunc i32 %6391 to i8
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6392, i8* %6393, align 1
  %6394 = lshr i32 %6371, 31
  %6395 = xor i32 %6391, %6394
  %6396 = add i32 %6395, %6394
  %6397 = icmp eq i32 %6396, 2
  %6398 = zext i1 %6397 to i8
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6398, i8* %6399, align 1
  store %struct.Memory* %loadMem_48804f, %struct.Memory** %MEMORY
  %loadMem_488053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 33
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %6402 to i64*
  %6403 = load i64, i64* %PC.i54
  %6404 = add i64 %6403, 27
  %6405 = load i64, i64* %PC.i54
  %6406 = add i64 %6405, 6
  %6407 = load i64, i64* %PC.i54
  %6408 = add i64 %6407, 6
  store i64 %6408, i64* %PC.i54
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6410 = load i8, i8* %6409, align 1
  store i8 %6410, i8* %BRANCH_TAKEN, align 1
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6412 = icmp ne i8 %6410, 0
  %6413 = select i1 %6412, i64 %6404, i64 %6406
  store i64 %6413, i64* %6411, align 8
  store %struct.Memory* %loadMem_488053, %struct.Memory** %MEMORY
  %loadBr_488053 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_488053 = icmp eq i8 %loadBr_488053, 1
  br i1 %cmpBr_488053, label %block_.L_48806e, label %block_488059

block_488059:                                     ; preds = %block_488040
  %loadMem_488059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6415 = getelementptr inbounds %struct.GPR, %struct.GPR* %6414, i32 0, i32 33
  %6416 = getelementptr inbounds %struct.Reg, %struct.Reg* %6415, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6416 to i64*
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6418 = getelementptr inbounds %struct.GPR, %struct.GPR* %6417, i32 0, i32 1
  %6419 = getelementptr inbounds %struct.Reg, %struct.Reg* %6418, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %6419 to i64*
  %6420 = load i64, i64* %PC.i52
  %6421 = add i64 %6420, 5
  store i64 %6421, i64* %PC.i52
  store i64 5, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_488059, %struct.Memory** %MEMORY
  %loadMem_48805e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6423 = getelementptr inbounds %struct.GPR, %struct.GPR* %6422, i32 0, i32 33
  %6424 = getelementptr inbounds %struct.Reg, %struct.Reg* %6423, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6424 to i64*
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6426 = getelementptr inbounds %struct.GPR, %struct.GPR* %6425, i32 0, i32 11
  %6427 = getelementptr inbounds %struct.Reg, %struct.Reg* %6426, i32 0, i32 0
  %RDI.i50 = bitcast %union.anon* %6427 to i64*
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6429 = getelementptr inbounds %struct.GPR, %struct.GPR* %6428, i32 0, i32 15
  %6430 = getelementptr inbounds %struct.Reg, %struct.Reg* %6429, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %6430 to i64*
  %6431 = load i64, i64* %RBP.i51
  %6432 = sub i64 %6431, 4
  %6433 = load i64, i64* %PC.i49
  %6434 = add i64 %6433, 3
  store i64 %6434, i64* %PC.i49
  %6435 = inttoptr i64 %6432 to i32*
  %6436 = load i32, i32* %6435
  %6437 = zext i32 %6436 to i64
  store i64 %6437, i64* %RDI.i50, align 8
  store %struct.Memory* %loadMem_48805e, %struct.Memory** %MEMORY
  %loadMem_488061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6439 = getelementptr inbounds %struct.GPR, %struct.GPR* %6438, i32 0, i32 33
  %6440 = getelementptr inbounds %struct.Reg, %struct.Reg* %6439, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6440 to i64*
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6442 = getelementptr inbounds %struct.GPR, %struct.GPR* %6441, i32 0, i32 9
  %6443 = getelementptr inbounds %struct.Reg, %struct.Reg* %6442, i32 0, i32 0
  %RSI.i47 = bitcast %union.anon* %6443 to i64*
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6445 = getelementptr inbounds %struct.GPR, %struct.GPR* %6444, i32 0, i32 15
  %6446 = getelementptr inbounds %struct.Reg, %struct.Reg* %6445, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %6446 to i64*
  %6447 = load i64, i64* %RBP.i48
  %6448 = sub i64 %6447, 44
  %6449 = load i64, i64* %PC.i46
  %6450 = add i64 %6449, 3
  store i64 %6450, i64* %PC.i46
  %6451 = inttoptr i64 %6448 to i32*
  %6452 = load i32, i32* %6451
  %6453 = zext i32 %6452 to i64
  store i64 %6453, i64* %RSI.i47, align 8
  store %struct.Memory* %loadMem_488061, %struct.Memory** %MEMORY
  %loadMem_488064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6455 = getelementptr inbounds %struct.GPR, %struct.GPR* %6454, i32 0, i32 33
  %6456 = getelementptr inbounds %struct.Reg, %struct.Reg* %6455, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %6456 to i64*
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6458 = getelementptr inbounds %struct.GPR, %struct.GPR* %6457, i32 0, i32 1
  %6459 = getelementptr inbounds %struct.Reg, %struct.Reg* %6458, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %6459 to i64*
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6461 = getelementptr inbounds %struct.GPR, %struct.GPR* %6460, i32 0, i32 15
  %6462 = getelementptr inbounds %struct.Reg, %struct.Reg* %6461, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %6462 to i64*
  %6463 = load i64, i64* %RAX.i44
  %6464 = load i64, i64* %RBP.i45
  %6465 = sub i64 %6464, 12
  %6466 = load i64, i64* %PC.i43
  %6467 = add i64 %6466, 3
  store i64 %6467, i64* %PC.i43
  %6468 = trunc i64 %6463 to i32
  %6469 = inttoptr i64 %6465 to i32*
  %6470 = load i32, i32* %6469
  %6471 = sub i32 %6468, %6470
  %6472 = zext i32 %6471 to i64
  store i64 %6472, i64* %RAX.i44, align 8
  %6473 = icmp ult i32 %6468, %6470
  %6474 = zext i1 %6473 to i8
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6474, i8* %6475, align 1
  %6476 = and i32 %6471, 255
  %6477 = call i32 @llvm.ctpop.i32(i32 %6476)
  %6478 = trunc i32 %6477 to i8
  %6479 = and i8 %6478, 1
  %6480 = xor i8 %6479, 1
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6480, i8* %6481, align 1
  %6482 = xor i32 %6470, %6468
  %6483 = xor i32 %6482, %6471
  %6484 = lshr i32 %6483, 4
  %6485 = trunc i32 %6484 to i8
  %6486 = and i8 %6485, 1
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6486, i8* %6487, align 1
  %6488 = icmp eq i32 %6471, 0
  %6489 = zext i1 %6488 to i8
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6489, i8* %6490, align 1
  %6491 = lshr i32 %6471, 31
  %6492 = trunc i32 %6491 to i8
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6492, i8* %6493, align 1
  %6494 = lshr i32 %6468, 31
  %6495 = lshr i32 %6470, 31
  %6496 = xor i32 %6495, %6494
  %6497 = xor i32 %6491, %6494
  %6498 = add i32 %6497, %6496
  %6499 = icmp eq i32 %6498, 2
  %6500 = zext i1 %6499 to i8
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6500, i8* %6501, align 1
  store %struct.Memory* %loadMem_488064, %struct.Memory** %MEMORY
  %loadMem_488067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 33
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %6504 to i64*
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 1
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %6507 to i32*
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 7
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %6510 to i64*
  %6511 = load i32, i32* %EAX.i41
  %6512 = zext i32 %6511 to i64
  %6513 = load i64, i64* %PC.i40
  %6514 = add i64 %6513, 2
  store i64 %6514, i64* %PC.i40
  %6515 = and i64 %6512, 4294967295
  store i64 %6515, i64* %RDX.i42, align 8
  store %struct.Memory* %loadMem_488067, %struct.Memory** %MEMORY
  %loadMem1_488069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6517 = getelementptr inbounds %struct.GPR, %struct.GPR* %6516, i32 0, i32 33
  %6518 = getelementptr inbounds %struct.Reg, %struct.Reg* %6517, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %6518 to i64*
  %6519 = load i64, i64* %PC.i39
  %6520 = add i64 %6519, 1943
  %6521 = load i64, i64* %PC.i39
  %6522 = add i64 %6521, 5
  %6523 = load i64, i64* %PC.i39
  %6524 = add i64 %6523, 5
  store i64 %6524, i64* %PC.i39
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6526 = load i64, i64* %6525, align 8
  %6527 = add i64 %6526, -8
  %6528 = inttoptr i64 %6527 to i64*
  store i64 %6522, i64* %6528
  store i64 %6527, i64* %6525, align 8
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6520, i64* %6529, align 8
  store %struct.Memory* %loadMem1_488069, %struct.Memory** %MEMORY
  %loadMem2_488069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_488069 = load i64, i64* %3
  %call2_488069 = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64 %loadPC_488069, %struct.Memory* %loadMem2_488069)
  store %struct.Memory* %call2_488069, %struct.Memory** %MEMORY
  br label %block_.L_48806e

block_.L_48806e:                                  ; preds = %block_488059, %block_488040
  %loadMem1_48806e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 33
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6532 to i64*
  %6533 = load i64, i64* %PC.i38
  %6534 = add i64 %6533, -500494
  %6535 = load i64, i64* %PC.i38
  %6536 = add i64 %6535, 5
  %6537 = load i64, i64* %PC.i38
  %6538 = add i64 %6537, 5
  store i64 %6538, i64* %PC.i38
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6540 = load i64, i64* %6539, align 8
  %6541 = add i64 %6540, -8
  %6542 = inttoptr i64 %6541 to i64*
  store i64 %6536, i64* %6542
  store i64 %6541, i64* %6539, align 8
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6534, i64* %6543, align 8
  store %struct.Memory* %loadMem1_48806e, %struct.Memory** %MEMORY
  %loadMem2_48806e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48806e = load i64, i64* %3
  %call2_48806e = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_48806e, %struct.Memory* %loadMem2_48806e)
  store %struct.Memory* %call2_48806e, %struct.Memory** %MEMORY
  br label %block_.L_488073

block_.L_488073:                                  ; preds = %block_.L_48806e, %block_488018
  %loadMem_488073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 33
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6546 to i64*
  %6547 = load i64, i64* %PC.i37
  %6548 = add i64 %6547, 5
  %6549 = load i64, i64* %PC.i37
  %6550 = add i64 %6549, 5
  store i64 %6550, i64* %PC.i37
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6548, i64* %6551, align 8
  store %struct.Memory* %loadMem_488073, %struct.Memory** %MEMORY
  br label %block_.L_488078

block_.L_488078:                                  ; preds = %block_.L_488073, %block_487ff3
  %loadMem_488078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6553 = getelementptr inbounds %struct.GPR, %struct.GPR* %6552, i32 0, i32 33
  %6554 = getelementptr inbounds %struct.Reg, %struct.Reg* %6553, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6554 to i64*
  %6555 = load i64, i64* %PC.i36
  %6556 = add i64 %6555, 5
  %6557 = load i64, i64* %PC.i36
  %6558 = add i64 %6557, 5
  store i64 %6558, i64* %PC.i36
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6556, i64* %6559, align 8
  store %struct.Memory* %loadMem_488078, %struct.Memory** %MEMORY
  br label %block_.L_48807d

block_.L_48807d:                                  ; preds = %block_.L_488078, %block_.L_487fdf
  %loadMem_48807d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 33
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6562 to i64*
  %6563 = load i64, i64* %PC.i35
  %6564 = add i64 %6563, 5
  %6565 = load i64, i64* %PC.i35
  %6566 = add i64 %6565, 5
  store i64 %6566, i64* %PC.i35
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6564, i64* %6567, align 8
  store %struct.Memory* %loadMem_48807d, %struct.Memory** %MEMORY
  br label %block_.L_488082

block_.L_488082:                                  ; preds = %block_.L_48807d
  %loadMem_488082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6569 = getelementptr inbounds %struct.GPR, %struct.GPR* %6568, i32 0, i32 33
  %6570 = getelementptr inbounds %struct.Reg, %struct.Reg* %6569, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6570 to i64*
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6572 = getelementptr inbounds %struct.GPR, %struct.GPR* %6571, i32 0, i32 1
  %6573 = getelementptr inbounds %struct.Reg, %struct.Reg* %6572, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %6573 to i64*
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6575 = getelementptr inbounds %struct.GPR, %struct.GPR* %6574, i32 0, i32 15
  %6576 = getelementptr inbounds %struct.Reg, %struct.Reg* %6575, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %6576 to i64*
  %6577 = load i64, i64* %RBP.i34
  %6578 = sub i64 %6577, 8
  %6579 = load i64, i64* %PC.i32
  %6580 = add i64 %6579, 3
  store i64 %6580, i64* %PC.i32
  %6581 = inttoptr i64 %6578 to i32*
  %6582 = load i32, i32* %6581
  %6583 = zext i32 %6582 to i64
  store i64 %6583, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_488082, %struct.Memory** %MEMORY
  %loadMem_488085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 33
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %6586 to i64*
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 1
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %6589 to i64*
  %6590 = load i64, i64* %RAX.i31
  %6591 = load i64, i64* %PC.i30
  %6592 = add i64 %6591, 3
  store i64 %6592, i64* %PC.i30
  %6593 = trunc i64 %6590 to i32
  %6594 = add i32 1, %6593
  %6595 = zext i32 %6594 to i64
  store i64 %6595, i64* %RAX.i31, align 8
  %6596 = icmp ult i32 %6594, %6593
  %6597 = icmp ult i32 %6594, 1
  %6598 = or i1 %6596, %6597
  %6599 = zext i1 %6598 to i8
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6599, i8* %6600, align 1
  %6601 = and i32 %6594, 255
  %6602 = call i32 @llvm.ctpop.i32(i32 %6601)
  %6603 = trunc i32 %6602 to i8
  %6604 = and i8 %6603, 1
  %6605 = xor i8 %6604, 1
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6605, i8* %6606, align 1
  %6607 = xor i64 1, %6590
  %6608 = trunc i64 %6607 to i32
  %6609 = xor i32 %6608, %6594
  %6610 = lshr i32 %6609, 4
  %6611 = trunc i32 %6610 to i8
  %6612 = and i8 %6611, 1
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6612, i8* %6613, align 1
  %6614 = icmp eq i32 %6594, 0
  %6615 = zext i1 %6614 to i8
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6615, i8* %6616, align 1
  %6617 = lshr i32 %6594, 31
  %6618 = trunc i32 %6617 to i8
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6618, i8* %6619, align 1
  %6620 = lshr i32 %6593, 31
  %6621 = xor i32 %6617, %6620
  %6622 = add i32 %6621, %6617
  %6623 = icmp eq i32 %6622, 2
  %6624 = zext i1 %6623 to i8
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6624, i8* %6625, align 1
  store %struct.Memory* %loadMem_488085, %struct.Memory** %MEMORY
  %loadMem_488088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 33
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6628 to i64*
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 1
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %EAX.i28 = bitcast %union.anon* %6631 to i32*
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 15
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %6634 to i64*
  %6635 = load i64, i64* %RBP.i29
  %6636 = sub i64 %6635, 8
  %6637 = load i32, i32* %EAX.i28
  %6638 = zext i32 %6637 to i64
  %6639 = load i64, i64* %PC.i27
  %6640 = add i64 %6639, 3
  store i64 %6640, i64* %PC.i27
  %6641 = inttoptr i64 %6636 to i32*
  store i32 %6637, i32* %6641
  store %struct.Memory* %loadMem_488088, %struct.Memory** %MEMORY
  %loadMem_48808b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 33
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %6644 to i64*
  %6645 = load i64, i64* %PC.i26
  %6646 = add i64 %6645, -395
  %6647 = load i64, i64* %PC.i26
  %6648 = add i64 %6647, 5
  store i64 %6648, i64* %PC.i26
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6646, i64* %6649, align 8
  store %struct.Memory* %loadMem_48808b, %struct.Memory** %MEMORY
  br label %block_.L_487f00

block_.L_488090:                                  ; preds = %block_.L_487f00
  %loadMem_488090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 33
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6652 to i64*
  %6653 = load i64, i64* %PC.i25
  %6654 = add i64 %6653, 5
  %6655 = load i64, i64* %PC.i25
  %6656 = add i64 %6655, 5
  store i64 %6656, i64* %PC.i25
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6654, i64* %6657, align 8
  store %struct.Memory* %loadMem_488090, %struct.Memory** %MEMORY
  br label %block_.L_488095

block_.L_488095:                                  ; preds = %block_.L_488090, %block_487eda, %block_.L_487ea8
  %loadMem_488095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 33
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 1
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 15
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %6666 to i64*
  %6667 = load i64, i64* %RBP.i24
  %6668 = sub i64 %6667, 4
  %6669 = load i64, i64* %PC.i22
  %6670 = add i64 %6669, 3
  store i64 %6670, i64* %PC.i22
  %6671 = inttoptr i64 %6668 to i32*
  %6672 = load i32, i32* %6671
  %6673 = zext i32 %6672 to i64
  store i64 %6673, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_488095, %struct.Memory** %MEMORY
  %loadMem_488098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6675 = getelementptr inbounds %struct.GPR, %struct.GPR* %6674, i32 0, i32 33
  %6676 = getelementptr inbounds %struct.Reg, %struct.Reg* %6675, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %6676 to i64*
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 1
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %6679 to i64*
  %6680 = load i64, i64* %RAX.i21
  %6681 = load i64, i64* %PC.i20
  %6682 = add i64 %6681, 3
  store i64 %6682, i64* %PC.i20
  %6683 = trunc i64 %6680 to i32
  %6684 = add i32 1, %6683
  %6685 = zext i32 %6684 to i64
  store i64 %6685, i64* %RAX.i21, align 8
  %6686 = icmp ult i32 %6684, %6683
  %6687 = icmp ult i32 %6684, 1
  %6688 = or i1 %6686, %6687
  %6689 = zext i1 %6688 to i8
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6689, i8* %6690, align 1
  %6691 = and i32 %6684, 255
  %6692 = call i32 @llvm.ctpop.i32(i32 %6691)
  %6693 = trunc i32 %6692 to i8
  %6694 = and i8 %6693, 1
  %6695 = xor i8 %6694, 1
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6695, i8* %6696, align 1
  %6697 = xor i64 1, %6680
  %6698 = trunc i64 %6697 to i32
  %6699 = xor i32 %6698, %6684
  %6700 = lshr i32 %6699, 4
  %6701 = trunc i32 %6700 to i8
  %6702 = and i8 %6701, 1
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6702, i8* %6703, align 1
  %6704 = icmp eq i32 %6684, 0
  %6705 = zext i1 %6704 to i8
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6705, i8* %6706, align 1
  %6707 = lshr i32 %6684, 31
  %6708 = trunc i32 %6707 to i8
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6708, i8* %6709, align 1
  %6710 = lshr i32 %6683, 31
  %6711 = xor i32 %6707, %6710
  %6712 = add i32 %6711, %6707
  %6713 = icmp eq i32 %6712, 2
  %6714 = zext i1 %6713 to i8
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6714, i8* %6715, align 1
  store %struct.Memory* %loadMem_488098, %struct.Memory** %MEMORY
  %loadMem_48809b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 33
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6718 to i64*
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6720 = getelementptr inbounds %struct.GPR, %struct.GPR* %6719, i32 0, i32 1
  %6721 = getelementptr inbounds %struct.Reg, %struct.Reg* %6720, i32 0, i32 0
  %EAX.i18 = bitcast %union.anon* %6721 to i32*
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 15
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %6724 to i64*
  %6725 = load i64, i64* %RBP.i19
  %6726 = sub i64 %6725, 4
  %6727 = load i32, i32* %EAX.i18
  %6728 = zext i32 %6727 to i64
  %6729 = load i64, i64* %PC.i17
  %6730 = add i64 %6729, 3
  store i64 %6730, i64* %PC.i17
  %6731 = inttoptr i64 %6726 to i32*
  store i32 %6727, i32* %6731
  store %struct.Memory* %loadMem_48809b, %struct.Memory** %MEMORY
  %loadMem_48809e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 33
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6734 to i64*
  %6735 = load i64, i64* %PC.i16
  %6736 = add i64 %6735, -570
  %6737 = load i64, i64* %PC.i16
  %6738 = add i64 %6737, 5
  store i64 %6738, i64* %PC.i16
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6736, i64* %6739, align 8
  store %struct.Memory* %loadMem_48809e, %struct.Memory** %MEMORY
  br label %block_.L_487e64

block_.L_4880a3:                                  ; preds = %block_.L_487e64
  %loadMem_4880a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 33
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6742 to i64*
  %6743 = load i64, i64* %PC.i15
  %6744 = add i64 %6743, 8
  store i64 %6744, i64* %PC.i15
  %6745 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6746, align 1
  %6747 = and i32 %6745, 255
  %6748 = call i32 @llvm.ctpop.i32(i32 %6747)
  %6749 = trunc i32 %6748 to i8
  %6750 = and i8 %6749, 1
  %6751 = xor i8 %6750, 1
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6751, i8* %6752, align 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6753, align 1
  %6754 = icmp eq i32 %6745, 0
  %6755 = zext i1 %6754 to i8
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6755, i8* %6756, align 1
  %6757 = lshr i32 %6745, 31
  %6758 = trunc i32 %6757 to i8
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6758, i8* %6759, align 1
  %6760 = lshr i32 %6745, 31
  %6761 = xor i32 %6757, %6760
  %6762 = add i32 %6761, %6760
  %6763 = icmp eq i32 %6762, 2
  %6764 = zext i1 %6763 to i8
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6764, i8* %6765, align 1
  store %struct.Memory* %loadMem_4880a3, %struct.Memory** %MEMORY
  %loadMem_4880ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 33
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6768 to i64*
  %6769 = load i64, i64* %PC.i14
  %6770 = add i64 %6769, 11
  %6771 = load i64, i64* %PC.i14
  %6772 = add i64 %6771, 6
  %6773 = load i64, i64* %PC.i14
  %6774 = add i64 %6773, 6
  store i64 %6774, i64* %PC.i14
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6776 = load i8, i8* %6775, align 1
  %6777 = icmp eq i8 %6776, 0
  %6778 = zext i1 %6777 to i8
  store i8 %6778, i8* %BRANCH_TAKEN, align 1
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6780 = select i1 %6777, i64 %6770, i64 %6772
  store i64 %6780, i64* %6779, align 8
  store %struct.Memory* %loadMem_4880ab, %struct.Memory** %MEMORY
  %loadBr_4880ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4880ab = icmp eq i8 %loadBr_4880ab, 1
  br i1 %cmpBr_4880ab, label %block_.L_4880b6, label %block_4880b1

block_4880b1:                                     ; preds = %block_.L_4880a3
  %loadMem_4880b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6782 = getelementptr inbounds %struct.GPR, %struct.GPR* %6781, i32 0, i32 33
  %6783 = getelementptr inbounds %struct.Reg, %struct.Reg* %6782, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6783 to i64*
  %6784 = load i64, i64* %PC.i13
  %6785 = add i64 %6784, 45
  %6786 = load i64, i64* %PC.i13
  %6787 = add i64 %6786, 5
  store i64 %6787, i64* %PC.i13
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6785, i64* %6788, align 8
  store %struct.Memory* %loadMem_4880b1, %struct.Memory** %MEMORY
  br label %block_.L_4880de

block_.L_4880b6:                                  ; preds = %block_.L_4880a3
  %loadMem_4880b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 33
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6791 to i64*
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 11
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6794 to i64*
  %6795 = load i64, i64* %PC.i12
  %6796 = add i64 %6795, 10
  store i64 %6796, i64* %PC.i12
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4880b6, %struct.Memory** %MEMORY
  %loadMem_4880c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6798 = getelementptr inbounds %struct.GPR, %struct.GPR* %6797, i32 0, i32 33
  %6799 = getelementptr inbounds %struct.Reg, %struct.Reg* %6798, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %6799 to i64*
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6801 = getelementptr inbounds %struct.GPR, %struct.GPR* %6800, i32 0, i32 9
  %6802 = getelementptr inbounds %struct.Reg, %struct.Reg* %6801, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6802 to i64*
  %6803 = load i64, i64* %PC.i11
  %6804 = add i64 %6803, 5
  store i64 %6804, i64* %PC.i11
  store i64 860, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4880c0, %struct.Memory** %MEMORY
  %loadMem_4880c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 33
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6807 to i64*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 7
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6810 to i64*
  %6811 = load i64, i64* %PC.i10
  %6812 = add i64 %6811, 10
  store i64 %6812, i64* %PC.i10
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4880c5, %struct.Memory** %MEMORY
  %loadMem_4880cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6814 = getelementptr inbounds %struct.GPR, %struct.GPR* %6813, i32 0, i32 33
  %6815 = getelementptr inbounds %struct.Reg, %struct.Reg* %6814, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6815 to i64*
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6817 = getelementptr inbounds %struct.GPR, %struct.GPR* %6816, i32 0, i32 1
  %6818 = getelementptr inbounds %struct.Reg, %struct.Reg* %6817, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6818 to i64*
  %6819 = load i64, i64* %PC.i9
  %6820 = add i64 %6819, 5
  store i64 %6820, i64* %PC.i9
  store i64 4294967295, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4880cf, %struct.Memory** %MEMORY
  %loadMem_4880d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 33
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6823 to i64*
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 1
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %EAX.i8 = bitcast %union.anon* %6826 to i32*
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6828 = getelementptr inbounds %struct.GPR, %struct.GPR* %6827, i32 0, i32 5
  %6829 = getelementptr inbounds %struct.Reg, %struct.Reg* %6828, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6829 to i64*
  %6830 = load i32, i32* %EAX.i8
  %6831 = zext i32 %6830 to i64
  %6832 = load i64, i64* %PC.i7
  %6833 = add i64 %6832, 2
  store i64 %6833, i64* %PC.i7
  %6834 = and i64 %6831, 4294967295
  store i64 %6834, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4880d4, %struct.Memory** %MEMORY
  %loadMem_4880d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6836 = getelementptr inbounds %struct.GPR, %struct.GPR* %6835, i32 0, i32 33
  %6837 = getelementptr inbounds %struct.Reg, %struct.Reg* %6836, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6837 to i64*
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6839 = getelementptr inbounds %struct.GPR, %struct.GPR* %6838, i32 0, i32 1
  %6840 = getelementptr inbounds %struct.Reg, %struct.Reg* %6839, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6840 to i32*
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 17
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %6843 to i32*
  %6844 = bitcast i32* %R8D.i to i64*
  %6845 = load i32, i32* %EAX.i
  %6846 = zext i32 %6845 to i64
  %6847 = load i64, i64* %PC.i6
  %6848 = add i64 %6847, 3
  store i64 %6848, i64* %PC.i6
  %6849 = and i64 %6846, 4294967295
  store i64 %6849, i64* %6844, align 8
  store %struct.Memory* %loadMem_4880d6, %struct.Memory** %MEMORY
  %loadMem1_4880d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 33
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6852 to i64*
  %6853 = load i64, i64* %PC.i5
  %6854 = add i64 %6853, -221257
  %6855 = load i64, i64* %PC.i5
  %6856 = add i64 %6855, 5
  %6857 = load i64, i64* %PC.i5
  %6858 = add i64 %6857, 5
  store i64 %6858, i64* %PC.i5
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6860 = load i64, i64* %6859, align 8
  %6861 = add i64 %6860, -8
  %6862 = inttoptr i64 %6861 to i64*
  store i64 %6856, i64* %6862
  store i64 %6861, i64* %6859, align 8
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6854, i64* %6863, align 8
  store %struct.Memory* %loadMem1_4880d9, %struct.Memory** %MEMORY
  %loadMem2_4880d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4880d9 = load i64, i64* %3
  %call2_4880d9 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_4880d9, %struct.Memory* %loadMem2_4880d9)
  store %struct.Memory* %call2_4880d9, %struct.Memory** %MEMORY
  br label %block_.L_4880de

block_.L_4880de:                                  ; preds = %block_.L_4880b6, %block_4880b1
  %loadMem_4880de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6865 = getelementptr inbounds %struct.GPR, %struct.GPR* %6864, i32 0, i32 33
  %6866 = getelementptr inbounds %struct.Reg, %struct.Reg* %6865, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6866 to i64*
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6868 = getelementptr inbounds %struct.GPR, %struct.GPR* %6867, i32 0, i32 13
  %6869 = getelementptr inbounds %struct.Reg, %struct.Reg* %6868, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6869 to i64*
  %6870 = load i64, i64* %RSP.i
  %6871 = load i64, i64* %PC.i4
  %6872 = add i64 %6871, 4
  store i64 %6872, i64* %PC.i4
  %6873 = add i64 64, %6870
  store i64 %6873, i64* %RSP.i, align 8
  %6874 = icmp ult i64 %6873, %6870
  %6875 = icmp ult i64 %6873, 64
  %6876 = or i1 %6874, %6875
  %6877 = zext i1 %6876 to i8
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6877, i8* %6878, align 1
  %6879 = trunc i64 %6873 to i32
  %6880 = and i32 %6879, 255
  %6881 = call i32 @llvm.ctpop.i32(i32 %6880)
  %6882 = trunc i32 %6881 to i8
  %6883 = and i8 %6882, 1
  %6884 = xor i8 %6883, 1
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6884, i8* %6885, align 1
  %6886 = xor i64 64, %6870
  %6887 = xor i64 %6886, %6873
  %6888 = lshr i64 %6887, 4
  %6889 = trunc i64 %6888 to i8
  %6890 = and i8 %6889, 1
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6890, i8* %6891, align 1
  %6892 = icmp eq i64 %6873, 0
  %6893 = zext i1 %6892 to i8
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6893, i8* %6894, align 1
  %6895 = lshr i64 %6873, 63
  %6896 = trunc i64 %6895 to i8
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6896, i8* %6897, align 1
  %6898 = lshr i64 %6870, 63
  %6899 = xor i64 %6895, %6898
  %6900 = add i64 %6899, %6895
  %6901 = icmp eq i64 %6900, 2
  %6902 = zext i1 %6901 to i8
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6902, i8* %6903, align 1
  store %struct.Memory* %loadMem_4880de, %struct.Memory** %MEMORY
  %loadMem_4880e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6905 = getelementptr inbounds %struct.GPR, %struct.GPR* %6904, i32 0, i32 33
  %6906 = getelementptr inbounds %struct.Reg, %struct.Reg* %6905, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6906 to i64*
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 15
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6909 to i64*
  %6910 = load i64, i64* %PC.i2
  %6911 = add i64 %6910, 1
  store i64 %6911, i64* %PC.i2
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6913 = load i64, i64* %6912, align 8
  %6914 = add i64 %6913, 8
  %6915 = inttoptr i64 %6913 to i64*
  %6916 = load i64, i64* %6915
  store i64 %6916, i64* %RBP.i3, align 8
  store i64 %6914, i64* %6912, align 8
  store %struct.Memory* %loadMem_4880e2, %struct.Memory** %MEMORY
  %loadMem_4880e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 33
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6919 to i64*
  %6920 = load i64, i64* %PC.i1
  %6921 = add i64 %6920, 1
  store i64 %6921, i64* %PC.i1
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6924 = load i64, i64* %6923, align 8
  %6925 = inttoptr i64 %6924 to i64*
  %6926 = load i64, i64* %6925
  store i64 %6926, i64* %6922, align 8
  %6927 = add i64 %6924, 8
  store i64 %6927, i64* %6923, align 8
  store %struct.Memory* %loadMem_4880e3, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4880e3
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
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

define %struct.Memory* @routine_jge_.L_487b5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_487a06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_487a1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487a1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487b51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_487a32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487a49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58312b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58312b_type* @G__0x58312b to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xa__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
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
  %25 = xor i32 %14, 10
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

define %struct.Memory* @routine_jge_.L_487ae9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x64__rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 100
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x3c__rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 60
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xb4__rdx__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 180
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
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

define %struct.Memory* @routine_movl__0x0__0x8c__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 140
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_487a50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.propagate_worm(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_487b4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0x400___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1024, %9
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

define %struct.Memory* @routine_jne_.L_487b24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487b3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x583146___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583146_type* @G__0x583146 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.change_attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4879cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
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

define %struct.Memory* @routine_jne_.L_487b72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487b9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2fc___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 764, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.find_attack_patterns(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487bb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487bda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x300___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 768, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_487de2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_487c18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487c2c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487c31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487dd4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_487dcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487c66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487c7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58316a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58316a_type* @G__0x58316a to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_487ce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487ca9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487cc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x583186___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583186_type* @G__0x583186 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_487cdb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.change_defense(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487dca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487dc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x582f5f_type* @G__0x582f5f to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_movl___rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_487dc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_je_.L_487dbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_jne_.L_487d92(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487db6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5831aa___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5831aa_type* @G__0x5831aa to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_487dbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_487dc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_487dcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_487be1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_487df5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487e1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x324___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 804, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.find_defense_patterns(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487e35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487e5d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x328___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 808, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4880a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_487e94(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_487ea8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487ead(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_488095(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jne_.L_487edf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0xf1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 241, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xae4250___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xae4250_type* @G__0xae4250 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_jge_.L_488090(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xae4250___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11420240
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack_move_known(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487fdf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_487fda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_487f81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_487fd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487fa2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487fb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_je_.L_487fd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_487fd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_487fdf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.defense_move_known(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_48807d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_488078(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_488073(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_je_.L_48806e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_jmpq_.L_488078(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_48807d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_488082(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_487f00(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_487e64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4880b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4880de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x35c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 860, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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
