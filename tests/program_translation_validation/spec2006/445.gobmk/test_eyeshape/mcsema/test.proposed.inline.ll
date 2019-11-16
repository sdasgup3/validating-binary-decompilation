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
%G_0xab0f28_type = type <{ [4 x i8] }>
%G__0x57d7b6_type = type <{ [8 x i8] }>
%G__0x57dbcc_type = type <{ [8 x i8] }>
%G__0x57dbe7_type = type <{ [8 x i8] }>
%G__0x57dc04_type = type <{ [8 x i8] }>
%G__0x57dc2f_type = type <{ [8 x i8] }>
%G__0x57dc4b_type = type <{ [8 x i8] }>
%G__0x57dc62_type = type <{ [8 x i8] }>
%G__0x57dc7c_type = type <{ [8 x i8] }>
%G__0x57dc94_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
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
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G__0x57d7b6 = global %G__0x57d7b6_type zeroinitializer
@G__0x57dbcc = global %G__0x57dbcc_type zeroinitializer
@G__0x57dbe7 = global %G__0x57dbe7_type zeroinitializer
@G__0x57dc04 = global %G__0x57dc04_type zeroinitializer
@G__0x57dc2f = global %G__0x57dc2f_type zeroinitializer
@G__0x57dc4b = global %G__0x57dc4b_type zeroinitializer
@G__0x57dc62 = global %G__0x57dc62_type zeroinitializer
@G__0x57dc7c = global %G__0x57dc7c_type zeroinitializer
@G__0x57dc94 = global %G__0x57dc94_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer

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

declare %struct.Memory* @sub_408b90.clear_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40e310.play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_474e00.showboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_407d50.store_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_407f00.restore_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_446910.owl_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44aac0.owl_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @test_eyeshape(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_43da80 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43da80, %struct.Memory** %MEMORY
  %loadMem_43da81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i869 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i869
  %27 = load i64, i64* %PC.i868
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i868
  store i64 %26, i64* %RBP.i870, align 8
  store %struct.Memory* %loadMem_43da81, %struct.Memory** %MEMORY
  %loadMem_43da84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i892 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i892
  %36 = load i64, i64* %PC.i891
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i891
  %38 = sub i64 %35, 6624
  store i64 %38, i64* %RSP.i892, align 8
  %39 = icmp ult i64 %35, 6624
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
  %49 = xor i64 6624, %35
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
  store %struct.Memory* %loadMem_43da84, %struct.Memory** %MEMORY
  %loadMem_43da8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i960 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i961 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i961
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i960
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i959
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i959
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_43da8b, %struct.Memory** %MEMORY
  %loadMem_43da8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RSI.i982 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i983 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i983
  %93 = sub i64 %92, 16
  %94 = load i64, i64* %RSI.i982
  %95 = load i64, i64* %PC.i981
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i981
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_43da8e, %struct.Memory** %MEMORY
  %loadMem_43da92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 15
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %RBP.i980 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %RBP.i980
  %105 = sub i64 %104, 1640
  %106 = load i64, i64* %PC.i979
  %107 = add i64 %106, 10
  store i64 %107, i64* %PC.i979
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108
  store %struct.Memory* %loadMem_43da92, %struct.Memory** %MEMORY
  %loadMem1_43da9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %PC.i978
  %113 = add i64 %112, -216844
  %114 = load i64, i64* %PC.i978
  %115 = add i64 %114, 5
  %116 = load i64, i64* %PC.i978
  %117 = add i64 %116, 5
  store i64 %117, i64* %PC.i978
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %115, i64* %121
  store i64 %120, i64* %118, align 8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %113, i64* %122, align 8
  store %struct.Memory* %loadMem1_43da9c, %struct.Memory** %MEMORY
  %loadMem2_43da9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43da9c = load i64, i64* %3
  %call2_43da9c = call %struct.Memory* @sub_408b90.clear_board(%struct.State* %0, i64 %loadPC_43da9c, %struct.Memory* %loadMem2_43da9c)
  store %struct.Memory* %call2_43da9c, %struct.Memory** %MEMORY
  %loadMem1_43daa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %PC.i977
  %127 = add i64 %126, -98001
  %128 = load i64, i64* %PC.i977
  %129 = add i64 %128, 5
  %130 = load i64, i64* %PC.i977
  %131 = add i64 %130, 5
  store i64 %131, i64* %PC.i977
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %129, i64* %135
  store i64 %134, i64* %132, align 8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %127, i64* %136, align 8
  store %struct.Memory* %loadMem1_43daa1, %struct.Memory** %MEMORY
  %loadMem2_43daa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43daa1 = load i64, i64* %3
  %call2_43daa1 = call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* %0, i64 %loadPC_43daa1, %struct.Memory* %loadMem2_43daa1)
  store %struct.Memory* %call2_43daa1, %struct.Memory** %MEMORY
  %loadMem_43daa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %ESI.i975 = bitcast %union.anon* %142 to i32*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RSI.i976 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RSI.i976
  %147 = load i32, i32* %ESI.i975
  %148 = zext i32 %147 to i64
  %149 = load i64, i64* %PC.i974
  %150 = add i64 %149, 2
  store i64 %150, i64* %PC.i974
  %151 = xor i64 %148, %146
  %152 = trunc i64 %151 to i32
  %153 = and i64 %151, 4294967295
  store i64 %153, i64* %RSI.i976, align 8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %154, align 1
  %155 = and i32 %152, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %159, i8* %160, align 1
  %161 = icmp eq i32 %152, 0
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %162, i8* %163, align 1
  %164 = lshr i32 %152, 31
  %165 = trunc i32 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %165, i8* %166, align 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %167, align 1
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %168, align 1
  store %struct.Memory* %loadMem_43daa6, %struct.Memory** %MEMORY
  %loadMem_43daa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 11
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RDI.i973 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %PC.i972
  %176 = add i64 %175, 5
  store i64 %176, i64* %PC.i972
  store i64 1600, i64* %RDI.i973, align 8
  store %struct.Memory* %loadMem_43daa8, %struct.Memory** %MEMORY
  %loadMem_43daad = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 11
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %EDI.i970 = bitcast %union.anon* %182 to i32*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RDX.i971 = bitcast %union.anon* %185 to i64*
  %186 = load i32, i32* %EDI.i970
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %PC.i969
  %189 = add i64 %188, 2
  store i64 %189, i64* %PC.i969
  %190 = and i64 %187, 4294967295
  store i64 %190, i64* %RDX.i971, align 8
  store %struct.Memory* %loadMem_43daad, %struct.Memory** %MEMORY
  %loadMem_43daaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i968 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RBP.i968
  %201 = sub i64 %200, 1632
  %202 = load i64, i64* %PC.i966
  %203 = add i64 %202, 7
  store i64 %203, i64* %PC.i966
  store i64 %201, i64* %RAX.i967, align 8
  store %struct.Memory* %loadMem_43daaf, %struct.Memory** %MEMORY
  %loadMem_43dab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RAX.i964 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 11
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RDI.i965 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RAX.i964
  %214 = load i64, i64* %PC.i963
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC.i963
  store i64 %213, i64* %RDI.i965, align 8
  store %struct.Memory* %loadMem_43dab6, %struct.Memory** %MEMORY
  %loadMem1_43dab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %PC.i962
  %220 = add i64 %219, -248393
  %221 = load i64, i64* %PC.i962
  %222 = add i64 %221, 5
  %223 = load i64, i64* %PC.i962
  %224 = add i64 %223, 5
  store i64 %224, i64* %PC.i962
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %226, -8
  %228 = inttoptr i64 %227 to i64*
  store i64 %222, i64* %228
  store i64 %227, i64* %225, align 8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %220, i64* %229, align 8
  store %struct.Memory* %loadMem1_43dab9, %struct.Memory** %MEMORY
  %loadMem2_43dab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dab9 = load i64, i64* %3
  %230 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_43dab9)
  store %struct.Memory* %230, %struct.Memory** %MEMORY
  %loadMem_43dabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 15
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RBP.i958 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %RBP.i958
  %238 = sub i64 %237, 20
  %239 = load i64, i64* %PC.i957
  %240 = add i64 %239, 7
  store i64 %240, i64* %PC.i957
  %241 = inttoptr i64 %238 to i32*
  store i32 0, i32* %241
  store %struct.Memory* %loadMem_43dabe, %struct.Memory** %MEMORY
  br label %block_.L_43dac5

block_.L_43dac5:                                  ; preds = %block_.L_43db8e, %entry
  %loadMem_43dac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RBP.i956 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %RBP.i956
  %252 = sub i64 %251, 20
  %253 = load i64, i64* %PC.i954
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC.i954
  %255 = inttoptr i64 %252 to i32*
  %256 = load i32, i32* %255
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX.i955, align 8
  store %struct.Memory* %loadMem_43dac5, %struct.Memory** %MEMORY
  %loadMem_43dac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %EAX.i952 = bitcast %union.anon* %263 to i32*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i953 = bitcast %union.anon* %266 to i64*
  %267 = load i32, i32* %EAX.i952
  %268 = zext i32 %267 to i64
  %269 = load i64, i64* %RBP.i953
  %270 = sub i64 %269, 4
  %271 = load i64, i64* %PC.i951
  %272 = add i64 %271, 3
  store i64 %272, i64* %PC.i951
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273
  %275 = sub i32 %267, %274
  %276 = icmp ult i32 %267, %274
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %277, i8* %278, align 1
  %279 = and i32 %275, 255
  %280 = call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %283, i8* %284, align 1
  %285 = xor i32 %274, %267
  %286 = xor i32 %285, %275
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %289, i8* %290, align 1
  %291 = icmp eq i32 %275, 0
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %292, i8* %293, align 1
  %294 = lshr i32 %275, 31
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %295, i8* %296, align 1
  %297 = lshr i32 %267, 31
  %298 = lshr i32 %274, 31
  %299 = xor i32 %298, %297
  %300 = xor i32 %294, %297
  %301 = add i32 %300, %299
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %303, i8* %304, align 1
  store %struct.Memory* %loadMem_43dac8, %struct.Memory** %MEMORY
  %loadMem_43dacb = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %PC.i950
  %309 = add i64 %308, 232
  %310 = load i64, i64* %PC.i950
  %311 = add i64 %310, 6
  %312 = load i64, i64* %PC.i950
  %313 = add i64 %312, 6
  store i64 %313, i64* %PC.i950
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %315 = load i8, i8* %314, align 1
  %316 = icmp ne i8 %315, 0
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %318 = load i8, i8* %317, align 1
  %319 = icmp ne i8 %318, 0
  %320 = xor i1 %316, %319
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %BRANCH_TAKEN, align 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %324 = select i1 %320, i64 %311, i64 %309
  store i64 %324, i64* %323, align 8
  store %struct.Memory* %loadMem_43dacb, %struct.Memory** %MEMORY
  %loadBr_43dacb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dacb = icmp eq i8 %loadBr_43dacb, 1
  br i1 %cmpBr_43dacb, label %block_.L_43dbb3, label %block_43dad1

block_43dad1:                                     ; preds = %block_.L_43dac5
  %loadMem_43dad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RAX.i948 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i949 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i949
  %335 = sub i64 %334, 16
  %336 = load i64, i64* %PC.i947
  %337 = add i64 %336, 4
  store i64 %337, i64* %PC.i947
  %338 = inttoptr i64 %335 to i64*
  %339 = load i64, i64* %338
  store i64 %339, i64* %RAX.i948, align 8
  store %struct.Memory* %loadMem_43dad1, %struct.Memory** %MEMORY
  %loadMem_43dad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 5
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RCX.i945 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i946
  %350 = sub i64 %349, 20
  %351 = load i64, i64* %PC.i944
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC.i944
  %353 = inttoptr i64 %350 to i32*
  %354 = load i32, i32* %353
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %RCX.i945, align 8
  store %struct.Memory* %loadMem_43dad5, %struct.Memory** %MEMORY
  %loadMem_43dad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RAX.i942 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RCX.i943 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %RAX.i942
  %366 = load i64, i64* %RCX.i943
  %367 = mul i64 %366, 4
  %368 = add i64 %367, %365
  %369 = load i64, i64* %PC.i941
  %370 = add i64 %369, 7
  store i64 %370, i64* %PC.i941
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371
  %373 = sub i32 %372, 421
  %374 = icmp ult i32 %372, 421
  %375 = zext i1 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %375, i8* %376, align 1
  %377 = and i32 %373, 255
  %378 = call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %381, i8* %382, align 1
  %383 = xor i32 %372, 421
  %384 = xor i32 %383, %373
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %387, i8* %388, align 1
  %389 = icmp eq i32 %373, 0
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %390, i8* %391, align 1
  %392 = lshr i32 %373, 31
  %393 = trunc i32 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %393, i8* %394, align 1
  %395 = lshr i32 %372, 31
  %396 = xor i32 %392, %395
  %397 = add i32 %396, %395
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %399, i8* %400, align 1
  store %struct.Memory* %loadMem_43dad9, %struct.Memory** %MEMORY
  %loadMem_43dae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i940
  %405 = add i64 %404, 40
  %406 = load i64, i64* %PC.i940
  %407 = add i64 %406, 6
  %408 = load i64, i64* %PC.i940
  %409 = add i64 %408, 6
  store i64 %409, i64* %PC.i940
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %411 = load i8, i8* %410, align 1
  %412 = icmp eq i8 %411, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %BRANCH_TAKEN, align 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %415 = select i1 %412, i64 %405, i64 %407
  store i64 %415, i64* %414, align 8
  store %struct.Memory* %loadMem_43dae0, %struct.Memory** %MEMORY
  %loadBr_43dae0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dae0 = icmp eq i8 %loadBr_43dae0, 1
  br i1 %cmpBr_43dae0, label %block_.L_43db08, label %block_43dae6

block_43dae6:                                     ; preds = %block_43dad1
  %loadMem_43dae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 33
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %418 to i64*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 1
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RAX.i938 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 15
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %RBP.i939 = bitcast %union.anon* %424 to i64*
  %425 = load i64, i64* %RBP.i939
  %426 = sub i64 %425, 16
  %427 = load i64, i64* %PC.i937
  %428 = add i64 %427, 4
  store i64 %428, i64* %PC.i937
  %429 = inttoptr i64 %426 to i64*
  %430 = load i64, i64* %429
  store i64 %430, i64* %RAX.i938, align 8
  store %struct.Memory* %loadMem_43dae6, %struct.Memory** %MEMORY
  %loadMem_43daea = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RCX.i935 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 15
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RBP.i936 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RBP.i936
  %441 = sub i64 %440, 20
  %442 = load i64, i64* %PC.i934
  %443 = add i64 %442, 4
  store i64 %443, i64* %PC.i934
  %444 = inttoptr i64 %441 to i32*
  %445 = load i32, i32* %444
  %446 = sext i32 %445 to i64
  store i64 %446, i64* %RCX.i935, align 8
  store %struct.Memory* %loadMem_43daea, %struct.Memory** %MEMORY
  %loadMem_43daee = load %struct.Memory*, %struct.Memory** %MEMORY
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 33
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RAX.i932 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 5
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RCX.i933 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RAX.i932
  %457 = load i64, i64* %RCX.i933
  %458 = mul i64 %457, 4
  %459 = add i64 %458, %456
  %460 = load i64, i64* %PC.i931
  %461 = add i64 %460, 4
  store i64 %461, i64* %PC.i931
  %462 = inttoptr i64 %459 to i32*
  %463 = load i32, i32* %462
  %464 = sext i32 %463 to i64
  store i64 %464, i64* %RAX.i932, align 8
  store %struct.Memory* %loadMem_43daee, %struct.Memory** %MEMORY
  %loadMem_43daf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RAX.i929 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 7
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RDX.i930 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RAX.i929
  %475 = add i64 %474, 12099168
  %476 = load i64, i64* %PC.i928
  %477 = add i64 %476, 8
  store i64 %477, i64* %PC.i928
  %478 = inttoptr i64 %475 to i8*
  %479 = load i8, i8* %478
  %480 = zext i8 %479 to i64
  store i64 %480, i64* %RDX.i930, align 8
  store %struct.Memory* %loadMem_43daf2, %struct.Memory** %MEMORY
  %loadMem_43dafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 7
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %EDX.i927 = bitcast %union.anon* %486 to i32*
  %487 = load i32, i32* %EDX.i927
  %488 = zext i32 %487 to i64
  %489 = load i64, i64* %PC.i926
  %490 = add i64 %489, 3
  store i64 %490, i64* %PC.i926
  %491 = sub i32 %487, 3
  %492 = icmp ult i32 %487, 3
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %493, i8* %494, align 1
  %495 = and i32 %491, 255
  %496 = call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %499, i8* %500, align 1
  %501 = xor i64 3, %488
  %502 = trunc i64 %501 to i32
  %503 = xor i32 %502, %491
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %506, i8* %507, align 1
  %508 = icmp eq i32 %491, 0
  %509 = zext i1 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %509, i8* %510, align 1
  %511 = lshr i32 %491, 31
  %512 = trunc i32 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %512, i8* %513, align 1
  %514 = lshr i32 %487, 31
  %515 = xor i32 %511, %514
  %516 = add i32 %515, %514
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %518, i8* %519, align 1
  store %struct.Memory* %loadMem_43dafa, %struct.Memory** %MEMORY
  %loadMem_43dafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %PC.i925
  %524 = add i64 %523, 11
  %525 = load i64, i64* %PC.i925
  %526 = add i64 %525, 6
  %527 = load i64, i64* %PC.i925
  %528 = add i64 %527, 6
  store i64 %528, i64* %PC.i925
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %530 = load i8, i8* %529, align 1
  store i8 %530, i8* %BRANCH_TAKEN, align 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %532 = icmp ne i8 %530, 0
  %533 = select i1 %532, i64 %524, i64 %526
  store i64 %533, i64* %531, align 8
  store %struct.Memory* %loadMem_43dafd, %struct.Memory** %MEMORY
  %loadBr_43dafd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dafd = icmp eq i8 %loadBr_43dafd, 1
  br i1 %cmpBr_43dafd, label %block_.L_43db08, label %block_43db03

block_43db03:                                     ; preds = %block_43dae6
  %loadMem_43db03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %536 to i64*
  %537 = load i64, i64* %PC.i924
  %538 = add i64 %537, 139
  %539 = load i64, i64* %PC.i924
  %540 = add i64 %539, 5
  store i64 %540, i64* %PC.i924
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %538, i64* %541, align 8
  store %struct.Memory* %loadMem_43db03, %struct.Memory** %MEMORY
  br label %block_.L_43db8e

block_.L_43db08:                                  ; preds = %block_43dae6, %block_43dad1
  %loadMem_43db08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 33
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 11
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %RDI.i923 = bitcast %union.anon* %547 to i64*
  %548 = load i64, i64* %PC.i922
  %549 = add i64 %548, 10
  store i64 %549, i64* %PC.i922
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i923, align 8
  store %struct.Memory* %loadMem_43db08, %struct.Memory** %MEMORY
  %loadMem_43db12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 9
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RSI.i921 = bitcast %union.anon* %555 to i64*
  %556 = load i64, i64* %PC.i920
  %557 = add i64 %556, 5
  store i64 %557, i64* %PC.i920
  store i64 1909, i64* %RSI.i921, align 8
  store %struct.Memory* %loadMem_43db12, %struct.Memory** %MEMORY
  %loadMem_43db17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 7
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RDX.i919 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %PC.i918
  %565 = add i64 %564, 10
  store i64 %565, i64* %PC.i918
  store i64 ptrtoint (%G__0x57dbcc_type* @G__0x57dbcc to i64), i64* %RDX.i919, align 8
  store %struct.Memory* %loadMem_43db17, %struct.Memory** %MEMORY
  %loadMem_43db21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RAX.i917 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %PC.i916
  %573 = add i64 %572, 5
  store i64 %573, i64* %PC.i916
  store i64 20, i64* %RAX.i917, align 8
  store %struct.Memory* %loadMem_43db21, %struct.Memory** %MEMORY
  %loadMem_43db26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 5
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RCX.i914 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 15
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %582 to i64*
  %583 = load i64, i64* %RBP.i915
  %584 = sub i64 %583, 16
  %585 = load i64, i64* %PC.i913
  %586 = add i64 %585, 4
  store i64 %586, i64* %PC.i913
  %587 = inttoptr i64 %584 to i64*
  %588 = load i64, i64* %587
  store i64 %588, i64* %RCX.i914, align 8
  store %struct.Memory* %loadMem_43db26, %struct.Memory** %MEMORY
  %loadMem_43db2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 15
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RBP.i911 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 17
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %R8.i912 = bitcast %union.anon* %597 to i64*
  %598 = load i64, i64* %RBP.i911
  %599 = sub i64 %598, 20
  %600 = load i64, i64* %PC.i910
  %601 = add i64 %600, 4
  store i64 %601, i64* %PC.i910
  %602 = inttoptr i64 %599 to i32*
  %603 = load i32, i32* %602
  %604 = sext i32 %603 to i64
  store i64 %604, i64* %R8.i912, align 8
  store %struct.Memory* %loadMem_43db2a, %struct.Memory** %MEMORY
  %loadMem_43db2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 19
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %R9D.i907 = bitcast %union.anon* %610 to i32*
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 5
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %RCX.i908 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 17
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %R8.i909 = bitcast %union.anon* %616 to i64*
  %617 = bitcast i32* %R9D.i907 to i64*
  %618 = load i64, i64* %RCX.i908
  %619 = load i64, i64* %R8.i909
  %620 = mul i64 %619, 4
  %621 = add i64 %620, %618
  %622 = load i64, i64* %PC.i906
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC.i906
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %617, align 8
  store %struct.Memory* %loadMem_43db2e, %struct.Memory** %MEMORY
  %loadMem_43db32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 1
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %EAX.i904 = bitcast %union.anon* %632 to i32*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 15
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RBP.i905 = bitcast %union.anon* %635 to i64*
  %636 = load i64, i64* %RBP.i905
  %637 = sub i64 %636, 6564
  %638 = load i32, i32* %EAX.i904
  %639 = zext i32 %638 to i64
  %640 = load i64, i64* %PC.i903
  %641 = add i64 %640, 6
  store i64 %641, i64* %PC.i903
  %642 = inttoptr i64 %637 to i32*
  store i32 %638, i32* %642
  store %struct.Memory* %loadMem_43db32, %struct.Memory** %MEMORY
  %loadMem_43db38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 19
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %R9D.i901 = bitcast %union.anon* %648 to i32*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RAX.i902 = bitcast %union.anon* %651 to i64*
  %652 = load i32, i32* %R9D.i901
  %653 = zext i32 %652 to i64
  %654 = load i64, i64* %PC.i900
  %655 = add i64 %654, 3
  store i64 %655, i64* %PC.i900
  %656 = and i64 %653, 4294967295
  store i64 %656, i64* %RAX.i902, align 8
  store %struct.Memory* %loadMem_43db38, %struct.Memory** %MEMORY
  %loadMem_43db3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 7
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %RDX.i898 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 15
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %RBP.i899
  %667 = sub i64 %666, 6576
  %668 = load i64, i64* %RDX.i898
  %669 = load i64, i64* %PC.i897
  %670 = add i64 %669, 7
  store i64 %670, i64* %PC.i897
  %671 = inttoptr i64 %667 to i64*
  store i64 %668, i64* %671
  store %struct.Memory* %loadMem_43db3b, %struct.Memory** %MEMORY
  %loadMem_43db42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %674 to i64*
  %675 = load i64, i64* %PC.i896
  %676 = add i64 %675, 1
  store i64 %676, i64* %PC.i896
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %679 = bitcast %union.anon* %678 to i32*
  %680 = load i32, i32* %679, align 8
  %681 = sext i32 %680 to i64
  %682 = lshr i64 %681, 32
  store i64 %682, i64* %677, align 8
  store %struct.Memory* %loadMem_43db42, %struct.Memory** %MEMORY
  %loadMem_43db43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 19
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %R9D.i894 = bitcast %union.anon* %688 to i32*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 15
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %691 to i64*
  %692 = bitcast i32* %R9D.i894 to i64*
  %693 = load i64, i64* %RBP.i895
  %694 = sub i64 %693, 6564
  %695 = load i64, i64* %PC.i893
  %696 = add i64 %695, 7
  store i64 %696, i64* %PC.i893
  %697 = inttoptr i64 %694 to i32*
  %698 = load i32, i32* %697
  %699 = zext i32 %698 to i64
  store i64 %699, i64* %692, align 8
  store %struct.Memory* %loadMem_43db43, %struct.Memory** %MEMORY
  %loadMem_43db4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 33
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 19
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %R9D.i889 = bitcast %union.anon* %705 to i32*
  %706 = load i32, i32* %R9D.i889
  %707 = zext i32 %706 to i64
  %708 = load i64, i64* %PC.i888
  %709 = add i64 %708, 3
  store i64 %709, i64* %PC.i888
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %711 = bitcast %union.anon* %710 to i32*
  %712 = load i32, i32* %711, align 8
  %713 = zext i32 %712 to i64
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %715 = bitcast %union.anon* %714 to i32*
  %716 = load i32, i32* %715, align 8
  %717 = zext i32 %716 to i64
  %718 = shl i64 %707, 32
  %719 = ashr exact i64 %718, 32
  %720 = shl i64 %717, 32
  %721 = or i64 %720, %713
  %722 = sdiv i64 %721, %719
  %723 = shl i64 %722, 32
  %724 = ashr exact i64 %723, 32
  %725 = icmp eq i64 %722, %724
  br i1 %725, label %730, label %726

; <label>:726:                                    ; preds = %block_.L_43db08
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %728 = load i64, i64* %727, align 8
  %729 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %728, %struct.Memory* %loadMem_43db4a)
  br label %routine_idivl__r9d.exit890

; <label>:730:                                    ; preds = %block_.L_43db08
  %731 = srem i64 %721, %719
  %732 = getelementptr inbounds %union.anon, %union.anon* %710, i64 0, i32 0
  %733 = and i64 %722, 4294967295
  store i64 %733, i64* %732, align 8
  %734 = getelementptr inbounds %union.anon, %union.anon* %714, i64 0, i32 0
  %735 = and i64 %731, 4294967295
  store i64 %735, i64* %734, align 8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %736, align 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %737, align 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %738, align 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %739, align 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %740, align 1
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %741, align 1
  br label %routine_idivl__r9d.exit890

routine_idivl__r9d.exit890:                       ; preds = %726, %730
  %742 = phi %struct.Memory* [ %729, %726 ], [ %loadMem_43db4a, %730 ]
  store %struct.Memory* %742, %struct.Memory** %MEMORY
  %loadMem_43db4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 1
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RAX.i887 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RAX.i887
  %750 = load i64, i64* %PC.i886
  %751 = add i64 %750, 3
  store i64 %751, i64* %PC.i886
  %752 = trunc i64 %749 to i32
  %753 = sub i32 %752, 1
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX.i887, align 8
  %755 = icmp ult i32 %752, 1
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %756, i8* %757, align 1
  %758 = and i32 %753, 255
  %759 = call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %762, i8* %763, align 1
  %764 = xor i64 1, %749
  %765 = trunc i64 %764 to i32
  %766 = xor i32 %765, %753
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %769, i8* %770, align 1
  %771 = icmp eq i32 %753, 0
  %772 = zext i1 %771 to i8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %772, i8* %773, align 1
  %774 = lshr i32 %753, 31
  %775 = trunc i32 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %775, i8* %776, align 1
  %777 = lshr i32 %752, 31
  %778 = xor i32 %774, %777
  %779 = add i32 %778, %777
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %781, i8* %782, align 1
  store %struct.Memory* %loadMem_43db4d, %struct.Memory** %MEMORY
  %loadMem_43db50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 33
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %785 to i64*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 5
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RCX.i884 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 15
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %791 to i64*
  %792 = load i64, i64* %RBP.i885
  %793 = sub i64 %792, 16
  %794 = load i64, i64* %PC.i883
  %795 = add i64 %794, 4
  store i64 %795, i64* %PC.i883
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796
  store i64 %797, i64* %RCX.i884, align 8
  store %struct.Memory* %loadMem_43db50, %struct.Memory** %MEMORY
  %loadMem_43db54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 15
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %803 to i64*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 17
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %R8.i882 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %RBP.i881
  %808 = sub i64 %807, 20
  %809 = load i64, i64* %PC.i880
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC.i880
  %811 = inttoptr i64 %808 to i32*
  %812 = load i32, i32* %811
  %813 = sext i32 %812 to i64
  store i64 %813, i64* %R8.i882, align 8
  store %struct.Memory* %loadMem_43db54, %struct.Memory** %MEMORY
  %loadMem_43db58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 21
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %R10D.i878 = bitcast %union.anon* %819 to i32*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 5
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RCX.i879 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 17
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %R8.i = bitcast %union.anon* %825 to i64*
  %826 = bitcast i32* %R10D.i878 to i64*
  %827 = load i64, i64* %RCX.i879
  %828 = load i64, i64* %R8.i
  %829 = mul i64 %828, 4
  %830 = add i64 %829, %827
  %831 = load i64, i64* %PC.i877
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC.i877
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %826, align 8
  store %struct.Memory* %loadMem_43db58, %struct.Memory** %MEMORY
  %loadMem_43db5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 1
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %EAX.i875 = bitcast %union.anon* %841 to i32*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i876 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RBP.i876
  %846 = sub i64 %845, 6580
  %847 = load i32, i32* %EAX.i875
  %848 = zext i32 %847 to i64
  %849 = load i64, i64* %PC.i874
  %850 = add i64 %849, 6
  store i64 %850, i64* %PC.i874
  %851 = inttoptr i64 %846 to i32*
  store i32 %847, i32* %851
  store %struct.Memory* %loadMem_43db5c, %struct.Memory** %MEMORY
  %loadMem_43db62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 21
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %857 to i32*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 1
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RAX.i873 = bitcast %union.anon* %860 to i64*
  %861 = load i32, i32* %R10D.i
  %862 = zext i32 %861 to i64
  %863 = load i64, i64* %PC.i872
  %864 = add i64 %863, 3
  store i64 %864, i64* %PC.i872
  %865 = and i64 %862, 4294967295
  store i64 %865, i64* %RAX.i873, align 8
  store %struct.Memory* %loadMem_43db62, %struct.Memory** %MEMORY
  %loadMem_43db65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %PC.i871
  %870 = add i64 %869, 1
  store i64 %870, i64* %PC.i871
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %873 = bitcast %union.anon* %872 to i32*
  %874 = load i32, i32* %873, align 8
  %875 = sext i32 %874 to i64
  %876 = lshr i64 %875, 32
  store i64 %876, i64* %871, align 8
  store %struct.Memory* %loadMem_43db65, %struct.Memory** %MEMORY
  %loadMem_43db66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 19
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %882 to i32*
  %883 = load i32, i32* %R9D.i
  %884 = zext i32 %883 to i64
  %885 = load i64, i64* %PC.i867
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC.i867
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %888 = bitcast %union.anon* %887 to i32*
  %889 = load i32, i32* %888, align 8
  %890 = zext i32 %889 to i64
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %892 = bitcast %union.anon* %891 to i32*
  %893 = load i32, i32* %892, align 8
  %894 = zext i32 %893 to i64
  %895 = shl i64 %884, 32
  %896 = ashr exact i64 %895, 32
  %897 = shl i64 %894, 32
  %898 = or i64 %897, %890
  %899 = sdiv i64 %898, %896
  %900 = shl i64 %899, 32
  %901 = ashr exact i64 %900, 32
  %902 = icmp eq i64 %899, %901
  br i1 %902, label %907, label %903

; <label>:903:                                    ; preds = %routine_idivl__r9d.exit890
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %905 = load i64, i64* %904, align 8
  %906 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %905, %struct.Memory* %loadMem_43db66)
  br label %routine_idivl__r9d.exit

; <label>:907:                                    ; preds = %routine_idivl__r9d.exit890
  %908 = srem i64 %898, %896
  %909 = getelementptr inbounds %union.anon, %union.anon* %887, i64 0, i32 0
  %910 = and i64 %899, 4294967295
  store i64 %910, i64* %909, align 8
  %911 = getelementptr inbounds %union.anon, %union.anon* %891, i64 0, i32 0
  %912 = and i64 %908, 4294967295
  store i64 %912, i64* %911, align 8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %913, align 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %914, align 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %915, align 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %916, align 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %917, align 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %918, align 1
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %903, %907
  %919 = phi %struct.Memory* [ %906, %903 ], [ %loadMem_43db66, %907 ]
  store %struct.Memory* %919, %struct.Memory** %MEMORY
  %loadMem_43db69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 7
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RDX.i866 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %RDX.i866
  %927 = load i64, i64* %PC.i865
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC.i865
  %929 = trunc i64 %926 to i32
  %930 = sub i32 %929, 1
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RDX.i866, align 8
  %932 = icmp ult i32 %929, 1
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %933, i8* %934, align 1
  %935 = and i32 %930, 255
  %936 = call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %939, i8* %940, align 1
  %941 = xor i64 1, %926
  %942 = trunc i64 %941 to i32
  %943 = xor i32 %942, %930
  %944 = lshr i32 %943, 4
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %946, i8* %947, align 1
  %948 = icmp eq i32 %930, 0
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %949, i8* %950, align 1
  %951 = lshr i32 %930, 31
  %952 = trunc i32 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %952, i8* %953, align 1
  %954 = lshr i32 %929, 31
  %955 = xor i32 %951, %954
  %956 = add i32 %955, %954
  %957 = icmp eq i32 %956, 2
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %958, i8* %959, align 1
  store %struct.Memory* %loadMem_43db69, %struct.Memory** %MEMORY
  %loadMem_43db6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 5
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RCX.i863 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i864
  %970 = sub i64 %969, 6576
  %971 = load i64, i64* %PC.i862
  %972 = add i64 %971, 7
  store i64 %972, i64* %PC.i862
  %973 = inttoptr i64 %970 to i64*
  %974 = load i64, i64* %973
  store i64 %974, i64* %RCX.i863, align 8
  store %struct.Memory* %loadMem_43db6c, %struct.Memory** %MEMORY
  %loadMem_43db73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 7
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %EDX.i860 = bitcast %union.anon* %980 to i32*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 15
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RBP.i861
  %985 = sub i64 %984, 6584
  %986 = load i32, i32* %EDX.i860
  %987 = zext i32 %986 to i64
  %988 = load i64, i64* %PC.i859
  %989 = add i64 %988, 6
  store i64 %989, i64* %PC.i859
  %990 = inttoptr i64 %985 to i32*
  store i32 %986, i32* %990
  store %struct.Memory* %loadMem_43db73, %struct.Memory** %MEMORY
  %loadMem_43db79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 5
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RCX.i857 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 7
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RDX.i858 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %RCX.i857
  %1001 = load i64, i64* %PC.i856
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC.i856
  store i64 %1000, i64* %RDX.i858, align 8
  store %struct.Memory* %loadMem_43db79, %struct.Memory** %MEMORY
  %loadMem_43db7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 33
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1005 to i64*
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 5
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 15
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %RBP.i855
  %1013 = sub i64 %1012, 6580
  %1014 = load i64, i64* %PC.i853
  %1015 = add i64 %1014, 6
  store i64 %1015, i64* %PC.i853
  %1016 = inttoptr i64 %1013 to i32*
  %1017 = load i32, i32* %1016
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_43db7c, %struct.Memory** %MEMORY
  %loadMem_43db82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 33
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 17
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1024 to i32*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 15
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %1027 to i64*
  %1028 = bitcast i32* %R8D.i to i64*
  %1029 = load i64, i64* %RBP.i852
  %1030 = sub i64 %1029, 6584
  %1031 = load i64, i64* %PC.i851
  %1032 = add i64 %1031, 7
  store i64 %1032, i64* %PC.i851
  %1033 = inttoptr i64 %1030 to i32*
  %1034 = load i32, i32* %1033
  %1035 = zext i32 %1034 to i64
  store i64 %1035, i64* %1028, align 8
  store %struct.Memory* %loadMem_43db82, %struct.Memory** %MEMORY
  %loadMem1_43db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %PC.i850
  %1040 = add i64 %1039, 83207
  %1041 = load i64, i64* %PC.i850
  %1042 = add i64 %1041, 5
  %1043 = load i64, i64* %PC.i850
  %1044 = add i64 %1043, 5
  store i64 %1044, i64* %PC.i850
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1046 = load i64, i64* %1045, align 8
  %1047 = add i64 %1046, -8
  %1048 = inttoptr i64 %1047 to i64*
  store i64 %1042, i64* %1048
  store i64 %1047, i64* %1045, align 8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1040, i64* %1049, align 8
  store %struct.Memory* %loadMem1_43db89, %struct.Memory** %MEMORY
  %loadMem2_43db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43db89 = load i64, i64* %3
  %call2_43db89 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_43db89, %struct.Memory* %loadMem2_43db89)
  store %struct.Memory* %call2_43db89, %struct.Memory** %MEMORY
  br label %block_.L_43db8e

block_.L_43db8e:                                  ; preds = %routine_idivl__r9d.exit, %block_43db03
  %loadMem_43db8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 1
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RAX.i848 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 15
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %RBP.i849
  %1060 = sub i64 %1059, 16
  %1061 = load i64, i64* %PC.i847
  %1062 = add i64 %1061, 4
  store i64 %1062, i64* %PC.i847
  %1063 = inttoptr i64 %1060 to i64*
  %1064 = load i64, i64* %1063
  store i64 %1064, i64* %RAX.i848, align 8
  store %struct.Memory* %loadMem_43db8e, %struct.Memory** %MEMORY
  %loadMem_43db92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 5
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RCX.i845 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 15
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %RBP.i846
  %1075 = sub i64 %1074, 20
  %1076 = load i64, i64* %PC.i844
  %1077 = add i64 %1076, 4
  store i64 %1077, i64* %PC.i844
  %1078 = inttoptr i64 %1075 to i32*
  %1079 = load i32, i32* %1078
  %1080 = sext i32 %1079 to i64
  store i64 %1080, i64* %RCX.i845, align 8
  store %struct.Memory* %loadMem_43db92, %struct.Memory** %MEMORY
  %loadMem_43db96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 1
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 5
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RCX.i843 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RAX.i842
  %1091 = load i64, i64* %RCX.i843
  %1092 = mul i64 %1091, 4
  %1093 = add i64 %1092, %1090
  %1094 = load i64, i64* %PC.i841
  %1095 = add i64 %1094, 4
  store i64 %1095, i64* %PC.i841
  %1096 = inttoptr i64 %1093 to i32*
  %1097 = load i32, i32* %1096
  %1098 = sext i32 %1097 to i64
  store i64 %1098, i64* %RAX.i842, align 8
  store %struct.Memory* %loadMem_43db96, %struct.Memory** %MEMORY
  %loadMem_43db9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 1
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 15
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %RBP.i840
  %1109 = load i64, i64* %RAX.i839
  %1110 = mul i64 %1109, 4
  %1111 = add i64 %1108, -1632
  %1112 = add i64 %1111, %1110
  %1113 = load i64, i64* %PC.i838
  %1114 = add i64 %1113, 11
  store i64 %1114, i64* %PC.i838
  %1115 = inttoptr i64 %1112 to i32*
  store i32 1, i32* %1115
  store %struct.Memory* %loadMem_43db9a, %struct.Memory** %MEMORY
  %loadMem_43dba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1117 = getelementptr inbounds %struct.GPR, %struct.GPR* %1116, i32 0, i32 33
  %1118 = getelementptr inbounds %struct.Reg, %struct.Reg* %1117, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1118 to i64*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 1
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 15
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1124 to i64*
  %1125 = load i64, i64* %RBP.i837
  %1126 = sub i64 %1125, 20
  %1127 = load i64, i64* %PC.i835
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %PC.i835
  %1129 = inttoptr i64 %1126 to i32*
  %1130 = load i32, i32* %1129
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i836, align 8
  store %struct.Memory* %loadMem_43dba5, %struct.Memory** %MEMORY
  %loadMem_43dba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RAX.i834 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RAX.i834
  %1139 = load i64, i64* %PC.i833
  %1140 = add i64 %1139, 3
  store i64 %1140, i64* %PC.i833
  %1141 = trunc i64 %1138 to i32
  %1142 = add i32 1, %1141
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RAX.i834, align 8
  %1144 = icmp ult i32 %1142, %1141
  %1145 = icmp ult i32 %1142, 1
  %1146 = or i1 %1144, %1145
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1147, i8* %1148, align 1
  %1149 = and i32 %1142, 255
  %1150 = call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1153, i8* %1154, align 1
  %1155 = xor i64 1, %1138
  %1156 = trunc i64 %1155 to i32
  %1157 = xor i32 %1156, %1142
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1160, i8* %1161, align 1
  %1162 = icmp eq i32 %1142, 0
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1163, i8* %1164, align 1
  %1165 = lshr i32 %1142, 31
  %1166 = trunc i32 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1166, i8* %1167, align 1
  %1168 = lshr i32 %1141, 31
  %1169 = xor i32 %1165, %1168
  %1170 = add i32 %1169, %1165
  %1171 = icmp eq i32 %1170, 2
  %1172 = zext i1 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1172, i8* %1173, align 1
  store %struct.Memory* %loadMem_43dba8, %struct.Memory** %MEMORY
  %loadMem_43dbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 1
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %EAX.i831 = bitcast %union.anon* %1179 to i32*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 15
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %RBP.i832
  %1184 = sub i64 %1183, 20
  %1185 = load i32, i32* %EAX.i831
  %1186 = zext i32 %1185 to i64
  %1187 = load i64, i64* %PC.i830
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %PC.i830
  %1189 = inttoptr i64 %1184 to i32*
  store i32 %1185, i32* %1189
  store %struct.Memory* %loadMem_43dbab, %struct.Memory** %MEMORY
  %loadMem_43dbae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %PC.i829
  %1194 = add i64 %1193, -233
  %1195 = load i64, i64* %PC.i829
  %1196 = add i64 %1195, 5
  store i64 %1196, i64* %PC.i829
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1194, i64* %1197, align 8
  store %struct.Memory* %loadMem_43dbae, %struct.Memory** %MEMORY
  br label %block_.L_43dac5

block_.L_43dbb3:                                  ; preds = %block_.L_43dac5
  %loadMem_43dbb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 33
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %1200 to i64*
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 15
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %1203 to i64*
  %1204 = load i64, i64* %RBP.i828
  %1205 = sub i64 %1204, 1636
  %1206 = load i64, i64* %PC.i827
  %1207 = add i64 %1206, 10
  store i64 %1207, i64* %PC.i827
  %1208 = inttoptr i64 %1205 to i32*
  store i32 21, i32* %1208
  store %struct.Memory* %loadMem_43dbb3, %struct.Memory** %MEMORY
  br label %block_.L_43dbbd

block_.L_43dbbd:                                  ; preds = %block_.L_43dc90, %block_.L_43dbb3
  %loadMem_43dbbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 15
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RBP.i826 = bitcast %union.anon* %1214 to i64*
  %1215 = load i64, i64* %RBP.i826
  %1216 = sub i64 %1215, 1636
  %1217 = load i64, i64* %PC.i825
  %1218 = add i64 %1217, 10
  store i64 %1218, i64* %PC.i825
  %1219 = inttoptr i64 %1216 to i32*
  %1220 = load i32, i32* %1219
  %1221 = sub i32 %1220, 400
  %1222 = icmp ult i32 %1220, 400
  %1223 = zext i1 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1223, i8* %1224, align 1
  %1225 = and i32 %1221, 255
  %1226 = call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1229, i8* %1230, align 1
  %1231 = xor i32 %1220, 400
  %1232 = xor i32 %1231, %1221
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1235, i8* %1236, align 1
  %1237 = icmp eq i32 %1221, 0
  %1238 = zext i1 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1238, i8* %1239, align 1
  %1240 = lshr i32 %1221, 31
  %1241 = trunc i32 %1240 to i8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1241, i8* %1242, align 1
  %1243 = lshr i32 %1220, 31
  %1244 = xor i32 %1240, %1243
  %1245 = add i32 %1244, %1243
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1247, i8* %1248, align 1
  store %struct.Memory* %loadMem_43dbbd, %struct.Memory** %MEMORY
  %loadMem_43dbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %PC.i824
  %1253 = add i64 %1252, 221
  %1254 = load i64, i64* %PC.i824
  %1255 = add i64 %1254, 6
  %1256 = load i64, i64* %PC.i824
  %1257 = add i64 %1256, 6
  store i64 %1257, i64* %PC.i824
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1259 = load i8, i8* %1258, align 1
  %1260 = icmp ne i8 %1259, 0
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1262 = load i8, i8* %1261, align 1
  %1263 = icmp ne i8 %1262, 0
  %1264 = xor i1 %1260, %1263
  %1265 = xor i1 %1264, true
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %BRANCH_TAKEN, align 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1268 = select i1 %1264, i64 %1255, i64 %1253
  store i64 %1268, i64* %1267, align 8
  store %struct.Memory* %loadMem_43dbc7, %struct.Memory** %MEMORY
  %loadBr_43dbc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dbc7 = icmp eq i8 %loadBr_43dbc7, 1
  br i1 %cmpBr_43dbc7, label %block_.L_43dca4, label %block_43dbcd

block_43dbcd:                                     ; preds = %block_.L_43dbbd
  %loadMem_43dbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 1
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %RAX.i822 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 15
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %RBP.i823
  %1279 = sub i64 %1278, 1636
  %1280 = load i64, i64* %PC.i821
  %1281 = add i64 %1280, 7
  store i64 %1281, i64* %PC.i821
  %1282 = inttoptr i64 %1279 to i32*
  %1283 = load i32, i32* %1282
  %1284 = sext i32 %1283 to i64
  store i64 %1284, i64* %RAX.i822, align 8
  store %struct.Memory* %loadMem_43dbcd, %struct.Memory** %MEMORY
  %loadMem_43dbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 1
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RAX.i819 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 5
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %1293 to i64*
  %1294 = load i64, i64* %RAX.i819
  %1295 = add i64 %1294, 12099168
  %1296 = load i64, i64* %PC.i818
  %1297 = add i64 %1296, 8
  store i64 %1297, i64* %PC.i818
  %1298 = inttoptr i64 %1295 to i8*
  %1299 = load i8, i8* %1298
  %1300 = zext i8 %1299 to i64
  store i64 %1300, i64* %RCX.i820, align 8
  store %struct.Memory* %loadMem_43dbd4, %struct.Memory** %MEMORY
  %loadMem_43dbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 5
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %ECX.i817 = bitcast %union.anon* %1306 to i32*
  %1307 = load i32, i32* %ECX.i817
  %1308 = zext i32 %1307 to i64
  %1309 = load i64, i64* %PC.i816
  %1310 = add i64 %1309, 3
  store i64 %1310, i64* %PC.i816
  %1311 = sub i32 %1307, 3
  %1312 = icmp ult i32 %1307, 3
  %1313 = zext i1 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1313, i8* %1314, align 1
  %1315 = and i32 %1311, 255
  %1316 = call i32 @llvm.ctpop.i32(i32 %1315)
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = xor i8 %1318, 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1319, i8* %1320, align 1
  %1321 = xor i64 3, %1308
  %1322 = trunc i64 %1321 to i32
  %1323 = xor i32 %1322, %1311
  %1324 = lshr i32 %1323, 4
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1326, i8* %1327, align 1
  %1328 = icmp eq i32 %1311, 0
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1329, i8* %1330, align 1
  %1331 = lshr i32 %1311, 31
  %1332 = trunc i32 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1332, i8* %1333, align 1
  %1334 = lshr i32 %1307, 31
  %1335 = xor i32 %1331, %1334
  %1336 = add i32 %1335, %1334
  %1337 = icmp eq i32 %1336, 2
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1338, i8* %1339, align 1
  store %struct.Memory* %loadMem_43dbdc, %struct.Memory** %MEMORY
  %loadMem_43dbdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1342 to i64*
  %1343 = load i64, i64* %PC.i815
  %1344 = add i64 %1343, 27
  %1345 = load i64, i64* %PC.i815
  %1346 = add i64 %1345, 6
  %1347 = load i64, i64* %PC.i815
  %1348 = add i64 %1347, 6
  store i64 %1348, i64* %PC.i815
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1350 = load i8, i8* %1349, align 1
  store i8 %1350, i8* %BRANCH_TAKEN, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1352 = icmp ne i8 %1350, 0
  %1353 = select i1 %1352, i64 %1344, i64 %1346
  store i64 %1353, i64* %1351, align 8
  store %struct.Memory* %loadMem_43dbdf, %struct.Memory** %MEMORY
  %loadBr_43dbdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dbdf = icmp eq i8 %loadBr_43dbdf, 1
  br i1 %cmpBr_43dbdf, label %block_.L_43dbfa, label %block_43dbe5

block_43dbe5:                                     ; preds = %block_43dbcd
  %loadMem_43dbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 1
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 15
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %RBP.i814
  %1364 = sub i64 %1363, 1636
  %1365 = load i64, i64* %PC.i812
  %1366 = add i64 %1365, 7
  store i64 %1366, i64* %PC.i812
  %1367 = inttoptr i64 %1364 to i32*
  %1368 = load i32, i32* %1367
  %1369 = sext i32 %1368 to i64
  store i64 %1369, i64* %RAX.i813, align 8
  store %struct.Memory* %loadMem_43dbe5, %struct.Memory** %MEMORY
  %loadMem_43dbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 1
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 15
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %RBP.i811
  %1380 = load i64, i64* %RAX.i810
  %1381 = mul i64 %1380, 4
  %1382 = add i64 %1379, -1632
  %1383 = add i64 %1382, %1381
  %1384 = load i64, i64* %PC.i809
  %1385 = add i64 %1384, 8
  store i64 %1385, i64* %PC.i809
  %1386 = inttoptr i64 %1383 to i32*
  %1387 = load i32, i32* %1386
  %1388 = sub i32 %1387, 1
  %1389 = icmp ult i32 %1387, 1
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1390, i8* %1391, align 1
  %1392 = and i32 %1388, 255
  %1393 = call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1396, i8* %1397, align 1
  %1398 = xor i32 %1387, 1
  %1399 = xor i32 %1398, %1388
  %1400 = lshr i32 %1399, 4
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1402, i8* %1403, align 1
  %1404 = icmp eq i32 %1388, 0
  %1405 = zext i1 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1405, i8* %1406, align 1
  %1407 = lshr i32 %1388, 31
  %1408 = trunc i32 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1408, i8* %1409, align 1
  %1410 = lshr i32 %1387, 31
  %1411 = xor i32 %1407, %1410
  %1412 = add i32 %1411, %1410
  %1413 = icmp eq i32 %1412, 2
  %1414 = zext i1 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1414, i8* %1415, align 1
  store %struct.Memory* %loadMem_43dbec, %struct.Memory** %MEMORY
  %loadMem_43dbf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1418 to i64*
  %1419 = load i64, i64* %PC.i808
  %1420 = add i64 %1419, 11
  %1421 = load i64, i64* %PC.i808
  %1422 = add i64 %1421, 6
  %1423 = load i64, i64* %PC.i808
  %1424 = add i64 %1423, 6
  store i64 %1424, i64* %PC.i808
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1426 = load i8, i8* %1425, align 1
  %1427 = icmp eq i8 %1426, 0
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %BRANCH_TAKEN, align 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1430 = select i1 %1427, i64 %1420, i64 %1422
  store i64 %1430, i64* %1429, align 8
  store %struct.Memory* %loadMem_43dbf4, %struct.Memory** %MEMORY
  %loadBr_43dbf4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dbf4 = icmp eq i8 %loadBr_43dbf4, 1
  br i1 %cmpBr_43dbf4, label %block_.L_43dbff, label %block_.L_43dbfa

block_.L_43dbfa:                                  ; preds = %block_43dbe5, %block_43dbcd
  %loadMem_43dbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %PC.i807
  %1435 = add i64 %1434, 150
  %1436 = load i64, i64* %PC.i807
  %1437 = add i64 %1436, 5
  store i64 %1437, i64* %PC.i807
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1435, i64* %1438, align 8
  store %struct.Memory* %loadMem_43dbfa, %struct.Memory** %MEMORY
  br label %block_.L_43dc90

block_.L_43dbff:                                  ; preds = %block_43dbe5
  %loadMem_43dbff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 15
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RBP.i806
  %1446 = sub i64 %1445, 20
  %1447 = load i64, i64* %PC.i805
  %1448 = add i64 %1447, 7
  store i64 %1448, i64* %PC.i805
  %1449 = inttoptr i64 %1446 to i32*
  store i32 0, i32* %1449
  store %struct.Memory* %loadMem_43dbff, %struct.Memory** %MEMORY
  br label %block_.L_43dc06

block_.L_43dc06:                                  ; preds = %block_.L_43dc7d, %block_.L_43dbff
  %loadMem_43dc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 15
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %RBP.i804
  %1457 = sub i64 %1456, 20
  %1458 = load i64, i64* %PC.i803
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %PC.i803
  %1460 = inttoptr i64 %1457 to i32*
  %1461 = load i32, i32* %1460
  %1462 = sub i32 %1461, 8
  %1463 = icmp ult i32 %1461, 8
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1464, i8* %1465, align 1
  %1466 = and i32 %1462, 255
  %1467 = call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1470, i8* %1471, align 1
  %1472 = xor i32 %1461, 8
  %1473 = xor i32 %1472, %1462
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1476, i8* %1477, align 1
  %1478 = icmp eq i32 %1462, 0
  %1479 = zext i1 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1479, i8* %1480, align 1
  %1481 = lshr i32 %1462, 31
  %1482 = trunc i32 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1482, i8* %1483, align 1
  %1484 = lshr i32 %1461, 31
  %1485 = xor i32 %1481, %1484
  %1486 = add i32 %1485, %1484
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1488, i8* %1489, align 1
  store %struct.Memory* %loadMem_43dc06, %struct.Memory** %MEMORY
  %loadMem_43dc0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1492 to i64*
  %1493 = load i64, i64* %PC.i802
  %1494 = add i64 %1493, 129
  %1495 = load i64, i64* %PC.i802
  %1496 = add i64 %1495, 6
  %1497 = load i64, i64* %PC.i802
  %1498 = add i64 %1497, 6
  store i64 %1498, i64* %PC.i802
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1500 = load i8, i8* %1499, align 1
  %1501 = icmp ne i8 %1500, 0
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1503 = load i8, i8* %1502, align 1
  %1504 = icmp ne i8 %1503, 0
  %1505 = xor i1 %1501, %1504
  %1506 = xor i1 %1505, true
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %BRANCH_TAKEN, align 1
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1509 = select i1 %1505, i64 %1496, i64 %1494
  store i64 %1509, i64* %1508, align 8
  store %struct.Memory* %loadMem_43dc0a, %struct.Memory** %MEMORY
  %loadBr_43dc0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dc0a = icmp eq i8 %loadBr_43dc0a, 1
  br i1 %cmpBr_43dc0a, label %block_.L_43dc8b, label %block_43dc10

block_43dc10:                                     ; preds = %block_.L_43dc06
  %loadMem_43dc10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 1
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 15
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RBP.i801
  %1520 = sub i64 %1519, 1636
  %1521 = load i64, i64* %PC.i799
  %1522 = add i64 %1521, 6
  store i64 %1522, i64* %PC.i799
  %1523 = inttoptr i64 %1520 to i32*
  %1524 = load i32, i32* %1523
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_43dc10, %struct.Memory** %MEMORY
  %loadMem_43dc16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i798
  %1536 = sub i64 %1535, 20
  %1537 = load i64, i64* %PC.i796
  %1538 = add i64 %1537, 4
  store i64 %1538, i64* %PC.i796
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = sext i32 %1540 to i64
  store i64 %1541, i64* %RCX.i797, align 8
  store %struct.Memory* %loadMem_43dc16, %struct.Memory** %MEMORY
  %loadMem_43dc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 5
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RCX.i795 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RAX.i794
  %1552 = load i64, i64* %RCX.i795
  %1553 = mul i64 %1552, 4
  %1554 = add i64 %1553, 8053168
  %1555 = load i64, i64* %PC.i793
  %1556 = add i64 %1555, 7
  store i64 %1556, i64* %PC.i793
  %1557 = trunc i64 %1551 to i32
  %1558 = inttoptr i64 %1554 to i32*
  %1559 = load i32, i32* %1558
  %1560 = add i32 %1559, %1557
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RAX.i794, align 8
  %1562 = icmp ult i32 %1560, %1557
  %1563 = icmp ult i32 %1560, %1559
  %1564 = or i1 %1562, %1563
  %1565 = zext i1 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1565, i8* %1566, align 1
  %1567 = and i32 %1560, 255
  %1568 = call i32 @llvm.ctpop.i32(i32 %1567)
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1571, i8* %1572, align 1
  %1573 = xor i32 %1559, %1557
  %1574 = xor i32 %1573, %1560
  %1575 = lshr i32 %1574, 4
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1577, i8* %1578, align 1
  %1579 = icmp eq i32 %1560, 0
  %1580 = zext i1 %1579 to i8
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1580, i8* %1581, align 1
  %1582 = lshr i32 %1560, 31
  %1583 = trunc i32 %1582 to i8
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1583, i8* %1584, align 1
  %1585 = lshr i32 %1557, 31
  %1586 = lshr i32 %1559, 31
  %1587 = xor i32 %1582, %1585
  %1588 = xor i32 %1582, %1586
  %1589 = add i32 %1587, %1588
  %1590 = icmp eq i32 %1589, 2
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1591, i8* %1592, align 1
  store %struct.Memory* %loadMem_43dc1a, %struct.Memory** %MEMORY
  %loadMem_43dc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 33
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 1
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %EAX.i791 = bitcast %union.anon* %1598 to i32*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 5
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %RCX.i792 = bitcast %union.anon* %1601 to i64*
  %1602 = load i32, i32* %EAX.i791
  %1603 = zext i32 %1602 to i64
  %1604 = load i64, i64* %PC.i790
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %PC.i790
  %1606 = shl i64 %1603, 32
  %1607 = ashr exact i64 %1606, 32
  store i64 %1607, i64* %RCX.i792, align 8
  store %struct.Memory* %loadMem_43dc21, %struct.Memory** %MEMORY
  %loadMem_43dc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1612 = getelementptr inbounds %struct.GPR, %struct.GPR* %1611, i32 0, i32 1
  %1613 = getelementptr inbounds %struct.Reg, %struct.Reg* %1612, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %1613 to i64*
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 5
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %RCX.i789
  %1618 = add i64 %1617, 12099168
  %1619 = load i64, i64* %PC.i787
  %1620 = add i64 %1619, 8
  store i64 %1620, i64* %PC.i787
  %1621 = inttoptr i64 %1618 to i8*
  %1622 = load i8, i8* %1621
  %1623 = zext i8 %1622 to i64
  store i64 %1623, i64* %RAX.i788, align 8
  store %struct.Memory* %loadMem_43dc24, %struct.Memory** %MEMORY
  %loadMem_43dc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 1
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %EAX.i786 = bitcast %union.anon* %1629 to i32*
  %1630 = load i32, i32* %EAX.i786
  %1631 = zext i32 %1630 to i64
  %1632 = load i64, i64* %PC.i785
  %1633 = add i64 %1632, 3
  store i64 %1633, i64* %PC.i785
  %1634 = sub i32 %1630, 3
  %1635 = icmp ult i32 %1630, 3
  %1636 = zext i1 %1635 to i8
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1636, i8* %1637, align 1
  %1638 = and i32 %1634, 255
  %1639 = call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1642, i8* %1643, align 1
  %1644 = xor i64 3, %1631
  %1645 = trunc i64 %1644 to i32
  %1646 = xor i32 %1645, %1634
  %1647 = lshr i32 %1646, 4
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1649, i8* %1650, align 1
  %1651 = icmp eq i32 %1634, 0
  %1652 = zext i1 %1651 to i8
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1652, i8* %1653, align 1
  %1654 = lshr i32 %1634, 31
  %1655 = trunc i32 %1654 to i8
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1655, i8* %1656, align 1
  %1657 = lshr i32 %1630, 31
  %1658 = xor i32 %1654, %1657
  %1659 = add i32 %1658, %1657
  %1660 = icmp eq i32 %1659, 2
  %1661 = zext i1 %1660 to i8
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1661, i8* %1662, align 1
  store %struct.Memory* %loadMem_43dc2c, %struct.Memory** %MEMORY
  %loadMem_43dc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %PC.i784
  %1667 = add i64 %1666, 73
  %1668 = load i64, i64* %PC.i784
  %1669 = add i64 %1668, 6
  %1670 = load i64, i64* %PC.i784
  %1671 = add i64 %1670, 6
  store i64 %1671, i64* %PC.i784
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1673 = load i8, i8* %1672, align 1
  store i8 %1673, i8* %BRANCH_TAKEN, align 1
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1675 = icmp ne i8 %1673, 0
  %1676 = select i1 %1675, i64 %1667, i64 %1669
  store i64 %1676, i64* %1674, align 8
  store %struct.Memory* %loadMem_43dc2f, %struct.Memory** %MEMORY
  %loadBr_43dc2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dc2f = icmp eq i8 %loadBr_43dc2f, 1
  br i1 %cmpBr_43dc2f, label %block_.L_43dc78, label %block_43dc35

block_43dc35:                                     ; preds = %block_43dc10
  %loadMem_43dc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 33
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 1
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RAX.i782 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 15
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %1685 to i64*
  %1686 = load i64, i64* %RBP.i783
  %1687 = sub i64 %1686, 1636
  %1688 = load i64, i64* %PC.i781
  %1689 = add i64 %1688, 6
  store i64 %1689, i64* %PC.i781
  %1690 = inttoptr i64 %1687 to i32*
  %1691 = load i32, i32* %1690
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RAX.i782, align 8
  store %struct.Memory* %loadMem_43dc35, %struct.Memory** %MEMORY
  %loadMem_43dc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 5
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RCX.i779 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 15
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %1701 to i64*
  %1702 = load i64, i64* %RBP.i780
  %1703 = sub i64 %1702, 20
  %1704 = load i64, i64* %PC.i778
  %1705 = add i64 %1704, 4
  store i64 %1705, i64* %PC.i778
  %1706 = inttoptr i64 %1703 to i32*
  %1707 = load i32, i32* %1706
  %1708 = sext i32 %1707 to i64
  store i64 %1708, i64* %RCX.i779, align 8
  store %struct.Memory* %loadMem_43dc3b, %struct.Memory** %MEMORY
  %loadMem_43dc3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 1
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 5
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RCX.i777 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %RAX.i776
  %1719 = load i64, i64* %RCX.i777
  %1720 = mul i64 %1719, 4
  %1721 = add i64 %1720, 8053168
  %1722 = load i64, i64* %PC.i775
  %1723 = add i64 %1722, 7
  store i64 %1723, i64* %PC.i775
  %1724 = trunc i64 %1718 to i32
  %1725 = inttoptr i64 %1721 to i32*
  %1726 = load i32, i32* %1725
  %1727 = add i32 %1726, %1724
  %1728 = zext i32 %1727 to i64
  store i64 %1728, i64* %RAX.i776, align 8
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
  store %struct.Memory* %loadMem_43dc3f, %struct.Memory** %MEMORY
  %loadMem_43dc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 1
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %EAX.i773 = bitcast %union.anon* %1765 to i32*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 5
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %1768 to i64*
  %1769 = load i32, i32* %EAX.i773
  %1770 = zext i32 %1769 to i64
  %1771 = load i64, i64* %PC.i772
  %1772 = add i64 %1771, 3
  store i64 %1772, i64* %PC.i772
  %1773 = shl i64 %1770, 32
  %1774 = ashr exact i64 %1773, 32
  store i64 %1774, i64* %RCX.i774, align 8
  store %struct.Memory* %loadMem_43dc46, %struct.Memory** %MEMORY
  %loadMem_43dc49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 5
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 15
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %1783 to i64*
  %1784 = load i64, i64* %RBP.i771
  %1785 = load i64, i64* %RCX.i770
  %1786 = mul i64 %1785, 4
  %1787 = add i64 %1784, -1632
  %1788 = add i64 %1787, %1786
  %1789 = load i64, i64* %PC.i769
  %1790 = add i64 %1789, 8
  store i64 %1790, i64* %PC.i769
  %1791 = inttoptr i64 %1788 to i32*
  %1792 = load i32, i32* %1791
  %1793 = sub i32 %1792, 1
  %1794 = icmp ult i32 %1792, 1
  %1795 = zext i1 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1795, i8* %1796, align 1
  %1797 = and i32 %1793, 255
  %1798 = call i32 @llvm.ctpop.i32(i32 %1797)
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1801, i8* %1802, align 1
  %1803 = xor i32 %1792, 1
  %1804 = xor i32 %1803, %1793
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1807, i8* %1808, align 1
  %1809 = icmp eq i32 %1793, 0
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1810, i8* %1811, align 1
  %1812 = lshr i32 %1793, 31
  %1813 = trunc i32 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1813, i8* %1814, align 1
  %1815 = lshr i32 %1792, 31
  %1816 = xor i32 %1812, %1815
  %1817 = add i32 %1816, %1815
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1819, i8* %1820, align 1
  store %struct.Memory* %loadMem_43dc49, %struct.Memory** %MEMORY
  %loadMem_43dc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1823 to i64*
  %1824 = load i64, i64* %PC.i768
  %1825 = add i64 %1824, 39
  %1826 = load i64, i64* %PC.i768
  %1827 = add i64 %1826, 6
  %1828 = load i64, i64* %PC.i768
  %1829 = add i64 %1828, 6
  store i64 %1829, i64* %PC.i768
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1831 = load i8, i8* %1830, align 1
  %1832 = icmp eq i8 %1831, 0
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %BRANCH_TAKEN, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1835 = select i1 %1832, i64 %1825, i64 %1827
  store i64 %1835, i64* %1834, align 8
  store %struct.Memory* %loadMem_43dc51, %struct.Memory** %MEMORY
  %loadBr_43dc51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dc51 = icmp eq i8 %loadBr_43dc51, 1
  br i1 %cmpBr_43dc51, label %block_.L_43dc78, label %block_43dc57

block_43dc57:                                     ; preds = %block_43dc35
  %loadMem_43dc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 9
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RSI.i767 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %PC.i766
  %1843 = add i64 %1842, 5
  store i64 %1843, i64* %PC.i766
  store i64 1, i64* %RSI.i767, align 8
  store %struct.Memory* %loadMem_43dc57, %struct.Memory** %MEMORY
  %loadMem_43dc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 11
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RDI.i764 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 15
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %RBP.i765
  %1854 = sub i64 %1853, 1636
  %1855 = load i64, i64* %PC.i763
  %1856 = add i64 %1855, 6
  store i64 %1856, i64* %PC.i763
  %1857 = inttoptr i64 %1854 to i32*
  %1858 = load i32, i32* %1857
  %1859 = zext i32 %1858 to i64
  store i64 %1859, i64* %RDI.i764, align 8
  store %struct.Memory* %loadMem_43dc5c, %struct.Memory** %MEMORY
  %loadMem1_43dc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i762
  %1864 = add i64 %1863, -194898
  %1865 = load i64, i64* %PC.i762
  %1866 = add i64 %1865, 5
  %1867 = load i64, i64* %PC.i762
  %1868 = add i64 %1867, 5
  store i64 %1868, i64* %PC.i762
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1870 = load i64, i64* %1869, align 8
  %1871 = add i64 %1870, -8
  %1872 = inttoptr i64 %1871 to i64*
  store i64 %1866, i64* %1872
  store i64 %1871, i64* %1869, align 8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1864, i64* %1873, align 8
  store %struct.Memory* %loadMem1_43dc62, %struct.Memory** %MEMORY
  %loadMem2_43dc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dc62 = load i64, i64* %3
  %call2_43dc62 = call %struct.Memory* @sub_40e310.play_move(%struct.State* %0, i64 %loadPC_43dc62, %struct.Memory* %loadMem2_43dc62)
  store %struct.Memory* %call2_43dc62, %struct.Memory** %MEMORY
  %loadMem_43dc67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 9
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RSI.i760 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RBP.i761
  %1884 = sub i64 %1883, 1636
  %1885 = load i64, i64* %PC.i759
  %1886 = add i64 %1885, 6
  store i64 %1886, i64* %PC.i759
  %1887 = inttoptr i64 %1884 to i32*
  %1888 = load i32, i32* %1887
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RSI.i760, align 8
  store %struct.Memory* %loadMem_43dc67, %struct.Memory** %MEMORY
  %loadMem_43dc6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 9
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %ESI.i757 = bitcast %union.anon* %1895 to i32*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 15
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %RBP.i758
  %1900 = sub i64 %1899, 1640
  %1901 = load i32, i32* %ESI.i757
  %1902 = zext i32 %1901 to i64
  %1903 = load i64, i64* %PC.i756
  %1904 = add i64 %1903, 6
  store i64 %1904, i64* %PC.i756
  %1905 = inttoptr i64 %1900 to i32*
  store i32 %1901, i32* %1905
  store %struct.Memory* %loadMem_43dc6d, %struct.Memory** %MEMORY
  %loadMem_43dc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %PC.i755
  %1910 = add i64 %1909, 24
  %1911 = load i64, i64* %PC.i755
  %1912 = add i64 %1911, 5
  store i64 %1912, i64* %PC.i755
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1910, i64* %1913, align 8
  store %struct.Memory* %loadMem_43dc73, %struct.Memory** %MEMORY
  br label %block_.L_43dc8b

block_.L_43dc78:                                  ; preds = %block_43dc35, %block_43dc10
  %loadMem_43dc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 33
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %PC.i754
  %1918 = add i64 %1917, 5
  %1919 = load i64, i64* %PC.i754
  %1920 = add i64 %1919, 5
  store i64 %1920, i64* %PC.i754
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1918, i64* %1921, align 8
  store %struct.Memory* %loadMem_43dc78, %struct.Memory** %MEMORY
  br label %block_.L_43dc7d

block_.L_43dc7d:                                  ; preds = %block_.L_43dc78
  %loadMem_43dc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 1
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 15
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %1930 to i64*
  %1931 = load i64, i64* %RBP.i753
  %1932 = sub i64 %1931, 20
  %1933 = load i64, i64* %PC.i751
  %1934 = add i64 %1933, 3
  store i64 %1934, i64* %PC.i751
  %1935 = inttoptr i64 %1932 to i32*
  %1936 = load i32, i32* %1935
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_43dc7d, %struct.Memory** %MEMORY
  %loadMem_43dc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 1
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RAX.i750 = bitcast %union.anon* %1943 to i64*
  %1944 = load i64, i64* %RAX.i750
  %1945 = load i64, i64* %PC.i749
  %1946 = add i64 %1945, 3
  store i64 %1946, i64* %PC.i749
  %1947 = trunc i64 %1944 to i32
  %1948 = add i32 1, %1947
  %1949 = zext i32 %1948 to i64
  store i64 %1949, i64* %RAX.i750, align 8
  %1950 = icmp ult i32 %1948, %1947
  %1951 = icmp ult i32 %1948, 1
  %1952 = or i1 %1950, %1951
  %1953 = zext i1 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1953, i8* %1954, align 1
  %1955 = and i32 %1948, 255
  %1956 = call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1959, i8* %1960, align 1
  %1961 = xor i64 1, %1944
  %1962 = trunc i64 %1961 to i32
  %1963 = xor i32 %1962, %1948
  %1964 = lshr i32 %1963, 4
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1966, i8* %1967, align 1
  %1968 = icmp eq i32 %1948, 0
  %1969 = zext i1 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1969, i8* %1970, align 1
  %1971 = lshr i32 %1948, 31
  %1972 = trunc i32 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1972, i8* %1973, align 1
  %1974 = lshr i32 %1947, 31
  %1975 = xor i32 %1971, %1974
  %1976 = add i32 %1975, %1971
  %1977 = icmp eq i32 %1976, 2
  %1978 = zext i1 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1978, i8* %1979, align 1
  store %struct.Memory* %loadMem_43dc80, %struct.Memory** %MEMORY
  %loadMem_43dc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 1
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %EAX.i747 = bitcast %union.anon* %1985 to i32*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 15
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %1988 to i64*
  %1989 = load i64, i64* %RBP.i748
  %1990 = sub i64 %1989, 20
  %1991 = load i32, i32* %EAX.i747
  %1992 = zext i32 %1991 to i64
  %1993 = load i64, i64* %PC.i746
  %1994 = add i64 %1993, 3
  store i64 %1994, i64* %PC.i746
  %1995 = inttoptr i64 %1990 to i32*
  store i32 %1991, i32* %1995
  store %struct.Memory* %loadMem_43dc83, %struct.Memory** %MEMORY
  %loadMem_43dc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1998 to i64*
  %1999 = load i64, i64* %PC.i745
  %2000 = add i64 %1999, -128
  %2001 = load i64, i64* %PC.i745
  %2002 = add i64 %2001, 5
  store i64 %2002, i64* %PC.i745
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2000, i64* %2003, align 8
  store %struct.Memory* %loadMem_43dc86, %struct.Memory** %MEMORY
  br label %block_.L_43dc06

block_.L_43dc8b:                                  ; preds = %block_43dc57, %block_.L_43dc06
  %loadMem_43dc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %PC.i744
  %2008 = add i64 %2007, 5
  %2009 = load i64, i64* %PC.i744
  %2010 = add i64 %2009, 5
  store i64 %2010, i64* %PC.i744
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2008, i64* %2011, align 8
  store %struct.Memory* %loadMem_43dc8b, %struct.Memory** %MEMORY
  br label %block_.L_43dc90

block_.L_43dc90:                                  ; preds = %block_.L_43dc8b, %block_.L_43dbfa
  %loadMem_43dc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 1
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 15
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RBP.i743
  %2022 = sub i64 %2021, 1636
  %2023 = load i64, i64* %PC.i741
  %2024 = add i64 %2023, 6
  store i64 %2024, i64* %PC.i741
  %2025 = inttoptr i64 %2022 to i32*
  %2026 = load i32, i32* %2025
  %2027 = zext i32 %2026 to i64
  store i64 %2027, i64* %RAX.i742, align 8
  store %struct.Memory* %loadMem_43dc90, %struct.Memory** %MEMORY
  %loadMem_43dc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 1
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %2033 to i64*
  %2034 = load i64, i64* %RAX.i740
  %2035 = load i64, i64* %PC.i739
  %2036 = add i64 %2035, 3
  store i64 %2036, i64* %PC.i739
  %2037 = trunc i64 %2034 to i32
  %2038 = add i32 1, %2037
  %2039 = zext i32 %2038 to i64
  store i64 %2039, i64* %RAX.i740, align 8
  %2040 = icmp ult i32 %2038, %2037
  %2041 = icmp ult i32 %2038, 1
  %2042 = or i1 %2040, %2041
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2043, i8* %2044, align 1
  %2045 = and i32 %2038, 255
  %2046 = call i32 @llvm.ctpop.i32(i32 %2045)
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  %2049 = xor i8 %2048, 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2049, i8* %2050, align 1
  %2051 = xor i64 1, %2034
  %2052 = trunc i64 %2051 to i32
  %2053 = xor i32 %2052, %2038
  %2054 = lshr i32 %2053, 4
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2056, i8* %2057, align 1
  %2058 = icmp eq i32 %2038, 0
  %2059 = zext i1 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2059, i8* %2060, align 1
  %2061 = lshr i32 %2038, 31
  %2062 = trunc i32 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2062, i8* %2063, align 1
  %2064 = lshr i32 %2037, 31
  %2065 = xor i32 %2061, %2064
  %2066 = add i32 %2065, %2061
  %2067 = icmp eq i32 %2066, 2
  %2068 = zext i1 %2067 to i8
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2068, i8* %2069, align 1
  store %struct.Memory* %loadMem_43dc96, %struct.Memory** %MEMORY
  %loadMem_43dc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 1
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %EAX.i737 = bitcast %union.anon* %2075 to i32*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 15
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %2078 to i64*
  %2079 = load i64, i64* %RBP.i738
  %2080 = sub i64 %2079, 1636
  %2081 = load i32, i32* %EAX.i737
  %2082 = zext i32 %2081 to i64
  %2083 = load i64, i64* %PC.i736
  %2084 = add i64 %2083, 6
  store i64 %2084, i64* %PC.i736
  %2085 = inttoptr i64 %2080 to i32*
  store i32 %2081, i32* %2085
  store %struct.Memory* %loadMem_43dc99, %struct.Memory** %MEMORY
  %loadMem_43dc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %PC.i735
  %2090 = add i64 %2089, -226
  %2091 = load i64, i64* %PC.i735
  %2092 = add i64 %2091, 5
  store i64 %2092, i64* %PC.i735
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2090, i64* %2093, align 8
  store %struct.Memory* %loadMem_43dc9f, %struct.Memory** %MEMORY
  br label %block_.L_43dbbd

block_.L_43dca4:                                  ; preds = %block_.L_43dbbd
  %loadMem_43dca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 15
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %RBP.i734
  %2101 = sub i64 %2100, 1636
  %2102 = load i64, i64* %PC.i733
  %2103 = add i64 %2102, 10
  store i64 %2103, i64* %PC.i733
  %2104 = inttoptr i64 %2101 to i32*
  store i32 21, i32* %2104
  store %struct.Memory* %loadMem_43dca4, %struct.Memory** %MEMORY
  br label %block_.L_43dcae

block_.L_43dcae:                                  ; preds = %block_.L_43dd94, %block_.L_43dca4
  %loadMem_43dcae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 15
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %RBP.i732
  %2112 = sub i64 %2111, 1636
  %2113 = load i64, i64* %PC.i731
  %2114 = add i64 %2113, 10
  store i64 %2114, i64* %PC.i731
  %2115 = inttoptr i64 %2112 to i32*
  %2116 = load i32, i32* %2115
  %2117 = sub i32 %2116, 400
  %2118 = icmp ult i32 %2116, 400
  %2119 = zext i1 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2119, i8* %2120, align 1
  %2121 = and i32 %2117, 255
  %2122 = call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2125, i8* %2126, align 1
  %2127 = xor i32 %2116, 400
  %2128 = xor i32 %2127, %2117
  %2129 = lshr i32 %2128, 4
  %2130 = trunc i32 %2129 to i8
  %2131 = and i8 %2130, 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2131, i8* %2132, align 1
  %2133 = icmp eq i32 %2117, 0
  %2134 = zext i1 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2134, i8* %2135, align 1
  %2136 = lshr i32 %2117, 31
  %2137 = trunc i32 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2137, i8* %2138, align 1
  %2139 = lshr i32 %2116, 31
  %2140 = xor i32 %2136, %2139
  %2141 = add i32 %2140, %2139
  %2142 = icmp eq i32 %2141, 2
  %2143 = zext i1 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2143, i8* %2144, align 1
  store %struct.Memory* %loadMem_43dcae, %struct.Memory** %MEMORY
  %loadMem_43dcb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %PC.i730
  %2149 = add i64 %2148, 240
  %2150 = load i64, i64* %PC.i730
  %2151 = add i64 %2150, 6
  %2152 = load i64, i64* %PC.i730
  %2153 = add i64 %2152, 6
  store i64 %2153, i64* %PC.i730
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2155 = load i8, i8* %2154, align 1
  %2156 = icmp ne i8 %2155, 0
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2158 = load i8, i8* %2157, align 1
  %2159 = icmp ne i8 %2158, 0
  %2160 = xor i1 %2156, %2159
  %2161 = xor i1 %2160, true
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %BRANCH_TAKEN, align 1
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2164 = select i1 %2160, i64 %2151, i64 %2149
  store i64 %2164, i64* %2163, align 8
  store %struct.Memory* %loadMem_43dcb8, %struct.Memory** %MEMORY
  %loadBr_43dcb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dcb8 = icmp eq i8 %loadBr_43dcb8, 1
  br i1 %cmpBr_43dcb8, label %block_.L_43dda8, label %block_43dcbe

block_43dcbe:                                     ; preds = %block_.L_43dcae
  %loadMem_43dcbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 1
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 15
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %RBP.i729
  %2175 = sub i64 %2174, 1636
  %2176 = load i64, i64* %PC.i727
  %2177 = add i64 %2176, 7
  store i64 %2177, i64* %PC.i727
  %2178 = inttoptr i64 %2175 to i32*
  %2179 = load i32, i32* %2178
  %2180 = sext i32 %2179 to i64
  store i64 %2180, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_43dcbe, %struct.Memory** %MEMORY
  %loadMem_43dcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 1
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 15
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RBP.i726
  %2191 = load i64, i64* %RAX.i725
  %2192 = mul i64 %2191, 4
  %2193 = add i64 %2190, -1632
  %2194 = add i64 %2193, %2192
  %2195 = load i64, i64* %PC.i724
  %2196 = add i64 %2195, 8
  store i64 %2196, i64* %PC.i724
  %2197 = inttoptr i64 %2194 to i32*
  %2198 = load i32, i32* %2197
  %2199 = sub i32 %2198, 1
  %2200 = icmp ult i32 %2198, 1
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2201, i8* %2202, align 1
  %2203 = and i32 %2199, 255
  %2204 = call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2207, i8* %2208, align 1
  %2209 = xor i32 %2198, 1
  %2210 = xor i32 %2209, %2199
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2213, i8* %2214, align 1
  %2215 = icmp eq i32 %2199, 0
  %2216 = zext i1 %2215 to i8
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2216, i8* %2217, align 1
  %2218 = lshr i32 %2199, 31
  %2219 = trunc i32 %2218 to i8
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2219, i8* %2220, align 1
  %2221 = lshr i32 %2198, 31
  %2222 = xor i32 %2218, %2221
  %2223 = add i32 %2222, %2221
  %2224 = icmp eq i32 %2223, 2
  %2225 = zext i1 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2225, i8* %2226, align 1
  store %struct.Memory* %loadMem_43dcc5, %struct.Memory** %MEMORY
  %loadMem_43dccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2229 to i64*
  %2230 = load i64, i64* %PC.i723
  %2231 = add i64 %2230, 56
  %2232 = load i64, i64* %PC.i723
  %2233 = add i64 %2232, 6
  %2234 = load i64, i64* %PC.i723
  %2235 = add i64 %2234, 6
  store i64 %2235, i64* %PC.i723
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2237 = load i8, i8* %2236, align 1
  store i8 %2237, i8* %BRANCH_TAKEN, align 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2239 = icmp ne i8 %2237, 0
  %2240 = select i1 %2239, i64 %2231, i64 %2233
  store i64 %2240, i64* %2238, align 8
  store %struct.Memory* %loadMem_43dccd, %struct.Memory** %MEMORY
  %loadBr_43dccd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dccd = icmp eq i8 %loadBr_43dccd, 1
  br i1 %cmpBr_43dccd, label %block_.L_43dd05, label %block_43dcd3

block_43dcd3:                                     ; preds = %block_43dcbe
  %loadMem_43dcd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 1
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 15
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RBP.i722
  %2251 = sub i64 %2250, 1636
  %2252 = load i64, i64* %PC.i720
  %2253 = add i64 %2252, 7
  store i64 %2253, i64* %PC.i720
  %2254 = inttoptr i64 %2251 to i32*
  %2255 = load i32, i32* %2254
  %2256 = sext i32 %2255 to i64
  store i64 %2256, i64* %RAX.i721, align 8
  store %struct.Memory* %loadMem_43dcd3, %struct.Memory** %MEMORY
  %loadMem_43dcda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 1
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 5
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RAX.i718
  %2267 = add i64 %2266, 12099168
  %2268 = load i64, i64* %PC.i717
  %2269 = add i64 %2268, 8
  store i64 %2269, i64* %PC.i717
  %2270 = inttoptr i64 %2267 to i8*
  %2271 = load i8, i8* %2270
  %2272 = zext i8 %2271 to i64
  store i64 %2272, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_43dcda, %struct.Memory** %MEMORY
  %loadMem_43dce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 5
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %ECX.i716 = bitcast %union.anon* %2278 to i32*
  %2279 = load i32, i32* %ECX.i716
  %2280 = zext i32 %2279 to i64
  %2281 = load i64, i64* %PC.i715
  %2282 = add i64 %2281, 3
  store i64 %2282, i64* %PC.i715
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2283, align 1
  %2284 = and i32 %2279, 255
  %2285 = call i32 @llvm.ctpop.i32(i32 %2284)
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2288, i8* %2289, align 1
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2290, align 1
  %2291 = icmp eq i32 %2279, 0
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2292, i8* %2293, align 1
  %2294 = lshr i32 %2279, 31
  %2295 = trunc i32 %2294 to i8
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2295, i8* %2296, align 1
  %2297 = lshr i32 %2279, 31
  %2298 = xor i32 %2294, %2297
  %2299 = add i32 %2298, %2297
  %2300 = icmp eq i32 %2299, 2
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2301, i8* %2302, align 1
  store %struct.Memory* %loadMem_43dce2, %struct.Memory** %MEMORY
  %loadMem_43dce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %PC.i714
  %2307 = add i64 %2306, 32
  %2308 = load i64, i64* %PC.i714
  %2309 = add i64 %2308, 6
  %2310 = load i64, i64* %PC.i714
  %2311 = add i64 %2310, 6
  store i64 %2311, i64* %PC.i714
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2313 = load i8, i8* %2312, align 1
  %2314 = icmp eq i8 %2313, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %BRANCH_TAKEN, align 1
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2317 = select i1 %2314, i64 %2307, i64 %2309
  store i64 %2317, i64* %2316, align 8
  store %struct.Memory* %loadMem_43dce5, %struct.Memory** %MEMORY
  %loadBr_43dce5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dce5 = icmp eq i8 %loadBr_43dce5, 1
  br i1 %cmpBr_43dce5, label %block_.L_43dd05, label %block_43dceb

block_43dceb:                                     ; preds = %block_43dcd3
  %loadMem_43dceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 11
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RDI.i712 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 15
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RBP.i713
  %2328 = sub i64 %2327, 1636
  %2329 = load i64, i64* %PC.i711
  %2330 = add i64 %2329, 6
  store i64 %2330, i64* %PC.i711
  %2331 = inttoptr i64 %2328 to i32*
  %2332 = load i32, i32* %2331
  %2333 = zext i32 %2332 to i64
  store i64 %2333, i64* %RDI.i712, align 8
  store %struct.Memory* %loadMem_43dceb, %struct.Memory** %MEMORY
  %loadMem_43dcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 9
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RSI.i709 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 15
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %RBP.i710
  %2344 = sub i64 %2343, 1640
  %2345 = load i64, i64* %PC.i708
  %2346 = add i64 %2345, 6
  store i64 %2346, i64* %PC.i708
  %2347 = inttoptr i64 %2344 to i32*
  %2348 = load i32, i32* %2347
  %2349 = zext i32 %2348 to i64
  store i64 %2349, i64* %RSI.i709, align 8
  store %struct.Memory* %loadMem_43dcf1, %struct.Memory** %MEMORY
  %loadMem1_43dcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %PC.i707
  %2354 = add i64 %2353, -168519
  %2355 = load i64, i64* %PC.i707
  %2356 = add i64 %2355, 5
  %2357 = load i64, i64* %PC.i707
  %2358 = add i64 %2357, 5
  store i64 %2358, i64* %PC.i707
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2360 = load i64, i64* %2359, align 8
  %2361 = add i64 %2360, -8
  %2362 = inttoptr i64 %2361 to i64*
  store i64 %2356, i64* %2362
  store i64 %2361, i64* %2359, align 8
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2354, i64* %2363, align 8
  store %struct.Memory* %loadMem1_43dcf7, %struct.Memory** %MEMORY
  %loadMem2_43dcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dcf7 = load i64, i64* %3
  %call2_43dcf7 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64 %loadPC_43dcf7, %struct.Memory* %loadMem2_43dcf7)
  store %struct.Memory* %call2_43dcf7, %struct.Memory** %MEMORY
  %loadMem_43dcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 1
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %EAX.i706 = bitcast %union.anon* %2369 to i32*
  %2370 = load i32, i32* %EAX.i706
  %2371 = zext i32 %2370 to i64
  %2372 = load i64, i64* %PC.i705
  %2373 = add i64 %2372, 3
  store i64 %2373, i64* %PC.i705
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2374, align 1
  %2375 = and i32 %2370, 255
  %2376 = call i32 @llvm.ctpop.i32(i32 %2375)
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = xor i8 %2378, 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2379, i8* %2380, align 1
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2381, align 1
  %2382 = icmp eq i32 %2370, 0
  %2383 = zext i1 %2382 to i8
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2383, i8* %2384, align 1
  %2385 = lshr i32 %2370, 31
  %2386 = trunc i32 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2386, i8* %2387, align 1
  %2388 = lshr i32 %2370, 31
  %2389 = xor i32 %2385, %2388
  %2390 = add i32 %2389, %2388
  %2391 = icmp eq i32 %2390, 2
  %2392 = zext i1 %2391 to i8
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2392, i8* %2393, align 1
  store %struct.Memory* %loadMem_43dcfc, %struct.Memory** %MEMORY
  %loadMem_43dcff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %2396 to i64*
  %2397 = load i64, i64* %PC.i704
  %2398 = add i64 %2397, 11
  %2399 = load i64, i64* %PC.i704
  %2400 = add i64 %2399, 6
  %2401 = load i64, i64* %PC.i704
  %2402 = add i64 %2401, 6
  store i64 %2402, i64* %PC.i704
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2404 = load i8, i8* %2403, align 1
  store i8 %2404, i8* %BRANCH_TAKEN, align 1
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2406 = icmp ne i8 %2404, 0
  %2407 = select i1 %2406, i64 %2398, i64 %2400
  store i64 %2407, i64* %2405, align 8
  store %struct.Memory* %loadMem_43dcff, %struct.Memory** %MEMORY
  %loadBr_43dcff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dcff = icmp eq i8 %loadBr_43dcff, 1
  br i1 %cmpBr_43dcff, label %block_.L_43dd0a, label %block_.L_43dd05

block_.L_43dd05:                                  ; preds = %block_43dceb, %block_43dcd3, %block_43dcbe
  %loadMem_43dd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2410 to i64*
  %2411 = load i64, i64* %PC.i703
  %2412 = add i64 %2411, 143
  %2413 = load i64, i64* %PC.i703
  %2414 = add i64 %2413, 5
  store i64 %2414, i64* %PC.i703
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2412, i64* %2415, align 8
  store %struct.Memory* %loadMem_43dd05, %struct.Memory** %MEMORY
  br label %block_.L_43dd94

block_.L_43dd0a:                                  ; preds = %block_43dceb
  %loadMem_43dd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 15
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %RBP.i702
  %2423 = sub i64 %2422, 20
  %2424 = load i64, i64* %PC.i701
  %2425 = add i64 %2424, 7
  store i64 %2425, i64* %PC.i701
  %2426 = inttoptr i64 %2423 to i32*
  store i32 0, i32* %2426
  store %struct.Memory* %loadMem_43dd0a, %struct.Memory** %MEMORY
  br label %block_.L_43dd11

block_.L_43dd11:                                  ; preds = %block_.L_43dd81, %block_.L_43dd0a
  %loadMem_43dd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RBP.i700
  %2434 = sub i64 %2433, 20
  %2435 = load i64, i64* %PC.i699
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %PC.i699
  %2437 = inttoptr i64 %2434 to i32*
  %2438 = load i32, i32* %2437
  %2439 = sub i32 %2438, 8
  %2440 = icmp ult i32 %2438, 8
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2441, i8* %2442, align 1
  %2443 = and i32 %2439, 255
  %2444 = call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2447, i8* %2448, align 1
  %2449 = xor i32 %2438, 8
  %2450 = xor i32 %2449, %2439
  %2451 = lshr i32 %2450, 4
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2453, i8* %2454, align 1
  %2455 = icmp eq i32 %2439, 0
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2456, i8* %2457, align 1
  %2458 = lshr i32 %2439, 31
  %2459 = trunc i32 %2458 to i8
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2459, i8* %2460, align 1
  %2461 = lshr i32 %2438, 31
  %2462 = xor i32 %2458, %2461
  %2463 = add i32 %2462, %2461
  %2464 = icmp eq i32 %2463, 2
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2465, i8* %2466, align 1
  store %struct.Memory* %loadMem_43dd11, %struct.Memory** %MEMORY
  %loadMem_43dd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %PC.i698
  %2471 = add i64 %2470, 122
  %2472 = load i64, i64* %PC.i698
  %2473 = add i64 %2472, 6
  %2474 = load i64, i64* %PC.i698
  %2475 = add i64 %2474, 6
  store i64 %2475, i64* %PC.i698
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2477 = load i8, i8* %2476, align 1
  %2478 = icmp ne i8 %2477, 0
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2480 = load i8, i8* %2479, align 1
  %2481 = icmp ne i8 %2480, 0
  %2482 = xor i1 %2478, %2481
  %2483 = xor i1 %2482, true
  %2484 = zext i1 %2483 to i8
  store i8 %2484, i8* %BRANCH_TAKEN, align 1
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2486 = select i1 %2482, i64 %2473, i64 %2471
  store i64 %2486, i64* %2485, align 8
  store %struct.Memory* %loadMem_43dd15, %struct.Memory** %MEMORY
  %loadBr_43dd15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dd15 = icmp eq i8 %loadBr_43dd15, 1
  br i1 %cmpBr_43dd15, label %block_.L_43dd8f, label %block_43dd1b

block_43dd1b:                                     ; preds = %block_.L_43dd11
  %loadMem_43dd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i697
  %2497 = sub i64 %2496, 1636
  %2498 = load i64, i64* %PC.i695
  %2499 = add i64 %2498, 6
  store i64 %2499, i64* %PC.i695
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RAX.i696, align 8
  store %struct.Memory* %loadMem_43dd1b, %struct.Memory** %MEMORY
  %loadMem_43dd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 15
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %RBP.i694
  %2513 = sub i64 %2512, 20
  %2514 = load i64, i64* %PC.i692
  %2515 = add i64 %2514, 4
  store i64 %2515, i64* %PC.i692
  %2516 = inttoptr i64 %2513 to i32*
  %2517 = load i32, i32* %2516
  %2518 = sext i32 %2517 to i64
  store i64 %2518, i64* %RCX.i693, align 8
  store %struct.Memory* %loadMem_43dd21, %struct.Memory** %MEMORY
  %loadMem_43dd25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 1
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 5
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RCX.i691 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RAX.i690
  %2529 = load i64, i64* %RCX.i691
  %2530 = mul i64 %2529, 4
  %2531 = add i64 %2530, 8053168
  %2532 = load i64, i64* %PC.i689
  %2533 = add i64 %2532, 7
  store i64 %2533, i64* %PC.i689
  %2534 = trunc i64 %2528 to i32
  %2535 = inttoptr i64 %2531 to i32*
  %2536 = load i32, i32* %2535
  %2537 = add i32 %2536, %2534
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RAX.i690, align 8
  %2539 = icmp ult i32 %2537, %2534
  %2540 = icmp ult i32 %2537, %2536
  %2541 = or i1 %2539, %2540
  %2542 = zext i1 %2541 to i8
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2542, i8* %2543, align 1
  %2544 = and i32 %2537, 255
  %2545 = call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2548, i8* %2549, align 1
  %2550 = xor i32 %2536, %2534
  %2551 = xor i32 %2550, %2537
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2554, i8* %2555, align 1
  %2556 = icmp eq i32 %2537, 0
  %2557 = zext i1 %2556 to i8
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2557, i8* %2558, align 1
  %2559 = lshr i32 %2537, 31
  %2560 = trunc i32 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2560, i8* %2561, align 1
  %2562 = lshr i32 %2534, 31
  %2563 = lshr i32 %2536, 31
  %2564 = xor i32 %2559, %2562
  %2565 = xor i32 %2559, %2563
  %2566 = add i32 %2564, %2565
  %2567 = icmp eq i32 %2566, 2
  %2568 = zext i1 %2567 to i8
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2568, i8* %2569, align 1
  store %struct.Memory* %loadMem_43dd25, %struct.Memory** %MEMORY
  %loadMem_43dd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 33
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 1
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %EAX.i687 = bitcast %union.anon* %2575 to i32*
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 5
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %RCX.i688 = bitcast %union.anon* %2578 to i64*
  %2579 = load i32, i32* %EAX.i687
  %2580 = zext i32 %2579 to i64
  %2581 = load i64, i64* %PC.i686
  %2582 = add i64 %2581, 3
  store i64 %2582, i64* %PC.i686
  %2583 = shl i64 %2580, 32
  %2584 = ashr exact i64 %2583, 32
  store i64 %2584, i64* %RCX.i688, align 8
  store %struct.Memory* %loadMem_43dd2c, %struct.Memory** %MEMORY
  %loadMem_43dd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 1
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RAX.i684 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 5
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %RCX.i685
  %2595 = add i64 %2594, 12099168
  %2596 = load i64, i64* %PC.i683
  %2597 = add i64 %2596, 8
  store i64 %2597, i64* %PC.i683
  %2598 = inttoptr i64 %2595 to i8*
  %2599 = load i8, i8* %2598
  %2600 = zext i8 %2599 to i64
  store i64 %2600, i64* %RAX.i684, align 8
  store %struct.Memory* %loadMem_43dd2f, %struct.Memory** %MEMORY
  %loadMem_43dd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 1
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %EAX.i682 = bitcast %union.anon* %2606 to i32*
  %2607 = load i32, i32* %EAX.i682
  %2608 = zext i32 %2607 to i64
  %2609 = load i64, i64* %PC.i681
  %2610 = add i64 %2609, 3
  store i64 %2610, i64* %PC.i681
  %2611 = sub i32 %2607, 3
  %2612 = icmp ult i32 %2607, 3
  %2613 = zext i1 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2613, i8* %2614, align 1
  %2615 = and i32 %2611, 255
  %2616 = call i32 @llvm.ctpop.i32(i32 %2615)
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  %2619 = xor i8 %2618, 1
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2619, i8* %2620, align 1
  %2621 = xor i64 3, %2608
  %2622 = trunc i64 %2621 to i32
  %2623 = xor i32 %2622, %2611
  %2624 = lshr i32 %2623, 4
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2626, i8* %2627, align 1
  %2628 = icmp eq i32 %2611, 0
  %2629 = zext i1 %2628 to i8
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2629, i8* %2630, align 1
  %2631 = lshr i32 %2611, 31
  %2632 = trunc i32 %2631 to i8
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2632, i8* %2633, align 1
  %2634 = lshr i32 %2607, 31
  %2635 = xor i32 %2631, %2634
  %2636 = add i32 %2635, %2634
  %2637 = icmp eq i32 %2636, 2
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2638, i8* %2639, align 1
  store %struct.Memory* %loadMem_43dd37, %struct.Memory** %MEMORY
  %loadMem_43dd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %PC.i680
  %2644 = add i64 %2643, 66
  %2645 = load i64, i64* %PC.i680
  %2646 = add i64 %2645, 6
  %2647 = load i64, i64* %PC.i680
  %2648 = add i64 %2647, 6
  store i64 %2648, i64* %PC.i680
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2650 = load i8, i8* %2649, align 1
  store i8 %2650, i8* %BRANCH_TAKEN, align 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2652 = icmp ne i8 %2650, 0
  %2653 = select i1 %2652, i64 %2644, i64 %2646
  store i64 %2653, i64* %2651, align 8
  store %struct.Memory* %loadMem_43dd3a, %struct.Memory** %MEMORY
  %loadBr_43dd3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dd3a = icmp eq i8 %loadBr_43dd3a, 1
  br i1 %cmpBr_43dd3a, label %block_.L_43dd7c, label %block_43dd40

block_43dd40:                                     ; preds = %block_43dd1b
  %loadMem_43dd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 1
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 15
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %2662 to i64*
  %2663 = load i64, i64* %RBP.i679
  %2664 = sub i64 %2663, 1636
  %2665 = load i64, i64* %PC.i677
  %2666 = add i64 %2665, 6
  store i64 %2666, i64* %PC.i677
  %2667 = inttoptr i64 %2664 to i32*
  %2668 = load i32, i32* %2667
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %RAX.i678, align 8
  store %struct.Memory* %loadMem_43dd40, %struct.Memory** %MEMORY
  %loadMem_43dd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 5
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RCX.i675 = bitcast %union.anon* %2675 to i64*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 15
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %2678 to i64*
  %2679 = load i64, i64* %RBP.i676
  %2680 = sub i64 %2679, 20
  %2681 = load i64, i64* %PC.i674
  %2682 = add i64 %2681, 4
  store i64 %2682, i64* %PC.i674
  %2683 = inttoptr i64 %2680 to i32*
  %2684 = load i32, i32* %2683
  %2685 = sext i32 %2684 to i64
  store i64 %2685, i64* %RCX.i675, align 8
  store %struct.Memory* %loadMem_43dd46, %struct.Memory** %MEMORY
  %loadMem_43dd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 1
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 5
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RCX.i673 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RAX.i672
  %2696 = load i64, i64* %RCX.i673
  %2697 = mul i64 %2696, 4
  %2698 = add i64 %2697, 8053168
  %2699 = load i64, i64* %PC.i671
  %2700 = add i64 %2699, 7
  store i64 %2700, i64* %PC.i671
  %2701 = trunc i64 %2695 to i32
  %2702 = inttoptr i64 %2698 to i32*
  %2703 = load i32, i32* %2702
  %2704 = add i32 %2703, %2701
  %2705 = zext i32 %2704 to i64
  store i64 %2705, i64* %RAX.i672, align 8
  %2706 = icmp ult i32 %2704, %2701
  %2707 = icmp ult i32 %2704, %2703
  %2708 = or i1 %2706, %2707
  %2709 = zext i1 %2708 to i8
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2709, i8* %2710, align 1
  %2711 = and i32 %2704, 255
  %2712 = call i32 @llvm.ctpop.i32(i32 %2711)
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2715, i8* %2716, align 1
  %2717 = xor i32 %2703, %2701
  %2718 = xor i32 %2717, %2704
  %2719 = lshr i32 %2718, 4
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2721, i8* %2722, align 1
  %2723 = icmp eq i32 %2704, 0
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2724, i8* %2725, align 1
  %2726 = lshr i32 %2704, 31
  %2727 = trunc i32 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2727, i8* %2728, align 1
  %2729 = lshr i32 %2701, 31
  %2730 = lshr i32 %2703, 31
  %2731 = xor i32 %2726, %2729
  %2732 = xor i32 %2726, %2730
  %2733 = add i32 %2731, %2732
  %2734 = icmp eq i32 %2733, 2
  %2735 = zext i1 %2734 to i8
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2735, i8* %2736, align 1
  store %struct.Memory* %loadMem_43dd4a, %struct.Memory** %MEMORY
  %loadMem_43dd51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 33
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2739 to i64*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 9
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %RSI.i669 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 15
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %RBP.i670
  %2747 = sub i64 %2746, 1640
  %2748 = load i64, i64* %PC.i668
  %2749 = add i64 %2748, 6
  store i64 %2749, i64* %PC.i668
  %2750 = inttoptr i64 %2747 to i32*
  %2751 = load i32, i32* %2750
  %2752 = zext i32 %2751 to i64
  store i64 %2752, i64* %RSI.i669, align 8
  store %struct.Memory* %loadMem_43dd51, %struct.Memory** %MEMORY
  %loadMem_43dd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 1
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %EAX.i666 = bitcast %union.anon* %2758 to i32*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 11
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RDI.i667 = bitcast %union.anon* %2761 to i64*
  %2762 = load i32, i32* %EAX.i666
  %2763 = zext i32 %2762 to i64
  %2764 = load i64, i64* %PC.i665
  %2765 = add i64 %2764, 2
  store i64 %2765, i64* %PC.i665
  %2766 = and i64 %2763, 4294967295
  store i64 %2766, i64* %RDI.i667, align 8
  store %struct.Memory* %loadMem_43dd57, %struct.Memory** %MEMORY
  %loadMem1_43dd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %PC.i664
  %2771 = add i64 %2770, -168617
  %2772 = load i64, i64* %PC.i664
  %2773 = add i64 %2772, 5
  %2774 = load i64, i64* %PC.i664
  %2775 = add i64 %2774, 5
  store i64 %2775, i64* %PC.i664
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2777 = load i64, i64* %2776, align 8
  %2778 = add i64 %2777, -8
  %2779 = inttoptr i64 %2778 to i64*
  store i64 %2773, i64* %2779
  store i64 %2778, i64* %2776, align 8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2771, i64* %2780, align 8
  store %struct.Memory* %loadMem1_43dd59, %struct.Memory** %MEMORY
  %loadMem2_43dd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dd59 = load i64, i64* %3
  %call2_43dd59 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64 %loadPC_43dd59, %struct.Memory* %loadMem2_43dd59)
  store %struct.Memory* %call2_43dd59, %struct.Memory** %MEMORY
  %loadMem_43dd5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 1
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %EAX.i663 = bitcast %union.anon* %2786 to i32*
  %2787 = load i32, i32* %EAX.i663
  %2788 = zext i32 %2787 to i64
  %2789 = load i64, i64* %PC.i662
  %2790 = add i64 %2789, 3
  store i64 %2790, i64* %PC.i662
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2791, align 1
  %2792 = and i32 %2787, 255
  %2793 = call i32 @llvm.ctpop.i32(i32 %2792)
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = xor i8 %2795, 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2796, i8* %2797, align 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2798, align 1
  %2799 = icmp eq i32 %2787, 0
  %2800 = zext i1 %2799 to i8
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2800, i8* %2801, align 1
  %2802 = lshr i32 %2787, 31
  %2803 = trunc i32 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2803, i8* %2804, align 1
  %2805 = lshr i32 %2787, 31
  %2806 = xor i32 %2802, %2805
  %2807 = add i32 %2806, %2805
  %2808 = icmp eq i32 %2807, 2
  %2809 = zext i1 %2808 to i8
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2809, i8* %2810, align 1
  store %struct.Memory* %loadMem_43dd5e, %struct.Memory** %MEMORY
  %loadMem_43dd61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 33
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2813 to i64*
  %2814 = load i64, i64* %PC.i661
  %2815 = add i64 %2814, 27
  %2816 = load i64, i64* %PC.i661
  %2817 = add i64 %2816, 6
  %2818 = load i64, i64* %PC.i661
  %2819 = add i64 %2818, 6
  store i64 %2819, i64* %PC.i661
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2821 = load i8, i8* %2820, align 1
  store i8 %2821, i8* %BRANCH_TAKEN, align 1
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2823 = icmp ne i8 %2821, 0
  %2824 = select i1 %2823, i64 %2815, i64 %2817
  store i64 %2824, i64* %2822, align 8
  store %struct.Memory* %loadMem_43dd61, %struct.Memory** %MEMORY
  %loadBr_43dd61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dd61 = icmp eq i8 %loadBr_43dd61, 1
  br i1 %cmpBr_43dd61, label %block_.L_43dd7c, label %block_43dd67

block_43dd67:                                     ; preds = %block_43dd40
  %loadMem_43dd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 9
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RSI.i660 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %PC.i659
  %2832 = add i64 %2831, 5
  store i64 %2832, i64* %PC.i659
  store i64 2, i64* %RSI.i660, align 8
  store %struct.Memory* %loadMem_43dd67, %struct.Memory** %MEMORY
  %loadMem_43dd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 11
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RDI.i657 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 15
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %RBP.i658
  %2843 = sub i64 %2842, 1636
  %2844 = load i64, i64* %PC.i656
  %2845 = add i64 %2844, 6
  store i64 %2845, i64* %PC.i656
  %2846 = inttoptr i64 %2843 to i32*
  %2847 = load i32, i32* %2846
  %2848 = zext i32 %2847 to i64
  store i64 %2848, i64* %RDI.i657, align 8
  store %struct.Memory* %loadMem_43dd6c, %struct.Memory** %MEMORY
  %loadMem1_43dd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 33
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2851 to i64*
  %2852 = load i64, i64* %PC.i655
  %2853 = add i64 %2852, -195170
  %2854 = load i64, i64* %PC.i655
  %2855 = add i64 %2854, 5
  %2856 = load i64, i64* %PC.i655
  %2857 = add i64 %2856, 5
  store i64 %2857, i64* %PC.i655
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2859 = load i64, i64* %2858, align 8
  %2860 = add i64 %2859, -8
  %2861 = inttoptr i64 %2860 to i64*
  store i64 %2855, i64* %2861
  store i64 %2860, i64* %2858, align 8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2853, i64* %2862, align 8
  store %struct.Memory* %loadMem1_43dd72, %struct.Memory** %MEMORY
  %loadMem2_43dd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dd72 = load i64, i64* %3
  %call2_43dd72 = call %struct.Memory* @sub_40e310.play_move(%struct.State* %0, i64 %loadPC_43dd72, %struct.Memory* %loadMem2_43dd72)
  store %struct.Memory* %call2_43dd72, %struct.Memory** %MEMORY
  %loadMem_43dd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2865 to i64*
  %2866 = load i64, i64* %PC.i654
  %2867 = add i64 %2866, 24
  %2868 = load i64, i64* %PC.i654
  %2869 = add i64 %2868, 5
  store i64 %2869, i64* %PC.i654
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2867, i64* %2870, align 8
  store %struct.Memory* %loadMem_43dd77, %struct.Memory** %MEMORY
  br label %block_.L_43dd8f

block_.L_43dd7c:                                  ; preds = %block_43dd40, %block_43dd1b
  %loadMem_43dd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %PC.i653
  %2875 = add i64 %2874, 5
  %2876 = load i64, i64* %PC.i653
  %2877 = add i64 %2876, 5
  store i64 %2877, i64* %PC.i653
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2875, i64* %2878, align 8
  store %struct.Memory* %loadMem_43dd7c, %struct.Memory** %MEMORY
  br label %block_.L_43dd81

block_.L_43dd81:                                  ; preds = %block_.L_43dd7c
  %loadMem_43dd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 1
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %2884 to i64*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 15
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %2887 to i64*
  %2888 = load i64, i64* %RBP.i652
  %2889 = sub i64 %2888, 20
  %2890 = load i64, i64* %PC.i650
  %2891 = add i64 %2890, 3
  store i64 %2891, i64* %PC.i650
  %2892 = inttoptr i64 %2889 to i32*
  %2893 = load i32, i32* %2892
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RAX.i651, align 8
  store %struct.Memory* %loadMem_43dd81, %struct.Memory** %MEMORY
  %loadMem_43dd84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 1
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %RAX.i649
  %2902 = load i64, i64* %PC.i648
  %2903 = add i64 %2902, 3
  store i64 %2903, i64* %PC.i648
  %2904 = trunc i64 %2901 to i32
  %2905 = add i32 1, %2904
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RAX.i649, align 8
  %2907 = icmp ult i32 %2905, %2904
  %2908 = icmp ult i32 %2905, 1
  %2909 = or i1 %2907, %2908
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2910, i8* %2911, align 1
  %2912 = and i32 %2905, 255
  %2913 = call i32 @llvm.ctpop.i32(i32 %2912)
  %2914 = trunc i32 %2913 to i8
  %2915 = and i8 %2914, 1
  %2916 = xor i8 %2915, 1
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2916, i8* %2917, align 1
  %2918 = xor i64 1, %2901
  %2919 = trunc i64 %2918 to i32
  %2920 = xor i32 %2919, %2905
  %2921 = lshr i32 %2920, 4
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2923, i8* %2924, align 1
  %2925 = icmp eq i32 %2905, 0
  %2926 = zext i1 %2925 to i8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2926, i8* %2927, align 1
  %2928 = lshr i32 %2905, 31
  %2929 = trunc i32 %2928 to i8
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2929, i8* %2930, align 1
  %2931 = lshr i32 %2904, 31
  %2932 = xor i32 %2928, %2931
  %2933 = add i32 %2932, %2928
  %2934 = icmp eq i32 %2933, 2
  %2935 = zext i1 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2935, i8* %2936, align 1
  store %struct.Memory* %loadMem_43dd84, %struct.Memory** %MEMORY
  %loadMem_43dd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 1
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %EAX.i646 = bitcast %union.anon* %2942 to i32*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 15
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %2945 to i64*
  %2946 = load i64, i64* %RBP.i647
  %2947 = sub i64 %2946, 20
  %2948 = load i32, i32* %EAX.i646
  %2949 = zext i32 %2948 to i64
  %2950 = load i64, i64* %PC.i645
  %2951 = add i64 %2950, 3
  store i64 %2951, i64* %PC.i645
  %2952 = inttoptr i64 %2947 to i32*
  store i32 %2948, i32* %2952
  store %struct.Memory* %loadMem_43dd87, %struct.Memory** %MEMORY
  %loadMem_43dd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %PC.i644
  %2957 = add i64 %2956, -121
  %2958 = load i64, i64* %PC.i644
  %2959 = add i64 %2958, 5
  store i64 %2959, i64* %PC.i644
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2957, i64* %2960, align 8
  store %struct.Memory* %loadMem_43dd8a, %struct.Memory** %MEMORY
  br label %block_.L_43dd11

block_.L_43dd8f:                                  ; preds = %block_43dd67, %block_.L_43dd11
  %loadMem_43dd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 33
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %PC.i643
  %2965 = add i64 %2964, 5
  %2966 = load i64, i64* %PC.i643
  %2967 = add i64 %2966, 5
  store i64 %2967, i64* %PC.i643
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2965, i64* %2968, align 8
  store %struct.Memory* %loadMem_43dd8f, %struct.Memory** %MEMORY
  br label %block_.L_43dd94

block_.L_43dd94:                                  ; preds = %block_.L_43dd8f, %block_.L_43dd05
  %loadMem_43dd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 1
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 15
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %RBP.i642
  %2979 = sub i64 %2978, 1636
  %2980 = load i64, i64* %PC.i640
  %2981 = add i64 %2980, 6
  store i64 %2981, i64* %PC.i640
  %2982 = inttoptr i64 %2979 to i32*
  %2983 = load i32, i32* %2982
  %2984 = zext i32 %2983 to i64
  store i64 %2984, i64* %RAX.i641, align 8
  store %struct.Memory* %loadMem_43dd94, %struct.Memory** %MEMORY
  %loadMem_43dd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 1
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %2990 to i64*
  %2991 = load i64, i64* %RAX.i639
  %2992 = load i64, i64* %PC.i638
  %2993 = add i64 %2992, 3
  store i64 %2993, i64* %PC.i638
  %2994 = trunc i64 %2991 to i32
  %2995 = add i32 1, %2994
  %2996 = zext i32 %2995 to i64
  store i64 %2996, i64* %RAX.i639, align 8
  %2997 = icmp ult i32 %2995, %2994
  %2998 = icmp ult i32 %2995, 1
  %2999 = or i1 %2997, %2998
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3000, i8* %3001, align 1
  %3002 = and i32 %2995, 255
  %3003 = call i32 @llvm.ctpop.i32(i32 %3002)
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = xor i8 %3005, 1
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3006, i8* %3007, align 1
  %3008 = xor i64 1, %2991
  %3009 = trunc i64 %3008 to i32
  %3010 = xor i32 %3009, %2995
  %3011 = lshr i32 %3010, 4
  %3012 = trunc i32 %3011 to i8
  %3013 = and i8 %3012, 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3013, i8* %3014, align 1
  %3015 = icmp eq i32 %2995, 0
  %3016 = zext i1 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3016, i8* %3017, align 1
  %3018 = lshr i32 %2995, 31
  %3019 = trunc i32 %3018 to i8
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3019, i8* %3020, align 1
  %3021 = lshr i32 %2994, 31
  %3022 = xor i32 %3018, %3021
  %3023 = add i32 %3022, %3018
  %3024 = icmp eq i32 %3023, 2
  %3025 = zext i1 %3024 to i8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3025, i8* %3026, align 1
  store %struct.Memory* %loadMem_43dd9a, %struct.Memory** %MEMORY
  %loadMem_43dd9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 1
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %EAX.i636 = bitcast %union.anon* %3032 to i32*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 15
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RBP.i637
  %3037 = sub i64 %3036, 1636
  %3038 = load i32, i32* %EAX.i636
  %3039 = zext i32 %3038 to i64
  %3040 = load i64, i64* %PC.i635
  %3041 = add i64 %3040, 6
  store i64 %3041, i64* %PC.i635
  %3042 = inttoptr i64 %3037 to i32*
  store i32 %3038, i32* %3042
  store %struct.Memory* %loadMem_43dd9d, %struct.Memory** %MEMORY
  %loadMem_43dda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %PC.i634
  %3047 = add i64 %3046, -245
  %3048 = load i64, i64* %PC.i634
  %3049 = add i64 %3048, 5
  store i64 %3049, i64* %PC.i634
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3047, i64* %3050, align 8
  store %struct.Memory* %loadMem_43dda3, %struct.Memory** %MEMORY
  br label %block_.L_43dcae

block_.L_43dda8:                                  ; preds = %block_.L_43dcae
  %loadMem_43dda8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %PC.i633
  %3055 = add i64 %3054, 8
  store i64 %3055, i64* %PC.i633
  %3056 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3057, align 1
  %3058 = and i32 %3056, 255
  %3059 = call i32 @llvm.ctpop.i32(i32 %3058)
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = xor i8 %3061, 1
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3062, i8* %3063, align 1
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3064, align 1
  %3065 = icmp eq i32 %3056, 0
  %3066 = zext i1 %3065 to i8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3066, i8* %3067, align 1
  %3068 = lshr i32 %3056, 31
  %3069 = trunc i32 %3068 to i8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3069, i8* %3070, align 1
  %3071 = lshr i32 %3056, 31
  %3072 = xor i32 %3068, %3071
  %3073 = add i32 %3072, %3071
  %3074 = icmp eq i32 %3073, 2
  %3075 = zext i1 %3074 to i8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3075, i8* %3076, align 1
  store %struct.Memory* %loadMem_43dda8, %struct.Memory** %MEMORY
  %loadMem_43ddb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3079 to i64*
  %3080 = load i64, i64* %PC.i632
  %3081 = add i64 %3080, 13
  %3082 = load i64, i64* %PC.i632
  %3083 = add i64 %3082, 6
  %3084 = load i64, i64* %PC.i632
  %3085 = add i64 %3084, 6
  store i64 %3085, i64* %PC.i632
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3087 = load i8, i8* %3086, align 1
  store i8 %3087, i8* %BRANCH_TAKEN, align 1
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3089 = icmp ne i8 %3087, 0
  %3090 = select i1 %3089, i64 %3081, i64 %3083
  store i64 %3090, i64* %3088, align 8
  store %struct.Memory* %loadMem_43ddb0, %struct.Memory** %MEMORY
  %loadBr_43ddb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ddb0 = icmp eq i8 %loadBr_43ddb0, 1
  br i1 %cmpBr_43ddb0, label %block_.L_43ddbd, label %block_43ddb6

block_43ddb6:                                     ; preds = %block_.L_43dda8
  %loadMem_43ddb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 33
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 11
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %EDI.i630 = bitcast %union.anon* %3096 to i32*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 11
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RDI.i631 = bitcast %union.anon* %3099 to i64*
  %3100 = load i64, i64* %RDI.i631
  %3101 = load i32, i32* %EDI.i630
  %3102 = zext i32 %3101 to i64
  %3103 = load i64, i64* %PC.i629
  %3104 = add i64 %3103, 2
  store i64 %3104, i64* %PC.i629
  %3105 = xor i64 %3102, %3100
  %3106 = trunc i64 %3105 to i32
  %3107 = and i64 %3105, 4294967295
  store i64 %3107, i64* %RDI.i631, align 8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3108, align 1
  %3109 = and i32 %3106, 255
  %3110 = call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3113, i8* %3114, align 1
  %3115 = icmp eq i32 %3106, 0
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3116, i8* %3117, align 1
  %3118 = lshr i32 %3106, 31
  %3119 = trunc i32 %3118 to i8
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3119, i8* %3120, align 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3121, align 1
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3122, align 1
  store %struct.Memory* %loadMem_43ddb6, %struct.Memory** %MEMORY
  %loadMem1_43ddb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %PC.i628
  %3127 = add i64 %3126, 225352
  %3128 = load i64, i64* %PC.i628
  %3129 = add i64 %3128, 5
  %3130 = load i64, i64* %PC.i628
  %3131 = add i64 %3130, 5
  store i64 %3131, i64* %PC.i628
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3133 = load i64, i64* %3132, align 8
  %3134 = add i64 %3133, -8
  %3135 = inttoptr i64 %3134 to i64*
  store i64 %3129, i64* %3135
  store i64 %3134, i64* %3132, align 8
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3127, i64* %3136, align 8
  store %struct.Memory* %loadMem1_43ddb8, %struct.Memory** %MEMORY
  %loadMem2_43ddb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43ddb8 = load i64, i64* %3
  %call2_43ddb8 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43ddb8, %struct.Memory* %loadMem2_43ddb8)
  store %struct.Memory* %call2_43ddb8, %struct.Memory** %MEMORY
  br label %block_.L_43ddbd

block_.L_43ddbd:                                  ; preds = %block_43ddb6, %block_.L_43dda8
  %loadMem_43ddbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 11
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RDI.i626 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 15
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %3145 to i64*
  %3146 = load i64, i64* %RBP.i627
  %3147 = sub i64 %3146, 6552
  %3148 = load i64, i64* %PC.i625
  %3149 = add i64 %3148, 7
  store i64 %3149, i64* %PC.i625
  store i64 %3147, i64* %RDI.i626, align 8
  store %struct.Memory* %loadMem_43ddbd, %struct.Memory** %MEMORY
  %loadMem_43ddc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 1
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %PC.i623
  %3157 = add i64 %3156, 7
  store i64 %3157, i64* %PC.i623
  %3158 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %3159 = zext i32 %3158 to i64
  store i64 %3159, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_43ddc4, %struct.Memory** %MEMORY
  %loadMem_43ddcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 1
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %EAX.i621 = bitcast %union.anon* %3165 to i32*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 15
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %RBP.i622
  %3170 = sub i64 %3169, 1660
  %3171 = load i32, i32* %EAX.i621
  %3172 = zext i32 %3171 to i64
  %3173 = load i64, i64* %PC.i620
  %3174 = add i64 %3173, 6
  store i64 %3174, i64* %PC.i620
  %3175 = inttoptr i64 %3170 to i32*
  store i32 %3171, i32* %3175
  store %struct.Memory* %loadMem_43ddcb, %struct.Memory** %MEMORY
  %loadMem_43ddd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 33
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %PC.i619
  %3180 = add i64 %3179, 11
  store i64 %3180, i64* %PC.i619
  store i32 0, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_43ddd1, %struct.Memory** %MEMORY
  %loadMem1_43dddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 33
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %PC.i618
  %3185 = add i64 %3184, -221324
  %3186 = load i64, i64* %PC.i618
  %3187 = add i64 %3186, 5
  %3188 = load i64, i64* %PC.i618
  %3189 = add i64 %3188, 5
  store i64 %3189, i64* %PC.i618
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3191 = load i64, i64* %3190, align 8
  %3192 = add i64 %3191, -8
  %3193 = inttoptr i64 %3192 to i64*
  store i64 %3187, i64* %3193
  store i64 %3192, i64* %3190, align 8
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3185, i64* %3194, align 8
  store %struct.Memory* %loadMem1_43dddc, %struct.Memory** %MEMORY
  %loadMem2_43dddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dddc = load i64, i64* %3
  %call2_43dddc = call %struct.Memory* @sub_407d50.store_board(%struct.State* %0, i64 %loadPC_43dddc, %struct.Memory* %loadMem2_43dddc)
  store %struct.Memory* %call2_43dddc, %struct.Memory** %MEMORY
  %loadMem_43dde1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 1
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %PC.i616
  %3202 = add i64 %3201, 5
  store i64 %3202, i64* %PC.i616
  store i64 1, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_43dde1, %struct.Memory** %MEMORY
  %loadMem_43dde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 33
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 5
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 15
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %3211 to i64*
  %3212 = load i64, i64* %RBP.i615
  %3213 = sub i64 %3212, 4
  %3214 = load i64, i64* %PC.i613
  %3215 = add i64 %3214, 3
  store i64 %3215, i64* %PC.i613
  %3216 = inttoptr i64 %3213 to i32*
  %3217 = load i32, i32* %3216
  %3218 = zext i32 %3217 to i64
  store i64 %3218, i64* %RCX.i614, align 8
  store %struct.Memory* %loadMem_43dde6, %struct.Memory** %MEMORY
  %loadMem_43dde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 5
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %3225 = bitcast %union.anon* %3224 to %struct.anon.2*
  %CL.i610 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3225, i32 0, i32 0
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 1
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %3228 to i64*
  %3229 = load i64, i64* %RAX.i611
  %3230 = load i8, i8* %CL.i610
  %3231 = zext i8 %3230 to i64
  %3232 = load i64, i64* %PC.i609
  %3233 = add i64 %3232, 2
  store i64 %3233, i64* %PC.i609
  %3234 = trunc i64 %3231 to i5
  switch i5 %3234, label %3241 [
    i5 0, label %routine_shll__cl___eax.exit612
    i5 1, label %3235
  ]

; <label>:3235:                                   ; preds = %block_.L_43ddbd
  %3236 = trunc i64 %3229 to i32
  %3237 = shl i32 %3236, 1
  %3238 = icmp slt i32 %3236, 0
  %3239 = icmp slt i32 %3237, 0
  %3240 = xor i1 %3238, %3239
  br label %3250

; <label>:3241:                                   ; preds = %block_.L_43ddbd
  %3242 = and i64 %3231, 31
  %3243 = add i64 %3242, 4294967295
  %3244 = and i64 %3229, 4294967295
  %3245 = and i64 %3243, 4294967295
  %3246 = shl i64 %3244, %3245
  %3247 = trunc i64 %3246 to i32
  %3248 = icmp slt i32 %3247, 0
  %3249 = shl i32 %3247, 1
  br label %3250

; <label>:3250:                                   ; preds = %3241, %3235
  %3251 = phi i1 [ %3238, %3235 ], [ %3248, %3241 ]
  %3252 = phi i1 [ %3240, %3235 ], [ false, %3241 ]
  %3253 = phi i32 [ %3237, %3235 ], [ %3249, %3241 ]
  %3254 = zext i32 %3253 to i64
  store i64 %3254, i64* %RAX.i611, align 8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3256 = zext i1 %3251 to i8
  store i8 %3256, i8* %3255, align 1
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3258 = and i32 %3253, 254
  %3259 = call i32 @llvm.ctpop.i32(i32 %3258)
  %3260 = trunc i32 %3259 to i8
  %3261 = and i8 %3260, 1
  %3262 = xor i8 %3261, 1
  store i8 %3262, i8* %3257, align 1
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3263, align 1
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3265 = icmp eq i32 %3253, 0
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %3264, align 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3268 = lshr i32 %3253, 31
  %3269 = trunc i32 %3268 to i8
  store i8 %3269, i8* %3267, align 1
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3271 = zext i1 %3252 to i8
  store i8 %3271, i8* %3270, align 1
  br label %routine_shll__cl___eax.exit612

routine_shll__cl___eax.exit612:                   ; preds = %block_.L_43ddbd, %3250
  store %struct.Memory* %loadMem_43dde9, %struct.Memory** %MEMORY
  %loadMem_43ddeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 1
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %3277 to i32*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 15
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %3280 to i64*
  %3281 = load i64, i64* %RBP.i608
  %3282 = sub i64 %3281, 28
  %3283 = load i32, i32* %EAX.i607
  %3284 = zext i32 %3283 to i64
  %3285 = load i64, i64* %PC.i606
  %3286 = add i64 %3285, 3
  store i64 %3286, i64* %PC.i606
  %3287 = inttoptr i64 %3282 to i32*
  store i32 %3283, i32* %3287
  store %struct.Memory* %loadMem_43ddeb, %struct.Memory** %MEMORY
  %loadMem_43ddee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 15
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RBP.i605
  %3295 = sub i64 %3294, 24
  %3296 = load i64, i64* %PC.i604
  %3297 = add i64 %3296, 7
  store i64 %3297, i64* %PC.i604
  %3298 = inttoptr i64 %3295 to i32*
  store i32 0, i32* %3298
  store %struct.Memory* %loadMem_43ddee, %struct.Memory** %MEMORY
  br label %block_.L_43ddf5

block_.L_43ddf5:                                  ; preds = %block_.L_43e2e0, %routine_shll__cl___eax.exit612
  %loadMem_43ddf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 1
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %3304 to i64*
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 15
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %RBP.i603
  %3309 = sub i64 %3308, 24
  %3310 = load i64, i64* %PC.i601
  %3311 = add i64 %3310, 3
  store i64 %3311, i64* %PC.i601
  %3312 = inttoptr i64 %3309 to i32*
  %3313 = load i32, i32* %3312
  %3314 = zext i32 %3313 to i64
  store i64 %3314, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_43ddf5, %struct.Memory** %MEMORY
  %loadMem_43ddf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 1
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %EAX.i599 = bitcast %union.anon* %3320 to i32*
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 15
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %3323 to i64*
  %3324 = load i32, i32* %EAX.i599
  %3325 = zext i32 %3324 to i64
  %3326 = load i64, i64* %RBP.i600
  %3327 = sub i64 %3326, 28
  %3328 = load i64, i64* %PC.i598
  %3329 = add i64 %3328, 3
  store i64 %3329, i64* %PC.i598
  %3330 = inttoptr i64 %3327 to i32*
  %3331 = load i32, i32* %3330
  %3332 = sub i32 %3324, %3331
  %3333 = icmp ult i32 %3324, %3331
  %3334 = zext i1 %3333 to i8
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3334, i8* %3335, align 1
  %3336 = and i32 %3332, 255
  %3337 = call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3340, i8* %3341, align 1
  %3342 = xor i32 %3331, %3324
  %3343 = xor i32 %3342, %3332
  %3344 = lshr i32 %3343, 4
  %3345 = trunc i32 %3344 to i8
  %3346 = and i8 %3345, 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3346, i8* %3347, align 1
  %3348 = icmp eq i32 %3332, 0
  %3349 = zext i1 %3348 to i8
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3349, i8* %3350, align 1
  %3351 = lshr i32 %3332, 31
  %3352 = trunc i32 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3352, i8* %3353, align 1
  %3354 = lshr i32 %3324, 31
  %3355 = lshr i32 %3331, 31
  %3356 = xor i32 %3355, %3354
  %3357 = xor i32 %3351, %3354
  %3358 = add i32 %3357, %3356
  %3359 = icmp eq i32 %3358, 2
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3360, i8* %3361, align 1
  store %struct.Memory* %loadMem_43ddf8, %struct.Memory** %MEMORY
  %loadMem_43ddfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 33
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %PC.i597
  %3366 = add i64 %3365, 1267
  %3367 = load i64, i64* %PC.i597
  %3368 = add i64 %3367, 6
  %3369 = load i64, i64* %PC.i597
  %3370 = add i64 %3369, 6
  store i64 %3370, i64* %PC.i597
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3372 = load i8, i8* %3371, align 1
  %3373 = icmp ne i8 %3372, 0
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3375 = load i8, i8* %3374, align 1
  %3376 = icmp ne i8 %3375, 0
  %3377 = xor i1 %3373, %3376
  %3378 = xor i1 %3377, true
  %3379 = zext i1 %3378 to i8
  store i8 %3379, i8* %BRANCH_TAKEN, align 1
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3381 = select i1 %3377, i64 %3368, i64 %3366
  store i64 %3381, i64* %3380, align 8
  store %struct.Memory* %loadMem_43ddfb, %struct.Memory** %MEMORY
  %loadBr_43ddfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ddfb = icmp eq i8 %loadBr_43ddfb, 1
  br i1 %cmpBr_43ddfb, label %block_.L_43e2ee, label %block_43de01

block_43de01:                                     ; preds = %block_.L_43ddf5
  %loadMem_43de01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 11
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RDI.i595 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 15
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %RBP.i596
  %3392 = sub i64 %3391, 6552
  %3393 = load i64, i64* %PC.i594
  %3394 = add i64 %3393, 7
  store i64 %3394, i64* %PC.i594
  store i64 %3392, i64* %RDI.i595, align 8
  store %struct.Memory* %loadMem_43de01, %struct.Memory** %MEMORY
  %loadMem_43de08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 33
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3397 to i64*
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 15
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %3400 to i64*
  %3401 = load i64, i64* %RBP.i593
  %3402 = sub i64 %3401, 6556
  %3403 = load i64, i64* %PC.i592
  %3404 = add i64 %3403, 10
  store i64 %3404, i64* %PC.i592
  %3405 = inttoptr i64 %3402 to i32*
  store i32 1, i32* %3405
  store %struct.Memory* %loadMem_43de08, %struct.Memory** %MEMORY
  %loadMem_43de12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 15
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %3411 to i64*
  %3412 = load i64, i64* %RBP.i591
  %3413 = sub i64 %3412, 6560
  %3414 = load i64, i64* %PC.i590
  %3415 = add i64 %3414, 10
  store i64 %3415, i64* %PC.i590
  %3416 = inttoptr i64 %3413 to i32*
  store i32 0, i32* %3416
  store %struct.Memory* %loadMem_43de12, %struct.Memory** %MEMORY
  %loadMem1_43de1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %PC.i589
  %3421 = add i64 %3420, -220956
  %3422 = load i64, i64* %PC.i589
  %3423 = add i64 %3422, 5
  %3424 = load i64, i64* %PC.i589
  %3425 = add i64 %3424, 5
  store i64 %3425, i64* %PC.i589
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3427 = load i64, i64* %3426, align 8
  %3428 = add i64 %3427, -8
  %3429 = inttoptr i64 %3428 to i64*
  store i64 %3423, i64* %3429
  store i64 %3428, i64* %3426, align 8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3421, i64* %3430, align 8
  store %struct.Memory* %loadMem1_43de1c, %struct.Memory** %MEMORY
  %loadMem2_43de1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43de1c = load i64, i64* %3
  %call2_43de1c = call %struct.Memory* @sub_407f00.restore_board(%struct.State* %0, i64 %loadPC_43de1c, %struct.Memory* %loadMem2_43de1c)
  store %struct.Memory* %call2_43de1c, %struct.Memory** %MEMORY
  %loadMem_43de21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 15
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3436 to i64*
  %3437 = load i64, i64* %RBP.i588
  %3438 = sub i64 %3437, 20
  %3439 = load i64, i64* %PC.i587
  %3440 = add i64 %3439, 7
  store i64 %3440, i64* %PC.i587
  %3441 = inttoptr i64 %3438 to i32*
  store i32 0, i32* %3441
  store %struct.Memory* %loadMem_43de21, %struct.Memory** %MEMORY
  br label %block_.L_43de28

block_.L_43de28:                                  ; preds = %block_.L_43deb0, %block_43de01
  %loadMem_43de28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 1
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 15
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %RBP.i586
  %3452 = sub i64 %3451, 20
  %3453 = load i64, i64* %PC.i584
  %3454 = add i64 %3453, 3
  store i64 %3454, i64* %PC.i584
  %3455 = inttoptr i64 %3452 to i32*
  %3456 = load i32, i32* %3455
  %3457 = zext i32 %3456 to i64
  store i64 %3457, i64* %RAX.i585, align 8
  store %struct.Memory* %loadMem_43de28, %struct.Memory** %MEMORY
  %loadMem_43de2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 1
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %3463 to i32*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 15
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %3466 to i64*
  %3467 = load i32, i32* %EAX.i582
  %3468 = zext i32 %3467 to i64
  %3469 = load i64, i64* %RBP.i583
  %3470 = sub i64 %3469, 4
  %3471 = load i64, i64* %PC.i581
  %3472 = add i64 %3471, 3
  store i64 %3472, i64* %PC.i581
  %3473 = inttoptr i64 %3470 to i32*
  %3474 = load i32, i32* %3473
  %3475 = sub i32 %3467, %3474
  %3476 = icmp ult i32 %3467, %3474
  %3477 = zext i1 %3476 to i8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3477, i8* %3478, align 1
  %3479 = and i32 %3475, 255
  %3480 = call i32 @llvm.ctpop.i32(i32 %3479)
  %3481 = trunc i32 %3480 to i8
  %3482 = and i8 %3481, 1
  %3483 = xor i8 %3482, 1
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3483, i8* %3484, align 1
  %3485 = xor i32 %3474, %3467
  %3486 = xor i32 %3485, %3475
  %3487 = lshr i32 %3486, 4
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3489, i8* %3490, align 1
  %3491 = icmp eq i32 %3475, 0
  %3492 = zext i1 %3491 to i8
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3492, i8* %3493, align 1
  %3494 = lshr i32 %3475, 31
  %3495 = trunc i32 %3494 to i8
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3495, i8* %3496, align 1
  %3497 = lshr i32 %3467, 31
  %3498 = lshr i32 %3474, 31
  %3499 = xor i32 %3498, %3497
  %3500 = xor i32 %3494, %3497
  %3501 = add i32 %3500, %3499
  %3502 = icmp eq i32 %3501, 2
  %3503 = zext i1 %3502 to i8
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3503, i8* %3504, align 1
  store %struct.Memory* %loadMem_43de2b, %struct.Memory** %MEMORY
  %loadMem_43de2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %PC.i580
  %3509 = add i64 %3508, 144
  %3510 = load i64, i64* %PC.i580
  %3511 = add i64 %3510, 6
  %3512 = load i64, i64* %PC.i580
  %3513 = add i64 %3512, 6
  store i64 %3513, i64* %PC.i580
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3515 = load i8, i8* %3514, align 1
  %3516 = icmp ne i8 %3515, 0
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3518 = load i8, i8* %3517, align 1
  %3519 = icmp ne i8 %3518, 0
  %3520 = xor i1 %3516, %3519
  %3521 = xor i1 %3520, true
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %BRANCH_TAKEN, align 1
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3524 = select i1 %3520, i64 %3511, i64 %3509
  store i64 %3524, i64* %3523, align 8
  store %struct.Memory* %loadMem_43de2e, %struct.Memory** %MEMORY
  %loadBr_43de2e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43de2e = icmp eq i8 %loadBr_43de2e, 1
  br i1 %cmpBr_43de2e, label %block_.L_43debe, label %block_43de34

block_43de34:                                     ; preds = %block_.L_43de28
  %loadMem_43de34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 33
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 1
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %3530 to i64*
  %3531 = load i64, i64* %PC.i578
  %3532 = add i64 %3531, 5
  store i64 %3532, i64* %PC.i578
  store i64 1, i64* %RAX.i579, align 8
  store %struct.Memory* %loadMem_43de34, %struct.Memory** %MEMORY
  %loadMem_43de39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 33
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 5
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RCX.i576 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 15
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %3541 to i64*
  %3542 = load i64, i64* %RBP.i577
  %3543 = sub i64 %3542, 24
  %3544 = load i64, i64* %PC.i575
  %3545 = add i64 %3544, 3
  store i64 %3545, i64* %PC.i575
  %3546 = inttoptr i64 %3543 to i32*
  %3547 = load i32, i32* %3546
  %3548 = zext i32 %3547 to i64
  store i64 %3548, i64* %RCX.i576, align 8
  store %struct.Memory* %loadMem_43de39, %struct.Memory** %MEMORY
  %loadMem_43de3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 7
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %RDX.i573 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 15
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %3557 to i64*
  %3558 = load i64, i64* %RBP.i574
  %3559 = sub i64 %3558, 20
  %3560 = load i64, i64* %PC.i572
  %3561 = add i64 %3560, 3
  store i64 %3561, i64* %PC.i572
  %3562 = inttoptr i64 %3559 to i32*
  %3563 = load i32, i32* %3562
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RDX.i573, align 8
  store %struct.Memory* %loadMem_43de3c, %struct.Memory** %MEMORY
  %loadMem_43de3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 5
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %ECX.i570 = bitcast %union.anon* %3570 to i32*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RBP.i571
  %3575 = sub i64 %3574, 6588
  %3576 = load i32, i32* %ECX.i570
  %3577 = zext i32 %3576 to i64
  %3578 = load i64, i64* %PC.i569
  %3579 = add i64 %3578, 6
  store i64 %3579, i64* %PC.i569
  %3580 = inttoptr i64 %3575 to i32*
  store i32 %3576, i32* %3580
  store %struct.Memory* %loadMem_43de3f, %struct.Memory** %MEMORY
  %loadMem_43de45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 7
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %EDX.i567 = bitcast %union.anon* %3586 to i32*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 5
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %3589 to i64*
  %3590 = load i32, i32* %EDX.i567
  %3591 = zext i32 %3590 to i64
  %3592 = load i64, i64* %PC.i566
  %3593 = add i64 %3592, 2
  store i64 %3593, i64* %PC.i566
  %3594 = and i64 %3591, 4294967295
  store i64 %3594, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_43de45, %struct.Memory** %MEMORY
  %loadMem_43de47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 33
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3597 to i64*
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 5
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %3601 = bitcast %union.anon* %3600 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3601, i32 0, i32 0
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 1
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RAX.i565
  %3606 = load i8, i8* %CL.i
  %3607 = zext i8 %3606 to i64
  %3608 = load i64, i64* %PC.i564
  %3609 = add i64 %3608, 2
  store i64 %3609, i64* %PC.i564
  %3610 = trunc i64 %3607 to i5
  switch i5 %3610, label %3617 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %3611
  ]

; <label>:3611:                                   ; preds = %block_43de34
  %3612 = trunc i64 %3605 to i32
  %3613 = shl i32 %3612, 1
  %3614 = icmp slt i32 %3612, 0
  %3615 = icmp slt i32 %3613, 0
  %3616 = xor i1 %3614, %3615
  br label %3626

; <label>:3617:                                   ; preds = %block_43de34
  %3618 = and i64 %3607, 31
  %3619 = add i64 %3618, 4294967295
  %3620 = and i64 %3605, 4294967295
  %3621 = and i64 %3619, 4294967295
  %3622 = shl i64 %3620, %3621
  %3623 = trunc i64 %3622 to i32
  %3624 = icmp slt i32 %3623, 0
  %3625 = shl i32 %3623, 1
  br label %3626

; <label>:3626:                                   ; preds = %3617, %3611
  %3627 = phi i1 [ %3614, %3611 ], [ %3624, %3617 ]
  %3628 = phi i1 [ %3616, %3611 ], [ false, %3617 ]
  %3629 = phi i32 [ %3613, %3611 ], [ %3625, %3617 ]
  %3630 = zext i32 %3629 to i64
  store i64 %3630, i64* %RAX.i565, align 8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3632 = zext i1 %3627 to i8
  store i8 %3632, i8* %3631, align 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3634 = and i32 %3629, 254
  %3635 = call i32 @llvm.ctpop.i32(i32 %3634)
  %3636 = trunc i32 %3635 to i8
  %3637 = and i8 %3636, 1
  %3638 = xor i8 %3637, 1
  store i8 %3638, i8* %3633, align 1
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3639, align 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3641 = icmp eq i32 %3629, 0
  %3642 = zext i1 %3641 to i8
  store i8 %3642, i8* %3640, align 1
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3644 = lshr i32 %3629, 31
  %3645 = trunc i32 %3644 to i8
  store i8 %3645, i8* %3643, align 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3647 = zext i1 %3628 to i8
  store i8 %3647, i8* %3646, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %block_43de34, %3626
  store %struct.Memory* %loadMem_43de47, %struct.Memory** %MEMORY
  %loadMem_43de49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3649 = getelementptr inbounds %struct.GPR, %struct.GPR* %3648, i32 0, i32 33
  %3650 = getelementptr inbounds %struct.Reg, %struct.Reg* %3649, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3650 to i64*
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 7
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %RDX.i562 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 15
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %3656 to i64*
  %3657 = load i64, i64* %RBP.i563
  %3658 = sub i64 %3657, 6588
  %3659 = load i64, i64* %PC.i561
  %3660 = add i64 %3659, 6
  store i64 %3660, i64* %PC.i561
  %3661 = inttoptr i64 %3658 to i32*
  %3662 = load i32, i32* %3661
  %3663 = zext i32 %3662 to i64
  store i64 %3663, i64* %RDX.i562, align 8
  store %struct.Memory* %loadMem_43de49, %struct.Memory** %MEMORY
  %loadMem_43de4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 33
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 1
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %EAX.i559 = bitcast %union.anon* %3669 to i32*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 7
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %3672 to i64*
  %3673 = load i64, i64* %RDX.i560
  %3674 = load i32, i32* %EAX.i559
  %3675 = zext i32 %3674 to i64
  %3676 = load i64, i64* %PC.i558
  %3677 = add i64 %3676, 2
  store i64 %3677, i64* %PC.i558
  %3678 = and i64 %3675, %3673
  %3679 = trunc i64 %3678 to i32
  %3680 = and i64 %3678, 4294967295
  store i64 %3680, i64* %RDX.i560, align 8
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3681, align 1
  %3682 = and i32 %3679, 255
  %3683 = call i32 @llvm.ctpop.i32(i32 %3682)
  %3684 = trunc i32 %3683 to i8
  %3685 = and i8 %3684, 1
  %3686 = xor i8 %3685, 1
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3686, i8* %3687, align 1
  %3688 = icmp eq i32 %3679, 0
  %3689 = zext i1 %3688 to i8
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3689, i8* %3690, align 1
  %3691 = lshr i32 %3679, 31
  %3692 = trunc i32 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3692, i8* %3693, align 1
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3694, align 1
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3695, align 1
  store %struct.Memory* %loadMem_43de4f, %struct.Memory** %MEMORY
  %loadMem_43de51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3698 to i64*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 7
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %EDX.i557 = bitcast %union.anon* %3701 to i32*
  %3702 = load i32, i32* %EDX.i557
  %3703 = zext i32 %3702 to i64
  %3704 = load i64, i64* %PC.i556
  %3705 = add i64 %3704, 3
  store i64 %3705, i64* %PC.i556
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3706, align 1
  %3707 = and i32 %3702, 255
  %3708 = call i32 @llvm.ctpop.i32(i32 %3707)
  %3709 = trunc i32 %3708 to i8
  %3710 = and i8 %3709, 1
  %3711 = xor i8 %3710, 1
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3711, i8* %3712, align 1
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3713, align 1
  %3714 = icmp eq i32 %3702, 0
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3715, i8* %3716, align 1
  %3717 = lshr i32 %3702, 31
  %3718 = trunc i32 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3718, i8* %3719, align 1
  %3720 = lshr i32 %3702, 31
  %3721 = xor i32 %3717, %3720
  %3722 = add i32 %3721, %3720
  %3723 = icmp eq i32 %3722, 2
  %3724 = zext i1 %3723 to i8
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3724, i8* %3725, align 1
  store %struct.Memory* %loadMem_43de51, %struct.Memory** %MEMORY
  %loadMem_43de54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3728 to i64*
  %3729 = load i64, i64* %PC.i555
  %3730 = add i64 %3729, 87
  %3731 = load i64, i64* %PC.i555
  %3732 = add i64 %3731, 6
  %3733 = load i64, i64* %PC.i555
  %3734 = add i64 %3733, 6
  store i64 %3734, i64* %PC.i555
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3736 = load i8, i8* %3735, align 1
  store i8 %3736, i8* %BRANCH_TAKEN, align 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3738 = icmp ne i8 %3736, 0
  %3739 = select i1 %3738, i64 %3730, i64 %3732
  store i64 %3739, i64* %3737, align 8
  store %struct.Memory* %loadMem_43de54, %struct.Memory** %MEMORY
  %loadBr_43de54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43de54 = icmp eq i8 %loadBr_43de54, 1
  br i1 %cmpBr_43de54, label %block_.L_43deab, label %block_43de5a

block_43de5a:                                     ; preds = %routine_shll__cl___eax.exit
  %loadMem_43de5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 9
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %RSI.i554 = bitcast %union.anon* %3745 to i64*
  %3746 = load i64, i64* %PC.i553
  %3747 = add i64 %3746, 5
  store i64 %3747, i64* %PC.i553
  store i64 2, i64* %RSI.i554, align 8
  store %struct.Memory* %loadMem_43de5a, %struct.Memory** %MEMORY
  %loadMem_43de5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 33
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 1
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 15
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3756 to i64*
  %3757 = load i64, i64* %RBP.i552
  %3758 = sub i64 %3757, 16
  %3759 = load i64, i64* %PC.i550
  %3760 = add i64 %3759, 4
  store i64 %3760, i64* %PC.i550
  %3761 = inttoptr i64 %3758 to i64*
  %3762 = load i64, i64* %3761
  store i64 %3762, i64* %RAX.i551, align 8
  store %struct.Memory* %loadMem_43de5f, %struct.Memory** %MEMORY
  %loadMem_43de63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 5
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 15
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %3771 to i64*
  %3772 = load i64, i64* %RBP.i549
  %3773 = sub i64 %3772, 20
  %3774 = load i64, i64* %PC.i547
  %3775 = add i64 %3774, 4
  store i64 %3775, i64* %PC.i547
  %3776 = inttoptr i64 %3773 to i32*
  %3777 = load i32, i32* %3776
  %3778 = sext i32 %3777 to i64
  store i64 %3778, i64* %RCX.i548, align 8
  store %struct.Memory* %loadMem_43de63, %struct.Memory** %MEMORY
  %loadMem_43de67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 1
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 5
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 11
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RDI.i546 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RAX.i544
  %3792 = load i64, i64* %RCX.i545
  %3793 = mul i64 %3792, 4
  %3794 = add i64 %3793, %3791
  %3795 = load i64, i64* %PC.i543
  %3796 = add i64 %3795, 3
  store i64 %3796, i64* %PC.i543
  %3797 = inttoptr i64 %3794 to i32*
  %3798 = load i32, i32* %3797
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RDI.i546, align 8
  store %struct.Memory* %loadMem_43de67, %struct.Memory** %MEMORY
  %loadMem1_43de6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3802 to i64*
  %3803 = load i64, i64* %PC.i542
  %3804 = add i64 %3803, -193434
  %3805 = load i64, i64* %PC.i542
  %3806 = add i64 %3805, 5
  %3807 = load i64, i64* %PC.i542
  %3808 = add i64 %3807, 5
  store i64 %3808, i64* %PC.i542
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3810 = load i64, i64* %3809, align 8
  %3811 = add i64 %3810, -8
  %3812 = inttoptr i64 %3811 to i64*
  store i64 %3806, i64* %3812
  store i64 %3811, i64* %3809, align 8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3804, i64* %3813, align 8
  store %struct.Memory* %loadMem1_43de6a, %struct.Memory** %MEMORY
  %loadMem2_43de6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43de6a = load i64, i64* %3
  %call2_43de6a = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64 %loadPC_43de6a, %struct.Memory* %loadMem2_43de6a)
  store %struct.Memory* %call2_43de6a, %struct.Memory** %MEMORY
  %loadMem_43de6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 1
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %EAX.i541 = bitcast %union.anon* %3819 to i32*
  %3820 = load i32, i32* %EAX.i541
  %3821 = zext i32 %3820 to i64
  %3822 = load i64, i64* %PC.i540
  %3823 = add i64 %3822, 3
  store i64 %3823, i64* %PC.i540
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3824, align 1
  %3825 = and i32 %3820, 255
  %3826 = call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3829, i8* %3830, align 1
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3831, align 1
  %3832 = icmp eq i32 %3820, 0
  %3833 = zext i1 %3832 to i8
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3833, i8* %3834, align 1
  %3835 = lshr i32 %3820, 31
  %3836 = trunc i32 %3835 to i8
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3836, i8* %3837, align 1
  %3838 = lshr i32 %3820, 31
  %3839 = xor i32 %3835, %3838
  %3840 = add i32 %3839, %3838
  %3841 = icmp eq i32 %3840, 2
  %3842 = zext i1 %3841 to i8
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3842, i8* %3843, align 1
  store %struct.Memory* %loadMem_43de6f, %struct.Memory** %MEMORY
  %loadMem_43de72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 33
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %PC.i539
  %3848 = add i64 %3847, 21
  %3849 = load i64, i64* %PC.i539
  %3850 = add i64 %3849, 6
  %3851 = load i64, i64* %PC.i539
  %3852 = add i64 %3851, 6
  store i64 %3852, i64* %PC.i539
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3854 = load i8, i8* %3853, align 1
  %3855 = icmp eq i8 %3854, 0
  %3856 = zext i1 %3855 to i8
  store i8 %3856, i8* %BRANCH_TAKEN, align 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3858 = select i1 %3855, i64 %3848, i64 %3850
  store i64 %3858, i64* %3857, align 8
  store %struct.Memory* %loadMem_43de72, %struct.Memory** %MEMORY
  %loadBr_43de72 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43de72 = icmp eq i8 %loadBr_43de72, 1
  br i1 %cmpBr_43de72, label %block_.L_43de87, label %block_43de78

block_43de78:                                     ; preds = %block_43de5a
  %loadMem_43de78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3861 to i64*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 15
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3864 to i64*
  %3865 = load i64, i64* %RBP.i538
  %3866 = sub i64 %3865, 6556
  %3867 = load i64, i64* %PC.i537
  %3868 = add i64 %3867, 10
  store i64 %3868, i64* %PC.i537
  %3869 = inttoptr i64 %3866 to i32*
  store i32 0, i32* %3869
  store %struct.Memory* %loadMem_43de78, %struct.Memory** %MEMORY
  %loadMem_43de82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 33
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %PC.i536
  %3874 = add i64 %3873, 60
  %3875 = load i64, i64* %PC.i536
  %3876 = add i64 %3875, 5
  store i64 %3876, i64* %PC.i536
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3874, i64* %3877, align 8
  store %struct.Memory* %loadMem_43de82, %struct.Memory** %MEMORY
  br label %block_.L_43debe

block_.L_43de87:                                  ; preds = %block_43de5a
  %loadMem_43de87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 9
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RSI.i535 = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %PC.i534
  %3885 = add i64 %3884, 5
  store i64 %3885, i64* %PC.i534
  store i64 2, i64* %RSI.i535, align 8
  store %struct.Memory* %loadMem_43de87, %struct.Memory** %MEMORY
  %loadMem_43de8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 1
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 15
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3894 to i64*
  %3895 = load i64, i64* %RBP.i533
  %3896 = sub i64 %3895, 16
  %3897 = load i64, i64* %PC.i531
  %3898 = add i64 %3897, 4
  store i64 %3898, i64* %PC.i531
  %3899 = inttoptr i64 %3896 to i64*
  %3900 = load i64, i64* %3899
  store i64 %3900, i64* %RAX.i532, align 8
  store %struct.Memory* %loadMem_43de8c, %struct.Memory** %MEMORY
  %loadMem_43de90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 33
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 5
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 15
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %RBP.i530
  %3911 = sub i64 %3910, 20
  %3912 = load i64, i64* %PC.i528
  %3913 = add i64 %3912, 4
  store i64 %3913, i64* %PC.i528
  %3914 = inttoptr i64 %3911 to i32*
  %3915 = load i32, i32* %3914
  %3916 = sext i32 %3915 to i64
  store i64 %3916, i64* %RCX.i529, align 8
  store %struct.Memory* %loadMem_43de90, %struct.Memory** %MEMORY
  %loadMem_43de94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 1
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %3922 to i64*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 5
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 11
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RDI.i527 = bitcast %union.anon* %3928 to i64*
  %3929 = load i64, i64* %RAX.i525
  %3930 = load i64, i64* %RCX.i526
  %3931 = mul i64 %3930, 4
  %3932 = add i64 %3931, %3929
  %3933 = load i64, i64* %PC.i524
  %3934 = add i64 %3933, 3
  store i64 %3934, i64* %PC.i524
  %3935 = inttoptr i64 %3932 to i32*
  %3936 = load i32, i32* %3935
  %3937 = zext i32 %3936 to i64
  store i64 %3937, i64* %RDI.i527, align 8
  store %struct.Memory* %loadMem_43de94, %struct.Memory** %MEMORY
  %loadMem1_43de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %PC.i523
  %3942 = add i64 %3941, -195463
  %3943 = load i64, i64* %PC.i523
  %3944 = add i64 %3943, 5
  %3945 = load i64, i64* %PC.i523
  %3946 = add i64 %3945, 5
  store i64 %3946, i64* %PC.i523
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3948 = load i64, i64* %3947, align 8
  %3949 = add i64 %3948, -8
  %3950 = inttoptr i64 %3949 to i64*
  store i64 %3944, i64* %3950
  store i64 %3949, i64* %3947, align 8
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3942, i64* %3951, align 8
  store %struct.Memory* %loadMem1_43de97, %struct.Memory** %MEMORY
  %loadMem2_43de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43de97 = load i64, i64* %3
  %call2_43de97 = call %struct.Memory* @sub_40e310.play_move(%struct.State* %0, i64 %loadPC_43de97, %struct.Memory* %loadMem2_43de97)
  store %struct.Memory* %call2_43de97, %struct.Memory** %MEMORY
  %loadMem_43de9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 33
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3954 to i64*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 9
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RSI.i521 = bitcast %union.anon* %3957 to i64*
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 15
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %3960 to i64*
  %3961 = load i64, i64* %RBP.i522
  %3962 = sub i64 %3961, 6560
  %3963 = load i64, i64* %PC.i520
  %3964 = add i64 %3963, 6
  store i64 %3964, i64* %PC.i520
  %3965 = inttoptr i64 %3962 to i32*
  %3966 = load i32, i32* %3965
  %3967 = zext i32 %3966 to i64
  store i64 %3967, i64* %RSI.i521, align 8
  store %struct.Memory* %loadMem_43de9c, %struct.Memory** %MEMORY
  %loadMem_43dea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 9
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RSI.i519 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %RSI.i519
  %3975 = load i64, i64* %PC.i518
  %3976 = add i64 %3975, 3
  store i64 %3976, i64* %PC.i518
  %3977 = trunc i64 %3974 to i32
  %3978 = add i32 1, %3977
  %3979 = zext i32 %3978 to i64
  store i64 %3979, i64* %RSI.i519, align 8
  %3980 = icmp ult i32 %3978, %3977
  %3981 = icmp ult i32 %3978, 1
  %3982 = or i1 %3980, %3981
  %3983 = zext i1 %3982 to i8
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3983, i8* %3984, align 1
  %3985 = and i32 %3978, 255
  %3986 = call i32 @llvm.ctpop.i32(i32 %3985)
  %3987 = trunc i32 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = xor i8 %3988, 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3989, i8* %3990, align 1
  %3991 = xor i64 1, %3974
  %3992 = trunc i64 %3991 to i32
  %3993 = xor i32 %3992, %3978
  %3994 = lshr i32 %3993, 4
  %3995 = trunc i32 %3994 to i8
  %3996 = and i8 %3995, 1
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3996, i8* %3997, align 1
  %3998 = icmp eq i32 %3978, 0
  %3999 = zext i1 %3998 to i8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3999, i8* %4000, align 1
  %4001 = lshr i32 %3978, 31
  %4002 = trunc i32 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4002, i8* %4003, align 1
  %4004 = lshr i32 %3977, 31
  %4005 = xor i32 %4001, %4004
  %4006 = add i32 %4005, %4001
  %4007 = icmp eq i32 %4006, 2
  %4008 = zext i1 %4007 to i8
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4008, i8* %4009, align 1
  store %struct.Memory* %loadMem_43dea2, %struct.Memory** %MEMORY
  %loadMem_43dea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 9
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4015 to i32*
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 15
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %4018 to i64*
  %4019 = load i64, i64* %RBP.i517
  %4020 = sub i64 %4019, 6560
  %4021 = load i32, i32* %ESI.i
  %4022 = zext i32 %4021 to i64
  %4023 = load i64, i64* %PC.i516
  %4024 = add i64 %4023, 6
  store i64 %4024, i64* %PC.i516
  %4025 = inttoptr i64 %4020 to i32*
  store i32 %4021, i32* %4025
  store %struct.Memory* %loadMem_43dea5, %struct.Memory** %MEMORY
  br label %block_.L_43deab

block_.L_43deab:                                  ; preds = %block_.L_43de87, %routine_shll__cl___eax.exit
  %loadMem_43deab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4028 to i64*
  %4029 = load i64, i64* %PC.i515
  %4030 = add i64 %4029, 5
  %4031 = load i64, i64* %PC.i515
  %4032 = add i64 %4031, 5
  store i64 %4032, i64* %PC.i515
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4030, i64* %4033, align 8
  store %struct.Memory* %loadMem_43deab, %struct.Memory** %MEMORY
  br label %block_.L_43deb0

block_.L_43deb0:                                  ; preds = %block_.L_43deab
  %loadMem_43deb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 1
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %4039 to i64*
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 15
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %4042 to i64*
  %4043 = load i64, i64* %RBP.i514
  %4044 = sub i64 %4043, 20
  %4045 = load i64, i64* %PC.i512
  %4046 = add i64 %4045, 3
  store i64 %4046, i64* %PC.i512
  %4047 = inttoptr i64 %4044 to i32*
  %4048 = load i32, i32* %4047
  %4049 = zext i32 %4048 to i64
  store i64 %4049, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_43deb0, %struct.Memory** %MEMORY
  %loadMem_43deb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 33
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 1
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %4055 to i64*
  %4056 = load i64, i64* %RAX.i511
  %4057 = load i64, i64* %PC.i510
  %4058 = add i64 %4057, 3
  store i64 %4058, i64* %PC.i510
  %4059 = trunc i64 %4056 to i32
  %4060 = add i32 1, %4059
  %4061 = zext i32 %4060 to i64
  store i64 %4061, i64* %RAX.i511, align 8
  %4062 = icmp ult i32 %4060, %4059
  %4063 = icmp ult i32 %4060, 1
  %4064 = or i1 %4062, %4063
  %4065 = zext i1 %4064 to i8
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4065, i8* %4066, align 1
  %4067 = and i32 %4060, 255
  %4068 = call i32 @llvm.ctpop.i32(i32 %4067)
  %4069 = trunc i32 %4068 to i8
  %4070 = and i8 %4069, 1
  %4071 = xor i8 %4070, 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4071, i8* %4072, align 1
  %4073 = xor i64 1, %4056
  %4074 = trunc i64 %4073 to i32
  %4075 = xor i32 %4074, %4060
  %4076 = lshr i32 %4075, 4
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4078, i8* %4079, align 1
  %4080 = icmp eq i32 %4060, 0
  %4081 = zext i1 %4080 to i8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4081, i8* %4082, align 1
  %4083 = lshr i32 %4060, 31
  %4084 = trunc i32 %4083 to i8
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4084, i8* %4085, align 1
  %4086 = lshr i32 %4059, 31
  %4087 = xor i32 %4083, %4086
  %4088 = add i32 %4087, %4083
  %4089 = icmp eq i32 %4088, 2
  %4090 = zext i1 %4089 to i8
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4090, i8* %4091, align 1
  store %struct.Memory* %loadMem_43deb3, %struct.Memory** %MEMORY
  %loadMem_43deb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 1
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %EAX.i508 = bitcast %union.anon* %4097 to i32*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 15
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %RBP.i509
  %4102 = sub i64 %4101, 20
  %4103 = load i32, i32* %EAX.i508
  %4104 = zext i32 %4103 to i64
  %4105 = load i64, i64* %PC.i507
  %4106 = add i64 %4105, 3
  store i64 %4106, i64* %PC.i507
  %4107 = inttoptr i64 %4102 to i32*
  store i32 %4103, i32* %4107
  store %struct.Memory* %loadMem_43deb6, %struct.Memory** %MEMORY
  %loadMem_43deb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 33
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4110 to i64*
  %4111 = load i64, i64* %PC.i506
  %4112 = add i64 %4111, -145
  %4113 = load i64, i64* %PC.i506
  %4114 = add i64 %4113, 5
  store i64 %4114, i64* %PC.i506
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4112, i64* %4115, align 8
  store %struct.Memory* %loadMem_43deb9, %struct.Memory** %MEMORY
  br label %block_.L_43de28

block_.L_43debe:                                  ; preds = %block_43de78, %block_.L_43de28
  %loadMem_43debe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 33
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 15
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %4121 to i64*
  %4122 = load i64, i64* %RBP.i505
  %4123 = sub i64 %4122, 6556
  %4124 = load i64, i64* %PC.i504
  %4125 = add i64 %4124, 7
  store i64 %4125, i64* %PC.i504
  %4126 = inttoptr i64 %4123 to i32*
  %4127 = load i32, i32* %4126
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4128, align 1
  %4129 = and i32 %4127, 255
  %4130 = call i32 @llvm.ctpop.i32(i32 %4129)
  %4131 = trunc i32 %4130 to i8
  %4132 = and i8 %4131, 1
  %4133 = xor i8 %4132, 1
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4133, i8* %4134, align 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4135, align 1
  %4136 = icmp eq i32 %4127, 0
  %4137 = zext i1 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4137, i8* %4138, align 1
  %4139 = lshr i32 %4127, 31
  %4140 = trunc i32 %4139 to i8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4140, i8* %4141, align 1
  %4142 = lshr i32 %4127, 31
  %4143 = xor i32 %4139, %4142
  %4144 = add i32 %4143, %4142
  %4145 = icmp eq i32 %4144, 2
  %4146 = zext i1 %4145 to i8
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4146, i8* %4147, align 1
  store %struct.Memory* %loadMem_43debe, %struct.Memory** %MEMORY
  %loadMem_43dec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %4150 to i64*
  %4151 = load i64, i64* %PC.i503
  %4152 = add i64 %4151, 11
  %4153 = load i64, i64* %PC.i503
  %4154 = add i64 %4153, 6
  %4155 = load i64, i64* %PC.i503
  %4156 = add i64 %4155, 6
  store i64 %4156, i64* %PC.i503
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4158 = load i8, i8* %4157, align 1
  %4159 = icmp eq i8 %4158, 0
  %4160 = zext i1 %4159 to i8
  store i8 %4160, i8* %BRANCH_TAKEN, align 1
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4162 = select i1 %4159, i64 %4152, i64 %4154
  store i64 %4162, i64* %4161, align 8
  store %struct.Memory* %loadMem_43dec5, %struct.Memory** %MEMORY
  %loadBr_43dec5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dec5 = icmp eq i8 %loadBr_43dec5, 1
  br i1 %cmpBr_43dec5, label %block_.L_43ded0, label %block_43decb

block_43decb:                                     ; preds = %block_.L_43debe
  %loadMem_43decb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4165 to i64*
  %4166 = load i64, i64* %PC.i502
  %4167 = add i64 %4166, 1045
  %4168 = load i64, i64* %PC.i502
  %4169 = add i64 %4168, 5
  store i64 %4169, i64* %PC.i502
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4167, i64* %4170, align 8
  store %struct.Memory* %loadMem_43decb, %struct.Memory** %MEMORY
  br label %block_.L_43e2e0

block_.L_43ded0:                                  ; preds = %block_.L_43debe
  %loadMem_43ded0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4172 = getelementptr inbounds %struct.GPR, %struct.GPR* %4171, i32 0, i32 33
  %4173 = getelementptr inbounds %struct.Reg, %struct.Reg* %4172, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4173 to i64*
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 15
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %4176 to i64*
  %4177 = load i64, i64* %RBP.i501
  %4178 = sub i64 %4177, 1660
  %4179 = load i64, i64* %PC.i500
  %4180 = add i64 %4179, 7
  store i64 %4180, i64* %PC.i500
  %4181 = inttoptr i64 %4178 to i32*
  %4182 = load i32, i32* %4181
  %4183 = sub i32 %4182, 1
  %4184 = icmp ult i32 %4182, 1
  %4185 = zext i1 %4184 to i8
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4185, i8* %4186, align 1
  %4187 = and i32 %4183, 255
  %4188 = call i32 @llvm.ctpop.i32(i32 %4187)
  %4189 = trunc i32 %4188 to i8
  %4190 = and i8 %4189, 1
  %4191 = xor i8 %4190, 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4191, i8* %4192, align 1
  %4193 = xor i32 %4182, 1
  %4194 = xor i32 %4193, %4183
  %4195 = lshr i32 %4194, 4
  %4196 = trunc i32 %4195 to i8
  %4197 = and i8 %4196, 1
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4197, i8* %4198, align 1
  %4199 = icmp eq i32 %4183, 0
  %4200 = zext i1 %4199 to i8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4200, i8* %4201, align 1
  %4202 = lshr i32 %4183, 31
  %4203 = trunc i32 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4203, i8* %4204, align 1
  %4205 = lshr i32 %4182, 31
  %4206 = xor i32 %4202, %4205
  %4207 = add i32 %4206, %4205
  %4208 = icmp eq i32 %4207, 2
  %4209 = zext i1 %4208 to i8
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4209, i8* %4210, align 1
  store %struct.Memory* %loadMem_43ded0, %struct.Memory** %MEMORY
  %loadMem_43ded7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4213 to i64*
  %4214 = load i64, i64* %PC.i499
  %4215 = add i64 %4214, 13
  %4216 = load i64, i64* %PC.i499
  %4217 = add i64 %4216, 6
  %4218 = load i64, i64* %PC.i499
  %4219 = add i64 %4218, 6
  store i64 %4219, i64* %PC.i499
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4221 = load i8, i8* %4220, align 1
  %4222 = icmp ne i8 %4221, 0
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4224 = load i8, i8* %4223, align 1
  %4225 = icmp ne i8 %4224, 0
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4227 = load i8, i8* %4226, align 1
  %4228 = icmp ne i8 %4227, 0
  %4229 = xor i1 %4225, %4228
  %4230 = or i1 %4222, %4229
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %BRANCH_TAKEN, align 1
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4233 = select i1 %4230, i64 %4215, i64 %4217
  store i64 %4233, i64* %4232, align 8
  store %struct.Memory* %loadMem_43ded7, %struct.Memory** %MEMORY
  %loadBr_43ded7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ded7 = icmp eq i8 %loadBr_43ded7, 1
  br i1 %cmpBr_43ded7, label %block_.L_43dee4, label %block_43dedd

block_43dedd:                                     ; preds = %block_.L_43ded0
  %loadMem_43dedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4236 to i64*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 11
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %EDI.i497 = bitcast %union.anon* %4239 to i32*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 11
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RDI.i498 = bitcast %union.anon* %4242 to i64*
  %4243 = load i64, i64* %RDI.i498
  %4244 = load i32, i32* %EDI.i497
  %4245 = zext i32 %4244 to i64
  %4246 = load i64, i64* %PC.i496
  %4247 = add i64 %4246, 2
  store i64 %4247, i64* %PC.i496
  %4248 = xor i64 %4245, %4243
  %4249 = trunc i64 %4248 to i32
  %4250 = and i64 %4248, 4294967295
  store i64 %4250, i64* %RDI.i498, align 8
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4251, align 1
  %4252 = and i32 %4249, 255
  %4253 = call i32 @llvm.ctpop.i32(i32 %4252)
  %4254 = trunc i32 %4253 to i8
  %4255 = and i8 %4254, 1
  %4256 = xor i8 %4255, 1
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4256, i8* %4257, align 1
  %4258 = icmp eq i32 %4249, 0
  %4259 = zext i1 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4259, i8* %4260, align 1
  %4261 = lshr i32 %4249, 31
  %4262 = trunc i32 %4261 to i8
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4262, i8* %4263, align 1
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4264, align 1
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4265, align 1
  store %struct.Memory* %loadMem_43dedd, %struct.Memory** %MEMORY
  %loadMem1_43dedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 33
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4268 to i64*
  %4269 = load i64, i64* %PC.i495
  %4270 = add i64 %4269, 225057
  %4271 = load i64, i64* %PC.i495
  %4272 = add i64 %4271, 5
  %4273 = load i64, i64* %PC.i495
  %4274 = add i64 %4273, 5
  store i64 %4274, i64* %PC.i495
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4276 = load i64, i64* %4275, align 8
  %4277 = add i64 %4276, -8
  %4278 = inttoptr i64 %4277 to i64*
  store i64 %4272, i64* %4278
  store i64 %4277, i64* %4275, align 8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4270, i64* %4279, align 8
  store %struct.Memory* %loadMem1_43dedf, %struct.Memory** %MEMORY
  %loadMem2_43dedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dedf = load i64, i64* %3
  %call2_43dedf = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43dedf, %struct.Memory* %loadMem2_43dedf)
  store %struct.Memory* %call2_43dedf, %struct.Memory** %MEMORY
  br label %block_.L_43dee4

block_.L_43dee4:                                  ; preds = %block_43dedd, %block_.L_43ded0
  %loadMem_43dee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 33
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4282 to i64*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 11
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %RDI.i494 = bitcast %union.anon* %4285 to i64*
  %4286 = load i64, i64* %PC.i493
  %4287 = add i64 %4286, 5
  store i64 %4287, i64* %PC.i493
  store i64 1, i64* %RDI.i494, align 8
  store %struct.Memory* %loadMem_43dee4, %struct.Memory** %MEMORY
  %loadMem_43dee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 33
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 9
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RSI.i492 = bitcast %union.anon* %4293 to i64*
  %4294 = load i64, i64* %PC.i491
  %4295 = add i64 %4294, 5
  store i64 %4295, i64* %PC.i491
  store i64 3, i64* %RSI.i492, align 8
  store %struct.Memory* %loadMem_43dee9, %struct.Memory** %MEMORY
  %loadMem1_43deee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4298 to i64*
  %4299 = load i64, i64* %PC.i490
  %4300 = add i64 %4299, -98958
  %4301 = load i64, i64* %PC.i490
  %4302 = add i64 %4301, 5
  %4303 = load i64, i64* %PC.i490
  %4304 = add i64 %4303, 5
  store i64 %4304, i64* %PC.i490
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4306 = load i64, i64* %4305, align 8
  %4307 = add i64 %4306, -8
  %4308 = inttoptr i64 %4307 to i64*
  store i64 %4302, i64* %4308
  store i64 %4307, i64* %4305, align 8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4300, i64* %4309, align 8
  store %struct.Memory* %loadMem1_43deee, %struct.Memory** %MEMORY
  %loadMem2_43deee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43deee = load i64, i64* %3
  %call2_43deee = call %struct.Memory* @sub_425c60.examine_position(%struct.State* %0, i64 %loadPC_43deee, %struct.Memory* %loadMem2_43deee)
  store %struct.Memory* %call2_43deee, %struct.Memory** %MEMORY
  %loadMem_43def3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4312 to i64*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 9
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %RSI.i488 = bitcast %union.anon* %4315 to i64*
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 15
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %4318 to i64*
  %4319 = load i64, i64* %RBP.i489
  %4320 = sub i64 %4319, 1648
  %4321 = load i64, i64* %PC.i487
  %4322 = add i64 %4321, 7
  store i64 %4322, i64* %PC.i487
  store i64 %4320, i64* %RSI.i488, align 8
  store %struct.Memory* %loadMem_43def3, %struct.Memory** %MEMORY
  %loadMem_43defa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 11
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %EDI.i485 = bitcast %union.anon* %4328 to i32*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 11
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %RDI.i486 = bitcast %union.anon* %4331 to i64*
  %4332 = load i64, i64* %RDI.i486
  %4333 = load i32, i32* %EDI.i485
  %4334 = zext i32 %4333 to i64
  %4335 = load i64, i64* %PC.i484
  %4336 = add i64 %4335, 2
  store i64 %4336, i64* %PC.i484
  %4337 = xor i64 %4334, %4332
  %4338 = trunc i64 %4337 to i32
  %4339 = and i64 %4337, 4294967295
  store i64 %4339, i64* %RDI.i486, align 8
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4340, align 1
  %4341 = and i32 %4338, 255
  %4342 = call i32 @llvm.ctpop.i32(i32 %4341)
  %4343 = trunc i32 %4342 to i8
  %4344 = and i8 %4343, 1
  %4345 = xor i8 %4344, 1
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4345, i8* %4346, align 1
  %4347 = icmp eq i32 %4338, 0
  %4348 = zext i1 %4347 to i8
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4348, i8* %4349, align 1
  %4350 = lshr i32 %4338, 31
  %4351 = trunc i32 %4350 to i8
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4351, i8* %4352, align 1
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4353, align 1
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4354, align 1
  store %struct.Memory* %loadMem_43defa, %struct.Memory** %MEMORY
  %loadMem_43defc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 11
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %EDI.i482 = bitcast %union.anon* %4360 to i32*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 1
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %4363 to i64*
  %4364 = load i32, i32* %EDI.i482
  %4365 = zext i32 %4364 to i64
  %4366 = load i64, i64* %PC.i481
  %4367 = add i64 %4366, 2
  store i64 %4367, i64* %PC.i481
  %4368 = and i64 %4365, 4294967295
  store i64 %4368, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_43defc, %struct.Memory** %MEMORY
  %loadMem_43defe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 11
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RDI.i479 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 15
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %RBP.i480
  %4379 = sub i64 %4378, 1640
  %4380 = load i64, i64* %PC.i478
  %4381 = add i64 %4380, 6
  store i64 %4381, i64* %PC.i478
  %4382 = inttoptr i64 %4379 to i32*
  %4383 = load i32, i32* %4382
  %4384 = zext i32 %4383 to i64
  store i64 %4384, i64* %RDI.i479, align 8
  store %struct.Memory* %loadMem_43defe, %struct.Memory** %MEMORY
  %loadMem_43df04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 1
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 7
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RDX.i477 = bitcast %union.anon* %4393 to i64*
  %4394 = load i64, i64* %RAX.i476
  %4395 = load i64, i64* %PC.i475
  %4396 = add i64 %4395, 3
  store i64 %4396, i64* %PC.i475
  store i64 %4394, i64* %RDX.i477, align 8
  store %struct.Memory* %loadMem_43df04, %struct.Memory** %MEMORY
  %loadMem_43df07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 33
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4399 to i64*
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 1
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 5
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %4405 to i64*
  %4406 = load i64, i64* %RAX.i473
  %4407 = load i64, i64* %PC.i472
  %4408 = add i64 %4407, 3
  store i64 %4408, i64* %PC.i472
  store i64 %4406, i64* %RCX.i474, align 8
  store %struct.Memory* %loadMem_43df07, %struct.Memory** %MEMORY
  %loadMem1_43df0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4411 to i64*
  %4412 = load i64, i64* %PC.i471
  %4413 = add i64 %4412, 35334
  %4414 = load i64, i64* %PC.i471
  %4415 = add i64 %4414, 5
  %4416 = load i64, i64* %PC.i471
  %4417 = add i64 %4416, 5
  store i64 %4417, i64* %PC.i471
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4419 = load i64, i64* %4418, align 8
  %4420 = add i64 %4419, -8
  %4421 = inttoptr i64 %4420 to i64*
  store i64 %4415, i64* %4421
  store i64 %4420, i64* %4418, align 8
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4413, i64* %4422, align 8
  store %struct.Memory* %loadMem1_43df0a, %struct.Memory** %MEMORY
  %loadMem2_43df0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43df0a = load i64, i64* %3
  %call2_43df0a = call %struct.Memory* @sub_446910.owl_attack(%struct.State* %0, i64 %loadPC_43df0a, %struct.Memory* %loadMem2_43df0a)
  store %struct.Memory* %call2_43df0a, %struct.Memory** %MEMORY
  %loadMem_43df0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 33
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 1
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %EAX.i469 = bitcast %union.anon* %4428 to i32*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 15
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %RBP.i470
  %4433 = sub i64 %4432, 1644
  %4434 = load i32, i32* %EAX.i469
  %4435 = zext i32 %4434 to i64
  %4436 = load i64, i64* %PC.i468
  %4437 = add i64 %4436, 6
  store i64 %4437, i64* %PC.i468
  %4438 = inttoptr i64 %4433 to i32*
  store i32 %4434, i32* %4438
  store %struct.Memory* %loadMem_43df0f, %struct.Memory** %MEMORY
  %loadMem_43df15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 15
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %RBP.i467
  %4446 = sub i64 %4445, 1644
  %4447 = load i64, i64* %PC.i466
  %4448 = add i64 %4447, 7
  store i64 %4448, i64* %PC.i466
  %4449 = inttoptr i64 %4446 to i32*
  %4450 = load i32, i32* %4449
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4451, align 1
  %4452 = and i32 %4450, 255
  %4453 = call i32 @llvm.ctpop.i32(i32 %4452)
  %4454 = trunc i32 %4453 to i8
  %4455 = and i8 %4454, 1
  %4456 = xor i8 %4455, 1
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4456, i8* %4457, align 1
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4458, align 1
  %4459 = icmp eq i32 %4450, 0
  %4460 = zext i1 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4460, i8* %4461, align 1
  %4462 = lshr i32 %4450, 31
  %4463 = trunc i32 %4462 to i8
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4463, i8* %4464, align 1
  %4465 = lshr i32 %4450, 31
  %4466 = xor i32 %4462, %4465
  %4467 = add i32 %4466, %4465
  %4468 = icmp eq i32 %4467, 2
  %4469 = zext i1 %4468 to i8
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4469, i8* %4470, align 1
  store %struct.Memory* %loadMem_43df15, %struct.Memory** %MEMORY
  %loadMem_43df1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4473 to i64*
  %4474 = load i64, i64* %PC.i465
  %4475 = add i64 %4474, 376
  %4476 = load i64, i64* %PC.i465
  %4477 = add i64 %4476, 6
  %4478 = load i64, i64* %PC.i465
  %4479 = add i64 %4478, 6
  store i64 %4479, i64* %PC.i465
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4481 = load i8, i8* %4480, align 1
  %4482 = icmp eq i8 %4481, 0
  %4483 = zext i1 %4482 to i8
  store i8 %4483, i8* %BRANCH_TAKEN, align 1
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4485 = select i1 %4482, i64 %4475, i64 %4477
  store i64 %4485, i64* %4484, align 8
  store %struct.Memory* %loadMem_43df1c, %struct.Memory** %MEMORY
  %loadBr_43df1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df1c = icmp eq i8 %loadBr_43df1c, 1
  br i1 %cmpBr_43df1c, label %block_.L_43e094, label %block_43df22

block_43df22:                                     ; preds = %block_.L_43dee4
  %loadMem_43df22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 33
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 15
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %RBP.i464
  %4493 = sub i64 %4492, 20
  %4494 = load i64, i64* %PC.i463
  %4495 = add i64 %4494, 7
  store i64 %4495, i64* %PC.i463
  %4496 = inttoptr i64 %4493 to i32*
  store i32 0, i32* %4496
  store %struct.Memory* %loadMem_43df22, %struct.Memory** %MEMORY
  br label %block_.L_43df29

block_.L_43df29:                                  ; preds = %block_.L_43dfde, %block_43df22
  %loadMem_43df29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 1
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %4502 to i64*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 15
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %4505 to i64*
  %4506 = load i64, i64* %RBP.i462
  %4507 = sub i64 %4506, 20
  %4508 = load i64, i64* %PC.i460
  %4509 = add i64 %4508, 3
  store i64 %4509, i64* %PC.i460
  %4510 = inttoptr i64 %4507 to i32*
  %4511 = load i32, i32* %4510
  %4512 = zext i32 %4511 to i64
  store i64 %4512, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_43df29, %struct.Memory** %MEMORY
  %loadMem_43df2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 1
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %4518 to i32*
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 15
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %4521 to i64*
  %4522 = load i32, i32* %EAX.i458
  %4523 = zext i32 %4522 to i64
  %4524 = load i64, i64* %RBP.i459
  %4525 = sub i64 %4524, 4
  %4526 = load i64, i64* %PC.i457
  %4527 = add i64 %4526, 3
  store i64 %4527, i64* %PC.i457
  %4528 = inttoptr i64 %4525 to i32*
  %4529 = load i32, i32* %4528
  %4530 = sub i32 %4522, %4529
  %4531 = icmp ult i32 %4522, %4529
  %4532 = zext i1 %4531 to i8
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4532, i8* %4533, align 1
  %4534 = and i32 %4530, 255
  %4535 = call i32 @llvm.ctpop.i32(i32 %4534)
  %4536 = trunc i32 %4535 to i8
  %4537 = and i8 %4536, 1
  %4538 = xor i8 %4537, 1
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4538, i8* %4539, align 1
  %4540 = xor i32 %4529, %4522
  %4541 = xor i32 %4540, %4530
  %4542 = lshr i32 %4541, 4
  %4543 = trunc i32 %4542 to i8
  %4544 = and i8 %4543, 1
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4544, i8* %4545, align 1
  %4546 = icmp eq i32 %4530, 0
  %4547 = zext i1 %4546 to i8
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4547, i8* %4548, align 1
  %4549 = lshr i32 %4530, 31
  %4550 = trunc i32 %4549 to i8
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4550, i8* %4551, align 1
  %4552 = lshr i32 %4522, 31
  %4553 = lshr i32 %4529, 31
  %4554 = xor i32 %4553, %4552
  %4555 = xor i32 %4549, %4552
  %4556 = add i32 %4555, %4554
  %4557 = icmp eq i32 %4556, 2
  %4558 = zext i1 %4557 to i8
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4558, i8* %4559, align 1
  store %struct.Memory* %loadMem_43df2c, %struct.Memory** %MEMORY
  %loadMem_43df2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %PC.i456
  %4564 = add i64 %4563, 189
  %4565 = load i64, i64* %PC.i456
  %4566 = add i64 %4565, 6
  %4567 = load i64, i64* %PC.i456
  %4568 = add i64 %4567, 6
  store i64 %4568, i64* %PC.i456
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4570 = load i8, i8* %4569, align 1
  %4571 = icmp ne i8 %4570, 0
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4573 = load i8, i8* %4572, align 1
  %4574 = icmp ne i8 %4573, 0
  %4575 = xor i1 %4571, %4574
  %4576 = xor i1 %4575, true
  %4577 = zext i1 %4576 to i8
  store i8 %4577, i8* %BRANCH_TAKEN, align 1
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4579 = select i1 %4575, i64 %4566, i64 %4564
  store i64 %4579, i64* %4578, align 8
  store %struct.Memory* %loadMem_43df2f, %struct.Memory** %MEMORY
  %loadBr_43df2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df2f = icmp eq i8 %loadBr_43df2f, 1
  br i1 %cmpBr_43df2f, label %block_.L_43dfec, label %block_43df35

block_43df35:                                     ; preds = %block_.L_43df29
  %loadMem_43df35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 33
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 1
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 15
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4588 to i64*
  %4589 = load i64, i64* %RBP.i455
  %4590 = sub i64 %4589, 16
  %4591 = load i64, i64* %PC.i453
  %4592 = add i64 %4591, 4
  store i64 %4592, i64* %PC.i453
  %4593 = inttoptr i64 %4590 to i64*
  %4594 = load i64, i64* %4593
  store i64 %4594, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_43df35, %struct.Memory** %MEMORY
  %loadMem_43df39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 5
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %4600 to i64*
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 15
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %4603 to i64*
  %4604 = load i64, i64* %RBP.i452
  %4605 = sub i64 %4604, 20
  %4606 = load i64, i64* %PC.i450
  %4607 = add i64 %4606, 4
  store i64 %4607, i64* %PC.i450
  %4608 = inttoptr i64 %4605 to i32*
  %4609 = load i32, i32* %4608
  %4610 = sext i32 %4609 to i64
  store i64 %4610, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_43df39, %struct.Memory** %MEMORY
  %loadMem_43df3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 33
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 1
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 5
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %4619 to i64*
  %4620 = load i64, i64* %RAX.i448
  %4621 = load i64, i64* %RCX.i449
  %4622 = mul i64 %4621, 4
  %4623 = add i64 %4622, %4620
  %4624 = load i64, i64* %PC.i447
  %4625 = add i64 %4624, 4
  store i64 %4625, i64* %PC.i447
  %4626 = inttoptr i64 %4623 to i32*
  %4627 = load i32, i32* %4626
  %4628 = sext i32 %4627 to i64
  store i64 %4628, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_43df3d, %struct.Memory** %MEMORY
  %loadMem_43df41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 1
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 7
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %4637 to i64*
  %4638 = load i64, i64* %RAX.i445
  %4639 = add i64 %4638, 12099168
  %4640 = load i64, i64* %PC.i444
  %4641 = add i64 %4640, 8
  store i64 %4641, i64* %PC.i444
  %4642 = inttoptr i64 %4639 to i8*
  %4643 = load i8, i8* %4642
  %4644 = zext i8 %4643 to i64
  store i64 %4644, i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_43df41, %struct.Memory** %MEMORY
  %loadMem_43df49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 33
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 7
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %EDX.i443 = bitcast %union.anon* %4650 to i32*
  %4651 = load i32, i32* %EDX.i443
  %4652 = zext i32 %4651 to i64
  %4653 = load i64, i64* %PC.i442
  %4654 = add i64 %4653, 3
  store i64 %4654, i64* %PC.i442
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4655, align 1
  %4656 = and i32 %4651, 255
  %4657 = call i32 @llvm.ctpop.i32(i32 %4656)
  %4658 = trunc i32 %4657 to i8
  %4659 = and i8 %4658, 1
  %4660 = xor i8 %4659, 1
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4660, i8* %4661, align 1
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4662, align 1
  %4663 = icmp eq i32 %4651, 0
  %4664 = zext i1 %4663 to i8
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4664, i8* %4665, align 1
  %4666 = lshr i32 %4651, 31
  %4667 = trunc i32 %4666 to i8
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4667, i8* %4668, align 1
  %4669 = lshr i32 %4651, 31
  %4670 = xor i32 %4666, %4669
  %4671 = add i32 %4670, %4669
  %4672 = icmp eq i32 %4671, 2
  %4673 = zext i1 %4672 to i8
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4673, i8* %4674, align 1
  store %struct.Memory* %loadMem_43df49, %struct.Memory** %MEMORY
  %loadMem_43df4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4677 to i64*
  %4678 = load i64, i64* %PC.i441
  %4679 = add i64 %4678, 141
  %4680 = load i64, i64* %PC.i441
  %4681 = add i64 %4680, 6
  %4682 = load i64, i64* %PC.i441
  %4683 = add i64 %4682, 6
  store i64 %4683, i64* %PC.i441
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4685 = load i8, i8* %4684, align 1
  %4686 = icmp eq i8 %4685, 0
  %4687 = zext i1 %4686 to i8
  store i8 %4687, i8* %BRANCH_TAKEN, align 1
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4689 = select i1 %4686, i64 %4679, i64 %4681
  store i64 %4689, i64* %4688, align 8
  store %struct.Memory* %loadMem_43df4c, %struct.Memory** %MEMORY
  %loadBr_43df4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df4c = icmp eq i8 %loadBr_43df4c, 1
  br i1 %cmpBr_43df4c, label %block_.L_43dfd9, label %block_43df52

block_43df52:                                     ; preds = %block_43df35
  %loadMem_43df52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 9
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RSI.i440 = bitcast %union.anon* %4695 to i64*
  %4696 = load i64, i64* %PC.i439
  %4697 = add i64 %4696, 5
  store i64 %4697, i64* %PC.i439
  store i64 2, i64* %RSI.i440, align 8
  store %struct.Memory* %loadMem_43df52, %struct.Memory** %MEMORY
  %loadMem_43df57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 1
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 15
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4706 to i64*
  %4707 = load i64, i64* %RBP.i438
  %4708 = sub i64 %4707, 16
  %4709 = load i64, i64* %PC.i436
  %4710 = add i64 %4709, 4
  store i64 %4710, i64* %PC.i436
  %4711 = inttoptr i64 %4708 to i64*
  %4712 = load i64, i64* %4711
  store i64 %4712, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_43df57, %struct.Memory** %MEMORY
  %loadMem_43df5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 33
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4715 to i64*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 5
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 15
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %4721 to i64*
  %4722 = load i64, i64* %RBP.i435
  %4723 = sub i64 %4722, 20
  %4724 = load i64, i64* %PC.i433
  %4725 = add i64 %4724, 4
  store i64 %4725, i64* %PC.i433
  %4726 = inttoptr i64 %4723 to i32*
  %4727 = load i32, i32* %4726
  %4728 = sext i32 %4727 to i64
  store i64 %4728, i64* %RCX.i434, align 8
  store %struct.Memory* %loadMem_43df5b, %struct.Memory** %MEMORY
  %loadMem_43df5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 33
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 1
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %4734 to i64*
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 5
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 11
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %4740 to i64*
  %4741 = load i64, i64* %RAX.i430
  %4742 = load i64, i64* %RCX.i431
  %4743 = mul i64 %4742, 4
  %4744 = add i64 %4743, %4741
  %4745 = load i64, i64* %PC.i429
  %4746 = add i64 %4745, 3
  store i64 %4746, i64* %PC.i429
  %4747 = inttoptr i64 %4744 to i32*
  %4748 = load i32, i32* %4747
  %4749 = zext i32 %4748 to i64
  store i64 %4749, i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_43df5f, %struct.Memory** %MEMORY
  %loadMem1_43df62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 33
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4752 to i64*
  %4753 = load i64, i64* %PC.i428
  %4754 = add i64 %4753, -193682
  %4755 = load i64, i64* %PC.i428
  %4756 = add i64 %4755, 5
  %4757 = load i64, i64* %PC.i428
  %4758 = add i64 %4757, 5
  store i64 %4758, i64* %PC.i428
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4760 = load i64, i64* %4759, align 8
  %4761 = add i64 %4760, -8
  %4762 = inttoptr i64 %4761 to i64*
  store i64 %4756, i64* %4762
  store i64 %4761, i64* %4759, align 8
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4754, i64* %4763, align 8
  store %struct.Memory* %loadMem1_43df62, %struct.Memory** %MEMORY
  %loadMem2_43df62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43df62 = load i64, i64* %3
  %call2_43df62 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64 %loadPC_43df62, %struct.Memory* %loadMem2_43df62)
  store %struct.Memory* %call2_43df62, %struct.Memory** %MEMORY
  %loadMem_43df67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 1
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %EAX.i427 = bitcast %union.anon* %4769 to i32*
  %4770 = load i32, i32* %EAX.i427
  %4771 = zext i32 %4770 to i64
  %4772 = load i64, i64* %PC.i426
  %4773 = add i64 %4772, 3
  store i64 %4773, i64* %PC.i426
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4774, align 1
  %4775 = and i32 %4770, 255
  %4776 = call i32 @llvm.ctpop.i32(i32 %4775)
  %4777 = trunc i32 %4776 to i8
  %4778 = and i8 %4777, 1
  %4779 = xor i8 %4778, 1
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4779, i8* %4780, align 1
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4781, align 1
  %4782 = icmp eq i32 %4770, 0
  %4783 = zext i1 %4782 to i8
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4783, i8* %4784, align 1
  %4785 = lshr i32 %4770, 31
  %4786 = trunc i32 %4785 to i8
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4786, i8* %4787, align 1
  %4788 = lshr i32 %4770, 31
  %4789 = xor i32 %4785, %4788
  %4790 = add i32 %4789, %4788
  %4791 = icmp eq i32 %4790, 2
  %4792 = zext i1 %4791 to i8
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4792, i8* %4793, align 1
  store %struct.Memory* %loadMem_43df67, %struct.Memory** %MEMORY
  %loadMem_43df6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %4796 to i64*
  %4797 = load i64, i64* %PC.i425
  %4798 = add i64 %4797, 111
  %4799 = load i64, i64* %PC.i425
  %4800 = add i64 %4799, 6
  %4801 = load i64, i64* %PC.i425
  %4802 = add i64 %4801, 6
  store i64 %4802, i64* %PC.i425
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4804 = load i8, i8* %4803, align 1
  store i8 %4804, i8* %BRANCH_TAKEN, align 1
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4806 = icmp ne i8 %4804, 0
  %4807 = select i1 %4806, i64 %4798, i64 %4800
  store i64 %4807, i64* %4805, align 8
  store %struct.Memory* %loadMem_43df6a, %struct.Memory** %MEMORY
  %loadBr_43df6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df6a = icmp eq i8 %loadBr_43df6a, 1
  br i1 %cmpBr_43df6a, label %block_.L_43dfd9, label %block_43df70

block_43df70:                                     ; preds = %block_43df52
  %loadMem_43df70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 33
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 1
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %EAX.i423 = bitcast %union.anon* %4813 to i32*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 1
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %4816 to i64*
  %4817 = load i64, i64* %RAX.i424
  %4818 = load i32, i32* %EAX.i423
  %4819 = zext i32 %4818 to i64
  %4820 = load i64, i64* %PC.i422
  %4821 = add i64 %4820, 2
  store i64 %4821, i64* %PC.i422
  %4822 = xor i64 %4819, %4817
  %4823 = trunc i64 %4822 to i32
  %4824 = and i64 %4822, 4294967295
  store i64 %4824, i64* %RAX.i424, align 8
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4825, align 1
  %4826 = and i32 %4823, 255
  %4827 = call i32 @llvm.ctpop.i32(i32 %4826)
  %4828 = trunc i32 %4827 to i8
  %4829 = and i8 %4828, 1
  %4830 = xor i8 %4829, 1
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4830, i8* %4831, align 1
  %4832 = icmp eq i32 %4823, 0
  %4833 = zext i1 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4833, i8* %4834, align 1
  %4835 = lshr i32 %4823, 31
  %4836 = trunc i32 %4835 to i8
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4836, i8* %4837, align 1
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4838, align 1
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4839, align 1
  store %struct.Memory* %loadMem_43df70, %struct.Memory** %MEMORY
  %loadMem_43df72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 33
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 1
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %4845 to i32*
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 7
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %RDX.i421 = bitcast %union.anon* %4848 to i64*
  %4849 = load i32, i32* %EAX.i420
  %4850 = zext i32 %4849 to i64
  %4851 = load i64, i64* %PC.i419
  %4852 = add i64 %4851, 2
  store i64 %4852, i64* %PC.i419
  %4853 = and i64 %4850, 4294967295
  store i64 %4853, i64* %RDX.i421, align 8
  store %struct.Memory* %loadMem_43df72, %struct.Memory** %MEMORY
  %loadMem_43df74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 33
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4856 to i64*
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 5
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %4859 to i64*
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 15
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %4862 to i64*
  %4863 = load i64, i64* %RBP.i418
  %4864 = sub i64 %4863, 16
  %4865 = load i64, i64* %PC.i416
  %4866 = add i64 %4865, 4
  store i64 %4866, i64* %PC.i416
  %4867 = inttoptr i64 %4864 to i64*
  %4868 = load i64, i64* %4867
  store i64 %4868, i64* %RCX.i417, align 8
  store %struct.Memory* %loadMem_43df74, %struct.Memory** %MEMORY
  %loadMem_43df78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 33
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4871 to i64*
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 9
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %RSI.i414 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 15
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %4877 to i64*
  %4878 = load i64, i64* %RBP.i415
  %4879 = sub i64 %4878, 20
  %4880 = load i64, i64* %PC.i413
  %4881 = add i64 %4880, 4
  store i64 %4881, i64* %PC.i413
  %4882 = inttoptr i64 %4879 to i32*
  %4883 = load i32, i32* %4882
  %4884 = sext i32 %4883 to i64
  store i64 %4884, i64* %RSI.i414, align 8
  store %struct.Memory* %loadMem_43df78, %struct.Memory** %MEMORY
  %loadMem_43df7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 33
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4887 to i64*
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 5
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 9
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %RSI.i411 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 11
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RDI.i412 = bitcast %union.anon* %4896 to i64*
  %4897 = load i64, i64* %RCX.i410
  %4898 = load i64, i64* %RSI.i411
  %4899 = mul i64 %4898, 4
  %4900 = add i64 %4899, %4897
  %4901 = load i64, i64* %PC.i409
  %4902 = add i64 %4901, 3
  store i64 %4902, i64* %PC.i409
  %4903 = inttoptr i64 %4900 to i32*
  %4904 = load i32, i32* %4903
  %4905 = zext i32 %4904 to i64
  store i64 %4905, i64* %RDI.i412, align 8
  store %struct.Memory* %loadMem_43df7c, %struct.Memory** %MEMORY
  %loadMem_43df7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 33
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 9
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RSI.i407 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 15
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %RBP.i408
  %4916 = sub i64 %4915, 1640
  %4917 = load i64, i64* %PC.i406
  %4918 = add i64 %4917, 6
  store i64 %4918, i64* %PC.i406
  %4919 = inttoptr i64 %4916 to i32*
  %4920 = load i32, i32* %4919
  %4921 = zext i32 %4920 to i64
  store i64 %4921, i64* %RSI.i407, align 8
  store %struct.Memory* %loadMem_43df7f, %struct.Memory** %MEMORY
  %loadMem1_43df85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %PC.i405
  %4926 = add i64 %4925, 60331
  %4927 = load i64, i64* %PC.i405
  %4928 = add i64 %4927, 5
  %4929 = load i64, i64* %PC.i405
  %4930 = add i64 %4929, 5
  store i64 %4930, i64* %PC.i405
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4932 = load i64, i64* %4931, align 8
  %4933 = add i64 %4932, -8
  %4934 = inttoptr i64 %4933 to i64*
  store i64 %4928, i64* %4934
  store i64 %4933, i64* %4931, align 8
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4926, i64* %4935, align 8
  store %struct.Memory* %loadMem1_43df85, %struct.Memory** %MEMORY
  %loadMem2_43df85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43df85 = load i64, i64* %3
  %call2_43df85 = call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* %0, i64 %loadPC_43df85, %struct.Memory* %loadMem2_43df85)
  store %struct.Memory* %call2_43df85, %struct.Memory** %MEMORY
  %loadMem_43df8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 1
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %4941 to i32*
  %4942 = load i32, i32* %EAX.i404
  %4943 = zext i32 %4942 to i64
  %4944 = load i64, i64* %PC.i403
  %4945 = add i64 %4944, 3
  store i64 %4945, i64* %PC.i403
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4946, align 1
  %4947 = and i32 %4942, 255
  %4948 = call i32 @llvm.ctpop.i32(i32 %4947)
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = xor i8 %4950, 1
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4951, i8* %4952, align 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4953, align 1
  %4954 = icmp eq i32 %4942, 0
  %4955 = zext i1 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4955, i8* %4956, align 1
  %4957 = lshr i32 %4942, 31
  %4958 = trunc i32 %4957 to i8
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4958, i8* %4959, align 1
  %4960 = lshr i32 %4942, 31
  %4961 = xor i32 %4957, %4960
  %4962 = add i32 %4961, %4960
  %4963 = icmp eq i32 %4962, 2
  %4964 = zext i1 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4964, i8* %4965, align 1
  store %struct.Memory* %loadMem_43df8a, %struct.Memory** %MEMORY
  %loadMem_43df8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %PC.i402
  %4970 = add i64 %4969, 76
  %4971 = load i64, i64* %PC.i402
  %4972 = add i64 %4971, 6
  %4973 = load i64, i64* %PC.i402
  %4974 = add i64 %4973, 6
  store i64 %4974, i64* %PC.i402
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4976 = load i8, i8* %4975, align 1
  store i8 %4976, i8* %BRANCH_TAKEN, align 1
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4978 = icmp ne i8 %4976, 0
  %4979 = select i1 %4978, i64 %4970, i64 %4972
  store i64 %4979, i64* %4977, align 8
  store %struct.Memory* %loadMem_43df8d, %struct.Memory** %MEMORY
  %loadBr_43df8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43df8d = icmp eq i8 %loadBr_43df8d, 1
  br i1 %cmpBr_43df8d, label %block_.L_43dfd9, label %block_43df93

block_43df93:                                     ; preds = %block_43df70
  %loadMem_43df93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 33
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 11
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %RDI.i401 = bitcast %union.anon* %4985 to i64*
  %4986 = load i64, i64* %PC.i400
  %4987 = add i64 %4986, 10
  store i64 %4987, i64* %PC.i400
  store i64 ptrtoint (%G__0x57dbe7_type* @G__0x57dbe7 to i64), i64* %RDI.i401, align 8
  store %struct.Memory* %loadMem_43df93, %struct.Memory** %MEMORY
  %loadMem_43df9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 9
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %RSI.i398 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 15
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %RBP.i399
  %4998 = sub i64 %4997, 1640
  %4999 = load i64, i64* %PC.i397
  %5000 = add i64 %4999, 6
  store i64 %5000, i64* %PC.i397
  %5001 = inttoptr i64 %4998 to i32*
  %5002 = load i32, i32* %5001
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RSI.i398, align 8
  store %struct.Memory* %loadMem_43df9d, %struct.Memory** %MEMORY
  %loadMem_43dfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 1
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 15
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %RBP.i396
  %5014 = sub i64 %5013, 16
  %5015 = load i64, i64* %PC.i394
  %5016 = add i64 %5015, 4
  store i64 %5016, i64* %PC.i394
  %5017 = inttoptr i64 %5014 to i64*
  %5018 = load i64, i64* %5017
  store i64 %5018, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_43dfa3, %struct.Memory** %MEMORY
  %loadMem_43dfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 33
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 5
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %5024 to i64*
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 15
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %5027 to i64*
  %5028 = load i64, i64* %RBP.i393
  %5029 = sub i64 %5028, 20
  %5030 = load i64, i64* %PC.i391
  %5031 = add i64 %5030, 4
  store i64 %5031, i64* %PC.i391
  %5032 = inttoptr i64 %5029 to i32*
  %5033 = load i32, i32* %5032
  %5034 = sext i32 %5033 to i64
  store i64 %5034, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_43dfa7, %struct.Memory** %MEMORY
  %loadMem_43dfab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 33
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %5037 to i64*
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 1
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 5
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %RCX.i389 = bitcast %union.anon* %5043 to i64*
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 7
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %RDX.i390 = bitcast %union.anon* %5046 to i64*
  %5047 = load i64, i64* %RAX.i388
  %5048 = load i64, i64* %RCX.i389
  %5049 = mul i64 %5048, 4
  %5050 = add i64 %5049, %5047
  %5051 = load i64, i64* %PC.i387
  %5052 = add i64 %5051, 3
  store i64 %5052, i64* %PC.i387
  %5053 = inttoptr i64 %5050 to i32*
  %5054 = load i32, i32* %5053
  %5055 = zext i32 %5054 to i64
  store i64 %5055, i64* %RDX.i390, align 8
  store %struct.Memory* %loadMem_43dfab, %struct.Memory** %MEMORY
  %loadMem_43dfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 33
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 1
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %5062 = bitcast %union.anon* %5061 to %struct.anon.2*
  %AL.i386 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5062, i32 0, i32 0
  %5063 = load i64, i64* %PC.i385
  %5064 = add i64 %5063, 2
  store i64 %5064, i64* %PC.i385
  store i8 0, i8* %AL.i386, align 1
  store %struct.Memory* %loadMem_43dfae, %struct.Memory** %MEMORY
  %loadMem1_43dfb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 33
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %PC.i384
  %5069 = add i64 %5068, 81408
  %5070 = load i64, i64* %PC.i384
  %5071 = add i64 %5070, 5
  %5072 = load i64, i64* %PC.i384
  %5073 = add i64 %5072, 5
  store i64 %5073, i64* %PC.i384
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5075 = load i64, i64* %5074, align 8
  %5076 = add i64 %5075, -8
  %5077 = inttoptr i64 %5076 to i64*
  store i64 %5071, i64* %5077
  store i64 %5076, i64* %5074, align 8
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5069, i64* %5078, align 8
  store %struct.Memory* %loadMem1_43dfb0, %struct.Memory** %MEMORY
  %loadMem2_43dfb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dfb0 = load i64, i64* %3
  %call2_43dfb0 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43dfb0, %struct.Memory* %loadMem2_43dfb0)
  store %struct.Memory* %call2_43dfb0, %struct.Memory** %MEMORY
  %loadMem_43dfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 33
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5081 to i64*
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 11
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %EDI.i382 = bitcast %union.anon* %5084 to i32*
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 11
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %5087 to i64*
  %5088 = load i64, i64* %RDI.i383
  %5089 = load i32, i32* %EDI.i382
  %5090 = zext i32 %5089 to i64
  %5091 = load i64, i64* %PC.i381
  %5092 = add i64 %5091, 2
  store i64 %5092, i64* %PC.i381
  %5093 = xor i64 %5090, %5088
  %5094 = trunc i64 %5093 to i32
  %5095 = and i64 %5093, 4294967295
  store i64 %5095, i64* %RDI.i383, align 8
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
  store %struct.Memory* %loadMem_43dfb5, %struct.Memory** %MEMORY
  %loadMem_43dfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 1
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %EAX.i379 = bitcast %union.anon* %5116 to i32*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 15
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %RBP.i380
  %5121 = sub i64 %5120, 6592
  %5122 = load i32, i32* %EAX.i379
  %5123 = zext i32 %5122 to i64
  %5124 = load i64, i64* %PC.i378
  %5125 = add i64 %5124, 6
  store i64 %5125, i64* %PC.i378
  %5126 = inttoptr i64 %5121 to i32*
  store i32 %5122, i32* %5126
  store %struct.Memory* %loadMem_43dfb7, %struct.Memory** %MEMORY
  %loadMem1_43dfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 33
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %5129 to i64*
  %5130 = load i64, i64* %PC.i377
  %5131 = add i64 %5130, 224835
  %5132 = load i64, i64* %PC.i377
  %5133 = add i64 %5132, 5
  %5134 = load i64, i64* %PC.i377
  %5135 = add i64 %5134, 5
  store i64 %5135, i64* %PC.i377
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5137 = load i64, i64* %5136, align 8
  %5138 = add i64 %5137, -8
  %5139 = inttoptr i64 %5138 to i64*
  store i64 %5133, i64* %5139
  store i64 %5138, i64* %5136, align 8
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5131, i64* %5140, align 8
  store %struct.Memory* %loadMem1_43dfbd, %struct.Memory** %MEMORY
  %loadMem2_43dfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dfbd = load i64, i64* %3
  %call2_43dfbd = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43dfbd, %struct.Memory* %loadMem2_43dfbd)
  store %struct.Memory* %call2_43dfbd, %struct.Memory** %MEMORY
  %loadMem_43dfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 33
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5143 to i64*
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 11
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %RDI.i376 = bitcast %union.anon* %5146 to i64*
  %5147 = load i64, i64* %PC.i375
  %5148 = add i64 %5147, 10
  store i64 %5148, i64* %PC.i375
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i376, align 8
  store %struct.Memory* %loadMem_43dfc2, %struct.Memory** %MEMORY
  %loadMem_43dfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 33
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5151 to i64*
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 1
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %5155 = bitcast %union.anon* %5154 to %struct.anon.2*
  %AL.i374 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5155, i32 0, i32 0
  %5156 = load i64, i64* %PC.i373
  %5157 = add i64 %5156, 2
  store i64 %5157, i64* %PC.i373
  store i8 0, i8* %AL.i374, align 1
  store %struct.Memory* %loadMem_43dfcc, %struct.Memory** %MEMORY
  %loadMem1_43dfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 33
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %5160 to i64*
  %5161 = load i64, i64* %PC.i372
  %5162 = add i64 %5161, 81378
  %5163 = load i64, i64* %PC.i372
  %5164 = add i64 %5163, 5
  %5165 = load i64, i64* %PC.i372
  %5166 = add i64 %5165, 5
  store i64 %5166, i64* %PC.i372
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5168 = load i64, i64* %5167, align 8
  %5169 = add i64 %5168, -8
  %5170 = inttoptr i64 %5169 to i64*
  store i64 %5164, i64* %5170
  store i64 %5169, i64* %5167, align 8
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5162, i64* %5171, align 8
  store %struct.Memory* %loadMem1_43dfce, %struct.Memory** %MEMORY
  %loadMem2_43dfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43dfce = load i64, i64* %3
  %call2_43dfce = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43dfce, %struct.Memory* %loadMem2_43dfce)
  store %struct.Memory* %call2_43dfce, %struct.Memory** %MEMORY
  %loadMem_43dfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 33
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %5174 to i64*
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 1
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %EAX.i370 = bitcast %union.anon* %5177 to i32*
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 15
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %5180 to i64*
  %5181 = load i64, i64* %RBP.i371
  %5182 = sub i64 %5181, 6596
  %5183 = load i32, i32* %EAX.i370
  %5184 = zext i32 %5183 to i64
  %5185 = load i64, i64* %PC.i369
  %5186 = add i64 %5185, 6
  store i64 %5186, i64* %PC.i369
  %5187 = inttoptr i64 %5182 to i32*
  store i32 %5183, i32* %5187
  store %struct.Memory* %loadMem_43dfd3, %struct.Memory** %MEMORY
  br label %block_.L_43dfd9

block_.L_43dfd9:                                  ; preds = %block_43df93, %block_43df70, %block_43df52, %block_43df35
  %loadMem_43dfd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 33
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %PC.i368
  %5192 = add i64 %5191, 5
  %5193 = load i64, i64* %PC.i368
  %5194 = add i64 %5193, 5
  store i64 %5194, i64* %PC.i368
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5192, i64* %5195, align 8
  store %struct.Memory* %loadMem_43dfd9, %struct.Memory** %MEMORY
  br label %block_.L_43dfde

block_.L_43dfde:                                  ; preds = %block_.L_43dfd9
  %loadMem_43dfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 1
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %5201 to i64*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 15
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %RBP.i367
  %5206 = sub i64 %5205, 20
  %5207 = load i64, i64* %PC.i365
  %5208 = add i64 %5207, 3
  store i64 %5208, i64* %PC.i365
  %5209 = inttoptr i64 %5206 to i32*
  %5210 = load i32, i32* %5209
  %5211 = zext i32 %5210 to i64
  store i64 %5211, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_43dfde, %struct.Memory** %MEMORY
  %loadMem_43dfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 33
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 1
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %5217 to i64*
  %5218 = load i64, i64* %RAX.i364
  %5219 = load i64, i64* %PC.i363
  %5220 = add i64 %5219, 3
  store i64 %5220, i64* %PC.i363
  %5221 = trunc i64 %5218 to i32
  %5222 = add i32 1, %5221
  %5223 = zext i32 %5222 to i64
  store i64 %5223, i64* %RAX.i364, align 8
  %5224 = icmp ult i32 %5222, %5221
  %5225 = icmp ult i32 %5222, 1
  %5226 = or i1 %5224, %5225
  %5227 = zext i1 %5226 to i8
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5227, i8* %5228, align 1
  %5229 = and i32 %5222, 255
  %5230 = call i32 @llvm.ctpop.i32(i32 %5229)
  %5231 = trunc i32 %5230 to i8
  %5232 = and i8 %5231, 1
  %5233 = xor i8 %5232, 1
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5233, i8* %5234, align 1
  %5235 = xor i64 1, %5218
  %5236 = trunc i64 %5235 to i32
  %5237 = xor i32 %5236, %5222
  %5238 = lshr i32 %5237, 4
  %5239 = trunc i32 %5238 to i8
  %5240 = and i8 %5239, 1
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5240, i8* %5241, align 1
  %5242 = icmp eq i32 %5222, 0
  %5243 = zext i1 %5242 to i8
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5243, i8* %5244, align 1
  %5245 = lshr i32 %5222, 31
  %5246 = trunc i32 %5245 to i8
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5246, i8* %5247, align 1
  %5248 = lshr i32 %5221, 31
  %5249 = xor i32 %5245, %5248
  %5250 = add i32 %5249, %5245
  %5251 = icmp eq i32 %5250, 2
  %5252 = zext i1 %5251 to i8
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5252, i8* %5253, align 1
  store %struct.Memory* %loadMem_43dfe1, %struct.Memory** %MEMORY
  %loadMem_43dfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5255 = getelementptr inbounds %struct.GPR, %struct.GPR* %5254, i32 0, i32 33
  %5256 = getelementptr inbounds %struct.Reg, %struct.Reg* %5255, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5256 to i64*
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 1
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %5259 to i32*
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 15
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %5262 to i64*
  %5263 = load i64, i64* %RBP.i362
  %5264 = sub i64 %5263, 20
  %5265 = load i32, i32* %EAX.i361
  %5266 = zext i32 %5265 to i64
  %5267 = load i64, i64* %PC.i360
  %5268 = add i64 %5267, 3
  store i64 %5268, i64* %PC.i360
  %5269 = inttoptr i64 %5264 to i32*
  store i32 %5265, i32* %5269
  store %struct.Memory* %loadMem_43dfe4, %struct.Memory** %MEMORY
  %loadMem_43dfe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5272 to i64*
  %5273 = load i64, i64* %PC.i359
  %5274 = add i64 %5273, -190
  %5275 = load i64, i64* %PC.i359
  %5276 = add i64 %5275, 5
  store i64 %5276, i64* %PC.i359
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5274, i64* %5277, align 8
  store %struct.Memory* %loadMem_43dfe7, %struct.Memory** %MEMORY
  br label %block_.L_43df29

block_.L_43dfec:                                  ; preds = %block_.L_43df29
  %loadMem_43dfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 33
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5280 to i64*
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 1
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 15
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %5286 to i64*
  %5287 = load i64, i64* %RBP.i358
  %5288 = sub i64 %5287, 6560
  %5289 = load i64, i64* %PC.i356
  %5290 = add i64 %5289, 6
  store i64 %5290, i64* %PC.i356
  %5291 = inttoptr i64 %5288 to i32*
  %5292 = load i32, i32* %5291
  %5293 = zext i32 %5292 to i64
  store i64 %5293, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_43dfec, %struct.Memory** %MEMORY
  %loadMem_43dff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 33
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %5296 to i64*
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 5
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %5299 to i64*
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 15
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %5302 to i64*
  %5303 = load i64, i64* %RBP.i355
  %5304 = sub i64 %5303, 4
  %5305 = load i64, i64* %PC.i353
  %5306 = add i64 %5305, 3
  store i64 %5306, i64* %PC.i353
  %5307 = inttoptr i64 %5304 to i32*
  %5308 = load i32, i32* %5307
  %5309 = zext i32 %5308 to i64
  store i64 %5309, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_43dff2, %struct.Memory** %MEMORY
  %loadMem_43dff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 33
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5312 to i64*
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 5
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %5315 to i64*
  %5316 = load i64, i64* %RCX.i352
  %5317 = load i64, i64* %PC.i351
  %5318 = add i64 %5317, 3
  store i64 %5318, i64* %PC.i351
  %5319 = trunc i64 %5316 to i32
  %5320 = sub i32 %5319, 1
  %5321 = zext i32 %5320 to i64
  store i64 %5321, i64* %RCX.i352, align 8
  %5322 = icmp ult i32 %5319, 1
  %5323 = zext i1 %5322 to i8
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5323, i8* %5324, align 1
  %5325 = and i32 %5320, 255
  %5326 = call i32 @llvm.ctpop.i32(i32 %5325)
  %5327 = trunc i32 %5326 to i8
  %5328 = and i8 %5327, 1
  %5329 = xor i8 %5328, 1
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5329, i8* %5330, align 1
  %5331 = xor i64 1, %5316
  %5332 = trunc i64 %5331 to i32
  %5333 = xor i32 %5332, %5320
  %5334 = lshr i32 %5333, 4
  %5335 = trunc i32 %5334 to i8
  %5336 = and i8 %5335, 1
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5336, i8* %5337, align 1
  %5338 = icmp eq i32 %5320, 0
  %5339 = zext i1 %5338 to i8
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5339, i8* %5340, align 1
  %5341 = lshr i32 %5320, 31
  %5342 = trunc i32 %5341 to i8
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5342, i8* %5343, align 1
  %5344 = lshr i32 %5319, 31
  %5345 = xor i32 %5341, %5344
  %5346 = add i32 %5345, %5344
  %5347 = icmp eq i32 %5346, 2
  %5348 = zext i1 %5347 to i8
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5348, i8* %5349, align 1
  store %struct.Memory* %loadMem_43dff5, %struct.Memory** %MEMORY
  %loadMem_43dff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 33
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5352 to i64*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 1
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %EAX.i349 = bitcast %union.anon* %5355 to i32*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 5
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %ECX.i350 = bitcast %union.anon* %5358 to i32*
  %5359 = load i32, i32* %EAX.i349
  %5360 = zext i32 %5359 to i64
  %5361 = load i32, i32* %ECX.i350
  %5362 = zext i32 %5361 to i64
  %5363 = load i64, i64* %PC.i348
  %5364 = add i64 %5363, 2
  store i64 %5364, i64* %PC.i348
  %5365 = sub i32 %5359, %5361
  %5366 = icmp ult i32 %5359, %5361
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5367, i8* %5368, align 1
  %5369 = and i32 %5365, 255
  %5370 = call i32 @llvm.ctpop.i32(i32 %5369)
  %5371 = trunc i32 %5370 to i8
  %5372 = and i8 %5371, 1
  %5373 = xor i8 %5372, 1
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5373, i8* %5374, align 1
  %5375 = xor i64 %5362, %5360
  %5376 = trunc i64 %5375 to i32
  %5377 = xor i32 %5376, %5365
  %5378 = lshr i32 %5377, 4
  %5379 = trunc i32 %5378 to i8
  %5380 = and i8 %5379, 1
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5380, i8* %5381, align 1
  %5382 = icmp eq i32 %5365, 0
  %5383 = zext i1 %5382 to i8
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5383, i8* %5384, align 1
  %5385 = lshr i32 %5365, 31
  %5386 = trunc i32 %5385 to i8
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5386, i8* %5387, align 1
  %5388 = lshr i32 %5359, 31
  %5389 = lshr i32 %5361, 31
  %5390 = xor i32 %5389, %5388
  %5391 = xor i32 %5385, %5388
  %5392 = add i32 %5391, %5390
  %5393 = icmp eq i32 %5392, 2
  %5394 = zext i1 %5393 to i8
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5394, i8* %5395, align 1
  store %struct.Memory* %loadMem_43dff8, %struct.Memory** %MEMORY
  %loadMem_43dffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 33
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5398 to i64*
  %5399 = load i64, i64* %PC.i347
  %5400 = add i64 %5399, 149
  %5401 = load i64, i64* %PC.i347
  %5402 = add i64 %5401, 6
  %5403 = load i64, i64* %PC.i347
  %5404 = add i64 %5403, 6
  store i64 %5404, i64* %PC.i347
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5406 = load i8, i8* %5405, align 1
  %5407 = icmp eq i8 %5406, 0
  %5408 = zext i1 %5407 to i8
  store i8 %5408, i8* %BRANCH_TAKEN, align 1
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5410 = select i1 %5407, i64 %5400, i64 %5402
  store i64 %5410, i64* %5409, align 8
  store %struct.Memory* %loadMem_43dffa, %struct.Memory** %MEMORY
  %loadBr_43dffa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43dffa = icmp eq i8 %loadBr_43dffa, 1
  br i1 %cmpBr_43dffa, label %block_.L_43e08f, label %block_43e000

block_43e000:                                     ; preds = %block_.L_43dfec
  %loadMem_43e000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 15
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %RBP.i346
  %5418 = sub i64 %5417, 20
  %5419 = load i64, i64* %PC.i345
  %5420 = add i64 %5419, 7
  store i64 %5420, i64* %PC.i345
  %5421 = inttoptr i64 %5418 to i32*
  store i32 0, i32* %5421
  store %struct.Memory* %loadMem_43e000, %struct.Memory** %MEMORY
  br label %block_.L_43e007

block_.L_43e007:                                  ; preds = %block_.L_43e07c, %block_43e000
  %loadMem_43e007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 33
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5424 to i64*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 1
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %5427 to i64*
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 15
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %5430 to i64*
  %5431 = load i64, i64* %RBP.i344
  %5432 = sub i64 %5431, 20
  %5433 = load i64, i64* %PC.i342
  %5434 = add i64 %5433, 3
  store i64 %5434, i64* %PC.i342
  %5435 = inttoptr i64 %5432 to i32*
  %5436 = load i32, i32* %5435
  %5437 = zext i32 %5436 to i64
  store i64 %5437, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_43e007, %struct.Memory** %MEMORY
  %loadMem_43e00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 1
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %EAX.i340 = bitcast %union.anon* %5443 to i32*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 15
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %5446 to i64*
  %5447 = load i32, i32* %EAX.i340
  %5448 = zext i32 %5447 to i64
  %5449 = load i64, i64* %RBP.i341
  %5450 = sub i64 %5449, 4
  %5451 = load i64, i64* %PC.i339
  %5452 = add i64 %5451, 3
  store i64 %5452, i64* %PC.i339
  %5453 = inttoptr i64 %5450 to i32*
  %5454 = load i32, i32* %5453
  %5455 = sub i32 %5447, %5454
  %5456 = icmp ult i32 %5447, %5454
  %5457 = zext i1 %5456 to i8
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5457, i8* %5458, align 1
  %5459 = and i32 %5455, 255
  %5460 = call i32 @llvm.ctpop.i32(i32 %5459)
  %5461 = trunc i32 %5460 to i8
  %5462 = and i8 %5461, 1
  %5463 = xor i8 %5462, 1
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5463, i8* %5464, align 1
  %5465 = xor i32 %5454, %5447
  %5466 = xor i32 %5465, %5455
  %5467 = lshr i32 %5466, 4
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5469, i8* %5470, align 1
  %5471 = icmp eq i32 %5455, 0
  %5472 = zext i1 %5471 to i8
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5472, i8* %5473, align 1
  %5474 = lshr i32 %5455, 31
  %5475 = trunc i32 %5474 to i8
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5475, i8* %5476, align 1
  %5477 = lshr i32 %5447, 31
  %5478 = lshr i32 %5454, 31
  %5479 = xor i32 %5478, %5477
  %5480 = xor i32 %5474, %5477
  %5481 = add i32 %5480, %5479
  %5482 = icmp eq i32 %5481, 2
  %5483 = zext i1 %5482 to i8
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5483, i8* %5484, align 1
  store %struct.Memory* %loadMem_43e00a, %struct.Memory** %MEMORY
  %loadMem_43e00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5487 to i64*
  %5488 = load i64, i64* %PC.i338
  %5489 = add i64 %5488, 125
  %5490 = load i64, i64* %PC.i338
  %5491 = add i64 %5490, 6
  %5492 = load i64, i64* %PC.i338
  %5493 = add i64 %5492, 6
  store i64 %5493, i64* %PC.i338
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5495 = load i8, i8* %5494, align 1
  %5496 = icmp ne i8 %5495, 0
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5498 = load i8, i8* %5497, align 1
  %5499 = icmp ne i8 %5498, 0
  %5500 = xor i1 %5496, %5499
  %5501 = xor i1 %5500, true
  %5502 = zext i1 %5501 to i8
  store i8 %5502, i8* %BRANCH_TAKEN, align 1
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5504 = select i1 %5500, i64 %5491, i64 %5489
  store i64 %5504, i64* %5503, align 8
  store %struct.Memory* %loadMem_43e00d, %struct.Memory** %MEMORY
  %loadBr_43e00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e00d = icmp eq i8 %loadBr_43e00d, 1
  br i1 %cmpBr_43e00d, label %block_.L_43e08a, label %block_43e013

block_43e013:                                     ; preds = %block_.L_43e007
  %loadMem_43e013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 33
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5507 to i64*
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 1
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %5510 to i64*
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 15
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %5513 to i64*
  %5514 = load i64, i64* %RBP.i337
  %5515 = sub i64 %5514, 16
  %5516 = load i64, i64* %PC.i335
  %5517 = add i64 %5516, 4
  store i64 %5517, i64* %PC.i335
  %5518 = inttoptr i64 %5515 to i64*
  %5519 = load i64, i64* %5518
  store i64 %5519, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_43e013, %struct.Memory** %MEMORY
  %loadMem_43e017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 5
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %5525 to i64*
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 15
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %5528 to i64*
  %5529 = load i64, i64* %RBP.i334
  %5530 = sub i64 %5529, 20
  %5531 = load i64, i64* %PC.i332
  %5532 = add i64 %5531, 4
  store i64 %5532, i64* %PC.i332
  %5533 = inttoptr i64 %5530 to i32*
  %5534 = load i32, i32* %5533
  %5535 = sext i32 %5534 to i64
  store i64 %5535, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_43e017, %struct.Memory** %MEMORY
  %loadMem_43e01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 33
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5538 to i64*
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 1
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 5
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %5544 to i64*
  %5545 = load i64, i64* %RAX.i330
  %5546 = load i64, i64* %RCX.i331
  %5547 = mul i64 %5546, 4
  %5548 = add i64 %5547, %5545
  %5549 = load i64, i64* %PC.i329
  %5550 = add i64 %5549, 4
  store i64 %5550, i64* %PC.i329
  %5551 = inttoptr i64 %5548 to i32*
  %5552 = load i32, i32* %5551
  %5553 = sext i32 %5552 to i64
  store i64 %5553, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_43e01b, %struct.Memory** %MEMORY
  %loadMem_43e01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 33
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5556 to i64*
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 1
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %5559 to i64*
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 7
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %5562 to i64*
  %5563 = load i64, i64* %RAX.i327
  %5564 = add i64 %5563, 12099168
  %5565 = load i64, i64* %PC.i326
  %5566 = add i64 %5565, 8
  store i64 %5566, i64* %PC.i326
  %5567 = inttoptr i64 %5564 to i8*
  %5568 = load i8, i8* %5567
  %5569 = zext i8 %5568 to i64
  store i64 %5569, i64* %RDX.i328, align 8
  store %struct.Memory* %loadMem_43e01f, %struct.Memory** %MEMORY
  %loadMem_43e027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 33
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %5572 to i64*
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 7
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %EDX.i325 = bitcast %union.anon* %5575 to i32*
  %5576 = load i32, i32* %EDX.i325
  %5577 = zext i32 %5576 to i64
  %5578 = load i64, i64* %PC.i324
  %5579 = add i64 %5578, 3
  store i64 %5579, i64* %PC.i324
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5580, align 1
  %5581 = and i32 %5576, 255
  %5582 = call i32 @llvm.ctpop.i32(i32 %5581)
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = xor i8 %5584, 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5585, i8* %5586, align 1
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5587, align 1
  %5588 = icmp eq i32 %5576, 0
  %5589 = zext i1 %5588 to i8
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5589, i8* %5590, align 1
  %5591 = lshr i32 %5576, 31
  %5592 = trunc i32 %5591 to i8
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5592, i8* %5593, align 1
  %5594 = lshr i32 %5576, 31
  %5595 = xor i32 %5591, %5594
  %5596 = add i32 %5595, %5594
  %5597 = icmp eq i32 %5596, 2
  %5598 = zext i1 %5597 to i8
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5598, i8* %5599, align 1
  store %struct.Memory* %loadMem_43e027, %struct.Memory** %MEMORY
  %loadMem_43e02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 33
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %PC.i323
  %5604 = add i64 %5603, 77
  %5605 = load i64, i64* %PC.i323
  %5606 = add i64 %5605, 6
  %5607 = load i64, i64* %PC.i323
  %5608 = add i64 %5607, 6
  store i64 %5608, i64* %PC.i323
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5610 = load i8, i8* %5609, align 1
  %5611 = icmp eq i8 %5610, 0
  %5612 = zext i1 %5611 to i8
  store i8 %5612, i8* %BRANCH_TAKEN, align 1
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5614 = select i1 %5611, i64 %5604, i64 %5606
  store i64 %5614, i64* %5613, align 8
  store %struct.Memory* %loadMem_43e02a, %struct.Memory** %MEMORY
  %loadBr_43e02a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e02a = icmp eq i8 %loadBr_43e02a, 1
  br i1 %cmpBr_43e02a, label %block_.L_43e077, label %block_43e030

block_43e030:                                     ; preds = %block_43e013
  %loadMem_43e030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5616 = getelementptr inbounds %struct.GPR, %struct.GPR* %5615, i32 0, i32 33
  %5617 = getelementptr inbounds %struct.Reg, %struct.Reg* %5616, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5617 to i64*
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 1
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %5620 to i32*
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5622 = getelementptr inbounds %struct.GPR, %struct.GPR* %5621, i32 0, i32 1
  %5623 = getelementptr inbounds %struct.Reg, %struct.Reg* %5622, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %5623 to i64*
  %5624 = load i64, i64* %RAX.i322
  %5625 = load i32, i32* %EAX.i321
  %5626 = zext i32 %5625 to i64
  %5627 = load i64, i64* %PC.i320
  %5628 = add i64 %5627, 2
  store i64 %5628, i64* %PC.i320
  %5629 = xor i64 %5626, %5624
  %5630 = trunc i64 %5629 to i32
  %5631 = and i64 %5629, 4294967295
  store i64 %5631, i64* %RAX.i322, align 8
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5632, align 1
  %5633 = and i32 %5630, 255
  %5634 = call i32 @llvm.ctpop.i32(i32 %5633)
  %5635 = trunc i32 %5634 to i8
  %5636 = and i8 %5635, 1
  %5637 = xor i8 %5636, 1
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5637, i8* %5638, align 1
  %5639 = icmp eq i32 %5630, 0
  %5640 = zext i1 %5639 to i8
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5640, i8* %5641, align 1
  %5642 = lshr i32 %5630, 31
  %5643 = trunc i32 %5642 to i8
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5643, i8* %5644, align 1
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5645, align 1
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5646, align 1
  store %struct.Memory* %loadMem_43e030, %struct.Memory** %MEMORY
  %loadMem_43e032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 33
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5649 to i64*
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5651 = getelementptr inbounds %struct.GPR, %struct.GPR* %5650, i32 0, i32 1
  %5652 = getelementptr inbounds %struct.Reg, %struct.Reg* %5651, i32 0, i32 0
  %EAX.i318 = bitcast %union.anon* %5652 to i32*
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 7
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %5655 to i64*
  %5656 = load i32, i32* %EAX.i318
  %5657 = zext i32 %5656 to i64
  %5658 = load i64, i64* %PC.i317
  %5659 = add i64 %5658, 2
  store i64 %5659, i64* %PC.i317
  %5660 = and i64 %5657, 4294967295
  store i64 %5660, i64* %RDX.i319, align 8
  store %struct.Memory* %loadMem_43e032, %struct.Memory** %MEMORY
  %loadMem_43e034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 33
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5663 to i64*
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 5
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %5666 to i64*
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5668 = getelementptr inbounds %struct.GPR, %struct.GPR* %5667, i32 0, i32 15
  %5669 = getelementptr inbounds %struct.Reg, %struct.Reg* %5668, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %5669 to i64*
  %5670 = load i64, i64* %RBP.i316
  %5671 = sub i64 %5670, 16
  %5672 = load i64, i64* %PC.i314
  %5673 = add i64 %5672, 4
  store i64 %5673, i64* %PC.i314
  %5674 = inttoptr i64 %5671 to i64*
  %5675 = load i64, i64* %5674
  store i64 %5675, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_43e034, %struct.Memory** %MEMORY
  %loadMem_43e038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 33
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5678 to i64*
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 9
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %RSI.i312 = bitcast %union.anon* %5681 to i64*
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 15
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %5684 to i64*
  %5685 = load i64, i64* %RBP.i313
  %5686 = sub i64 %5685, 20
  %5687 = load i64, i64* %PC.i311
  %5688 = add i64 %5687, 4
  store i64 %5688, i64* %PC.i311
  %5689 = inttoptr i64 %5686 to i32*
  %5690 = load i32, i32* %5689
  %5691 = sext i32 %5690 to i64
  store i64 %5691, i64* %RSI.i312, align 8
  store %struct.Memory* %loadMem_43e038, %struct.Memory** %MEMORY
  %loadMem_43e03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5693 = getelementptr inbounds %struct.GPR, %struct.GPR* %5692, i32 0, i32 33
  %5694 = getelementptr inbounds %struct.Reg, %struct.Reg* %5693, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5694 to i64*
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 5
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %RCX.i308 = bitcast %union.anon* %5697 to i64*
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 9
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %RSI.i309 = bitcast %union.anon* %5700 to i64*
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 11
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %RDI.i310 = bitcast %union.anon* %5703 to i64*
  %5704 = load i64, i64* %RCX.i308
  %5705 = load i64, i64* %RSI.i309
  %5706 = mul i64 %5705, 4
  %5707 = add i64 %5706, %5704
  %5708 = load i64, i64* %PC.i307
  %5709 = add i64 %5708, 3
  store i64 %5709, i64* %PC.i307
  %5710 = inttoptr i64 %5707 to i32*
  %5711 = load i32, i32* %5710
  %5712 = zext i32 %5711 to i64
  store i64 %5712, i64* %RDI.i310, align 8
  store %struct.Memory* %loadMem_43e03c, %struct.Memory** %MEMORY
  %loadMem_43e03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 33
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5715 to i64*
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 9
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %RSI.i305 = bitcast %union.anon* %5718 to i64*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 15
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %5721 to i64*
  %5722 = load i64, i64* %RBP.i306
  %5723 = sub i64 %5722, 1640
  %5724 = load i64, i64* %PC.i304
  %5725 = add i64 %5724, 6
  store i64 %5725, i64* %PC.i304
  %5726 = inttoptr i64 %5723 to i32*
  %5727 = load i32, i32* %5726
  %5728 = zext i32 %5727 to i64
  store i64 %5728, i64* %RSI.i305, align 8
  store %struct.Memory* %loadMem_43e03f, %struct.Memory** %MEMORY
  %loadMem1_43e045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 33
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5731 to i64*
  %5732 = load i64, i64* %PC.i303
  %5733 = add i64 %5732, 58235
  %5734 = load i64, i64* %PC.i303
  %5735 = add i64 %5734, 5
  %5736 = load i64, i64* %PC.i303
  %5737 = add i64 %5736, 5
  store i64 %5737, i64* %PC.i303
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5739 = load i64, i64* %5738, align 8
  %5740 = add i64 %5739, -8
  %5741 = inttoptr i64 %5740 to i64*
  store i64 %5735, i64* %5741
  store i64 %5740, i64* %5738, align 8
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5733, i64* %5742, align 8
  store %struct.Memory* %loadMem1_43e045, %struct.Memory** %MEMORY
  %loadMem2_43e045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e045 = load i64, i64* %3
  %call2_43e045 = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64 %loadPC_43e045, %struct.Memory* %loadMem2_43e045)
  store %struct.Memory* %call2_43e045, %struct.Memory** %MEMORY
  %loadMem_43e04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 33
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 1
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %5748 to i32*
  %5749 = load i32, i32* %EAX.i302
  %5750 = zext i32 %5749 to i64
  %5751 = load i64, i64* %PC.i301
  %5752 = add i64 %5751, 3
  store i64 %5752, i64* %PC.i301
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5753, align 1
  %5754 = and i32 %5749, 255
  %5755 = call i32 @llvm.ctpop.i32(i32 %5754)
  %5756 = trunc i32 %5755 to i8
  %5757 = and i8 %5756, 1
  %5758 = xor i8 %5757, 1
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5758, i8* %5759, align 1
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5760, align 1
  %5761 = icmp eq i32 %5749, 0
  %5762 = zext i1 %5761 to i8
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5762, i8* %5763, align 1
  %5764 = lshr i32 %5749, 31
  %5765 = trunc i32 %5764 to i8
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5765, i8* %5766, align 1
  %5767 = lshr i32 %5749, 31
  %5768 = xor i32 %5764, %5767
  %5769 = add i32 %5768, %5767
  %5770 = icmp eq i32 %5769, 2
  %5771 = zext i1 %5770 to i8
  %5772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5771, i8* %5772, align 1
  store %struct.Memory* %loadMem_43e04a, %struct.Memory** %MEMORY
  %loadMem_43e04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 33
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5775 to i64*
  %5776 = load i64, i64* %PC.i300
  %5777 = add i64 %5776, 42
  %5778 = load i64, i64* %PC.i300
  %5779 = add i64 %5778, 6
  %5780 = load i64, i64* %PC.i300
  %5781 = add i64 %5780, 6
  store i64 %5781, i64* %PC.i300
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5783 = load i8, i8* %5782, align 1
  %5784 = icmp eq i8 %5783, 0
  %5785 = zext i1 %5784 to i8
  store i8 %5785, i8* %BRANCH_TAKEN, align 1
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5787 = select i1 %5784, i64 %5777, i64 %5779
  store i64 %5787, i64* %5786, align 8
  store %struct.Memory* %loadMem_43e04d, %struct.Memory** %MEMORY
  %loadBr_43e04d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e04d = icmp eq i8 %loadBr_43e04d, 1
  br i1 %cmpBr_43e04d, label %block_.L_43e077, label %block_43e053

block_43e053:                                     ; preds = %block_43e030
  %loadMem_43e053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 33
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5790 to i64*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 11
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RDI.i299 = bitcast %union.anon* %5793 to i64*
  %5794 = load i64, i64* %PC.i298
  %5795 = add i64 %5794, 10
  store i64 %5795, i64* %PC.i298
  store i64 ptrtoint (%G__0x57dc04_type* @G__0x57dc04 to i64), i64* %RDI.i299, align 8
  store %struct.Memory* %loadMem_43e053, %struct.Memory** %MEMORY
  %loadMem_43e05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 9
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %RSI.i296 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 15
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %RBP.i297
  %5806 = sub i64 %5805, 1640
  %5807 = load i64, i64* %PC.i295
  %5808 = add i64 %5807, 6
  store i64 %5808, i64* %PC.i295
  %5809 = inttoptr i64 %5806 to i32*
  %5810 = load i32, i32* %5809
  %5811 = zext i32 %5810 to i64
  store i64 %5811, i64* %RSI.i296, align 8
  store %struct.Memory* %loadMem_43e05d, %struct.Memory** %MEMORY
  %loadMem_43e063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 33
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5814 to i64*
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 1
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %5818 = bitcast %union.anon* %5817 to %struct.anon.2*
  %AL.i294 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5818, i32 0, i32 0
  %5819 = load i64, i64* %PC.i293
  %5820 = add i64 %5819, 2
  store i64 %5820, i64* %PC.i293
  store i8 0, i8* %AL.i294, align 1
  store %struct.Memory* %loadMem_43e063, %struct.Memory** %MEMORY
  %loadMem1_43e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5822 = getelementptr inbounds %struct.GPR, %struct.GPR* %5821, i32 0, i32 33
  %5823 = getelementptr inbounds %struct.Reg, %struct.Reg* %5822, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5823 to i64*
  %5824 = load i64, i64* %PC.i292
  %5825 = add i64 %5824, 81227
  %5826 = load i64, i64* %PC.i292
  %5827 = add i64 %5826, 5
  %5828 = load i64, i64* %PC.i292
  %5829 = add i64 %5828, 5
  store i64 %5829, i64* %PC.i292
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5831 = load i64, i64* %5830, align 8
  %5832 = add i64 %5831, -8
  %5833 = inttoptr i64 %5832 to i64*
  store i64 %5827, i64* %5833
  store i64 %5832, i64* %5830, align 8
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5825, i64* %5834, align 8
  store %struct.Memory* %loadMem1_43e065, %struct.Memory** %MEMORY
  %loadMem2_43e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e065 = load i64, i64* %3
  %call2_43e065 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43e065, %struct.Memory* %loadMem2_43e065)
  store %struct.Memory* %call2_43e065, %struct.Memory** %MEMORY
  %loadMem_43e06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 33
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5837 to i64*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 11
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %EDI.i290 = bitcast %union.anon* %5840 to i32*
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 11
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %RDI.i291 = bitcast %union.anon* %5843 to i64*
  %5844 = load i64, i64* %RDI.i291
  %5845 = load i32, i32* %EDI.i290
  %5846 = zext i32 %5845 to i64
  %5847 = load i64, i64* %PC.i289
  %5848 = add i64 %5847, 2
  store i64 %5848, i64* %PC.i289
  %5849 = xor i64 %5846, %5844
  %5850 = trunc i64 %5849 to i32
  %5851 = and i64 %5849, 4294967295
  store i64 %5851, i64* %RDI.i291, align 8
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5852, align 1
  %5853 = and i32 %5850, 255
  %5854 = call i32 @llvm.ctpop.i32(i32 %5853)
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = xor i8 %5856, 1
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5857, i8* %5858, align 1
  %5859 = icmp eq i32 %5850, 0
  %5860 = zext i1 %5859 to i8
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5860, i8* %5861, align 1
  %5862 = lshr i32 %5850, 31
  %5863 = trunc i32 %5862 to i8
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5863, i8* %5864, align 1
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5865, align 1
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5866, align 1
  store %struct.Memory* %loadMem_43e06a, %struct.Memory** %MEMORY
  %loadMem_43e06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5868 = getelementptr inbounds %struct.GPR, %struct.GPR* %5867, i32 0, i32 33
  %5869 = getelementptr inbounds %struct.Reg, %struct.Reg* %5868, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5869 to i64*
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 1
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %EAX.i287 = bitcast %union.anon* %5872 to i32*
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 15
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %RBP.i288
  %5877 = sub i64 %5876, 6600
  %5878 = load i32, i32* %EAX.i287
  %5879 = zext i32 %5878 to i64
  %5880 = load i64, i64* %PC.i286
  %5881 = add i64 %5880, 6
  store i64 %5881, i64* %PC.i286
  %5882 = inttoptr i64 %5877 to i32*
  store i32 %5878, i32* %5882
  store %struct.Memory* %loadMem_43e06c, %struct.Memory** %MEMORY
  %loadMem1_43e072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5885 to i64*
  %5886 = load i64, i64* %PC.i285
  %5887 = add i64 %5886, 224654
  %5888 = load i64, i64* %PC.i285
  %5889 = add i64 %5888, 5
  %5890 = load i64, i64* %PC.i285
  %5891 = add i64 %5890, 5
  store i64 %5891, i64* %PC.i285
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5893 = load i64, i64* %5892, align 8
  %5894 = add i64 %5893, -8
  %5895 = inttoptr i64 %5894 to i64*
  store i64 %5889, i64* %5895
  store i64 %5894, i64* %5892, align 8
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5887, i64* %5896, align 8
  store %struct.Memory* %loadMem1_43e072, %struct.Memory** %MEMORY
  %loadMem2_43e072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e072 = load i64, i64* %3
  %call2_43e072 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43e072, %struct.Memory* %loadMem2_43e072)
  store %struct.Memory* %call2_43e072, %struct.Memory** %MEMORY
  br label %block_.L_43e077

block_.L_43e077:                                  ; preds = %block_43e053, %block_43e030, %block_43e013
  %loadMem_43e077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 33
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5899 to i64*
  %5900 = load i64, i64* %PC.i284
  %5901 = add i64 %5900, 5
  %5902 = load i64, i64* %PC.i284
  %5903 = add i64 %5902, 5
  store i64 %5903, i64* %PC.i284
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5901, i64* %5904, align 8
  store %struct.Memory* %loadMem_43e077, %struct.Memory** %MEMORY
  br label %block_.L_43e07c

block_.L_43e07c:                                  ; preds = %block_.L_43e077
  %loadMem_43e07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 33
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 1
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 15
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5913 to i64*
  %5914 = load i64, i64* %RBP.i283
  %5915 = sub i64 %5914, 20
  %5916 = load i64, i64* %PC.i281
  %5917 = add i64 %5916, 3
  store i64 %5917, i64* %PC.i281
  %5918 = inttoptr i64 %5915 to i32*
  %5919 = load i32, i32* %5918
  %5920 = zext i32 %5919 to i64
  store i64 %5920, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_43e07c, %struct.Memory** %MEMORY
  %loadMem_43e07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 33
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5923 to i64*
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 1
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %5926 to i64*
  %5927 = load i64, i64* %RAX.i280
  %5928 = load i64, i64* %PC.i279
  %5929 = add i64 %5928, 3
  store i64 %5929, i64* %PC.i279
  %5930 = trunc i64 %5927 to i32
  %5931 = add i32 1, %5930
  %5932 = zext i32 %5931 to i64
  store i64 %5932, i64* %RAX.i280, align 8
  %5933 = icmp ult i32 %5931, %5930
  %5934 = icmp ult i32 %5931, 1
  %5935 = or i1 %5933, %5934
  %5936 = zext i1 %5935 to i8
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5936, i8* %5937, align 1
  %5938 = and i32 %5931, 255
  %5939 = call i32 @llvm.ctpop.i32(i32 %5938)
  %5940 = trunc i32 %5939 to i8
  %5941 = and i8 %5940, 1
  %5942 = xor i8 %5941, 1
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5942, i8* %5943, align 1
  %5944 = xor i64 1, %5927
  %5945 = trunc i64 %5944 to i32
  %5946 = xor i32 %5945, %5931
  %5947 = lshr i32 %5946, 4
  %5948 = trunc i32 %5947 to i8
  %5949 = and i8 %5948, 1
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5949, i8* %5950, align 1
  %5951 = icmp eq i32 %5931, 0
  %5952 = zext i1 %5951 to i8
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5952, i8* %5953, align 1
  %5954 = lshr i32 %5931, 31
  %5955 = trunc i32 %5954 to i8
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5955, i8* %5956, align 1
  %5957 = lshr i32 %5930, 31
  %5958 = xor i32 %5954, %5957
  %5959 = add i32 %5958, %5954
  %5960 = icmp eq i32 %5959, 2
  %5961 = zext i1 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5961, i8* %5962, align 1
  store %struct.Memory* %loadMem_43e07f, %struct.Memory** %MEMORY
  %loadMem_43e082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5965 to i64*
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5967 = getelementptr inbounds %struct.GPR, %struct.GPR* %5966, i32 0, i32 1
  %5968 = getelementptr inbounds %struct.Reg, %struct.Reg* %5967, i32 0, i32 0
  %EAX.i277 = bitcast %union.anon* %5968 to i32*
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 15
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %5971 to i64*
  %5972 = load i64, i64* %RBP.i278
  %5973 = sub i64 %5972, 20
  %5974 = load i32, i32* %EAX.i277
  %5975 = zext i32 %5974 to i64
  %5976 = load i64, i64* %PC.i276
  %5977 = add i64 %5976, 3
  store i64 %5977, i64* %PC.i276
  %5978 = inttoptr i64 %5973 to i32*
  store i32 %5974, i32* %5978
  store %struct.Memory* %loadMem_43e082, %struct.Memory** %MEMORY
  %loadMem_43e085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5981 to i64*
  %5982 = load i64, i64* %PC.i275
  %5983 = add i64 %5982, -126
  %5984 = load i64, i64* %PC.i275
  %5985 = add i64 %5984, 5
  store i64 %5985, i64* %PC.i275
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5983, i64* %5986, align 8
  store %struct.Memory* %loadMem_43e085, %struct.Memory** %MEMORY
  br label %block_.L_43e007

block_.L_43e08a:                                  ; preds = %block_.L_43e007
  %loadMem_43e08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %PC.i274
  %5991 = add i64 %5990, 5
  %5992 = load i64, i64* %PC.i274
  %5993 = add i64 %5992, 5
  store i64 %5993, i64* %PC.i274
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5991, i64* %5994, align 8
  store %struct.Memory* %loadMem_43e08a, %struct.Memory** %MEMORY
  br label %block_.L_43e08f

block_.L_43e08f:                                  ; preds = %block_.L_43e08a, %block_.L_43dfec
  %loadMem_43e08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 33
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5997 to i64*
  %5998 = load i64, i64* %PC.i273
  %5999 = add i64 %5998, 588
  %6000 = load i64, i64* %PC.i273
  %6001 = add i64 %6000, 5
  store i64 %6001, i64* %PC.i273
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5999, i64* %6002, align 8
  store %struct.Memory* %loadMem_43e08f, %struct.Memory** %MEMORY
  br label %block_.L_43e2db

block_.L_43e094:                                  ; preds = %block_.L_43dee4
  %loadMem_43e094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 33
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %6005 to i64*
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6007 = getelementptr inbounds %struct.GPR, %struct.GPR* %6006, i32 0, i32 9
  %6008 = getelementptr inbounds %struct.Reg, %struct.Reg* %6007, i32 0, i32 0
  %RSI.i271 = bitcast %union.anon* %6008 to i64*
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 15
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %6011 to i64*
  %6012 = load i64, i64* %RBP.i272
  %6013 = sub i64 %6012, 1656
  %6014 = load i64, i64* %PC.i270
  %6015 = add i64 %6014, 7
  store i64 %6015, i64* %PC.i270
  store i64 %6013, i64* %RSI.i271, align 8
  store %struct.Memory* %loadMem_43e094, %struct.Memory** %MEMORY
  %loadMem_43e09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6017 = getelementptr inbounds %struct.GPR, %struct.GPR* %6016, i32 0, i32 33
  %6018 = getelementptr inbounds %struct.Reg, %struct.Reg* %6017, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %6018 to i64*
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 1
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %EAX.i268 = bitcast %union.anon* %6021 to i32*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 1
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %6024 to i64*
  %6025 = load i64, i64* %RAX.i269
  %6026 = load i32, i32* %EAX.i268
  %6027 = zext i32 %6026 to i64
  %6028 = load i64, i64* %PC.i267
  %6029 = add i64 %6028, 2
  store i64 %6029, i64* %PC.i267
  %6030 = xor i64 %6027, %6025
  %6031 = trunc i64 %6030 to i32
  %6032 = and i64 %6030, 4294967295
  store i64 %6032, i64* %RAX.i269, align 8
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6033, align 1
  %6034 = and i32 %6031, 255
  %6035 = call i32 @llvm.ctpop.i32(i32 %6034)
  %6036 = trunc i32 %6035 to i8
  %6037 = and i8 %6036, 1
  %6038 = xor i8 %6037, 1
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6038, i8* %6039, align 1
  %6040 = icmp eq i32 %6031, 0
  %6041 = zext i1 %6040 to i8
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6041, i8* %6042, align 1
  %6043 = lshr i32 %6031, 31
  %6044 = trunc i32 %6043 to i8
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6044, i8* %6045, align 1
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6046, align 1
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6047, align 1
  store %struct.Memory* %loadMem_43e09b, %struct.Memory** %MEMORY
  %loadMem_43e09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6049 = getelementptr inbounds %struct.GPR, %struct.GPR* %6048, i32 0, i32 33
  %6050 = getelementptr inbounds %struct.Reg, %struct.Reg* %6049, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %6050 to i64*
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6052 = getelementptr inbounds %struct.GPR, %struct.GPR* %6051, i32 0, i32 1
  %6053 = getelementptr inbounds %struct.Reg, %struct.Reg* %6052, i32 0, i32 0
  %EAX.i265 = bitcast %union.anon* %6053 to i32*
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6055 = getelementptr inbounds %struct.GPR, %struct.GPR* %6054, i32 0, i32 5
  %6056 = getelementptr inbounds %struct.Reg, %struct.Reg* %6055, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %6056 to i64*
  %6057 = load i32, i32* %EAX.i265
  %6058 = zext i32 %6057 to i64
  %6059 = load i64, i64* %PC.i264
  %6060 = add i64 %6059, 2
  store i64 %6060, i64* %PC.i264
  %6061 = and i64 %6058, 4294967295
  store i64 %6061, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_43e09d, %struct.Memory** %MEMORY
  %loadMem_43e09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 33
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %6064 to i64*
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 11
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %RDI.i262 = bitcast %union.anon* %6067 to i64*
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 15
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %6070 to i64*
  %6071 = load i64, i64* %RBP.i263
  %6072 = sub i64 %6071, 1640
  %6073 = load i64, i64* %PC.i261
  %6074 = add i64 %6073, 6
  store i64 %6074, i64* %PC.i261
  %6075 = inttoptr i64 %6072 to i32*
  %6076 = load i32, i32* %6075
  %6077 = zext i32 %6076 to i64
  store i64 %6077, i64* %RDI.i262, align 8
  store %struct.Memory* %loadMem_43e09f, %struct.Memory** %MEMORY
  %loadMem_43e0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 33
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %6080 to i64*
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 5
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %6083 to i64*
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 7
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %6086 to i64*
  %6087 = load i64, i64* %RCX.i259
  %6088 = load i64, i64* %PC.i258
  %6089 = add i64 %6088, 3
  store i64 %6089, i64* %PC.i258
  store i64 %6087, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_43e0a5, %struct.Memory** %MEMORY
  %loadMem1_43e0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 33
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6092 to i64*
  %6093 = load i64, i64* %PC.i257
  %6094 = add i64 %6093, 51736
  %6095 = load i64, i64* %PC.i257
  %6096 = add i64 %6095, 5
  %6097 = load i64, i64* %PC.i257
  %6098 = add i64 %6097, 5
  store i64 %6098, i64* %PC.i257
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6100 = load i64, i64* %6099, align 8
  %6101 = add i64 %6100, -8
  %6102 = inttoptr i64 %6101 to i64*
  store i64 %6096, i64* %6102
  store i64 %6101, i64* %6099, align 8
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6094, i64* %6103, align 8
  store %struct.Memory* %loadMem1_43e0a8, %struct.Memory** %MEMORY
  %loadMem2_43e0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e0a8 = load i64, i64* %3
  %call2_43e0a8 = call %struct.Memory* @sub_44aac0.owl_defend(%struct.State* %0, i64 %loadPC_43e0a8, %struct.Memory* %loadMem2_43e0a8)
  store %struct.Memory* %call2_43e0a8, %struct.Memory** %MEMORY
  %loadMem_43e0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 33
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6106 to i64*
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 1
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %6109 to i32*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 15
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %6112 to i64*
  %6113 = load i64, i64* %RBP.i256
  %6114 = sub i64 %6113, 1652
  %6115 = load i32, i32* %EAX.i255
  %6116 = zext i32 %6115 to i64
  %6117 = load i64, i64* %PC.i254
  %6118 = add i64 %6117, 6
  store i64 %6118, i64* %PC.i254
  %6119 = inttoptr i64 %6114 to i32*
  store i32 %6115, i32* %6119
  store %struct.Memory* %loadMem_43e0ad, %struct.Memory** %MEMORY
  %loadMem_43e0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 33
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %6122 to i64*
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 15
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %6125 to i64*
  %6126 = load i64, i64* %RBP.i253
  %6127 = sub i64 %6126, 1652
  %6128 = load i64, i64* %PC.i252
  %6129 = add i64 %6128, 7
  store i64 %6129, i64* %PC.i252
  %6130 = inttoptr i64 %6127 to i32*
  %6131 = load i32, i32* %6130
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6132, align 1
  %6133 = and i32 %6131, 255
  %6134 = call i32 @llvm.ctpop.i32(i32 %6133)
  %6135 = trunc i32 %6134 to i8
  %6136 = and i8 %6135, 1
  %6137 = xor i8 %6136, 1
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6137, i8* %6138, align 1
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6139, align 1
  %6140 = icmp eq i32 %6131, 0
  %6141 = zext i1 %6140 to i8
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6141, i8* %6142, align 1
  %6143 = lshr i32 %6131, 31
  %6144 = trunc i32 %6143 to i8
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6144, i8* %6145, align 1
  %6146 = lshr i32 %6131, 31
  %6147 = xor i32 %6143, %6146
  %6148 = add i32 %6147, %6146
  %6149 = icmp eq i32 %6148, 2
  %6150 = zext i1 %6149 to i8
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6150, i8* %6151, align 1
  store %struct.Memory* %loadMem_43e0b3, %struct.Memory** %MEMORY
  %loadMem_43e0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 33
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6154 to i64*
  %6155 = load i64, i64* %PC.i251
  %6156 = add i64 %6155, 213
  %6157 = load i64, i64* %PC.i251
  %6158 = add i64 %6157, 6
  %6159 = load i64, i64* %PC.i251
  %6160 = add i64 %6159, 6
  store i64 %6160, i64* %PC.i251
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6162 = load i8, i8* %6161, align 1
  %6163 = icmp eq i8 %6162, 0
  %6164 = zext i1 %6163 to i8
  store i8 %6164, i8* %BRANCH_TAKEN, align 1
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6166 = select i1 %6163, i64 %6156, i64 %6158
  store i64 %6166, i64* %6165, align 8
  store %struct.Memory* %loadMem_43e0ba, %struct.Memory** %MEMORY
  %loadBr_43e0ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e0ba = icmp eq i8 %loadBr_43e0ba, 1
  br i1 %cmpBr_43e0ba, label %block_.L_43e18f, label %block_43e0c0

block_43e0c0:                                     ; preds = %block_.L_43e094
  %loadMem_43e0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 33
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %6169 to i64*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 15
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %6172 to i64*
  %6173 = load i64, i64* %RBP.i250
  %6174 = sub i64 %6173, 20
  %6175 = load i64, i64* %PC.i249
  %6176 = add i64 %6175, 7
  store i64 %6176, i64* %PC.i249
  %6177 = inttoptr i64 %6174 to i32*
  store i32 0, i32* %6177
  store %struct.Memory* %loadMem_43e0c0, %struct.Memory** %MEMORY
  br label %block_.L_43e0c7

block_.L_43e0c7:                                  ; preds = %block_.L_43e17c, %block_43e0c0
  %loadMem_43e0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6179 = getelementptr inbounds %struct.GPR, %struct.GPR* %6178, i32 0, i32 33
  %6180 = getelementptr inbounds %struct.Reg, %struct.Reg* %6179, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6180 to i64*
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 1
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 15
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %6186 to i64*
  %6187 = load i64, i64* %RBP.i248
  %6188 = sub i64 %6187, 20
  %6189 = load i64, i64* %PC.i246
  %6190 = add i64 %6189, 3
  store i64 %6190, i64* %PC.i246
  %6191 = inttoptr i64 %6188 to i32*
  %6192 = load i32, i32* %6191
  %6193 = zext i32 %6192 to i64
  store i64 %6193, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_43e0c7, %struct.Memory** %MEMORY
  %loadMem_43e0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 33
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6196 to i64*
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 1
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %EAX.i244 = bitcast %union.anon* %6199 to i32*
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6201 = getelementptr inbounds %struct.GPR, %struct.GPR* %6200, i32 0, i32 15
  %6202 = getelementptr inbounds %struct.Reg, %struct.Reg* %6201, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %6202 to i64*
  %6203 = load i32, i32* %EAX.i244
  %6204 = zext i32 %6203 to i64
  %6205 = load i64, i64* %RBP.i245
  %6206 = sub i64 %6205, 4
  %6207 = load i64, i64* %PC.i243
  %6208 = add i64 %6207, 3
  store i64 %6208, i64* %PC.i243
  %6209 = inttoptr i64 %6206 to i32*
  %6210 = load i32, i32* %6209
  %6211 = sub i32 %6203, %6210
  %6212 = icmp ult i32 %6203, %6210
  %6213 = zext i1 %6212 to i8
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6213, i8* %6214, align 1
  %6215 = and i32 %6211, 255
  %6216 = call i32 @llvm.ctpop.i32(i32 %6215)
  %6217 = trunc i32 %6216 to i8
  %6218 = and i8 %6217, 1
  %6219 = xor i8 %6218, 1
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6219, i8* %6220, align 1
  %6221 = xor i32 %6210, %6203
  %6222 = xor i32 %6221, %6211
  %6223 = lshr i32 %6222, 4
  %6224 = trunc i32 %6223 to i8
  %6225 = and i8 %6224, 1
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6225, i8* %6226, align 1
  %6227 = icmp eq i32 %6211, 0
  %6228 = zext i1 %6227 to i8
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6228, i8* %6229, align 1
  %6230 = lshr i32 %6211, 31
  %6231 = trunc i32 %6230 to i8
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6231, i8* %6232, align 1
  %6233 = lshr i32 %6203, 31
  %6234 = lshr i32 %6210, 31
  %6235 = xor i32 %6234, %6233
  %6236 = xor i32 %6230, %6233
  %6237 = add i32 %6236, %6235
  %6238 = icmp eq i32 %6237, 2
  %6239 = zext i1 %6238 to i8
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6239, i8* %6240, align 1
  store %struct.Memory* %loadMem_43e0ca, %struct.Memory** %MEMORY
  %loadMem_43e0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 33
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6243 to i64*
  %6244 = load i64, i64* %PC.i242
  %6245 = add i64 %6244, 189
  %6246 = load i64, i64* %PC.i242
  %6247 = add i64 %6246, 6
  %6248 = load i64, i64* %PC.i242
  %6249 = add i64 %6248, 6
  store i64 %6249, i64* %PC.i242
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6251 = load i8, i8* %6250, align 1
  %6252 = icmp ne i8 %6251, 0
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6254 = load i8, i8* %6253, align 1
  %6255 = icmp ne i8 %6254, 0
  %6256 = xor i1 %6252, %6255
  %6257 = xor i1 %6256, true
  %6258 = zext i1 %6257 to i8
  store i8 %6258, i8* %BRANCH_TAKEN, align 1
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6260 = select i1 %6256, i64 %6247, i64 %6245
  store i64 %6260, i64* %6259, align 8
  store %struct.Memory* %loadMem_43e0cd, %struct.Memory** %MEMORY
  %loadBr_43e0cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e0cd = icmp eq i8 %loadBr_43e0cd, 1
  br i1 %cmpBr_43e0cd, label %block_.L_43e18a, label %block_43e0d3

block_43e0d3:                                     ; preds = %block_.L_43e0c7
  %loadMem_43e0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6262 = getelementptr inbounds %struct.GPR, %struct.GPR* %6261, i32 0, i32 33
  %6263 = getelementptr inbounds %struct.Reg, %struct.Reg* %6262, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6263 to i64*
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 1
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %6266 to i64*
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 15
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %6269 to i64*
  %6270 = load i64, i64* %RBP.i241
  %6271 = sub i64 %6270, 16
  %6272 = load i64, i64* %PC.i239
  %6273 = add i64 %6272, 4
  store i64 %6273, i64* %PC.i239
  %6274 = inttoptr i64 %6271 to i64*
  %6275 = load i64, i64* %6274
  store i64 %6275, i64* %RAX.i240, align 8
  store %struct.Memory* %loadMem_43e0d3, %struct.Memory** %MEMORY
  %loadMem_43e0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 33
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 5
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %6281 to i64*
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 15
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %6284 to i64*
  %6285 = load i64, i64* %RBP.i238
  %6286 = sub i64 %6285, 20
  %6287 = load i64, i64* %PC.i236
  %6288 = add i64 %6287, 4
  store i64 %6288, i64* %PC.i236
  %6289 = inttoptr i64 %6286 to i32*
  %6290 = load i32, i32* %6289
  %6291 = sext i32 %6290 to i64
  store i64 %6291, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_43e0d7, %struct.Memory** %MEMORY
  %loadMem_43e0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6293 = getelementptr inbounds %struct.GPR, %struct.GPR* %6292, i32 0, i32 33
  %6294 = getelementptr inbounds %struct.Reg, %struct.Reg* %6293, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %6294 to i64*
  %6295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6296 = getelementptr inbounds %struct.GPR, %struct.GPR* %6295, i32 0, i32 1
  %6297 = getelementptr inbounds %struct.Reg, %struct.Reg* %6296, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %6297 to i64*
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6299 = getelementptr inbounds %struct.GPR, %struct.GPR* %6298, i32 0, i32 5
  %6300 = getelementptr inbounds %struct.Reg, %struct.Reg* %6299, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %6300 to i64*
  %6301 = load i64, i64* %RAX.i234
  %6302 = load i64, i64* %RCX.i235
  %6303 = mul i64 %6302, 4
  %6304 = add i64 %6303, %6301
  %6305 = load i64, i64* %PC.i233
  %6306 = add i64 %6305, 4
  store i64 %6306, i64* %PC.i233
  %6307 = inttoptr i64 %6304 to i32*
  %6308 = load i32, i32* %6307
  %6309 = sext i32 %6308 to i64
  store i64 %6309, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_43e0db, %struct.Memory** %MEMORY
  %loadMem_43e0df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 33
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6312 to i64*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 1
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %6315 to i64*
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6317 = getelementptr inbounds %struct.GPR, %struct.GPR* %6316, i32 0, i32 7
  %6318 = getelementptr inbounds %struct.Reg, %struct.Reg* %6317, i32 0, i32 0
  %RDX.i232 = bitcast %union.anon* %6318 to i64*
  %6319 = load i64, i64* %RAX.i231
  %6320 = add i64 %6319, 12099168
  %6321 = load i64, i64* %PC.i230
  %6322 = add i64 %6321, 8
  store i64 %6322, i64* %PC.i230
  %6323 = inttoptr i64 %6320 to i8*
  %6324 = load i8, i8* %6323
  %6325 = zext i8 %6324 to i64
  store i64 %6325, i64* %RDX.i232, align 8
  store %struct.Memory* %loadMem_43e0df, %struct.Memory** %MEMORY
  %loadMem_43e0e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6327 = getelementptr inbounds %struct.GPR, %struct.GPR* %6326, i32 0, i32 33
  %6328 = getelementptr inbounds %struct.Reg, %struct.Reg* %6327, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6328 to i64*
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 7
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6331 to i32*
  %6332 = load i32, i32* %EDX.i
  %6333 = zext i32 %6332 to i64
  %6334 = load i64, i64* %PC.i229
  %6335 = add i64 %6334, 3
  store i64 %6335, i64* %PC.i229
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6336, align 1
  %6337 = and i32 %6332, 255
  %6338 = call i32 @llvm.ctpop.i32(i32 %6337)
  %6339 = trunc i32 %6338 to i8
  %6340 = and i8 %6339, 1
  %6341 = xor i8 %6340, 1
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6341, i8* %6342, align 1
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6343, align 1
  %6344 = icmp eq i32 %6332, 0
  %6345 = zext i1 %6344 to i8
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6345, i8* %6346, align 1
  %6347 = lshr i32 %6332, 31
  %6348 = trunc i32 %6347 to i8
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6348, i8* %6349, align 1
  %6350 = lshr i32 %6332, 31
  %6351 = xor i32 %6347, %6350
  %6352 = add i32 %6351, %6350
  %6353 = icmp eq i32 %6352, 2
  %6354 = zext i1 %6353 to i8
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6354, i8* %6355, align 1
  store %struct.Memory* %loadMem_43e0e7, %struct.Memory** %MEMORY
  %loadMem_43e0ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6357 = getelementptr inbounds %struct.GPR, %struct.GPR* %6356, i32 0, i32 33
  %6358 = getelementptr inbounds %struct.Reg, %struct.Reg* %6357, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6358 to i64*
  %6359 = load i64, i64* %PC.i228
  %6360 = add i64 %6359, 141
  %6361 = load i64, i64* %PC.i228
  %6362 = add i64 %6361, 6
  %6363 = load i64, i64* %PC.i228
  %6364 = add i64 %6363, 6
  store i64 %6364, i64* %PC.i228
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6366 = load i8, i8* %6365, align 1
  %6367 = icmp eq i8 %6366, 0
  %6368 = zext i1 %6367 to i8
  store i8 %6368, i8* %BRANCH_TAKEN, align 1
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6370 = select i1 %6367, i64 %6360, i64 %6362
  store i64 %6370, i64* %6369, align 8
  store %struct.Memory* %loadMem_43e0ea, %struct.Memory** %MEMORY
  %loadBr_43e0ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e0ea = icmp eq i8 %loadBr_43e0ea, 1
  br i1 %cmpBr_43e0ea, label %block_.L_43e177, label %block_43e0f0

block_43e0f0:                                     ; preds = %block_43e0d3
  %loadMem_43e0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 33
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 9
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %6376 to i64*
  %6377 = load i64, i64* %PC.i226
  %6378 = add i64 %6377, 5
  store i64 %6378, i64* %PC.i226
  store i64 1, i64* %RSI.i227, align 8
  store %struct.Memory* %loadMem_43e0f0, %struct.Memory** %MEMORY
  %loadMem_43e0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6380 = getelementptr inbounds %struct.GPR, %struct.GPR* %6379, i32 0, i32 33
  %6381 = getelementptr inbounds %struct.Reg, %struct.Reg* %6380, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6381 to i64*
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6383 = getelementptr inbounds %struct.GPR, %struct.GPR* %6382, i32 0, i32 1
  %6384 = getelementptr inbounds %struct.Reg, %struct.Reg* %6383, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %6384 to i64*
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6386 = getelementptr inbounds %struct.GPR, %struct.GPR* %6385, i32 0, i32 15
  %6387 = getelementptr inbounds %struct.Reg, %struct.Reg* %6386, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %6387 to i64*
  %6388 = load i64, i64* %RBP.i225
  %6389 = sub i64 %6388, 16
  %6390 = load i64, i64* %PC.i223
  %6391 = add i64 %6390, 4
  store i64 %6391, i64* %PC.i223
  %6392 = inttoptr i64 %6389 to i64*
  %6393 = load i64, i64* %6392
  store i64 %6393, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_43e0f5, %struct.Memory** %MEMORY
  %loadMem_43e0f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6395 = getelementptr inbounds %struct.GPR, %struct.GPR* %6394, i32 0, i32 33
  %6396 = getelementptr inbounds %struct.Reg, %struct.Reg* %6395, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6396 to i64*
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6398 = getelementptr inbounds %struct.GPR, %struct.GPR* %6397, i32 0, i32 5
  %6399 = getelementptr inbounds %struct.Reg, %struct.Reg* %6398, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %6399 to i64*
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 15
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %6402 to i64*
  %6403 = load i64, i64* %RBP.i222
  %6404 = sub i64 %6403, 20
  %6405 = load i64, i64* %PC.i220
  %6406 = add i64 %6405, 4
  store i64 %6406, i64* %PC.i220
  %6407 = inttoptr i64 %6404 to i32*
  %6408 = load i32, i32* %6407
  %6409 = sext i32 %6408 to i64
  store i64 %6409, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_43e0f9, %struct.Memory** %MEMORY
  %loadMem_43e0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6411 = getelementptr inbounds %struct.GPR, %struct.GPR* %6410, i32 0, i32 33
  %6412 = getelementptr inbounds %struct.Reg, %struct.Reg* %6411, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6412 to i64*
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 1
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %6415 to i64*
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 5
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %6418 to i64*
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6420 = getelementptr inbounds %struct.GPR, %struct.GPR* %6419, i32 0, i32 11
  %6421 = getelementptr inbounds %struct.Reg, %struct.Reg* %6420, i32 0, i32 0
  %RDI.i219 = bitcast %union.anon* %6421 to i64*
  %6422 = load i64, i64* %RAX.i217
  %6423 = load i64, i64* %RCX.i218
  %6424 = mul i64 %6423, 4
  %6425 = add i64 %6424, %6422
  %6426 = load i64, i64* %PC.i216
  %6427 = add i64 %6426, 3
  store i64 %6427, i64* %PC.i216
  %6428 = inttoptr i64 %6425 to i32*
  %6429 = load i32, i32* %6428
  %6430 = zext i32 %6429 to i64
  store i64 %6430, i64* %RDI.i219, align 8
  store %struct.Memory* %loadMem_43e0fd, %struct.Memory** %MEMORY
  %loadMem1_43e100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 33
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %6433 to i64*
  %6434 = load i64, i64* %PC.i215
  %6435 = add i64 %6434, -194096
  %6436 = load i64, i64* %PC.i215
  %6437 = add i64 %6436, 5
  %6438 = load i64, i64* %PC.i215
  %6439 = add i64 %6438, 5
  store i64 %6439, i64* %PC.i215
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6441 = load i64, i64* %6440, align 8
  %6442 = add i64 %6441, -8
  %6443 = inttoptr i64 %6442 to i64*
  store i64 %6437, i64* %6443
  store i64 %6442, i64* %6440, align 8
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6435, i64* %6444, align 8
  store %struct.Memory* %loadMem1_43e100, %struct.Memory** %MEMORY
  %loadMem2_43e100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e100 = load i64, i64* %3
  %call2_43e100 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64 %loadPC_43e100, %struct.Memory* %loadMem2_43e100)
  store %struct.Memory* %call2_43e100, %struct.Memory** %MEMORY
  %loadMem_43e105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 33
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6447 to i64*
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 1
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %6450 to i32*
  %6451 = load i32, i32* %EAX.i214
  %6452 = zext i32 %6451 to i64
  %6453 = load i64, i64* %PC.i213
  %6454 = add i64 %6453, 3
  store i64 %6454, i64* %PC.i213
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6455, align 1
  %6456 = and i32 %6451, 255
  %6457 = call i32 @llvm.ctpop.i32(i32 %6456)
  %6458 = trunc i32 %6457 to i8
  %6459 = and i8 %6458, 1
  %6460 = xor i8 %6459, 1
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6460, i8* %6461, align 1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6462, align 1
  %6463 = icmp eq i32 %6451, 0
  %6464 = zext i1 %6463 to i8
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6464, i8* %6465, align 1
  %6466 = lshr i32 %6451, 31
  %6467 = trunc i32 %6466 to i8
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6467, i8* %6468, align 1
  %6469 = lshr i32 %6451, 31
  %6470 = xor i32 %6466, %6469
  %6471 = add i32 %6470, %6469
  %6472 = icmp eq i32 %6471, 2
  %6473 = zext i1 %6472 to i8
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6473, i8* %6474, align 1
  store %struct.Memory* %loadMem_43e105, %struct.Memory** %MEMORY
  %loadMem_43e108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 33
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6477 to i64*
  %6478 = load i64, i64* %PC.i212
  %6479 = add i64 %6478, 111
  %6480 = load i64, i64* %PC.i212
  %6481 = add i64 %6480, 6
  %6482 = load i64, i64* %PC.i212
  %6483 = add i64 %6482, 6
  store i64 %6483, i64* %PC.i212
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6485 = load i8, i8* %6484, align 1
  store i8 %6485, i8* %BRANCH_TAKEN, align 1
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6487 = icmp ne i8 %6485, 0
  %6488 = select i1 %6487, i64 %6479, i64 %6481
  store i64 %6488, i64* %6486, align 8
  store %struct.Memory* %loadMem_43e108, %struct.Memory** %MEMORY
  %loadBr_43e108 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e108 = icmp eq i8 %loadBr_43e108, 1
  br i1 %cmpBr_43e108, label %block_.L_43e177, label %block_43e10e

block_43e10e:                                     ; preds = %block_43e0f0
  %loadMem_43e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 33
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6491 to i64*
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 1
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %EAX.i210 = bitcast %union.anon* %6494 to i32*
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 1
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %6497 to i64*
  %6498 = load i64, i64* %RAX.i211
  %6499 = load i32, i32* %EAX.i210
  %6500 = zext i32 %6499 to i64
  %6501 = load i64, i64* %PC.i209
  %6502 = add i64 %6501, 2
  store i64 %6502, i64* %PC.i209
  %6503 = xor i64 %6500, %6498
  %6504 = trunc i64 %6503 to i32
  %6505 = and i64 %6503, 4294967295
  store i64 %6505, i64* %RAX.i211, align 8
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6506, align 1
  %6507 = and i32 %6504, 255
  %6508 = call i32 @llvm.ctpop.i32(i32 %6507)
  %6509 = trunc i32 %6508 to i8
  %6510 = and i8 %6509, 1
  %6511 = xor i8 %6510, 1
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6511, i8* %6512, align 1
  %6513 = icmp eq i32 %6504, 0
  %6514 = zext i1 %6513 to i8
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6514, i8* %6515, align 1
  %6516 = lshr i32 %6504, 31
  %6517 = trunc i32 %6516 to i8
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6517, i8* %6518, align 1
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6519, align 1
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6520, align 1
  store %struct.Memory* %loadMem_43e10e, %struct.Memory** %MEMORY
  %loadMem_43e110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 1
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %EAX.i207 = bitcast %union.anon* %6526 to i32*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 7
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %6529 to i64*
  %6530 = load i32, i32* %EAX.i207
  %6531 = zext i32 %6530 to i64
  %6532 = load i64, i64* %PC.i206
  %6533 = add i64 %6532, 2
  store i64 %6533, i64* %PC.i206
  %6534 = and i64 %6531, 4294967295
  store i64 %6534, i64* %RDX.i208, align 8
  store %struct.Memory* %loadMem_43e110, %struct.Memory** %MEMORY
  %loadMem_43e112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 33
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6537 to i64*
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 5
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %6540 to i64*
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6542 = getelementptr inbounds %struct.GPR, %struct.GPR* %6541, i32 0, i32 15
  %6543 = getelementptr inbounds %struct.Reg, %struct.Reg* %6542, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %6543 to i64*
  %6544 = load i64, i64* %RBP.i205
  %6545 = sub i64 %6544, 16
  %6546 = load i64, i64* %PC.i203
  %6547 = add i64 %6546, 4
  store i64 %6547, i64* %PC.i203
  %6548 = inttoptr i64 %6545 to i64*
  %6549 = load i64, i64* %6548
  store i64 %6549, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_43e112, %struct.Memory** %MEMORY
  %loadMem_43e116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6551 = getelementptr inbounds %struct.GPR, %struct.GPR* %6550, i32 0, i32 33
  %6552 = getelementptr inbounds %struct.Reg, %struct.Reg* %6551, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %6552 to i64*
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 9
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %RSI.i201 = bitcast %union.anon* %6555 to i64*
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 15
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %6558 to i64*
  %6559 = load i64, i64* %RBP.i202
  %6560 = sub i64 %6559, 20
  %6561 = load i64, i64* %PC.i200
  %6562 = add i64 %6561, 4
  store i64 %6562, i64* %PC.i200
  %6563 = inttoptr i64 %6560 to i32*
  %6564 = load i32, i32* %6563
  %6565 = sext i32 %6564 to i64
  store i64 %6565, i64* %RSI.i201, align 8
  store %struct.Memory* %loadMem_43e116, %struct.Memory** %MEMORY
  %loadMem_43e11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 33
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6568 to i64*
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6570 = getelementptr inbounds %struct.GPR, %struct.GPR* %6569, i32 0, i32 5
  %6571 = getelementptr inbounds %struct.Reg, %struct.Reg* %6570, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %6571 to i64*
  %6572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6573 = getelementptr inbounds %struct.GPR, %struct.GPR* %6572, i32 0, i32 9
  %6574 = getelementptr inbounds %struct.Reg, %struct.Reg* %6573, i32 0, i32 0
  %RSI.i198 = bitcast %union.anon* %6574 to i64*
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 11
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %RDI.i199 = bitcast %union.anon* %6577 to i64*
  %6578 = load i64, i64* %RCX.i197
  %6579 = load i64, i64* %RSI.i198
  %6580 = mul i64 %6579, 4
  %6581 = add i64 %6580, %6578
  %6582 = load i64, i64* %PC.i196
  %6583 = add i64 %6582, 3
  store i64 %6583, i64* %PC.i196
  %6584 = inttoptr i64 %6581 to i32*
  %6585 = load i32, i32* %6584
  %6586 = zext i32 %6585 to i64
  store i64 %6586, i64* %RDI.i199, align 8
  store %struct.Memory* %loadMem_43e11a, %struct.Memory** %MEMORY
  %loadMem_43e11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 33
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6589 to i64*
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 9
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %RSI.i194 = bitcast %union.anon* %6592 to i64*
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 15
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %6595 to i64*
  %6596 = load i64, i64* %RBP.i195
  %6597 = sub i64 %6596, 1640
  %6598 = load i64, i64* %PC.i193
  %6599 = add i64 %6598, 6
  store i64 %6599, i64* %PC.i193
  %6600 = inttoptr i64 %6597 to i32*
  %6601 = load i32, i32* %6600
  %6602 = zext i32 %6601 to i64
  store i64 %6602, i64* %RSI.i194, align 8
  store %struct.Memory* %loadMem_43e11d, %struct.Memory** %MEMORY
  %loadMem1_43e123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 33
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6605 to i64*
  %6606 = load i64, i64* %PC.i192
  %6607 = add i64 %6606, 58013
  %6608 = load i64, i64* %PC.i192
  %6609 = add i64 %6608, 5
  %6610 = load i64, i64* %PC.i192
  %6611 = add i64 %6610, 5
  store i64 %6611, i64* %PC.i192
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6613 = load i64, i64* %6612, align 8
  %6614 = add i64 %6613, -8
  %6615 = inttoptr i64 %6614 to i64*
  store i64 %6609, i64* %6615
  store i64 %6614, i64* %6612, align 8
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6607, i64* %6616, align 8
  store %struct.Memory* %loadMem1_43e123, %struct.Memory** %MEMORY
  %loadMem2_43e123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e123 = load i64, i64* %3
  %call2_43e123 = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64 %loadPC_43e123, %struct.Memory* %loadMem2_43e123)
  store %struct.Memory* %call2_43e123, %struct.Memory** %MEMORY
  %loadMem_43e128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6618 = getelementptr inbounds %struct.GPR, %struct.GPR* %6617, i32 0, i32 33
  %6619 = getelementptr inbounds %struct.Reg, %struct.Reg* %6618, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %6619 to i64*
  %6620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6621 = getelementptr inbounds %struct.GPR, %struct.GPR* %6620, i32 0, i32 1
  %6622 = getelementptr inbounds %struct.Reg, %struct.Reg* %6621, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %6622 to i32*
  %6623 = load i32, i32* %EAX.i191
  %6624 = zext i32 %6623 to i64
  %6625 = load i64, i64* %PC.i190
  %6626 = add i64 %6625, 3
  store i64 %6626, i64* %PC.i190
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6627, align 1
  %6628 = and i32 %6623, 255
  %6629 = call i32 @llvm.ctpop.i32(i32 %6628)
  %6630 = trunc i32 %6629 to i8
  %6631 = and i8 %6630, 1
  %6632 = xor i8 %6631, 1
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6632, i8* %6633, align 1
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6634, align 1
  %6635 = icmp eq i32 %6623, 0
  %6636 = zext i1 %6635 to i8
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6636, i8* %6637, align 1
  %6638 = lshr i32 %6623, 31
  %6639 = trunc i32 %6638 to i8
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6639, i8* %6640, align 1
  %6641 = lshr i32 %6623, 31
  %6642 = xor i32 %6638, %6641
  %6643 = add i32 %6642, %6641
  %6644 = icmp eq i32 %6643, 2
  %6645 = zext i1 %6644 to i8
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6645, i8* %6646, align 1
  store %struct.Memory* %loadMem_43e128, %struct.Memory** %MEMORY
  %loadMem_43e12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 33
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6649 to i64*
  %6650 = load i64, i64* %PC.i189
  %6651 = add i64 %6650, 76
  %6652 = load i64, i64* %PC.i189
  %6653 = add i64 %6652, 6
  %6654 = load i64, i64* %PC.i189
  %6655 = add i64 %6654, 6
  store i64 %6655, i64* %PC.i189
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6657 = load i8, i8* %6656, align 1
  store i8 %6657, i8* %BRANCH_TAKEN, align 1
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6659 = icmp ne i8 %6657, 0
  %6660 = select i1 %6659, i64 %6651, i64 %6653
  store i64 %6660, i64* %6658, align 8
  store %struct.Memory* %loadMem_43e12b, %struct.Memory** %MEMORY
  %loadBr_43e12b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e12b = icmp eq i8 %loadBr_43e12b, 1
  br i1 %cmpBr_43e12b, label %block_.L_43e177, label %block_43e131

block_43e131:                                     ; preds = %block_43e10e
  %loadMem_43e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 11
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RDI.i188 = bitcast %union.anon* %6666 to i64*
  %6667 = load i64, i64* %PC.i187
  %6668 = add i64 %6667, 10
  store i64 %6668, i64* %PC.i187
  store i64 ptrtoint (%G__0x57dc2f_type* @G__0x57dc2f to i64), i64* %RDI.i188, align 8
  store %struct.Memory* %loadMem_43e131, %struct.Memory** %MEMORY
  %loadMem_43e13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6670 = getelementptr inbounds %struct.GPR, %struct.GPR* %6669, i32 0, i32 33
  %6671 = getelementptr inbounds %struct.Reg, %struct.Reg* %6670, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6671 to i64*
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 9
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %RSI.i185 = bitcast %union.anon* %6674 to i64*
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 15
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %6677 to i64*
  %6678 = load i64, i64* %RBP.i186
  %6679 = sub i64 %6678, 1640
  %6680 = load i64, i64* %PC.i184
  %6681 = add i64 %6680, 6
  store i64 %6681, i64* %PC.i184
  %6682 = inttoptr i64 %6679 to i32*
  %6683 = load i32, i32* %6682
  %6684 = zext i32 %6683 to i64
  store i64 %6684, i64* %RSI.i185, align 8
  store %struct.Memory* %loadMem_43e13b, %struct.Memory** %MEMORY
  %loadMem_43e141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6686 = getelementptr inbounds %struct.GPR, %struct.GPR* %6685, i32 0, i32 33
  %6687 = getelementptr inbounds %struct.Reg, %struct.Reg* %6686, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6687 to i64*
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6689 = getelementptr inbounds %struct.GPR, %struct.GPR* %6688, i32 0, i32 1
  %6690 = getelementptr inbounds %struct.Reg, %struct.Reg* %6689, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %6690 to i64*
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 15
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %6693 to i64*
  %6694 = load i64, i64* %RBP.i183
  %6695 = sub i64 %6694, 16
  %6696 = load i64, i64* %PC.i181
  %6697 = add i64 %6696, 4
  store i64 %6697, i64* %PC.i181
  %6698 = inttoptr i64 %6695 to i64*
  %6699 = load i64, i64* %6698
  store i64 %6699, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_43e141, %struct.Memory** %MEMORY
  %loadMem_43e145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 33
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 5
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 15
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %6708 to i64*
  %6709 = load i64, i64* %RBP.i180
  %6710 = sub i64 %6709, 20
  %6711 = load i64, i64* %PC.i178
  %6712 = add i64 %6711, 4
  store i64 %6712, i64* %PC.i178
  %6713 = inttoptr i64 %6710 to i32*
  %6714 = load i32, i32* %6713
  %6715 = sext i32 %6714 to i64
  store i64 %6715, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_43e145, %struct.Memory** %MEMORY
  %loadMem_43e149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 33
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6718 to i64*
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6720 = getelementptr inbounds %struct.GPR, %struct.GPR* %6719, i32 0, i32 1
  %6721 = getelementptr inbounds %struct.Reg, %struct.Reg* %6720, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %6721 to i64*
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 5
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %6724 to i64*
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6726 = getelementptr inbounds %struct.GPR, %struct.GPR* %6725, i32 0, i32 7
  %6727 = getelementptr inbounds %struct.Reg, %struct.Reg* %6726, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %6727 to i64*
  %6728 = load i64, i64* %RAX.i175
  %6729 = load i64, i64* %RCX.i176
  %6730 = mul i64 %6729, 4
  %6731 = add i64 %6730, %6728
  %6732 = load i64, i64* %PC.i174
  %6733 = add i64 %6732, 3
  store i64 %6733, i64* %PC.i174
  %6734 = inttoptr i64 %6731 to i32*
  %6735 = load i32, i32* %6734
  %6736 = zext i32 %6735 to i64
  store i64 %6736, i64* %RDX.i177, align 8
  store %struct.Memory* %loadMem_43e149, %struct.Memory** %MEMORY
  %loadMem_43e14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 33
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6739 to i64*
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 1
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %6743 = bitcast %union.anon* %6742 to %struct.anon.2*
  %AL.i173 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6743, i32 0, i32 0
  %6744 = load i64, i64* %PC.i172
  %6745 = add i64 %6744, 2
  store i64 %6745, i64* %PC.i172
  store i8 0, i8* %AL.i173, align 1
  store %struct.Memory* %loadMem_43e14c, %struct.Memory** %MEMORY
  %loadMem1_43e14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6747 = getelementptr inbounds %struct.GPR, %struct.GPR* %6746, i32 0, i32 33
  %6748 = getelementptr inbounds %struct.Reg, %struct.Reg* %6747, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6748 to i64*
  %6749 = load i64, i64* %PC.i171
  %6750 = add i64 %6749, 80994
  %6751 = load i64, i64* %PC.i171
  %6752 = add i64 %6751, 5
  %6753 = load i64, i64* %PC.i171
  %6754 = add i64 %6753, 5
  store i64 %6754, i64* %PC.i171
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6756 = load i64, i64* %6755, align 8
  %6757 = add i64 %6756, -8
  %6758 = inttoptr i64 %6757 to i64*
  store i64 %6752, i64* %6758
  store i64 %6757, i64* %6755, align 8
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6750, i64* %6759, align 8
  store %struct.Memory* %loadMem1_43e14e, %struct.Memory** %MEMORY
  %loadMem2_43e14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e14e = load i64, i64* %3
  %call2_43e14e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43e14e, %struct.Memory* %loadMem2_43e14e)
  store %struct.Memory* %call2_43e14e, %struct.Memory** %MEMORY
  %loadMem_43e153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6761 = getelementptr inbounds %struct.GPR, %struct.GPR* %6760, i32 0, i32 33
  %6762 = getelementptr inbounds %struct.Reg, %struct.Reg* %6761, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6762 to i64*
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6764 = getelementptr inbounds %struct.GPR, %struct.GPR* %6763, i32 0, i32 11
  %6765 = getelementptr inbounds %struct.Reg, %struct.Reg* %6764, i32 0, i32 0
  %EDI.i169 = bitcast %union.anon* %6765 to i32*
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6767 = getelementptr inbounds %struct.GPR, %struct.GPR* %6766, i32 0, i32 11
  %6768 = getelementptr inbounds %struct.Reg, %struct.Reg* %6767, i32 0, i32 0
  %RDI.i170 = bitcast %union.anon* %6768 to i64*
  %6769 = load i64, i64* %RDI.i170
  %6770 = load i32, i32* %EDI.i169
  %6771 = zext i32 %6770 to i64
  %6772 = load i64, i64* %PC.i168
  %6773 = add i64 %6772, 2
  store i64 %6773, i64* %PC.i168
  %6774 = xor i64 %6771, %6769
  %6775 = trunc i64 %6774 to i32
  %6776 = and i64 %6774, 4294967295
  store i64 %6776, i64* %RDI.i170, align 8
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6777, align 1
  %6778 = and i32 %6775, 255
  %6779 = call i32 @llvm.ctpop.i32(i32 %6778)
  %6780 = trunc i32 %6779 to i8
  %6781 = and i8 %6780, 1
  %6782 = xor i8 %6781, 1
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6782, i8* %6783, align 1
  %6784 = icmp eq i32 %6775, 0
  %6785 = zext i1 %6784 to i8
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6785, i8* %6786, align 1
  %6787 = lshr i32 %6775, 31
  %6788 = trunc i32 %6787 to i8
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6788, i8* %6789, align 1
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6790, align 1
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6791, align 1
  store %struct.Memory* %loadMem_43e153, %struct.Memory** %MEMORY
  %loadMem_43e155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 33
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6794 to i64*
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6796 = getelementptr inbounds %struct.GPR, %struct.GPR* %6795, i32 0, i32 1
  %6797 = getelementptr inbounds %struct.Reg, %struct.Reg* %6796, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %6797 to i32*
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 15
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %6800 to i64*
  %6801 = load i64, i64* %RBP.i167
  %6802 = sub i64 %6801, 6604
  %6803 = load i32, i32* %EAX.i166
  %6804 = zext i32 %6803 to i64
  %6805 = load i64, i64* %PC.i165
  %6806 = add i64 %6805, 6
  store i64 %6806, i64* %PC.i165
  %6807 = inttoptr i64 %6802 to i32*
  store i32 %6803, i32* %6807
  store %struct.Memory* %loadMem_43e155, %struct.Memory** %MEMORY
  %loadMem1_43e15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 33
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6810 to i64*
  %6811 = load i64, i64* %PC.i164
  %6812 = add i64 %6811, 224421
  %6813 = load i64, i64* %PC.i164
  %6814 = add i64 %6813, 5
  %6815 = load i64, i64* %PC.i164
  %6816 = add i64 %6815, 5
  store i64 %6816, i64* %PC.i164
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6818 = load i64, i64* %6817, align 8
  %6819 = add i64 %6818, -8
  %6820 = inttoptr i64 %6819 to i64*
  store i64 %6814, i64* %6820
  store i64 %6819, i64* %6817, align 8
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6812, i64* %6821, align 8
  store %struct.Memory* %loadMem1_43e15b, %struct.Memory** %MEMORY
  %loadMem2_43e15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e15b = load i64, i64* %3
  %call2_43e15b = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43e15b, %struct.Memory* %loadMem2_43e15b)
  store %struct.Memory* %call2_43e15b, %struct.Memory** %MEMORY
  %loadMem_43e160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 33
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6824 to i64*
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 11
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %RDI.i163 = bitcast %union.anon* %6827 to i64*
  %6828 = load i64, i64* %PC.i162
  %6829 = add i64 %6828, 10
  store i64 %6829, i64* %PC.i162
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i163, align 8
  store %struct.Memory* %loadMem_43e160, %struct.Memory** %MEMORY
  %loadMem_43e16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 33
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6832 to i64*
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 1
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %6836 = bitcast %union.anon* %6835 to %struct.anon.2*
  %AL.i161 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6836, i32 0, i32 0
  %6837 = load i64, i64* %PC.i160
  %6838 = add i64 %6837, 2
  store i64 %6838, i64* %PC.i160
  store i8 0, i8* %AL.i161, align 1
  store %struct.Memory* %loadMem_43e16a, %struct.Memory** %MEMORY
  %loadMem1_43e16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6840 = getelementptr inbounds %struct.GPR, %struct.GPR* %6839, i32 0, i32 33
  %6841 = getelementptr inbounds %struct.Reg, %struct.Reg* %6840, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6841 to i64*
  %6842 = load i64, i64* %PC.i159
  %6843 = add i64 %6842, 80964
  %6844 = load i64, i64* %PC.i159
  %6845 = add i64 %6844, 5
  %6846 = load i64, i64* %PC.i159
  %6847 = add i64 %6846, 5
  store i64 %6847, i64* %PC.i159
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6849 = load i64, i64* %6848, align 8
  %6850 = add i64 %6849, -8
  %6851 = inttoptr i64 %6850 to i64*
  store i64 %6845, i64* %6851
  store i64 %6850, i64* %6848, align 8
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6843, i64* %6852, align 8
  store %struct.Memory* %loadMem1_43e16c, %struct.Memory** %MEMORY
  %loadMem2_43e16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e16c = load i64, i64* %3
  %call2_43e16c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43e16c, %struct.Memory* %loadMem2_43e16c)
  store %struct.Memory* %call2_43e16c, %struct.Memory** %MEMORY
  %loadMem_43e171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6854 = getelementptr inbounds %struct.GPR, %struct.GPR* %6853, i32 0, i32 33
  %6855 = getelementptr inbounds %struct.Reg, %struct.Reg* %6854, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6855 to i64*
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6857 = getelementptr inbounds %struct.GPR, %struct.GPR* %6856, i32 0, i32 1
  %6858 = getelementptr inbounds %struct.Reg, %struct.Reg* %6857, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %6858 to i32*
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 15
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %6861 to i64*
  %6862 = load i64, i64* %RBP.i158
  %6863 = sub i64 %6862, 6608
  %6864 = load i32, i32* %EAX.i157
  %6865 = zext i32 %6864 to i64
  %6866 = load i64, i64* %PC.i156
  %6867 = add i64 %6866, 6
  store i64 %6867, i64* %PC.i156
  %6868 = inttoptr i64 %6863 to i32*
  store i32 %6864, i32* %6868
  store %struct.Memory* %loadMem_43e171, %struct.Memory** %MEMORY
  br label %block_.L_43e177

block_.L_43e177:                                  ; preds = %block_43e131, %block_43e10e, %block_43e0f0, %block_43e0d3
  %loadMem_43e177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6870 = getelementptr inbounds %struct.GPR, %struct.GPR* %6869, i32 0, i32 33
  %6871 = getelementptr inbounds %struct.Reg, %struct.Reg* %6870, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6871 to i64*
  %6872 = load i64, i64* %PC.i155
  %6873 = add i64 %6872, 5
  %6874 = load i64, i64* %PC.i155
  %6875 = add i64 %6874, 5
  store i64 %6875, i64* %PC.i155
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6873, i64* %6876, align 8
  store %struct.Memory* %loadMem_43e177, %struct.Memory** %MEMORY
  br label %block_.L_43e17c

block_.L_43e17c:                                  ; preds = %block_.L_43e177
  %loadMem_43e17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 33
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6879 to i64*
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 1
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %6882 to i64*
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 15
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %6885 to i64*
  %6886 = load i64, i64* %RBP.i154
  %6887 = sub i64 %6886, 20
  %6888 = load i64, i64* %PC.i152
  %6889 = add i64 %6888, 3
  store i64 %6889, i64* %PC.i152
  %6890 = inttoptr i64 %6887 to i32*
  %6891 = load i32, i32* %6890
  %6892 = zext i32 %6891 to i64
  store i64 %6892, i64* %RAX.i153, align 8
  store %struct.Memory* %loadMem_43e17c, %struct.Memory** %MEMORY
  %loadMem_43e17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6894 = getelementptr inbounds %struct.GPR, %struct.GPR* %6893, i32 0, i32 33
  %6895 = getelementptr inbounds %struct.Reg, %struct.Reg* %6894, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6895 to i64*
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 1
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %6898 to i64*
  %6899 = load i64, i64* %RAX.i151
  %6900 = load i64, i64* %PC.i150
  %6901 = add i64 %6900, 3
  store i64 %6901, i64* %PC.i150
  %6902 = trunc i64 %6899 to i32
  %6903 = add i32 1, %6902
  %6904 = zext i32 %6903 to i64
  store i64 %6904, i64* %RAX.i151, align 8
  %6905 = icmp ult i32 %6903, %6902
  %6906 = icmp ult i32 %6903, 1
  %6907 = or i1 %6905, %6906
  %6908 = zext i1 %6907 to i8
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6908, i8* %6909, align 1
  %6910 = and i32 %6903, 255
  %6911 = call i32 @llvm.ctpop.i32(i32 %6910)
  %6912 = trunc i32 %6911 to i8
  %6913 = and i8 %6912, 1
  %6914 = xor i8 %6913, 1
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6914, i8* %6915, align 1
  %6916 = xor i64 1, %6899
  %6917 = trunc i64 %6916 to i32
  %6918 = xor i32 %6917, %6903
  %6919 = lshr i32 %6918, 4
  %6920 = trunc i32 %6919 to i8
  %6921 = and i8 %6920, 1
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6921, i8* %6922, align 1
  %6923 = icmp eq i32 %6903, 0
  %6924 = zext i1 %6923 to i8
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6924, i8* %6925, align 1
  %6926 = lshr i32 %6903, 31
  %6927 = trunc i32 %6926 to i8
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6927, i8* %6928, align 1
  %6929 = lshr i32 %6902, 31
  %6930 = xor i32 %6926, %6929
  %6931 = add i32 %6930, %6926
  %6932 = icmp eq i32 %6931, 2
  %6933 = zext i1 %6932 to i8
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6933, i8* %6934, align 1
  store %struct.Memory* %loadMem_43e17f, %struct.Memory** %MEMORY
  %loadMem_43e182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 33
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %6937 to i64*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 1
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %6940 to i32*
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 15
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %6943 to i64*
  %6944 = load i64, i64* %RBP.i149
  %6945 = sub i64 %6944, 20
  %6946 = load i32, i32* %EAX.i148
  %6947 = zext i32 %6946 to i64
  %6948 = load i64, i64* %PC.i147
  %6949 = add i64 %6948, 3
  store i64 %6949, i64* %PC.i147
  %6950 = inttoptr i64 %6945 to i32*
  store i32 %6946, i32* %6950
  store %struct.Memory* %loadMem_43e182, %struct.Memory** %MEMORY
  %loadMem_43e185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 33
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6953 to i64*
  %6954 = load i64, i64* %PC.i146
  %6955 = add i64 %6954, -190
  %6956 = load i64, i64* %PC.i146
  %6957 = add i64 %6956, 5
  store i64 %6957, i64* %PC.i146
  %6958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6955, i64* %6958, align 8
  store %struct.Memory* %loadMem_43e185, %struct.Memory** %MEMORY
  br label %block_.L_43e0c7

block_.L_43e18a:                                  ; preds = %block_.L_43e0c7
  %loadMem_43e18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 33
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6961 to i64*
  %6962 = load i64, i64* %PC.i145
  %6963 = add i64 %6962, 332
  %6964 = load i64, i64* %PC.i145
  %6965 = add i64 %6964, 5
  store i64 %6965, i64* %PC.i145
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6963, i64* %6966, align 8
  store %struct.Memory* %loadMem_43e18a, %struct.Memory** %MEMORY
  br label %block_.L_43e2d6

block_.L_43e18f:                                  ; preds = %block_.L_43e094
  %loadMem_43e18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 33
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6969 to i64*
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 1
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %6972 to i64*
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 15
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %6975 to i64*
  %6976 = load i64, i64* %RBP.i144
  %6977 = sub i64 %6976, 1648
  %6978 = load i64, i64* %PC.i142
  %6979 = add i64 %6978, 7
  store i64 %6979, i64* %PC.i142
  %6980 = inttoptr i64 %6977 to i32*
  %6981 = load i32, i32* %6980
  %6982 = sext i32 %6981 to i64
  store i64 %6982, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_43e18f, %struct.Memory** %MEMORY
  %loadMem_43e196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 33
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6985 to i64*
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 1
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %6988 to i64*
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 5
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %6991 to i64*
  %6992 = load i64, i64* %RAX.i140
  %6993 = add i64 %6992, 12099168
  %6994 = load i64, i64* %PC.i139
  %6995 = add i64 %6994, 8
  store i64 %6995, i64* %PC.i139
  %6996 = inttoptr i64 %6993 to i8*
  %6997 = load i8, i8* %6996
  %6998 = zext i8 %6997 to i64
  store i64 %6998, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_43e196, %struct.Memory** %MEMORY
  %loadMem_43e19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 33
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %7001 to i64*
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 5
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %ECX.i138 = bitcast %union.anon* %7004 to i32*
  %7005 = load i32, i32* %ECX.i138
  %7006 = zext i32 %7005 to i64
  %7007 = load i64, i64* %PC.i137
  %7008 = add i64 %7007, 3
  store i64 %7008, i64* %PC.i137
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7009, align 1
  %7010 = and i32 %7005, 255
  %7011 = call i32 @llvm.ctpop.i32(i32 %7010)
  %7012 = trunc i32 %7011 to i8
  %7013 = and i8 %7012, 1
  %7014 = xor i8 %7013, 1
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7014, i8* %7015, align 1
  %7016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7016, align 1
  %7017 = icmp eq i32 %7005, 0
  %7018 = zext i1 %7017 to i8
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7018, i8* %7019, align 1
  %7020 = lshr i32 %7005, 31
  %7021 = trunc i32 %7020 to i8
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7021, i8* %7022, align 1
  %7023 = lshr i32 %7005, 31
  %7024 = xor i32 %7020, %7023
  %7025 = add i32 %7024, %7023
  %7026 = icmp eq i32 %7025, 2
  %7027 = zext i1 %7026 to i8
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7027, i8* %7028, align 1
  store %struct.Memory* %loadMem_43e19e, %struct.Memory** %MEMORY
  %loadMem_43e1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7030 = getelementptr inbounds %struct.GPR, %struct.GPR* %7029, i32 0, i32 33
  %7031 = getelementptr inbounds %struct.Reg, %struct.Reg* %7030, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7031 to i64*
  %7032 = load i64, i64* %PC.i136
  %7033 = add i64 %7032, 31
  %7034 = load i64, i64* %PC.i136
  %7035 = add i64 %7034, 6
  %7036 = load i64, i64* %PC.i136
  %7037 = add i64 %7036, 6
  store i64 %7037, i64* %PC.i136
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7039 = load i8, i8* %7038, align 1
  %7040 = icmp eq i8 %7039, 0
  %7041 = zext i1 %7040 to i8
  store i8 %7041, i8* %BRANCH_TAKEN, align 1
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7043 = select i1 %7040, i64 %7033, i64 %7035
  store i64 %7043, i64* %7042, align 8
  store %struct.Memory* %loadMem_43e1a1, %struct.Memory** %MEMORY
  %loadBr_43e1a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e1a1 = icmp eq i8 %loadBr_43e1a1, 1
  br i1 %cmpBr_43e1a1, label %block_.L_43e1c0, label %block_43e1a7

block_43e1a7:                                     ; preds = %block_.L_43e18f
  %loadMem_43e1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 33
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7046 to i64*
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7048 = getelementptr inbounds %struct.GPR, %struct.GPR* %7047, i32 0, i32 9
  %7049 = getelementptr inbounds %struct.Reg, %struct.Reg* %7048, i32 0, i32 0
  %RSI.i135 = bitcast %union.anon* %7049 to i64*
  %7050 = load i64, i64* %PC.i134
  %7051 = add i64 %7050, 5
  store i64 %7051, i64* %PC.i134
  store i64 2, i64* %RSI.i135, align 8
  store %struct.Memory* %loadMem_43e1a7, %struct.Memory** %MEMORY
  %loadMem_43e1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7053 = getelementptr inbounds %struct.GPR, %struct.GPR* %7052, i32 0, i32 33
  %7054 = getelementptr inbounds %struct.Reg, %struct.Reg* %7053, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7054 to i64*
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 11
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %RDI.i132 = bitcast %union.anon* %7057 to i64*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 15
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %7060 to i64*
  %7061 = load i64, i64* %RBP.i133
  %7062 = sub i64 %7061, 1648
  %7063 = load i64, i64* %PC.i131
  %7064 = add i64 %7063, 6
  store i64 %7064, i64* %PC.i131
  %7065 = inttoptr i64 %7062 to i32*
  %7066 = load i32, i32* %7065
  %7067 = zext i32 %7066 to i64
  store i64 %7067, i64* %RDI.i132, align 8
  store %struct.Memory* %loadMem_43e1ac, %struct.Memory** %MEMORY
  %loadMem1_43e1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7069 = getelementptr inbounds %struct.GPR, %struct.GPR* %7068, i32 0, i32 33
  %7070 = getelementptr inbounds %struct.Reg, %struct.Reg* %7069, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7070 to i64*
  %7071 = load i64, i64* %PC.i130
  %7072 = add i64 %7071, -194274
  %7073 = load i64, i64* %PC.i130
  %7074 = add i64 %7073, 5
  %7075 = load i64, i64* %PC.i130
  %7076 = add i64 %7075, 5
  store i64 %7076, i64* %PC.i130
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7078 = load i64, i64* %7077, align 8
  %7079 = add i64 %7078, -8
  %7080 = inttoptr i64 %7079 to i64*
  store i64 %7074, i64* %7080
  store i64 %7079, i64* %7077, align 8
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7072, i64* %7081, align 8
  store %struct.Memory* %loadMem1_43e1b2, %struct.Memory** %MEMORY
  %loadMem2_43e1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1b2 = load i64, i64* %3
  %call2_43e1b2 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64 %loadPC_43e1b2, %struct.Memory* %loadMem2_43e1b2)
  store %struct.Memory* %call2_43e1b2, %struct.Memory** %MEMORY
  %loadMem_43e1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7083 = getelementptr inbounds %struct.GPR, %struct.GPR* %7082, i32 0, i32 33
  %7084 = getelementptr inbounds %struct.Reg, %struct.Reg* %7083, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7084 to i64*
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7086 = getelementptr inbounds %struct.GPR, %struct.GPR* %7085, i32 0, i32 1
  %7087 = getelementptr inbounds %struct.Reg, %struct.Reg* %7086, i32 0, i32 0
  %EAX.i129 = bitcast %union.anon* %7087 to i32*
  %7088 = load i32, i32* %EAX.i129
  %7089 = zext i32 %7088 to i64
  %7090 = load i64, i64* %PC.i128
  %7091 = add i64 %7090, 3
  store i64 %7091, i64* %PC.i128
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7092, align 1
  %7093 = and i32 %7088, 255
  %7094 = call i32 @llvm.ctpop.i32(i32 %7093)
  %7095 = trunc i32 %7094 to i8
  %7096 = and i8 %7095, 1
  %7097 = xor i8 %7096, 1
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7097, i8* %7098, align 1
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7099, align 1
  %7100 = icmp eq i32 %7088, 0
  %7101 = zext i1 %7100 to i8
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7101, i8* %7102, align 1
  %7103 = lshr i32 %7088, 31
  %7104 = trunc i32 %7103 to i8
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7104, i8* %7105, align 1
  %7106 = lshr i32 %7088, 31
  %7107 = xor i32 %7103, %7106
  %7108 = add i32 %7107, %7106
  %7109 = icmp eq i32 %7108, 2
  %7110 = zext i1 %7109 to i8
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7110, i8* %7111, align 1
  store %struct.Memory* %loadMem_43e1b7, %struct.Memory** %MEMORY
  %loadMem_43e1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 33
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7114 to i64*
  %7115 = load i64, i64* %PC.i127
  %7116 = add i64 %7115, 47
  %7117 = load i64, i64* %PC.i127
  %7118 = add i64 %7117, 6
  %7119 = load i64, i64* %PC.i127
  %7120 = add i64 %7119, 6
  store i64 %7120, i64* %PC.i127
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7122 = load i8, i8* %7121, align 1
  %7123 = icmp eq i8 %7122, 0
  %7124 = zext i1 %7123 to i8
  store i8 %7124, i8* %BRANCH_TAKEN, align 1
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7126 = select i1 %7123, i64 %7116, i64 %7118
  store i64 %7126, i64* %7125, align 8
  store %struct.Memory* %loadMem_43e1ba, %struct.Memory** %MEMORY
  %loadBr_43e1ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e1ba = icmp eq i8 %loadBr_43e1ba, 1
  br i1 %cmpBr_43e1ba, label %block_.L_43e1e9, label %block_.L_43e1c0

block_.L_43e1c0:                                  ; preds = %block_43e1a7, %block_.L_43e18f
  %loadMem_43e1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 33
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7129 to i64*
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 11
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %RDI.i126 = bitcast %union.anon* %7132 to i64*
  %7133 = load i64, i64* %PC.i125
  %7134 = add i64 %7133, 10
  store i64 %7134, i64* %PC.i125
  store i64 ptrtoint (%G__0x57dc4b_type* @G__0x57dc4b to i64), i64* %RDI.i126, align 8
  store %struct.Memory* %loadMem_43e1c0, %struct.Memory** %MEMORY
  %loadMem_43e1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 9
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RSI.i123 = bitcast %union.anon* %7140 to i64*
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 15
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %7143 to i64*
  %7144 = load i64, i64* %RBP.i124
  %7145 = sub i64 %7144, 1648
  %7146 = load i64, i64* %PC.i122
  %7147 = add i64 %7146, 6
  store i64 %7147, i64* %PC.i122
  %7148 = inttoptr i64 %7145 to i32*
  %7149 = load i32, i32* %7148
  %7150 = zext i32 %7149 to i64
  store i64 %7150, i64* %RSI.i123, align 8
  store %struct.Memory* %loadMem_43e1ca, %struct.Memory** %MEMORY
  %loadMem_43e1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 33
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 1
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %7157 = bitcast %union.anon* %7156 to %struct.anon.2*
  %AL.i121 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7157, i32 0, i32 0
  %7158 = load i64, i64* %PC.i120
  %7159 = add i64 %7158, 2
  store i64 %7159, i64* %PC.i120
  store i8 0, i8* %AL.i121, align 1
  store %struct.Memory* %loadMem_43e1d0, %struct.Memory** %MEMORY
  %loadMem1_43e1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7161 = getelementptr inbounds %struct.GPR, %struct.GPR* %7160, i32 0, i32 33
  %7162 = getelementptr inbounds %struct.Reg, %struct.Reg* %7161, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7162 to i64*
  %7163 = load i64, i64* %PC.i119
  %7164 = add i64 %7163, 80862
  %7165 = load i64, i64* %PC.i119
  %7166 = add i64 %7165, 5
  %7167 = load i64, i64* %PC.i119
  %7168 = add i64 %7167, 5
  store i64 %7168, i64* %PC.i119
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7170 = load i64, i64* %7169, align 8
  %7171 = add i64 %7170, -8
  %7172 = inttoptr i64 %7171 to i64*
  store i64 %7166, i64* %7172
  store i64 %7171, i64* %7169, align 8
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7164, i64* %7173, align 8
  store %struct.Memory* %loadMem1_43e1d2, %struct.Memory** %MEMORY
  %loadMem2_43e1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1d2 = load i64, i64* %3
  %call2_43e1d2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43e1d2, %struct.Memory* %loadMem2_43e1d2)
  store %struct.Memory* %call2_43e1d2, %struct.Memory** %MEMORY
  %loadMem_43e1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 33
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7176 to i64*
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 11
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %EDI.i117 = bitcast %union.anon* %7179 to i32*
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 11
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %RDI.i118 = bitcast %union.anon* %7182 to i64*
  %7183 = load i64, i64* %RDI.i118
  %7184 = load i32, i32* %EDI.i117
  %7185 = zext i32 %7184 to i64
  %7186 = load i64, i64* %PC.i116
  %7187 = add i64 %7186, 2
  store i64 %7187, i64* %PC.i116
  %7188 = xor i64 %7185, %7183
  %7189 = trunc i64 %7188 to i32
  %7190 = and i64 %7188, 4294967295
  store i64 %7190, i64* %RDI.i118, align 8
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7191, align 1
  %7192 = and i32 %7189, 255
  %7193 = call i32 @llvm.ctpop.i32(i32 %7192)
  %7194 = trunc i32 %7193 to i8
  %7195 = and i8 %7194, 1
  %7196 = xor i8 %7195, 1
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7196, i8* %7197, align 1
  %7198 = icmp eq i32 %7189, 0
  %7199 = zext i1 %7198 to i8
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7199, i8* %7200, align 1
  %7201 = lshr i32 %7189, 31
  %7202 = trunc i32 %7201 to i8
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7202, i8* %7203, align 1
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7204, align 1
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7205, align 1
  store %struct.Memory* %loadMem_43e1d7, %struct.Memory** %MEMORY
  %loadMem_43e1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7207 = getelementptr inbounds %struct.GPR, %struct.GPR* %7206, i32 0, i32 33
  %7208 = getelementptr inbounds %struct.Reg, %struct.Reg* %7207, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7208 to i64*
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7210 = getelementptr inbounds %struct.GPR, %struct.GPR* %7209, i32 0, i32 1
  %7211 = getelementptr inbounds %struct.Reg, %struct.Reg* %7210, i32 0, i32 0
  %EAX.i114 = bitcast %union.anon* %7211 to i32*
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 15
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %7214 to i64*
  %7215 = load i64, i64* %RBP.i115
  %7216 = sub i64 %7215, 6612
  %7217 = load i32, i32* %EAX.i114
  %7218 = zext i32 %7217 to i64
  %7219 = load i64, i64* %PC.i113
  %7220 = add i64 %7219, 6
  store i64 %7220, i64* %PC.i113
  %7221 = inttoptr i64 %7216 to i32*
  store i32 %7217, i32* %7221
  store %struct.Memory* %loadMem_43e1d9, %struct.Memory** %MEMORY
  %loadMem1_43e1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7223 = getelementptr inbounds %struct.GPR, %struct.GPR* %7222, i32 0, i32 33
  %7224 = getelementptr inbounds %struct.Reg, %struct.Reg* %7223, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7224 to i64*
  %7225 = load i64, i64* %PC.i112
  %7226 = add i64 %7225, 224289
  %7227 = load i64, i64* %PC.i112
  %7228 = add i64 %7227, 5
  %7229 = load i64, i64* %PC.i112
  %7230 = add i64 %7229, 5
  store i64 %7230, i64* %PC.i112
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7232 = load i64, i64* %7231, align 8
  %7233 = add i64 %7232, -8
  %7234 = inttoptr i64 %7233 to i64*
  store i64 %7228, i64* %7234
  store i64 %7233, i64* %7231, align 8
  %7235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7226, i64* %7235, align 8
  store %struct.Memory* %loadMem1_43e1df, %struct.Memory** %MEMORY
  %loadMem2_43e1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1df = load i64, i64* %3
  %call2_43e1df = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43e1df, %struct.Memory* %loadMem2_43e1df)
  store %struct.Memory* %call2_43e1df, %struct.Memory** %MEMORY
  %loadMem_43e1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7237 = getelementptr inbounds %struct.GPR, %struct.GPR* %7236, i32 0, i32 33
  %7238 = getelementptr inbounds %struct.Reg, %struct.Reg* %7237, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7238 to i64*
  %7239 = load i64, i64* %PC.i111
  %7240 = add i64 %7239, 76
  %7241 = load i64, i64* %PC.i111
  %7242 = add i64 %7241, 5
  store i64 %7242, i64* %PC.i111
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7240, i64* %7243, align 8
  store %struct.Memory* %loadMem_43e1e4, %struct.Memory** %MEMORY
  br label %block_.L_43e230

block_.L_43e1e9:                                  ; preds = %block_43e1a7
  %loadMem_43e1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7245 = getelementptr inbounds %struct.GPR, %struct.GPR* %7244, i32 0, i32 33
  %7246 = getelementptr inbounds %struct.Reg, %struct.Reg* %7245, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7246 to i64*
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7248 = getelementptr inbounds %struct.GPR, %struct.GPR* %7247, i32 0, i32 1
  %7249 = getelementptr inbounds %struct.Reg, %struct.Reg* %7248, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %7249 to i32*
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7251 = getelementptr inbounds %struct.GPR, %struct.GPR* %7250, i32 0, i32 1
  %7252 = getelementptr inbounds %struct.Reg, %struct.Reg* %7251, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %7252 to i64*
  %7253 = load i64, i64* %RAX.i110
  %7254 = load i32, i32* %EAX.i109
  %7255 = zext i32 %7254 to i64
  %7256 = load i64, i64* %PC.i108
  %7257 = add i64 %7256, 2
  store i64 %7257, i64* %PC.i108
  %7258 = xor i64 %7255, %7253
  %7259 = trunc i64 %7258 to i32
  %7260 = and i64 %7258, 4294967295
  store i64 %7260, i64* %RAX.i110, align 8
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7261, align 1
  %7262 = and i32 %7259, 255
  %7263 = call i32 @llvm.ctpop.i32(i32 %7262)
  %7264 = trunc i32 %7263 to i8
  %7265 = and i8 %7264, 1
  %7266 = xor i8 %7265, 1
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7266, i8* %7267, align 1
  %7268 = icmp eq i32 %7259, 0
  %7269 = zext i1 %7268 to i8
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7269, i8* %7270, align 1
  %7271 = lshr i32 %7259, 31
  %7272 = trunc i32 %7271 to i8
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7272, i8* %7273, align 1
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7274, align 1
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7275, align 1
  store %struct.Memory* %loadMem_43e1e9, %struct.Memory** %MEMORY
  %loadMem_43e1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7277 = getelementptr inbounds %struct.GPR, %struct.GPR* %7276, i32 0, i32 33
  %7278 = getelementptr inbounds %struct.Reg, %struct.Reg* %7277, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7278 to i64*
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7280 = getelementptr inbounds %struct.GPR, %struct.GPR* %7279, i32 0, i32 1
  %7281 = getelementptr inbounds %struct.Reg, %struct.Reg* %7280, i32 0, i32 0
  %EAX.i106 = bitcast %union.anon* %7281 to i32*
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 7
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %7284 to i64*
  %7285 = load i32, i32* %EAX.i106
  %7286 = zext i32 %7285 to i64
  %7287 = load i64, i64* %PC.i105
  %7288 = add i64 %7287, 2
  store i64 %7288, i64* %PC.i105
  %7289 = and i64 %7286, 4294967295
  store i64 %7289, i64* %RDX.i107, align 8
  store %struct.Memory* %loadMem_43e1eb, %struct.Memory** %MEMORY
  %loadMem_43e1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7291 = getelementptr inbounds %struct.GPR, %struct.GPR* %7290, i32 0, i32 33
  %7292 = getelementptr inbounds %struct.Reg, %struct.Reg* %7291, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %7292 to i64*
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7294 = getelementptr inbounds %struct.GPR, %struct.GPR* %7293, i32 0, i32 11
  %7295 = getelementptr inbounds %struct.Reg, %struct.Reg* %7294, i32 0, i32 0
  %RDI.i103 = bitcast %union.anon* %7295 to i64*
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 15
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %7298 to i64*
  %7299 = load i64, i64* %RBP.i104
  %7300 = sub i64 %7299, 1648
  %7301 = load i64, i64* %PC.i102
  %7302 = add i64 %7301, 6
  store i64 %7302, i64* %PC.i102
  %7303 = inttoptr i64 %7300 to i32*
  %7304 = load i32, i32* %7303
  %7305 = zext i32 %7304 to i64
  store i64 %7305, i64* %RDI.i103, align 8
  store %struct.Memory* %loadMem_43e1ed, %struct.Memory** %MEMORY
  %loadMem_43e1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7307 = getelementptr inbounds %struct.GPR, %struct.GPR* %7306, i32 0, i32 33
  %7308 = getelementptr inbounds %struct.Reg, %struct.Reg* %7307, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %7308 to i64*
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7310 = getelementptr inbounds %struct.GPR, %struct.GPR* %7309, i32 0, i32 9
  %7311 = getelementptr inbounds %struct.Reg, %struct.Reg* %7310, i32 0, i32 0
  %RSI.i100 = bitcast %union.anon* %7311 to i64*
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 15
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %7314 to i64*
  %7315 = load i64, i64* %RBP.i101
  %7316 = sub i64 %7315, 1640
  %7317 = load i64, i64* %PC.i99
  %7318 = add i64 %7317, 6
  store i64 %7318, i64* %PC.i99
  %7319 = inttoptr i64 %7316 to i32*
  %7320 = load i32, i32* %7319
  %7321 = zext i32 %7320 to i64
  store i64 %7321, i64* %RSI.i100, align 8
  store %struct.Memory* %loadMem_43e1f3, %struct.Memory** %MEMORY
  %loadMem1_43e1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7323 = getelementptr inbounds %struct.GPR, %struct.GPR* %7322, i32 0, i32 33
  %7324 = getelementptr inbounds %struct.Reg, %struct.Reg* %7323, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7324 to i64*
  %7325 = load i64, i64* %PC.i98
  %7326 = add i64 %7325, 59703
  %7327 = load i64, i64* %PC.i98
  %7328 = add i64 %7327, 5
  %7329 = load i64, i64* %PC.i98
  %7330 = add i64 %7329, 5
  store i64 %7330, i64* %PC.i98
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7332 = load i64, i64* %7331, align 8
  %7333 = add i64 %7332, -8
  %7334 = inttoptr i64 %7333 to i64*
  store i64 %7328, i64* %7334
  store i64 %7333, i64* %7331, align 8
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7326, i64* %7335, align 8
  store %struct.Memory* %loadMem1_43e1f9, %struct.Memory** %MEMORY
  %loadMem2_43e1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e1f9 = load i64, i64* %3
  %call2_43e1f9 = call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* %0, i64 %loadPC_43e1f9, %struct.Memory* %loadMem2_43e1f9)
  store %struct.Memory* %call2_43e1f9, %struct.Memory** %MEMORY
  %loadMem_43e1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 33
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7338 to i64*
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7340 = getelementptr inbounds %struct.GPR, %struct.GPR* %7339, i32 0, i32 1
  %7341 = getelementptr inbounds %struct.Reg, %struct.Reg* %7340, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %7341 to i32*
  %7342 = load i32, i32* %EAX.i97
  %7343 = zext i32 %7342 to i64
  %7344 = load i64, i64* %PC.i96
  %7345 = add i64 %7344, 3
  store i64 %7345, i64* %PC.i96
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7346, align 1
  %7347 = and i32 %7342, 255
  %7348 = call i32 @llvm.ctpop.i32(i32 %7347)
  %7349 = trunc i32 %7348 to i8
  %7350 = and i8 %7349, 1
  %7351 = xor i8 %7350, 1
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7351, i8* %7352, align 1
  %7353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7353, align 1
  %7354 = icmp eq i32 %7342, 0
  %7355 = zext i1 %7354 to i8
  %7356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7355, i8* %7356, align 1
  %7357 = lshr i32 %7342, 31
  %7358 = trunc i32 %7357 to i8
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7358, i8* %7359, align 1
  %7360 = lshr i32 %7342, 31
  %7361 = xor i32 %7357, %7360
  %7362 = add i32 %7361, %7360
  %7363 = icmp eq i32 %7362, 2
  %7364 = zext i1 %7363 to i8
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7364, i8* %7365, align 1
  store %struct.Memory* %loadMem_43e1fe, %struct.Memory** %MEMORY
  %loadMem_43e201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7367 = getelementptr inbounds %struct.GPR, %struct.GPR* %7366, i32 0, i32 33
  %7368 = getelementptr inbounds %struct.Reg, %struct.Reg* %7367, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7368 to i64*
  %7369 = load i64, i64* %PC.i95
  %7370 = add i64 %7369, 42
  %7371 = load i64, i64* %PC.i95
  %7372 = add i64 %7371, 6
  %7373 = load i64, i64* %PC.i95
  %7374 = add i64 %7373, 6
  store i64 %7374, i64* %PC.i95
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7376 = load i8, i8* %7375, align 1
  %7377 = icmp eq i8 %7376, 0
  %7378 = zext i1 %7377 to i8
  store i8 %7378, i8* %BRANCH_TAKEN, align 1
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7380 = select i1 %7377, i64 %7370, i64 %7372
  store i64 %7380, i64* %7379, align 8
  store %struct.Memory* %loadMem_43e201, %struct.Memory** %MEMORY
  %loadBr_43e201 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e201 = icmp eq i8 %loadBr_43e201, 1
  br i1 %cmpBr_43e201, label %block_.L_43e22b, label %block_43e207

block_43e207:                                     ; preds = %block_.L_43e1e9
  %loadMem_43e207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7382 = getelementptr inbounds %struct.GPR, %struct.GPR* %7381, i32 0, i32 33
  %7383 = getelementptr inbounds %struct.Reg, %struct.Reg* %7382, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7383 to i64*
  %7384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7385 = getelementptr inbounds %struct.GPR, %struct.GPR* %7384, i32 0, i32 11
  %7386 = getelementptr inbounds %struct.Reg, %struct.Reg* %7385, i32 0, i32 0
  %RDI.i94 = bitcast %union.anon* %7386 to i64*
  %7387 = load i64, i64* %PC.i93
  %7388 = add i64 %7387, 10
  store i64 %7388, i64* %PC.i93
  store i64 ptrtoint (%G__0x57dc62_type* @G__0x57dc62 to i64), i64* %RDI.i94, align 8
  store %struct.Memory* %loadMem_43e207, %struct.Memory** %MEMORY
  %loadMem_43e211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 33
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7391 to i64*
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 9
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %RSI.i91 = bitcast %union.anon* %7394 to i64*
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 15
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %7397 to i64*
  %7398 = load i64, i64* %RBP.i92
  %7399 = sub i64 %7398, 1648
  %7400 = load i64, i64* %PC.i90
  %7401 = add i64 %7400, 6
  store i64 %7401, i64* %PC.i90
  %7402 = inttoptr i64 %7399 to i32*
  %7403 = load i32, i32* %7402
  %7404 = zext i32 %7403 to i64
  store i64 %7404, i64* %RSI.i91, align 8
  store %struct.Memory* %loadMem_43e211, %struct.Memory** %MEMORY
  %loadMem_43e217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 33
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %7407 to i64*
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 1
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %7411 = bitcast %union.anon* %7410 to %struct.anon.2*
  %AL.i89 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7411, i32 0, i32 0
  %7412 = load i64, i64* %PC.i88
  %7413 = add i64 %7412, 2
  store i64 %7413, i64* %PC.i88
  store i8 0, i8* %AL.i89, align 1
  store %struct.Memory* %loadMem_43e217, %struct.Memory** %MEMORY
  %loadMem1_43e219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 33
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7416 to i64*
  %7417 = load i64, i64* %PC.i87
  %7418 = add i64 %7417, 80791
  %7419 = load i64, i64* %PC.i87
  %7420 = add i64 %7419, 5
  %7421 = load i64, i64* %PC.i87
  %7422 = add i64 %7421, 5
  store i64 %7422, i64* %PC.i87
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7424 = load i64, i64* %7423, align 8
  %7425 = add i64 %7424, -8
  %7426 = inttoptr i64 %7425 to i64*
  store i64 %7420, i64* %7426
  store i64 %7425, i64* %7423, align 8
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7418, i64* %7427, align 8
  store %struct.Memory* %loadMem1_43e219, %struct.Memory** %MEMORY
  %loadMem2_43e219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e219 = load i64, i64* %3
  %call2_43e219 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43e219, %struct.Memory* %loadMem2_43e219)
  store %struct.Memory* %call2_43e219, %struct.Memory** %MEMORY
  %loadMem_43e21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 33
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7430 to i64*
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 11
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %EDI.i85 = bitcast %union.anon* %7433 to i32*
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7435 = getelementptr inbounds %struct.GPR, %struct.GPR* %7434, i32 0, i32 11
  %7436 = getelementptr inbounds %struct.Reg, %struct.Reg* %7435, i32 0, i32 0
  %RDI.i86 = bitcast %union.anon* %7436 to i64*
  %7437 = load i64, i64* %RDI.i86
  %7438 = load i32, i32* %EDI.i85
  %7439 = zext i32 %7438 to i64
  %7440 = load i64, i64* %PC.i84
  %7441 = add i64 %7440, 2
  store i64 %7441, i64* %PC.i84
  %7442 = xor i64 %7439, %7437
  %7443 = trunc i64 %7442 to i32
  %7444 = and i64 %7442, 4294967295
  store i64 %7444, i64* %RDI.i86, align 8
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7445, align 1
  %7446 = and i32 %7443, 255
  %7447 = call i32 @llvm.ctpop.i32(i32 %7446)
  %7448 = trunc i32 %7447 to i8
  %7449 = and i8 %7448, 1
  %7450 = xor i8 %7449, 1
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7450, i8* %7451, align 1
  %7452 = icmp eq i32 %7443, 0
  %7453 = zext i1 %7452 to i8
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7453, i8* %7454, align 1
  %7455 = lshr i32 %7443, 31
  %7456 = trunc i32 %7455 to i8
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7456, i8* %7457, align 1
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7458, align 1
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7459, align 1
  store %struct.Memory* %loadMem_43e21e, %struct.Memory** %MEMORY
  %loadMem_43e220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7461 = getelementptr inbounds %struct.GPR, %struct.GPR* %7460, i32 0, i32 33
  %7462 = getelementptr inbounds %struct.Reg, %struct.Reg* %7461, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7462 to i64*
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7464 = getelementptr inbounds %struct.GPR, %struct.GPR* %7463, i32 0, i32 1
  %7465 = getelementptr inbounds %struct.Reg, %struct.Reg* %7464, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %7465 to i32*
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7467 = getelementptr inbounds %struct.GPR, %struct.GPR* %7466, i32 0, i32 15
  %7468 = getelementptr inbounds %struct.Reg, %struct.Reg* %7467, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %7468 to i64*
  %7469 = load i64, i64* %RBP.i83
  %7470 = sub i64 %7469, 6616
  %7471 = load i32, i32* %EAX.i82
  %7472 = zext i32 %7471 to i64
  %7473 = load i64, i64* %PC.i81
  %7474 = add i64 %7473, 6
  store i64 %7474, i64* %PC.i81
  %7475 = inttoptr i64 %7470 to i32*
  store i32 %7471, i32* %7475
  store %struct.Memory* %loadMem_43e220, %struct.Memory** %MEMORY
  %loadMem1_43e226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7477 = getelementptr inbounds %struct.GPR, %struct.GPR* %7476, i32 0, i32 33
  %7478 = getelementptr inbounds %struct.Reg, %struct.Reg* %7477, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7478 to i64*
  %7479 = load i64, i64* %PC.i80
  %7480 = add i64 %7479, 224218
  %7481 = load i64, i64* %PC.i80
  %7482 = add i64 %7481, 5
  %7483 = load i64, i64* %PC.i80
  %7484 = add i64 %7483, 5
  store i64 %7484, i64* %PC.i80
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7486 = load i64, i64* %7485, align 8
  %7487 = add i64 %7486, -8
  %7488 = inttoptr i64 %7487 to i64*
  store i64 %7482, i64* %7488
  store i64 %7487, i64* %7485, align 8
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7480, i64* %7489, align 8
  store %struct.Memory* %loadMem1_43e226, %struct.Memory** %MEMORY
  %loadMem2_43e226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e226 = load i64, i64* %3
  %call2_43e226 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43e226, %struct.Memory* %loadMem2_43e226)
  store %struct.Memory* %call2_43e226, %struct.Memory** %MEMORY
  br label %block_.L_43e22b

block_.L_43e22b:                                  ; preds = %block_43e207, %block_.L_43e1e9
  %loadMem_43e22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 33
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7492 to i64*
  %7493 = load i64, i64* %PC.i79
  %7494 = add i64 %7493, 5
  %7495 = load i64, i64* %PC.i79
  %7496 = add i64 %7495, 5
  store i64 %7496, i64* %PC.i79
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7494, i64* %7497, align 8
  store %struct.Memory* %loadMem_43e22b, %struct.Memory** %MEMORY
  br label %block_.L_43e230

block_.L_43e230:                                  ; preds = %block_.L_43e22b, %block_.L_43e1c0
  %loadMem_43e230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7499 = getelementptr inbounds %struct.GPR, %struct.GPR* %7498, i32 0, i32 33
  %7500 = getelementptr inbounds %struct.Reg, %struct.Reg* %7499, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7500 to i64*
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7502 = getelementptr inbounds %struct.GPR, %struct.GPR* %7501, i32 0, i32 1
  %7503 = getelementptr inbounds %struct.Reg, %struct.Reg* %7502, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %7503 to i64*
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 15
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %7506 to i64*
  %7507 = load i64, i64* %RBP.i78
  %7508 = sub i64 %7507, 1656
  %7509 = load i64, i64* %PC.i76
  %7510 = add i64 %7509, 7
  store i64 %7510, i64* %PC.i76
  %7511 = inttoptr i64 %7508 to i32*
  %7512 = load i32, i32* %7511
  %7513 = sext i32 %7512 to i64
  store i64 %7513, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_43e230, %struct.Memory** %MEMORY
  %loadMem_43e237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7515 = getelementptr inbounds %struct.GPR, %struct.GPR* %7514, i32 0, i32 33
  %7516 = getelementptr inbounds %struct.Reg, %struct.Reg* %7515, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7516 to i64*
  %7517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7518 = getelementptr inbounds %struct.GPR, %struct.GPR* %7517, i32 0, i32 1
  %7519 = getelementptr inbounds %struct.Reg, %struct.Reg* %7518, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %7519 to i64*
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 5
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7522 to i64*
  %7523 = load i64, i64* %RAX.i75
  %7524 = add i64 %7523, 12099168
  %7525 = load i64, i64* %PC.i74
  %7526 = add i64 %7525, 8
  store i64 %7526, i64* %PC.i74
  %7527 = inttoptr i64 %7524 to i8*
  %7528 = load i8, i8* %7527
  %7529 = zext i8 %7528 to i64
  store i64 %7529, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_43e237, %struct.Memory** %MEMORY
  %loadMem_43e23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7531 = getelementptr inbounds %struct.GPR, %struct.GPR* %7530, i32 0, i32 33
  %7532 = getelementptr inbounds %struct.Reg, %struct.Reg* %7531, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7532 to i64*
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7534 = getelementptr inbounds %struct.GPR, %struct.GPR* %7533, i32 0, i32 5
  %7535 = getelementptr inbounds %struct.Reg, %struct.Reg* %7534, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7535 to i32*
  %7536 = load i32, i32* %ECX.i
  %7537 = zext i32 %7536 to i64
  %7538 = load i64, i64* %PC.i73
  %7539 = add i64 %7538, 3
  store i64 %7539, i64* %PC.i73
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7540, align 1
  %7541 = and i32 %7536, 255
  %7542 = call i32 @llvm.ctpop.i32(i32 %7541)
  %7543 = trunc i32 %7542 to i8
  %7544 = and i8 %7543, 1
  %7545 = xor i8 %7544, 1
  %7546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7545, i8* %7546, align 1
  %7547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7547, align 1
  %7548 = icmp eq i32 %7536, 0
  %7549 = zext i1 %7548 to i8
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7549, i8* %7550, align 1
  %7551 = lshr i32 %7536, 31
  %7552 = trunc i32 %7551 to i8
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7552, i8* %7553, align 1
  %7554 = lshr i32 %7536, 31
  %7555 = xor i32 %7551, %7554
  %7556 = add i32 %7555, %7554
  %7557 = icmp eq i32 %7556, 2
  %7558 = zext i1 %7557 to i8
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7558, i8* %7559, align 1
  store %struct.Memory* %loadMem_43e23f, %struct.Memory** %MEMORY
  %loadMem_43e242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7561 = getelementptr inbounds %struct.GPR, %struct.GPR* %7560, i32 0, i32 33
  %7562 = getelementptr inbounds %struct.Reg, %struct.Reg* %7561, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7562 to i64*
  %7563 = load i64, i64* %PC.i72
  %7564 = add i64 %7563, 31
  %7565 = load i64, i64* %PC.i72
  %7566 = add i64 %7565, 6
  %7567 = load i64, i64* %PC.i72
  %7568 = add i64 %7567, 6
  store i64 %7568, i64* %PC.i72
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7570 = load i8, i8* %7569, align 1
  %7571 = icmp eq i8 %7570, 0
  %7572 = zext i1 %7571 to i8
  store i8 %7572, i8* %BRANCH_TAKEN, align 1
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7574 = select i1 %7571, i64 %7564, i64 %7566
  store i64 %7574, i64* %7573, align 8
  store %struct.Memory* %loadMem_43e242, %struct.Memory** %MEMORY
  %loadBr_43e242 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e242 = icmp eq i8 %loadBr_43e242, 1
  br i1 %cmpBr_43e242, label %block_.L_43e261, label %block_43e248

block_43e248:                                     ; preds = %block_.L_43e230
  %loadMem_43e248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7576 = getelementptr inbounds %struct.GPR, %struct.GPR* %7575, i32 0, i32 33
  %7577 = getelementptr inbounds %struct.Reg, %struct.Reg* %7576, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7577 to i64*
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7579 = getelementptr inbounds %struct.GPR, %struct.GPR* %7578, i32 0, i32 9
  %7580 = getelementptr inbounds %struct.Reg, %struct.Reg* %7579, i32 0, i32 0
  %RSI.i71 = bitcast %union.anon* %7580 to i64*
  %7581 = load i64, i64* %PC.i70
  %7582 = add i64 %7581, 5
  store i64 %7582, i64* %PC.i70
  store i64 1, i64* %RSI.i71, align 8
  store %struct.Memory* %loadMem_43e248, %struct.Memory** %MEMORY
  %loadMem_43e24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 33
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7585 to i64*
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 11
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %RDI.i68 = bitcast %union.anon* %7588 to i64*
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 15
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %7591 to i64*
  %7592 = load i64, i64* %RBP.i69
  %7593 = sub i64 %7592, 1656
  %7594 = load i64, i64* %PC.i67
  %7595 = add i64 %7594, 6
  store i64 %7595, i64* %PC.i67
  %7596 = inttoptr i64 %7593 to i32*
  %7597 = load i32, i32* %7596
  %7598 = zext i32 %7597 to i64
  store i64 %7598, i64* %RDI.i68, align 8
  store %struct.Memory* %loadMem_43e24d, %struct.Memory** %MEMORY
  %loadMem1_43e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7600 = getelementptr inbounds %struct.GPR, %struct.GPR* %7599, i32 0, i32 33
  %7601 = getelementptr inbounds %struct.Reg, %struct.Reg* %7600, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7601 to i64*
  %7602 = load i64, i64* %PC.i66
  %7603 = add i64 %7602, -194435
  %7604 = load i64, i64* %PC.i66
  %7605 = add i64 %7604, 5
  %7606 = load i64, i64* %PC.i66
  %7607 = add i64 %7606, 5
  store i64 %7607, i64* %PC.i66
  %7608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7609 = load i64, i64* %7608, align 8
  %7610 = add i64 %7609, -8
  %7611 = inttoptr i64 %7610 to i64*
  store i64 %7605, i64* %7611
  store i64 %7610, i64* %7608, align 8
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7603, i64* %7612, align 8
  store %struct.Memory* %loadMem1_43e253, %struct.Memory** %MEMORY
  %loadMem2_43e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e253 = load i64, i64* %3
  %call2_43e253 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64 %loadPC_43e253, %struct.Memory* %loadMem2_43e253)
  store %struct.Memory* %call2_43e253, %struct.Memory** %MEMORY
  %loadMem_43e258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 33
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7615 to i64*
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7617 = getelementptr inbounds %struct.GPR, %struct.GPR* %7616, i32 0, i32 1
  %7618 = getelementptr inbounds %struct.Reg, %struct.Reg* %7617, i32 0, i32 0
  %EAX.i65 = bitcast %union.anon* %7618 to i32*
  %7619 = load i32, i32* %EAX.i65
  %7620 = zext i32 %7619 to i64
  %7621 = load i64, i64* %PC.i64
  %7622 = add i64 %7621, 3
  store i64 %7622, i64* %PC.i64
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7623, align 1
  %7624 = and i32 %7619, 255
  %7625 = call i32 @llvm.ctpop.i32(i32 %7624)
  %7626 = trunc i32 %7625 to i8
  %7627 = and i8 %7626, 1
  %7628 = xor i8 %7627, 1
  %7629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7628, i8* %7629, align 1
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7630, align 1
  %7631 = icmp eq i32 %7619, 0
  %7632 = zext i1 %7631 to i8
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7632, i8* %7633, align 1
  %7634 = lshr i32 %7619, 31
  %7635 = trunc i32 %7634 to i8
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7635, i8* %7636, align 1
  %7637 = lshr i32 %7619, 31
  %7638 = xor i32 %7634, %7637
  %7639 = add i32 %7638, %7637
  %7640 = icmp eq i32 %7639, 2
  %7641 = zext i1 %7640 to i8
  %7642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7641, i8* %7642, align 1
  store %struct.Memory* %loadMem_43e258, %struct.Memory** %MEMORY
  %loadMem_43e25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7644 = getelementptr inbounds %struct.GPR, %struct.GPR* %7643, i32 0, i32 33
  %7645 = getelementptr inbounds %struct.Reg, %struct.Reg* %7644, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7645 to i64*
  %7646 = load i64, i64* %PC.i63
  %7647 = add i64 %7646, 47
  %7648 = load i64, i64* %PC.i63
  %7649 = add i64 %7648, 6
  %7650 = load i64, i64* %PC.i63
  %7651 = add i64 %7650, 6
  store i64 %7651, i64* %PC.i63
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7653 = load i8, i8* %7652, align 1
  %7654 = icmp eq i8 %7653, 0
  %7655 = zext i1 %7654 to i8
  store i8 %7655, i8* %BRANCH_TAKEN, align 1
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7657 = select i1 %7654, i64 %7647, i64 %7649
  store i64 %7657, i64* %7656, align 8
  store %struct.Memory* %loadMem_43e25b, %struct.Memory** %MEMORY
  %loadBr_43e25b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e25b = icmp eq i8 %loadBr_43e25b, 1
  br i1 %cmpBr_43e25b, label %block_.L_43e28a, label %block_.L_43e261

block_.L_43e261:                                  ; preds = %block_43e248, %block_.L_43e230
  %loadMem_43e261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7659 = getelementptr inbounds %struct.GPR, %struct.GPR* %7658, i32 0, i32 33
  %7660 = getelementptr inbounds %struct.Reg, %struct.Reg* %7659, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7660 to i64*
  %7661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7662 = getelementptr inbounds %struct.GPR, %struct.GPR* %7661, i32 0, i32 11
  %7663 = getelementptr inbounds %struct.Reg, %struct.Reg* %7662, i32 0, i32 0
  %RDI.i62 = bitcast %union.anon* %7663 to i64*
  %7664 = load i64, i64* %PC.i61
  %7665 = add i64 %7664, 10
  store i64 %7665, i64* %PC.i61
  store i64 ptrtoint (%G__0x57dc7c_type* @G__0x57dc7c to i64), i64* %RDI.i62, align 8
  store %struct.Memory* %loadMem_43e261, %struct.Memory** %MEMORY
  %loadMem_43e26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7667 = getelementptr inbounds %struct.GPR, %struct.GPR* %7666, i32 0, i32 33
  %7668 = getelementptr inbounds %struct.Reg, %struct.Reg* %7667, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7668 to i64*
  %7669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7670 = getelementptr inbounds %struct.GPR, %struct.GPR* %7669, i32 0, i32 9
  %7671 = getelementptr inbounds %struct.Reg, %struct.Reg* %7670, i32 0, i32 0
  %RSI.i59 = bitcast %union.anon* %7671 to i64*
  %7672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7673 = getelementptr inbounds %struct.GPR, %struct.GPR* %7672, i32 0, i32 15
  %7674 = getelementptr inbounds %struct.Reg, %struct.Reg* %7673, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %7674 to i64*
  %7675 = load i64, i64* %RBP.i60
  %7676 = sub i64 %7675, 1656
  %7677 = load i64, i64* %PC.i58
  %7678 = add i64 %7677, 6
  store i64 %7678, i64* %PC.i58
  %7679 = inttoptr i64 %7676 to i32*
  %7680 = load i32, i32* %7679
  %7681 = zext i32 %7680 to i64
  store i64 %7681, i64* %RSI.i59, align 8
  store %struct.Memory* %loadMem_43e26b, %struct.Memory** %MEMORY
  %loadMem_43e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7683 = getelementptr inbounds %struct.GPR, %struct.GPR* %7682, i32 0, i32 33
  %7684 = getelementptr inbounds %struct.Reg, %struct.Reg* %7683, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7684 to i64*
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7686 = getelementptr inbounds %struct.GPR, %struct.GPR* %7685, i32 0, i32 1
  %7687 = getelementptr inbounds %struct.Reg, %struct.Reg* %7686, i32 0, i32 0
  %7688 = bitcast %union.anon* %7687 to %struct.anon.2*
  %AL.i57 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7688, i32 0, i32 0
  %7689 = load i64, i64* %PC.i56
  %7690 = add i64 %7689, 2
  store i64 %7690, i64* %PC.i56
  store i8 0, i8* %AL.i57, align 1
  store %struct.Memory* %loadMem_43e271, %struct.Memory** %MEMORY
  %loadMem1_43e273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7692 = getelementptr inbounds %struct.GPR, %struct.GPR* %7691, i32 0, i32 33
  %7693 = getelementptr inbounds %struct.Reg, %struct.Reg* %7692, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7693 to i64*
  %7694 = load i64, i64* %PC.i55
  %7695 = add i64 %7694, 80701
  %7696 = load i64, i64* %PC.i55
  %7697 = add i64 %7696, 5
  %7698 = load i64, i64* %PC.i55
  %7699 = add i64 %7698, 5
  store i64 %7699, i64* %PC.i55
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7701 = load i64, i64* %7700, align 8
  %7702 = add i64 %7701, -8
  %7703 = inttoptr i64 %7702 to i64*
  store i64 %7697, i64* %7703
  store i64 %7702, i64* %7700, align 8
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7695, i64* %7704, align 8
  store %struct.Memory* %loadMem1_43e273, %struct.Memory** %MEMORY
  %loadMem2_43e273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e273 = load i64, i64* %3
  %call2_43e273 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43e273, %struct.Memory* %loadMem2_43e273)
  store %struct.Memory* %call2_43e273, %struct.Memory** %MEMORY
  %loadMem_43e278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 33
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7707 to i64*
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 11
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %EDI.i53 = bitcast %union.anon* %7710 to i32*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 11
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %RDI.i54 = bitcast %union.anon* %7713 to i64*
  %7714 = load i64, i64* %RDI.i54
  %7715 = load i32, i32* %EDI.i53
  %7716 = zext i32 %7715 to i64
  %7717 = load i64, i64* %PC.i52
  %7718 = add i64 %7717, 2
  store i64 %7718, i64* %PC.i52
  %7719 = xor i64 %7716, %7714
  %7720 = trunc i64 %7719 to i32
  %7721 = and i64 %7719, 4294967295
  store i64 %7721, i64* %RDI.i54, align 8
  %7722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7722, align 1
  %7723 = and i32 %7720, 255
  %7724 = call i32 @llvm.ctpop.i32(i32 %7723)
  %7725 = trunc i32 %7724 to i8
  %7726 = and i8 %7725, 1
  %7727 = xor i8 %7726, 1
  %7728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7727, i8* %7728, align 1
  %7729 = icmp eq i32 %7720, 0
  %7730 = zext i1 %7729 to i8
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7730, i8* %7731, align 1
  %7732 = lshr i32 %7720, 31
  %7733 = trunc i32 %7732 to i8
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7733, i8* %7734, align 1
  %7735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7735, align 1
  %7736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7736, align 1
  store %struct.Memory* %loadMem_43e278, %struct.Memory** %MEMORY
  %loadMem_43e27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7738 = getelementptr inbounds %struct.GPR, %struct.GPR* %7737, i32 0, i32 33
  %7739 = getelementptr inbounds %struct.Reg, %struct.Reg* %7738, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7739 to i64*
  %7740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7741 = getelementptr inbounds %struct.GPR, %struct.GPR* %7740, i32 0, i32 1
  %7742 = getelementptr inbounds %struct.Reg, %struct.Reg* %7741, i32 0, i32 0
  %EAX.i50 = bitcast %union.anon* %7742 to i32*
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7744 = getelementptr inbounds %struct.GPR, %struct.GPR* %7743, i32 0, i32 15
  %7745 = getelementptr inbounds %struct.Reg, %struct.Reg* %7744, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %7745 to i64*
  %7746 = load i64, i64* %RBP.i51
  %7747 = sub i64 %7746, 6620
  %7748 = load i32, i32* %EAX.i50
  %7749 = zext i32 %7748 to i64
  %7750 = load i64, i64* %PC.i49
  %7751 = add i64 %7750, 6
  store i64 %7751, i64* %PC.i49
  %7752 = inttoptr i64 %7747 to i32*
  store i32 %7748, i32* %7752
  store %struct.Memory* %loadMem_43e27a, %struct.Memory** %MEMORY
  %loadMem1_43e280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7754 = getelementptr inbounds %struct.GPR, %struct.GPR* %7753, i32 0, i32 33
  %7755 = getelementptr inbounds %struct.Reg, %struct.Reg* %7754, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7755 to i64*
  %7756 = load i64, i64* %PC.i48
  %7757 = add i64 %7756, 224128
  %7758 = load i64, i64* %PC.i48
  %7759 = add i64 %7758, 5
  %7760 = load i64, i64* %PC.i48
  %7761 = add i64 %7760, 5
  store i64 %7761, i64* %PC.i48
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7763 = load i64, i64* %7762, align 8
  %7764 = add i64 %7763, -8
  %7765 = inttoptr i64 %7764 to i64*
  store i64 %7759, i64* %7765
  store i64 %7764, i64* %7762, align 8
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7757, i64* %7766, align 8
  store %struct.Memory* %loadMem1_43e280, %struct.Memory** %MEMORY
  %loadMem2_43e280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e280 = load i64, i64* %3
  %call2_43e280 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43e280, %struct.Memory* %loadMem2_43e280)
  store %struct.Memory* %call2_43e280, %struct.Memory** %MEMORY
  %loadMem_43e285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7768 = getelementptr inbounds %struct.GPR, %struct.GPR* %7767, i32 0, i32 33
  %7769 = getelementptr inbounds %struct.Reg, %struct.Reg* %7768, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7769 to i64*
  %7770 = load i64, i64* %PC.i47
  %7771 = add i64 %7770, 76
  %7772 = load i64, i64* %PC.i47
  %7773 = add i64 %7772, 5
  store i64 %7773, i64* %PC.i47
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7771, i64* %7774, align 8
  store %struct.Memory* %loadMem_43e285, %struct.Memory** %MEMORY
  br label %block_.L_43e2d1

block_.L_43e28a:                                  ; preds = %block_43e248
  %loadMem_43e28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7776 = getelementptr inbounds %struct.GPR, %struct.GPR* %7775, i32 0, i32 33
  %7777 = getelementptr inbounds %struct.Reg, %struct.Reg* %7776, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7777 to i64*
  %7778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7779 = getelementptr inbounds %struct.GPR, %struct.GPR* %7778, i32 0, i32 1
  %7780 = getelementptr inbounds %struct.Reg, %struct.Reg* %7779, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %7780 to i32*
  %7781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7782 = getelementptr inbounds %struct.GPR, %struct.GPR* %7781, i32 0, i32 1
  %7783 = getelementptr inbounds %struct.Reg, %struct.Reg* %7782, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %7783 to i64*
  %7784 = load i64, i64* %RAX.i46
  %7785 = load i32, i32* %EAX.i45
  %7786 = zext i32 %7785 to i64
  %7787 = load i64, i64* %PC.i44
  %7788 = add i64 %7787, 2
  store i64 %7788, i64* %PC.i44
  %7789 = xor i64 %7786, %7784
  %7790 = trunc i64 %7789 to i32
  %7791 = and i64 %7789, 4294967295
  store i64 %7791, i64* %RAX.i46, align 8
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7792, align 1
  %7793 = and i32 %7790, 255
  %7794 = call i32 @llvm.ctpop.i32(i32 %7793)
  %7795 = trunc i32 %7794 to i8
  %7796 = and i8 %7795, 1
  %7797 = xor i8 %7796, 1
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7797, i8* %7798, align 1
  %7799 = icmp eq i32 %7790, 0
  %7800 = zext i1 %7799 to i8
  %7801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7800, i8* %7801, align 1
  %7802 = lshr i32 %7790, 31
  %7803 = trunc i32 %7802 to i8
  %7804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7803, i8* %7804, align 1
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7805, align 1
  %7806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7806, align 1
  store %struct.Memory* %loadMem_43e28a, %struct.Memory** %MEMORY
  %loadMem_43e28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7808 = getelementptr inbounds %struct.GPR, %struct.GPR* %7807, i32 0, i32 33
  %7809 = getelementptr inbounds %struct.Reg, %struct.Reg* %7808, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7809 to i64*
  %7810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7811 = getelementptr inbounds %struct.GPR, %struct.GPR* %7810, i32 0, i32 1
  %7812 = getelementptr inbounds %struct.Reg, %struct.Reg* %7811, i32 0, i32 0
  %EAX.i43 = bitcast %union.anon* %7812 to i32*
  %7813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7814 = getelementptr inbounds %struct.GPR, %struct.GPR* %7813, i32 0, i32 7
  %7815 = getelementptr inbounds %struct.Reg, %struct.Reg* %7814, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7815 to i64*
  %7816 = load i32, i32* %EAX.i43
  %7817 = zext i32 %7816 to i64
  %7818 = load i64, i64* %PC.i42
  %7819 = add i64 %7818, 2
  store i64 %7819, i64* %PC.i42
  %7820 = and i64 %7817, 4294967295
  store i64 %7820, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_43e28c, %struct.Memory** %MEMORY
  %loadMem_43e28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7822 = getelementptr inbounds %struct.GPR, %struct.GPR* %7821, i32 0, i32 33
  %7823 = getelementptr inbounds %struct.Reg, %struct.Reg* %7822, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7823 to i64*
  %7824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7825 = getelementptr inbounds %struct.GPR, %struct.GPR* %7824, i32 0, i32 11
  %7826 = getelementptr inbounds %struct.Reg, %struct.Reg* %7825, i32 0, i32 0
  %RDI.i40 = bitcast %union.anon* %7826 to i64*
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7828 = getelementptr inbounds %struct.GPR, %struct.GPR* %7827, i32 0, i32 15
  %7829 = getelementptr inbounds %struct.Reg, %struct.Reg* %7828, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %7829 to i64*
  %7830 = load i64, i64* %RBP.i41
  %7831 = sub i64 %7830, 1656
  %7832 = load i64, i64* %PC.i39
  %7833 = add i64 %7832, 6
  store i64 %7833, i64* %PC.i39
  %7834 = inttoptr i64 %7831 to i32*
  %7835 = load i32, i32* %7834
  %7836 = zext i32 %7835 to i64
  store i64 %7836, i64* %RDI.i40, align 8
  store %struct.Memory* %loadMem_43e28e, %struct.Memory** %MEMORY
  %loadMem_43e294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7838 = getelementptr inbounds %struct.GPR, %struct.GPR* %7837, i32 0, i32 33
  %7839 = getelementptr inbounds %struct.Reg, %struct.Reg* %7838, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7839 to i64*
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7841 = getelementptr inbounds %struct.GPR, %struct.GPR* %7840, i32 0, i32 9
  %7842 = getelementptr inbounds %struct.Reg, %struct.Reg* %7841, i32 0, i32 0
  %RSI.i37 = bitcast %union.anon* %7842 to i64*
  %7843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7844 = getelementptr inbounds %struct.GPR, %struct.GPR* %7843, i32 0, i32 15
  %7845 = getelementptr inbounds %struct.Reg, %struct.Reg* %7844, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %7845 to i64*
  %7846 = load i64, i64* %RBP.i38
  %7847 = sub i64 %7846, 1640
  %7848 = load i64, i64* %PC.i36
  %7849 = add i64 %7848, 6
  store i64 %7849, i64* %PC.i36
  %7850 = inttoptr i64 %7847 to i32*
  %7851 = load i32, i32* %7850
  %7852 = zext i32 %7851 to i64
  store i64 %7852, i64* %RSI.i37, align 8
  store %struct.Memory* %loadMem_43e294, %struct.Memory** %MEMORY
  %loadMem1_43e29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7854 = getelementptr inbounds %struct.GPR, %struct.GPR* %7853, i32 0, i32 33
  %7855 = getelementptr inbounds %struct.Reg, %struct.Reg* %7854, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7855 to i64*
  %7856 = load i64, i64* %PC.i35
  %7857 = add i64 %7856, 57638
  %7858 = load i64, i64* %PC.i35
  %7859 = add i64 %7858, 5
  %7860 = load i64, i64* %PC.i35
  %7861 = add i64 %7860, 5
  store i64 %7861, i64* %PC.i35
  %7862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7863 = load i64, i64* %7862, align 8
  %7864 = add i64 %7863, -8
  %7865 = inttoptr i64 %7864 to i64*
  store i64 %7859, i64* %7865
  store i64 %7864, i64* %7862, align 8
  %7866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7857, i64* %7866, align 8
  store %struct.Memory* %loadMem1_43e29a, %struct.Memory** %MEMORY
  %loadMem2_43e29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e29a = load i64, i64* %3
  %call2_43e29a = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64 %loadPC_43e29a, %struct.Memory* %loadMem2_43e29a)
  store %struct.Memory* %call2_43e29a, %struct.Memory** %MEMORY
  %loadMem_43e29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7868 = getelementptr inbounds %struct.GPR, %struct.GPR* %7867, i32 0, i32 33
  %7869 = getelementptr inbounds %struct.Reg, %struct.Reg* %7868, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7869 to i64*
  %7870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7871 = getelementptr inbounds %struct.GPR, %struct.GPR* %7870, i32 0, i32 1
  %7872 = getelementptr inbounds %struct.Reg, %struct.Reg* %7871, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %7872 to i32*
  %7873 = load i32, i32* %EAX.i34
  %7874 = zext i32 %7873 to i64
  %7875 = load i64, i64* %PC.i33
  %7876 = add i64 %7875, 3
  store i64 %7876, i64* %PC.i33
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7877, align 1
  %7878 = and i32 %7873, 255
  %7879 = call i32 @llvm.ctpop.i32(i32 %7878)
  %7880 = trunc i32 %7879 to i8
  %7881 = and i8 %7880, 1
  %7882 = xor i8 %7881, 1
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7882, i8* %7883, align 1
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7884, align 1
  %7885 = icmp eq i32 %7873, 0
  %7886 = zext i1 %7885 to i8
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7886, i8* %7887, align 1
  %7888 = lshr i32 %7873, 31
  %7889 = trunc i32 %7888 to i8
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7889, i8* %7890, align 1
  %7891 = lshr i32 %7873, 31
  %7892 = xor i32 %7888, %7891
  %7893 = add i32 %7892, %7891
  %7894 = icmp eq i32 %7893, 2
  %7895 = zext i1 %7894 to i8
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7895, i8* %7896, align 1
  store %struct.Memory* %loadMem_43e29f, %struct.Memory** %MEMORY
  %loadMem_43e2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7898 = getelementptr inbounds %struct.GPR, %struct.GPR* %7897, i32 0, i32 33
  %7899 = getelementptr inbounds %struct.Reg, %struct.Reg* %7898, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7899 to i64*
  %7900 = load i64, i64* %PC.i32
  %7901 = add i64 %7900, 42
  %7902 = load i64, i64* %PC.i32
  %7903 = add i64 %7902, 6
  %7904 = load i64, i64* %PC.i32
  %7905 = add i64 %7904, 6
  store i64 %7905, i64* %PC.i32
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7907 = load i8, i8* %7906, align 1
  %7908 = icmp eq i8 %7907, 0
  %7909 = zext i1 %7908 to i8
  store i8 %7909, i8* %BRANCH_TAKEN, align 1
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7911 = select i1 %7908, i64 %7901, i64 %7903
  store i64 %7911, i64* %7910, align 8
  store %struct.Memory* %loadMem_43e2a2, %struct.Memory** %MEMORY
  %loadBr_43e2a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43e2a2 = icmp eq i8 %loadBr_43e2a2, 1
  br i1 %cmpBr_43e2a2, label %block_.L_43e2cc, label %block_43e2a8

block_43e2a8:                                     ; preds = %block_.L_43e28a
  %loadMem_43e2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7913 = getelementptr inbounds %struct.GPR, %struct.GPR* %7912, i32 0, i32 33
  %7914 = getelementptr inbounds %struct.Reg, %struct.Reg* %7913, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7914 to i64*
  %7915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7916 = getelementptr inbounds %struct.GPR, %struct.GPR* %7915, i32 0, i32 11
  %7917 = getelementptr inbounds %struct.Reg, %struct.Reg* %7916, i32 0, i32 0
  %RDI.i31 = bitcast %union.anon* %7917 to i64*
  %7918 = load i64, i64* %PC.i30
  %7919 = add i64 %7918, 10
  store i64 %7919, i64* %PC.i30
  store i64 ptrtoint (%G__0x57dc94_type* @G__0x57dc94 to i64), i64* %RDI.i31, align 8
  store %struct.Memory* %loadMem_43e2a8, %struct.Memory** %MEMORY
  %loadMem_43e2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7921 = getelementptr inbounds %struct.GPR, %struct.GPR* %7920, i32 0, i32 33
  %7922 = getelementptr inbounds %struct.Reg, %struct.Reg* %7921, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %7922 to i64*
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7924 = getelementptr inbounds %struct.GPR, %struct.GPR* %7923, i32 0, i32 9
  %7925 = getelementptr inbounds %struct.Reg, %struct.Reg* %7924, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7925 to i64*
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7927 = getelementptr inbounds %struct.GPR, %struct.GPR* %7926, i32 0, i32 15
  %7928 = getelementptr inbounds %struct.Reg, %struct.Reg* %7927, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %7928 to i64*
  %7929 = load i64, i64* %RBP.i29
  %7930 = sub i64 %7929, 1656
  %7931 = load i64, i64* %PC.i28
  %7932 = add i64 %7931, 6
  store i64 %7932, i64* %PC.i28
  %7933 = inttoptr i64 %7930 to i32*
  %7934 = load i32, i32* %7933
  %7935 = zext i32 %7934 to i64
  store i64 %7935, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_43e2b2, %struct.Memory** %MEMORY
  %loadMem_43e2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7937 = getelementptr inbounds %struct.GPR, %struct.GPR* %7936, i32 0, i32 33
  %7938 = getelementptr inbounds %struct.Reg, %struct.Reg* %7937, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7938 to i64*
  %7939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7940 = getelementptr inbounds %struct.GPR, %struct.GPR* %7939, i32 0, i32 1
  %7941 = getelementptr inbounds %struct.Reg, %struct.Reg* %7940, i32 0, i32 0
  %7942 = bitcast %union.anon* %7941 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7942, i32 0, i32 0
  %7943 = load i64, i64* %PC.i27
  %7944 = add i64 %7943, 2
  store i64 %7944, i64* %PC.i27
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_43e2b8, %struct.Memory** %MEMORY
  %loadMem1_43e2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7946 = getelementptr inbounds %struct.GPR, %struct.GPR* %7945, i32 0, i32 33
  %7947 = getelementptr inbounds %struct.Reg, %struct.Reg* %7946, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7947 to i64*
  %7948 = load i64, i64* %PC.i26
  %7949 = add i64 %7948, 80630
  %7950 = load i64, i64* %PC.i26
  %7951 = add i64 %7950, 5
  %7952 = load i64, i64* %PC.i26
  %7953 = add i64 %7952, 5
  store i64 %7953, i64* %PC.i26
  %7954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7955 = load i64, i64* %7954, align 8
  %7956 = add i64 %7955, -8
  %7957 = inttoptr i64 %7956 to i64*
  store i64 %7951, i64* %7957
  store i64 %7956, i64* %7954, align 8
  %7958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7949, i64* %7958, align 8
  store %struct.Memory* %loadMem1_43e2ba, %struct.Memory** %MEMORY
  %loadMem2_43e2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2ba = load i64, i64* %3
  %call2_43e2ba = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43e2ba, %struct.Memory* %loadMem2_43e2ba)
  store %struct.Memory* %call2_43e2ba, %struct.Memory** %MEMORY
  %loadMem_43e2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7960 = getelementptr inbounds %struct.GPR, %struct.GPR* %7959, i32 0, i32 33
  %7961 = getelementptr inbounds %struct.Reg, %struct.Reg* %7960, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7961 to i64*
  %7962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7963 = getelementptr inbounds %struct.GPR, %struct.GPR* %7962, i32 0, i32 11
  %7964 = getelementptr inbounds %struct.Reg, %struct.Reg* %7963, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7964 to i32*
  %7965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7966 = getelementptr inbounds %struct.GPR, %struct.GPR* %7965, i32 0, i32 11
  %7967 = getelementptr inbounds %struct.Reg, %struct.Reg* %7966, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7967 to i64*
  %7968 = load i64, i64* %RDI.i
  %7969 = load i32, i32* %EDI.i
  %7970 = zext i32 %7969 to i64
  %7971 = load i64, i64* %PC.i25
  %7972 = add i64 %7971, 2
  store i64 %7972, i64* %PC.i25
  %7973 = xor i64 %7970, %7968
  %7974 = trunc i64 %7973 to i32
  %7975 = and i64 %7973, 4294967295
  store i64 %7975, i64* %RDI.i, align 8
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7976, align 1
  %7977 = and i32 %7974, 255
  %7978 = call i32 @llvm.ctpop.i32(i32 %7977)
  %7979 = trunc i32 %7978 to i8
  %7980 = and i8 %7979, 1
  %7981 = xor i8 %7980, 1
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7981, i8* %7982, align 1
  %7983 = icmp eq i32 %7974, 0
  %7984 = zext i1 %7983 to i8
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7984, i8* %7985, align 1
  %7986 = lshr i32 %7974, 31
  %7987 = trunc i32 %7986 to i8
  %7988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7987, i8* %7988, align 1
  %7989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7989, align 1
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7990, align 1
  store %struct.Memory* %loadMem_43e2bf, %struct.Memory** %MEMORY
  %loadMem_43e2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7992 = getelementptr inbounds %struct.GPR, %struct.GPR* %7991, i32 0, i32 33
  %7993 = getelementptr inbounds %struct.Reg, %struct.Reg* %7992, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7993 to i64*
  %7994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7995 = getelementptr inbounds %struct.GPR, %struct.GPR* %7994, i32 0, i32 1
  %7996 = getelementptr inbounds %struct.Reg, %struct.Reg* %7995, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %7996 to i32*
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7998 = getelementptr inbounds %struct.GPR, %struct.GPR* %7997, i32 0, i32 15
  %7999 = getelementptr inbounds %struct.Reg, %struct.Reg* %7998, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %7999 to i64*
  %8000 = load i64, i64* %RBP.i24
  %8001 = sub i64 %8000, 6624
  %8002 = load i32, i32* %EAX.i23
  %8003 = zext i32 %8002 to i64
  %8004 = load i64, i64* %PC.i22
  %8005 = add i64 %8004, 6
  store i64 %8005, i64* %PC.i22
  %8006 = inttoptr i64 %8001 to i32*
  store i32 %8002, i32* %8006
  store %struct.Memory* %loadMem_43e2c1, %struct.Memory** %MEMORY
  %loadMem1_43e2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8008 = getelementptr inbounds %struct.GPR, %struct.GPR* %8007, i32 0, i32 33
  %8009 = getelementptr inbounds %struct.Reg, %struct.Reg* %8008, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %8009 to i64*
  %8010 = load i64, i64* %PC.i21
  %8011 = add i64 %8010, 224057
  %8012 = load i64, i64* %PC.i21
  %8013 = add i64 %8012, 5
  %8014 = load i64, i64* %PC.i21
  %8015 = add i64 %8014, 5
  store i64 %8015, i64* %PC.i21
  %8016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8017 = load i64, i64* %8016, align 8
  %8018 = add i64 %8017, -8
  %8019 = inttoptr i64 %8018 to i64*
  store i64 %8013, i64* %8019
  store i64 %8018, i64* %8016, align 8
  %8020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8011, i64* %8020, align 8
  store %struct.Memory* %loadMem1_43e2c7, %struct.Memory** %MEMORY
  %loadMem2_43e2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43e2c7 = load i64, i64* %3
  %call2_43e2c7 = call %struct.Memory* @sub_474e00.showboard(%struct.State* %0, i64 %loadPC_43e2c7, %struct.Memory* %loadMem2_43e2c7)
  store %struct.Memory* %call2_43e2c7, %struct.Memory** %MEMORY
  br label %block_.L_43e2cc

block_.L_43e2cc:                                  ; preds = %block_43e2a8, %block_.L_43e28a
  %loadMem_43e2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8022 = getelementptr inbounds %struct.GPR, %struct.GPR* %8021, i32 0, i32 33
  %8023 = getelementptr inbounds %struct.Reg, %struct.Reg* %8022, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8023 to i64*
  %8024 = load i64, i64* %PC.i20
  %8025 = add i64 %8024, 5
  %8026 = load i64, i64* %PC.i20
  %8027 = add i64 %8026, 5
  store i64 %8027, i64* %PC.i20
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8025, i64* %8028, align 8
  store %struct.Memory* %loadMem_43e2cc, %struct.Memory** %MEMORY
  br label %block_.L_43e2d1

block_.L_43e2d1:                                  ; preds = %block_.L_43e2cc, %block_.L_43e261
  %loadMem_43e2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8030 = getelementptr inbounds %struct.GPR, %struct.GPR* %8029, i32 0, i32 33
  %8031 = getelementptr inbounds %struct.Reg, %struct.Reg* %8030, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8031 to i64*
  %8032 = load i64, i64* %PC.i19
  %8033 = add i64 %8032, 5
  %8034 = load i64, i64* %PC.i19
  %8035 = add i64 %8034, 5
  store i64 %8035, i64* %PC.i19
  %8036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8033, i64* %8036, align 8
  store %struct.Memory* %loadMem_43e2d1, %struct.Memory** %MEMORY
  br label %block_.L_43e2d6

block_.L_43e2d6:                                  ; preds = %block_.L_43e2d1, %block_.L_43e18a
  %loadMem_43e2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8038 = getelementptr inbounds %struct.GPR, %struct.GPR* %8037, i32 0, i32 33
  %8039 = getelementptr inbounds %struct.Reg, %struct.Reg* %8038, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8039 to i64*
  %8040 = load i64, i64* %PC.i18
  %8041 = add i64 %8040, 5
  %8042 = load i64, i64* %PC.i18
  %8043 = add i64 %8042, 5
  store i64 %8043, i64* %PC.i18
  %8044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8041, i64* %8044, align 8
  store %struct.Memory* %loadMem_43e2d6, %struct.Memory** %MEMORY
  br label %block_.L_43e2db

block_.L_43e2db:                                  ; preds = %block_.L_43e2d6, %block_.L_43e08f
  %loadMem_43e2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %8045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8046 = getelementptr inbounds %struct.GPR, %struct.GPR* %8045, i32 0, i32 33
  %8047 = getelementptr inbounds %struct.Reg, %struct.Reg* %8046, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8047 to i64*
  %8048 = load i64, i64* %PC.i17
  %8049 = add i64 %8048, 5
  %8050 = load i64, i64* %PC.i17
  %8051 = add i64 %8050, 5
  store i64 %8051, i64* %PC.i17
  %8052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8049, i64* %8052, align 8
  store %struct.Memory* %loadMem_43e2db, %struct.Memory** %MEMORY
  br label %block_.L_43e2e0

block_.L_43e2e0:                                  ; preds = %block_.L_43e2db, %block_43decb
  %loadMem_43e2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8054 = getelementptr inbounds %struct.GPR, %struct.GPR* %8053, i32 0, i32 33
  %8055 = getelementptr inbounds %struct.Reg, %struct.Reg* %8054, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8055 to i64*
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8057 = getelementptr inbounds %struct.GPR, %struct.GPR* %8056, i32 0, i32 1
  %8058 = getelementptr inbounds %struct.Reg, %struct.Reg* %8057, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %8058 to i64*
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 15
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %8061 to i64*
  %8062 = load i64, i64* %RBP.i16
  %8063 = sub i64 %8062, 24
  %8064 = load i64, i64* %PC.i14
  %8065 = add i64 %8064, 3
  store i64 %8065, i64* %PC.i14
  %8066 = inttoptr i64 %8063 to i32*
  %8067 = load i32, i32* %8066
  %8068 = zext i32 %8067 to i64
  store i64 %8068, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_43e2e0, %struct.Memory** %MEMORY
  %loadMem_43e2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8070 = getelementptr inbounds %struct.GPR, %struct.GPR* %8069, i32 0, i32 33
  %8071 = getelementptr inbounds %struct.Reg, %struct.Reg* %8070, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8071 to i64*
  %8072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8073 = getelementptr inbounds %struct.GPR, %struct.GPR* %8072, i32 0, i32 1
  %8074 = getelementptr inbounds %struct.Reg, %struct.Reg* %8073, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %8074 to i64*
  %8075 = load i64, i64* %RAX.i13
  %8076 = load i64, i64* %PC.i12
  %8077 = add i64 %8076, 3
  store i64 %8077, i64* %PC.i12
  %8078 = trunc i64 %8075 to i32
  %8079 = add i32 1, %8078
  %8080 = zext i32 %8079 to i64
  store i64 %8080, i64* %RAX.i13, align 8
  %8081 = icmp ult i32 %8079, %8078
  %8082 = icmp ult i32 %8079, 1
  %8083 = or i1 %8081, %8082
  %8084 = zext i1 %8083 to i8
  %8085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8084, i8* %8085, align 1
  %8086 = and i32 %8079, 255
  %8087 = call i32 @llvm.ctpop.i32(i32 %8086)
  %8088 = trunc i32 %8087 to i8
  %8089 = and i8 %8088, 1
  %8090 = xor i8 %8089, 1
  %8091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8090, i8* %8091, align 1
  %8092 = xor i64 1, %8075
  %8093 = trunc i64 %8092 to i32
  %8094 = xor i32 %8093, %8079
  %8095 = lshr i32 %8094, 4
  %8096 = trunc i32 %8095 to i8
  %8097 = and i8 %8096, 1
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8097, i8* %8098, align 1
  %8099 = icmp eq i32 %8079, 0
  %8100 = zext i1 %8099 to i8
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8100, i8* %8101, align 1
  %8102 = lshr i32 %8079, 31
  %8103 = trunc i32 %8102 to i8
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8103, i8* %8104, align 1
  %8105 = lshr i32 %8078, 31
  %8106 = xor i32 %8102, %8105
  %8107 = add i32 %8106, %8102
  %8108 = icmp eq i32 %8107, 2
  %8109 = zext i1 %8108 to i8
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8109, i8* %8110, align 1
  store %struct.Memory* %loadMem_43e2e3, %struct.Memory** %MEMORY
  %loadMem_43e2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8112 = getelementptr inbounds %struct.GPR, %struct.GPR* %8111, i32 0, i32 33
  %8113 = getelementptr inbounds %struct.Reg, %struct.Reg* %8112, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8113 to i64*
  %8114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8115 = getelementptr inbounds %struct.GPR, %struct.GPR* %8114, i32 0, i32 1
  %8116 = getelementptr inbounds %struct.Reg, %struct.Reg* %8115, i32 0, i32 0
  %EAX.i10 = bitcast %union.anon* %8116 to i32*
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8118 = getelementptr inbounds %struct.GPR, %struct.GPR* %8117, i32 0, i32 15
  %8119 = getelementptr inbounds %struct.Reg, %struct.Reg* %8118, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %8119 to i64*
  %8120 = load i64, i64* %RBP.i11
  %8121 = sub i64 %8120, 24
  %8122 = load i32, i32* %EAX.i10
  %8123 = zext i32 %8122 to i64
  %8124 = load i64, i64* %PC.i9
  %8125 = add i64 %8124, 3
  store i64 %8125, i64* %PC.i9
  %8126 = inttoptr i64 %8121 to i32*
  store i32 %8122, i32* %8126
  store %struct.Memory* %loadMem_43e2e6, %struct.Memory** %MEMORY
  %loadMem_43e2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8128 = getelementptr inbounds %struct.GPR, %struct.GPR* %8127, i32 0, i32 33
  %8129 = getelementptr inbounds %struct.Reg, %struct.Reg* %8128, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8129 to i64*
  %8130 = load i64, i64* %PC.i8
  %8131 = add i64 %8130, -1268
  %8132 = load i64, i64* %PC.i8
  %8133 = add i64 %8132, 5
  store i64 %8133, i64* %PC.i8
  %8134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8131, i64* %8134, align 8
  store %struct.Memory* %loadMem_43e2e9, %struct.Memory** %MEMORY
  br label %block_.L_43ddf5

block_.L_43e2ee:                                  ; preds = %block_.L_43ddf5
  %loadMem_43e2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8136 = getelementptr inbounds %struct.GPR, %struct.GPR* %8135, i32 0, i32 33
  %8137 = getelementptr inbounds %struct.Reg, %struct.Reg* %8136, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8137 to i64*
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8139 = getelementptr inbounds %struct.GPR, %struct.GPR* %8138, i32 0, i32 1
  %8140 = getelementptr inbounds %struct.Reg, %struct.Reg* %8139, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8140 to i64*
  %8141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8142 = getelementptr inbounds %struct.GPR, %struct.GPR* %8141, i32 0, i32 15
  %8143 = getelementptr inbounds %struct.Reg, %struct.Reg* %8142, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %8143 to i64*
  %8144 = load i64, i64* %RBP.i7
  %8145 = sub i64 %8144, 1660
  %8146 = load i64, i64* %PC.i6
  %8147 = add i64 %8146, 6
  store i64 %8147, i64* %PC.i6
  %8148 = inttoptr i64 %8145 to i32*
  %8149 = load i32, i32* %8148
  %8150 = zext i32 %8149 to i64
  store i64 %8150, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_43e2ee, %struct.Memory** %MEMORY
  %loadMem_43e2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8152 = getelementptr inbounds %struct.GPR, %struct.GPR* %8151, i32 0, i32 33
  %8153 = getelementptr inbounds %struct.Reg, %struct.Reg* %8152, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8153 to i64*
  %8154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8155 = getelementptr inbounds %struct.GPR, %struct.GPR* %8154, i32 0, i32 1
  %8156 = getelementptr inbounds %struct.Reg, %struct.Reg* %8155, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8156 to i32*
  %8157 = load i32, i32* %EAX.i
  %8158 = zext i32 %8157 to i64
  %8159 = load i64, i64* %PC.i5
  %8160 = add i64 %8159, 7
  store i64 %8160, i64* %PC.i5
  store i32 %8157, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_43e2f4, %struct.Memory** %MEMORY
  %loadMem_43e2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8162 = getelementptr inbounds %struct.GPR, %struct.GPR* %8161, i32 0, i32 33
  %8163 = getelementptr inbounds %struct.Reg, %struct.Reg* %8162, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8163 to i64*
  %8164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8165 = getelementptr inbounds %struct.GPR, %struct.GPR* %8164, i32 0, i32 13
  %8166 = getelementptr inbounds %struct.Reg, %struct.Reg* %8165, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8166 to i64*
  %8167 = load i64, i64* %RSP.i
  %8168 = load i64, i64* %PC.i4
  %8169 = add i64 %8168, 7
  store i64 %8169, i64* %PC.i4
  %8170 = add i64 6624, %8167
  store i64 %8170, i64* %RSP.i, align 8
  %8171 = icmp ult i64 %8170, %8167
  %8172 = icmp ult i64 %8170, 6624
  %8173 = or i1 %8171, %8172
  %8174 = zext i1 %8173 to i8
  %8175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8174, i8* %8175, align 1
  %8176 = trunc i64 %8170 to i32
  %8177 = and i32 %8176, 255
  %8178 = call i32 @llvm.ctpop.i32(i32 %8177)
  %8179 = trunc i32 %8178 to i8
  %8180 = and i8 %8179, 1
  %8181 = xor i8 %8180, 1
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8181, i8* %8182, align 1
  %8183 = xor i64 6624, %8167
  %8184 = xor i64 %8183, %8170
  %8185 = lshr i64 %8184, 4
  %8186 = trunc i64 %8185 to i8
  %8187 = and i8 %8186, 1
  %8188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8187, i8* %8188, align 1
  %8189 = icmp eq i64 %8170, 0
  %8190 = zext i1 %8189 to i8
  %8191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8190, i8* %8191, align 1
  %8192 = lshr i64 %8170, 63
  %8193 = trunc i64 %8192 to i8
  %8194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8193, i8* %8194, align 1
  %8195 = lshr i64 %8167, 63
  %8196 = xor i64 %8192, %8195
  %8197 = add i64 %8196, %8192
  %8198 = icmp eq i64 %8197, 2
  %8199 = zext i1 %8198 to i8
  %8200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8199, i8* %8200, align 1
  store %struct.Memory* %loadMem_43e2fb, %struct.Memory** %MEMORY
  %loadMem_43e302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8202 = getelementptr inbounds %struct.GPR, %struct.GPR* %8201, i32 0, i32 33
  %8203 = getelementptr inbounds %struct.Reg, %struct.Reg* %8202, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8203 to i64*
  %8204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8205 = getelementptr inbounds %struct.GPR, %struct.GPR* %8204, i32 0, i32 15
  %8206 = getelementptr inbounds %struct.Reg, %struct.Reg* %8205, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8206 to i64*
  %8207 = load i64, i64* %PC.i2
  %8208 = add i64 %8207, 1
  store i64 %8208, i64* %PC.i2
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8210 = load i64, i64* %8209, align 8
  %8211 = add i64 %8210, 8
  %8212 = inttoptr i64 %8210 to i64*
  %8213 = load i64, i64* %8212
  store i64 %8213, i64* %RBP.i3, align 8
  store i64 %8211, i64* %8209, align 8
  store %struct.Memory* %loadMem_43e302, %struct.Memory** %MEMORY
  %loadMem_43e303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8215 = getelementptr inbounds %struct.GPR, %struct.GPR* %8214, i32 0, i32 33
  %8216 = getelementptr inbounds %struct.Reg, %struct.Reg* %8215, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8216 to i64*
  %8217 = load i64, i64* %PC.i1
  %8218 = add i64 %8217, 1
  store i64 %8218, i64* %PC.i1
  %8219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8221 = load i64, i64* %8220, align 8
  %8222 = inttoptr i64 %8221 to i64*
  %8223 = load i64, i64* %8222
  store i64 %8223, i64* %8219, align 8
  %8224 = add i64 %8221, 8
  store i64 %8224, i64* %8220, align 8
  store %struct.Memory* %loadMem_43e303, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43e303
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

define %struct.Memory* @routine_subq__0x19e0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 6624
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 6624
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
  %23 = xor i64 6624, %9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.clear_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.reset_engine(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x640___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1600, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x660__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_43dbb3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1a5____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %19, 421
  %21 = icmp ult i32 %19, 421
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
  %30 = xor i32 %19, 421
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
  %42 = lshr i32 %19, 31
  %43 = xor i32 %39, %42
  %44 = add i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %46, i8* %47, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_43db08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_43db08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_43db8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x775___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1909, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57dbcc___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dbcc_type* @G__0x57dbcc to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__r8_4____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl__eax__MINUS0x19a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6564
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x19b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6576
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = lshr i64 %12, 32
  store i64 %13, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x19a4__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 6564
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R9D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = shl i64 %10, 32
  %22 = ashr exact i64 %21, 32
  %23 = shl i64 %20, 32
  %24 = or i64 %23, %16
  %25 = sdiv i64 %24, %22
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %block_400488
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = srem i64 %24, %22
  %35 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %36 = and i64 %25, 4294967295
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %38 = and i64 %34, 4294967295
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %29, %33
  %45 = phi %struct.Memory* [ %32, %29 ], [ %2, %33 ]
  ret %struct.Memory* %45
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

define %struct.Memory* @routine_movl___rcx__r8_4____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movl__eax__MINUS0x19b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6580
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x19b0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x19b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6584
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x19b4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x19b8__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 6584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_43dac5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x15__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_jge_.L_43dca4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x664__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1636
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

define %struct.Memory* @routine_je_.L_43dbfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 1
  %22 = icmp ult i32 %20, 1
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
  %31 = xor i32 %20, 1
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
  %44 = xor i32 %40, %43
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43dbff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_43dc90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_43dc8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43dc78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %20, 1
  %22 = icmp ult i32 %20, 1
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
  %31 = xor i32 %20, 1
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
  %44 = xor i32 %40, %43
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43dc78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x664__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.play_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x664__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x668__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1640
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43dc8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43dc7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43dc06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1636
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43dbbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_43dda8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_43dd05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_43dd05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_43dd0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_43dd94(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_43dd8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_43dd7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43dd8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43dd81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43dd11(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43dcae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43ddbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.showboard(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x1998__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1660
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.store_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
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

define %struct.Memory* @routine_shll__cl___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = trunc i64 %15 to i5
  switch i5 %18, label %25 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %19
  ]

; <label>:19:                                     ; preds = %block_400488
  %20 = trunc i64 %13 to i32
  %21 = shl i32 %20, 1
  %22 = icmp slt i32 %20, 0
  %23 = icmp slt i32 %21, 0
  %24 = xor i1 %22, %23
  br label %34

; <label>:25:                                     ; preds = %block_400488
  %26 = and i64 %15, 31
  %27 = add i64 %26, 4294967295
  %28 = and i64 %13, 4294967295
  %29 = and i64 %27, 4294967295
  %30 = shl i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %31, 0
  %33 = shl i32 %31, 1
  br label %34

; <label>:34:                                     ; preds = %25, %19
  %35 = phi i1 [ %22, %19 ], [ %32, %25 ]
  %36 = phi i1 [ %24, %19 ], [ false, %25 ]
  %37 = phi i32 [ %21, %19 ], [ %33, %25 ]
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %RAX, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %40 = zext i1 %35 to i8
  store i8 %40, i8* %39, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %42 = and i32 %37, 254
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  store i8 %46, i8* %41, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %49 = icmp eq i32 %37, 0
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %48, align 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %52 = lshr i32 %37, 31
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %51, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %55 = zext i1 %36 to i8
  store i8 %55, i8* %54, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %block_400488, %34
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

define %struct.Memory* @routine_jge_.L_43e2ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1__MINUS0x199c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 6556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x19a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 6560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.restore_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_43debe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x19bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6588
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x19bc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = and i64 %14, %12
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

define %struct.Memory* @routine_je_.L_43deab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_legal(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_43de87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x199c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 6556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43debe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x19a0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x19a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6560
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43deb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43de28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x199c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 6556
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

define %struct.Memory* @routine_jne_.L_43ded0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_43e2e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x67c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1660
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

define %struct.Memory* @routine_jle_.L_43dee4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.examine_position(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x668__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.owl_attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x66c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1644
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x66c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1644
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

define %struct.Memory* @routine_jne_.L_43e094(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_43dfec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_43dfd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_43dfd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx__rsi_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dbe7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dbe7_type* @G__0x57dbe7 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x19c0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6592
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0x19c4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43dfde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43df29(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x19a0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_43e08f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_43e08a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_43e077(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dc04___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dc04_type* @G__0x57dc04 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x19c8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6600
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43e07c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43e007(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43e08f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43e2db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x678__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.owl_defend(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1652
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x674__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1652
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

define %struct.Memory* @routine_jne_.L_43e18f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_43e18a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_43e177(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_43e177(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dc2f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dc2f_type* @G__0x57dc2f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x19cc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6604
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x19d0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43e17c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43e0c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43e2d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x670__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43e1c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x670__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43e1e9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dc4b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dc4b_type* @G__0x57dc4b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x670__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x19d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43e230(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_43e22b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dc62___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dc62_type* @G__0x57dc62 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x19d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6616
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x678__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43e261(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x678__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43e28a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dc7c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dc7c_type* @G__0x57dc7c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x678__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x19dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6620
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43e2d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_43e2cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dc94___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dc94_type* @G__0x57dc94 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x19e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 6624
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_43ddf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x19e0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 6624, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 6624
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
  %25 = xor i64 6624, %9
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
