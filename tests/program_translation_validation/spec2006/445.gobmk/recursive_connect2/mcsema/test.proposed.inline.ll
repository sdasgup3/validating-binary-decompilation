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
%G_0x7ae43c_type = type <{ [4 x i8] }>
%G_0x7afc58_type = type <{ [4 x i8] }>
%G_0x7afc5c_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xae239c_type = type <{ [4 x i8] }>
%G_0xae23a0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57dee3_type = type <{ [8 x i8] }>
%G__0x57f55d_type = type <{ [8 x i8] }>
%G__0x57f570_type = type <{ [8 x i8] }>
%G__0x57f58c_type = type <{ [8 x i8] }>
%G__0x57f59e_type = type <{ [8 x i8] }>
%G__0x57f5bc_type = type <{ [8 x i8] }>
%G__0x57f5db_type = type <{ [8 x i8] }>
%G__0x57f5ee_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57f65f_type = type <{ [8 x i8] }>
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
@G_0x7ae43c = global %G_0x7ae43c_type zeroinitializer
@G_0x7afc58 = global %G_0x7afc58_type zeroinitializer
@G_0x7afc5c = global %G_0x7afc5c_type zeroinitializer
@G_0xab0ef8 = global %G_0xab0ef8_type zeroinitializer
@G_0xae239c = global %G_0xae239c_type zeroinitializer
@G_0xae23a0 = global %G_0xae23a0_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G_0xb8b850 = global %G_0xb8b850_type zeroinitializer
@G_0xb8b854 = global %G_0xb8b854_type zeroinitializer
@G__0x57dee3 = global %G__0x57dee3_type zeroinitializer
@G__0x57f55d = global %G__0x57f55d_type zeroinitializer
@G__0x57f570 = global %G__0x57f570_type zeroinitializer
@G__0x57f58c = global %G__0x57f58c_type zeroinitializer
@G__0x57f59e = global %G__0x57f59e_type zeroinitializer
@G__0x57f5bc = global %G__0x57f5bc_type zeroinitializer
@G__0x57f5db = global %G__0x57f5db_type zeroinitializer
@G__0x57f5ee = global %G__0x57f5ee_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57f65f = global %G__0x57f65f_type zeroinitializer

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

declare %struct.Memory* @sub_418320.sgf_trace2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4153e0.same_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_417ee0.get_read_result2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_453310.trivial_connection(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_453440.find_connection_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4549a0.recursive_disconnect2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @recursive_connect2(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4529f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4529f0, %struct.Memory** %MEMORY
  %loadMem_4529f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i953 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i954 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i953
  %27 = load i64, i64* %PC.i952
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i952
  store i64 %26, i64* %RBP.i954, align 8
  store %struct.Memory* %loadMem_4529f1, %struct.Memory** %MEMORY
  %loadMem_4529f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i951 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i951
  %36 = load i64, i64* %PC.i950
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i950
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_4529f4, %struct.Memory** %MEMORY
  %loadMem_4529f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i949 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i949
  %49 = load i64, i64* %PC.i948
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i948
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_4529f6, %struct.Memory** %MEMORY
  %loadMem_4529f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 27
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %R13.i947 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %R13.i947
  %62 = load i64, i64* %PC.i946
  %63 = add i64 %62, 2
  store i64 %63, i64* %PC.i946
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_4529f8, %struct.Memory** %MEMORY
  %loadMem_4529fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %R12.i945 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %R12.i945
  %75 = load i64, i64* %PC.i944
  %76 = add i64 %75, 2
  store i64 %76, i64* %PC.i944
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*
  store i64 %74, i64* %80
  store i64 %79, i64* %77, align 8
  store %struct.Memory* %loadMem_4529fa, %struct.Memory** %MEMORY
  %loadMem_4529fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RBX.i943 = bitcast %union.anon* %86 to i64*
  %87 = load i64, i64* %RBX.i943
  %88 = load i64, i64* %PC.i942
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC.i942
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8
  store %struct.Memory* %loadMem_4529fc, %struct.Memory** %MEMORY
  %loadMem_4529fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 13
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RSP.i941 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RSP.i941
  %101 = load i64, i64* %PC.i940
  %102 = add i64 %101, 7
  store i64 %102, i64* %PC.i940
  %103 = sub i64 %100, 1656
  store i64 %103, i64* %RSP.i941, align 8
  %104 = icmp ult i64 %100, 1656
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %105, i8* %106, align 1
  %107 = trunc i64 %103 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %113, align 1
  %114 = xor i64 1656, %100
  %115 = xor i64 %114, %103
  %116 = lshr i64 %115, 4
  %117 = trunc i64 %116 to i8
  %118 = and i8 %117, 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %118, i8* %119, align 1
  %120 = icmp eq i64 %103, 0
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %121, i8* %122, align 1
  %123 = lshr i64 %103, 63
  %124 = trunc i64 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %124, i8* %125, align 1
  %126 = lshr i64 %100, 63
  %127 = xor i64 %123, %126
  %128 = add i64 %127, %126
  %129 = icmp eq i64 %128, 2
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %130, i8* %131, align 1
  store %struct.Memory* %loadMem_4529fd, %struct.Memory** %MEMORY
  %loadMem_452a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RAX.i939 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %PC.i938
  %139 = add i64 %138, 10
  store i64 %139, i64* %PC.i938
  store i64 ptrtoint (%G__0x57f55d_type* @G__0x57f55d to i64), i64* %RAX.i939, align 8
  store %struct.Memory* %loadMem_452a04, %struct.Memory** %MEMORY
  %loadMem_452a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 11
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %EDI.i936 = bitcast %union.anon* %145 to i32*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RBP.i937
  %150 = sub i64 %149, 48
  %151 = load i32, i32* %EDI.i936
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC.i935
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i935
  %155 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %155
  store %struct.Memory* %loadMem_452a0e, %struct.Memory** %MEMORY
  %loadMem_452a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %ESI.i933 = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i934 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RBP.i934
  %166 = sub i64 %165, 52
  %167 = load i32, i32* %ESI.i933
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %PC.i932
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i932
  %171 = inttoptr i64 %166 to i32*
  store i32 %167, i32* %171
  store %struct.Memory* %loadMem_452a11, %struct.Memory** %MEMORY
  %loadMem_452a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RDX.i930 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 15
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %RBP.i931
  %182 = sub i64 %181, 64
  %183 = load i64, i64* %RDX.i930
  %184 = load i64, i64* %PC.i929
  %185 = add i64 %184, 4
  store i64 %185, i64* %PC.i929
  %186 = inttoptr i64 %182 to i64*
  store i64 %183, i64* %186
  store %struct.Memory* %loadMem_452a14, %struct.Memory** %MEMORY
  %loadMem_452a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %ECX.i927 = bitcast %union.anon* %192 to i32*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i928
  %197 = sub i64 %196, 68
  %198 = load i32, i32* %ECX.i927
  %199 = zext i32 %198 to i64
  %200 = load i64, i64* %PC.i926
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC.i926
  %202 = inttoptr i64 %197 to i32*
  store i32 %198, i32* %202
  store %struct.Memory* %loadMem_452a18, %struct.Memory** %MEMORY
  %loadMem_452a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 17
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %R8D.i924 = bitcast %union.anon* %208 to i32*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 15
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RBP.i925 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RBP.i925
  %213 = sub i64 %212, 72
  %214 = load i32, i32* %R8D.i924
  %215 = zext i32 %214 to i64
  %216 = load i64, i64* %PC.i923
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC.i923
  %218 = inttoptr i64 %213 to i32*
  store i32 %214, i32* %218
  store %struct.Memory* %loadMem_452a1b, %struct.Memory** %MEMORY
  %loadMem_452a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 19
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %R9D.i921 = bitcast %union.anon* %224 to i32*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i922 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RBP.i922
  %229 = sub i64 %228, 76
  %230 = load i32, i32* %R9D.i921
  %231 = zext i32 %230 to i64
  %232 = load i64, i64* %PC.i920
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC.i920
  %234 = inttoptr i64 %229 to i32*
  store i32 %230, i32* %234
  store %struct.Memory* %loadMem_452a1f, %struct.Memory** %MEMORY
  %loadMem_452a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 7
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RDX.i918 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i919 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RBP.i919
  %245 = sub i64 %244, 48
  %246 = load i64, i64* %PC.i917
  %247 = add i64 %246, 4
  store i64 %247, i64* %PC.i917
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RDX.i918, align 8
  store %struct.Memory* %loadMem_452a23, %struct.Memory** %MEMORY
  %loadMem_452a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 5
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RCX.i915 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 7
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RDX.i916 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %RDX.i916
  %261 = add i64 %260, 12099168
  %262 = load i64, i64* %PC.i914
  %263 = add i64 %262, 8
  store i64 %263, i64* %PC.i914
  %264 = inttoptr i64 %261 to i8*
  %265 = load i8, i8* %264
  %266 = zext i8 %265 to i64
  store i64 %266, i64* %RCX.i915, align 8
  store %struct.Memory* %loadMem_452a27, %struct.Memory** %MEMORY
  %loadMem_452a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %ECX.i912 = bitcast %union.anon* %272 to i32*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 15
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RBP.i913 = bitcast %union.anon* %275 to i64*
  %276 = load i64, i64* %RBP.i913
  %277 = sub i64 %276, 80
  %278 = load i32, i32* %ECX.i912
  %279 = zext i32 %278 to i64
  %280 = load i64, i64* %PC.i911
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC.i911
  %282 = inttoptr i64 %277 to i32*
  store i32 %278, i32* %282
  store %struct.Memory* %loadMem_452a2f, %struct.Memory** %MEMORY
  %loadMem_452a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 15
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBP.i910 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %RBP.i910
  %290 = sub i64 %289, 1544
  %291 = load i64, i64* %PC.i909
  %292 = add i64 %291, 10
  store i64 %292, i64* %PC.i909
  %293 = inttoptr i64 %290 to i32*
  store i32 0, i32* %293
  store %struct.Memory* %loadMem_452a32, %struct.Memory** %MEMORY
  %loadMem_452a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i908 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i908
  %301 = sub i64 %300, 1556
  %302 = load i64, i64* %PC.i907
  %303 = add i64 %302, 10
  store i64 %303, i64* %PC.i907
  %304 = inttoptr i64 %301 to i32*
  store i32 0, i32* %304
  store %struct.Memory* %loadMem_452a3c, %struct.Memory** %MEMORY
  %loadMem_452a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RBP.i906
  %312 = sub i64 %311, 1560
  %313 = load i64, i64* %PC.i905
  %314 = add i64 %313, 10
  store i64 %314, i64* %PC.i905
  %315 = inttoptr i64 %312 to i32*
  store i32 0, i32* %315
  store %struct.Memory* %loadMem_452a46, %struct.Memory** %MEMORY
  %loadMem_452a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 15
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %RBP.i904
  %323 = sub i64 %322, 1576
  %324 = load i64, i64* %PC.i903
  %325 = add i64 %324, 11
  store i64 %325, i64* %PC.i903
  %326 = inttoptr i64 %323 to i64*
  store i64 0, i64* %326
  store %struct.Memory* %loadMem_452a50, %struct.Memory** %MEMORY
  %loadMem_452a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 33
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RAX.i901 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 15
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RBP.i902 = bitcast %union.anon* %335 to i64*
  %336 = load i64, i64* %RBP.i902
  %337 = sub i64 %336, 1584
  %338 = load i64, i64* %RAX.i901
  %339 = load i64, i64* %PC.i900
  %340 = add i64 %339, 7
  store i64 %340, i64* %PC.i900
  %341 = inttoptr i64 %337 to i64*
  store i64 %338, i64* %341
  store %struct.Memory* %loadMem_452a5b, %struct.Memory** %MEMORY
  %loadMem_452a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 5
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RCX.i898 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i899 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i899
  %352 = sub i64 %351, 48
  %353 = load i64, i64* %PC.i897
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC.i897
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RCX.i898, align 8
  store %struct.Memory* %loadMem_452a62, %struct.Memory** %MEMORY
  %loadMem_452a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %ECX.i895 = bitcast %union.anon* %363 to i32*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i896
  %368 = sub i64 %367, 1588
  %369 = load i32, i32* %ECX.i895
  %370 = zext i32 %369 to i64
  %371 = load i64, i64* %PC.i894
  %372 = add i64 %371, 6
  store i64 %372, i64* %PC.i894
  %373 = inttoptr i64 %368 to i32*
  store i32 %369, i32* %373
  store %struct.Memory* %loadMem_452a65, %struct.Memory** %MEMORY
  %loadMem_452a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i892 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i893
  %384 = sub i64 %383, 52
  %385 = load i64, i64* %PC.i891
  %386 = add i64 %385, 3
  store i64 %386, i64* %PC.i891
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %RCX.i892, align 8
  store %struct.Memory* %loadMem_452a6b, %struct.Memory** %MEMORY
  %loadMem_452a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 5
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %ECX.i889 = bitcast %union.anon* %395 to i32*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 15
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RBP.i890 = bitcast %union.anon* %398 to i64*
  %399 = load i64, i64* %RBP.i890
  %400 = sub i64 %399, 1592
  %401 = load i32, i32* %ECX.i889
  %402 = zext i32 %401 to i64
  %403 = load i64, i64* %PC.i888
  %404 = add i64 %403, 6
  store i64 %404, i64* %PC.i888
  %405 = inttoptr i64 %400 to i32*
  store i32 %401, i32* %405
  store %struct.Memory* %loadMem_452a6e, %struct.Memory** %MEMORY
  %loadMem_452a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i887
  %413 = sub i64 %412, 64
  %414 = load i64, i64* %PC.i886
  %415 = add i64 %414, 5
  store i64 %415, i64* %PC.i886
  %416 = inttoptr i64 %413 to i64*
  %417 = load i64, i64* %416
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %418, align 1
  %419 = trunc i64 %417 to i32
  %420 = and i32 %419, 255
  %421 = call i32 @llvm.ctpop.i32(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %424, i8* %425, align 1
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %426, align 1
  %427 = icmp eq i64 %417, 0
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %428, i8* %429, align 1
  %430 = lshr i64 %417, 63
  %431 = trunc i64 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %431, i8* %432, align 1
  %433 = lshr i64 %417, 63
  %434 = xor i64 %430, %433
  %435 = add i64 %434, %433
  %436 = icmp eq i64 %435, 2
  %437 = zext i1 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %437, i8* %438, align 1
  store %struct.Memory* %loadMem_452a74, %struct.Memory** %MEMORY
  %loadMem_452a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 33
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %PC.i885
  %443 = add i64 %442, 16
  %444 = load i64, i64* %PC.i885
  %445 = add i64 %444, 6
  %446 = load i64, i64* %PC.i885
  %447 = add i64 %446, 6
  store i64 %447, i64* %PC.i885
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %449 = load i8, i8* %448, align 1
  store i8 %449, i8* %BRANCH_TAKEN, align 1
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %451 = icmp ne i8 %449, 0
  %452 = select i1 %451, i64 %443, i64 %445
  store i64 %452, i64* %450, align 8
  store %struct.Memory* %loadMem_452a79, %struct.Memory** %MEMORY
  %loadBr_452a79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452a79 = icmp eq i8 %loadBr_452a79, 1
  br i1 %cmpBr_452a79, label %block_.L_452a89, label %block_452a7f

block_452a7f:                                     ; preds = %entry
  %loadMem_452a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 15
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %461 to i64*
  %462 = load i64, i64* %RBP.i884
  %463 = sub i64 %462, 64
  %464 = load i64, i64* %PC.i882
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC.i882
  %466 = inttoptr i64 %463 to i64*
  %467 = load i64, i64* %466
  store i64 %467, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_452a7f, %struct.Memory** %MEMORY
  %loadMem_452a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RAX.i881
  %475 = load i64, i64* %PC.i880
  %476 = add i64 %475, 6
  store i64 %476, i64* %PC.i880
  %477 = inttoptr i64 %474 to i32*
  store i32 0, i32* %477
  store %struct.Memory* %loadMem_452a83, %struct.Memory** %MEMORY
  br label %block_.L_452a89

block_.L_452a89:                                  ; preds = %block_452a7f, %entry
  %loadMem_452a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 1
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %RAX.i879 = bitcast %union.anon* %483 to i64*
  %484 = load i64, i64* %PC.i878
  %485 = add i64 %484, 7
  store i64 %485, i64* %PC.i878
  %486 = load i32, i32* bitcast (%G_0xae239c_type* @G_0xae239c to i32*)
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RAX.i879, align 8
  store %struct.Memory* %loadMem_452a89, %struct.Memory** %MEMORY
  %loadMem_452a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %493 to i64*
  %494 = load i64, i64* %RAX.i877
  %495 = load i64, i64* %PC.i876
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC.i876
  %497 = trunc i64 %494 to i32
  %498 = add i32 1, %497
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i877, align 8
  %500 = icmp ult i32 %498, %497
  %501 = icmp ult i32 %498, 1
  %502 = or i1 %500, %501
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %503, i8* %504, align 1
  %505 = and i32 %498, 255
  %506 = call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %509, i8* %510, align 1
  %511 = xor i64 1, %494
  %512 = trunc i64 %511 to i32
  %513 = xor i32 %512, %498
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %516, i8* %517, align 1
  %518 = icmp eq i32 %498, 0
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %519, i8* %520, align 1
  %521 = lshr i32 %498, 31
  %522 = trunc i32 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %522, i8* %523, align 1
  %524 = lshr i32 %497, 31
  %525 = xor i32 %521, %524
  %526 = add i32 %525, %521
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %528, i8* %529, align 1
  store %struct.Memory* %loadMem_452a90, %struct.Memory** %MEMORY
  %loadMem_452a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %EAX.i875 = bitcast %union.anon* %535 to i32*
  %536 = load i32, i32* %EAX.i875
  %537 = zext i32 %536 to i64
  %538 = load i64, i64* %PC.i874
  %539 = add i64 %538, 7
  store i64 %539, i64* %PC.i874
  store i32 %536, i32* bitcast (%G_0xae239c_type* @G_0xae239c to i32*)
  store %struct.Memory* %loadMem_452a93, %struct.Memory** %MEMORY
  %loadMem_452a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RAX.i873 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %PC.i872
  %547 = add i64 %546, 7
  store i64 %547, i64* %PC.i872
  %548 = load i32, i32* bitcast (%G_0xae23a0_type* @G_0xae23a0 to i32*)
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX.i873, align 8
  store %struct.Memory* %loadMem_452a9a, %struct.Memory** %MEMORY
  %loadMem_452aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RAX.i871 = bitcast %union.anon* %555 to i64*
  %556 = load i64, i64* %RAX.i871
  %557 = load i64, i64* %PC.i870
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC.i870
  %559 = trunc i64 %556 to i32
  %560 = add i32 1, %559
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RAX.i871, align 8
  %562 = icmp ult i32 %560, %559
  %563 = icmp ult i32 %560, 1
  %564 = or i1 %562, %563
  %565 = zext i1 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %565, i8* %566, align 1
  %567 = and i32 %560, 255
  %568 = call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %571, i8* %572, align 1
  %573 = xor i64 1, %556
  %574 = trunc i64 %573 to i32
  %575 = xor i32 %574, %560
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %578, i8* %579, align 1
  %580 = icmp eq i32 %560, 0
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %581, i8* %582, align 1
  %583 = lshr i32 %560, 31
  %584 = trunc i32 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %584, i8* %585, align 1
  %586 = lshr i32 %559, 31
  %587 = xor i32 %583, %586
  %588 = add i32 %587, %583
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %590, i8* %591, align 1
  store %struct.Memory* %loadMem_452aa1, %struct.Memory** %MEMORY
  %loadMem_452aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 1
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %EAX.i869 = bitcast %union.anon* %597 to i32*
  %598 = load i32, i32* %EAX.i869
  %599 = zext i32 %598 to i64
  %600 = load i64, i64* %PC.i868
  %601 = add i64 %600, 7
  store i64 %601, i64* %PC.i868
  store i32 %598, i32* bitcast (%G_0xae23a0_type* @G_0xae23a0 to i32*)
  store %struct.Memory* %loadMem_452aa4, %struct.Memory** %MEMORY
  %loadMem_452aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %604 to i64*
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 5
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 15
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RBP.i867 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %RBP.i867
  %612 = sub i64 %611, 48
  %613 = load i64, i64* %PC.i865
  %614 = add i64 %613, 4
  store i64 %614, i64* %PC.i865
  %615 = inttoptr i64 %612 to i32*
  %616 = load i32, i32* %615
  %617 = sext i32 %616 to i64
  store i64 %617, i64* %RCX.i866, align 8
  store %struct.Memory* %loadMem_452aab, %struct.Memory** %MEMORY
  %loadMem_452aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 33
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 1
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %RAX.i863 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 5
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RCX.i864 = bitcast %union.anon* %626 to i64*
  %627 = load i64, i64* %RCX.i864
  %628 = add i64 %627, 12099168
  %629 = load i64, i64* %PC.i862
  %630 = add i64 %629, 8
  store i64 %630, i64* %PC.i862
  %631 = inttoptr i64 %628 to i8*
  %632 = load i8, i8* %631
  %633 = zext i8 %632 to i64
  store i64 %633, i64* %RAX.i863, align 8
  store %struct.Memory* %loadMem_452aaf, %struct.Memory** %MEMORY
  %loadMem_452ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %EAX.i861 = bitcast %union.anon* %639 to i32*
  %640 = load i32, i32* %EAX.i861
  %641 = zext i32 %640 to i64
  %642 = load i64, i64* %PC.i860
  %643 = add i64 %642, 3
  store i64 %643, i64* %PC.i860
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %644, align 1
  %645 = and i32 %640, 255
  %646 = call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %649, i8* %650, align 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %651, align 1
  %652 = icmp eq i32 %640, 0
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %653, i8* %654, align 1
  %655 = lshr i32 %640, 31
  %656 = trunc i32 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %656, i8* %657, align 1
  %658 = lshr i32 %640, 31
  %659 = xor i32 %655, %658
  %660 = add i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %662, i8* %663, align 1
  store %struct.Memory* %loadMem_452ab7, %struct.Memory** %MEMORY
  %loadMem_452aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 33
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %PC.i859
  %668 = add i64 %667, 27
  %669 = load i64, i64* %PC.i859
  %670 = add i64 %669, 6
  %671 = load i64, i64* %PC.i859
  %672 = add i64 %671, 6
  store i64 %672, i64* %PC.i859
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %674 = load i8, i8* %673, align 1
  store i8 %674, i8* %BRANCH_TAKEN, align 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %676 = icmp ne i8 %674, 0
  %677 = select i1 %676, i64 %668, i64 %670
  store i64 %677, i64* %675, align 8
  store %struct.Memory* %loadMem_452aba, %struct.Memory** %MEMORY
  %loadBr_452aba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452aba = icmp eq i8 %loadBr_452aba, 1
  br i1 %cmpBr_452aba, label %block_.L_452ad5, label %block_452ac0

block_452ac0:                                     ; preds = %block_.L_452a89
  %loadMem_452ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 33
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 1
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 15
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %RBP.i858
  %688 = sub i64 %687, 52
  %689 = load i64, i64* %PC.i856
  %690 = add i64 %689, 4
  store i64 %690, i64* %PC.i856
  %691 = inttoptr i64 %688 to i32*
  %692 = load i32, i32* %691
  %693 = sext i32 %692 to i64
  store i64 %693, i64* %RAX.i857, align 8
  store %struct.Memory* %loadMem_452ac0, %struct.Memory** %MEMORY
  %loadMem_452ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RAX.i854 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 5
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RCX.i855 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RAX.i854
  %704 = add i64 %703, 12099168
  %705 = load i64, i64* %PC.i853
  %706 = add i64 %705, 8
  store i64 %706, i64* %PC.i853
  %707 = inttoptr i64 %704 to i8*
  %708 = load i8, i8* %707
  %709 = zext i8 %708 to i64
  store i64 %709, i64* %RCX.i855, align 8
  store %struct.Memory* %loadMem_452ac4, %struct.Memory** %MEMORY
  %loadMem_452acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 5
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %ECX.i852 = bitcast %union.anon* %715 to i32*
  %716 = load i32, i32* %ECX.i852
  %717 = zext i32 %716 to i64
  %718 = load i64, i64* %PC.i851
  %719 = add i64 %718, 3
  store i64 %719, i64* %PC.i851
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %720, align 1
  %721 = and i32 %716, 255
  %722 = call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %725, i8* %726, align 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %727, align 1
  %728 = icmp eq i32 %716, 0
  %729 = zext i1 %728 to i8
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %729, i8* %730, align 1
  %731 = lshr i32 %716, 31
  %732 = trunc i32 %731 to i8
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %732, i8* %733, align 1
  %734 = lshr i32 %716, 31
  %735 = xor i32 %731, %734
  %736 = add i32 %735, %734
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %738, i8* %739, align 1
  store %struct.Memory* %loadMem_452acc, %struct.Memory** %MEMORY
  %loadMem_452acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %PC.i850
  %744 = add i64 %743, 74
  %745 = load i64, i64* %PC.i850
  %746 = add i64 %745, 6
  %747 = load i64, i64* %PC.i850
  %748 = add i64 %747, 6
  store i64 %748, i64* %PC.i850
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %750 = load i8, i8* %749, align 1
  %751 = icmp eq i8 %750, 0
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %BRANCH_TAKEN, align 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %754 = select i1 %751, i64 %744, i64 %746
  store i64 %754, i64* %753, align 8
  store %struct.Memory* %loadMem_452acf, %struct.Memory** %MEMORY
  %loadBr_452acf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452acf = icmp eq i8 %loadBr_452acf, 1
  br i1 %cmpBr_452acf, label %block_.L_452b19, label %block_.L_452ad5

block_.L_452ad5:                                  ; preds = %block_452ac0, %block_.L_452a89
  %loadMem_452ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %PC.i849
  %759 = add i64 %758, 9
  store i64 %759, i64* %PC.i849
  %760 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %761, align 1
  %762 = trunc i64 %760 to i32
  %763 = and i32 %762, 255
  %764 = call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %767, i8* %768, align 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %769, align 1
  %770 = icmp eq i64 %760, 0
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %771, i8* %772, align 1
  %773 = lshr i64 %760, 63
  %774 = trunc i64 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %774, i8* %775, align 1
  %776 = lshr i64 %760, 63
  %777 = xor i64 %773, %776
  %778 = add i64 %777, %776
  %779 = icmp eq i64 %778, 2
  %780 = zext i1 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %780, i8* %781, align 1
  store %struct.Memory* %loadMem_452ad5, %struct.Memory** %MEMORY
  %loadMem_452ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %PC.i848
  %786 = add i64 %785, 47
  %787 = load i64, i64* %PC.i848
  %788 = add i64 %787, 6
  %789 = load i64, i64* %PC.i848
  %790 = add i64 %789, 6
  store i64 %790, i64* %PC.i848
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %792 = load i8, i8* %791, align 1
  store i8 %792, i8* %BRANCH_TAKEN, align 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %794 = icmp ne i8 %792, 0
  %795 = select i1 %794, i64 %786, i64 %788
  store i64 %795, i64* %793, align 8
  store %struct.Memory* %loadMem_452ade, %struct.Memory** %MEMORY
  %loadBr_452ade = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452ade = icmp eq i8 %loadBr_452ade, 1
  br i1 %cmpBr_452ade, label %block_.L_452b0d, label %block_452ae4

block_452ae4:                                     ; preds = %block_.L_452ad5
  %loadMem_452ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %EAX.i846 = bitcast %union.anon* %801 to i32*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 1
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RAX.i847 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %RAX.i847
  %806 = load i32, i32* %EAX.i846
  %807 = zext i32 %806 to i64
  %808 = load i64, i64* %PC.i845
  %809 = add i64 %808, 2
  store i64 %809, i64* %PC.i845
  %810 = xor i64 %807, %805
  %811 = trunc i64 %810 to i32
  %812 = and i64 %810, 4294967295
  store i64 %812, i64* %RAX.i847, align 8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %813, align 1
  %814 = and i32 %811, 255
  %815 = call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %818, i8* %819, align 1
  %820 = icmp eq i32 %811, 0
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %821, i8* %822, align 1
  %823 = lshr i32 %811, 31
  %824 = trunc i32 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %824, i8* %825, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %826, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %827, align 1
  store %struct.Memory* %loadMem_452ae4, %struct.Memory** %MEMORY
  %loadMem_452ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 19
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %R9.i844 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %PC.i843
  %835 = add i64 %834, 10
  store i64 %835, i64* %PC.i843
  store i64 ptrtoint (%G__0x57f570_type* @G__0x57f570 to i64), i64* %R9.i844, align 8
  store %struct.Memory* %loadMem_452ae6, %struct.Memory** %MEMORY
  %loadMem_452af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 11
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RDI.i841 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RBP.i842
  %846 = sub i64 %845, 1584
  %847 = load i64, i64* %PC.i840
  %848 = add i64 %847, 7
  store i64 %848, i64* %PC.i840
  %849 = inttoptr i64 %846 to i64*
  %850 = load i64, i64* %849
  store i64 %850, i64* %RDI.i841, align 8
  store %struct.Memory* %loadMem_452af0, %struct.Memory** %MEMORY
  %loadMem_452af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 9
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RSI.i838 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 15
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RBP.i839 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %RBP.i839
  %861 = sub i64 %860, 1588
  %862 = load i64, i64* %PC.i837
  %863 = add i64 %862, 6
  store i64 %863, i64* %PC.i837
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RSI.i838, align 8
  store %struct.Memory* %loadMem_452af7, %struct.Memory** %MEMORY
  %loadMem_452afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 7
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RDX.i835 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 15
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RBP.i836
  %877 = sub i64 %876, 1592
  %878 = load i64, i64* %PC.i834
  %879 = add i64 %878, 6
  store i64 %879, i64* %PC.i834
  %880 = inttoptr i64 %877 to i32*
  %881 = load i32, i32* %880
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RDX.i835, align 8
  store %struct.Memory* %loadMem_452afd, %struct.Memory** %MEMORY
  %loadMem_452b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %EAX.i832 = bitcast %union.anon* %888 to i32*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 5
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RCX.i833 = bitcast %union.anon* %891 to i64*
  %892 = load i32, i32* %EAX.i832
  %893 = zext i32 %892 to i64
  %894 = load i64, i64* %PC.i831
  %895 = add i64 %894, 2
  store i64 %895, i64* %PC.i831
  %896 = and i64 %893, 4294967295
  store i64 %896, i64* %RCX.i833, align 8
  store %struct.Memory* %loadMem_452b03, %struct.Memory** %MEMORY
  %loadMem_452b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 1
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %EAX.i829 = bitcast %union.anon* %902 to i32*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 17
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %R8D.i830 = bitcast %union.anon* %905 to i32*
  %906 = bitcast i32* %R8D.i830 to i64*
  %907 = load i32, i32* %EAX.i829
  %908 = zext i32 %907 to i64
  %909 = load i64, i64* %PC.i828
  %910 = add i64 %909, 3
  store i64 %910, i64* %PC.i828
  %911 = and i64 %908, 4294967295
  store i64 %911, i64* %906, align 8
  store %struct.Memory* %loadMem_452b05, %struct.Memory** %MEMORY
  %loadMem1_452b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %914 to i64*
  %915 = load i64, i64* %PC.i827
  %916 = add i64 %915, -239592
  %917 = load i64, i64* %PC.i827
  %918 = add i64 %917, 5
  %919 = load i64, i64* %PC.i827
  %920 = add i64 %919, 5
  store i64 %920, i64* %PC.i827
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %922 = load i64, i64* %921, align 8
  %923 = add i64 %922, -8
  %924 = inttoptr i64 %923 to i64*
  store i64 %918, i64* %924
  store i64 %923, i64* %921, align 8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %916, i64* %925, align 8
  store %struct.Memory* %loadMem1_452b08, %struct.Memory** %MEMORY
  %loadMem2_452b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452b08 = load i64, i64* %3
  %call2_452b08 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_452b08, %struct.Memory* %loadMem2_452b08)
  store %struct.Memory* %call2_452b08, %struct.Memory** %MEMORY
  br label %block_.L_452b0d

block_.L_452b0d:                                  ; preds = %block_452ae4, %block_.L_452ad5
  %loadMem_452b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 15
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RBP.i826 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RBP.i826
  %933 = sub i64 %932, 44
  %934 = load i64, i64* %PC.i825
  %935 = add i64 %934, 7
  store i64 %935, i64* %PC.i825
  %936 = inttoptr i64 %933 to i32*
  store i32 0, i32* %936
  store %struct.Memory* %loadMem_452b0d, %struct.Memory** %MEMORY
  %loadMem_452b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %PC.i824
  %941 = add i64 %940, 2009
  %942 = load i64, i64* %PC.i824
  %943 = add i64 %942, 5
  store i64 %943, i64* %PC.i824
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %941, i64* %944, align 8
  store %struct.Memory* %loadMem_452b14, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_452b19:                                  ; preds = %block_452ac0
  %loadMem_452b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 11
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RDI.i822 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 15
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %RBP.i823
  %955 = sub i64 %954, 48
  %956 = load i64, i64* %PC.i821
  %957 = add i64 %956, 3
  store i64 %957, i64* %PC.i821
  %958 = inttoptr i64 %955 to i32*
  %959 = load i32, i32* %958
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RDI.i822, align 8
  store %struct.Memory* %loadMem_452b19, %struct.Memory** %MEMORY
  %loadMem_452b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 33
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 9
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RSI.i819 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 15
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %969 to i64*
  %970 = load i64, i64* %RBP.i820
  %971 = sub i64 %970, 52
  %972 = load i64, i64* %PC.i818
  %973 = add i64 %972, 3
  store i64 %973, i64* %PC.i818
  %974 = inttoptr i64 %971 to i32*
  %975 = load i32, i32* %974
  %976 = zext i32 %975 to i64
  store i64 %976, i64* %RSI.i819, align 8
  store %struct.Memory* %loadMem_452b1c, %struct.Memory** %MEMORY
  %loadMem1_452b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %PC.i817
  %981 = add i64 %980, -251711
  %982 = load i64, i64* %PC.i817
  %983 = add i64 %982, 5
  %984 = load i64, i64* %PC.i817
  %985 = add i64 %984, 5
  store i64 %985, i64* %PC.i817
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %987 = load i64, i64* %986, align 8
  %988 = add i64 %987, -8
  %989 = inttoptr i64 %988 to i64*
  store i64 %983, i64* %989
  store i64 %988, i64* %986, align 8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %981, i64* %990, align 8
  store %struct.Memory* %loadMem1_452b1f, %struct.Memory** %MEMORY
  %loadMem2_452b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452b1f = load i64, i64* %3
  %call2_452b1f = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64 %loadPC_452b1f, %struct.Memory* %loadMem2_452b1f)
  store %struct.Memory* %call2_452b1f, %struct.Memory** %MEMORY
  %loadMem_452b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %EAX.i816 = bitcast %union.anon* %996 to i32*
  %997 = load i32, i32* %EAX.i816
  %998 = zext i32 %997 to i64
  %999 = load i64, i64* %PC.i815
  %1000 = add i64 %999, 3
  store i64 %1000, i64* %PC.i815
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1001, align 1
  %1002 = and i32 %997, 255
  %1003 = call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1006, i8* %1007, align 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1008, align 1
  %1009 = icmp eq i32 %997, 0
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1010, i8* %1011, align 1
  %1012 = lshr i32 %997, 31
  %1013 = trunc i32 %1012 to i8
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1013, i8* %1014, align 1
  %1015 = lshr i32 %997, 31
  %1016 = xor i32 %1012, %1015
  %1017 = add i32 %1016, %1015
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1019, i8* %1020, align 1
  store %struct.Memory* %loadMem_452b24, %struct.Memory** %MEMORY
  %loadMem_452b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1023 to i64*
  %1024 = load i64, i64* %PC.i814
  %1025 = add i64 %1024, 75
  %1026 = load i64, i64* %PC.i814
  %1027 = add i64 %1026, 6
  %1028 = load i64, i64* %PC.i814
  %1029 = add i64 %1028, 6
  store i64 %1029, i64* %PC.i814
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1031 = load i8, i8* %1030, align 1
  store i8 %1031, i8* %BRANCH_TAKEN, align 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1033 = icmp ne i8 %1031, 0
  %1034 = select i1 %1033, i64 %1025, i64 %1027
  store i64 %1034, i64* %1032, align 8
  store %struct.Memory* %loadMem_452b27, %struct.Memory** %MEMORY
  %loadBr_452b27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452b27 = icmp eq i8 %loadBr_452b27, 1
  br i1 %cmpBr_452b27, label %block_.L_452b72, label %block_452b2d

block_452b2d:                                     ; preds = %block_.L_452b19
  %loadMem_452b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %PC.i813
  %1039 = add i64 %1038, 9
  store i64 %1039, i64* %PC.i813
  %1040 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1041, align 1
  %1042 = trunc i64 %1040 to i32
  %1043 = and i32 %1042, 255
  %1044 = call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1047, i8* %1048, align 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1049, align 1
  %1050 = icmp eq i64 %1040, 0
  %1051 = zext i1 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1051, i8* %1052, align 1
  %1053 = lshr i64 %1040, 63
  %1054 = trunc i64 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1054, i8* %1055, align 1
  %1056 = lshr i64 %1040, 63
  %1057 = xor i64 %1053, %1056
  %1058 = add i64 %1057, %1056
  %1059 = icmp eq i64 %1058, 2
  %1060 = zext i1 %1059 to i8
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1060, i8* %1061, align 1
  store %struct.Memory* %loadMem_452b2d, %struct.Memory** %MEMORY
  %loadMem_452b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 33
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %PC.i812
  %1066 = add i64 %1065, 48
  %1067 = load i64, i64* %PC.i812
  %1068 = add i64 %1067, 6
  %1069 = load i64, i64* %PC.i812
  %1070 = add i64 %1069, 6
  store i64 %1070, i64* %PC.i812
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1072 = load i8, i8* %1071, align 1
  store i8 %1072, i8* %BRANCH_TAKEN, align 1
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1074 = icmp ne i8 %1072, 0
  %1075 = select i1 %1074, i64 %1066, i64 %1068
  store i64 %1075, i64* %1073, align 8
  store %struct.Memory* %loadMem_452b36, %struct.Memory** %MEMORY
  %loadBr_452b36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452b36 = icmp eq i8 %loadBr_452b36, 1
  br i1 %cmpBr_452b36, label %block_.L_452b66, label %block_452b3c

block_452b3c:                                     ; preds = %block_452b2d
  %loadMem_452b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 5
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %ECX.i810 = bitcast %union.anon* %1081 to i32*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 5
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RCX.i811 = bitcast %union.anon* %1084 to i64*
  %1085 = load i64, i64* %RCX.i811
  %1086 = load i32, i32* %ECX.i810
  %1087 = zext i32 %1086 to i64
  %1088 = load i64, i64* %PC.i809
  %1089 = add i64 %1088, 2
  store i64 %1089, i64* %PC.i809
  %1090 = xor i64 %1087, %1085
  %1091 = trunc i64 %1090 to i32
  %1092 = and i64 %1090, 4294967295
  store i64 %1092, i64* %RCX.i811, align 8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1093, align 1
  %1094 = and i32 %1091, 255
  %1095 = call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1098, i8* %1099, align 1
  %1100 = icmp eq i32 %1091, 0
  %1101 = zext i1 %1100 to i8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1101, i8* %1102, align 1
  %1103 = lshr i32 %1091, 31
  %1104 = trunc i32 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1104, i8* %1105, align 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1106, align 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1107, align 1
  store %struct.Memory* %loadMem_452b3c, %struct.Memory** %MEMORY
  %loadMem_452b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 17
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %R8D.i808 = bitcast %union.anon* %1113 to i32*
  %1114 = bitcast i32* %R8D.i808 to i64*
  %1115 = load i64, i64* %PC.i807
  %1116 = add i64 %1115, 6
  store i64 %1116, i64* %PC.i807
  store i64 5, i64* %1114, align 8
  store %struct.Memory* %loadMem_452b3e, %struct.Memory** %MEMORY
  %loadMem_452b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 19
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %R9.i806 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %PC.i805
  %1124 = add i64 %1123, 10
  store i64 %1124, i64* %PC.i805
  store i64 ptrtoint (%G__0x57f58c_type* @G__0x57f58c to i64), i64* %R9.i806, align 8
  store %struct.Memory* %loadMem_452b44, %struct.Memory** %MEMORY
  %loadMem_452b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 11
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RDI.i803 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 15
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RBP.i804
  %1135 = sub i64 %1134, 1584
  %1136 = load i64, i64* %PC.i802
  %1137 = add i64 %1136, 7
  store i64 %1137, i64* %PC.i802
  %1138 = inttoptr i64 %1135 to i64*
  %1139 = load i64, i64* %1138
  store i64 %1139, i64* %RDI.i803, align 8
  store %struct.Memory* %loadMem_452b4e, %struct.Memory** %MEMORY
  %loadMem_452b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 9
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RSI.i800 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 15
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1148 to i64*
  %1149 = load i64, i64* %RBP.i801
  %1150 = sub i64 %1149, 1588
  %1151 = load i64, i64* %PC.i799
  %1152 = add i64 %1151, 6
  store i64 %1152, i64* %PC.i799
  %1153 = inttoptr i64 %1150 to i32*
  %1154 = load i32, i32* %1153
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RSI.i800, align 8
  store %struct.Memory* %loadMem_452b55, %struct.Memory** %MEMORY
  %loadMem_452b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 7
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RDX.i797 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 15
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %1164 to i64*
  %1165 = load i64, i64* %RBP.i798
  %1166 = sub i64 %1165, 1592
  %1167 = load i64, i64* %PC.i796
  %1168 = add i64 %1167, 6
  store i64 %1168, i64* %PC.i796
  %1169 = inttoptr i64 %1166 to i32*
  %1170 = load i32, i32* %1169
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RDX.i797, align 8
  store %struct.Memory* %loadMem_452b5b, %struct.Memory** %MEMORY
  %loadMem1_452b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %PC.i795
  %1176 = add i64 %1175, -239681
  %1177 = load i64, i64* %PC.i795
  %1178 = add i64 %1177, 5
  %1179 = load i64, i64* %PC.i795
  %1180 = add i64 %1179, 5
  store i64 %1180, i64* %PC.i795
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1182 = load i64, i64* %1181, align 8
  %1183 = add i64 %1182, -8
  %1184 = inttoptr i64 %1183 to i64*
  store i64 %1178, i64* %1184
  store i64 %1183, i64* %1181, align 8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1176, i64* %1185, align 8
  store %struct.Memory* %loadMem1_452b61, %struct.Memory** %MEMORY
  %loadMem2_452b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452b61 = load i64, i64* %3
  %call2_452b61 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_452b61, %struct.Memory* %loadMem2_452b61)
  store %struct.Memory* %call2_452b61, %struct.Memory** %MEMORY
  br label %block_.L_452b66

block_.L_452b66:                                  ; preds = %block_452b3c, %block_452b2d
  %loadMem_452b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1187 = getelementptr inbounds %struct.GPR, %struct.GPR* %1186, i32 0, i32 33
  %1188 = getelementptr inbounds %struct.Reg, %struct.Reg* %1187, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1188 to i64*
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 15
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %RBP.i794
  %1193 = sub i64 %1192, 44
  %1194 = load i64, i64* %PC.i793
  %1195 = add i64 %1194, 7
  store i64 %1195, i64* %PC.i793
  %1196 = inttoptr i64 %1193 to i32*
  store i32 5, i32* %1196
  store %struct.Memory* %loadMem_452b66, %struct.Memory** %MEMORY
  %loadMem_452b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %PC.i792
  %1201 = add i64 %1200, 1920
  %1202 = load i64, i64* %PC.i792
  %1203 = add i64 %1202, 5
  store i64 %1203, i64* %PC.i792
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1201, i64* %1204, align 8
  store %struct.Memory* %loadMem_452b6d, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_452b72:                                  ; preds = %block_.L_452b19
  %loadMem_452b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 33
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 1
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %1210 to i64*
  %1211 = load i64, i64* %PC.i790
  %1212 = add i64 %1211, 7
  store i64 %1212, i64* %PC.i790
  %1213 = load i32, i32* bitcast (%G_0xae239c_type* @G_0xae239c to i32*)
  %1214 = zext i32 %1213 to i64
  store i64 %1214, i64* %RAX.i791, align 8
  store %struct.Memory* %loadMem_452b72, %struct.Memory** %MEMORY
  %loadMem_452b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 33
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 1
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %EAX.i789 = bitcast %union.anon* %1220 to i32*
  %1221 = load i32, i32* %EAX.i789
  %1222 = zext i32 %1221 to i64
  %1223 = load i64, i64* %PC.i788
  %1224 = add i64 %1223, 7
  store i64 %1224, i64* %PC.i788
  %1225 = load i32, i32* bitcast (%G_0x7afc58_type* @G_0x7afc58 to i32*)
  %1226 = sub i32 %1221, %1225
  %1227 = icmp ult i32 %1221, %1225
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1228, i8* %1229, align 1
  %1230 = and i32 %1226, 255
  %1231 = call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1234, i8* %1235, align 1
  %1236 = xor i32 %1225, %1221
  %1237 = xor i32 %1236, %1226
  %1238 = lshr i32 %1237, 4
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1240, i8* %1241, align 1
  %1242 = icmp eq i32 %1226, 0
  %1243 = zext i1 %1242 to i8
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1243, i8* %1244, align 1
  %1245 = lshr i32 %1226, 31
  %1246 = trunc i32 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1246, i8* %1247, align 1
  %1248 = lshr i32 %1221, 31
  %1249 = lshr i32 %1225, 31
  %1250 = xor i32 %1249, %1248
  %1251 = xor i32 %1245, %1248
  %1252 = add i32 %1251, %1250
  %1253 = icmp eq i32 %1252, 2
  %1254 = zext i1 %1253 to i8
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1254, i8* %1255, align 1
  store %struct.Memory* %loadMem_452b79, %struct.Memory** %MEMORY
  %loadMem_452b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1258 to i64*
  %1259 = load i64, i64* %PC.i787
  %1260 = add i64 %1259, 74
  %1261 = load i64, i64* %PC.i787
  %1262 = add i64 %1261, 6
  %1263 = load i64, i64* %PC.i787
  %1264 = add i64 %1263, 6
  store i64 %1264, i64* %PC.i787
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1266 = load i8, i8* %1265, align 1
  %1267 = icmp ne i8 %1266, 0
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1269 = load i8, i8* %1268, align 1
  %1270 = icmp ne i8 %1269, 0
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1272 = load i8, i8* %1271, align 1
  %1273 = icmp ne i8 %1272, 0
  %1274 = xor i1 %1270, %1273
  %1275 = or i1 %1267, %1274
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %BRANCH_TAKEN, align 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1278 = select i1 %1275, i64 %1260, i64 %1262
  store i64 %1278, i64* %1277, align 8
  store %struct.Memory* %loadMem_452b80, %struct.Memory** %MEMORY
  %loadBr_452b80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452b80 = icmp eq i8 %loadBr_452b80, 1
  br i1 %cmpBr_452b80, label %block_.L_452bca, label %block_452b86

block_452b86:                                     ; preds = %block_.L_452b72
  %loadMem_452b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %PC.i786
  %1283 = add i64 %1282, 9
  store i64 %1283, i64* %PC.i786
  %1284 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1285, align 1
  %1286 = trunc i64 %1284 to i32
  %1287 = and i32 %1286, 255
  %1288 = call i32 @llvm.ctpop.i32(i32 %1287)
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1291, i8* %1292, align 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1293, align 1
  %1294 = icmp eq i64 %1284, 0
  %1295 = zext i1 %1294 to i8
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1295, i8* %1296, align 1
  %1297 = lshr i64 %1284, 63
  %1298 = trunc i64 %1297 to i8
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1298, i8* %1299, align 1
  %1300 = lshr i64 %1284, 63
  %1301 = xor i64 %1297, %1300
  %1302 = add i64 %1301, %1300
  %1303 = icmp eq i64 %1302, 2
  %1304 = zext i1 %1303 to i8
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1304, i8* %1305, align 1
  store %struct.Memory* %loadMem_452b86, %struct.Memory** %MEMORY
  %loadMem_452b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %PC.i785
  %1310 = add i64 %1309, 47
  %1311 = load i64, i64* %PC.i785
  %1312 = add i64 %1311, 6
  %1313 = load i64, i64* %PC.i785
  %1314 = add i64 %1313, 6
  store i64 %1314, i64* %PC.i785
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1316 = load i8, i8* %1315, align 1
  store i8 %1316, i8* %BRANCH_TAKEN, align 1
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1318 = icmp ne i8 %1316, 0
  %1319 = select i1 %1318, i64 %1310, i64 %1312
  store i64 %1319, i64* %1317, align 8
  store %struct.Memory* %loadMem_452b8f, %struct.Memory** %MEMORY
  %loadBr_452b8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452b8f = icmp eq i8 %loadBr_452b8f, 1
  br i1 %cmpBr_452b8f, label %block_.L_452bbe, label %block_452b95

block_452b95:                                     ; preds = %block_452b86
  %loadMem_452b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 1
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %EAX.i783 = bitcast %union.anon* %1325 to i32*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 1
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %RAX.i784
  %1330 = load i32, i32* %EAX.i783
  %1331 = zext i32 %1330 to i64
  %1332 = load i64, i64* %PC.i782
  %1333 = add i64 %1332, 2
  store i64 %1333, i64* %PC.i782
  %1334 = xor i64 %1331, %1329
  %1335 = trunc i64 %1334 to i32
  %1336 = and i64 %1334, 4294967295
  store i64 %1336, i64* %RAX.i784, align 8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1337, align 1
  %1338 = and i32 %1335, 255
  %1339 = call i32 @llvm.ctpop.i32(i32 %1338)
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1342, i8* %1343, align 1
  %1344 = icmp eq i32 %1335, 0
  %1345 = zext i1 %1344 to i8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1345, i8* %1346, align 1
  %1347 = lshr i32 %1335, 31
  %1348 = trunc i32 %1347 to i8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1348, i8* %1349, align 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1350, align 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1351, align 1
  store %struct.Memory* %loadMem_452b95, %struct.Memory** %MEMORY
  %loadMem_452b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 19
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %R9.i781 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %PC.i780
  %1359 = add i64 %1358, 10
  store i64 %1359, i64* %PC.i780
  store i64 ptrtoint (%G__0x57f59e_type* @G__0x57f59e to i64), i64* %R9.i781, align 8
  store %struct.Memory* %loadMem_452b97, %struct.Memory** %MEMORY
  %loadMem_452ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 11
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RDI.i778 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 15
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %RBP.i779
  %1370 = sub i64 %1369, 1584
  %1371 = load i64, i64* %PC.i777
  %1372 = add i64 %1371, 7
  store i64 %1372, i64* %PC.i777
  %1373 = inttoptr i64 %1370 to i64*
  %1374 = load i64, i64* %1373
  store i64 %1374, i64* %RDI.i778, align 8
  store %struct.Memory* %loadMem_452ba1, %struct.Memory** %MEMORY
  %loadMem_452ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 9
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RSI.i775 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 15
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %1383 to i64*
  %1384 = load i64, i64* %RBP.i776
  %1385 = sub i64 %1384, 1588
  %1386 = load i64, i64* %PC.i774
  %1387 = add i64 %1386, 6
  store i64 %1387, i64* %PC.i774
  %1388 = inttoptr i64 %1385 to i32*
  %1389 = load i32, i32* %1388
  %1390 = zext i32 %1389 to i64
  store i64 %1390, i64* %RSI.i775, align 8
  store %struct.Memory* %loadMem_452ba8, %struct.Memory** %MEMORY
  %loadMem_452bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 7
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RDX.i772 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 15
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %RBP.i773
  %1401 = sub i64 %1400, 1592
  %1402 = load i64, i64* %PC.i771
  %1403 = add i64 %1402, 6
  store i64 %1403, i64* %PC.i771
  %1404 = inttoptr i64 %1401 to i32*
  %1405 = load i32, i32* %1404
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RDX.i772, align 8
  store %struct.Memory* %loadMem_452bae, %struct.Memory** %MEMORY
  %loadMem_452bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 33
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 1
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %EAX.i769 = bitcast %union.anon* %1412 to i32*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 5
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %1415 to i64*
  %1416 = load i32, i32* %EAX.i769
  %1417 = zext i32 %1416 to i64
  %1418 = load i64, i64* %PC.i768
  %1419 = add i64 %1418, 2
  store i64 %1419, i64* %PC.i768
  %1420 = and i64 %1417, 4294967295
  store i64 %1420, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_452bb4, %struct.Memory** %MEMORY
  %loadMem_452bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %EAX.i766 = bitcast %union.anon* %1426 to i32*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 17
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %R8D.i767 = bitcast %union.anon* %1429 to i32*
  %1430 = bitcast i32* %R8D.i767 to i64*
  %1431 = load i32, i32* %EAX.i766
  %1432 = zext i32 %1431 to i64
  %1433 = load i64, i64* %PC.i765
  %1434 = add i64 %1433, 3
  store i64 %1434, i64* %PC.i765
  %1435 = and i64 %1432, 4294967295
  store i64 %1435, i64* %1430, align 8
  store %struct.Memory* %loadMem_452bb6, %struct.Memory** %MEMORY
  %loadMem1_452bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1438 to i64*
  %1439 = load i64, i64* %PC.i764
  %1440 = add i64 %1439, -239769
  %1441 = load i64, i64* %PC.i764
  %1442 = add i64 %1441, 5
  %1443 = load i64, i64* %PC.i764
  %1444 = add i64 %1443, 5
  store i64 %1444, i64* %PC.i764
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1446 = load i64, i64* %1445, align 8
  %1447 = add i64 %1446, -8
  %1448 = inttoptr i64 %1447 to i64*
  store i64 %1442, i64* %1448
  store i64 %1447, i64* %1445, align 8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1440, i64* %1449, align 8
  store %struct.Memory* %loadMem1_452bb9, %struct.Memory** %MEMORY
  %loadMem2_452bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452bb9 = load i64, i64* %3
  %call2_452bb9 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_452bb9, %struct.Memory* %loadMem2_452bb9)
  store %struct.Memory* %call2_452bb9, %struct.Memory** %MEMORY
  br label %block_.L_452bbe

block_.L_452bbe:                                  ; preds = %block_452b95, %block_452b86
  %loadMem_452bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 15
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %RBP.i763
  %1457 = sub i64 %1456, 44
  %1458 = load i64, i64* %PC.i762
  %1459 = add i64 %1458, 7
  store i64 %1459, i64* %PC.i762
  %1460 = inttoptr i64 %1457 to i32*
  store i32 0, i32* %1460
  store %struct.Memory* %loadMem_452bbe, %struct.Memory** %MEMORY
  %loadMem_452bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i761
  %1465 = add i64 %1464, 1832
  %1466 = load i64, i64* %PC.i761
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i761
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1465, i64* %1468, align 8
  store %struct.Memory* %loadMem_452bc5, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_452bca:                                  ; preds = %block_.L_452b72
  %loadMem_452bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 1
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %PC.i759
  %1476 = add i64 %1475, 7
  store i64 %1476, i64* %PC.i759
  %1477 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RAX.i760, align 8
  store %struct.Memory* %loadMem_452bca, %struct.Memory** %MEMORY
  %loadMem_452bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 1
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %EAX.i758 = bitcast %union.anon* %1484 to i32*
  %1485 = load i32, i32* %EAX.i758
  %1486 = zext i32 %1485 to i64
  %1487 = load i64, i64* %PC.i757
  %1488 = add i64 %1487, 7
  store i64 %1488, i64* %PC.i757
  %1489 = load i32, i32* bitcast (%G_0x7afc5c_type* @G_0x7afc5c to i32*)
  %1490 = sub i32 %1485, %1489
  %1491 = icmp ult i32 %1485, %1489
  %1492 = zext i1 %1491 to i8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1492, i8* %1493, align 1
  %1494 = and i32 %1490, 255
  %1495 = call i32 @llvm.ctpop.i32(i32 %1494)
  %1496 = trunc i32 %1495 to i8
  %1497 = and i8 %1496, 1
  %1498 = xor i8 %1497, 1
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1498, i8* %1499, align 1
  %1500 = xor i32 %1489, %1485
  %1501 = xor i32 %1500, %1490
  %1502 = lshr i32 %1501, 4
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1504, i8* %1505, align 1
  %1506 = icmp eq i32 %1490, 0
  %1507 = zext i1 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1507, i8* %1508, align 1
  %1509 = lshr i32 %1490, 31
  %1510 = trunc i32 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1510, i8* %1511, align 1
  %1512 = lshr i32 %1485, 31
  %1513 = lshr i32 %1489, 31
  %1514 = xor i32 %1513, %1512
  %1515 = xor i32 %1509, %1512
  %1516 = add i32 %1515, %1514
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1518, i8* %1519, align 1
  store %struct.Memory* %loadMem_452bd1, %struct.Memory** %MEMORY
  %loadMem_452bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %PC.i756
  %1524 = add i64 %1523, 74
  %1525 = load i64, i64* %PC.i756
  %1526 = add i64 %1525, 6
  %1527 = load i64, i64* %PC.i756
  %1528 = add i64 %1527, 6
  store i64 %1528, i64* %PC.i756
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1530 = load i8, i8* %1529, align 1
  %1531 = icmp ne i8 %1530, 0
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1533 = load i8, i8* %1532, align 1
  %1534 = icmp ne i8 %1533, 0
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1536 = load i8, i8* %1535, align 1
  %1537 = icmp ne i8 %1536, 0
  %1538 = xor i1 %1534, %1537
  %1539 = or i1 %1531, %1538
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %BRANCH_TAKEN, align 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1542 = select i1 %1539, i64 %1524, i64 %1526
  store i64 %1542, i64* %1541, align 8
  store %struct.Memory* %loadMem_452bd8, %struct.Memory** %MEMORY
  %loadBr_452bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452bd8 = icmp eq i8 %loadBr_452bd8, 1
  br i1 %cmpBr_452bd8, label %block_.L_452c22, label %block_452bde

block_452bde:                                     ; preds = %block_.L_452bca
  %loadMem_452bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1545 to i64*
  %1546 = load i64, i64* %PC.i755
  %1547 = add i64 %1546, 9
  store i64 %1547, i64* %PC.i755
  %1548 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1549, align 1
  %1550 = trunc i64 %1548 to i32
  %1551 = and i32 %1550, 255
  %1552 = call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1555, i8* %1556, align 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1557, align 1
  %1558 = icmp eq i64 %1548, 0
  %1559 = zext i1 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1559, i8* %1560, align 1
  %1561 = lshr i64 %1548, 63
  %1562 = trunc i64 %1561 to i8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1562, i8* %1563, align 1
  %1564 = lshr i64 %1548, 63
  %1565 = xor i64 %1561, %1564
  %1566 = add i64 %1565, %1564
  %1567 = icmp eq i64 %1566, 2
  %1568 = zext i1 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1568, i8* %1569, align 1
  store %struct.Memory* %loadMem_452bde, %struct.Memory** %MEMORY
  %loadMem_452be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 33
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %PC.i754
  %1574 = add i64 %1573, 47
  %1575 = load i64, i64* %PC.i754
  %1576 = add i64 %1575, 6
  %1577 = load i64, i64* %PC.i754
  %1578 = add i64 %1577, 6
  store i64 %1578, i64* %PC.i754
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1580 = load i8, i8* %1579, align 1
  store i8 %1580, i8* %BRANCH_TAKEN, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1582 = icmp ne i8 %1580, 0
  %1583 = select i1 %1582, i64 %1574, i64 %1576
  store i64 %1583, i64* %1581, align 8
  store %struct.Memory* %loadMem_452be7, %struct.Memory** %MEMORY
  %loadBr_452be7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452be7 = icmp eq i8 %loadBr_452be7, 1
  br i1 %cmpBr_452be7, label %block_.L_452c16, label %block_452bed

block_452bed:                                     ; preds = %block_452bde
  %loadMem_452bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 1
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %EAX.i752 = bitcast %union.anon* %1589 to i32*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 1
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RAX.i753 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RAX.i753
  %1594 = load i32, i32* %EAX.i752
  %1595 = zext i32 %1594 to i64
  %1596 = load i64, i64* %PC.i751
  %1597 = add i64 %1596, 2
  store i64 %1597, i64* %PC.i751
  %1598 = xor i64 %1595, %1593
  %1599 = trunc i64 %1598 to i32
  %1600 = and i64 %1598, 4294967295
  store i64 %1600, i64* %RAX.i753, align 8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1601, align 1
  %1602 = and i32 %1599, 255
  %1603 = call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1606, i8* %1607, align 1
  %1608 = icmp eq i32 %1599, 0
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1609, i8* %1610, align 1
  %1611 = lshr i32 %1599, 31
  %1612 = trunc i32 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1612, i8* %1613, align 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1614, align 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1615, align 1
  store %struct.Memory* %loadMem_452bed, %struct.Memory** %MEMORY
  %loadMem_452bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 19
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %R9.i750 = bitcast %union.anon* %1621 to i64*
  %1622 = load i64, i64* %PC.i749
  %1623 = add i64 %1622, 10
  store i64 %1623, i64* %PC.i749
  store i64 ptrtoint (%G__0x57f5bc_type* @G__0x57f5bc to i64), i64* %R9.i750, align 8
  store %struct.Memory* %loadMem_452bef, %struct.Memory** %MEMORY
  %loadMem_452bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 11
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %RDI.i747 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RBP.i748
  %1634 = sub i64 %1633, 1584
  %1635 = load i64, i64* %PC.i746
  %1636 = add i64 %1635, 7
  store i64 %1636, i64* %PC.i746
  %1637 = inttoptr i64 %1634 to i64*
  %1638 = load i64, i64* %1637
  store i64 %1638, i64* %RDI.i747, align 8
  store %struct.Memory* %loadMem_452bf9, %struct.Memory** %MEMORY
  %loadMem_452c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 9
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RSI.i744 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 15
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %RBP.i745
  %1649 = sub i64 %1648, 1588
  %1650 = load i64, i64* %PC.i743
  %1651 = add i64 %1650, 6
  store i64 %1651, i64* %PC.i743
  %1652 = inttoptr i64 %1649 to i32*
  %1653 = load i32, i32* %1652
  %1654 = zext i32 %1653 to i64
  store i64 %1654, i64* %RSI.i744, align 8
  store %struct.Memory* %loadMem_452c00, %struct.Memory** %MEMORY
  %loadMem_452c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 7
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RDX.i741 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 15
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %1663 to i64*
  %1664 = load i64, i64* %RBP.i742
  %1665 = sub i64 %1664, 1592
  %1666 = load i64, i64* %PC.i740
  %1667 = add i64 %1666, 6
  store i64 %1667, i64* %PC.i740
  %1668 = inttoptr i64 %1665 to i32*
  %1669 = load i32, i32* %1668
  %1670 = zext i32 %1669 to i64
  store i64 %1670, i64* %RDX.i741, align 8
  store %struct.Memory* %loadMem_452c06, %struct.Memory** %MEMORY
  %loadMem_452c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1673 to i64*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 1
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %EAX.i738 = bitcast %union.anon* %1676 to i32*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 5
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RCX.i739 = bitcast %union.anon* %1679 to i64*
  %1680 = load i32, i32* %EAX.i738
  %1681 = zext i32 %1680 to i64
  %1682 = load i64, i64* %PC.i737
  %1683 = add i64 %1682, 2
  store i64 %1683, i64* %PC.i737
  %1684 = and i64 %1681, 4294967295
  store i64 %1684, i64* %RCX.i739, align 8
  store %struct.Memory* %loadMem_452c0c, %struct.Memory** %MEMORY
  %loadMem_452c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 1
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %EAX.i735 = bitcast %union.anon* %1690 to i32*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 17
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %R8D.i736 = bitcast %union.anon* %1693 to i32*
  %1694 = bitcast i32* %R8D.i736 to i64*
  %1695 = load i32, i32* %EAX.i735
  %1696 = zext i32 %1695 to i64
  %1697 = load i64, i64* %PC.i734
  %1698 = add i64 %1697, 3
  store i64 %1698, i64* %PC.i734
  %1699 = and i64 %1696, 4294967295
  store i64 %1699, i64* %1694, align 8
  store %struct.Memory* %loadMem_452c0e, %struct.Memory** %MEMORY
  %loadMem1_452c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %PC.i733
  %1704 = add i64 %1703, -239857
  %1705 = load i64, i64* %PC.i733
  %1706 = add i64 %1705, 5
  %1707 = load i64, i64* %PC.i733
  %1708 = add i64 %1707, 5
  store i64 %1708, i64* %PC.i733
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1710 = load i64, i64* %1709, align 8
  %1711 = add i64 %1710, -8
  %1712 = inttoptr i64 %1711 to i64*
  store i64 %1706, i64* %1712
  store i64 %1711, i64* %1709, align 8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1704, i64* %1713, align 8
  store %struct.Memory* %loadMem1_452c11, %struct.Memory** %MEMORY
  %loadMem2_452c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452c11 = load i64, i64* %3
  %call2_452c11 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_452c11, %struct.Memory* %loadMem2_452c11)
  store %struct.Memory* %call2_452c11, %struct.Memory** %MEMORY
  br label %block_.L_452c16

block_.L_452c16:                                  ; preds = %block_452bed, %block_452bde
  %loadMem_452c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 15
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1719 to i64*
  %1720 = load i64, i64* %RBP.i732
  %1721 = sub i64 %1720, 44
  %1722 = load i64, i64* %PC.i731
  %1723 = add i64 %1722, 7
  store i64 %1723, i64* %PC.i731
  %1724 = inttoptr i64 %1721 to i32*
  store i32 0, i32* %1724
  store %struct.Memory* %loadMem_452c16, %struct.Memory** %MEMORY
  %loadMem_452c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %PC.i730
  %1729 = add i64 %1728, 1744
  %1730 = load i64, i64* %PC.i730
  %1731 = add i64 %1730, 5
  store i64 %1731, i64* %PC.i730
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1729, i64* %1732, align 8
  store %struct.Memory* %loadMem_452c1d, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_452c22:                                  ; preds = %block_.L_452bca
  %loadMem_452c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 1
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %PC.i728
  %1740 = add i64 %1739, 7
  store i64 %1740, i64* %PC.i728
  %1741 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_452c22, %struct.Memory** %MEMORY
  %loadMem_452c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 1
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %EAX.i727 = bitcast %union.anon* %1748 to i32*
  %1749 = load i32, i32* %EAX.i727
  %1750 = zext i32 %1749 to i64
  %1751 = load i64, i64* %PC.i726
  %1752 = add i64 %1751, 7
  store i64 %1752, i64* %PC.i726
  %1753 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  %1754 = sub i32 %1749, %1753
  %1755 = icmp ult i32 %1749, %1753
  %1756 = zext i1 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1756, i8* %1757, align 1
  %1758 = and i32 %1754, 255
  %1759 = call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1762, i8* %1763, align 1
  %1764 = xor i32 %1753, %1749
  %1765 = xor i32 %1764, %1754
  %1766 = lshr i32 %1765, 4
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1768, i8* %1769, align 1
  %1770 = icmp eq i32 %1754, 0
  %1771 = zext i1 %1770 to i8
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1771, i8* %1772, align 1
  %1773 = lshr i32 %1754, 31
  %1774 = trunc i32 %1773 to i8
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1774, i8* %1775, align 1
  %1776 = lshr i32 %1749, 31
  %1777 = lshr i32 %1753, 31
  %1778 = xor i32 %1777, %1776
  %1779 = xor i32 %1773, %1776
  %1780 = add i32 %1779, %1778
  %1781 = icmp eq i32 %1780, 2
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1782, i8* %1783, align 1
  store %struct.Memory* %loadMem_452c29, %struct.Memory** %MEMORY
  %loadMem_452c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %PC.i725
  %1788 = add i64 %1787, 269
  %1789 = load i64, i64* %PC.i725
  %1790 = add i64 %1789, 6
  %1791 = load i64, i64* %PC.i725
  %1792 = add i64 %1791, 6
  store i64 %1792, i64* %PC.i725
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1794 = load i8, i8* %1793, align 1
  %1795 = icmp eq i8 %1794, 0
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1797 = load i8, i8* %1796, align 1
  %1798 = icmp ne i8 %1797, 0
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1800 = load i8, i8* %1799, align 1
  %1801 = icmp ne i8 %1800, 0
  %1802 = xor i1 %1798, %1801
  %1803 = xor i1 %1802, true
  %1804 = and i1 %1795, %1803
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %BRANCH_TAKEN, align 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1807 = select i1 %1804, i64 %1788, i64 %1790
  store i64 %1807, i64* %1806, align 8
  store %struct.Memory* %loadMem_452c30, %struct.Memory** %MEMORY
  %loadBr_452c30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452c30 = icmp eq i8 %loadBr_452c30, 1
  br i1 %cmpBr_452c30, label %block_.L_452d3d, label %block_452c36

block_452c36:                                     ; preds = %block_.L_452c22
  %loadMem_452c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 1
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RAX.i724 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %PC.i723
  %1815 = add i64 %1814, 7
  store i64 %1815, i64* %PC.i723
  %1816 = load i32, i32* bitcast (%G_0x7ae43c_type* @G_0x7ae43c to i32*)
  %1817 = zext i32 %1816 to i64
  store i64 %1817, i64* %RAX.i724, align 8
  store %struct.Memory* %loadMem_452c36, %struct.Memory** %MEMORY
  %loadMem_452c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 33
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 1
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RAX.i722 = bitcast %union.anon* %1823 to i64*
  %1824 = load i64, i64* %RAX.i722
  %1825 = load i64, i64* %PC.i721
  %1826 = add i64 %1825, 5
  store i64 %1826, i64* %PC.i721
  %1827 = and i64 2048, %1824
  %1828 = trunc i64 %1827 to i32
  store i64 %1827, i64* %RAX.i722, align 8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1829, align 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1830, align 1
  %1831 = icmp eq i32 %1828, 0
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1832, i8* %1833, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1834, align 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1835, align 1
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1836, align 1
  store %struct.Memory* %loadMem_452c3d, %struct.Memory** %MEMORY
  %loadMem_452c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %EAX.i720 = bitcast %union.anon* %1842 to i32*
  %1843 = load i32, i32* %EAX.i720
  %1844 = zext i32 %1843 to i64
  %1845 = load i64, i64* %PC.i719
  %1846 = add i64 %1845, 3
  store i64 %1846, i64* %PC.i719
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1847, align 1
  %1848 = and i32 %1843, 255
  %1849 = call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1852, i8* %1853, align 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1854, align 1
  %1855 = icmp eq i32 %1843, 0
  %1856 = zext i1 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1856, i8* %1857, align 1
  %1858 = lshr i32 %1843, 31
  %1859 = trunc i32 %1858 to i8
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1859, i8* %1860, align 1
  %1861 = lshr i32 %1843, 31
  %1862 = xor i32 %1858, %1861
  %1863 = add i32 %1862, %1861
  %1864 = icmp eq i32 %1863, 2
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1865, i8* %1866, align 1
  store %struct.Memory* %loadMem_452c42, %struct.Memory** %MEMORY
  %loadMem_452c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %PC.i718
  %1871 = add i64 %1870, 248
  %1872 = load i64, i64* %PC.i718
  %1873 = add i64 %1872, 6
  %1874 = load i64, i64* %PC.i718
  %1875 = add i64 %1874, 6
  store i64 %1875, i64* %PC.i718
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1877 = load i8, i8* %1876, align 1
  store i8 %1877, i8* %BRANCH_TAKEN, align 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1879 = icmp ne i8 %1877, 0
  %1880 = select i1 %1879, i64 %1871, i64 %1873
  store i64 %1880, i64* %1878, align 8
  store %struct.Memory* %loadMem_452c45, %struct.Memory** %MEMORY
  %loadBr_452c45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452c45 = icmp eq i8 %loadBr_452c45, 1
  br i1 %cmpBr_452c45, label %block_.L_452d3d, label %block_452c4b

block_452c4b:                                     ; preds = %block_452c36
  %loadMem_452c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1882 = getelementptr inbounds %struct.GPR, %struct.GPR* %1881, i32 0, i32 33
  %1883 = getelementptr inbounds %struct.Reg, %struct.Reg* %1882, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1883 to i64*
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 15
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %RBP.i717
  %1888 = sub i64 %1887, 76
  %1889 = load i64, i64* %PC.i716
  %1890 = add i64 %1889, 4
  store i64 %1890, i64* %PC.i716
  %1891 = inttoptr i64 %1888 to i32*
  %1892 = load i32, i32* %1891
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1893, align 1
  %1894 = and i32 %1892, 255
  %1895 = call i32 @llvm.ctpop.i32(i32 %1894)
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = xor i8 %1897, 1
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1898, i8* %1899, align 1
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1900, align 1
  %1901 = icmp eq i32 %1892, 0
  %1902 = zext i1 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1902, i8* %1903, align 1
  %1904 = lshr i32 %1892, 31
  %1905 = trunc i32 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1905, i8* %1906, align 1
  %1907 = lshr i32 %1892, 31
  %1908 = xor i32 %1904, %1907
  %1909 = add i32 %1908, %1907
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1911, i8* %1912, align 1
  store %struct.Memory* %loadMem_452c4b, %struct.Memory** %MEMORY
  %loadMem_452c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %PC.i715
  %1917 = add i64 %1916, 238
  %1918 = load i64, i64* %PC.i715
  %1919 = add i64 %1918, 6
  %1920 = load i64, i64* %PC.i715
  %1921 = add i64 %1920, 6
  store i64 %1921, i64* %PC.i715
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1923 = load i8, i8* %1922, align 1
  %1924 = icmp eq i8 %1923, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %BRANCH_TAKEN, align 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1927 = select i1 %1924, i64 %1917, i64 %1919
  store i64 %1927, i64* %1926, align 8
  store %struct.Memory* %loadMem_452c4f, %struct.Memory** %MEMORY
  %loadBr_452c4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452c4f = icmp eq i8 %loadBr_452c4f, 1
  br i1 %cmpBr_452c4f, label %block_.L_452d3d, label %block_452c55

block_452c55:                                     ; preds = %block_452c4b
  %loadMem_452c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 11
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RDI.i714 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %PC.i713
  %1935 = add i64 %1934, 5
  store i64 %1935, i64* %PC.i713
  store i64 5, i64* %RDI.i714, align 8
  store %struct.Memory* %loadMem_452c55, %struct.Memory** %MEMORY
  %loadMem_452c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 33
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1938 to i64*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 5
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RCX.i711 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 15
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %1944 to i64*
  %1945 = load i64, i64* %RBP.i712
  %1946 = sub i64 %1945, 48
  %1947 = load i64, i64* %PC.i710
  %1948 = add i64 %1947, 4
  store i64 %1948, i64* %PC.i710
  store i64 %1946, i64* %RCX.i711, align 8
  store %struct.Memory* %loadMem_452c5a, %struct.Memory** %MEMORY
  %loadMem_452c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 33
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1951 to i64*
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 15
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 17
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %R8.i709 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %RBP.i708
  %1959 = sub i64 %1958, 52
  %1960 = load i64, i64* %PC.i707
  %1961 = add i64 %1960, 4
  store i64 %1961, i64* %PC.i707
  store i64 %1959, i64* %R8.i709, align 8
  store %struct.Memory* %loadMem_452c5e, %struct.Memory** %MEMORY
  %loadMem_452c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 33
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 19
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %R9.i706 = bitcast %union.anon* %1970 to i64*
  %1971 = load i64, i64* %RBP.i705
  %1972 = sub i64 %1971, 1576
  %1973 = load i64, i64* %PC.i704
  %1974 = add i64 %1973, 7
  store i64 %1974, i64* %PC.i704
  store i64 %1972, i64* %R9.i706, align 8
  store %struct.Memory* %loadMem_452c62, %struct.Memory** %MEMORY
  %loadMem_452c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 9
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RSI.i702 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 15
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %RBP.i703
  %1985 = sub i64 %1984, 68
  %1986 = load i64, i64* %PC.i701
  %1987 = add i64 %1986, 3
  store i64 %1987, i64* %PC.i701
  %1988 = inttoptr i64 %1985 to i32*
  %1989 = load i32, i32* %1988
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RSI.i702, align 8
  store %struct.Memory* %loadMem_452c69, %struct.Memory** %MEMORY
  %loadMem_452c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 7
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RDX.i699 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 15
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1999 to i64*
  %2000 = load i64, i64* %RBP.i700
  %2001 = sub i64 %2000, 72
  %2002 = load i64, i64* %PC.i698
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i698
  %2004 = inttoptr i64 %2001 to i32*
  %2005 = load i32, i32* %2004
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RDX.i699, align 8
  store %struct.Memory* %loadMem_452c6c, %struct.Memory** %MEMORY
  %loadMem1_452c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2009 to i64*
  %2010 = load i64, i64* %PC.i697
  %2011 = add i64 %2010, -241039
  %2012 = load i64, i64* %PC.i697
  %2013 = add i64 %2012, 5
  %2014 = load i64, i64* %PC.i697
  %2015 = add i64 %2014, 5
  store i64 %2015, i64* %PC.i697
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2017 = load i64, i64* %2016, align 8
  %2018 = add i64 %2017, -8
  %2019 = inttoptr i64 %2018 to i64*
  store i64 %2013, i64* %2019
  store i64 %2018, i64* %2016, align 8
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2011, i64* %2020, align 8
  store %struct.Memory* %loadMem1_452c6f, %struct.Memory** %MEMORY
  %loadMem2_452c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452c6f = load i64, i64* %3
  %call2_452c6f = call %struct.Memory* @sub_417ee0.get_read_result2(%struct.State* %0, i64 %loadPC_452c6f, %struct.Memory* %loadMem2_452c6f)
  store %struct.Memory* %call2_452c6f, %struct.Memory** %MEMORY
  %loadMem_452c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 33
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2023 to i64*
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 1
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %EAX.i695 = bitcast %union.anon* %2026 to i32*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 15
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %2029 to i64*
  %2030 = load i64, i64* %RBP.i696
  %2031 = sub i64 %2030, 1564
  %2032 = load i32, i32* %EAX.i695
  %2033 = zext i32 %2032 to i64
  %2034 = load i64, i64* %PC.i694
  %2035 = add i64 %2034, 6
  store i64 %2035, i64* %PC.i694
  %2036 = inttoptr i64 %2031 to i32*
  store i32 %2032, i32* %2036
  store %struct.Memory* %loadMem_452c74, %struct.Memory** %MEMORY
  %loadMem_452c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %2042 to i64*
  %2043 = load i64, i64* %RBP.i693
  %2044 = sub i64 %2043, 1564
  %2045 = load i64, i64* %PC.i692
  %2046 = add i64 %2045, 7
  store i64 %2046, i64* %PC.i692
  %2047 = inttoptr i64 %2044 to i32*
  %2048 = load i32, i32* %2047
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2049, align 1
  %2050 = and i32 %2048, 255
  %2051 = call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2054, i8* %2055, align 1
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2056, align 1
  %2057 = icmp eq i32 %2048, 0
  %2058 = zext i1 %2057 to i8
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2058, i8* %2059, align 1
  %2060 = lshr i32 %2048, 31
  %2061 = trunc i32 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2061, i8* %2062, align 1
  %2063 = lshr i32 %2048, 31
  %2064 = xor i32 %2060, %2063
  %2065 = add i32 %2064, %2063
  %2066 = icmp eq i32 %2065, 2
  %2067 = zext i1 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2067, i8* %2068, align 1
  store %struct.Memory* %loadMem_452c7a, %struct.Memory** %MEMORY
  %loadMem_452c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %PC.i691
  %2073 = add i64 %2072, 183
  %2074 = load i64, i64* %PC.i691
  %2075 = add i64 %2074, 6
  %2076 = load i64, i64* %PC.i691
  %2077 = add i64 %2076, 6
  store i64 %2077, i64* %PC.i691
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2079 = load i8, i8* %2078, align 1
  store i8 %2079, i8* %BRANCH_TAKEN, align 1
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2081 = icmp ne i8 %2079, 0
  %2082 = select i1 %2081, i64 %2073, i64 %2075
  store i64 %2082, i64* %2080, align 8
  store %struct.Memory* %loadMem_452c81, %struct.Memory** %MEMORY
  %loadBr_452c81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452c81 = icmp eq i8 %loadBr_452c81, 1
  br i1 %cmpBr_452c81, label %block_.L_452d38, label %block_452c87

block_452c87:                                     ; preds = %block_452c55
  %loadMem_452c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 1
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 15
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %RBP.i690
  %2093 = sub i64 %2092, 1576
  %2094 = load i64, i64* %PC.i688
  %2095 = add i64 %2094, 7
  store i64 %2095, i64* %PC.i688
  %2096 = inttoptr i64 %2093 to i64*
  %2097 = load i64, i64* %2096
  store i64 %2097, i64* %RAX.i689, align 8
  store %struct.Memory* %loadMem_452c87, %struct.Memory** %MEMORY
  %loadMem_452c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 1
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 5
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %RCX.i687 = bitcast %union.anon* %2106 to i64*
  %2107 = load i64, i64* %RAX.i686
  %2108 = add i64 %2107, 4
  %2109 = load i64, i64* %PC.i685
  %2110 = add i64 %2109, 3
  store i64 %2110, i64* %PC.i685
  %2111 = inttoptr i64 %2108 to i32*
  %2112 = load i32, i32* %2111
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RCX.i687, align 8
  store %struct.Memory* %loadMem_452c8e, %struct.Memory** %MEMORY
  %loadMem_452c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 5
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %RCX.i684
  %2121 = load i64, i64* %PC.i683
  %2122 = add i64 %2121, 3
  store i64 %2122, i64* %PC.i683
  %2123 = and i64 %2120, 4294967295
  %2124 = lshr i64 %2123, 23
  %2125 = trunc i64 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = lshr i64 %2124, 1
  %2128 = trunc i64 %2127 to i32
  %2129 = and i32 %2128, 2147483647
  %2130 = zext i32 %2129 to i64
  store i64 %2130, i64* %RCX.i684, align 8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2126, i8* %2131, align 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2133 = and i32 %2128, 255
  %2134 = call i32 @llvm.ctpop.i32(i32 %2133)
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %2132, align 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2138, align 1
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2140 = icmp eq i32 %2129, 0
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %2139, align 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2142, align 1
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2143, align 1
  store %struct.Memory* %loadMem_452c91, %struct.Memory** %MEMORY
  %loadMem_452c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 5
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RCX.i682
  %2151 = load i64, i64* %PC.i681
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %PC.i681
  %2153 = and i64 15, %2150
  %2154 = trunc i64 %2153 to i32
  store i64 %2153, i64* %RCX.i682, align 8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2155, align 1
  %2156 = and i32 %2154, 255
  %2157 = call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2160, i8* %2161, align 1
  %2162 = icmp eq i32 %2154, 0
  %2163 = zext i1 %2162 to i8
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2163, i8* %2164, align 1
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2165, align 1
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2166, align 1
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2167, align 1
  store %struct.Memory* %loadMem_452c94, %struct.Memory** %MEMORY
  %loadMem_452c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 33
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 5
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %ECX.i680 = bitcast %union.anon* %2173 to i32*
  %2174 = load i32, i32* %ECX.i680
  %2175 = zext i32 %2174 to i64
  %2176 = load i64, i64* %PC.i679
  %2177 = add i64 %2176, 3
  store i64 %2177, i64* %PC.i679
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2178, align 1
  %2179 = and i32 %2174, 255
  %2180 = call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2183, i8* %2184, align 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2185, align 1
  %2186 = icmp eq i32 %2174, 0
  %2187 = zext i1 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2187, i8* %2188, align 1
  %2189 = lshr i32 %2174, 31
  %2190 = trunc i32 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2190, i8* %2191, align 1
  %2192 = lshr i32 %2174, 31
  %2193 = xor i32 %2189, %2192
  %2194 = add i32 %2193, %2192
  %2195 = icmp eq i32 %2194, 2
  %2196 = zext i1 %2195 to i8
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2196, i8* %2197, align 1
  store %struct.Memory* %loadMem_452c97, %struct.Memory** %MEMORY
  %loadMem_452c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %PC.i678
  %2202 = add i64 %2201, 47
  %2203 = load i64, i64* %PC.i678
  %2204 = add i64 %2203, 6
  %2205 = load i64, i64* %PC.i678
  %2206 = add i64 %2205, 6
  store i64 %2206, i64* %PC.i678
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2208 = load i8, i8* %2207, align 1
  store i8 %2208, i8* %BRANCH_TAKEN, align 1
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2210 = icmp ne i8 %2208, 0
  %2211 = select i1 %2210, i64 %2202, i64 %2204
  store i64 %2211, i64* %2209, align 8
  store %struct.Memory* %loadMem_452c9a, %struct.Memory** %MEMORY
  %loadBr_452c9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452c9a = icmp eq i8 %loadBr_452c9a, 1
  br i1 %cmpBr_452c9a, label %block_.L_452cc9, label %block_452ca0

block_452ca0:                                     ; preds = %block_452c87
  %loadMem_452ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RBP.i677
  %2219 = sub i64 %2218, 64
  %2220 = load i64, i64* %PC.i676
  %2221 = add i64 %2220, 5
  store i64 %2221, i64* %PC.i676
  %2222 = inttoptr i64 %2219 to i64*
  %2223 = load i64, i64* %2222
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2224, align 1
  %2225 = trunc i64 %2223 to i32
  %2226 = and i32 %2225, 255
  %2227 = call i32 @llvm.ctpop.i32(i32 %2226)
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2230, i8* %2231, align 1
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2232, align 1
  %2233 = icmp eq i64 %2223, 0
  %2234 = zext i1 %2233 to i8
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2234, i8* %2235, align 1
  %2236 = lshr i64 %2223, 63
  %2237 = trunc i64 %2236 to i8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2237, i8* %2238, align 1
  %2239 = lshr i64 %2223, 63
  %2240 = xor i64 %2236, %2239
  %2241 = add i64 %2240, %2239
  %2242 = icmp eq i64 %2241, 2
  %2243 = zext i1 %2242 to i8
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2243, i8* %2244, align 1
  store %struct.Memory* %loadMem_452ca0, %struct.Memory** %MEMORY
  %loadMem_452ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2247 to i64*
  %2248 = load i64, i64* %PC.i675
  %2249 = add i64 %2248, 31
  %2250 = load i64, i64* %PC.i675
  %2251 = add i64 %2250, 6
  %2252 = load i64, i64* %PC.i675
  %2253 = add i64 %2252, 6
  store i64 %2253, i64* %PC.i675
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2255 = load i8, i8* %2254, align 1
  store i8 %2255, i8* %BRANCH_TAKEN, align 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2257 = icmp ne i8 %2255, 0
  %2258 = select i1 %2257, i64 %2249, i64 %2251
  store i64 %2258, i64* %2256, align 8
  store %struct.Memory* %loadMem_452ca5, %struct.Memory** %MEMORY
  %loadBr_452ca5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452ca5 = icmp eq i8 %loadBr_452ca5, 1
  br i1 %cmpBr_452ca5, label %block_.L_452cc4, label %block_452cab

block_452cab:                                     ; preds = %block_452ca0
  %loadMem_452cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 33
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 1
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 15
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %RBP.i674
  %2269 = sub i64 %2268, 1576
  %2270 = load i64, i64* %PC.i672
  %2271 = add i64 %2270, 7
  store i64 %2271, i64* %PC.i672
  %2272 = inttoptr i64 %2269 to i64*
  %2273 = load i64, i64* %2272
  store i64 %2273, i64* %RAX.i673, align 8
  store %struct.Memory* %loadMem_452cab, %struct.Memory** %MEMORY
  %loadMem_452cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 1
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 5
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RCX.i671 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %RAX.i670
  %2284 = add i64 %2283, 4
  %2285 = load i64, i64* %PC.i669
  %2286 = add i64 %2285, 3
  store i64 %2286, i64* %PC.i669
  %2287 = inttoptr i64 %2284 to i32*
  %2288 = load i32, i32* %2287
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RCX.i671, align 8
  store %struct.Memory* %loadMem_452cb2, %struct.Memory** %MEMORY
  %loadMem_452cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 5
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RCX.i668
  %2297 = load i64, i64* %PC.i667
  %2298 = add i64 %2297, 3
  store i64 %2298, i64* %PC.i667
  %2299 = and i64 %2296, 4294967295
  %2300 = lshr i64 %2299, 9
  %2301 = trunc i64 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = lshr i64 %2300, 1
  %2304 = trunc i64 %2303 to i32
  %2305 = and i32 %2304, 2147483647
  %2306 = zext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i668, align 8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2302, i8* %2307, align 1
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2309 = and i32 %2304, 255
  %2310 = call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  store i8 %2313, i8* %2308, align 1
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2314, align 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2316 = icmp eq i32 %2305, 0
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %2315, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2318, align 1
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2319, align 1
  store %struct.Memory* %loadMem_452cb5, %struct.Memory** %MEMORY
  %loadMem_452cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 5
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %2325 to i64*
  %2326 = load i64, i64* %RCX.i666
  %2327 = load i64, i64* %PC.i665
  %2328 = add i64 %2327, 6
  store i64 %2328, i64* %PC.i665
  %2329 = and i64 1023, %2326
  %2330 = trunc i64 %2329 to i32
  store i64 %2329, i64* %RCX.i666, align 8
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2331, align 1
  %2332 = and i32 %2330, 255
  %2333 = call i32 @llvm.ctpop.i32(i32 %2332)
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = xor i8 %2335, 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2336, i8* %2337, align 1
  %2338 = icmp eq i32 %2330, 0
  %2339 = zext i1 %2338 to i8
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2339, i8* %2340, align 1
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2341, align 1
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2342, align 1
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2343, align 1
  store %struct.Memory* %loadMem_452cb8, %struct.Memory** %MEMORY
  %loadMem_452cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 1
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 15
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RBP.i664 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %RBP.i664
  %2354 = sub i64 %2353, 64
  %2355 = load i64, i64* %PC.i662
  %2356 = add i64 %2355, 4
  store i64 %2356, i64* %PC.i662
  %2357 = inttoptr i64 %2354 to i64*
  %2358 = load i64, i64* %2357
  store i64 %2358, i64* %RAX.i663, align 8
  store %struct.Memory* %loadMem_452cbe, %struct.Memory** %MEMORY
  %loadMem_452cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 5
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %ECX.i660 = bitcast %union.anon* %2364 to i32*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 1
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %2367 to i64*
  %2368 = load i64, i64* %RAX.i661
  %2369 = load i32, i32* %ECX.i660
  %2370 = zext i32 %2369 to i64
  %2371 = load i64, i64* %PC.i659
  %2372 = add i64 %2371, 2
  store i64 %2372, i64* %PC.i659
  %2373 = inttoptr i64 %2368 to i32*
  store i32 %2369, i32* %2373
  store %struct.Memory* %loadMem_452cc2, %struct.Memory** %MEMORY
  br label %block_.L_452cc4

block_.L_452cc4:                                  ; preds = %block_452cab, %block_452ca0
  %loadMem_452cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %PC.i658
  %2378 = add i64 %2377, 5
  %2379 = load i64, i64* %PC.i658
  %2380 = add i64 %2379, 5
  store i64 %2380, i64* %PC.i658
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2378, i64* %2381, align 8
  store %struct.Memory* %loadMem_452cc4, %struct.Memory** %MEMORY
  br label %block_.L_452cc9

block_.L_452cc9:                                  ; preds = %block_.L_452cc4, %block_452c87
  %loadMem_452cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 33
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %PC.i657
  %2386 = add i64 %2385, 9
  store i64 %2386, i64* %PC.i657
  %2387 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2388, align 1
  %2389 = trunc i64 %2387 to i32
  %2390 = and i32 %2389, 255
  %2391 = call i32 @llvm.ctpop.i32(i32 %2390)
  %2392 = trunc i32 %2391 to i8
  %2393 = and i8 %2392, 1
  %2394 = xor i8 %2393, 1
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2394, i8* %2395, align 1
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2396, align 1
  %2397 = icmp eq i64 %2387, 0
  %2398 = zext i1 %2397 to i8
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2398, i8* %2399, align 1
  %2400 = lshr i64 %2387, 63
  %2401 = trunc i64 %2400 to i8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2401, i8* %2402, align 1
  %2403 = lshr i64 %2387, 63
  %2404 = xor i64 %2400, %2403
  %2405 = add i64 %2404, %2403
  %2406 = icmp eq i64 %2405, 2
  %2407 = zext i1 %2406 to i8
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2407, i8* %2408, align 1
  store %struct.Memory* %loadMem_452cc9, %struct.Memory** %MEMORY
  %loadMem_452cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %PC.i656
  %2413 = add i64 %2412, 78
  %2414 = load i64, i64* %PC.i656
  %2415 = add i64 %2414, 6
  %2416 = load i64, i64* %PC.i656
  %2417 = add i64 %2416, 6
  store i64 %2417, i64* %PC.i656
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2419 = load i8, i8* %2418, align 1
  store i8 %2419, i8* %BRANCH_TAKEN, align 1
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2421 = icmp ne i8 %2419, 0
  %2422 = select i1 %2421, i64 %2413, i64 %2415
  store i64 %2422, i64* %2420, align 8
  store %struct.Memory* %loadMem_452cd2, %struct.Memory** %MEMORY
  %loadBr_452cd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452cd2 = icmp eq i8 %loadBr_452cd2, 1
  br i1 %cmpBr_452cd2, label %block_.L_452d20, label %block_452cd8

block_452cd8:                                     ; preds = %block_.L_452cc9
  %loadMem_452cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 19
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %R9.i655 = bitcast %union.anon* %2428 to i64*
  %2429 = load i64, i64* %PC.i654
  %2430 = add i64 %2429, 10
  store i64 %2430, i64* %PC.i654
  store i64 ptrtoint (%G__0x57dee3_type* @G__0x57dee3 to i64), i64* %R9.i655, align 8
  store %struct.Memory* %loadMem_452cd8, %struct.Memory** %MEMORY
  %loadMem_452ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 11
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RDI.i652 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RBP.i653
  %2441 = sub i64 %2440, 1584
  %2442 = load i64, i64* %PC.i651
  %2443 = add i64 %2442, 7
  store i64 %2443, i64* %PC.i651
  %2444 = inttoptr i64 %2441 to i64*
  %2445 = load i64, i64* %2444
  store i64 %2445, i64* %RDI.i652, align 8
  store %struct.Memory* %loadMem_452ce2, %struct.Memory** %MEMORY
  %loadMem_452ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 9
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RSI.i649 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 15
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %2454 to i64*
  %2455 = load i64, i64* %RBP.i650
  %2456 = sub i64 %2455, 1588
  %2457 = load i64, i64* %PC.i648
  %2458 = add i64 %2457, 6
  store i64 %2458, i64* %PC.i648
  %2459 = inttoptr i64 %2456 to i32*
  %2460 = load i32, i32* %2459
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RSI.i649, align 8
  store %struct.Memory* %loadMem_452ce9, %struct.Memory** %MEMORY
  %loadMem_452cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 7
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RDX.i646 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 15
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %2470 to i64*
  %2471 = load i64, i64* %RBP.i647
  %2472 = sub i64 %2471, 1592
  %2473 = load i64, i64* %PC.i645
  %2474 = add i64 %2473, 6
  store i64 %2474, i64* %PC.i645
  %2475 = inttoptr i64 %2472 to i32*
  %2476 = load i32, i32* %2475
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RDX.i646, align 8
  store %struct.Memory* %loadMem_452cef, %struct.Memory** %MEMORY
  %loadMem_452cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i643 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 15
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RBP.i644 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RBP.i644
  %2488 = sub i64 %2487, 1576
  %2489 = load i64, i64* %PC.i642
  %2490 = add i64 %2489, 7
  store i64 %2490, i64* %PC.i642
  %2491 = inttoptr i64 %2488 to i64*
  %2492 = load i64, i64* %2491
  store i64 %2492, i64* %RAX.i643, align 8
  store %struct.Memory* %loadMem_452cf5, %struct.Memory** %MEMORY
  %loadMem_452cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 1
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %2498 to i64*
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 5
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %2501 to i64*
  %2502 = load i64, i64* %RAX.i640
  %2503 = add i64 %2502, 4
  %2504 = load i64, i64* %PC.i639
  %2505 = add i64 %2504, 3
  store i64 %2505, i64* %PC.i639
  %2506 = inttoptr i64 %2503 to i32*
  %2507 = load i32, i32* %2506
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RCX.i641, align 8
  store %struct.Memory* %loadMem_452cfc, %struct.Memory** %MEMORY
  %loadMem_452cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 5
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RCX.i638
  %2516 = load i64, i64* %PC.i637
  %2517 = add i64 %2516, 3
  store i64 %2517, i64* %PC.i637
  %2518 = and i64 %2515, 4294967295
  %2519 = lshr i64 %2518, 9
  %2520 = trunc i64 %2519 to i8
  %2521 = and i8 %2520, 1
  %2522 = lshr i64 %2519, 1
  %2523 = trunc i64 %2522 to i32
  %2524 = and i32 %2523, 2147483647
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RCX.i638, align 8
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2521, i8* %2526, align 1
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2528 = and i32 %2523, 255
  %2529 = call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %2527, align 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2533, align 1
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2535 = icmp eq i32 %2524, 0
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %2534, align 1
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2537, align 1
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2538, align 1
  store %struct.Memory* %loadMem_452cff, %struct.Memory** %MEMORY
  %loadMem_452d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 5
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %RCX.i636
  %2546 = load i64, i64* %PC.i635
  %2547 = add i64 %2546, 6
  store i64 %2547, i64* %PC.i635
  %2548 = and i64 1023, %2545
  %2549 = trunc i64 %2548 to i32
  store i64 %2548, i64* %RCX.i636, align 8
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2550, align 1
  %2551 = and i32 %2549, 255
  %2552 = call i32 @llvm.ctpop.i32(i32 %2551)
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  %2555 = xor i8 %2554, 1
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2555, i8* %2556, align 1
  %2557 = icmp eq i32 %2549, 0
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2558, i8* %2559, align 1
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2560, align 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2561, align 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2562, align 1
  store %struct.Memory* %loadMem_452d02, %struct.Memory** %MEMORY
  %loadMem_452d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 33
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 1
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 15
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %2571 to i64*
  %2572 = load i64, i64* %RBP.i634
  %2573 = sub i64 %2572, 1576
  %2574 = load i64, i64* %PC.i632
  %2575 = add i64 %2574, 7
  store i64 %2575, i64* %PC.i632
  %2576 = inttoptr i64 %2573 to i64*
  %2577 = load i64, i64* %2576
  store i64 %2577, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_452d08, %struct.Memory** %MEMORY
  %loadMem_452d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 33
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %2580 to i64*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 17
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %R8D.i630 = bitcast %union.anon* %2583 to i32*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 1
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %2586 to i64*
  %2587 = bitcast i32* %R8D.i630 to i64*
  %2588 = load i64, i64* %RAX.i631
  %2589 = add i64 %2588, 4
  %2590 = load i64, i64* %PC.i629
  %2591 = add i64 %2590, 4
  store i64 %2591, i64* %PC.i629
  %2592 = inttoptr i64 %2589 to i32*
  %2593 = load i32, i32* %2592
  %2594 = zext i32 %2593 to i64
  store i64 %2594, i64* %2587, align 8
  store %struct.Memory* %loadMem_452d0f, %struct.Memory** %MEMORY
  %loadMem_452d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 17
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %R8D.i628 = bitcast %union.anon* %2600 to i32*
  %2601 = bitcast i32* %R8D.i628 to i64*
  %2602 = load i32, i32* %R8D.i628
  %2603 = zext i32 %2602 to i64
  %2604 = load i64, i64* %PC.i627
  %2605 = add i64 %2604, 4
  store i64 %2605, i64* %PC.i627
  %2606 = and i64 %2603, 4294967295
  %2607 = lshr i64 %2606, 23
  %2608 = trunc i64 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = lshr i64 %2607, 1
  %2611 = trunc i64 %2610 to i32
  %2612 = and i32 %2611, 2147483647
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %2601, align 8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2609, i8* %2614, align 1
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2616 = and i32 %2611, 255
  %2617 = call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %2615, align 1
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2621, align 1
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2623 = icmp eq i32 %2612, 0
  %2624 = zext i1 %2623 to i8
  store i8 %2624, i8* %2622, align 1
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2625, align 1
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2626, align 1
  store %struct.Memory* %loadMem_452d13, %struct.Memory** %MEMORY
  %loadMem_452d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 17
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %R8D.i626 = bitcast %union.anon* %2632 to i32*
  %2633 = bitcast i32* %R8D.i626 to i64*
  %2634 = load i32, i32* %R8D.i626
  %2635 = zext i32 %2634 to i64
  %2636 = load i64, i64* %PC.i625
  %2637 = add i64 %2636, 4
  store i64 %2637, i64* %PC.i625
  %2638 = and i64 15, %2635
  %2639 = trunc i64 %2638 to i32
  store i64 %2638, i64* %2633, align 8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2640, align 1
  %2641 = and i32 %2639, 255
  %2642 = call i32 @llvm.ctpop.i32(i32 %2641)
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2645, i8* %2646, align 1
  %2647 = icmp eq i32 %2639, 0
  %2648 = zext i1 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2648, i8* %2649, align 1
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2650, align 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2651, align 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2652, align 1
  store %struct.Memory* %loadMem_452d17, %struct.Memory** %MEMORY
  %loadMem1_452d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %PC.i624
  %2657 = add i64 %2656, -240123
  %2658 = load i64, i64* %PC.i624
  %2659 = add i64 %2658, 5
  %2660 = load i64, i64* %PC.i624
  %2661 = add i64 %2660, 5
  store i64 %2661, i64* %PC.i624
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2663 = load i64, i64* %2662, align 8
  %2664 = add i64 %2663, -8
  %2665 = inttoptr i64 %2664 to i64*
  store i64 %2659, i64* %2665
  store i64 %2664, i64* %2662, align 8
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2657, i64* %2666, align 8
  store %struct.Memory* %loadMem1_452d1b, %struct.Memory** %MEMORY
  %loadMem2_452d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452d1b = load i64, i64* %3
  %call2_452d1b = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_452d1b, %struct.Memory* %loadMem2_452d1b)
  store %struct.Memory* %call2_452d1b, %struct.Memory** %MEMORY
  br label %block_.L_452d20

block_.L_452d20:                                  ; preds = %block_452cd8, %block_.L_452cc9
  %loadMem_452d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 1
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 15
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %2675 to i64*
  %2676 = load i64, i64* %RBP.i623
  %2677 = sub i64 %2676, 1576
  %2678 = load i64, i64* %PC.i621
  %2679 = add i64 %2678, 7
  store i64 %2679, i64* %PC.i621
  %2680 = inttoptr i64 %2677 to i64*
  %2681 = load i64, i64* %2680
  store i64 %2681, i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_452d20, %struct.Memory** %MEMORY
  %loadMem_452d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 1
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 5
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %RAX.i619
  %2692 = add i64 %2691, 4
  %2693 = load i64, i64* %PC.i618
  %2694 = add i64 %2693, 3
  store i64 %2694, i64* %PC.i618
  %2695 = inttoptr i64 %2692 to i32*
  %2696 = load i32, i32* %2695
  %2697 = zext i32 %2696 to i64
  store i64 %2697, i64* %RCX.i620, align 8
  store %struct.Memory* %loadMem_452d27, %struct.Memory** %MEMORY
  %loadMem_452d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 5
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RCX.i617
  %2705 = load i64, i64* %PC.i616
  %2706 = add i64 %2705, 3
  store i64 %2706, i64* %PC.i616
  %2707 = and i64 %2704, 4294967295
  %2708 = lshr i64 %2707, 23
  %2709 = trunc i64 %2708 to i8
  %2710 = and i8 %2709, 1
  %2711 = lshr i64 %2708, 1
  %2712 = trunc i64 %2711 to i32
  %2713 = and i32 %2712, 2147483647
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RCX.i617, align 8
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2710, i8* %2715, align 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2717 = and i32 %2712, 255
  %2718 = call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %2716, align 1
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2722, align 1
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2724 = icmp eq i32 %2713, 0
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %2723, align 1
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2726, align 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2727, align 1
  store %struct.Memory* %loadMem_452d2a, %struct.Memory** %MEMORY
  %loadMem_452d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 5
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RCX.i615 = bitcast %union.anon* %2733 to i64*
  %2734 = load i64, i64* %RCX.i615
  %2735 = load i64, i64* %PC.i614
  %2736 = add i64 %2735, 3
  store i64 %2736, i64* %PC.i614
  %2737 = and i64 15, %2734
  %2738 = trunc i64 %2737 to i32
  store i64 %2737, i64* %RCX.i615, align 8
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2739, align 1
  %2740 = and i32 %2738, 255
  %2741 = call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2744, i8* %2745, align 1
  %2746 = icmp eq i32 %2738, 0
  %2747 = zext i1 %2746 to i8
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2747, i8* %2748, align 1
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2749, align 1
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2750, align 1
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2751, align 1
  store %struct.Memory* %loadMem_452d2d, %struct.Memory** %MEMORY
  %loadMem_452d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 5
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %ECX.i612 = bitcast %union.anon* %2757 to i32*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 15
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %2760 to i64*
  %2761 = load i64, i64* %RBP.i613
  %2762 = sub i64 %2761, 44
  %2763 = load i32, i32* %ECX.i612
  %2764 = zext i32 %2763 to i64
  %2765 = load i64, i64* %PC.i611
  %2766 = add i64 %2765, 3
  store i64 %2766, i64* %PC.i611
  %2767 = inttoptr i64 %2762 to i32*
  store i32 %2763, i32* %2767
  store %struct.Memory* %loadMem_452d30, %struct.Memory** %MEMORY
  %loadMem_452d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2770 to i64*
  %2771 = load i64, i64* %PC.i610
  %2772 = add i64 %2771, 1466
  %2773 = load i64, i64* %PC.i610
  %2774 = add i64 %2773, 5
  store i64 %2774, i64* %PC.i610
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2772, i64* %2775, align 8
  store %struct.Memory* %loadMem_452d33, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_452d38:                                  ; preds = %block_452c55
  %loadMem_452d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %PC.i609
  %2780 = add i64 %2779, 5
  %2781 = load i64, i64* %PC.i609
  %2782 = add i64 %2781, 5
  store i64 %2782, i64* %PC.i609
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2780, i64* %2783, align 8
  store %struct.Memory* %loadMem_452d38, %struct.Memory** %MEMORY
  br label %block_.L_452d3d

block_.L_452d3d:                                  ; preds = %block_.L_452d38, %block_452c4b, %block_452c36, %block_.L_452c22
  %loadMem_452d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 7
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RDX.i607 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 15
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %RBP.i608
  %2794 = sub i64 %2793, 1552
  %2795 = load i64, i64* %PC.i606
  %2796 = add i64 %2795, 7
  store i64 %2796, i64* %PC.i606
  store i64 %2794, i64* %RDX.i607, align 8
  store %struct.Memory* %loadMem_452d3d, %struct.Memory** %MEMORY
  %loadMem_452d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 11
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RDI.i604 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 15
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %2805 to i64*
  %2806 = load i64, i64* %RBP.i605
  %2807 = sub i64 %2806, 48
  %2808 = load i64, i64* %PC.i603
  %2809 = add i64 %2808, 3
  store i64 %2809, i64* %PC.i603
  %2810 = inttoptr i64 %2807 to i32*
  %2811 = load i32, i32* %2810
  %2812 = zext i32 %2811 to i64
  store i64 %2812, i64* %RDI.i604, align 8
  store %struct.Memory* %loadMem_452d44, %struct.Memory** %MEMORY
  %loadMem_452d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 9
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RSI.i601 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 15
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RBP.i602
  %2823 = sub i64 %2822, 52
  %2824 = load i64, i64* %PC.i600
  %2825 = add i64 %2824, 3
  store i64 %2825, i64* %PC.i600
  %2826 = inttoptr i64 %2823 to i32*
  %2827 = load i32, i32* %2826
  %2828 = zext i32 %2827 to i64
  store i64 %2828, i64* %RSI.i601, align 8
  store %struct.Memory* %loadMem_452d47, %struct.Memory** %MEMORY
  %loadMem1_452d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %PC.i599
  %2833 = add i64 %2832, 1478
  %2834 = load i64, i64* %PC.i599
  %2835 = add i64 %2834, 5
  %2836 = load i64, i64* %PC.i599
  %2837 = add i64 %2836, 5
  store i64 %2837, i64* %PC.i599
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2839 = load i64, i64* %2838, align 8
  %2840 = add i64 %2839, -8
  %2841 = inttoptr i64 %2840 to i64*
  store i64 %2835, i64* %2841
  store i64 %2840, i64* %2838, align 8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2833, i64* %2842, align 8
  store %struct.Memory* %loadMem1_452d4a, %struct.Memory** %MEMORY
  %loadMem2_452d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452d4a = load i64, i64* %3
  %call2_452d4a = call %struct.Memory* @sub_453310.trivial_connection(%struct.State* %0, i64 %loadPC_452d4a, %struct.Memory* %loadMem2_452d4a)
  store %struct.Memory* %call2_452d4a, %struct.Memory** %MEMORY
  %loadMem_452d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 1
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %EAX.i598 = bitcast %union.anon* %2848 to i32*
  %2849 = load i32, i32* %EAX.i598
  %2850 = zext i32 %2849 to i64
  %2851 = load i64, i64* %PC.i597
  %2852 = add i64 %2851, 3
  store i64 %2852, i64* %PC.i597
  %2853 = sub i32 %2849, 5
  %2854 = icmp ult i32 %2849, 5
  %2855 = zext i1 %2854 to i8
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2855, i8* %2856, align 1
  %2857 = and i32 %2853, 255
  %2858 = call i32 @llvm.ctpop.i32(i32 %2857)
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  %2861 = xor i8 %2860, 1
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2861, i8* %2862, align 1
  %2863 = xor i64 5, %2850
  %2864 = trunc i64 %2863 to i32
  %2865 = xor i32 %2864, %2853
  %2866 = lshr i32 %2865, 4
  %2867 = trunc i32 %2866 to i8
  %2868 = and i8 %2867, 1
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2868, i8* %2869, align 1
  %2870 = icmp eq i32 %2853, 0
  %2871 = zext i1 %2870 to i8
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2871, i8* %2872, align 1
  %2873 = lshr i32 %2853, 31
  %2874 = trunc i32 %2873 to i8
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2874, i8* %2875, align 1
  %2876 = lshr i32 %2849, 31
  %2877 = xor i32 %2873, %2876
  %2878 = add i32 %2877, %2876
  %2879 = icmp eq i32 %2878, 2
  %2880 = zext i1 %2879 to i8
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2880, i8* %2881, align 1
  store %struct.Memory* %loadMem_452d4f, %struct.Memory** %MEMORY
  %loadMem_452d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 33
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %PC.i596
  %2886 = add i64 %2885, 176
  %2887 = load i64, i64* %PC.i596
  %2888 = add i64 %2887, 6
  %2889 = load i64, i64* %PC.i596
  %2890 = add i64 %2889, 6
  store i64 %2890, i64* %PC.i596
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2892 = load i8, i8* %2891, align 1
  %2893 = icmp eq i8 %2892, 0
  %2894 = zext i1 %2893 to i8
  store i8 %2894, i8* %BRANCH_TAKEN, align 1
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2896 = select i1 %2893, i64 %2886, i64 %2888
  store i64 %2896, i64* %2895, align 8
  store %struct.Memory* %loadMem_452d52, %struct.Memory** %MEMORY
  %loadBr_452d52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452d52 = icmp eq i8 %loadBr_452d52, 1
  br i1 %cmpBr_452d52, label %block_.L_452e02, label %block_452d58

block_452d58:                                     ; preds = %block_.L_452d3d
  %loadMem_452d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %PC.i595
  %2901 = add i64 %2900, 9
  store i64 %2901, i64* %PC.i595
  %2902 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2903, align 1
  %2904 = trunc i64 %2902 to i32
  %2905 = and i32 %2904, 255
  %2906 = call i32 @llvm.ctpop.i32(i32 %2905)
  %2907 = trunc i32 %2906 to i8
  %2908 = and i8 %2907, 1
  %2909 = xor i8 %2908, 1
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2909, i8* %2910, align 1
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2911, align 1
  %2912 = icmp eq i64 %2902, 0
  %2913 = zext i1 %2912 to i8
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2913, i8* %2914, align 1
  %2915 = lshr i64 %2902, 63
  %2916 = trunc i64 %2915 to i8
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2916, i8* %2917, align 1
  %2918 = lshr i64 %2902, 63
  %2919 = xor i64 %2915, %2918
  %2920 = add i64 %2919, %2918
  %2921 = icmp eq i64 %2920, 2
  %2922 = zext i1 %2921 to i8
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2922, i8* %2923, align 1
  store %struct.Memory* %loadMem_452d58, %struct.Memory** %MEMORY
  %loadMem_452d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %PC.i594
  %2928 = add i64 %2927, 52
  %2929 = load i64, i64* %PC.i594
  %2930 = add i64 %2929, 6
  %2931 = load i64, i64* %PC.i594
  %2932 = add i64 %2931, 6
  store i64 %2932, i64* %PC.i594
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2934 = load i8, i8* %2933, align 1
  store i8 %2934, i8* %BRANCH_TAKEN, align 1
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2936 = icmp ne i8 %2934, 0
  %2937 = select i1 %2936, i64 %2928, i64 %2930
  store i64 %2937, i64* %2935, align 8
  store %struct.Memory* %loadMem_452d61, %struct.Memory** %MEMORY
  %loadBr_452d61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452d61 = icmp eq i8 %loadBr_452d61, 1
  br i1 %cmpBr_452d61, label %block_.L_452d95, label %block_452d67

block_452d67:                                     ; preds = %block_452d58
  %loadMem_452d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 17
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %R8D.i593 = bitcast %union.anon* %2943 to i32*
  %2944 = bitcast i32* %R8D.i593 to i64*
  %2945 = load i64, i64* %PC.i592
  %2946 = add i64 %2945, 6
  store i64 %2946, i64* %PC.i592
  store i64 5, i64* %2944, align 8
  store %struct.Memory* %loadMem_452d67, %struct.Memory** %MEMORY
  %loadMem_452d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 19
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %R9.i591 = bitcast %union.anon* %2952 to i64*
  %2953 = load i64, i64* %PC.i590
  %2954 = add i64 %2953, 10
  store i64 %2954, i64* %PC.i590
  store i64 ptrtoint (%G__0x57f5db_type* @G__0x57f5db to i64), i64* %R9.i591, align 8
  store %struct.Memory* %loadMem_452d6d, %struct.Memory** %MEMORY
  %loadMem_452d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 11
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RDI.i588 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RBP.i589
  %2965 = sub i64 %2964, 1584
  %2966 = load i64, i64* %PC.i587
  %2967 = add i64 %2966, 7
  store i64 %2967, i64* %PC.i587
  %2968 = inttoptr i64 %2965 to i64*
  %2969 = load i64, i64* %2968
  store i64 %2969, i64* %RDI.i588, align 8
  store %struct.Memory* %loadMem_452d77, %struct.Memory** %MEMORY
  %loadMem_452d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 9
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RSI.i585 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 15
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RBP.i586
  %2980 = sub i64 %2979, 1588
  %2981 = load i64, i64* %PC.i584
  %2982 = add i64 %2981, 6
  store i64 %2982, i64* %PC.i584
  %2983 = inttoptr i64 %2980 to i32*
  %2984 = load i32, i32* %2983
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RSI.i585, align 8
  store %struct.Memory* %loadMem_452d7e, %struct.Memory** %MEMORY
  %loadMem_452d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 7
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RDX.i582 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 15
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RBP.i583
  %2996 = sub i64 %2995, 1592
  %2997 = load i64, i64* %PC.i581
  %2998 = add i64 %2997, 6
  store i64 %2998, i64* %PC.i581
  %2999 = inttoptr i64 %2996 to i32*
  %3000 = load i32, i32* %2999
  %3001 = zext i32 %3000 to i64
  store i64 %3001, i64* %RDX.i582, align 8
  store %struct.Memory* %loadMem_452d84, %struct.Memory** %MEMORY
  %loadMem_452d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 5
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RCX.i579 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 15
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %RBP.i580
  %3012 = sub i64 %3011, 1552
  %3013 = load i64, i64* %PC.i578
  %3014 = add i64 %3013, 6
  store i64 %3014, i64* %PC.i578
  %3015 = inttoptr i64 %3012 to i32*
  %3016 = load i32, i32* %3015
  %3017 = zext i32 %3016 to i64
  store i64 %3017, i64* %RCX.i579, align 8
  store %struct.Memory* %loadMem_452d8a, %struct.Memory** %MEMORY
  %loadMem1_452d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3020 to i64*
  %3021 = load i64, i64* %PC.i577
  %3022 = add i64 %3021, -240240
  %3023 = load i64, i64* %PC.i577
  %3024 = add i64 %3023, 5
  %3025 = load i64, i64* %PC.i577
  %3026 = add i64 %3025, 5
  store i64 %3026, i64* %PC.i577
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3028 = load i64, i64* %3027, align 8
  %3029 = add i64 %3028, -8
  %3030 = inttoptr i64 %3029 to i64*
  store i64 %3024, i64* %3030
  store i64 %3029, i64* %3027, align 8
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3022, i64* %3031, align 8
  store %struct.Memory* %loadMem1_452d90, %struct.Memory** %MEMORY
  %loadMem2_452d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452d90 = load i64, i64* %3
  %call2_452d90 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_452d90, %struct.Memory* %loadMem2_452d90)
  store %struct.Memory* %call2_452d90, %struct.Memory** %MEMORY
  br label %block_.L_452d95

block_.L_452d95:                                  ; preds = %block_452d67, %block_452d58
  %loadMem_452d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %PC.i576
  %3036 = add i64 %3035, 5
  %3037 = load i64, i64* %PC.i576
  %3038 = add i64 %3037, 5
  store i64 %3038, i64* %PC.i576
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3036, i64* %3039, align 8
  store %struct.Memory* %loadMem_452d95, %struct.Memory** %MEMORY
  br label %block_.L_452d9a

block_.L_452d9a:                                  ; preds = %block_.L_452d95
  %loadMem_452d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 33
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3042 to i64*
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 15
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %RBP.i575
  %3047 = sub i64 %3046, 64
  %3048 = load i64, i64* %PC.i574
  %3049 = add i64 %3048, 5
  store i64 %3049, i64* %PC.i574
  %3050 = inttoptr i64 %3047 to i64*
  %3051 = load i64, i64* %3050
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3052, align 1
  %3053 = trunc i64 %3051 to i32
  %3054 = and i32 %3053, 255
  %3055 = call i32 @llvm.ctpop.i32(i32 %3054)
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3058, i8* %3059, align 1
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3060, align 1
  %3061 = icmp eq i64 %3051, 0
  %3062 = zext i1 %3061 to i8
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3062, i8* %3063, align 1
  %3064 = lshr i64 %3051, 63
  %3065 = trunc i64 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3065, i8* %3066, align 1
  %3067 = lshr i64 %3051, 63
  %3068 = xor i64 %3064, %3067
  %3069 = add i64 %3068, %3067
  %3070 = icmp eq i64 %3069, 2
  %3071 = zext i1 %3070 to i8
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3071, i8* %3072, align 1
  store %struct.Memory* %loadMem_452d9a, %struct.Memory** %MEMORY
  %loadMem_452d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3075 to i64*
  %3076 = load i64, i64* %PC.i573
  %3077 = add i64 %3076, 18
  %3078 = load i64, i64* %PC.i573
  %3079 = add i64 %3078, 6
  %3080 = load i64, i64* %PC.i573
  %3081 = add i64 %3080, 6
  store i64 %3081, i64* %PC.i573
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3083 = load i8, i8* %3082, align 1
  store i8 %3083, i8* %BRANCH_TAKEN, align 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3085 = icmp ne i8 %3083, 0
  %3086 = select i1 %3085, i64 %3077, i64 %3079
  store i64 %3086, i64* %3084, align 8
  store %struct.Memory* %loadMem_452d9f, %struct.Memory** %MEMORY
  %loadBr_452d9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452d9f = icmp eq i8 %loadBr_452d9f, 1
  br i1 %cmpBr_452d9f, label %block_.L_452db1, label %block_452da5

block_452da5:                                     ; preds = %block_.L_452d9a
  %loadMem_452da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 33
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 1
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 15
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %3095 to i64*
  %3096 = load i64, i64* %RBP.i572
  %3097 = sub i64 %3096, 1552
  %3098 = load i64, i64* %PC.i570
  %3099 = add i64 %3098, 6
  store i64 %3099, i64* %PC.i570
  %3100 = inttoptr i64 %3097 to i32*
  %3101 = load i32, i32* %3100
  %3102 = zext i32 %3101 to i64
  store i64 %3102, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_452da5, %struct.Memory** %MEMORY
  %loadMem_452dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 5
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 15
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %RBP.i569
  %3113 = sub i64 %3112, 64
  %3114 = load i64, i64* %PC.i567
  %3115 = add i64 %3114, 4
  store i64 %3115, i64* %PC.i567
  %3116 = inttoptr i64 %3113 to i64*
  %3117 = load i64, i64* %3116
  store i64 %3117, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_452dab, %struct.Memory** %MEMORY
  %loadMem_452daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 1
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %EAX.i565 = bitcast %union.anon* %3123 to i32*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 5
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %3126 to i64*
  %3127 = load i64, i64* %RCX.i566
  %3128 = load i32, i32* %EAX.i565
  %3129 = zext i32 %3128 to i64
  %3130 = load i64, i64* %PC.i564
  %3131 = add i64 %3130, 2
  store i64 %3131, i64* %PC.i564
  %3132 = inttoptr i64 %3127 to i32*
  store i32 %3128, i32* %3132
  store %struct.Memory* %loadMem_452daf, %struct.Memory** %MEMORY
  br label %block_.L_452db1

block_.L_452db1:                                  ; preds = %block_452da5, %block_.L_452d9a
  %loadMem_452db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 15
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %3138 to i64*
  %3139 = load i64, i64* %RBP.i563
  %3140 = sub i64 %3139, 1576
  %3141 = load i64, i64* %PC.i562
  %3142 = add i64 %3141, 8
  store i64 %3142, i64* %PC.i562
  %3143 = inttoptr i64 %3140 to i64*
  %3144 = load i64, i64* %3143
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3145, align 1
  %3146 = trunc i64 %3144 to i32
  %3147 = and i32 %3146, 255
  %3148 = call i32 @llvm.ctpop.i32(i32 %3147)
  %3149 = trunc i32 %3148 to i8
  %3150 = and i8 %3149, 1
  %3151 = xor i8 %3150, 1
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3151, i8* %3152, align 1
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3153, align 1
  %3154 = icmp eq i64 %3144, 0
  %3155 = zext i1 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3155, i8* %3156, align 1
  %3157 = lshr i64 %3144, 63
  %3158 = trunc i64 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3158, i8* %3159, align 1
  %3160 = lshr i64 %3144, 63
  %3161 = xor i64 %3157, %3160
  %3162 = add i64 %3161, %3160
  %3163 = icmp eq i64 %3162, 2
  %3164 = zext i1 %3163 to i8
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3164, i8* %3165, align 1
  store %struct.Memory* %loadMem_452db1, %struct.Memory** %MEMORY
  %loadMem_452db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %PC.i561
  %3170 = add i64 %3169, 61
  %3171 = load i64, i64* %PC.i561
  %3172 = add i64 %3171, 6
  %3173 = load i64, i64* %PC.i561
  %3174 = add i64 %3173, 6
  store i64 %3174, i64* %PC.i561
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3176 = load i8, i8* %3175, align 1
  store i8 %3176, i8* %BRANCH_TAKEN, align 1
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3178 = icmp ne i8 %3176, 0
  %3179 = select i1 %3178, i64 %3170, i64 %3172
  store i64 %3179, i64* %3177, align 8
  store %struct.Memory* %loadMem_452db9, %struct.Memory** %MEMORY
  %loadBr_452db9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452db9 = icmp eq i8 %loadBr_452db9, 1
  br i1 %cmpBr_452db9, label %block_.L_452df6, label %block_452dbf

block_452dbf:                                     ; preds = %block_.L_452db1
  %loadMem_452dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 1
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 15
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RBP.i560
  %3190 = sub i64 %3189, 1576
  %3191 = load i64, i64* %PC.i558
  %3192 = add i64 %3191, 7
  store i64 %3192, i64* %PC.i558
  %3193 = inttoptr i64 %3190 to i64*
  %3194 = load i64, i64* %3193
  store i64 %3194, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_452dbf, %struct.Memory** %MEMORY
  %loadMem_452dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 1
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 5
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %RAX.i556
  %3205 = add i64 %3204, 4
  %3206 = load i64, i64* %PC.i555
  %3207 = add i64 %3206, 3
  store i64 %3207, i64* %PC.i555
  %3208 = inttoptr i64 %3205 to i32*
  %3209 = load i32, i32* %3208
  %3210 = zext i32 %3209 to i64
  store i64 %3210, i64* %RCX.i557, align 8
  store %struct.Memory* %loadMem_452dc6, %struct.Memory** %MEMORY
  %loadMem_452dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 33
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3213 to i64*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 5
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RCX.i554 = bitcast %union.anon* %3216 to i64*
  %3217 = load i64, i64* %RCX.i554
  %3218 = load i64, i64* %PC.i553
  %3219 = add i64 %3218, 6
  store i64 %3219, i64* %PC.i553
  %3220 = and i64 1023, %3217
  %3221 = trunc i64 %3220 to i32
  store i64 %3220, i64* %RCX.i554, align 8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3222, align 1
  %3223 = and i32 %3221, 255
  %3224 = call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3227, i8* %3228, align 1
  %3229 = icmp eq i32 %3221, 0
  %3230 = zext i1 %3229 to i8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3230, i8* %3231, align 1
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3232, align 1
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3233, align 1
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3234, align 1
  store %struct.Memory* %loadMem_452dc9, %struct.Memory** %MEMORY
  %loadMem_452dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 5
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RCX.i552
  %3242 = load i64, i64* %PC.i551
  %3243 = add i64 %3242, 6
  store i64 %3243, i64* %PC.i551
  %3244 = or i64 536870912, %3241
  %3245 = trunc i64 %3244 to i32
  %3246 = and i64 %3244, 4294967295
  store i64 %3246, i64* %RCX.i552, align 8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3247, align 1
  %3248 = and i32 %3245, 255
  %3249 = call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3252, i8* %3253, align 1
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3254, align 1
  %3255 = lshr i32 %3245, 31
  %3256 = trunc i32 %3255 to i8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3256, i8* %3257, align 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3258, align 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3259, align 1
  store %struct.Memory* %loadMem_452dcf, %struct.Memory** %MEMORY
  %loadMem_452dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 5
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RCX.i550
  %3267 = load i64, i64* %PC.i549
  %3268 = add i64 %3267, 6
  store i64 %3268, i64* %PC.i549
  %3269 = or i64 83886080, %3266
  %3270 = trunc i64 %3269 to i32
  %3271 = and i64 %3269, 4294967295
  store i64 %3271, i64* %RCX.i550, align 8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3272, align 1
  %3273 = and i32 %3270, 255
  %3274 = call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3277, i8* %3278, align 1
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3279, align 1
  %3280 = lshr i32 %3270, 31
  %3281 = trunc i32 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3281, i8* %3282, align 1
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3283, align 1
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3284, align 1
  store %struct.Memory* %loadMem_452dd5, %struct.Memory** %MEMORY
  %loadMem_452ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 7
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 15
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RBP.i548
  %3295 = sub i64 %3294, 1552
  %3296 = load i64, i64* %PC.i546
  %3297 = add i64 %3296, 6
  store i64 %3297, i64* %PC.i546
  %3298 = inttoptr i64 %3295 to i32*
  %3299 = load i32, i32* %3298
  %3300 = zext i32 %3299 to i64
  store i64 %3300, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_452ddb, %struct.Memory** %MEMORY
  %loadMem_452de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3303 to i64*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 7
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %3306 to i64*
  %3307 = load i64, i64* %RDX.i545
  %3308 = load i64, i64* %PC.i544
  %3309 = add i64 %3308, 6
  store i64 %3309, i64* %PC.i544
  %3310 = and i64 1023, %3307
  %3311 = trunc i64 %3310 to i32
  store i64 %3310, i64* %RDX.i545, align 8
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3312, align 1
  %3313 = and i32 %3311, 255
  %3314 = call i32 @llvm.ctpop.i32(i32 %3313)
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = xor i8 %3316, 1
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3317, i8* %3318, align 1
  %3319 = icmp eq i32 %3311, 0
  %3320 = zext i1 %3319 to i8
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3320, i8* %3321, align 1
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3322, align 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3323, align 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3324, align 1
  store %struct.Memory* %loadMem_452de1, %struct.Memory** %MEMORY
  %loadMem_452de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 7
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %RDX.i543
  %3332 = load i64, i64* %PC.i542
  %3333 = add i64 %3332, 3
  store i64 %3333, i64* %PC.i542
  %3334 = and i64 %3331, 4294967295
  %3335 = shl i64 %3334, 9
  %3336 = trunc i64 %3335 to i32
  %3337 = icmp slt i32 %3336, 0
  %3338 = shl i32 %3336, 1
  %3339 = zext i32 %3338 to i64
  store i64 %3339, i64* %RDX.i543, align 8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3341 = zext i1 %3337 to i8
  store i8 %3341, i8* %3340, align 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3342, align 1
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3343, align 1
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3345 = icmp eq i32 %3338, 0
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %3344, align 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3348 = lshr i32 %3338, 31
  %3349 = trunc i32 %3348 to i8
  store i8 %3349, i8* %3347, align 1
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3350, align 1
  store %struct.Memory* %loadMem_452de7, %struct.Memory** %MEMORY
  %loadMem_452dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 7
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %EDX.i540 = bitcast %union.anon* %3356 to i32*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 5
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %RCX.i541
  %3361 = load i32, i32* %EDX.i540
  %3362 = zext i32 %3361 to i64
  %3363 = load i64, i64* %PC.i539
  %3364 = add i64 %3363, 2
  store i64 %3364, i64* %PC.i539
  %3365 = or i64 %3362, %3360
  %3366 = trunc i64 %3365 to i32
  %3367 = and i64 %3365, 4294967295
  store i64 %3367, i64* %RCX.i541, align 8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3368, align 1
  %3369 = and i32 %3366, 255
  %3370 = call i32 @llvm.ctpop.i32(i32 %3369)
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = xor i8 %3372, 1
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3373, i8* %3374, align 1
  %3375 = icmp eq i32 %3366, 0
  %3376 = zext i1 %3375 to i8
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3376, i8* %3377, align 1
  %3378 = lshr i32 %3366, 31
  %3379 = trunc i32 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3379, i8* %3380, align 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3381, align 1
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3382, align 1
  store %struct.Memory* %loadMem_452dea, %struct.Memory** %MEMORY
  %loadMem_452dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 1
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 15
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RBP.i538
  %3393 = sub i64 %3392, 1576
  %3394 = load i64, i64* %PC.i536
  %3395 = add i64 %3394, 7
  store i64 %3395, i64* %PC.i536
  %3396 = inttoptr i64 %3393 to i64*
  %3397 = load i64, i64* %3396
  store i64 %3397, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_452dec, %struct.Memory** %MEMORY
  %loadMem_452df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 33
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 5
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %ECX.i534 = bitcast %union.anon* %3403 to i32*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 1
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %RAX.i535
  %3408 = add i64 %3407, 4
  %3409 = load i32, i32* %ECX.i534
  %3410 = zext i32 %3409 to i64
  %3411 = load i64, i64* %PC.i533
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %PC.i533
  %3413 = inttoptr i64 %3408 to i32*
  store i32 %3409, i32* %3413
  store %struct.Memory* %loadMem_452df3, %struct.Memory** %MEMORY
  br label %block_.L_452df6

block_.L_452df6:                                  ; preds = %block_452dbf, %block_.L_452db1
  %loadMem_452df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 15
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %RBP.i532
  %3421 = sub i64 %3420, 44
  %3422 = load i64, i64* %PC.i531
  %3423 = add i64 %3422, 7
  store i64 %3423, i64* %PC.i531
  %3424 = inttoptr i64 %3421 to i32*
  store i32 5, i32* %3424
  store %struct.Memory* %loadMem_452df6, %struct.Memory** %MEMORY
  %loadMem_452dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 33
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %PC.i530
  %3429 = add i64 %3428, 1264
  %3430 = load i64, i64* %PC.i530
  %3431 = add i64 %3430, 5
  store i64 %3431, i64* %PC.i530
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3429, i64* %3432, align 8
  store %struct.Memory* %loadMem_452dfd, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_452e02:                                  ; preds = %block_.L_452d3d
  %loadMem_452e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 15
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 17
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %RBP.i529
  %3443 = sub i64 %3442, 1544
  %3444 = load i64, i64* %PC.i528
  %3445 = add i64 %3444, 7
  store i64 %3445, i64* %PC.i528
  store i64 %3443, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_452e02, %struct.Memory** %MEMORY
  %loadMem_452e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 5
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 15
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RBP.i527
  %3456 = sub i64 %3455, 1536
  %3457 = load i64, i64* %PC.i525
  %3458 = add i64 %3457, 7
  store i64 %3458, i64* %PC.i525
  store i64 %3456, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_452e09, %struct.Memory** %MEMORY
  %loadMem_452e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 11
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RDI.i523 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 15
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %3467 to i64*
  %3468 = load i64, i64* %RBP.i524
  %3469 = sub i64 %3468, 48
  %3470 = load i64, i64* %PC.i522
  %3471 = add i64 %3470, 3
  store i64 %3471, i64* %PC.i522
  %3472 = inttoptr i64 %3469 to i32*
  %3473 = load i32, i32* %3472
  %3474 = zext i32 %3473 to i64
  store i64 %3474, i64* %RDI.i523, align 8
  store %struct.Memory* %loadMem_452e10, %struct.Memory** %MEMORY
  %loadMem_452e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 9
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RSI.i520 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RBP.i521
  %3485 = sub i64 %3484, 52
  %3486 = load i64, i64* %PC.i519
  %3487 = add i64 %3486, 3
  store i64 %3487, i64* %PC.i519
  %3488 = inttoptr i64 %3485 to i32*
  %3489 = load i32, i32* %3488
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RSI.i520, align 8
  store %struct.Memory* %loadMem_452e13, %struct.Memory** %MEMORY
  %loadMem_452e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 7
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 15
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RBP.i518
  %3501 = sub i64 %3500, 80
  %3502 = load i64, i64* %PC.i516
  %3503 = add i64 %3502, 3
  store i64 %3503, i64* %PC.i516
  %3504 = inttoptr i64 %3501 to i32*
  %3505 = load i32, i32* %3504
  %3506 = zext i32 %3505 to i64
  store i64 %3506, i64* %RDX.i517, align 8
  store %struct.Memory* %loadMem_452e16, %struct.Memory** %MEMORY
  %loadMem1_452e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %PC.i515
  %3511 = add i64 %3510, 1575
  %3512 = load i64, i64* %PC.i515
  %3513 = add i64 %3512, 5
  %3514 = load i64, i64* %PC.i515
  %3515 = add i64 %3514, 5
  store i64 %3515, i64* %PC.i515
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3517 = load i64, i64* %3516, align 8
  %3518 = add i64 %3517, -8
  %3519 = inttoptr i64 %3518 to i64*
  store i64 %3513, i64* %3519
  store i64 %3518, i64* %3516, align 8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3511, i64* %3520, align 8
  store %struct.Memory* %loadMem1_452e19, %struct.Memory** %MEMORY
  %loadMem2_452e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452e19 = load i64, i64* %3
  %call2_452e19 = call %struct.Memory* @sub_453440.find_connection_moves(%struct.State* %0, i64 %loadPC_452e19, %struct.Memory* %loadMem2_452e19)
  store %struct.Memory* %call2_452e19, %struct.Memory** %MEMORY
  %loadMem_452e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 33
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3523 to i64*
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 1
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %EAX.i513 = bitcast %union.anon* %3526 to i32*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 15
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %RBP.i514
  %3531 = sub i64 %3530, 1540
  %3532 = load i32, i32* %EAX.i513
  %3533 = zext i32 %3532 to i64
  %3534 = load i64, i64* %PC.i512
  %3535 = add i64 %3534, 6
  store i64 %3535, i64* %PC.i512
  %3536 = inttoptr i64 %3531 to i32*
  store i32 %3532, i32* %3536
  store %struct.Memory* %loadMem_452e1e, %struct.Memory** %MEMORY
  %loadMem_452e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 33
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 15
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %3542 to i64*
  %3543 = load i64, i64* %RBP.i511
  %3544 = sub i64 %3543, 1548
  %3545 = load i64, i64* %PC.i510
  %3546 = add i64 %3545, 10
  store i64 %3546, i64* %PC.i510
  %3547 = inttoptr i64 %3544 to i32*
  store i32 0, i32* %3547
  store %struct.Memory* %loadMem_452e24, %struct.Memory** %MEMORY
  br label %block_.L_452e2e

block_.L_452e2e:                                  ; preds = %block_.L_4530ed, %block_.L_452e02
  %loadMem_452e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 1
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 15
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %3556 to i64*
  %3557 = load i64, i64* %RBP.i509
  %3558 = sub i64 %3557, 1548
  %3559 = load i64, i64* %PC.i507
  %3560 = add i64 %3559, 6
  store i64 %3560, i64* %PC.i507
  %3561 = inttoptr i64 %3558 to i32*
  %3562 = load i32, i32* %3561
  %3563 = zext i32 %3562 to i64
  store i64 %3563, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_452e2e, %struct.Memory** %MEMORY
  %loadMem_452e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 1
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %EAX.i505 = bitcast %union.anon* %3569 to i32*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 15
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %3572 to i64*
  %3573 = load i32, i32* %EAX.i505
  %3574 = zext i32 %3573 to i64
  %3575 = load i64, i64* %RBP.i506
  %3576 = sub i64 %3575, 1540
  %3577 = load i64, i64* %PC.i504
  %3578 = add i64 %3577, 6
  store i64 %3578, i64* %PC.i504
  %3579 = inttoptr i64 %3576 to i32*
  %3580 = load i32, i32* %3579
  %3581 = sub i32 %3573, %3580
  %3582 = icmp ult i32 %3573, %3580
  %3583 = zext i1 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3583, i8* %3584, align 1
  %3585 = and i32 %3581, 255
  %3586 = call i32 @llvm.ctpop.i32(i32 %3585)
  %3587 = trunc i32 %3586 to i8
  %3588 = and i8 %3587, 1
  %3589 = xor i8 %3588, 1
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3589, i8* %3590, align 1
  %3591 = xor i32 %3580, %3573
  %3592 = xor i32 %3591, %3581
  %3593 = lshr i32 %3592, 4
  %3594 = trunc i32 %3593 to i8
  %3595 = and i8 %3594, 1
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3595, i8* %3596, align 1
  %3597 = icmp eq i32 %3581, 0
  %3598 = zext i1 %3597 to i8
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3598, i8* %3599, align 1
  %3600 = lshr i32 %3581, 31
  %3601 = trunc i32 %3600 to i8
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3601, i8* %3602, align 1
  %3603 = lshr i32 %3573, 31
  %3604 = lshr i32 %3580, 31
  %3605 = xor i32 %3604, %3603
  %3606 = xor i32 %3600, %3603
  %3607 = add i32 %3606, %3605
  %3608 = icmp eq i32 %3607, 2
  %3609 = zext i1 %3608 to i8
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3609, i8* %3610, align 1
  store %struct.Memory* %loadMem_452e34, %struct.Memory** %MEMORY
  %loadMem_452e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3613 to i64*
  %3614 = load i64, i64* %PC.i503
  %3615 = add i64 %3614, 711
  %3616 = load i64, i64* %PC.i503
  %3617 = add i64 %3616, 6
  %3618 = load i64, i64* %PC.i503
  %3619 = add i64 %3618, 6
  store i64 %3619, i64* %PC.i503
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3621 = load i8, i8* %3620, align 1
  %3622 = icmp ne i8 %3621, 0
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3624 = load i8, i8* %3623, align 1
  %3625 = icmp ne i8 %3624, 0
  %3626 = xor i1 %3622, %3625
  %3627 = xor i1 %3626, true
  %3628 = zext i1 %3627 to i8
  store i8 %3628, i8* %BRANCH_TAKEN, align 1
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3630 = select i1 %3626, i64 %3617, i64 %3615
  store i64 %3630, i64* %3629, align 8
  store %struct.Memory* %loadMem_452e3a, %struct.Memory** %MEMORY
  %loadBr_452e3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452e3a = icmp eq i8 %loadBr_452e3a, 1
  br i1 %cmpBr_452e3a, label %block_.L_453101, label %block_452e40

block_452e40:                                     ; preds = %block_.L_452e2e
  %loadMem_452e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 1
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %EAX.i501 = bitcast %union.anon* %3636 to i32*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 1
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RAX.i502
  %3641 = load i32, i32* %EAX.i501
  %3642 = zext i32 %3641 to i64
  %3643 = load i64, i64* %PC.i500
  %3644 = add i64 %3643, 2
  store i64 %3644, i64* %PC.i500
  %3645 = xor i64 %3642, %3640
  %3646 = trunc i64 %3645 to i32
  %3647 = and i64 %3645, 4294967295
  store i64 %3647, i64* %RAX.i502, align 8
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3648, align 1
  %3649 = and i32 %3646, 255
  %3650 = call i32 @llvm.ctpop.i32(i32 %3649)
  %3651 = trunc i32 %3650 to i8
  %3652 = and i8 %3651, 1
  %3653 = xor i8 %3652, 1
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3653, i8* %3654, align 1
  %3655 = icmp eq i32 %3646, 0
  %3656 = zext i1 %3655 to i8
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3656, i8* %3657, align 1
  %3658 = lshr i32 %3646, 31
  %3659 = trunc i32 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3659, i8* %3660, align 1
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3661, align 1
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3662, align 1
  store %struct.Memory* %loadMem_452e40, %struct.Memory** %MEMORY
  %loadMem_452e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3665 to i64*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 1
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %3669 = bitcast %union.anon* %3668 to %struct.anon.2*
  %AL.i498 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3669, i32 0, i32 0
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 5
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %3673 = bitcast %union.anon* %3672 to %struct.anon.2*
  %CL.i499 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3673, i32 0, i32 0
  %3674 = load i8, i8* %AL.i498
  %3675 = zext i8 %3674 to i64
  %3676 = load i64, i64* %PC.i497
  %3677 = add i64 %3676, 2
  store i64 %3677, i64* %PC.i497
  store i8 %3674, i8* %CL.i499, align 1
  store %struct.Memory* %loadMem_452e42, %struct.Memory** %MEMORY
  %loadMem_452e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 7
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RDX.i495 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 15
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %3686 to i64*
  %3687 = load i64, i64* %RBP.i496
  %3688 = sub i64 %3687, 1548
  %3689 = load i64, i64* %PC.i494
  %3690 = add i64 %3689, 7
  store i64 %3690, i64* %PC.i494
  %3691 = inttoptr i64 %3688 to i32*
  %3692 = load i32, i32* %3691
  %3693 = sext i32 %3692 to i64
  store i64 %3693, i64* %RDX.i495, align 8
  store %struct.Memory* %loadMem_452e44, %struct.Memory** %MEMORY
  %loadMem_452e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 1
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 7
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 15
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %3705 to i64*
  %3706 = load i64, i64* %RBP.i493
  %3707 = load i64, i64* %RDX.i492
  %3708 = mul i64 %3707, 4
  %3709 = add i64 %3706, -1536
  %3710 = add i64 %3709, %3708
  %3711 = load i64, i64* %PC.i490
  %3712 = add i64 %3711, 7
  store i64 %3712, i64* %PC.i490
  %3713 = inttoptr i64 %3710 to i32*
  %3714 = load i32, i32* %3713
  %3715 = zext i32 %3714 to i64
  store i64 %3715, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_452e4b, %struct.Memory** %MEMORY
  %loadMem_452e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 33
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 1
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %EAX.i488 = bitcast %union.anon* %3721 to i32*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 15
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %RBP.i489
  %3726 = sub i64 %3725, 1552
  %3727 = load i32, i32* %EAX.i488
  %3728 = zext i32 %3727 to i64
  %3729 = load i64, i64* %PC.i487
  %3730 = add i64 %3729, 6
  store i64 %3730, i64* %PC.i487
  %3731 = inttoptr i64 %3726 to i32*
  store i32 %3727, i32* %3731
  store %struct.Memory* %loadMem_452e52, %struct.Memory** %MEMORY
  %loadMem_452e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 11
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RDI.i485 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 15
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %3740 to i64*
  %3741 = load i64, i64* %RBP.i486
  %3742 = sub i64 %3741, 1552
  %3743 = load i64, i64* %PC.i484
  %3744 = add i64 %3743, 6
  store i64 %3744, i64* %PC.i484
  %3745 = inttoptr i64 %3742 to i32*
  %3746 = load i32, i32* %3745
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RDI.i485, align 8
  store %struct.Memory* %loadMem_452e58, %struct.Memory** %MEMORY
  %loadMem_452e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 33
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 9
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RSI.i482 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 15
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %3756 to i64*
  %3757 = load i64, i64* %RBP.i483
  %3758 = sub i64 %3757, 80
  %3759 = load i64, i64* %PC.i481
  %3760 = add i64 %3759, 3
  store i64 %3760, i64* %PC.i481
  %3761 = inttoptr i64 %3758 to i32*
  %3762 = load i32, i32* %3761
  %3763 = zext i32 %3762 to i64
  store i64 %3763, i64* %RSI.i482, align 8
  store %struct.Memory* %loadMem_452e5e, %struct.Memory** %MEMORY
  %loadMem_452e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 33
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3766 to i64*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 1
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %3769 to i64*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 15
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %RBP.i480
  %3774 = sub i64 %3773, 48
  %3775 = load i64, i64* %PC.i478
  %3776 = add i64 %3775, 3
  store i64 %3776, i64* %PC.i478
  %3777 = inttoptr i64 %3774 to i32*
  %3778 = load i32, i32* %3777
  %3779 = zext i32 %3778 to i64
  store i64 %3779, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_452e61, %struct.Memory** %MEMORY
  %loadMem_452e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 33
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3782 to i64*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 17
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %R8D.i476 = bitcast %union.anon* %3785 to i32*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 15
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %3788 to i64*
  %3789 = bitcast i32* %R8D.i476 to i64*
  %3790 = load i64, i64* %RBP.i477
  %3791 = sub i64 %3790, 68
  %3792 = load i64, i64* %PC.i475
  %3793 = add i64 %3792, 4
  store i64 %3793, i64* %PC.i475
  %3794 = inttoptr i64 %3791 to i32*
  %3795 = load i32, i32* %3794
  %3796 = zext i32 %3795 to i64
  store i64 %3796, i64* %3789, align 8
  store %struct.Memory* %loadMem_452e64, %struct.Memory** %MEMORY
  %loadMem_452e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 33
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 19
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %R9D.i473 = bitcast %union.anon* %3802 to i32*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 15
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %3805 to i64*
  %3806 = bitcast i32* %R9D.i473 to i64*
  %3807 = load i64, i64* %RBP.i474
  %3808 = sub i64 %3807, 72
  %3809 = load i64, i64* %PC.i472
  %3810 = add i64 %3809, 4
  store i64 %3810, i64* %PC.i472
  %3811 = inttoptr i64 %3808 to i32*
  %3812 = load i32, i32* %3811
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %3806, align 8
  store %struct.Memory* %loadMem_452e68, %struct.Memory** %MEMORY
  %loadMem_452e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 21
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %R10D.i471 = bitcast %union.anon* %3819 to i32*
  %3820 = bitcast i32* %R10D.i471 to i64*
  %3821 = load i64, i64* %PC.i470
  %3822 = add i64 %3821, 8
  store i64 %3822, i64* %PC.i470
  %3823 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %3824 = zext i32 %3823 to i64
  store i64 %3824, i64* %3820, align 8
  store %struct.Memory* %loadMem_452e6c, %struct.Memory** %MEMORY
  %loadMem_452e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 33
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 21
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %R10D.i469 = bitcast %union.anon* %3830 to i32*
  %3831 = load i32, i32* %R10D.i469
  %3832 = zext i32 %3831 to i64
  %3833 = load i64, i64* %PC.i468
  %3834 = add i64 %3833, 8
  store i64 %3834, i64* %PC.i468
  %3835 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  %3836 = sub i32 %3831, %3835
  %3837 = icmp ult i32 %3831, %3835
  %3838 = zext i1 %3837 to i8
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3838, i8* %3839, align 1
  %3840 = and i32 %3836, 255
  %3841 = call i32 @llvm.ctpop.i32(i32 %3840)
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  %3844 = xor i8 %3843, 1
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3844, i8* %3845, align 1
  %3846 = xor i32 %3835, %3831
  %3847 = xor i32 %3846, %3836
  %3848 = lshr i32 %3847, 4
  %3849 = trunc i32 %3848 to i8
  %3850 = and i8 %3849, 1
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3850, i8* %3851, align 1
  %3852 = icmp eq i32 %3836, 0
  %3853 = zext i1 %3852 to i8
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3853, i8* %3854, align 1
  %3855 = lshr i32 %3836, 31
  %3856 = trunc i32 %3855 to i8
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3856, i8* %3857, align 1
  %3858 = lshr i32 %3831, 31
  %3859 = lshr i32 %3835, 31
  %3860 = xor i32 %3859, %3858
  %3861 = xor i32 %3855, %3858
  %3862 = add i32 %3861, %3860
  %3863 = icmp eq i32 %3862, 2
  %3864 = zext i1 %3863 to i8
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3864, i8* %3865, align 1
  store %struct.Memory* %loadMem_452e74, %struct.Memory** %MEMORY
  %loadMem_452e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 33
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 19
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %R9D.i466 = bitcast %union.anon* %3871 to i32*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 15
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %RBP.i467
  %3876 = sub i64 %3875, 1612
  %3877 = load i32, i32* %R9D.i466
  %3878 = zext i32 %3877 to i64
  %3879 = load i64, i64* %PC.i465
  %3880 = add i64 %3879, 7
  store i64 %3880, i64* %PC.i465
  %3881 = inttoptr i64 %3876 to i32*
  store i32 %3877, i32* %3881
  store %struct.Memory* %loadMem_452e7c, %struct.Memory** %MEMORY
  %loadMem_452e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 33
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3884 to i64*
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 11
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3887 to i32*
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 15
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %3890 to i64*
  %3891 = load i64, i64* %RBP.i464
  %3892 = sub i64 %3891, 1616
  %3893 = load i32, i32* %EDI.i
  %3894 = zext i32 %3893 to i64
  %3895 = load i64, i64* %PC.i463
  %3896 = add i64 %3895, 6
  store i64 %3896, i64* %PC.i463
  %3897 = inttoptr i64 %3892 to i32*
  store i32 %3893, i32* %3897
  store %struct.Memory* %loadMem_452e83, %struct.Memory** %MEMORY
  %loadMem_452e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 33
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 9
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3903 to i32*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 15
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %3906 to i64*
  %3907 = load i64, i64* %RBP.i462
  %3908 = sub i64 %3907, 1620
  %3909 = load i32, i32* %ESI.i
  %3910 = zext i32 %3909 to i64
  %3911 = load i64, i64* %PC.i461
  %3912 = add i64 %3911, 6
  store i64 %3912, i64* %PC.i461
  %3913 = inttoptr i64 %3908 to i32*
  store i32 %3909, i32* %3913
  store %struct.Memory* %loadMem_452e89, %struct.Memory** %MEMORY
  %loadMem_452e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 33
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3916 to i64*
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 1
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %EAX.i459 = bitcast %union.anon* %3919 to i32*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 15
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %3922 to i64*
  %3923 = load i64, i64* %RBP.i460
  %3924 = sub i64 %3923, 1624
  %3925 = load i32, i32* %EAX.i459
  %3926 = zext i32 %3925 to i64
  %3927 = load i64, i64* %PC.i458
  %3928 = add i64 %3927, 6
  store i64 %3928, i64* %PC.i458
  %3929 = inttoptr i64 %3924 to i32*
  store i32 %3925, i32* %3929
  store %struct.Memory* %loadMem_452e8f, %struct.Memory** %MEMORY
  %loadMem_452e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 33
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3932 to i64*
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 17
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %R8D.i456 = bitcast %union.anon* %3935 to i32*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 15
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %3938 to i64*
  %3939 = load i64, i64* %RBP.i457
  %3940 = sub i64 %3939, 1628
  %3941 = load i32, i32* %R8D.i456
  %3942 = zext i32 %3941 to i64
  %3943 = load i64, i64* %PC.i455
  %3944 = add i64 %3943, 7
  store i64 %3944, i64* %PC.i455
  %3945 = inttoptr i64 %3940 to i32*
  store i32 %3941, i32* %3945
  store %struct.Memory* %loadMem_452e95, %struct.Memory** %MEMORY
  %loadMem_452e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 5
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %3952 = bitcast %union.anon* %3951 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3952, i32 0, i32 0
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 15
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3955 to i64*
  %3956 = load i64, i64* %RBP.i454
  %3957 = sub i64 %3956, 1629
  %3958 = load i8, i8* %CL.i
  %3959 = zext i8 %3958 to i64
  %3960 = load i64, i64* %PC.i453
  %3961 = add i64 %3960, 6
  store i64 %3961, i64* %PC.i453
  %3962 = inttoptr i64 %3957 to i8*
  store i8 %3958, i8* %3962
  store %struct.Memory* %loadMem_452e9c, %struct.Memory** %MEMORY
  %loadMem_452ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 33
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3965 to i64*
  %3966 = load i64, i64* %PC.i452
  %3967 = add i64 %3966, 22
  %3968 = load i64, i64* %PC.i452
  %3969 = add i64 %3968, 6
  %3970 = load i64, i64* %PC.i452
  %3971 = add i64 %3970, 6
  store i64 %3971, i64* %PC.i452
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3973 = load i8, i8* %3972, align 1
  %3974 = icmp eq i8 %3973, 0
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3976 = load i8, i8* %3975, align 1
  %3977 = icmp ne i8 %3976, 0
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3979 = load i8, i8* %3978, align 1
  %3980 = icmp ne i8 %3979, 0
  %3981 = xor i1 %3977, %3980
  %3982 = xor i1 %3981, true
  %3983 = and i1 %3974, %3982
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %BRANCH_TAKEN, align 1
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3986 = select i1 %3983, i64 %3967, i64 %3969
  store i64 %3986, i64* %3985, align 8
  store %struct.Memory* %loadMem_452ea2, %struct.Memory** %MEMORY
  %loadBr_452ea2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452ea2 = icmp eq i8 %loadBr_452ea2, 1
  br i1 %cmpBr_452ea2, label %block_.L_452eb8, label %block_452ea8

block_452ea8:                                     ; preds = %block_452e40
  %loadMem_452ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 15
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3992 to i64*
  %3993 = load i64, i64* %RBP.i451
  %3994 = sub i64 %3993, 1560
  %3995 = load i64, i64* %PC.i450
  %3996 = add i64 %3995, 7
  store i64 %3996, i64* %PC.i450
  %3997 = inttoptr i64 %3994 to i32*
  %3998 = load i32, i32* %3997
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3999, align 1
  %4000 = and i32 %3998, 255
  %4001 = call i32 @llvm.ctpop.i32(i32 %4000)
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  %4004 = xor i8 %4003, 1
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4004, i8* %4005, align 1
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4006, align 1
  %4007 = icmp eq i32 %3998, 0
  %4008 = zext i1 %4007 to i8
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4008, i8* %4009, align 1
  %4010 = lshr i32 %3998, 31
  %4011 = trunc i32 %4010 to i8
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4011, i8* %4012, align 1
  %4013 = lshr i32 %3998, 31
  %4014 = xor i32 %4010, %4013
  %4015 = add i32 %4014, %4013
  %4016 = icmp eq i32 %4015, 2
  %4017 = zext i1 %4016 to i8
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4017, i8* %4018, align 1
  store %struct.Memory* %loadMem_452ea8, %struct.Memory** %MEMORY
  %loadMem_452eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 33
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4021 to i64*
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 1
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %4025 = bitcast %union.anon* %4024 to %struct.anon.2*
  %AL.i449 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4025, i32 0, i32 0
  %4026 = load i64, i64* %PC.i448
  %4027 = add i64 %4026, 3
  store i64 %4027, i64* %PC.i448
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4029 = load i8, i8* %4028, align 1
  store i8 %4029, i8* %AL.i449, align 1
  store %struct.Memory* %loadMem_452eaf, %struct.Memory** %MEMORY
  %loadMem_452eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 1
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %4036 = bitcast %union.anon* %4035 to %struct.anon.2*
  %AL.i446 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4036, i32 0, i32 0
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 15
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RBP.i447
  %4041 = sub i64 %4040, 1629
  %4042 = load i8, i8* %AL.i446
  %4043 = zext i8 %4042 to i64
  %4044 = load i64, i64* %PC.i445
  %4045 = add i64 %4044, 6
  store i64 %4045, i64* %PC.i445
  %4046 = inttoptr i64 %4041 to i8*
  store i8 %4042, i8* %4046
  store %struct.Memory* %loadMem_452eb2, %struct.Memory** %MEMORY
  br label %block_.L_452eb8

block_.L_452eb8:                                  ; preds = %block_452ea8, %block_452e40
  %loadMem_452eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 33
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 1
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %4053 = bitcast %union.anon* %4052 to %struct.anon.2*
  %AL.i443 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4053, i32 0, i32 0
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 15
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %4056 to i64*
  %4057 = load i64, i64* %RBP.i444
  %4058 = sub i64 %4057, 1629
  %4059 = load i64, i64* %PC.i442
  %4060 = add i64 %4059, 6
  store i64 %4060, i64* %PC.i442
  %4061 = inttoptr i64 %4058 to i8*
  %4062 = load i8, i8* %4061
  store i8 %4062, i8* %AL.i443, align 1
  store %struct.Memory* %loadMem_452eb8, %struct.Memory** %MEMORY
  %loadMem_452ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 33
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 7
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RDX.i441 = bitcast %union.anon* %4068 to i64*
  %4069 = load i64, i64* %PC.i440
  %4070 = add i64 %4069, 10
  store i64 %4070, i64* %PC.i440
  store i64 ptrtoint (%G__0x57f55d_type* @G__0x57f55d to i64), i64* %RDX.i441, align 8
  store %struct.Memory* %loadMem_452ebe, %struct.Memory** %MEMORY
  %loadMem_452ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 33
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4073 to i64*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 5
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 15
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %4079 to i64*
  %4080 = load i64, i64* %RBP.i439
  %4081 = sub i64 %4080, 1596
  %4082 = load i64, i64* %PC.i437
  %4083 = add i64 %4082, 7
  store i64 %4083, i64* %PC.i437
  store i64 %4081, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_452ec8, %struct.Memory** %MEMORY
  %loadMem_452ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 9
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RSI.i435 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 15
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RBP.i436
  %4094 = sub i64 %4093, 1600
  %4095 = load i64, i64* %PC.i434
  %4096 = add i64 %4095, 7
  store i64 %4096, i64* %PC.i434
  store i64 %4094, i64* %RSI.i435, align 8
  store %struct.Memory* %loadMem_452ecf, %struct.Memory** %MEMORY
  %loadMem_452ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 33
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4099 to i64*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 11
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %4102 to i64*
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 15
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4105 to i64*
  %4106 = load i64, i64* %RBP.i433
  %4107 = sub i64 %4106, 1604
  %4108 = load i64, i64* %PC.i431
  %4109 = add i64 %4108, 7
  store i64 %4109, i64* %PC.i431
  store i64 %4107, i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_452ed6, %struct.Memory** %MEMORY
  %loadMem_452edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4112 to i64*
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 1
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %4116 = bitcast %union.anon* %4115 to %struct.anon.2*
  %AL.i430 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4116, i32 0, i32 0
  %4117 = load i8, i8* %AL.i430
  %4118 = zext i8 %4117 to i64
  %4119 = load i64, i64* %PC.i429
  %4120 = add i64 %4119, 2
  store i64 %4120, i64* %PC.i429
  %4121 = and i64 1, %4118
  %4122 = trunc i64 %4121 to i8
  store i8 %4122, i8* %AL.i430, align 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4123, align 1
  %4124 = trunc i64 %4121 to i32
  %4125 = and i32 %4124, 255
  %4126 = call i32 @llvm.ctpop.i32(i32 %4125)
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  %4129 = xor i8 %4128, 1
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4129, i8* %4130, align 1
  %4131 = icmp eq i8 %4122, 0
  %4132 = zext i1 %4131 to i8
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4132, i8* %4133, align 1
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4134, align 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4135, align 1
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4136, align 1
  store %struct.Memory* %loadMem_452edd, %struct.Memory** %MEMORY
  %loadMem_452edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 33
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 1
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %4143 = bitcast %union.anon* %4142 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4143, i32 0, i32 0
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 17
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %R8D.i428 = bitcast %union.anon* %4146 to i32*
  %4147 = bitcast i32* %R8D.i428 to i64*
  %4148 = load i8, i8* %AL.i
  %4149 = zext i8 %4148 to i64
  %4150 = load i64, i64* %PC.i427
  %4151 = add i64 %4150, 4
  store i64 %4151, i64* %PC.i427
  %4152 = and i64 %4149, 255
  store i64 %4152, i64* %4147, align 8
  store %struct.Memory* %loadMem_452edf, %struct.Memory** %MEMORY
  %loadMem_452ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 33
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4155 to i64*
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 19
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %R9D.i425 = bitcast %union.anon* %4158 to i32*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 15
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %4161 to i64*
  %4162 = bitcast i32* %R9D.i425 to i64*
  %4163 = load i64, i64* %RBP.i426
  %4164 = sub i64 %4163, 1616
  %4165 = load i64, i64* %PC.i424
  %4166 = add i64 %4165, 7
  store i64 %4166, i64* %PC.i424
  %4167 = inttoptr i64 %4164 to i32*
  %4168 = load i32, i32* %4167
  %4169 = zext i32 %4168 to i64
  store i64 %4169, i64* %4162, align 8
  store %struct.Memory* %loadMem_452ee3, %struct.Memory** %MEMORY
  %loadMem_452eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 11
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RDI.i422 = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 15
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %RBP.i423
  %4180 = sub i64 %4179, 1640
  %4181 = load i64, i64* %RDI.i422
  %4182 = load i64, i64* %PC.i421
  %4183 = add i64 %4182, 7
  store i64 %4183, i64* %PC.i421
  %4184 = inttoptr i64 %4180 to i64*
  store i64 %4181, i64* %4184
  store %struct.Memory* %loadMem_452eea, %struct.Memory** %MEMORY
  %loadMem_452ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 33
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4187 to i64*
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 19
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %R9D.i419 = bitcast %union.anon* %4190 to i32*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 11
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %RDI.i420 = bitcast %union.anon* %4193 to i64*
  %4194 = load i32, i32* %R9D.i419
  %4195 = zext i32 %4194 to i64
  %4196 = load i64, i64* %PC.i418
  %4197 = add i64 %4196, 3
  store i64 %4197, i64* %PC.i418
  %4198 = and i64 %4195, 4294967295
  store i64 %4198, i64* %RDI.i420, align 8
  store %struct.Memory* %loadMem_452ef1, %struct.Memory** %MEMORY
  %loadMem_452ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 21
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %R10D.i416 = bitcast %union.anon* %4204 to i32*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 15
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %4207 to i64*
  %4208 = bitcast i32* %R10D.i416 to i64*
  %4209 = load i64, i64* %RBP.i417
  %4210 = sub i64 %4209, 1620
  %4211 = load i64, i64* %PC.i415
  %4212 = add i64 %4211, 7
  store i64 %4212, i64* %PC.i415
  %4213 = inttoptr i64 %4210 to i32*
  %4214 = load i32, i32* %4213
  %4215 = zext i32 %4214 to i64
  store i64 %4215, i64* %4208, align 8
  store %struct.Memory* %loadMem_452ef4, %struct.Memory** %MEMORY
  %loadMem_452efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 33
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 9
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RSI.i413 = bitcast %union.anon* %4221 to i64*
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 15
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %4224 to i64*
  %4225 = load i64, i64* %RBP.i414
  %4226 = sub i64 %4225, 1648
  %4227 = load i64, i64* %RSI.i413
  %4228 = load i64, i64* %PC.i412
  %4229 = add i64 %4228, 7
  store i64 %4229, i64* %PC.i412
  %4230 = inttoptr i64 %4226 to i64*
  store i64 %4227, i64* %4230
  store %struct.Memory* %loadMem_452efb, %struct.Memory** %MEMORY
  %loadMem_452f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 21
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %4236 to i32*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 9
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RSI.i411 = bitcast %union.anon* %4239 to i64*
  %4240 = load i32, i32* %R10D.i
  %4241 = zext i32 %4240 to i64
  %4242 = load i64, i64* %PC.i410
  %4243 = add i64 %4242, 3
  store i64 %4243, i64* %PC.i410
  %4244 = and i64 %4241, 4294967295
  store i64 %4244, i64* %RSI.i411, align 8
  store %struct.Memory* %loadMem_452f02, %struct.Memory** %MEMORY
  %loadMem_452f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4247 to i64*
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 23
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %R11D.i408 = bitcast %union.anon* %4250 to i32*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 15
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %4253 to i64*
  %4254 = bitcast i32* %R11D.i408 to i64*
  %4255 = load i64, i64* %RBP.i409
  %4256 = sub i64 %4255, 1624
  %4257 = load i64, i64* %PC.i407
  %4258 = add i64 %4257, 7
  store i64 %4258, i64* %PC.i407
  %4259 = inttoptr i64 %4256 to i32*
  %4260 = load i32, i32* %4259
  %4261 = zext i32 %4260 to i64
  store i64 %4261, i64* %4254, align 8
  store %struct.Memory* %loadMem_452f05, %struct.Memory** %MEMORY
  %loadMem_452f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 33
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4264 to i64*
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4266 = getelementptr inbounds %struct.GPR, %struct.GPR* %4265, i32 0, i32 5
  %4267 = getelementptr inbounds %struct.Reg, %struct.Reg* %4266, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %4267 to i64*
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 15
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %4270 to i64*
  %4271 = load i64, i64* %RBP.i406
  %4272 = sub i64 %4271, 1656
  %4273 = load i64, i64* %RCX.i405
  %4274 = load i64, i64* %PC.i404
  %4275 = add i64 %4274, 7
  store i64 %4275, i64* %PC.i404
  %4276 = inttoptr i64 %4272 to i64*
  store i64 %4273, i64* %4276
  store %struct.Memory* %loadMem_452f0c, %struct.Memory** %MEMORY
  %loadMem_452f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4278 = getelementptr inbounds %struct.GPR, %struct.GPR* %4277, i32 0, i32 33
  %4279 = getelementptr inbounds %struct.Reg, %struct.Reg* %4278, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4279 to i64*
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4281 = getelementptr inbounds %struct.GPR, %struct.GPR* %4280, i32 0, i32 23
  %4282 = getelementptr inbounds %struct.Reg, %struct.Reg* %4281, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %4282 to i32*
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 5
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %RCX.i403 = bitcast %union.anon* %4285 to i64*
  %4286 = load i32, i32* %R11D.i
  %4287 = zext i32 %4286 to i64
  %4288 = load i64, i64* %PC.i402
  %4289 = add i64 %4288, 3
  store i64 %4289, i64* %PC.i402
  %4290 = and i64 %4287, 4294967295
  store i64 %4290, i64* %RCX.i403, align 8
  store %struct.Memory* %loadMem_452f13, %struct.Memory** %MEMORY
  %loadMem_452f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 33
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4293 to i64*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 3
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %RBX.i400 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 15
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %4299 to i64*
  %4300 = load i64, i64* %RBP.i401
  %4301 = sub i64 %4300, 1628
  %4302 = load i64, i64* %PC.i399
  %4303 = add i64 %4302, 6
  store i64 %4303, i64* %PC.i399
  %4304 = inttoptr i64 %4301 to i32*
  %4305 = load i32, i32* %4304
  %4306 = zext i32 %4305 to i64
  store i64 %4306, i64* %RBX.i400, align 8
  store %struct.Memory* %loadMem_452f16, %struct.Memory** %MEMORY
  %loadMem_452f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 33
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4309 to i64*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 17
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %R8D.i397 = bitcast %union.anon* %4312 to i32*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 15
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %4315 to i64*
  %4316 = load i64, i64* %RBP.i398
  %4317 = sub i64 %4316, 1660
  %4318 = load i32, i32* %R8D.i397
  %4319 = zext i32 %4318 to i64
  %4320 = load i64, i64* %PC.i396
  %4321 = add i64 %4320, 7
  store i64 %4321, i64* %PC.i396
  %4322 = inttoptr i64 %4317 to i32*
  store i32 %4318, i32* %4322
  store %struct.Memory* %loadMem_452f1c, %struct.Memory** %MEMORY
  %loadMem_452f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 3
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %4328 to i32*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 17
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %R8D.i395 = bitcast %union.anon* %4331 to i32*
  %4332 = bitcast i32* %R8D.i395 to i64*
  %4333 = load i32, i32* %EBX.i
  %4334 = zext i32 %4333 to i64
  %4335 = load i64, i64* %PC.i394
  %4336 = add i64 %4335, 3
  store i64 %4336, i64* %PC.i394
  %4337 = and i64 %4334, 4294967295
  store i64 %4337, i64* %4332, align 8
  store %struct.Memory* %loadMem_452f23, %struct.Memory** %MEMORY
  %loadMem_452f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 33
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4340 to i64*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 19
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %R9D.i392 = bitcast %union.anon* %4343 to i32*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 15
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %4346 to i64*
  %4347 = bitcast i32* %R9D.i392 to i64*
  %4348 = load i64, i64* %RBP.i393
  %4349 = sub i64 %4348, 1612
  %4350 = load i64, i64* %PC.i391
  %4351 = add i64 %4350, 7
  store i64 %4351, i64* %PC.i391
  %4352 = inttoptr i64 %4349 to i32*
  %4353 = load i32, i32* %4352
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %4347, align 8
  store %struct.Memory* %loadMem_452f26, %struct.Memory** %MEMORY
  %loadMem_452f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 15
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 29
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %R14.i390 = bitcast %union.anon* %4363 to i64*
  %4364 = load i64, i64* %RBP.i389
  %4365 = sub i64 %4364, 1656
  %4366 = load i64, i64* %PC.i388
  %4367 = add i64 %4366, 7
  store i64 %4367, i64* %PC.i388
  %4368 = inttoptr i64 %4365 to i64*
  %4369 = load i64, i64* %4368
  store i64 %4369, i64* %R14.i390, align 8
  store %struct.Memory* %loadMem_452f2d, %struct.Memory** %MEMORY
  %loadMem_452f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 33
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4372 to i64*
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 13
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %RSP.i386 = bitcast %union.anon* %4375 to i64*
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 29
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %R14.i387 = bitcast %union.anon* %4378 to i64*
  %4379 = load i64, i64* %RSP.i386
  %4380 = load i64, i64* %R14.i387
  %4381 = load i64, i64* %PC.i385
  %4382 = add i64 %4381, 4
  store i64 %4382, i64* %PC.i385
  %4383 = inttoptr i64 %4379 to i64*
  store i64 %4380, i64* %4383
  store %struct.Memory* %loadMem_452f34, %struct.Memory** %MEMORY
  %loadMem_452f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 15
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %4389 to i64*
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 31
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %R15.i384 = bitcast %union.anon* %4392 to i64*
  %4393 = load i64, i64* %RBP.i383
  %4394 = sub i64 %4393, 1648
  %4395 = load i64, i64* %PC.i382
  %4396 = add i64 %4395, 7
  store i64 %4396, i64* %PC.i382
  %4397 = inttoptr i64 %4394 to i64*
  %4398 = load i64, i64* %4397
  store i64 %4398, i64* %R15.i384, align 8
  store %struct.Memory* %loadMem_452f38, %struct.Memory** %MEMORY
  %loadMem_452f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 13
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RSP.i380 = bitcast %union.anon* %4404 to i64*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 31
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %R15.i381 = bitcast %union.anon* %4407 to i64*
  %4408 = load i64, i64* %RSP.i380
  %4409 = add i64 %4408, 8
  %4410 = load i64, i64* %R15.i381
  %4411 = load i64, i64* %PC.i379
  %4412 = add i64 %4411, 5
  store i64 %4412, i64* %PC.i379
  %4413 = inttoptr i64 %4409 to i64*
  store i64 %4410, i64* %4413
  store %struct.Memory* %loadMem_452f3f, %struct.Memory** %MEMORY
  %loadMem_452f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 15
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 25
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %R12.i378 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RBP.i377
  %4424 = sub i64 %4423, 1640
  %4425 = load i64, i64* %PC.i376
  %4426 = add i64 %4425, 7
  store i64 %4426, i64* %PC.i376
  %4427 = inttoptr i64 %4424 to i64*
  %4428 = load i64, i64* %4427
  store i64 %4428, i64* %R12.i378, align 8
  store %struct.Memory* %loadMem_452f44, %struct.Memory** %MEMORY
  %loadMem_452f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 13
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RSP.i374 = bitcast %union.anon* %4434 to i64*
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 25
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %R12.i375 = bitcast %union.anon* %4437 to i64*
  %4438 = load i64, i64* %RSP.i374
  %4439 = add i64 %4438, 16
  %4440 = load i64, i64* %R12.i375
  %4441 = load i64, i64* %PC.i373
  %4442 = add i64 %4441, 5
  store i64 %4442, i64* %PC.i373
  %4443 = inttoptr i64 %4439 to i64*
  store i64 %4440, i64* %4443
  store %struct.Memory* %loadMem_452f4b, %struct.Memory** %MEMORY
  %loadMem_452f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 27
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %R13D.i371 = bitcast %union.anon* %4449 to i32*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 15
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4452 to i64*
  %4453 = bitcast i32* %R13D.i371 to i64*
  %4454 = load i64, i64* %RBP.i372
  %4455 = sub i64 %4454, 1660
  %4456 = load i64, i64* %PC.i370
  %4457 = add i64 %4456, 7
  store i64 %4457, i64* %PC.i370
  %4458 = inttoptr i64 %4455 to i32*
  %4459 = load i32, i32* %4458
  %4460 = zext i32 %4459 to i64
  store i64 %4460, i64* %4453, align 8
  store %struct.Memory* %loadMem_452f50, %struct.Memory** %MEMORY
  %loadMem_452f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 33
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 27
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %4466 to i32*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 13
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RSP.i369 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %RSP.i369
  %4471 = add i64 %4470, 24
  %4472 = load i32, i32* %R13D.i
  %4473 = zext i32 %4472 to i64
  %4474 = load i64, i64* %PC.i368
  %4475 = add i64 %4474, 5
  store i64 %4475, i64* %PC.i368
  %4476 = inttoptr i64 %4471 to i32*
  store i32 %4472, i32* %4476
  store %struct.Memory* %loadMem_452f57, %struct.Memory** %MEMORY
  %loadMem1_452f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 33
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %PC.i367
  %4481 = add i64 %4480, -278892
  %4482 = load i64, i64* %PC.i367
  %4483 = add i64 %4482, 5
  %4484 = load i64, i64* %PC.i367
  %4485 = add i64 %4484, 5
  store i64 %4485, i64* %PC.i367
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4487 = load i64, i64* %4486, align 8
  %4488 = add i64 %4487, -8
  %4489 = inttoptr i64 %4488 to i64*
  store i64 %4483, i64* %4489
  store i64 %4488, i64* %4486, align 8
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4481, i64* %4490, align 8
  store %struct.Memory* %loadMem1_452f5c, %struct.Memory** %MEMORY
  %loadMem2_452f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452f5c = load i64, i64* %3
  %call2_452f5c = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64 %loadPC_452f5c, %struct.Memory* %loadMem2_452f5c)
  store %struct.Memory* %call2_452f5c, %struct.Memory** %MEMORY
  %loadMem_452f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 33
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 1
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %EAX.i366 = bitcast %union.anon* %4496 to i32*
  %4497 = load i32, i32* %EAX.i366
  %4498 = zext i32 %4497 to i64
  %4499 = load i64, i64* %PC.i365
  %4500 = add i64 %4499, 3
  store i64 %4500, i64* %PC.i365
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4501, align 1
  %4502 = and i32 %4497, 255
  %4503 = call i32 @llvm.ctpop.i32(i32 %4502)
  %4504 = trunc i32 %4503 to i8
  %4505 = and i8 %4504, 1
  %4506 = xor i8 %4505, 1
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4506, i8* %4507, align 1
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4508, align 1
  %4509 = icmp eq i32 %4497, 0
  %4510 = zext i1 %4509 to i8
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4510, i8* %4511, align 1
  %4512 = lshr i32 %4497, 31
  %4513 = trunc i32 %4512 to i8
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4513, i8* %4514, align 1
  %4515 = lshr i32 %4497, 31
  %4516 = xor i32 %4512, %4515
  %4517 = add i32 %4516, %4515
  %4518 = icmp eq i32 %4517, 2
  %4519 = zext i1 %4518 to i8
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4519, i8* %4520, align 1
  store %struct.Memory* %loadMem_452f61, %struct.Memory** %MEMORY
  %loadMem_452f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4523 to i64*
  %4524 = load i64, i64* %PC.i364
  %4525 = add i64 %4524, 388
  %4526 = load i64, i64* %PC.i364
  %4527 = add i64 %4526, 6
  %4528 = load i64, i64* %PC.i364
  %4529 = add i64 %4528, 6
  store i64 %4529, i64* %PC.i364
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4531 = load i8, i8* %4530, align 1
  store i8 %4531, i8* %BRANCH_TAKEN, align 1
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4533 = icmp ne i8 %4531, 0
  %4534 = select i1 %4533, i64 %4525, i64 %4527
  store i64 %4534, i64* %4532, align 8
  store %struct.Memory* %loadMem_452f64, %struct.Memory** %MEMORY
  %loadBr_452f64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452f64 = icmp eq i8 %loadBr_452f64, 1
  br i1 %cmpBr_452f64, label %block_.L_4530e8, label %block_452f6a

block_452f6a:                                     ; preds = %block_.L_452eb8
  %loadMem_452f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 15
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %4540 to i64*
  %4541 = load i64, i64* %RBP.i363
  %4542 = sub i64 %4541, 1604
  %4543 = load i64, i64* %PC.i362
  %4544 = add i64 %4543, 7
  store i64 %4544, i64* %PC.i362
  %4545 = inttoptr i64 %4542 to i32*
  %4546 = load i32, i32* %4545
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4547, align 1
  %4548 = and i32 %4546, 255
  %4549 = call i32 @llvm.ctpop.i32(i32 %4548)
  %4550 = trunc i32 %4549 to i8
  %4551 = and i8 %4550, 1
  %4552 = xor i8 %4551, 1
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4552, i8* %4553, align 1
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4554, align 1
  %4555 = icmp eq i32 %4546, 0
  %4556 = zext i1 %4555 to i8
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4556, i8* %4557, align 1
  %4558 = lshr i32 %4546, 31
  %4559 = trunc i32 %4558 to i8
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4559, i8* %4560, align 1
  %4561 = lshr i32 %4546, 31
  %4562 = xor i32 %4558, %4561
  %4563 = add i32 %4562, %4561
  %4564 = icmp eq i32 %4563, 2
  %4565 = zext i1 %4564 to i8
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4565, i8* %4566, align 1
  store %struct.Memory* %loadMem_452f6a, %struct.Memory** %MEMORY
  %loadMem_452f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 33
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4569 to i64*
  %4570 = load i64, i64* %PC.i361
  %4571 = add i64 %4570, 302
  %4572 = load i64, i64* %PC.i361
  %4573 = add i64 %4572, 6
  %4574 = load i64, i64* %PC.i361
  %4575 = add i64 %4574, 6
  store i64 %4575, i64* %PC.i361
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4577 = load i8, i8* %4576, align 1
  %4578 = icmp eq i8 %4577, 0
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %BRANCH_TAKEN, align 1
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4581 = select i1 %4578, i64 %4571, i64 %4573
  store i64 %4581, i64* %4580, align 8
  store %struct.Memory* %loadMem_452f71, %struct.Memory** %MEMORY
  %loadBr_452f71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452f71 = icmp eq i8 %loadBr_452f71, 1
  br i1 %cmpBr_452f71, label %block_.L_45309f, label %block_452f77

block_452f77:                                     ; preds = %block_452f6a
  %loadMem_452f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 33
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4584 to i64*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 1
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %EAX.i359 = bitcast %union.anon* %4587 to i32*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 1
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %4590 to i64*
  %4591 = load i64, i64* %RAX.i360
  %4592 = load i32, i32* %EAX.i359
  %4593 = zext i32 %4592 to i64
  %4594 = load i64, i64* %PC.i358
  %4595 = add i64 %4594, 2
  store i64 %4595, i64* %PC.i358
  %4596 = xor i64 %4593, %4591
  %4597 = trunc i64 %4596 to i32
  %4598 = and i64 %4596, 4294967295
  store i64 %4598, i64* %RAX.i360, align 8
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4599, align 1
  %4600 = and i32 %4597, 255
  %4601 = call i32 @llvm.ctpop.i32(i32 %4600)
  %4602 = trunc i32 %4601 to i8
  %4603 = and i8 %4602, 1
  %4604 = xor i8 %4603, 1
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4604, i8* %4605, align 1
  %4606 = icmp eq i32 %4597, 0
  %4607 = zext i1 %4606 to i8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4607, i8* %4608, align 1
  %4609 = lshr i32 %4597, 31
  %4610 = trunc i32 %4609 to i8
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4610, i8* %4611, align 1
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4612, align 1
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4613, align 1
  store %struct.Memory* %loadMem_452f77, %struct.Memory** %MEMORY
  %loadMem_452f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 1
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %EAX.i356 = bitcast %union.anon* %4619 to i32*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 7
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RDX.i357 = bitcast %union.anon* %4622 to i64*
  %4623 = load i32, i32* %EAX.i356
  %4624 = zext i32 %4623 to i64
  %4625 = load i64, i64* %PC.i355
  %4626 = add i64 %4625, 2
  store i64 %4626, i64* %PC.i355
  %4627 = and i64 %4624, 4294967295
  store i64 %4627, i64* %RDX.i357, align 8
  store %struct.Memory* %loadMem_452f79, %struct.Memory** %MEMORY
  %loadMem_452f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 33
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 11
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RDI.i353 = bitcast %union.anon* %4633 to i64*
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 15
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %4636 to i64*
  %4637 = load i64, i64* %RBP.i354
  %4638 = sub i64 %4637, 48
  %4639 = load i64, i64* %PC.i352
  %4640 = add i64 %4639, 3
  store i64 %4640, i64* %PC.i352
  %4641 = inttoptr i64 %4638 to i32*
  %4642 = load i32, i32* %4641
  %4643 = zext i32 %4642 to i64
  store i64 %4643, i64* %RDI.i353, align 8
  store %struct.Memory* %loadMem_452f7b, %struct.Memory** %MEMORY
  %loadMem_452f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 33
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 9
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RSI.i350 = bitcast %union.anon* %4649 to i64*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 15
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %4652 to i64*
  %4653 = load i64, i64* %RBP.i351
  %4654 = sub i64 %4653, 52
  %4655 = load i64, i64* %PC.i349
  %4656 = add i64 %4655, 3
  store i64 %4656, i64* %PC.i349
  %4657 = inttoptr i64 %4654 to i32*
  %4658 = load i32, i32* %4657
  %4659 = zext i32 %4658 to i64
  store i64 %4659, i64* %RSI.i350, align 8
  store %struct.Memory* %loadMem_452f7e, %struct.Memory** %MEMORY
  %loadMem_452f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 5
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 15
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %RBP.i348
  %4670 = sub i64 %4669, 1596
  %4671 = load i64, i64* %PC.i346
  %4672 = add i64 %4671, 6
  store i64 %4672, i64* %PC.i346
  %4673 = inttoptr i64 %4670 to i32*
  %4674 = load i32, i32* %4673
  %4675 = zext i32 %4674 to i64
  store i64 %4675, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_452f81, %struct.Memory** %MEMORY
  %loadMem_452f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 17
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %R8D.i344 = bitcast %union.anon* %4681 to i32*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 15
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %4684 to i64*
  %4685 = bitcast i32* %R8D.i344 to i64*
  %4686 = load i64, i64* %RBP.i345
  %4687 = sub i64 %4686, 1600
  %4688 = load i64, i64* %PC.i343
  %4689 = add i64 %4688, 7
  store i64 %4689, i64* %PC.i343
  %4690 = inttoptr i64 %4687 to i32*
  %4691 = load i32, i32* %4690
  %4692 = zext i32 %4691 to i64
  store i64 %4692, i64* %4685, align 8
  store %struct.Memory* %loadMem_452f87, %struct.Memory** %MEMORY
  %loadMem_452f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 19
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %R9D.i341 = bitcast %union.anon* %4698 to i32*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 15
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %4701 to i64*
  %4702 = bitcast i32* %R9D.i341 to i64*
  %4703 = load i64, i64* %RBP.i342
  %4704 = sub i64 %4703, 76
  %4705 = load i64, i64* %PC.i340
  %4706 = add i64 %4705, 4
  store i64 %4706, i64* %PC.i340
  %4707 = inttoptr i64 %4704 to i32*
  %4708 = load i32, i32* %4707
  %4709 = zext i32 %4708 to i64
  store i64 %4709, i64* %4702, align 8
  store %struct.Memory* %loadMem_452f8e, %struct.Memory** %MEMORY
  %loadMem1_452f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 33
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %4712 to i64*
  %4713 = load i64, i64* %PC.i339
  %4714 = add i64 %4713, 6670
  %4715 = load i64, i64* %PC.i339
  %4716 = add i64 %4715, 5
  %4717 = load i64, i64* %PC.i339
  %4718 = add i64 %4717, 5
  store i64 %4718, i64* %PC.i339
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4720 = load i64, i64* %4719, align 8
  %4721 = add i64 %4720, -8
  %4722 = inttoptr i64 %4721 to i64*
  store i64 %4716, i64* %4722
  store i64 %4721, i64* %4719, align 8
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4714, i64* %4723, align 8
  store %struct.Memory* %loadMem1_452f92, %struct.Memory** %MEMORY
  %loadMem2_452f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452f92 = load i64, i64* %3
  %call2_452f92 = call %struct.Memory* @sub_4549a0.recursive_disconnect2(%struct.State* %0, i64 %loadPC_452f92, %struct.Memory* %loadMem2_452f92)
  store %struct.Memory* %call2_452f92, %struct.Memory** %MEMORY
  %loadMem_452f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 33
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 1
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %4729 to i32*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 15
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %RBP.i338
  %4734 = sub i64 %4733, 1608
  %4735 = load i32, i32* %EAX.i337
  %4736 = zext i32 %4735 to i64
  %4737 = load i64, i64* %PC.i336
  %4738 = add i64 %4737, 6
  store i64 %4738, i64* %PC.i336
  %4739 = inttoptr i64 %4734 to i32*
  store i32 %4735, i32* %4739
  store %struct.Memory* %loadMem_452f97, %struct.Memory** %MEMORY
  %loadMem1_452f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %4742 to i64*
  %4743 = load i64, i64* %PC.i335
  %4744 = add i64 %4743, -283197
  %4745 = load i64, i64* %PC.i335
  %4746 = add i64 %4745, 5
  %4747 = load i64, i64* %PC.i335
  %4748 = add i64 %4747, 5
  store i64 %4748, i64* %PC.i335
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4750 = load i64, i64* %4749, align 8
  %4751 = add i64 %4750, -8
  %4752 = inttoptr i64 %4751 to i64*
  store i64 %4746, i64* %4752
  store i64 %4751, i64* %4749, align 8
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4744, i64* %4753, align 8
  store %struct.Memory* %loadMem1_452f9d, %struct.Memory** %MEMORY
  %loadMem2_452f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452f9d = load i64, i64* %3
  %call2_452f9d = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_452f9d, %struct.Memory* %loadMem2_452f9d)
  store %struct.Memory* %call2_452f9d, %struct.Memory** %MEMORY
  %loadMem_452fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 33
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 15
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %4759 to i64*
  %4760 = load i64, i64* %RBP.i334
  %4761 = sub i64 %4760, 1608
  %4762 = load i64, i64* %PC.i333
  %4763 = add i64 %4762, 7
  store i64 %4763, i64* %PC.i333
  %4764 = inttoptr i64 %4761 to i32*
  %4765 = load i32, i32* %4764
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4766, align 1
  %4767 = and i32 %4765, 255
  %4768 = call i32 @llvm.ctpop.i32(i32 %4767)
  %4769 = trunc i32 %4768 to i8
  %4770 = and i8 %4769, 1
  %4771 = xor i8 %4770, 1
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4771, i8* %4772, align 1
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4773, align 1
  %4774 = icmp eq i32 %4765, 0
  %4775 = zext i1 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4775, i8* %4776, align 1
  %4777 = lshr i32 %4765, 31
  %4778 = trunc i32 %4777 to i8
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4778, i8* %4779, align 1
  %4780 = lshr i32 %4765, 31
  %4781 = xor i32 %4777, %4780
  %4782 = add i32 %4781, %4780
  %4783 = icmp eq i32 %4782, 2
  %4784 = zext i1 %4783 to i8
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4784, i8* %4785, align 1
  store %struct.Memory* %loadMem_452fa2, %struct.Memory** %MEMORY
  %loadMem_452fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %4788 to i64*
  %4789 = load i64, i64* %PC.i332
  %4790 = add i64 %4789, 176
  %4791 = load i64, i64* %PC.i332
  %4792 = add i64 %4791, 6
  %4793 = load i64, i64* %PC.i332
  %4794 = add i64 %4793, 6
  store i64 %4794, i64* %PC.i332
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4796 = load i8, i8* %4795, align 1
  %4797 = icmp eq i8 %4796, 0
  %4798 = zext i1 %4797 to i8
  store i8 %4798, i8* %BRANCH_TAKEN, align 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4800 = select i1 %4797, i64 %4790, i64 %4792
  store i64 %4800, i64* %4799, align 8
  store %struct.Memory* %loadMem_452fa9, %struct.Memory** %MEMORY
  %loadBr_452fa9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452fa9 = icmp eq i8 %loadBr_452fa9, 1
  br i1 %cmpBr_452fa9, label %block_.L_453059, label %block_452faf

block_452faf:                                     ; preds = %block_452f77
  %loadMem_452faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 33
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4803 to i64*
  %4804 = load i64, i64* %PC.i331
  %4805 = add i64 %4804, 9
  store i64 %4805, i64* %PC.i331
  %4806 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4807, align 1
  %4808 = trunc i64 %4806 to i32
  %4809 = and i32 %4808, 255
  %4810 = call i32 @llvm.ctpop.i32(i32 %4809)
  %4811 = trunc i32 %4810 to i8
  %4812 = and i8 %4811, 1
  %4813 = xor i8 %4812, 1
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4813, i8* %4814, align 1
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4815, align 1
  %4816 = icmp eq i64 %4806, 0
  %4817 = zext i1 %4816 to i8
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4817, i8* %4818, align 1
  %4819 = lshr i64 %4806, 63
  %4820 = trunc i64 %4819 to i8
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4820, i8* %4821, align 1
  %4822 = lshr i64 %4806, 63
  %4823 = xor i64 %4819, %4822
  %4824 = add i64 %4823, %4822
  %4825 = icmp eq i64 %4824, 2
  %4826 = zext i1 %4825 to i8
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4826, i8* %4827, align 1
  store %struct.Memory* %loadMem_452faf, %struct.Memory** %MEMORY
  %loadMem_452fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4830 to i64*
  %4831 = load i64, i64* %PC.i330
  %4832 = add i64 %4831, 52
  %4833 = load i64, i64* %PC.i330
  %4834 = add i64 %4833, 6
  %4835 = load i64, i64* %PC.i330
  %4836 = add i64 %4835, 6
  store i64 %4836, i64* %PC.i330
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4838 = load i8, i8* %4837, align 1
  store i8 %4838, i8* %BRANCH_TAKEN, align 1
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4840 = icmp ne i8 %4838, 0
  %4841 = select i1 %4840, i64 %4832, i64 %4834
  store i64 %4841, i64* %4839, align 8
  store %struct.Memory* %loadMem_452fb8, %struct.Memory** %MEMORY
  %loadBr_452fb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452fb8 = icmp eq i8 %loadBr_452fb8, 1
  br i1 %cmpBr_452fb8, label %block_.L_452fec, label %block_452fbe

block_452fbe:                                     ; preds = %block_452faf
  %loadMem_452fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 17
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %R8D.i329 = bitcast %union.anon* %4847 to i32*
  %4848 = bitcast i32* %R8D.i329 to i64*
  %4849 = load i64, i64* %PC.i328
  %4850 = add i64 %4849, 6
  store i64 %4850, i64* %PC.i328
  store i64 5, i64* %4848, align 8
  store %struct.Memory* %loadMem_452fbe, %struct.Memory** %MEMORY
  %loadMem_452fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 33
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4853 to i64*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 19
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %R9.i327 = bitcast %union.anon* %4856 to i64*
  %4857 = load i64, i64* %PC.i326
  %4858 = add i64 %4857, 10
  store i64 %4858, i64* %PC.i326
  store i64 ptrtoint (%G__0x57f65f_type* @G__0x57f65f to i64), i64* %R9.i327, align 8
  store %struct.Memory* %loadMem_452fc4, %struct.Memory** %MEMORY
  %loadMem_452fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 33
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 11
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %RDI.i324 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 15
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %RBP.i325
  %4869 = sub i64 %4868, 1584
  %4870 = load i64, i64* %PC.i323
  %4871 = add i64 %4870, 7
  store i64 %4871, i64* %PC.i323
  %4872 = inttoptr i64 %4869 to i64*
  %4873 = load i64, i64* %4872
  store i64 %4873, i64* %RDI.i324, align 8
  store %struct.Memory* %loadMem_452fce, %struct.Memory** %MEMORY
  %loadMem_452fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 9
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RSI.i321 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 15
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %4882 to i64*
  %4883 = load i64, i64* %RBP.i322
  %4884 = sub i64 %4883, 1588
  %4885 = load i64, i64* %PC.i320
  %4886 = add i64 %4885, 6
  store i64 %4886, i64* %PC.i320
  %4887 = inttoptr i64 %4884 to i32*
  %4888 = load i32, i32* %4887
  %4889 = zext i32 %4888 to i64
  store i64 %4889, i64* %RSI.i321, align 8
  store %struct.Memory* %loadMem_452fd5, %struct.Memory** %MEMORY
  %loadMem_452fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4892 to i64*
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 7
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 15
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4898 to i64*
  %4899 = load i64, i64* %RBP.i319
  %4900 = sub i64 %4899, 1592
  %4901 = load i64, i64* %PC.i317
  %4902 = add i64 %4901, 6
  store i64 %4902, i64* %PC.i317
  %4903 = inttoptr i64 %4900 to i32*
  %4904 = load i32, i32* %4903
  %4905 = zext i32 %4904 to i64
  store i64 %4905, i64* %RDX.i318, align 8
  store %struct.Memory* %loadMem_452fdb, %struct.Memory** %MEMORY
  %loadMem_452fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 33
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 5
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 15
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %RBP.i316
  %4916 = sub i64 %4915, 1552
  %4917 = load i64, i64* %PC.i314
  %4918 = add i64 %4917, 6
  store i64 %4918, i64* %PC.i314
  %4919 = inttoptr i64 %4916 to i32*
  %4920 = load i32, i32* %4919
  %4921 = zext i32 %4920 to i64
  store i64 %4921, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_452fe1, %struct.Memory** %MEMORY
  %loadMem1_452fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %PC.i313
  %4926 = add i64 %4925, -240839
  %4927 = load i64, i64* %PC.i313
  %4928 = add i64 %4927, 5
  %4929 = load i64, i64* %PC.i313
  %4930 = add i64 %4929, 5
  store i64 %4930, i64* %PC.i313
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4932 = load i64, i64* %4931, align 8
  %4933 = add i64 %4932, -8
  %4934 = inttoptr i64 %4933 to i64*
  store i64 %4928, i64* %4934
  store i64 %4933, i64* %4931, align 8
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4926, i64* %4935, align 8
  store %struct.Memory* %loadMem1_452fe7, %struct.Memory** %MEMORY
  %loadMem2_452fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_452fe7 = load i64, i64* %3
  %call2_452fe7 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_452fe7, %struct.Memory* %loadMem2_452fe7)
  store %struct.Memory* %call2_452fe7, %struct.Memory** %MEMORY
  br label %block_.L_452fec

block_.L_452fec:                                  ; preds = %block_452fbe, %block_452faf
  %loadMem_452fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %4938 to i64*
  %4939 = load i64, i64* %PC.i312
  %4940 = add i64 %4939, 5
  %4941 = load i64, i64* %PC.i312
  %4942 = add i64 %4941, 5
  store i64 %4942, i64* %PC.i312
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4940, i64* %4943, align 8
  store %struct.Memory* %loadMem_452fec, %struct.Memory** %MEMORY
  br label %block_.L_452ff1

block_.L_452ff1:                                  ; preds = %block_.L_452fec
  %loadMem_452ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 33
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 15
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %4949 to i64*
  %4950 = load i64, i64* %RBP.i311
  %4951 = sub i64 %4950, 64
  %4952 = load i64, i64* %PC.i310
  %4953 = add i64 %4952, 5
  store i64 %4953, i64* %PC.i310
  %4954 = inttoptr i64 %4951 to i64*
  %4955 = load i64, i64* %4954
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4956, align 1
  %4957 = trunc i64 %4955 to i32
  %4958 = and i32 %4957, 255
  %4959 = call i32 @llvm.ctpop.i32(i32 %4958)
  %4960 = trunc i32 %4959 to i8
  %4961 = and i8 %4960, 1
  %4962 = xor i8 %4961, 1
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4962, i8* %4963, align 1
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4964, align 1
  %4965 = icmp eq i64 %4955, 0
  %4966 = zext i1 %4965 to i8
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4966, i8* %4967, align 1
  %4968 = lshr i64 %4955, 63
  %4969 = trunc i64 %4968 to i8
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4969, i8* %4970, align 1
  %4971 = lshr i64 %4955, 63
  %4972 = xor i64 %4968, %4971
  %4973 = add i64 %4972, %4971
  %4974 = icmp eq i64 %4973, 2
  %4975 = zext i1 %4974 to i8
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4975, i8* %4976, align 1
  store %struct.Memory* %loadMem_452ff1, %struct.Memory** %MEMORY
  %loadMem_452ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %PC.i309
  %4981 = add i64 %4980, 18
  %4982 = load i64, i64* %PC.i309
  %4983 = add i64 %4982, 6
  %4984 = load i64, i64* %PC.i309
  %4985 = add i64 %4984, 6
  store i64 %4985, i64* %PC.i309
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4987 = load i8, i8* %4986, align 1
  store i8 %4987, i8* %BRANCH_TAKEN, align 1
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4989 = icmp ne i8 %4987, 0
  %4990 = select i1 %4989, i64 %4981, i64 %4983
  store i64 %4990, i64* %4988, align 8
  store %struct.Memory* %loadMem_452ff6, %struct.Memory** %MEMORY
  %loadBr_452ff6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452ff6 = icmp eq i8 %loadBr_452ff6, 1
  br i1 %cmpBr_452ff6, label %block_.L_453008, label %block_452ffc

block_452ffc:                                     ; preds = %block_.L_452ff1
  %loadMem_452ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 1
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 15
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %4999 to i64*
  %5000 = load i64, i64* %RBP.i308
  %5001 = sub i64 %5000, 1552
  %5002 = load i64, i64* %PC.i306
  %5003 = add i64 %5002, 6
  store i64 %5003, i64* %PC.i306
  %5004 = inttoptr i64 %5001 to i32*
  %5005 = load i32, i32* %5004
  %5006 = zext i32 %5005 to i64
  store i64 %5006, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_452ffc, %struct.Memory** %MEMORY
  %loadMem_453002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 5
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 15
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %RBP.i305
  %5017 = sub i64 %5016, 64
  %5018 = load i64, i64* %PC.i303
  %5019 = add i64 %5018, 4
  store i64 %5019, i64* %PC.i303
  %5020 = inttoptr i64 %5017 to i64*
  %5021 = load i64, i64* %5020
  store i64 %5021, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_453002, %struct.Memory** %MEMORY
  %loadMem_453006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 33
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5024 to i64*
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 1
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %EAX.i301 = bitcast %union.anon* %5027 to i32*
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 5
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %5030 to i64*
  %5031 = load i64, i64* %RCX.i302
  %5032 = load i32, i32* %EAX.i301
  %5033 = zext i32 %5032 to i64
  %5034 = load i64, i64* %PC.i300
  %5035 = add i64 %5034, 2
  store i64 %5035, i64* %PC.i300
  %5036 = inttoptr i64 %5031 to i32*
  store i32 %5032, i32* %5036
  store %struct.Memory* %loadMem_453006, %struct.Memory** %MEMORY
  br label %block_.L_453008

block_.L_453008:                                  ; preds = %block_452ffc, %block_.L_452ff1
  %loadMem_453008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 15
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5042 to i64*
  %5043 = load i64, i64* %RBP.i299
  %5044 = sub i64 %5043, 1576
  %5045 = load i64, i64* %PC.i298
  %5046 = add i64 %5045, 8
  store i64 %5046, i64* %PC.i298
  %5047 = inttoptr i64 %5044 to i64*
  %5048 = load i64, i64* %5047
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5049, align 1
  %5050 = trunc i64 %5048 to i32
  %5051 = and i32 %5050, 255
  %5052 = call i32 @llvm.ctpop.i32(i32 %5051)
  %5053 = trunc i32 %5052 to i8
  %5054 = and i8 %5053, 1
  %5055 = xor i8 %5054, 1
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5055, i8* %5056, align 1
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5057, align 1
  %5058 = icmp eq i64 %5048, 0
  %5059 = zext i1 %5058 to i8
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5059, i8* %5060, align 1
  %5061 = lshr i64 %5048, 63
  %5062 = trunc i64 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5062, i8* %5063, align 1
  %5064 = lshr i64 %5048, 63
  %5065 = xor i64 %5061, %5064
  %5066 = add i64 %5065, %5064
  %5067 = icmp eq i64 %5066, 2
  %5068 = zext i1 %5067 to i8
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5068, i8* %5069, align 1
  store %struct.Memory* %loadMem_453008, %struct.Memory** %MEMORY
  %loadMem_453010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5072 to i64*
  %5073 = load i64, i64* %PC.i297
  %5074 = add i64 %5073, 61
  %5075 = load i64, i64* %PC.i297
  %5076 = add i64 %5075, 6
  %5077 = load i64, i64* %PC.i297
  %5078 = add i64 %5077, 6
  store i64 %5078, i64* %PC.i297
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5080 = load i8, i8* %5079, align 1
  store i8 %5080, i8* %BRANCH_TAKEN, align 1
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5082 = icmp ne i8 %5080, 0
  %5083 = select i1 %5082, i64 %5074, i64 %5076
  store i64 %5083, i64* %5081, align 8
  store %struct.Memory* %loadMem_453010, %struct.Memory** %MEMORY
  %loadBr_453010 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453010 = icmp eq i8 %loadBr_453010, 1
  br i1 %cmpBr_453010, label %block_.L_45304d, label %block_453016

block_453016:                                     ; preds = %block_.L_453008
  %loadMem_453016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 1
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 15
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RBP.i296
  %5094 = sub i64 %5093, 1576
  %5095 = load i64, i64* %PC.i294
  %5096 = add i64 %5095, 7
  store i64 %5096, i64* %PC.i294
  %5097 = inttoptr i64 %5094 to i64*
  %5098 = load i64, i64* %5097
  store i64 %5098, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_453016, %struct.Memory** %MEMORY
  %loadMem_45301d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 33
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 1
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 5
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %5107 to i64*
  %5108 = load i64, i64* %RAX.i292
  %5109 = add i64 %5108, 4
  %5110 = load i64, i64* %PC.i291
  %5111 = add i64 %5110, 3
  store i64 %5111, i64* %PC.i291
  %5112 = inttoptr i64 %5109 to i32*
  %5113 = load i32, i32* %5112
  %5114 = zext i32 %5113 to i64
  store i64 %5114, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_45301d, %struct.Memory** %MEMORY
  %loadMem_453020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 5
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %5120 to i64*
  %5121 = load i64, i64* %RCX.i290
  %5122 = load i64, i64* %PC.i289
  %5123 = add i64 %5122, 6
  store i64 %5123, i64* %PC.i289
  %5124 = and i64 1023, %5121
  %5125 = trunc i64 %5124 to i32
  store i64 %5124, i64* %RCX.i290, align 8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5126, align 1
  %5127 = and i32 %5125, 255
  %5128 = call i32 @llvm.ctpop.i32(i32 %5127)
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  %5131 = xor i8 %5130, 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5131, i8* %5132, align 1
  %5133 = icmp eq i32 %5125, 0
  %5134 = zext i1 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5134, i8* %5135, align 1
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5136, align 1
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5137, align 1
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5138, align 1
  store %struct.Memory* %loadMem_453020, %struct.Memory** %MEMORY
  %loadMem_453026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 33
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 5
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %RCX.i288
  %5146 = load i64, i64* %PC.i287
  %5147 = add i64 %5146, 6
  store i64 %5147, i64* %PC.i287
  %5148 = or i64 536870912, %5145
  %5149 = trunc i64 %5148 to i32
  %5150 = and i64 %5148, 4294967295
  store i64 %5150, i64* %RCX.i288, align 8
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5151, align 1
  %5152 = and i32 %5149, 255
  %5153 = call i32 @llvm.ctpop.i32(i32 %5152)
  %5154 = trunc i32 %5153 to i8
  %5155 = and i8 %5154, 1
  %5156 = xor i8 %5155, 1
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5156, i8* %5157, align 1
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5158, align 1
  %5159 = lshr i32 %5149, 31
  %5160 = trunc i32 %5159 to i8
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5160, i8* %5161, align 1
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5162, align 1
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5163, align 1
  store %struct.Memory* %loadMem_453026, %struct.Memory** %MEMORY
  %loadMem_45302c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 33
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 5
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %5169 to i64*
  %5170 = load i64, i64* %RCX.i286
  %5171 = load i64, i64* %PC.i285
  %5172 = add i64 %5171, 6
  store i64 %5172, i64* %PC.i285
  %5173 = or i64 83886080, %5170
  %5174 = trunc i64 %5173 to i32
  %5175 = and i64 %5173, 4294967295
  store i64 %5175, i64* %RCX.i286, align 8
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5176, align 1
  %5177 = and i32 %5174, 255
  %5178 = call i32 @llvm.ctpop.i32(i32 %5177)
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  %5181 = xor i8 %5180, 1
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5181, i8* %5182, align 1
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5183, align 1
  %5184 = lshr i32 %5174, 31
  %5185 = trunc i32 %5184 to i8
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5185, i8* %5186, align 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5187, align 1
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5188, align 1
  store %struct.Memory* %loadMem_45302c, %struct.Memory** %MEMORY
  %loadMem_453032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 7
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 15
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %RBP.i284
  %5199 = sub i64 %5198, 1552
  %5200 = load i64, i64* %PC.i282
  %5201 = add i64 %5200, 6
  store i64 %5201, i64* %PC.i282
  %5202 = inttoptr i64 %5199 to i32*
  %5203 = load i32, i32* %5202
  %5204 = zext i32 %5203 to i64
  store i64 %5204, i64* %RDX.i283, align 8
  store %struct.Memory* %loadMem_453032, %struct.Memory** %MEMORY
  %loadMem_453038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 33
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5207 to i64*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 7
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %5210 to i64*
  %5211 = load i64, i64* %RDX.i281
  %5212 = load i64, i64* %PC.i280
  %5213 = add i64 %5212, 6
  store i64 %5213, i64* %PC.i280
  %5214 = and i64 1023, %5211
  %5215 = trunc i64 %5214 to i32
  store i64 %5214, i64* %RDX.i281, align 8
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5216, align 1
  %5217 = and i32 %5215, 255
  %5218 = call i32 @llvm.ctpop.i32(i32 %5217)
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  %5221 = xor i8 %5220, 1
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5221, i8* %5222, align 1
  %5223 = icmp eq i32 %5215, 0
  %5224 = zext i1 %5223 to i8
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5224, i8* %5225, align 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5226, align 1
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5227, align 1
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5228, align 1
  store %struct.Memory* %loadMem_453038, %struct.Memory** %MEMORY
  %loadMem_45303e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 33
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 7
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RDX.i279
  %5236 = load i64, i64* %PC.i278
  %5237 = add i64 %5236, 3
  store i64 %5237, i64* %PC.i278
  %5238 = and i64 %5235, 4294967295
  %5239 = shl i64 %5238, 9
  %5240 = trunc i64 %5239 to i32
  %5241 = icmp slt i32 %5240, 0
  %5242 = shl i32 %5240, 1
  %5243 = zext i32 %5242 to i64
  store i64 %5243, i64* %RDX.i279, align 8
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5245 = zext i1 %5241 to i8
  store i8 %5245, i8* %5244, align 1
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5246, align 1
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5247, align 1
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5249 = icmp eq i32 %5242, 0
  %5250 = zext i1 %5249 to i8
  store i8 %5250, i8* %5248, align 1
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5252 = lshr i32 %5242, 31
  %5253 = trunc i32 %5252 to i8
  store i8 %5253, i8* %5251, align 1
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5254, align 1
  store %struct.Memory* %loadMem_45303e, %struct.Memory** %MEMORY
  %loadMem_453041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 7
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %EDX.i276 = bitcast %union.anon* %5260 to i32*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 5
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %RCX.i277
  %5265 = load i32, i32* %EDX.i276
  %5266 = zext i32 %5265 to i64
  %5267 = load i64, i64* %PC.i275
  %5268 = add i64 %5267, 2
  store i64 %5268, i64* %PC.i275
  %5269 = or i64 %5266, %5264
  %5270 = trunc i64 %5269 to i32
  %5271 = and i64 %5269, 4294967295
  store i64 %5271, i64* %RCX.i277, align 8
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5272, align 1
  %5273 = and i32 %5270, 255
  %5274 = call i32 @llvm.ctpop.i32(i32 %5273)
  %5275 = trunc i32 %5274 to i8
  %5276 = and i8 %5275, 1
  %5277 = xor i8 %5276, 1
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5277, i8* %5278, align 1
  %5279 = icmp eq i32 %5270, 0
  %5280 = zext i1 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5280, i8* %5281, align 1
  %5282 = lshr i32 %5270, 31
  %5283 = trunc i32 %5282 to i8
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5283, i8* %5284, align 1
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5285, align 1
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5286, align 1
  store %struct.Memory* %loadMem_453041, %struct.Memory** %MEMORY
  %loadMem_453043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 15
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %RBP.i274
  %5297 = sub i64 %5296, 1576
  %5298 = load i64, i64* %PC.i272
  %5299 = add i64 %5298, 7
  store i64 %5299, i64* %PC.i272
  %5300 = inttoptr i64 %5297 to i64*
  %5301 = load i64, i64* %5300
  store i64 %5301, i64* %RAX.i273, align 8
  store %struct.Memory* %loadMem_453043, %struct.Memory** %MEMORY
  %loadMem_45304a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 33
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 5
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %ECX.i270 = bitcast %union.anon* %5307 to i32*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 1
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %RAX.i271
  %5312 = add i64 %5311, 4
  %5313 = load i32, i32* %ECX.i270
  %5314 = zext i32 %5313 to i64
  %5315 = load i64, i64* %PC.i269
  %5316 = add i64 %5315, 3
  store i64 %5316, i64* %PC.i269
  %5317 = inttoptr i64 %5312 to i32*
  store i32 %5313, i32* %5317
  store %struct.Memory* %loadMem_45304a, %struct.Memory** %MEMORY
  br label %block_.L_45304d

block_.L_45304d:                                  ; preds = %block_453016, %block_.L_453008
  %loadMem_45304d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 33
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 15
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %5323 to i64*
  %5324 = load i64, i64* %RBP.i268
  %5325 = sub i64 %5324, 44
  %5326 = load i64, i64* %PC.i267
  %5327 = add i64 %5326, 7
  store i64 %5327, i64* %PC.i267
  %5328 = inttoptr i64 %5325 to i32*
  store i32 5, i32* %5328
  store %struct.Memory* %loadMem_45304d, %struct.Memory** %MEMORY
  %loadMem_453054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 33
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5331 to i64*
  %5332 = load i64, i64* %PC.i266
  %5333 = add i64 %5332, 665
  %5334 = load i64, i64* %PC.i266
  %5335 = add i64 %5334, 5
  store i64 %5335, i64* %PC.i266
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5333, i64* %5336, align 8
  store %struct.Memory* %loadMem_453054, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_453059:                                  ; preds = %block_452f77
  %loadMem_453059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 15
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %5342 to i64*
  %5343 = load i64, i64* %RBP.i265
  %5344 = sub i64 %5343, 1608
  %5345 = load i64, i64* %PC.i264
  %5346 = add i64 %5345, 7
  store i64 %5346, i64* %PC.i264
  %5347 = inttoptr i64 %5344 to i32*
  %5348 = load i32, i32* %5347
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5349, align 1
  %5350 = and i32 %5348, 255
  %5351 = call i32 @llvm.ctpop.i32(i32 %5350)
  %5352 = trunc i32 %5351 to i8
  %5353 = and i8 %5352, 1
  %5354 = xor i8 %5353, 1
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5354, i8* %5355, align 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5356, align 1
  %5357 = icmp eq i32 %5348, 0
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5358, i8* %5359, align 1
  %5360 = lshr i32 %5348, 31
  %5361 = trunc i32 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5361, i8* %5362, align 1
  %5363 = lshr i32 %5348, 31
  %5364 = xor i32 %5360, %5363
  %5365 = add i32 %5364, %5363
  %5366 = icmp eq i32 %5365, 2
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5367, i8* %5368, align 1
  store %struct.Memory* %loadMem_453059, %struct.Memory** %MEMORY
  %loadMem_453060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %PC.i263
  %5373 = add i64 %5372, 58
  %5374 = load i64, i64* %PC.i263
  %5375 = add i64 %5374, 6
  %5376 = load i64, i64* %PC.i263
  %5377 = add i64 %5376, 6
  store i64 %5377, i64* %PC.i263
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5379 = load i8, i8* %5378, align 1
  store i8 %5379, i8* %BRANCH_TAKEN, align 1
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5381 = icmp ne i8 %5379, 0
  %5382 = select i1 %5381, i64 %5373, i64 %5375
  store i64 %5382, i64* %5380, align 8
  store %struct.Memory* %loadMem_453060, %struct.Memory** %MEMORY
  %loadBr_453060 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453060 = icmp eq i8 %loadBr_453060, 1
  br i1 %cmpBr_453060, label %block_.L_45309a, label %block_453066

block_453066:                                     ; preds = %block_.L_453059
  %loadMem_453066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 33
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5385 to i64*
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 1
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %5388 to i64*
  %5389 = load i64, i64* %PC.i261
  %5390 = add i64 %5389, 5
  store i64 %5390, i64* %PC.i261
  store i64 5, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_453066, %struct.Memory** %MEMORY
  %loadMem_45306b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 33
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5393 to i64*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 1
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 15
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5399 to i64*
  %5400 = load i64, i64* %RAX.i259
  %5401 = load i64, i64* %RBP.i260
  %5402 = sub i64 %5401, 1608
  %5403 = load i64, i64* %PC.i258
  %5404 = add i64 %5403, 6
  store i64 %5404, i64* %PC.i258
  %5405 = trunc i64 %5400 to i32
  %5406 = inttoptr i64 %5402 to i32*
  %5407 = load i32, i32* %5406
  %5408 = sub i32 %5405, %5407
  %5409 = zext i32 %5408 to i64
  store i64 %5409, i64* %RAX.i259, align 8
  %5410 = icmp ult i32 %5405, %5407
  %5411 = zext i1 %5410 to i8
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5411, i8* %5412, align 1
  %5413 = and i32 %5408, 255
  %5414 = call i32 @llvm.ctpop.i32(i32 %5413)
  %5415 = trunc i32 %5414 to i8
  %5416 = and i8 %5415, 1
  %5417 = xor i8 %5416, 1
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5417, i8* %5418, align 1
  %5419 = xor i32 %5407, %5405
  %5420 = xor i32 %5419, %5408
  %5421 = lshr i32 %5420, 4
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5423, i8* %5424, align 1
  %5425 = icmp eq i32 %5408, 0
  %5426 = zext i1 %5425 to i8
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5426, i8* %5427, align 1
  %5428 = lshr i32 %5408, 31
  %5429 = trunc i32 %5428 to i8
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5429, i8* %5430, align 1
  %5431 = lshr i32 %5405, 31
  %5432 = lshr i32 %5407, 31
  %5433 = xor i32 %5432, %5431
  %5434 = xor i32 %5428, %5431
  %5435 = add i32 %5434, %5433
  %5436 = icmp eq i32 %5435, 2
  %5437 = zext i1 %5436 to i8
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5437, i8* %5438, align 1
  store %struct.Memory* %loadMem_45306b, %struct.Memory** %MEMORY
  %loadMem_453071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 33
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5441 to i64*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 1
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %EAX.i256 = bitcast %union.anon* %5444 to i32*
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5446 = getelementptr inbounds %struct.GPR, %struct.GPR* %5445, i32 0, i32 15
  %5447 = getelementptr inbounds %struct.Reg, %struct.Reg* %5446, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5447 to i64*
  %5448 = load i32, i32* %EAX.i256
  %5449 = zext i32 %5448 to i64
  %5450 = load i64, i64* %RBP.i257
  %5451 = sub i64 %5450, 1560
  %5452 = load i64, i64* %PC.i255
  %5453 = add i64 %5452, 6
  store i64 %5453, i64* %PC.i255
  %5454 = inttoptr i64 %5451 to i32*
  %5455 = load i32, i32* %5454
  %5456 = sub i32 %5448, %5455
  %5457 = icmp ult i32 %5448, %5455
  %5458 = zext i1 %5457 to i8
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5458, i8* %5459, align 1
  %5460 = and i32 %5456, 255
  %5461 = call i32 @llvm.ctpop.i32(i32 %5460)
  %5462 = trunc i32 %5461 to i8
  %5463 = and i8 %5462, 1
  %5464 = xor i8 %5463, 1
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5464, i8* %5465, align 1
  %5466 = xor i32 %5455, %5448
  %5467 = xor i32 %5466, %5456
  %5468 = lshr i32 %5467, 4
  %5469 = trunc i32 %5468 to i8
  %5470 = and i8 %5469, 1
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5470, i8* %5471, align 1
  %5472 = icmp eq i32 %5456, 0
  %5473 = zext i1 %5472 to i8
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5473, i8* %5474, align 1
  %5475 = lshr i32 %5456, 31
  %5476 = trunc i32 %5475 to i8
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5476, i8* %5477, align 1
  %5478 = lshr i32 %5448, 31
  %5479 = lshr i32 %5455, 31
  %5480 = xor i32 %5479, %5478
  %5481 = xor i32 %5475, %5478
  %5482 = add i32 %5481, %5480
  %5483 = icmp eq i32 %5482, 2
  %5484 = zext i1 %5483 to i8
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5484, i8* %5485, align 1
  store %struct.Memory* %loadMem_453071, %struct.Memory** %MEMORY
  %loadMem_453077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5487 = getelementptr inbounds %struct.GPR, %struct.GPR* %5486, i32 0, i32 33
  %5488 = getelementptr inbounds %struct.Reg, %struct.Reg* %5487, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5488 to i64*
  %5489 = load i64, i64* %PC.i254
  %5490 = add i64 %5489, 35
  %5491 = load i64, i64* %PC.i254
  %5492 = add i64 %5491, 6
  %5493 = load i64, i64* %PC.i254
  %5494 = add i64 %5493, 6
  store i64 %5494, i64* %PC.i254
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5496 = load i8, i8* %5495, align 1
  %5497 = icmp ne i8 %5496, 0
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5499 = load i8, i8* %5498, align 1
  %5500 = icmp ne i8 %5499, 0
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5502 = load i8, i8* %5501, align 1
  %5503 = icmp ne i8 %5502, 0
  %5504 = xor i1 %5500, %5503
  %5505 = or i1 %5497, %5504
  %5506 = zext i1 %5505 to i8
  store i8 %5506, i8* %BRANCH_TAKEN, align 1
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5508 = select i1 %5505, i64 %5490, i64 %5492
  store i64 %5508, i64* %5507, align 8
  store %struct.Memory* %loadMem_453077, %struct.Memory** %MEMORY
  %loadBr_453077 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453077 = icmp eq i8 %loadBr_453077, 1
  br i1 %cmpBr_453077, label %block_.L_45309a, label %block_45307d

block_45307d:                                     ; preds = %block_453066
  %loadMem_45307d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5510 = getelementptr inbounds %struct.GPR, %struct.GPR* %5509, i32 0, i32 33
  %5511 = getelementptr inbounds %struct.Reg, %struct.Reg* %5510, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5511 to i64*
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5513 = getelementptr inbounds %struct.GPR, %struct.GPR* %5512, i32 0, i32 1
  %5514 = getelementptr inbounds %struct.Reg, %struct.Reg* %5513, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %5514 to i64*
  %5515 = load i64, i64* %PC.i252
  %5516 = add i64 %5515, 5
  store i64 %5516, i64* %PC.i252
  store i64 5, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_45307d, %struct.Memory** %MEMORY
  %loadMem_453082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 33
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5519 to i64*
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 5
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 15
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %5525 to i64*
  %5526 = load i64, i64* %RBP.i251
  %5527 = sub i64 %5526, 1552
  %5528 = load i64, i64* %PC.i249
  %5529 = add i64 %5528, 6
  store i64 %5529, i64* %PC.i249
  %5530 = inttoptr i64 %5527 to i32*
  %5531 = load i32, i32* %5530
  %5532 = zext i32 %5531 to i64
  store i64 %5532, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_453082, %struct.Memory** %MEMORY
  %loadMem_453088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 33
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 5
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %ECX.i247 = bitcast %union.anon* %5538 to i32*
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 15
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %5541 to i64*
  %5542 = load i64, i64* %RBP.i248
  %5543 = sub i64 %5542, 1556
  %5544 = load i32, i32* %ECX.i247
  %5545 = zext i32 %5544 to i64
  %5546 = load i64, i64* %PC.i246
  %5547 = add i64 %5546, 6
  store i64 %5547, i64* %PC.i246
  %5548 = inttoptr i64 %5543 to i32*
  store i32 %5544, i32* %5548
  store %struct.Memory* %loadMem_453088, %struct.Memory** %MEMORY
  %loadMem_45308e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 33
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 1
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 15
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %RAX.i244
  %5559 = load i64, i64* %RBP.i245
  %5560 = sub i64 %5559, 1608
  %5561 = load i64, i64* %PC.i243
  %5562 = add i64 %5561, 6
  store i64 %5562, i64* %PC.i243
  %5563 = trunc i64 %5558 to i32
  %5564 = inttoptr i64 %5560 to i32*
  %5565 = load i32, i32* %5564
  %5566 = sub i32 %5563, %5565
  %5567 = zext i32 %5566 to i64
  store i64 %5567, i64* %RAX.i244, align 8
  %5568 = icmp ult i32 %5563, %5565
  %5569 = zext i1 %5568 to i8
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5569, i8* %5570, align 1
  %5571 = and i32 %5566, 255
  %5572 = call i32 @llvm.ctpop.i32(i32 %5571)
  %5573 = trunc i32 %5572 to i8
  %5574 = and i8 %5573, 1
  %5575 = xor i8 %5574, 1
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5575, i8* %5576, align 1
  %5577 = xor i32 %5565, %5563
  %5578 = xor i32 %5577, %5566
  %5579 = lshr i32 %5578, 4
  %5580 = trunc i32 %5579 to i8
  %5581 = and i8 %5580, 1
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5581, i8* %5582, align 1
  %5583 = icmp eq i32 %5566, 0
  %5584 = zext i1 %5583 to i8
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5584, i8* %5585, align 1
  %5586 = lshr i32 %5566, 31
  %5587 = trunc i32 %5586 to i8
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5587, i8* %5588, align 1
  %5589 = lshr i32 %5563, 31
  %5590 = lshr i32 %5565, 31
  %5591 = xor i32 %5590, %5589
  %5592 = xor i32 %5586, %5589
  %5593 = add i32 %5592, %5591
  %5594 = icmp eq i32 %5593, 2
  %5595 = zext i1 %5594 to i8
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5595, i8* %5596, align 1
  store %struct.Memory* %loadMem_45308e, %struct.Memory** %MEMORY
  %loadMem_453094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 33
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 1
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %5602 to i32*
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5604 = getelementptr inbounds %struct.GPR, %struct.GPR* %5603, i32 0, i32 15
  %5605 = getelementptr inbounds %struct.Reg, %struct.Reg* %5604, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %5605 to i64*
  %5606 = load i64, i64* %RBP.i242
  %5607 = sub i64 %5606, 1560
  %5608 = load i32, i32* %EAX.i241
  %5609 = zext i32 %5608 to i64
  %5610 = load i64, i64* %PC.i240
  %5611 = add i64 %5610, 6
  store i64 %5611, i64* %PC.i240
  %5612 = inttoptr i64 %5607 to i32*
  store i32 %5608, i32* %5612
  store %struct.Memory* %loadMem_453094, %struct.Memory** %MEMORY
  br label %block_.L_45309a

block_.L_45309a:                                  ; preds = %block_45307d, %block_453066, %block_.L_453059
  %loadMem_45309a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 33
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5615 to i64*
  %5616 = load i64, i64* %PC.i239
  %5617 = add i64 %5616, 73
  %5618 = load i64, i64* %PC.i239
  %5619 = add i64 %5618, 5
  store i64 %5619, i64* %PC.i239
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5617, i64* %5620, align 8
  store %struct.Memory* %loadMem_45309a, %struct.Memory** %MEMORY
  br label %block_.L_4530e3

block_.L_45309f:                                  ; preds = %block_452f6a
  %loadMem_45309f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5622 = getelementptr inbounds %struct.GPR, %struct.GPR* %5621, i32 0, i32 33
  %5623 = getelementptr inbounds %struct.Reg, %struct.Reg* %5622, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5623 to i64*
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 1
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %5626 to i32*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 1
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %5629 to i64*
  %5630 = load i64, i64* %RAX.i238
  %5631 = load i32, i32* %EAX.i237
  %5632 = zext i32 %5631 to i64
  %5633 = load i64, i64* %PC.i236
  %5634 = add i64 %5633, 2
  store i64 %5634, i64* %PC.i236
  %5635 = xor i64 %5632, %5630
  %5636 = trunc i64 %5635 to i32
  %5637 = and i64 %5635, 4294967295
  store i64 %5637, i64* %RAX.i238, align 8
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5638, align 1
  %5639 = and i32 %5636, 255
  %5640 = call i32 @llvm.ctpop.i32(i32 %5639)
  %5641 = trunc i32 %5640 to i8
  %5642 = and i8 %5641, 1
  %5643 = xor i8 %5642, 1
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5643, i8* %5644, align 1
  %5645 = icmp eq i32 %5636, 0
  %5646 = zext i1 %5645 to i8
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5646, i8* %5647, align 1
  %5648 = lshr i32 %5636, 31
  %5649 = trunc i32 %5648 to i8
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5649, i8* %5650, align 1
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5651, align 1
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5652, align 1
  store %struct.Memory* %loadMem_45309f, %struct.Memory** %MEMORY
  %loadMem_4530a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 33
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5655 to i64*
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 1
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %5658 to i32*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 7
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %5661 to i64*
  %5662 = load i32, i32* %EAX.i234
  %5663 = zext i32 %5662 to i64
  %5664 = load i64, i64* %PC.i233
  %5665 = add i64 %5664, 2
  store i64 %5665, i64* %PC.i233
  %5666 = and i64 %5663, 4294967295
  store i64 %5666, i64* %RDX.i235, align 8
  store %struct.Memory* %loadMem_4530a1, %struct.Memory** %MEMORY
  %loadMem_4530a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5668 = getelementptr inbounds %struct.GPR, %struct.GPR* %5667, i32 0, i32 33
  %5669 = getelementptr inbounds %struct.Reg, %struct.Reg* %5668, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5669 to i64*
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5671 = getelementptr inbounds %struct.GPR, %struct.GPR* %5670, i32 0, i32 11
  %5672 = getelementptr inbounds %struct.Reg, %struct.Reg* %5671, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %5672 to i64*
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 15
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %5675 to i64*
  %5676 = load i64, i64* %RBP.i232
  %5677 = sub i64 %5676, 48
  %5678 = load i64, i64* %PC.i230
  %5679 = add i64 %5678, 3
  store i64 %5679, i64* %PC.i230
  %5680 = inttoptr i64 %5677 to i32*
  %5681 = load i32, i32* %5680
  %5682 = zext i32 %5681 to i64
  store i64 %5682, i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_4530a3, %struct.Memory** %MEMORY
  %loadMem_4530a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 33
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5685 to i64*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 9
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RSI.i228 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 15
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5691 to i64*
  %5692 = load i64, i64* %RBP.i229
  %5693 = sub i64 %5692, 52
  %5694 = load i64, i64* %PC.i227
  %5695 = add i64 %5694, 3
  store i64 %5695, i64* %PC.i227
  %5696 = inttoptr i64 %5693 to i32*
  %5697 = load i32, i32* %5696
  %5698 = zext i32 %5697 to i64
  store i64 %5698, i64* %RSI.i228, align 8
  store %struct.Memory* %loadMem_4530a6, %struct.Memory** %MEMORY
  %loadMem_4530a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 33
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5701 to i64*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 5
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 15
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %5707 to i64*
  %5708 = load i64, i64* %RBP.i226
  %5709 = sub i64 %5708, 1596
  %5710 = load i64, i64* %PC.i224
  %5711 = add i64 %5710, 6
  store i64 %5711, i64* %PC.i224
  %5712 = inttoptr i64 %5709 to i32*
  %5713 = load i32, i32* %5712
  %5714 = zext i32 %5713 to i64
  store i64 %5714, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_4530a9, %struct.Memory** %MEMORY
  %loadMem_4530af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 33
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5717 to i64*
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 17
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %R8D.i222 = bitcast %union.anon* %5720 to i32*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 15
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %5723 to i64*
  %5724 = bitcast i32* %R8D.i222 to i64*
  %5725 = load i64, i64* %RBP.i223
  %5726 = sub i64 %5725, 1600
  %5727 = load i64, i64* %PC.i221
  %5728 = add i64 %5727, 7
  store i64 %5728, i64* %PC.i221
  %5729 = inttoptr i64 %5726 to i32*
  %5730 = load i32, i32* %5729
  %5731 = zext i32 %5730 to i64
  store i64 %5731, i64* %5724, align 8
  store %struct.Memory* %loadMem_4530af, %struct.Memory** %MEMORY
  %loadMem_4530b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 33
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5734 to i64*
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 19
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %R9D.i219 = bitcast %union.anon* %5737 to i32*
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 15
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %5740 to i64*
  %5741 = bitcast i32* %R9D.i219 to i64*
  %5742 = load i64, i64* %RBP.i220
  %5743 = sub i64 %5742, 76
  %5744 = load i64, i64* %PC.i218
  %5745 = add i64 %5744, 4
  store i64 %5745, i64* %PC.i218
  %5746 = inttoptr i64 %5743 to i32*
  %5747 = load i32, i32* %5746
  %5748 = zext i32 %5747 to i64
  store i64 %5748, i64* %5741, align 8
  store %struct.Memory* %loadMem_4530b6, %struct.Memory** %MEMORY
  %loadMem1_4530ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 33
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5751 to i64*
  %5752 = load i64, i64* %PC.i217
  %5753 = add i64 %5752, 6374
  %5754 = load i64, i64* %PC.i217
  %5755 = add i64 %5754, 5
  %5756 = load i64, i64* %PC.i217
  %5757 = add i64 %5756, 5
  store i64 %5757, i64* %PC.i217
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5759 = load i64, i64* %5758, align 8
  %5760 = add i64 %5759, -8
  %5761 = inttoptr i64 %5760 to i64*
  store i64 %5755, i64* %5761
  store i64 %5760, i64* %5758, align 8
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5753, i64* %5762, align 8
  store %struct.Memory* %loadMem1_4530ba, %struct.Memory** %MEMORY
  %loadMem2_4530ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4530ba = load i64, i64* %3
  %call2_4530ba = call %struct.Memory* @sub_4549a0.recursive_disconnect2(%struct.State* %0, i64 %loadPC_4530ba, %struct.Memory* %loadMem2_4530ba)
  store %struct.Memory* %call2_4530ba, %struct.Memory** %MEMORY
  %loadMem_4530bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 33
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 1
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %EAX.i216 = bitcast %union.anon* %5768 to i32*
  %5769 = load i32, i32* %EAX.i216
  %5770 = zext i32 %5769 to i64
  %5771 = load i64, i64* %PC.i215
  %5772 = add i64 %5771, 3
  store i64 %5772, i64* %PC.i215
  %5773 = sub i32 %5769, 5
  %5774 = icmp ult i32 %5769, 5
  %5775 = zext i1 %5774 to i8
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5775, i8* %5776, align 1
  %5777 = and i32 %5773, 255
  %5778 = call i32 @llvm.ctpop.i32(i32 %5777)
  %5779 = trunc i32 %5778 to i8
  %5780 = and i8 %5779, 1
  %5781 = xor i8 %5780, 1
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5781, i8* %5782, align 1
  %5783 = xor i64 5, %5770
  %5784 = trunc i64 %5783 to i32
  %5785 = xor i32 %5784, %5773
  %5786 = lshr i32 %5785, 4
  %5787 = trunc i32 %5786 to i8
  %5788 = and i8 %5787, 1
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5788, i8* %5789, align 1
  %5790 = icmp eq i32 %5773, 0
  %5791 = zext i1 %5790 to i8
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5791, i8* %5792, align 1
  %5793 = lshr i32 %5773, 31
  %5794 = trunc i32 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5794, i8* %5795, align 1
  %5796 = lshr i32 %5769, 31
  %5797 = xor i32 %5793, %5796
  %5798 = add i32 %5797, %5796
  %5799 = icmp eq i32 %5798, 2
  %5800 = zext i1 %5799 to i8
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5800, i8* %5801, align 1
  store %struct.Memory* %loadMem_4530bf, %struct.Memory** %MEMORY
  %loadMem_4530c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 33
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %PC.i214
  %5806 = add i64 %5805, 28
  %5807 = load i64, i64* %PC.i214
  %5808 = add i64 %5807, 6
  %5809 = load i64, i64* %PC.i214
  %5810 = add i64 %5809, 6
  store i64 %5810, i64* %PC.i214
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5812 = load i8, i8* %5811, align 1
  store i8 %5812, i8* %BRANCH_TAKEN, align 1
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5814 = icmp ne i8 %5812, 0
  %5815 = select i1 %5814, i64 %5806, i64 %5808
  store i64 %5815, i64* %5813, align 8
  store %struct.Memory* %loadMem_4530c2, %struct.Memory** %MEMORY
  %loadBr_4530c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4530c2 = icmp eq i8 %loadBr_4530c2, 1
  br i1 %cmpBr_4530c2, label %block_.L_4530de, label %block_4530c8

block_4530c8:                                     ; preds = %block_.L_45309f
  %loadMem_4530c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 1
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %5821 to i64*
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 15
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %5824 to i64*
  %5825 = load i64, i64* %RBP.i213
  %5826 = sub i64 %5825, 1552
  %5827 = load i64, i64* %PC.i211
  %5828 = add i64 %5827, 6
  store i64 %5828, i64* %PC.i211
  %5829 = inttoptr i64 %5826 to i32*
  %5830 = load i32, i32* %5829
  %5831 = zext i32 %5830 to i64
  store i64 %5831, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_4530c8, %struct.Memory** %MEMORY
  %loadMem_4530ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5834 to i64*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 1
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %5837 to i32*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 15
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %5840 to i64*
  %5841 = load i64, i64* %RBP.i210
  %5842 = sub i64 %5841, 1556
  %5843 = load i32, i32* %EAX.i209
  %5844 = zext i32 %5843 to i64
  %5845 = load i64, i64* %PC.i208
  %5846 = add i64 %5845, 6
  store i64 %5846, i64* %PC.i208
  %5847 = inttoptr i64 %5842 to i32*
  store i32 %5843, i32* %5847
  store %struct.Memory* %loadMem_4530ce, %struct.Memory** %MEMORY
  %loadMem_4530d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5849 = getelementptr inbounds %struct.GPR, %struct.GPR* %5848, i32 0, i32 33
  %5850 = getelementptr inbounds %struct.Reg, %struct.Reg* %5849, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %5850 to i64*
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5852 = getelementptr inbounds %struct.GPR, %struct.GPR* %5851, i32 0, i32 15
  %5853 = getelementptr inbounds %struct.Reg, %struct.Reg* %5852, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5853 to i64*
  %5854 = load i64, i64* %RBP.i207
  %5855 = sub i64 %5854, 1560
  %5856 = load i64, i64* %PC.i206
  %5857 = add i64 %5856, 10
  store i64 %5857, i64* %PC.i206
  %5858 = inttoptr i64 %5855 to i32*
  store i32 1, i32* %5858
  store %struct.Memory* %loadMem_4530d4, %struct.Memory** %MEMORY
  br label %block_.L_4530de

block_.L_4530de:                                  ; preds = %block_4530c8, %block_.L_45309f
  %loadMem1_4530de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 33
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5861 to i64*
  %5862 = load i64, i64* %PC.i205
  %5863 = add i64 %5862, -283518
  %5864 = load i64, i64* %PC.i205
  %5865 = add i64 %5864, 5
  %5866 = load i64, i64* %PC.i205
  %5867 = add i64 %5866, 5
  store i64 %5867, i64* %PC.i205
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5869 = load i64, i64* %5868, align 8
  %5870 = add i64 %5869, -8
  %5871 = inttoptr i64 %5870 to i64*
  store i64 %5865, i64* %5871
  store i64 %5870, i64* %5868, align 8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5863, i64* %5872, align 8
  store %struct.Memory* %loadMem1_4530de, %struct.Memory** %MEMORY
  %loadMem2_4530de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4530de = load i64, i64* %3
  %call2_4530de = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_4530de, %struct.Memory* %loadMem2_4530de)
  store %struct.Memory* %call2_4530de, %struct.Memory** %MEMORY
  br label %block_.L_4530e3

block_.L_4530e3:                                  ; preds = %block_.L_4530de, %block_.L_45309a
  %loadMem_4530e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 33
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %PC.i204
  %5877 = add i64 %5876, 5
  %5878 = load i64, i64* %PC.i204
  %5879 = add i64 %5878, 5
  store i64 %5879, i64* %PC.i204
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5877, i64* %5880, align 8
  store %struct.Memory* %loadMem_4530e3, %struct.Memory** %MEMORY
  br label %block_.L_4530e8

block_.L_4530e8:                                  ; preds = %block_.L_4530e3, %block_.L_452eb8
  %loadMem_4530e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 33
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5883 to i64*
  %5884 = load i64, i64* %PC.i203
  %5885 = add i64 %5884, 5
  %5886 = load i64, i64* %PC.i203
  %5887 = add i64 %5886, 5
  store i64 %5887, i64* %PC.i203
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5885, i64* %5888, align 8
  store %struct.Memory* %loadMem_4530e8, %struct.Memory** %MEMORY
  br label %block_.L_4530ed

block_.L_4530ed:                                  ; preds = %block_.L_4530e8
  %loadMem_4530ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 33
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 1
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 15
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5897 to i64*
  %5898 = load i64, i64* %RBP.i202
  %5899 = sub i64 %5898, 1548
  %5900 = load i64, i64* %PC.i200
  %5901 = add i64 %5900, 6
  store i64 %5901, i64* %PC.i200
  %5902 = inttoptr i64 %5899 to i32*
  %5903 = load i32, i32* %5902
  %5904 = zext i32 %5903 to i64
  store i64 %5904, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_4530ed, %struct.Memory** %MEMORY
  %loadMem_4530f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 33
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 1
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %5910 to i64*
  %5911 = load i64, i64* %RAX.i199
  %5912 = load i64, i64* %PC.i198
  %5913 = add i64 %5912, 3
  store i64 %5913, i64* %PC.i198
  %5914 = trunc i64 %5911 to i32
  %5915 = add i32 1, %5914
  %5916 = zext i32 %5915 to i64
  store i64 %5916, i64* %RAX.i199, align 8
  %5917 = icmp ult i32 %5915, %5914
  %5918 = icmp ult i32 %5915, 1
  %5919 = or i1 %5917, %5918
  %5920 = zext i1 %5919 to i8
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5920, i8* %5921, align 1
  %5922 = and i32 %5915, 255
  %5923 = call i32 @llvm.ctpop.i32(i32 %5922)
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  %5926 = xor i8 %5925, 1
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5926, i8* %5927, align 1
  %5928 = xor i64 1, %5911
  %5929 = trunc i64 %5928 to i32
  %5930 = xor i32 %5929, %5915
  %5931 = lshr i32 %5930, 4
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5933, i8* %5934, align 1
  %5935 = icmp eq i32 %5915, 0
  %5936 = zext i1 %5935 to i8
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5936, i8* %5937, align 1
  %5938 = lshr i32 %5915, 31
  %5939 = trunc i32 %5938 to i8
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5939, i8* %5940, align 1
  %5941 = lshr i32 %5914, 31
  %5942 = xor i32 %5938, %5941
  %5943 = add i32 %5942, %5938
  %5944 = icmp eq i32 %5943, 2
  %5945 = zext i1 %5944 to i8
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5945, i8* %5946, align 1
  store %struct.Memory* %loadMem_4530f3, %struct.Memory** %MEMORY
  %loadMem_4530f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 33
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5949 to i64*
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5951 = getelementptr inbounds %struct.GPR, %struct.GPR* %5950, i32 0, i32 1
  %5952 = getelementptr inbounds %struct.Reg, %struct.Reg* %5951, i32 0, i32 0
  %EAX.i196 = bitcast %union.anon* %5952 to i32*
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5954 = getelementptr inbounds %struct.GPR, %struct.GPR* %5953, i32 0, i32 15
  %5955 = getelementptr inbounds %struct.Reg, %struct.Reg* %5954, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %5955 to i64*
  %5956 = load i64, i64* %RBP.i197
  %5957 = sub i64 %5956, 1548
  %5958 = load i32, i32* %EAX.i196
  %5959 = zext i32 %5958 to i64
  %5960 = load i64, i64* %PC.i195
  %5961 = add i64 %5960, 6
  store i64 %5961, i64* %PC.i195
  %5962 = inttoptr i64 %5957 to i32*
  store i32 %5958, i32* %5962
  store %struct.Memory* %loadMem_4530f6, %struct.Memory** %MEMORY
  %loadMem_4530fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5965 to i64*
  %5966 = load i64, i64* %PC.i194
  %5967 = add i64 %5966, -718
  %5968 = load i64, i64* %PC.i194
  %5969 = add i64 %5968, 5
  store i64 %5969, i64* %PC.i194
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5967, i64* %5970, align 8
  store %struct.Memory* %loadMem_4530fc, %struct.Memory** %MEMORY
  br label %block_.L_452e2e

block_.L_453101:                                  ; preds = %block_.L_452e2e
  %loadMem_453101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 33
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5973 to i64*
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 15
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5976 to i64*
  %5977 = load i64, i64* %RBP.i193
  %5978 = sub i64 %5977, 1540
  %5979 = load i64, i64* %PC.i192
  %5980 = add i64 %5979, 7
  store i64 %5980, i64* %PC.i192
  %5981 = inttoptr i64 %5978 to i32*
  %5982 = load i32, i32* %5981
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5983, align 1
  %5984 = and i32 %5982, 255
  %5985 = call i32 @llvm.ctpop.i32(i32 %5984)
  %5986 = trunc i32 %5985 to i8
  %5987 = and i8 %5986, 1
  %5988 = xor i8 %5987, 1
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5988, i8* %5989, align 1
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5990, align 1
  %5991 = icmp eq i32 %5982, 0
  %5992 = zext i1 %5991 to i8
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5992, i8* %5993, align 1
  %5994 = lshr i32 %5982, 31
  %5995 = trunc i32 %5994 to i8
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5995, i8* %5996, align 1
  %5997 = lshr i32 %5982, 31
  %5998 = xor i32 %5994, %5997
  %5999 = add i32 %5998, %5997
  %6000 = icmp eq i32 %5999, 2
  %6001 = zext i1 %6000 to i8
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6001, i8* %6002, align 1
  store %struct.Memory* %loadMem_453101, %struct.Memory** %MEMORY
  %loadMem_453108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 33
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6005 to i64*
  %6006 = load i64, i64* %PC.i191
  %6007 = add i64 %6006, 169
  %6008 = load i64, i64* %PC.i191
  %6009 = add i64 %6008, 6
  %6010 = load i64, i64* %PC.i191
  %6011 = add i64 %6010, 6
  store i64 %6011, i64* %PC.i191
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6013 = load i8, i8* %6012, align 1
  %6014 = icmp eq i8 %6013, 0
  %6015 = zext i1 %6014 to i8
  store i8 %6015, i8* %BRANCH_TAKEN, align 1
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6017 = select i1 %6014, i64 %6007, i64 %6009
  store i64 %6017, i64* %6016, align 8
  store %struct.Memory* %loadMem_453108, %struct.Memory** %MEMORY
  %loadBr_453108 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453108 = icmp eq i8 %loadBr_453108, 1
  br i1 %cmpBr_453108, label %block_.L_4531b1, label %block_45310e

block_45310e:                                     ; preds = %block_.L_453101
  %loadMem_45310e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 33
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6020 to i64*
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 15
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %6023 to i64*
  %6024 = load i64, i64* %RBP.i190
  %6025 = sub i64 %6024, 1544
  %6026 = load i64, i64* %PC.i189
  %6027 = add i64 %6026, 10
  store i64 %6027, i64* %PC.i189
  %6028 = inttoptr i64 %6025 to i32*
  %6029 = load i32, i32* %6028
  %6030 = sub i32 %6029, 1000
  %6031 = icmp ult i32 %6029, 1000
  %6032 = zext i1 %6031 to i8
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6032, i8* %6033, align 1
  %6034 = and i32 %6030, 255
  %6035 = call i32 @llvm.ctpop.i32(i32 %6034)
  %6036 = trunc i32 %6035 to i8
  %6037 = and i8 %6036, 1
  %6038 = xor i8 %6037, 1
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6038, i8* %6039, align 1
  %6040 = xor i32 %6029, 1000
  %6041 = xor i32 %6040, %6030
  %6042 = lshr i32 %6041, 4
  %6043 = trunc i32 %6042 to i8
  %6044 = and i8 %6043, 1
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6044, i8* %6045, align 1
  %6046 = icmp eq i32 %6030, 0
  %6047 = zext i1 %6046 to i8
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6047, i8* %6048, align 1
  %6049 = lshr i32 %6030, 31
  %6050 = trunc i32 %6049 to i8
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6050, i8* %6051, align 1
  %6052 = lshr i32 %6029, 31
  %6053 = xor i32 %6049, %6052
  %6054 = add i32 %6053, %6052
  %6055 = icmp eq i32 %6054, 2
  %6056 = zext i1 %6055 to i8
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6056, i8* %6057, align 1
  store %struct.Memory* %loadMem_45310e, %struct.Memory** %MEMORY
  %loadMem_453118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6059 = getelementptr inbounds %struct.GPR, %struct.GPR* %6058, i32 0, i32 33
  %6060 = getelementptr inbounds %struct.Reg, %struct.Reg* %6059, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6060 to i64*
  %6061 = load i64, i64* %PC.i188
  %6062 = add i64 %6061, 153
  %6063 = load i64, i64* %PC.i188
  %6064 = add i64 %6063, 6
  %6065 = load i64, i64* %PC.i188
  %6066 = add i64 %6065, 6
  store i64 %6066, i64* %PC.i188
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6068 = load i8, i8* %6067, align 1
  %6069 = icmp ne i8 %6068, 0
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6071 = load i8, i8* %6070, align 1
  %6072 = icmp ne i8 %6071, 0
  %6073 = xor i1 %6069, %6072
  %6074 = xor i1 %6073, true
  %6075 = zext i1 %6074 to i8
  store i8 %6075, i8* %BRANCH_TAKEN, align 1
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6077 = select i1 %6073, i64 %6064, i64 %6062
  store i64 %6077, i64* %6076, align 8
  store %struct.Memory* %loadMem_453118, %struct.Memory** %MEMORY
  %loadBr_453118 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453118 = icmp eq i8 %loadBr_453118, 1
  br i1 %cmpBr_453118, label %block_.L_4531b1, label %block_45311e

block_45311e:                                     ; preds = %block_45310e
  %loadMem_45311e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 33
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6080 to i64*
  %6081 = load i64, i64* %PC.i187
  %6082 = add i64 %6081, 9
  store i64 %6082, i64* %PC.i187
  %6083 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6084, align 1
  %6085 = trunc i64 %6083 to i32
  %6086 = and i32 %6085, 255
  %6087 = call i32 @llvm.ctpop.i32(i32 %6086)
  %6088 = trunc i32 %6087 to i8
  %6089 = and i8 %6088, 1
  %6090 = xor i8 %6089, 1
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6090, i8* %6091, align 1
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6092, align 1
  %6093 = icmp eq i64 %6083, 0
  %6094 = zext i1 %6093 to i8
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6094, i8* %6095, align 1
  %6096 = lshr i64 %6083, 63
  %6097 = trunc i64 %6096 to i8
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6097, i8* %6098, align 1
  %6099 = lshr i64 %6083, 63
  %6100 = xor i64 %6096, %6099
  %6101 = add i64 %6100, %6099
  %6102 = icmp eq i64 %6101, 2
  %6103 = zext i1 %6102 to i8
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6103, i8* %6104, align 1
  store %struct.Memory* %loadMem_45311e, %struct.Memory** %MEMORY
  %loadMem_453127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 33
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6107 to i64*
  %6108 = load i64, i64* %PC.i186
  %6109 = add i64 %6108, 48
  %6110 = load i64, i64* %PC.i186
  %6111 = add i64 %6110, 6
  %6112 = load i64, i64* %PC.i186
  %6113 = add i64 %6112, 6
  store i64 %6113, i64* %PC.i186
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6115 = load i8, i8* %6114, align 1
  store i8 %6115, i8* %BRANCH_TAKEN, align 1
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6117 = icmp ne i8 %6115, 0
  %6118 = select i1 %6117, i64 %6109, i64 %6111
  store i64 %6118, i64* %6116, align 8
  store %struct.Memory* %loadMem_453127, %struct.Memory** %MEMORY
  %loadBr_453127 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453127 = icmp eq i8 %loadBr_453127, 1
  br i1 %cmpBr_453127, label %block_.L_453157, label %block_45312d

block_45312d:                                     ; preds = %block_45311e
  %loadMem_45312d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 33
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6121 to i64*
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6123 = getelementptr inbounds %struct.GPR, %struct.GPR* %6122, i32 0, i32 5
  %6124 = getelementptr inbounds %struct.Reg, %struct.Reg* %6123, i32 0, i32 0
  %ECX.i184 = bitcast %union.anon* %6124 to i32*
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6126 = getelementptr inbounds %struct.GPR, %struct.GPR* %6125, i32 0, i32 5
  %6127 = getelementptr inbounds %struct.Reg, %struct.Reg* %6126, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %6127 to i64*
  %6128 = load i64, i64* %RCX.i185
  %6129 = load i32, i32* %ECX.i184
  %6130 = zext i32 %6129 to i64
  %6131 = load i64, i64* %PC.i183
  %6132 = add i64 %6131, 2
  store i64 %6132, i64* %PC.i183
  %6133 = xor i64 %6130, %6128
  %6134 = trunc i64 %6133 to i32
  %6135 = and i64 %6133, 4294967295
  store i64 %6135, i64* %RCX.i185, align 8
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6136, align 1
  %6137 = and i32 %6134, 255
  %6138 = call i32 @llvm.ctpop.i32(i32 %6137)
  %6139 = trunc i32 %6138 to i8
  %6140 = and i8 %6139, 1
  %6141 = xor i8 %6140, 1
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6141, i8* %6142, align 1
  %6143 = icmp eq i32 %6134, 0
  %6144 = zext i1 %6143 to i8
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6144, i8* %6145, align 1
  %6146 = lshr i32 %6134, 31
  %6147 = trunc i32 %6146 to i8
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6147, i8* %6148, align 1
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6149, align 1
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6150, align 1
  store %struct.Memory* %loadMem_45312d, %struct.Memory** %MEMORY
  %loadMem_45312f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 33
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 17
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %R8D.i182 = bitcast %union.anon* %6156 to i32*
  %6157 = bitcast i32* %R8D.i182 to i64*
  %6158 = load i64, i64* %PC.i181
  %6159 = add i64 %6158, 6
  store i64 %6159, i64* %PC.i181
  store i64 5, i64* %6157, align 8
  store %struct.Memory* %loadMem_45312f, %struct.Memory** %MEMORY
  %loadMem_453135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 33
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 19
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %R9.i180 = bitcast %union.anon* %6165 to i64*
  %6166 = load i64, i64* %PC.i179
  %6167 = add i64 %6166, 10
  store i64 %6167, i64* %PC.i179
  store i64 ptrtoint (%G__0x57f5ee_type* @G__0x57f5ee to i64), i64* %R9.i180, align 8
  store %struct.Memory* %loadMem_453135, %struct.Memory** %MEMORY
  %loadMem_45313f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 33
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6170 to i64*
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 11
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %6173 to i64*
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6175 = getelementptr inbounds %struct.GPR, %struct.GPR* %6174, i32 0, i32 15
  %6176 = getelementptr inbounds %struct.Reg, %struct.Reg* %6175, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %6176 to i64*
  %6177 = load i64, i64* %RBP.i178
  %6178 = sub i64 %6177, 1584
  %6179 = load i64, i64* %PC.i176
  %6180 = add i64 %6179, 7
  store i64 %6180, i64* %PC.i176
  %6181 = inttoptr i64 %6178 to i64*
  %6182 = load i64, i64* %6181
  store i64 %6182, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_45313f, %struct.Memory** %MEMORY
  %loadMem_453146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 33
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6185 to i64*
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 9
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %RSI.i174 = bitcast %union.anon* %6188 to i64*
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6190 = getelementptr inbounds %struct.GPR, %struct.GPR* %6189, i32 0, i32 15
  %6191 = getelementptr inbounds %struct.Reg, %struct.Reg* %6190, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %6191 to i64*
  %6192 = load i64, i64* %RBP.i175
  %6193 = sub i64 %6192, 1588
  %6194 = load i64, i64* %PC.i173
  %6195 = add i64 %6194, 6
  store i64 %6195, i64* %PC.i173
  %6196 = inttoptr i64 %6193 to i32*
  %6197 = load i32, i32* %6196
  %6198 = zext i32 %6197 to i64
  store i64 %6198, i64* %RSI.i174, align 8
  store %struct.Memory* %loadMem_453146, %struct.Memory** %MEMORY
  %loadMem_45314c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6200 = getelementptr inbounds %struct.GPR, %struct.GPR* %6199, i32 0, i32 33
  %6201 = getelementptr inbounds %struct.Reg, %struct.Reg* %6200, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6201 to i64*
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 7
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %RDX.i171 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 15
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %6207 to i64*
  %6208 = load i64, i64* %RBP.i172
  %6209 = sub i64 %6208, 1592
  %6210 = load i64, i64* %PC.i170
  %6211 = add i64 %6210, 6
  store i64 %6211, i64* %PC.i170
  %6212 = inttoptr i64 %6209 to i32*
  %6213 = load i32, i32* %6212
  %6214 = zext i32 %6213 to i64
  store i64 %6214, i64* %RDX.i171, align 8
  store %struct.Memory* %loadMem_45314c, %struct.Memory** %MEMORY
  %loadMem1_453152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 33
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6217 to i64*
  %6218 = load i64, i64* %PC.i169
  %6219 = add i64 %6218, -241202
  %6220 = load i64, i64* %PC.i169
  %6221 = add i64 %6220, 5
  %6222 = load i64, i64* %PC.i169
  %6223 = add i64 %6222, 5
  store i64 %6223, i64* %PC.i169
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6225 = load i64, i64* %6224, align 8
  %6226 = add i64 %6225, -8
  %6227 = inttoptr i64 %6226 to i64*
  store i64 %6221, i64* %6227
  store i64 %6226, i64* %6224, align 8
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6219, i64* %6228, align 8
  store %struct.Memory* %loadMem1_453152, %struct.Memory** %MEMORY
  %loadMem2_453152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453152 = load i64, i64* %3
  %call2_453152 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_453152, %struct.Memory* %loadMem2_453152)
  store %struct.Memory* %call2_453152, %struct.Memory** %MEMORY
  br label %block_.L_453157

block_.L_453157:                                  ; preds = %block_45312d, %block_45311e
  %loadMem_453157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6230 = getelementptr inbounds %struct.GPR, %struct.GPR* %6229, i32 0, i32 33
  %6231 = getelementptr inbounds %struct.Reg, %struct.Reg* %6230, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6231 to i64*
  %6232 = load i64, i64* %PC.i168
  %6233 = add i64 %6232, 5
  %6234 = load i64, i64* %PC.i168
  %6235 = add i64 %6234, 5
  store i64 %6235, i64* %PC.i168
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6233, i64* %6236, align 8
  store %struct.Memory* %loadMem_453157, %struct.Memory** %MEMORY
  br label %block_.L_45315c

block_.L_45315c:                                  ; preds = %block_.L_453157
  %loadMem_45315c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 33
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6239 to i64*
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 15
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %6242 to i64*
  %6243 = load i64, i64* %RBP.i167
  %6244 = sub i64 %6243, 64
  %6245 = load i64, i64* %PC.i166
  %6246 = add i64 %6245, 5
  store i64 %6246, i64* %PC.i166
  %6247 = inttoptr i64 %6244 to i64*
  %6248 = load i64, i64* %6247
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6249, align 1
  %6250 = trunc i64 %6248 to i32
  %6251 = and i32 %6250, 255
  %6252 = call i32 @llvm.ctpop.i32(i32 %6251)
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = xor i8 %6254, 1
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6255, i8* %6256, align 1
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6257, align 1
  %6258 = icmp eq i64 %6248, 0
  %6259 = zext i1 %6258 to i8
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6259, i8* %6260, align 1
  %6261 = lshr i64 %6248, 63
  %6262 = trunc i64 %6261 to i8
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6262, i8* %6263, align 1
  %6264 = lshr i64 %6248, 63
  %6265 = xor i64 %6261, %6264
  %6266 = add i64 %6265, %6264
  %6267 = icmp eq i64 %6266, 2
  %6268 = zext i1 %6267 to i8
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6268, i8* %6269, align 1
  store %struct.Memory* %loadMem_45315c, %struct.Memory** %MEMORY
  %loadMem_453161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 33
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6272 to i64*
  %6273 = load i64, i64* %PC.i165
  %6274 = add i64 %6273, 16
  %6275 = load i64, i64* %PC.i165
  %6276 = add i64 %6275, 6
  %6277 = load i64, i64* %PC.i165
  %6278 = add i64 %6277, 6
  store i64 %6278, i64* %PC.i165
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6280 = load i8, i8* %6279, align 1
  store i8 %6280, i8* %BRANCH_TAKEN, align 1
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6282 = icmp ne i8 %6280, 0
  %6283 = select i1 %6282, i64 %6274, i64 %6276
  store i64 %6283, i64* %6281, align 8
  store %struct.Memory* %loadMem_453161, %struct.Memory** %MEMORY
  %loadBr_453161 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453161 = icmp eq i8 %loadBr_453161, 1
  br i1 %cmpBr_453161, label %block_.L_453171, label %block_453167

block_453167:                                     ; preds = %block_.L_45315c
  %loadMem_453167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 33
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6286 to i64*
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 1
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %6289 to i64*
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 15
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %6292 to i64*
  %6293 = load i64, i64* %RBP.i164
  %6294 = sub i64 %6293, 64
  %6295 = load i64, i64* %PC.i162
  %6296 = add i64 %6295, 4
  store i64 %6296, i64* %PC.i162
  %6297 = inttoptr i64 %6294 to i64*
  %6298 = load i64, i64* %6297
  store i64 %6298, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_453167, %struct.Memory** %MEMORY
  %loadMem_45316b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6301 to i64*
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6303 = getelementptr inbounds %struct.GPR, %struct.GPR* %6302, i32 0, i32 1
  %6304 = getelementptr inbounds %struct.Reg, %struct.Reg* %6303, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %6304 to i64*
  %6305 = load i64, i64* %RAX.i161
  %6306 = load i64, i64* %PC.i160
  %6307 = add i64 %6306, 6
  store i64 %6307, i64* %PC.i160
  %6308 = inttoptr i64 %6305 to i32*
  store i32 0, i32* %6308
  store %struct.Memory* %loadMem_45316b, %struct.Memory** %MEMORY
  br label %block_.L_453171

block_.L_453171:                                  ; preds = %block_453167, %block_.L_45315c
  %loadMem_453171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6310 = getelementptr inbounds %struct.GPR, %struct.GPR* %6309, i32 0, i32 33
  %6311 = getelementptr inbounds %struct.Reg, %struct.Reg* %6310, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6311 to i64*
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6313 = getelementptr inbounds %struct.GPR, %struct.GPR* %6312, i32 0, i32 15
  %6314 = getelementptr inbounds %struct.Reg, %struct.Reg* %6313, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %6314 to i64*
  %6315 = load i64, i64* %RBP.i159
  %6316 = sub i64 %6315, 1576
  %6317 = load i64, i64* %PC.i158
  %6318 = add i64 %6317, 8
  store i64 %6318, i64* %PC.i158
  %6319 = inttoptr i64 %6316 to i64*
  %6320 = load i64, i64* %6319
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6321, align 1
  %6322 = trunc i64 %6320 to i32
  %6323 = and i32 %6322, 255
  %6324 = call i32 @llvm.ctpop.i32(i32 %6323)
  %6325 = trunc i32 %6324 to i8
  %6326 = and i8 %6325, 1
  %6327 = xor i8 %6326, 1
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6327, i8* %6328, align 1
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6329, align 1
  %6330 = icmp eq i64 %6320, 0
  %6331 = zext i1 %6330 to i8
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6331, i8* %6332, align 1
  %6333 = lshr i64 %6320, 63
  %6334 = trunc i64 %6333 to i8
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6334, i8* %6335, align 1
  %6336 = lshr i64 %6320, 63
  %6337 = xor i64 %6333, %6336
  %6338 = add i64 %6337, %6336
  %6339 = icmp eq i64 %6338, 2
  %6340 = zext i1 %6339 to i8
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6340, i8* %6341, align 1
  store %struct.Memory* %loadMem_453171, %struct.Memory** %MEMORY
  %loadMem_453179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6343 = getelementptr inbounds %struct.GPR, %struct.GPR* %6342, i32 0, i32 33
  %6344 = getelementptr inbounds %struct.Reg, %struct.Reg* %6343, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %6344 to i64*
  %6345 = load i64, i64* %PC.i157
  %6346 = add i64 %6345, 44
  %6347 = load i64, i64* %PC.i157
  %6348 = add i64 %6347, 6
  %6349 = load i64, i64* %PC.i157
  %6350 = add i64 %6349, 6
  store i64 %6350, i64* %PC.i157
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6352 = load i8, i8* %6351, align 1
  store i8 %6352, i8* %BRANCH_TAKEN, align 1
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6354 = icmp ne i8 %6352, 0
  %6355 = select i1 %6354, i64 %6346, i64 %6348
  store i64 %6355, i64* %6353, align 8
  store %struct.Memory* %loadMem_453179, %struct.Memory** %MEMORY
  %loadBr_453179 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453179 = icmp eq i8 %loadBr_453179, 1
  br i1 %cmpBr_453179, label %block_.L_4531a5, label %block_45317f

block_45317f:                                     ; preds = %block_.L_453171
  %loadMem_45317f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6357 = getelementptr inbounds %struct.GPR, %struct.GPR* %6356, i32 0, i32 33
  %6358 = getelementptr inbounds %struct.Reg, %struct.Reg* %6357, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6358 to i64*
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 1
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %6361 to i64*
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 15
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %6364 to i64*
  %6365 = load i64, i64* %RBP.i156
  %6366 = sub i64 %6365, 1576
  %6367 = load i64, i64* %PC.i154
  %6368 = add i64 %6367, 7
  store i64 %6368, i64* %PC.i154
  %6369 = inttoptr i64 %6366 to i64*
  %6370 = load i64, i64* %6369
  store i64 %6370, i64* %RAX.i155, align 8
  store %struct.Memory* %loadMem_45317f, %struct.Memory** %MEMORY
  %loadMem_453186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 33
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6373 to i64*
  %6374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6375 = getelementptr inbounds %struct.GPR, %struct.GPR* %6374, i32 0, i32 1
  %6376 = getelementptr inbounds %struct.Reg, %struct.Reg* %6375, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %6376 to i64*
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 5
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %6379 to i64*
  %6380 = load i64, i64* %RAX.i152
  %6381 = add i64 %6380, 4
  %6382 = load i64, i64* %PC.i151
  %6383 = add i64 %6382, 3
  store i64 %6383, i64* %PC.i151
  %6384 = inttoptr i64 %6381 to i32*
  %6385 = load i32, i32* %6384
  %6386 = zext i32 %6385 to i64
  store i64 %6386, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_453186, %struct.Memory** %MEMORY
  %loadMem_453189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 33
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6389 to i64*
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 5
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %6392 to i64*
  %6393 = load i64, i64* %RCX.i150
  %6394 = load i64, i64* %PC.i149
  %6395 = add i64 %6394, 6
  store i64 %6395, i64* %PC.i149
  %6396 = and i64 1023, %6393
  %6397 = trunc i64 %6396 to i32
  store i64 %6396, i64* %RCX.i150, align 8
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6398, align 1
  %6399 = and i32 %6397, 255
  %6400 = call i32 @llvm.ctpop.i32(i32 %6399)
  %6401 = trunc i32 %6400 to i8
  %6402 = and i8 %6401, 1
  %6403 = xor i8 %6402, 1
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6403, i8* %6404, align 1
  %6405 = icmp eq i32 %6397, 0
  %6406 = zext i1 %6405 to i8
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6406, i8* %6407, align 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6408, align 1
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6409, align 1
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6410, align 1
  store %struct.Memory* %loadMem_453189, %struct.Memory** %MEMORY
  %loadMem_45318f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6412 = getelementptr inbounds %struct.GPR, %struct.GPR* %6411, i32 0, i32 33
  %6413 = getelementptr inbounds %struct.Reg, %struct.Reg* %6412, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %6413 to i64*
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6415 = getelementptr inbounds %struct.GPR, %struct.GPR* %6414, i32 0, i32 5
  %6416 = getelementptr inbounds %struct.Reg, %struct.Reg* %6415, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %6416 to i64*
  %6417 = load i64, i64* %RCX.i148
  %6418 = load i64, i64* %PC.i147
  %6419 = add i64 %6418, 6
  store i64 %6419, i64* %PC.i147
  %6420 = or i64 536870912, %6417
  %6421 = trunc i64 %6420 to i32
  %6422 = and i64 %6420, 4294967295
  store i64 %6422, i64* %RCX.i148, align 8
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6423, align 1
  %6424 = and i32 %6421, 255
  %6425 = call i32 @llvm.ctpop.i32(i32 %6424)
  %6426 = trunc i32 %6425 to i8
  %6427 = and i8 %6426, 1
  %6428 = xor i8 %6427, 1
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6428, i8* %6429, align 1
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6430, align 1
  %6431 = lshr i32 %6421, 31
  %6432 = trunc i32 %6431 to i8
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6432, i8* %6433, align 1
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6434, align 1
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6435, align 1
  store %struct.Memory* %loadMem_45318f, %struct.Memory** %MEMORY
  %loadMem_453195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 33
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 5
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %6441 to i64*
  %6442 = load i64, i64* %RCX.i146
  %6443 = load i64, i64* %PC.i145
  %6444 = add i64 %6443, 6
  store i64 %6444, i64* %PC.i145
  %6445 = or i64 83886080, %6442
  %6446 = trunc i64 %6445 to i32
  %6447 = and i64 %6445, 4294967295
  store i64 %6447, i64* %RCX.i146, align 8
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6448, align 1
  %6449 = and i32 %6446, 255
  %6450 = call i32 @llvm.ctpop.i32(i32 %6449)
  %6451 = trunc i32 %6450 to i8
  %6452 = and i8 %6451, 1
  %6453 = xor i8 %6452, 1
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6453, i8* %6454, align 1
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6455, align 1
  %6456 = lshr i32 %6446, 31
  %6457 = trunc i32 %6456 to i8
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6457, i8* %6458, align 1
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6459, align 1
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6460, align 1
  store %struct.Memory* %loadMem_453195, %struct.Memory** %MEMORY
  %loadMem_45319b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6462 = getelementptr inbounds %struct.GPR, %struct.GPR* %6461, i32 0, i32 33
  %6463 = getelementptr inbounds %struct.Reg, %struct.Reg* %6462, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6463 to i64*
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 1
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %6466 to i64*
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 15
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %6469 to i64*
  %6470 = load i64, i64* %RBP.i144
  %6471 = sub i64 %6470, 1576
  %6472 = load i64, i64* %PC.i142
  %6473 = add i64 %6472, 7
  store i64 %6473, i64* %PC.i142
  %6474 = inttoptr i64 %6471 to i64*
  %6475 = load i64, i64* %6474
  store i64 %6475, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_45319b, %struct.Memory** %MEMORY
  %loadMem_4531a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 5
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %ECX.i140 = bitcast %union.anon* %6481 to i32*
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 1
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %6484 to i64*
  %6485 = load i64, i64* %RAX.i141
  %6486 = add i64 %6485, 4
  %6487 = load i32, i32* %ECX.i140
  %6488 = zext i32 %6487 to i64
  %6489 = load i64, i64* %PC.i139
  %6490 = add i64 %6489, 3
  store i64 %6490, i64* %PC.i139
  %6491 = inttoptr i64 %6486 to i32*
  store i32 %6487, i32* %6491
  store %struct.Memory* %loadMem_4531a2, %struct.Memory** %MEMORY
  br label %block_.L_4531a5

block_.L_4531a5:                                  ; preds = %block_45317f, %block_.L_453171
  %loadMem_4531a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6494 to i64*
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 15
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %6497 to i64*
  %6498 = load i64, i64* %RBP.i138
  %6499 = sub i64 %6498, 44
  %6500 = load i64, i64* %PC.i137
  %6501 = add i64 %6500, 7
  store i64 %6501, i64* %PC.i137
  %6502 = inttoptr i64 %6499 to i32*
  store i32 5, i32* %6502
  store %struct.Memory* %loadMem_4531a5, %struct.Memory** %MEMORY
  %loadMem_4531ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6504 = getelementptr inbounds %struct.GPR, %struct.GPR* %6503, i32 0, i32 33
  %6505 = getelementptr inbounds %struct.Reg, %struct.Reg* %6504, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6505 to i64*
  %6506 = load i64, i64* %PC.i136
  %6507 = add i64 %6506, 321
  %6508 = load i64, i64* %PC.i136
  %6509 = add i64 %6508, 5
  store i64 %6509, i64* %PC.i136
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6507, i64* %6510, align 8
  store %struct.Memory* %loadMem_4531ac, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_4531b1:                                  ; preds = %block_45310e, %block_.L_453101
  %loadMem_4531b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6512 = getelementptr inbounds %struct.GPR, %struct.GPR* %6511, i32 0, i32 33
  %6513 = getelementptr inbounds %struct.Reg, %struct.Reg* %6512, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6513 to i64*
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6515 = getelementptr inbounds %struct.GPR, %struct.GPR* %6514, i32 0, i32 15
  %6516 = getelementptr inbounds %struct.Reg, %struct.Reg* %6515, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %6516 to i64*
  %6517 = load i64, i64* %RBP.i135
  %6518 = sub i64 %6517, 1560
  %6519 = load i64, i64* %PC.i134
  %6520 = add i64 %6519, 7
  store i64 %6520, i64* %PC.i134
  %6521 = inttoptr i64 %6518 to i32*
  %6522 = load i32, i32* %6521
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6523, align 1
  %6524 = and i32 %6522, 255
  %6525 = call i32 @llvm.ctpop.i32(i32 %6524)
  %6526 = trunc i32 %6525 to i8
  %6527 = and i8 %6526, 1
  %6528 = xor i8 %6527, 1
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6528, i8* %6529, align 1
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6530, align 1
  %6531 = icmp eq i32 %6522, 0
  %6532 = zext i1 %6531 to i8
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6532, i8* %6533, align 1
  %6534 = lshr i32 %6522, 31
  %6535 = trunc i32 %6534 to i8
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6535, i8* %6536, align 1
  %6537 = lshr i32 %6522, 31
  %6538 = xor i32 %6534, %6537
  %6539 = add i32 %6538, %6537
  %6540 = icmp eq i32 %6539, 2
  %6541 = zext i1 %6540 to i8
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6541, i8* %6542, align 1
  store %struct.Memory* %loadMem_4531b1, %struct.Memory** %MEMORY
  %loadMem_4531b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 33
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6545 to i64*
  %6546 = load i64, i64* %PC.i133
  %6547 = add i64 %6546, 200
  %6548 = load i64, i64* %PC.i133
  %6549 = add i64 %6548, 6
  %6550 = load i64, i64* %PC.i133
  %6551 = add i64 %6550, 6
  store i64 %6551, i64* %PC.i133
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6553 = load i8, i8* %6552, align 1
  store i8 %6553, i8* %BRANCH_TAKEN, align 1
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6555 = icmp ne i8 %6553, 0
  %6556 = select i1 %6555, i64 %6547, i64 %6549
  store i64 %6556, i64* %6554, align 8
  store %struct.Memory* %loadMem_4531b8, %struct.Memory** %MEMORY
  %loadBr_4531b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4531b8 = icmp eq i8 %loadBr_4531b8, 1
  br i1 %cmpBr_4531b8, label %block_.L_453280, label %block_4531be

block_4531be:                                     ; preds = %block_.L_4531b1
  %loadMem_4531be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 33
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6559 to i64*
  %6560 = load i64, i64* %PC.i132
  %6561 = add i64 %6560, 9
  store i64 %6561, i64* %PC.i132
  %6562 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6563, align 1
  %6564 = trunc i64 %6562 to i32
  %6565 = and i32 %6564, 255
  %6566 = call i32 @llvm.ctpop.i32(i32 %6565)
  %6567 = trunc i32 %6566 to i8
  %6568 = and i8 %6567, 1
  %6569 = xor i8 %6568, 1
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6569, i8* %6570, align 1
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6571, align 1
  %6572 = icmp eq i64 %6562, 0
  %6573 = zext i1 %6572 to i8
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6573, i8* %6574, align 1
  %6575 = lshr i64 %6562, 63
  %6576 = trunc i64 %6575 to i8
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6576, i8* %6577, align 1
  %6578 = lshr i64 %6562, 63
  %6579 = xor i64 %6575, %6578
  %6580 = add i64 %6579, %6578
  %6581 = icmp eq i64 %6580, 2
  %6582 = zext i1 %6581 to i8
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6582, i8* %6583, align 1
  store %struct.Memory* %loadMem_4531be, %struct.Memory** %MEMORY
  %loadMem_4531c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 33
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6586 to i64*
  %6587 = load i64, i64* %PC.i131
  %6588 = add i64 %6587, 53
  %6589 = load i64, i64* %PC.i131
  %6590 = add i64 %6589, 6
  %6591 = load i64, i64* %PC.i131
  %6592 = add i64 %6591, 6
  store i64 %6592, i64* %PC.i131
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6594 = load i8, i8* %6593, align 1
  store i8 %6594, i8* %BRANCH_TAKEN, align 1
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6596 = icmp ne i8 %6594, 0
  %6597 = select i1 %6596, i64 %6588, i64 %6590
  store i64 %6597, i64* %6595, align 8
  store %struct.Memory* %loadMem_4531c7, %struct.Memory** %MEMORY
  %loadBr_4531c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4531c7 = icmp eq i8 %loadBr_4531c7, 1
  br i1 %cmpBr_4531c7, label %block_.L_4531fc, label %block_4531cd

block_4531cd:                                     ; preds = %block_4531be
  %loadMem_4531cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 33
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %6600 to i64*
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 19
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %R9.i = bitcast %union.anon* %6603 to i64*
  %6604 = load i64, i64* %PC.i130
  %6605 = add i64 %6604, 10
  store i64 %6605, i64* %PC.i130
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R9.i, align 8
  store %struct.Memory* %loadMem_4531cd, %struct.Memory** %MEMORY
  %loadMem_4531d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 33
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 11
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RDI.i128 = bitcast %union.anon* %6611 to i64*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 15
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %6614 to i64*
  %6615 = load i64, i64* %RBP.i129
  %6616 = sub i64 %6615, 1584
  %6617 = load i64, i64* %PC.i127
  %6618 = add i64 %6617, 7
  store i64 %6618, i64* %PC.i127
  %6619 = inttoptr i64 %6616 to i64*
  %6620 = load i64, i64* %6619
  store i64 %6620, i64* %RDI.i128, align 8
  store %struct.Memory* %loadMem_4531d7, %struct.Memory** %MEMORY
  %loadMem_4531de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 33
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6623 to i64*
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 9
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %RSI.i125 = bitcast %union.anon* %6626 to i64*
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 15
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %6629 to i64*
  %6630 = load i64, i64* %RBP.i126
  %6631 = sub i64 %6630, 1588
  %6632 = load i64, i64* %PC.i124
  %6633 = add i64 %6632, 6
  store i64 %6633, i64* %PC.i124
  %6634 = inttoptr i64 %6631 to i32*
  %6635 = load i32, i32* %6634
  %6636 = zext i32 %6635 to i64
  store i64 %6636, i64* %RSI.i125, align 8
  store %struct.Memory* %loadMem_4531de, %struct.Memory** %MEMORY
  %loadMem_4531e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 33
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6639 to i64*
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6641 = getelementptr inbounds %struct.GPR, %struct.GPR* %6640, i32 0, i32 7
  %6642 = getelementptr inbounds %struct.Reg, %struct.Reg* %6641, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %6642 to i64*
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 15
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %6645 to i64*
  %6646 = load i64, i64* %RBP.i123
  %6647 = sub i64 %6646, 1592
  %6648 = load i64, i64* %PC.i121
  %6649 = add i64 %6648, 6
  store i64 %6649, i64* %PC.i121
  %6650 = inttoptr i64 %6647 to i32*
  %6651 = load i32, i32* %6650
  %6652 = zext i32 %6651 to i64
  store i64 %6652, i64* %RDX.i122, align 8
  store %struct.Memory* %loadMem_4531e4, %struct.Memory** %MEMORY
  %loadMem_4531ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 33
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6655 to i64*
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 5
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %6658 to i64*
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6660 = getelementptr inbounds %struct.GPR, %struct.GPR* %6659, i32 0, i32 15
  %6661 = getelementptr inbounds %struct.Reg, %struct.Reg* %6660, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %6661 to i64*
  %6662 = load i64, i64* %RBP.i120
  %6663 = sub i64 %6662, 1556
  %6664 = load i64, i64* %PC.i118
  %6665 = add i64 %6664, 6
  store i64 %6665, i64* %PC.i118
  %6666 = inttoptr i64 %6663 to i32*
  %6667 = load i32, i32* %6666
  %6668 = zext i32 %6667 to i64
  store i64 %6668, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_4531ea, %struct.Memory** %MEMORY
  %loadMem_4531f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6670 = getelementptr inbounds %struct.GPR, %struct.GPR* %6669, i32 0, i32 33
  %6671 = getelementptr inbounds %struct.Reg, %struct.Reg* %6670, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6671 to i64*
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6673 = getelementptr inbounds %struct.GPR, %struct.GPR* %6672, i32 0, i32 17
  %6674 = getelementptr inbounds %struct.Reg, %struct.Reg* %6673, i32 0, i32 0
  %R8D.i116 = bitcast %union.anon* %6674 to i32*
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 15
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %6677 to i64*
  %6678 = bitcast i32* %R8D.i116 to i64*
  %6679 = load i64, i64* %RBP.i117
  %6680 = sub i64 %6679, 1560
  %6681 = load i64, i64* %PC.i115
  %6682 = add i64 %6681, 7
  store i64 %6682, i64* %PC.i115
  %6683 = inttoptr i64 %6680 to i32*
  %6684 = load i32, i32* %6683
  %6685 = zext i32 %6684 to i64
  store i64 %6685, i64* %6678, align 8
  store %struct.Memory* %loadMem_4531f0, %struct.Memory** %MEMORY
  %loadMem1_4531f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 33
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6688 to i64*
  %6689 = load i64, i64* %PC.i114
  %6690 = add i64 %6689, -241367
  %6691 = load i64, i64* %PC.i114
  %6692 = add i64 %6691, 5
  %6693 = load i64, i64* %PC.i114
  %6694 = add i64 %6693, 5
  store i64 %6694, i64* %PC.i114
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6696 = load i64, i64* %6695, align 8
  %6697 = add i64 %6696, -8
  %6698 = inttoptr i64 %6697 to i64*
  store i64 %6692, i64* %6698
  store i64 %6697, i64* %6695, align 8
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6690, i64* %6699, align 8
  store %struct.Memory* %loadMem1_4531f7, %struct.Memory** %MEMORY
  %loadMem2_4531f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4531f7 = load i64, i64* %3
  %call2_4531f7 = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_4531f7, %struct.Memory* %loadMem2_4531f7)
  store %struct.Memory* %call2_4531f7, %struct.Memory** %MEMORY
  br label %block_.L_4531fc

block_.L_4531fc:                                  ; preds = %block_4531cd, %block_4531be
  %loadMem_4531fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 33
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6702 to i64*
  %6703 = load i64, i64* %PC.i113
  %6704 = add i64 %6703, 5
  %6705 = load i64, i64* %PC.i113
  %6706 = add i64 %6705, 5
  store i64 %6706, i64* %PC.i113
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6704, i64* %6707, align 8
  store %struct.Memory* %loadMem_4531fc, %struct.Memory** %MEMORY
  br label %block_.L_453201

block_.L_453201:                                  ; preds = %block_.L_4531fc
  %loadMem_453201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 15
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %6713 to i64*
  %6714 = load i64, i64* %RBP.i112
  %6715 = sub i64 %6714, 1560
  %6716 = load i64, i64* %PC.i111
  %6717 = add i64 %6716, 7
  store i64 %6717, i64* %PC.i111
  %6718 = inttoptr i64 %6715 to i32*
  %6719 = load i32, i32* %6718
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6720, align 1
  %6721 = and i32 %6719, 255
  %6722 = call i32 @llvm.ctpop.i32(i32 %6721)
  %6723 = trunc i32 %6722 to i8
  %6724 = and i8 %6723, 1
  %6725 = xor i8 %6724, 1
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6725, i8* %6726, align 1
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6727, align 1
  %6728 = icmp eq i32 %6719, 0
  %6729 = zext i1 %6728 to i8
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6729, i8* %6730, align 1
  %6731 = lshr i32 %6719, 31
  %6732 = trunc i32 %6731 to i8
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6732, i8* %6733, align 1
  %6734 = lshr i32 %6719, 31
  %6735 = xor i32 %6731, %6734
  %6736 = add i32 %6735, %6734
  %6737 = icmp eq i32 %6736, 2
  %6738 = zext i1 %6737 to i8
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6738, i8* %6739, align 1
  store %struct.Memory* %loadMem_453201, %struct.Memory** %MEMORY
  %loadMem_453208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 33
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6742 to i64*
  %6743 = load i64, i64* %PC.i110
  %6744 = add i64 %6743, 29
  %6745 = load i64, i64* %PC.i110
  %6746 = add i64 %6745, 6
  %6747 = load i64, i64* %PC.i110
  %6748 = add i64 %6747, 6
  store i64 %6748, i64* %PC.i110
  %6749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6750 = load i8, i8* %6749, align 1
  store i8 %6750, i8* %BRANCH_TAKEN, align 1
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6752 = icmp ne i8 %6750, 0
  %6753 = select i1 %6752, i64 %6744, i64 %6746
  store i64 %6753, i64* %6751, align 8
  store %struct.Memory* %loadMem_453208, %struct.Memory** %MEMORY
  %loadBr_453208 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453208 = icmp eq i8 %loadBr_453208, 1
  br i1 %cmpBr_453208, label %block_.L_453225, label %block_45320e

block_45320e:                                     ; preds = %block_.L_453201
  %loadMem_45320e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 33
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6756 to i64*
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6758 = getelementptr inbounds %struct.GPR, %struct.GPR* %6757, i32 0, i32 15
  %6759 = getelementptr inbounds %struct.Reg, %struct.Reg* %6758, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %6759 to i64*
  %6760 = load i64, i64* %RBP.i109
  %6761 = sub i64 %6760, 64
  %6762 = load i64, i64* %PC.i108
  %6763 = add i64 %6762, 5
  store i64 %6763, i64* %PC.i108
  %6764 = inttoptr i64 %6761 to i64*
  %6765 = load i64, i64* %6764
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6766, align 1
  %6767 = trunc i64 %6765 to i32
  %6768 = and i32 %6767, 255
  %6769 = call i32 @llvm.ctpop.i32(i32 %6768)
  %6770 = trunc i32 %6769 to i8
  %6771 = and i8 %6770, 1
  %6772 = xor i8 %6771, 1
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6772, i8* %6773, align 1
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6774, align 1
  %6775 = icmp eq i64 %6765, 0
  %6776 = zext i1 %6775 to i8
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6776, i8* %6777, align 1
  %6778 = lshr i64 %6765, 63
  %6779 = trunc i64 %6778 to i8
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6779, i8* %6780, align 1
  %6781 = lshr i64 %6765, 63
  %6782 = xor i64 %6778, %6781
  %6783 = add i64 %6782, %6781
  %6784 = icmp eq i64 %6783, 2
  %6785 = zext i1 %6784 to i8
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6785, i8* %6786, align 1
  store %struct.Memory* %loadMem_45320e, %struct.Memory** %MEMORY
  %loadMem_453213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 33
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6789 to i64*
  %6790 = load i64, i64* %PC.i107
  %6791 = add i64 %6790, 18
  %6792 = load i64, i64* %PC.i107
  %6793 = add i64 %6792, 6
  %6794 = load i64, i64* %PC.i107
  %6795 = add i64 %6794, 6
  store i64 %6795, i64* %PC.i107
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6797 = load i8, i8* %6796, align 1
  store i8 %6797, i8* %BRANCH_TAKEN, align 1
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6799 = icmp ne i8 %6797, 0
  %6800 = select i1 %6799, i64 %6791, i64 %6793
  store i64 %6800, i64* %6798, align 8
  store %struct.Memory* %loadMem_453213, %struct.Memory** %MEMORY
  %loadBr_453213 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453213 = icmp eq i8 %loadBr_453213, 1
  br i1 %cmpBr_453213, label %block_.L_453225, label %block_453219

block_453219:                                     ; preds = %block_45320e
  %loadMem_453219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6802 = getelementptr inbounds %struct.GPR, %struct.GPR* %6801, i32 0, i32 33
  %6803 = getelementptr inbounds %struct.Reg, %struct.Reg* %6802, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %6803 to i64*
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6805 = getelementptr inbounds %struct.GPR, %struct.GPR* %6804, i32 0, i32 1
  %6806 = getelementptr inbounds %struct.Reg, %struct.Reg* %6805, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %6806 to i64*
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6808 = getelementptr inbounds %struct.GPR, %struct.GPR* %6807, i32 0, i32 15
  %6809 = getelementptr inbounds %struct.Reg, %struct.Reg* %6808, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %6809 to i64*
  %6810 = load i64, i64* %RBP.i106
  %6811 = sub i64 %6810, 1556
  %6812 = load i64, i64* %PC.i104
  %6813 = add i64 %6812, 6
  store i64 %6813, i64* %PC.i104
  %6814 = inttoptr i64 %6811 to i32*
  %6815 = load i32, i32* %6814
  %6816 = zext i32 %6815 to i64
  store i64 %6816, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_453219, %struct.Memory** %MEMORY
  %loadMem_45321f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 33
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %6819 to i64*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 5
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %6822 to i64*
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6824 = getelementptr inbounds %struct.GPR, %struct.GPR* %6823, i32 0, i32 15
  %6825 = getelementptr inbounds %struct.Reg, %struct.Reg* %6824, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %6825 to i64*
  %6826 = load i64, i64* %RBP.i103
  %6827 = sub i64 %6826, 64
  %6828 = load i64, i64* %PC.i101
  %6829 = add i64 %6828, 4
  store i64 %6829, i64* %PC.i101
  %6830 = inttoptr i64 %6827 to i64*
  %6831 = load i64, i64* %6830
  store i64 %6831, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_45321f, %struct.Memory** %MEMORY
  %loadMem_453223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 33
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %6834 to i64*
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6836 = getelementptr inbounds %struct.GPR, %struct.GPR* %6835, i32 0, i32 1
  %6837 = getelementptr inbounds %struct.Reg, %struct.Reg* %6836, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %6837 to i32*
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6839 = getelementptr inbounds %struct.GPR, %struct.GPR* %6838, i32 0, i32 5
  %6840 = getelementptr inbounds %struct.Reg, %struct.Reg* %6839, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %6840 to i64*
  %6841 = load i64, i64* %RCX.i100
  %6842 = load i32, i32* %EAX.i99
  %6843 = zext i32 %6842 to i64
  %6844 = load i64, i64* %PC.i98
  %6845 = add i64 %6844, 2
  store i64 %6845, i64* %PC.i98
  %6846 = inttoptr i64 %6841 to i32*
  store i32 %6842, i32* %6846
  store %struct.Memory* %loadMem_453223, %struct.Memory** %MEMORY
  br label %block_.L_453225

block_.L_453225:                                  ; preds = %block_453219, %block_45320e, %block_.L_453201
  %loadMem_453225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 33
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6849 to i64*
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 15
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %6852 to i64*
  %6853 = load i64, i64* %RBP.i97
  %6854 = sub i64 %6853, 1576
  %6855 = load i64, i64* %PC.i96
  %6856 = add i64 %6855, 8
  store i64 %6856, i64* %PC.i96
  %6857 = inttoptr i64 %6854 to i64*
  %6858 = load i64, i64* %6857
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6859, align 1
  %6860 = trunc i64 %6858 to i32
  %6861 = and i32 %6860, 255
  %6862 = call i32 @llvm.ctpop.i32(i32 %6861)
  %6863 = trunc i32 %6862 to i8
  %6864 = and i8 %6863, 1
  %6865 = xor i8 %6864, 1
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6865, i8* %6866, align 1
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6867, align 1
  %6868 = icmp eq i64 %6858, 0
  %6869 = zext i1 %6868 to i8
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6869, i8* %6870, align 1
  %6871 = lshr i64 %6858, 63
  %6872 = trunc i64 %6871 to i8
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6872, i8* %6873, align 1
  %6874 = lshr i64 %6858, 63
  %6875 = xor i64 %6871, %6874
  %6876 = add i64 %6875, %6874
  %6877 = icmp eq i64 %6876, 2
  %6878 = zext i1 %6877 to i8
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6878, i8* %6879, align 1
  store %struct.Memory* %loadMem_453225, %struct.Memory** %MEMORY
  %loadMem_45322d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6881 = getelementptr inbounds %struct.GPR, %struct.GPR* %6880, i32 0, i32 33
  %6882 = getelementptr inbounds %struct.Reg, %struct.Reg* %6881, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6882 to i64*
  %6883 = load i64, i64* %PC.i95
  %6884 = add i64 %6883, 69
  %6885 = load i64, i64* %PC.i95
  %6886 = add i64 %6885, 6
  %6887 = load i64, i64* %PC.i95
  %6888 = add i64 %6887, 6
  store i64 %6888, i64* %PC.i95
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6890 = load i8, i8* %6889, align 1
  store i8 %6890, i8* %BRANCH_TAKEN, align 1
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6892 = icmp ne i8 %6890, 0
  %6893 = select i1 %6892, i64 %6884, i64 %6886
  store i64 %6893, i64* %6891, align 8
  store %struct.Memory* %loadMem_45322d, %struct.Memory** %MEMORY
  %loadBr_45322d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45322d = icmp eq i8 %loadBr_45322d, 1
  br i1 %cmpBr_45322d, label %block_.L_453272, label %block_453233

block_453233:                                     ; preds = %block_.L_453225
  %loadMem_453233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6895 = getelementptr inbounds %struct.GPR, %struct.GPR* %6894, i32 0, i32 33
  %6896 = getelementptr inbounds %struct.Reg, %struct.Reg* %6895, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6896 to i64*
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6898 = getelementptr inbounds %struct.GPR, %struct.GPR* %6897, i32 0, i32 1
  %6899 = getelementptr inbounds %struct.Reg, %struct.Reg* %6898, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %6899 to i64*
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 15
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %6902 to i64*
  %6903 = load i64, i64* %RBP.i94
  %6904 = sub i64 %6903, 1576
  %6905 = load i64, i64* %PC.i92
  %6906 = add i64 %6905, 7
  store i64 %6906, i64* %PC.i92
  %6907 = inttoptr i64 %6904 to i64*
  %6908 = load i64, i64* %6907
  store i64 %6908, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_453233, %struct.Memory** %MEMORY
  %loadMem_45323a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6910 = getelementptr inbounds %struct.GPR, %struct.GPR* %6909, i32 0, i32 33
  %6911 = getelementptr inbounds %struct.Reg, %struct.Reg* %6910, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6911 to i64*
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 1
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %6914 to i64*
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 5
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %6917 to i64*
  %6918 = load i64, i64* %RAX.i90
  %6919 = add i64 %6918, 4
  %6920 = load i64, i64* %PC.i89
  %6921 = add i64 %6920, 3
  store i64 %6921, i64* %PC.i89
  %6922 = inttoptr i64 %6919 to i32*
  %6923 = load i32, i32* %6922
  %6924 = zext i32 %6923 to i64
  store i64 %6924, i64* %RCX.i91, align 8
  store %struct.Memory* %loadMem_45323a, %struct.Memory** %MEMORY
  %loadMem_45323d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6926 = getelementptr inbounds %struct.GPR, %struct.GPR* %6925, i32 0, i32 33
  %6927 = getelementptr inbounds %struct.Reg, %struct.Reg* %6926, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6927 to i64*
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6929 = getelementptr inbounds %struct.GPR, %struct.GPR* %6928, i32 0, i32 5
  %6930 = getelementptr inbounds %struct.Reg, %struct.Reg* %6929, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %6930 to i64*
  %6931 = load i64, i64* %RCX.i88
  %6932 = load i64, i64* %PC.i87
  %6933 = add i64 %6932, 6
  store i64 %6933, i64* %PC.i87
  %6934 = and i64 1023, %6931
  %6935 = trunc i64 %6934 to i32
  store i64 %6934, i64* %RCX.i88, align 8
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6936, align 1
  %6937 = and i32 %6935, 255
  %6938 = call i32 @llvm.ctpop.i32(i32 %6937)
  %6939 = trunc i32 %6938 to i8
  %6940 = and i8 %6939, 1
  %6941 = xor i8 %6940, 1
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6941, i8* %6942, align 1
  %6943 = icmp eq i32 %6935, 0
  %6944 = zext i1 %6943 to i8
  %6945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6944, i8* %6945, align 1
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6946, align 1
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6947, align 1
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6948, align 1
  store %struct.Memory* %loadMem_45323d, %struct.Memory** %MEMORY
  %loadMem_453243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 33
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %6951 to i64*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 5
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %RCX.i86 = bitcast %union.anon* %6954 to i64*
  %6955 = load i64, i64* %RCX.i86
  %6956 = load i64, i64* %PC.i85
  %6957 = add i64 %6956, 6
  store i64 %6957, i64* %PC.i85
  %6958 = or i64 536870912, %6955
  %6959 = trunc i64 %6958 to i32
  %6960 = and i64 %6958, 4294967295
  store i64 %6960, i64* %RCX.i86, align 8
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6961, align 1
  %6962 = and i32 %6959, 255
  %6963 = call i32 @llvm.ctpop.i32(i32 %6962)
  %6964 = trunc i32 %6963 to i8
  %6965 = and i8 %6964, 1
  %6966 = xor i8 %6965, 1
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6966, i8* %6967, align 1
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6968, align 1
  %6969 = lshr i32 %6959, 31
  %6970 = trunc i32 %6969 to i8
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6970, i8* %6971, align 1
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6972, align 1
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6973, align 1
  store %struct.Memory* %loadMem_453243, %struct.Memory** %MEMORY
  %loadMem_453249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 33
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6976 to i64*
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 7
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 15
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %6982 to i64*
  %6983 = load i64, i64* %RBP.i84
  %6984 = sub i64 %6983, 1560
  %6985 = load i64, i64* %PC.i82
  %6986 = add i64 %6985, 6
  store i64 %6986, i64* %PC.i82
  %6987 = inttoptr i64 %6984 to i32*
  %6988 = load i32, i32* %6987
  %6989 = zext i32 %6988 to i64
  store i64 %6989, i64* %RDX.i83, align 8
  store %struct.Memory* %loadMem_453249, %struct.Memory** %MEMORY
  %loadMem_45324f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6991 = getelementptr inbounds %struct.GPR, %struct.GPR* %6990, i32 0, i32 33
  %6992 = getelementptr inbounds %struct.Reg, %struct.Reg* %6991, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6992 to i64*
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6994 = getelementptr inbounds %struct.GPR, %struct.GPR* %6993, i32 0, i32 7
  %6995 = getelementptr inbounds %struct.Reg, %struct.Reg* %6994, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %6995 to i64*
  %6996 = load i64, i64* %RDX.i81
  %6997 = load i64, i64* %PC.i80
  %6998 = add i64 %6997, 3
  store i64 %6998, i64* %PC.i80
  %6999 = and i64 15, %6996
  %7000 = trunc i64 %6999 to i32
  store i64 %6999, i64* %RDX.i81, align 8
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7001, align 1
  %7002 = and i32 %7000, 255
  %7003 = call i32 @llvm.ctpop.i32(i32 %7002)
  %7004 = trunc i32 %7003 to i8
  %7005 = and i8 %7004, 1
  %7006 = xor i8 %7005, 1
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7006, i8* %7007, align 1
  %7008 = icmp eq i32 %7000, 0
  %7009 = zext i1 %7008 to i8
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7009, i8* %7010, align 1
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7011, align 1
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7012, align 1
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7013, align 1
  store %struct.Memory* %loadMem_45324f, %struct.Memory** %MEMORY
  %loadMem_453252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 33
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7016 to i64*
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7018 = getelementptr inbounds %struct.GPR, %struct.GPR* %7017, i32 0, i32 7
  %7019 = getelementptr inbounds %struct.Reg, %struct.Reg* %7018, i32 0, i32 0
  %RDX.i79 = bitcast %union.anon* %7019 to i64*
  %7020 = load i64, i64* %RDX.i79
  %7021 = load i64, i64* %PC.i78
  %7022 = add i64 %7021, 3
  store i64 %7022, i64* %PC.i78
  %7023 = and i64 %7020, 4294967295
  %7024 = shl i64 %7023, 23
  %7025 = trunc i64 %7024 to i32
  %7026 = icmp slt i32 %7025, 0
  %7027 = shl i32 %7025, 1
  %7028 = zext i32 %7027 to i64
  store i64 %7028, i64* %RDX.i79, align 8
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7030 = zext i1 %7026 to i8
  store i8 %7030, i8* %7029, align 1
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7031, align 1
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7032, align 1
  %7033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7034 = icmp eq i32 %7027, 0
  %7035 = zext i1 %7034 to i8
  store i8 %7035, i8* %7033, align 1
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7037 = lshr i32 %7027, 31
  %7038 = trunc i32 %7037 to i8
  store i8 %7038, i8* %7036, align 1
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7039, align 1
  store %struct.Memory* %loadMem_453252, %struct.Memory** %MEMORY
  %loadMem_453255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7041 = getelementptr inbounds %struct.GPR, %struct.GPR* %7040, i32 0, i32 33
  %7042 = getelementptr inbounds %struct.Reg, %struct.Reg* %7041, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7042 to i64*
  %7043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7044 = getelementptr inbounds %struct.GPR, %struct.GPR* %7043, i32 0, i32 7
  %7045 = getelementptr inbounds %struct.Reg, %struct.Reg* %7044, i32 0, i32 0
  %EDX.i76 = bitcast %union.anon* %7045 to i32*
  %7046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7047 = getelementptr inbounds %struct.GPR, %struct.GPR* %7046, i32 0, i32 5
  %7048 = getelementptr inbounds %struct.Reg, %struct.Reg* %7047, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %7048 to i64*
  %7049 = load i64, i64* %RCX.i77
  %7050 = load i32, i32* %EDX.i76
  %7051 = zext i32 %7050 to i64
  %7052 = load i64, i64* %PC.i75
  %7053 = add i64 %7052, 2
  store i64 %7053, i64* %PC.i75
  %7054 = or i64 %7051, %7049
  %7055 = trunc i64 %7054 to i32
  %7056 = and i64 %7054, 4294967295
  store i64 %7056, i64* %RCX.i77, align 8
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7057, align 1
  %7058 = and i32 %7055, 255
  %7059 = call i32 @llvm.ctpop.i32(i32 %7058)
  %7060 = trunc i32 %7059 to i8
  %7061 = and i8 %7060, 1
  %7062 = xor i8 %7061, 1
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7062, i8* %7063, align 1
  %7064 = icmp eq i32 %7055, 0
  %7065 = zext i1 %7064 to i8
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7065, i8* %7066, align 1
  %7067 = lshr i32 %7055, 31
  %7068 = trunc i32 %7067 to i8
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7068, i8* %7069, align 1
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7070, align 1
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7071, align 1
  store %struct.Memory* %loadMem_453255, %struct.Memory** %MEMORY
  %loadMem_453257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7073 = getelementptr inbounds %struct.GPR, %struct.GPR* %7072, i32 0, i32 33
  %7074 = getelementptr inbounds %struct.Reg, %struct.Reg* %7073, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7074 to i64*
  %7075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7076 = getelementptr inbounds %struct.GPR, %struct.GPR* %7075, i32 0, i32 7
  %7077 = getelementptr inbounds %struct.Reg, %struct.Reg* %7076, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %7077 to i64*
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7079 = getelementptr inbounds %struct.GPR, %struct.GPR* %7078, i32 0, i32 15
  %7080 = getelementptr inbounds %struct.Reg, %struct.Reg* %7079, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %7080 to i64*
  %7081 = load i64, i64* %RBP.i74
  %7082 = sub i64 %7081, 1556
  %7083 = load i64, i64* %PC.i72
  %7084 = add i64 %7083, 6
  store i64 %7084, i64* %PC.i72
  %7085 = inttoptr i64 %7082 to i32*
  %7086 = load i32, i32* %7085
  %7087 = zext i32 %7086 to i64
  store i64 %7087, i64* %RDX.i73, align 8
  store %struct.Memory* %loadMem_453257, %struct.Memory** %MEMORY
  %loadMem_45325d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7089 = getelementptr inbounds %struct.GPR, %struct.GPR* %7088, i32 0, i32 33
  %7090 = getelementptr inbounds %struct.Reg, %struct.Reg* %7089, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7090 to i64*
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7092 = getelementptr inbounds %struct.GPR, %struct.GPR* %7091, i32 0, i32 7
  %7093 = getelementptr inbounds %struct.Reg, %struct.Reg* %7092, i32 0, i32 0
  %RDX.i71 = bitcast %union.anon* %7093 to i64*
  %7094 = load i64, i64* %RDX.i71
  %7095 = load i64, i64* %PC.i70
  %7096 = add i64 %7095, 6
  store i64 %7096, i64* %PC.i70
  %7097 = and i64 1023, %7094
  %7098 = trunc i64 %7097 to i32
  store i64 %7097, i64* %RDX.i71, align 8
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7099, align 1
  %7100 = and i32 %7098, 255
  %7101 = call i32 @llvm.ctpop.i32(i32 %7100)
  %7102 = trunc i32 %7101 to i8
  %7103 = and i8 %7102, 1
  %7104 = xor i8 %7103, 1
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7104, i8* %7105, align 1
  %7106 = icmp eq i32 %7098, 0
  %7107 = zext i1 %7106 to i8
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7107, i8* %7108, align 1
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7109, align 1
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7110, align 1
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7111, align 1
  store %struct.Memory* %loadMem_45325d, %struct.Memory** %MEMORY
  %loadMem_453263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 33
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7114 to i64*
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 7
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %RDX.i69 = bitcast %union.anon* %7117 to i64*
  %7118 = load i64, i64* %RDX.i69
  %7119 = load i64, i64* %PC.i68
  %7120 = add i64 %7119, 3
  store i64 %7120, i64* %PC.i68
  %7121 = and i64 %7118, 4294967295
  %7122 = shl i64 %7121, 9
  %7123 = trunc i64 %7122 to i32
  %7124 = icmp slt i32 %7123, 0
  %7125 = shl i32 %7123, 1
  %7126 = zext i32 %7125 to i64
  store i64 %7126, i64* %RDX.i69, align 8
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7128 = zext i1 %7124 to i8
  store i8 %7128, i8* %7127, align 1
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7129, align 1
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7130, align 1
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7132 = icmp eq i32 %7125, 0
  %7133 = zext i1 %7132 to i8
  store i8 %7133, i8* %7131, align 1
  %7134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7135 = lshr i32 %7125, 31
  %7136 = trunc i32 %7135 to i8
  store i8 %7136, i8* %7134, align 1
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7137, align 1
  store %struct.Memory* %loadMem_453263, %struct.Memory** %MEMORY
  %loadMem_453266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 33
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7140 to i64*
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 7
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7143 to i32*
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 5
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %7146 to i64*
  %7147 = load i64, i64* %RCX.i67
  %7148 = load i32, i32* %EDX.i
  %7149 = zext i32 %7148 to i64
  %7150 = load i64, i64* %PC.i66
  %7151 = add i64 %7150, 2
  store i64 %7151, i64* %PC.i66
  %7152 = or i64 %7149, %7147
  %7153 = trunc i64 %7152 to i32
  %7154 = and i64 %7152, 4294967295
  store i64 %7154, i64* %RCX.i67, align 8
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7155, align 1
  %7156 = and i32 %7153, 255
  %7157 = call i32 @llvm.ctpop.i32(i32 %7156)
  %7158 = trunc i32 %7157 to i8
  %7159 = and i8 %7158, 1
  %7160 = xor i8 %7159, 1
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7160, i8* %7161, align 1
  %7162 = icmp eq i32 %7153, 0
  %7163 = zext i1 %7162 to i8
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7163, i8* %7164, align 1
  %7165 = lshr i32 %7153, 31
  %7166 = trunc i32 %7165 to i8
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7166, i8* %7167, align 1
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7168, align 1
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7169, align 1
  store %struct.Memory* %loadMem_453266, %struct.Memory** %MEMORY
  %loadMem_453268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 33
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7172 to i64*
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7174 = getelementptr inbounds %struct.GPR, %struct.GPR* %7173, i32 0, i32 1
  %7175 = getelementptr inbounds %struct.Reg, %struct.Reg* %7174, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %7175 to i64*
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7177 = getelementptr inbounds %struct.GPR, %struct.GPR* %7176, i32 0, i32 15
  %7178 = getelementptr inbounds %struct.Reg, %struct.Reg* %7177, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7178 to i64*
  %7179 = load i64, i64* %RBP.i65
  %7180 = sub i64 %7179, 1576
  %7181 = load i64, i64* %PC.i63
  %7182 = add i64 %7181, 7
  store i64 %7182, i64* %PC.i63
  %7183 = inttoptr i64 %7180 to i64*
  %7184 = load i64, i64* %7183
  store i64 %7184, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_453268, %struct.Memory** %MEMORY
  %loadMem_45326f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7186 = getelementptr inbounds %struct.GPR, %struct.GPR* %7185, i32 0, i32 33
  %7187 = getelementptr inbounds %struct.Reg, %struct.Reg* %7186, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7187 to i64*
  %7188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7189 = getelementptr inbounds %struct.GPR, %struct.GPR* %7188, i32 0, i32 5
  %7190 = getelementptr inbounds %struct.Reg, %struct.Reg* %7189, i32 0, i32 0
  %ECX.i61 = bitcast %union.anon* %7190 to i32*
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 1
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %7193 to i64*
  %7194 = load i64, i64* %RAX.i62
  %7195 = add i64 %7194, 4
  %7196 = load i32, i32* %ECX.i61
  %7197 = zext i32 %7196 to i64
  %7198 = load i64, i64* %PC.i60
  %7199 = add i64 %7198, 3
  store i64 %7199, i64* %PC.i60
  %7200 = inttoptr i64 %7195 to i32*
  store i32 %7196, i32* %7200
  store %struct.Memory* %loadMem_45326f, %struct.Memory** %MEMORY
  br label %block_.L_453272

block_.L_453272:                                  ; preds = %block_453233, %block_.L_453225
  %loadMem_453272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 33
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7203 to i64*
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7205 = getelementptr inbounds %struct.GPR, %struct.GPR* %7204, i32 0, i32 1
  %7206 = getelementptr inbounds %struct.Reg, %struct.Reg* %7205, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %7206 to i64*
  %7207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7208 = getelementptr inbounds %struct.GPR, %struct.GPR* %7207, i32 0, i32 15
  %7209 = getelementptr inbounds %struct.Reg, %struct.Reg* %7208, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %7209 to i64*
  %7210 = load i64, i64* %RBP.i59
  %7211 = sub i64 %7210, 1560
  %7212 = load i64, i64* %PC.i57
  %7213 = add i64 %7212, 6
  store i64 %7213, i64* %PC.i57
  %7214 = inttoptr i64 %7211 to i32*
  %7215 = load i32, i32* %7214
  %7216 = zext i32 %7215 to i64
  store i64 %7216, i64* %RAX.i58, align 8
  store %struct.Memory* %loadMem_453272, %struct.Memory** %MEMORY
  %loadMem_453278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7218 = getelementptr inbounds %struct.GPR, %struct.GPR* %7217, i32 0, i32 33
  %7219 = getelementptr inbounds %struct.Reg, %struct.Reg* %7218, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7219 to i64*
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7221 = getelementptr inbounds %struct.GPR, %struct.GPR* %7220, i32 0, i32 1
  %7222 = getelementptr inbounds %struct.Reg, %struct.Reg* %7221, i32 0, i32 0
  %EAX.i55 = bitcast %union.anon* %7222 to i32*
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7224 = getelementptr inbounds %struct.GPR, %struct.GPR* %7223, i32 0, i32 15
  %7225 = getelementptr inbounds %struct.Reg, %struct.Reg* %7224, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %7225 to i64*
  %7226 = load i64, i64* %RBP.i56
  %7227 = sub i64 %7226, 44
  %7228 = load i32, i32* %EAX.i55
  %7229 = zext i32 %7228 to i64
  %7230 = load i64, i64* %PC.i54
  %7231 = add i64 %7230, 3
  store i64 %7231, i64* %PC.i54
  %7232 = inttoptr i64 %7227 to i32*
  store i32 %7228, i32* %7232
  store %struct.Memory* %loadMem_453278, %struct.Memory** %MEMORY
  %loadMem_45327b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7234 = getelementptr inbounds %struct.GPR, %struct.GPR* %7233, i32 0, i32 33
  %7235 = getelementptr inbounds %struct.Reg, %struct.Reg* %7234, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7235 to i64*
  %7236 = load i64, i64* %PC.i53
  %7237 = add i64 %7236, 114
  %7238 = load i64, i64* %PC.i53
  %7239 = add i64 %7238, 5
  store i64 %7239, i64* %PC.i53
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7237, i64* %7240, align 8
  store %struct.Memory* %loadMem_45327b, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_453280:                                  ; preds = %block_.L_4531b1
  %loadMem_453280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7242 = getelementptr inbounds %struct.GPR, %struct.GPR* %7241, i32 0, i32 33
  %7243 = getelementptr inbounds %struct.Reg, %struct.Reg* %7242, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7243 to i64*
  %7244 = load i64, i64* %PC.i52
  %7245 = add i64 %7244, 9
  store i64 %7245, i64* %PC.i52
  %7246 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7247, align 1
  %7248 = trunc i64 %7246 to i32
  %7249 = and i32 %7248, 255
  %7250 = call i32 @llvm.ctpop.i32(i32 %7249)
  %7251 = trunc i32 %7250 to i8
  %7252 = and i8 %7251, 1
  %7253 = xor i8 %7252, 1
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7253, i8* %7254, align 1
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7255, align 1
  %7256 = icmp eq i64 %7246, 0
  %7257 = zext i1 %7256 to i8
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7257, i8* %7258, align 1
  %7259 = lshr i64 %7246, 63
  %7260 = trunc i64 %7259 to i8
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7260, i8* %7261, align 1
  %7262 = lshr i64 %7246, 63
  %7263 = xor i64 %7259, %7262
  %7264 = add i64 %7263, %7262
  %7265 = icmp eq i64 %7264, 2
  %7266 = zext i1 %7265 to i8
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7266, i8* %7267, align 1
  store %struct.Memory* %loadMem_453280, %struct.Memory** %MEMORY
  %loadMem_453289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7269 = getelementptr inbounds %struct.GPR, %struct.GPR* %7268, i32 0, i32 33
  %7270 = getelementptr inbounds %struct.Reg, %struct.Reg* %7269, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7270 to i64*
  %7271 = load i64, i64* %PC.i51
  %7272 = add i64 %7271, 42
  %7273 = load i64, i64* %PC.i51
  %7274 = add i64 %7273, 6
  %7275 = load i64, i64* %PC.i51
  %7276 = add i64 %7275, 6
  store i64 %7276, i64* %PC.i51
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7278 = load i8, i8* %7277, align 1
  store i8 %7278, i8* %BRANCH_TAKEN, align 1
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7280 = icmp ne i8 %7278, 0
  %7281 = select i1 %7280, i64 %7272, i64 %7274
  store i64 %7281, i64* %7279, align 8
  store %struct.Memory* %loadMem_453289, %struct.Memory** %MEMORY
  %loadBr_453289 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453289 = icmp eq i8 %loadBr_453289, 1
  br i1 %cmpBr_453289, label %block_.L_4532b3, label %block_45328f

block_45328f:                                     ; preds = %block_.L_453280
  %loadMem_45328f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7283 = getelementptr inbounds %struct.GPR, %struct.GPR* %7282, i32 0, i32 33
  %7284 = getelementptr inbounds %struct.Reg, %struct.Reg* %7283, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7284 to i64*
  %7285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7286 = getelementptr inbounds %struct.GPR, %struct.GPR* %7285, i32 0, i32 1
  %7287 = getelementptr inbounds %struct.Reg, %struct.Reg* %7286, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %7287 to i32*
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7289 = getelementptr inbounds %struct.GPR, %struct.GPR* %7288, i32 0, i32 1
  %7290 = getelementptr inbounds %struct.Reg, %struct.Reg* %7289, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %7290 to i64*
  %7291 = load i64, i64* %RAX.i50
  %7292 = load i32, i32* %EAX.i49
  %7293 = zext i32 %7292 to i64
  %7294 = load i64, i64* %PC.i48
  %7295 = add i64 %7294, 2
  store i64 %7295, i64* %PC.i48
  %7296 = xor i64 %7293, %7291
  %7297 = trunc i64 %7296 to i32
  %7298 = and i64 %7296, 4294967295
  store i64 %7298, i64* %RAX.i50, align 8
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7299, align 1
  %7300 = and i32 %7297, 255
  %7301 = call i32 @llvm.ctpop.i32(i32 %7300)
  %7302 = trunc i32 %7301 to i8
  %7303 = and i8 %7302, 1
  %7304 = xor i8 %7303, 1
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7304, i8* %7305, align 1
  %7306 = icmp eq i32 %7297, 0
  %7307 = zext i1 %7306 to i8
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7307, i8* %7308, align 1
  %7309 = lshr i32 %7297, 31
  %7310 = trunc i32 %7309 to i8
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7310, i8* %7311, align 1
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7312, align 1
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7313, align 1
  store %struct.Memory* %loadMem_45328f, %struct.Memory** %MEMORY
  %loadMem_453291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 33
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7316 to i64*
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 5
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %ECX.i46 = bitcast %union.anon* %7319 to i32*
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 5
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %7322 to i64*
  %7323 = load i64, i64* %RCX.i47
  %7324 = load i32, i32* %ECX.i46
  %7325 = zext i32 %7324 to i64
  %7326 = load i64, i64* %PC.i45
  %7327 = add i64 %7326, 2
  store i64 %7327, i64* %PC.i45
  %7328 = xor i64 %7325, %7323
  %7329 = trunc i64 %7328 to i32
  %7330 = and i64 %7328, 4294967295
  store i64 %7330, i64* %RCX.i47, align 8
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7331, align 1
  %7332 = and i32 %7329, 255
  %7333 = call i32 @llvm.ctpop.i32(i32 %7332)
  %7334 = trunc i32 %7333 to i8
  %7335 = and i8 %7334, 1
  %7336 = xor i8 %7335, 1
  %7337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7336, i8* %7337, align 1
  %7338 = icmp eq i32 %7329, 0
  %7339 = zext i1 %7338 to i8
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7339, i8* %7340, align 1
  %7341 = lshr i32 %7329, 31
  %7342 = trunc i32 %7341 to i8
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7342, i8* %7343, align 1
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7344, align 1
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7345, align 1
  store %struct.Memory* %loadMem_453291, %struct.Memory** %MEMORY
  %loadMem_453293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7347 = getelementptr inbounds %struct.GPR, %struct.GPR* %7346, i32 0, i32 33
  %7348 = getelementptr inbounds %struct.Reg, %struct.Reg* %7347, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7348 to i64*
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 5
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %ECX.i44 = bitcast %union.anon* %7351 to i32*
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7353 = getelementptr inbounds %struct.GPR, %struct.GPR* %7352, i32 0, i32 19
  %7354 = getelementptr inbounds %struct.Reg, %struct.Reg* %7353, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %7354 to i32*
  %7355 = bitcast i32* %R9D.i to i64*
  %7356 = load i32, i32* %ECX.i44
  %7357 = zext i32 %7356 to i64
  %7358 = load i64, i64* %PC.i43
  %7359 = add i64 %7358, 3
  store i64 %7359, i64* %PC.i43
  %7360 = and i64 %7357, 4294967295
  store i64 %7360, i64* %7355, align 8
  store %struct.Memory* %loadMem_453293, %struct.Memory** %MEMORY
  %loadMem_453296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 33
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7363 to i64*
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 11
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7366 to i64*
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 15
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %7369 to i64*
  %7370 = load i64, i64* %RBP.i42
  %7371 = sub i64 %7370, 1584
  %7372 = load i64, i64* %PC.i41
  %7373 = add i64 %7372, 7
  store i64 %7373, i64* %PC.i41
  %7374 = inttoptr i64 %7371 to i64*
  %7375 = load i64, i64* %7374
  store i64 %7375, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_453296, %struct.Memory** %MEMORY
  %loadMem_45329d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 33
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7378 to i64*
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7380 = getelementptr inbounds %struct.GPR, %struct.GPR* %7379, i32 0, i32 9
  %7381 = getelementptr inbounds %struct.Reg, %struct.Reg* %7380, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7381 to i64*
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 15
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %7384 to i64*
  %7385 = load i64, i64* %RBP.i40
  %7386 = sub i64 %7385, 1588
  %7387 = load i64, i64* %PC.i39
  %7388 = add i64 %7387, 6
  store i64 %7388, i64* %PC.i39
  %7389 = inttoptr i64 %7386 to i32*
  %7390 = load i32, i32* %7389
  %7391 = zext i32 %7390 to i64
  store i64 %7391, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_45329d, %struct.Memory** %MEMORY
  %loadMem_4532a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 33
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7394 to i64*
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 7
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7397 to i64*
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7399 = getelementptr inbounds %struct.GPR, %struct.GPR* %7398, i32 0, i32 15
  %7400 = getelementptr inbounds %struct.Reg, %struct.Reg* %7399, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %7400 to i64*
  %7401 = load i64, i64* %RBP.i38
  %7402 = sub i64 %7401, 1592
  %7403 = load i64, i64* %PC.i37
  %7404 = add i64 %7403, 6
  store i64 %7404, i64* %PC.i37
  %7405 = inttoptr i64 %7402 to i32*
  %7406 = load i32, i32* %7405
  %7407 = zext i32 %7406 to i64
  store i64 %7407, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4532a3, %struct.Memory** %MEMORY
  %loadMem_4532a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 33
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7410 to i64*
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7412 = getelementptr inbounds %struct.GPR, %struct.GPR* %7411, i32 0, i32 1
  %7413 = getelementptr inbounds %struct.Reg, %struct.Reg* %7412, i32 0, i32 0
  %EAX.i35 = bitcast %union.anon* %7413 to i32*
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 5
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %7416 to i64*
  %7417 = load i32, i32* %EAX.i35
  %7418 = zext i32 %7417 to i64
  %7419 = load i64, i64* %PC.i34
  %7420 = add i64 %7419, 2
  store i64 %7420, i64* %PC.i34
  %7421 = and i64 %7418, 4294967295
  store i64 %7421, i64* %RCX.i36, align 8
  store %struct.Memory* %loadMem_4532a9, %struct.Memory** %MEMORY
  %loadMem_4532ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7423 = getelementptr inbounds %struct.GPR, %struct.GPR* %7422, i32 0, i32 33
  %7424 = getelementptr inbounds %struct.Reg, %struct.Reg* %7423, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7424 to i64*
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7426 = getelementptr inbounds %struct.GPR, %struct.GPR* %7425, i32 0, i32 1
  %7427 = getelementptr inbounds %struct.Reg, %struct.Reg* %7426, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7427 to i32*
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7429 = getelementptr inbounds %struct.GPR, %struct.GPR* %7428, i32 0, i32 17
  %7430 = getelementptr inbounds %struct.Reg, %struct.Reg* %7429, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %7430 to i32*
  %7431 = bitcast i32* %R8D.i to i64*
  %7432 = load i32, i32* %EAX.i
  %7433 = zext i32 %7432 to i64
  %7434 = load i64, i64* %PC.i33
  %7435 = add i64 %7434, 3
  store i64 %7435, i64* %PC.i33
  %7436 = and i64 %7433, 4294967295
  store i64 %7436, i64* %7431, align 8
  store %struct.Memory* %loadMem_4532ab, %struct.Memory** %MEMORY
  %loadMem1_4532ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7438 = getelementptr inbounds %struct.GPR, %struct.GPR* %7437, i32 0, i32 33
  %7439 = getelementptr inbounds %struct.Reg, %struct.Reg* %7438, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7439 to i64*
  %7440 = load i64, i64* %PC.i32
  %7441 = add i64 %7440, -241550
  %7442 = load i64, i64* %PC.i32
  %7443 = add i64 %7442, 5
  %7444 = load i64, i64* %PC.i32
  %7445 = add i64 %7444, 5
  store i64 %7445, i64* %PC.i32
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7447 = load i64, i64* %7446, align 8
  %7448 = add i64 %7447, -8
  %7449 = inttoptr i64 %7448 to i64*
  store i64 %7443, i64* %7449
  store i64 %7448, i64* %7446, align 8
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7441, i64* %7450, align 8
  store %struct.Memory* %loadMem1_4532ae, %struct.Memory** %MEMORY
  %loadMem2_4532ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4532ae = load i64, i64* %3
  %call2_4532ae = call %struct.Memory* @sub_418320.sgf_trace2(%struct.State* %0, i64 %loadPC_4532ae, %struct.Memory* %loadMem2_4532ae)
  store %struct.Memory* %call2_4532ae, %struct.Memory** %MEMORY
  br label %block_.L_4532b3

block_.L_4532b3:                                  ; preds = %block_45328f, %block_.L_453280
  %loadMem_4532b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7452 = getelementptr inbounds %struct.GPR, %struct.GPR* %7451, i32 0, i32 33
  %7453 = getelementptr inbounds %struct.Reg, %struct.Reg* %7452, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7453 to i64*
  %7454 = load i64, i64* %PC.i31
  %7455 = add i64 %7454, 5
  %7456 = load i64, i64* %PC.i31
  %7457 = add i64 %7456, 5
  store i64 %7457, i64* %PC.i31
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7455, i64* %7458, align 8
  store %struct.Memory* %loadMem_4532b3, %struct.Memory** %MEMORY
  br label %block_.L_4532b8

block_.L_4532b8:                                  ; preds = %block_.L_4532b3
  %loadMem_4532b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7460 = getelementptr inbounds %struct.GPR, %struct.GPR* %7459, i32 0, i32 33
  %7461 = getelementptr inbounds %struct.Reg, %struct.Reg* %7460, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7461 to i64*
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7463 = getelementptr inbounds %struct.GPR, %struct.GPR* %7462, i32 0, i32 15
  %7464 = getelementptr inbounds %struct.Reg, %struct.Reg* %7463, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %7464 to i64*
  %7465 = load i64, i64* %RBP.i30
  %7466 = sub i64 %7465, 1576
  %7467 = load i64, i64* %PC.i29
  %7468 = add i64 %7467, 8
  store i64 %7468, i64* %PC.i29
  %7469 = inttoptr i64 %7466 to i64*
  %7470 = load i64, i64* %7469
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7471, align 1
  %7472 = trunc i64 %7470 to i32
  %7473 = and i32 %7472, 255
  %7474 = call i32 @llvm.ctpop.i32(i32 %7473)
  %7475 = trunc i32 %7474 to i8
  %7476 = and i8 %7475, 1
  %7477 = xor i8 %7476, 1
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7477, i8* %7478, align 1
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7479, align 1
  %7480 = icmp eq i64 %7470, 0
  %7481 = zext i1 %7480 to i8
  %7482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7481, i8* %7482, align 1
  %7483 = lshr i64 %7470, 63
  %7484 = trunc i64 %7483 to i8
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7484, i8* %7485, align 1
  %7486 = lshr i64 %7470, 63
  %7487 = xor i64 %7483, %7486
  %7488 = add i64 %7487, %7486
  %7489 = icmp eq i64 %7488, 2
  %7490 = zext i1 %7489 to i8
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7490, i8* %7491, align 1
  store %struct.Memory* %loadMem_4532b8, %struct.Memory** %MEMORY
  %loadMem_4532c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7493 = getelementptr inbounds %struct.GPR, %struct.GPR* %7492, i32 0, i32 33
  %7494 = getelementptr inbounds %struct.Reg, %struct.Reg* %7493, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %7494 to i64*
  %7495 = load i64, i64* %PC.i28
  %7496 = add i64 %7495, 38
  %7497 = load i64, i64* %PC.i28
  %7498 = add i64 %7497, 6
  %7499 = load i64, i64* %PC.i28
  %7500 = add i64 %7499, 6
  store i64 %7500, i64* %PC.i28
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7502 = load i8, i8* %7501, align 1
  store i8 %7502, i8* %BRANCH_TAKEN, align 1
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7504 = icmp ne i8 %7502, 0
  %7505 = select i1 %7504, i64 %7496, i64 %7498
  store i64 %7505, i64* %7503, align 8
  store %struct.Memory* %loadMem_4532c0, %struct.Memory** %MEMORY
  %loadBr_4532c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4532c0 = icmp eq i8 %loadBr_4532c0, 1
  br i1 %cmpBr_4532c0, label %block_.L_4532e6, label %block_4532c6

block_4532c6:                                     ; preds = %block_.L_4532b8
  %loadMem_4532c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7507 = getelementptr inbounds %struct.GPR, %struct.GPR* %7506, i32 0, i32 33
  %7508 = getelementptr inbounds %struct.Reg, %struct.Reg* %7507, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7508 to i64*
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7510 = getelementptr inbounds %struct.GPR, %struct.GPR* %7509, i32 0, i32 1
  %7511 = getelementptr inbounds %struct.Reg, %struct.Reg* %7510, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %7511 to i64*
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7513 = getelementptr inbounds %struct.GPR, %struct.GPR* %7512, i32 0, i32 15
  %7514 = getelementptr inbounds %struct.Reg, %struct.Reg* %7513, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %7514 to i64*
  %7515 = load i64, i64* %RBP.i27
  %7516 = sub i64 %7515, 1576
  %7517 = load i64, i64* %PC.i25
  %7518 = add i64 %7517, 7
  store i64 %7518, i64* %PC.i25
  %7519 = inttoptr i64 %7516 to i64*
  %7520 = load i64, i64* %7519
  store i64 %7520, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_4532c6, %struct.Memory** %MEMORY
  %loadMem_4532cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 33
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7523 to i64*
  %7524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7525 = getelementptr inbounds %struct.GPR, %struct.GPR* %7524, i32 0, i32 1
  %7526 = getelementptr inbounds %struct.Reg, %struct.Reg* %7525, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %7526 to i64*
  %7527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7528 = getelementptr inbounds %struct.GPR, %struct.GPR* %7527, i32 0, i32 5
  %7529 = getelementptr inbounds %struct.Reg, %struct.Reg* %7528, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %7529 to i64*
  %7530 = load i64, i64* %RAX.i23
  %7531 = add i64 %7530, 4
  %7532 = load i64, i64* %PC.i22
  %7533 = add i64 %7532, 3
  store i64 %7533, i64* %PC.i22
  %7534 = inttoptr i64 %7531 to i32*
  %7535 = load i32, i32* %7534
  %7536 = zext i32 %7535 to i64
  store i64 %7536, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_4532cd, %struct.Memory** %MEMORY
  %loadMem_4532d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 33
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7539 to i64*
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7541 = getelementptr inbounds %struct.GPR, %struct.GPR* %7540, i32 0, i32 5
  %7542 = getelementptr inbounds %struct.Reg, %struct.Reg* %7541, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %7542 to i64*
  %7543 = load i64, i64* %RCX.i21
  %7544 = load i64, i64* %PC.i20
  %7545 = add i64 %7544, 6
  store i64 %7545, i64* %PC.i20
  %7546 = and i64 1023, %7543
  %7547 = trunc i64 %7546 to i32
  store i64 %7546, i64* %RCX.i21, align 8
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7548, align 1
  %7549 = and i32 %7547, 255
  %7550 = call i32 @llvm.ctpop.i32(i32 %7549)
  %7551 = trunc i32 %7550 to i8
  %7552 = and i8 %7551, 1
  %7553 = xor i8 %7552, 1
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7553, i8* %7554, align 1
  %7555 = icmp eq i32 %7547, 0
  %7556 = zext i1 %7555 to i8
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7556, i8* %7557, align 1
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7558, align 1
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7559, align 1
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7560, align 1
  store %struct.Memory* %loadMem_4532d0, %struct.Memory** %MEMORY
  %loadMem_4532d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7562 = getelementptr inbounds %struct.GPR, %struct.GPR* %7561, i32 0, i32 33
  %7563 = getelementptr inbounds %struct.Reg, %struct.Reg* %7562, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7563 to i64*
  %7564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7565 = getelementptr inbounds %struct.GPR, %struct.GPR* %7564, i32 0, i32 5
  %7566 = getelementptr inbounds %struct.Reg, %struct.Reg* %7565, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7566 to i64*
  %7567 = load i64, i64* %RCX.i
  %7568 = load i64, i64* %PC.i19
  %7569 = add i64 %7568, 6
  store i64 %7569, i64* %PC.i19
  %7570 = or i64 536870912, %7567
  %7571 = trunc i64 %7570 to i32
  %7572 = and i64 %7570, 4294967295
  store i64 %7572, i64* %RCX.i, align 8
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7573, align 1
  %7574 = and i32 %7571, 255
  %7575 = call i32 @llvm.ctpop.i32(i32 %7574)
  %7576 = trunc i32 %7575 to i8
  %7577 = and i8 %7576, 1
  %7578 = xor i8 %7577, 1
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7578, i8* %7579, align 1
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7580, align 1
  %7581 = lshr i32 %7571, 31
  %7582 = trunc i32 %7581 to i8
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7582, i8* %7583, align 1
  %7584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7584, align 1
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7585, align 1
  store %struct.Memory* %loadMem_4532d6, %struct.Memory** %MEMORY
  %loadMem_4532dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 33
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7588 to i64*
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 1
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %7591 to i64*
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 15
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %7594 to i64*
  %7595 = load i64, i64* %RBP.i18
  %7596 = sub i64 %7595, 1576
  %7597 = load i64, i64* %PC.i16
  %7598 = add i64 %7597, 7
  store i64 %7598, i64* %PC.i16
  %7599 = inttoptr i64 %7596 to i64*
  %7600 = load i64, i64* %7599
  store i64 %7600, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_4532dc, %struct.Memory** %MEMORY
  %loadMem_4532e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7602 = getelementptr inbounds %struct.GPR, %struct.GPR* %7601, i32 0, i32 33
  %7603 = getelementptr inbounds %struct.Reg, %struct.Reg* %7602, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7603 to i64*
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7605 = getelementptr inbounds %struct.GPR, %struct.GPR* %7604, i32 0, i32 5
  %7606 = getelementptr inbounds %struct.Reg, %struct.Reg* %7605, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7606 to i32*
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7608 = getelementptr inbounds %struct.GPR, %struct.GPR* %7607, i32 0, i32 1
  %7609 = getelementptr inbounds %struct.Reg, %struct.Reg* %7608, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %7609 to i64*
  %7610 = load i64, i64* %RAX.i15
  %7611 = add i64 %7610, 4
  %7612 = load i32, i32* %ECX.i
  %7613 = zext i32 %7612 to i64
  %7614 = load i64, i64* %PC.i14
  %7615 = add i64 %7614, 3
  store i64 %7615, i64* %PC.i14
  %7616 = inttoptr i64 %7611 to i32*
  store i32 %7612, i32* %7616
  store %struct.Memory* %loadMem_4532e3, %struct.Memory** %MEMORY
  br label %block_.L_4532e6

block_.L_4532e6:                                  ; preds = %block_4532c6, %block_.L_4532b8
  %loadMem_4532e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7618 = getelementptr inbounds %struct.GPR, %struct.GPR* %7617, i32 0, i32 33
  %7619 = getelementptr inbounds %struct.Reg, %struct.Reg* %7618, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7619 to i64*
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7621 = getelementptr inbounds %struct.GPR, %struct.GPR* %7620, i32 0, i32 15
  %7622 = getelementptr inbounds %struct.Reg, %struct.Reg* %7621, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %7622 to i64*
  %7623 = load i64, i64* %RBP.i13
  %7624 = sub i64 %7623, 44
  %7625 = load i64, i64* %PC.i12
  %7626 = add i64 %7625, 7
  store i64 %7626, i64* %PC.i12
  %7627 = inttoptr i64 %7624 to i32*
  store i32 0, i32* %7627
  store %struct.Memory* %loadMem_4532e6, %struct.Memory** %MEMORY
  br label %block_.L_4532ed

block_.L_4532ed:                                  ; preds = %block_.L_4532e6, %block_.L_453272, %block_.L_4531a5, %block_.L_45304d, %block_.L_452df6, %block_.L_452d20, %block_.L_452c16, %block_.L_452bbe, %block_.L_452b66, %block_.L_452b0d
  %loadMem_4532ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %7628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7629 = getelementptr inbounds %struct.GPR, %struct.GPR* %7628, i32 0, i32 33
  %7630 = getelementptr inbounds %struct.Reg, %struct.Reg* %7629, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %7630 to i64*
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7632 = getelementptr inbounds %struct.GPR, %struct.GPR* %7631, i32 0, i32 1
  %7633 = getelementptr inbounds %struct.Reg, %struct.Reg* %7632, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7633 to i64*
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 15
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %7636 to i64*
  %7637 = load i64, i64* %RBP.i11
  %7638 = sub i64 %7637, 44
  %7639 = load i64, i64* %PC.i10
  %7640 = add i64 %7639, 3
  store i64 %7640, i64* %PC.i10
  %7641 = inttoptr i64 %7638 to i32*
  %7642 = load i32, i32* %7641
  %7643 = zext i32 %7642 to i64
  store i64 %7643, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4532ed, %struct.Memory** %MEMORY
  %loadMem_4532f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7645 = getelementptr inbounds %struct.GPR, %struct.GPR* %7644, i32 0, i32 33
  %7646 = getelementptr inbounds %struct.Reg, %struct.Reg* %7645, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7646 to i64*
  %7647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7648 = getelementptr inbounds %struct.GPR, %struct.GPR* %7647, i32 0, i32 13
  %7649 = getelementptr inbounds %struct.Reg, %struct.Reg* %7648, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7649 to i64*
  %7650 = load i64, i64* %RSP.i
  %7651 = load i64, i64* %PC.i9
  %7652 = add i64 %7651, 7
  store i64 %7652, i64* %PC.i9
  %7653 = add i64 1656, %7650
  store i64 %7653, i64* %RSP.i, align 8
  %7654 = icmp ult i64 %7653, %7650
  %7655 = icmp ult i64 %7653, 1656
  %7656 = or i1 %7654, %7655
  %7657 = zext i1 %7656 to i8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7657, i8* %7658, align 1
  %7659 = trunc i64 %7653 to i32
  %7660 = and i32 %7659, 255
  %7661 = call i32 @llvm.ctpop.i32(i32 %7660)
  %7662 = trunc i32 %7661 to i8
  %7663 = and i8 %7662, 1
  %7664 = xor i8 %7663, 1
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7664, i8* %7665, align 1
  %7666 = xor i64 1656, %7650
  %7667 = xor i64 %7666, %7653
  %7668 = lshr i64 %7667, 4
  %7669 = trunc i64 %7668 to i8
  %7670 = and i8 %7669, 1
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7670, i8* %7671, align 1
  %7672 = icmp eq i64 %7653, 0
  %7673 = zext i1 %7672 to i8
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7673, i8* %7674, align 1
  %7675 = lshr i64 %7653, 63
  %7676 = trunc i64 %7675 to i8
  %7677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7676, i8* %7677, align 1
  %7678 = lshr i64 %7650, 63
  %7679 = xor i64 %7675, %7678
  %7680 = add i64 %7679, %7675
  %7681 = icmp eq i64 %7680, 2
  %7682 = zext i1 %7681 to i8
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7682, i8* %7683, align 1
  store %struct.Memory* %loadMem_4532f0, %struct.Memory** %MEMORY
  %loadMem_4532f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7685 = getelementptr inbounds %struct.GPR, %struct.GPR* %7684, i32 0, i32 33
  %7686 = getelementptr inbounds %struct.Reg, %struct.Reg* %7685, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7686 to i64*
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7688 = getelementptr inbounds %struct.GPR, %struct.GPR* %7687, i32 0, i32 3
  %7689 = getelementptr inbounds %struct.Reg, %struct.Reg* %7688, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %7689 to i64*
  %7690 = load i64, i64* %PC.i8
  %7691 = add i64 %7690, 1
  store i64 %7691, i64* %PC.i8
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7693 = load i64, i64* %7692, align 8
  %7694 = add i64 %7693, 8
  %7695 = inttoptr i64 %7693 to i64*
  %7696 = load i64, i64* %7695
  store i64 %7696, i64* %RBX.i, align 8
  store i64 %7694, i64* %7692, align 8
  store %struct.Memory* %loadMem_4532f7, %struct.Memory** %MEMORY
  %loadMem_4532f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7698 = getelementptr inbounds %struct.GPR, %struct.GPR* %7697, i32 0, i32 33
  %7699 = getelementptr inbounds %struct.Reg, %struct.Reg* %7698, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7699 to i64*
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7701 = getelementptr inbounds %struct.GPR, %struct.GPR* %7700, i32 0, i32 25
  %7702 = getelementptr inbounds %struct.Reg, %struct.Reg* %7701, i32 0, i32 0
  %R12.i = bitcast %union.anon* %7702 to i64*
  %7703 = load i64, i64* %PC.i7
  %7704 = add i64 %7703, 2
  store i64 %7704, i64* %PC.i7
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7706 = load i64, i64* %7705, align 8
  %7707 = add i64 %7706, 8
  %7708 = inttoptr i64 %7706 to i64*
  %7709 = load i64, i64* %7708
  store i64 %7709, i64* %R12.i, align 8
  store i64 %7707, i64* %7705, align 8
  store %struct.Memory* %loadMem_4532f8, %struct.Memory** %MEMORY
  %loadMem_4532fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7711 = getelementptr inbounds %struct.GPR, %struct.GPR* %7710, i32 0, i32 33
  %7712 = getelementptr inbounds %struct.Reg, %struct.Reg* %7711, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7712 to i64*
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7714 = getelementptr inbounds %struct.GPR, %struct.GPR* %7713, i32 0, i32 27
  %7715 = getelementptr inbounds %struct.Reg, %struct.Reg* %7714, i32 0, i32 0
  %R13.i = bitcast %union.anon* %7715 to i64*
  %7716 = load i64, i64* %PC.i6
  %7717 = add i64 %7716, 2
  store i64 %7717, i64* %PC.i6
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7719 = load i64, i64* %7718, align 8
  %7720 = add i64 %7719, 8
  %7721 = inttoptr i64 %7719 to i64*
  %7722 = load i64, i64* %7721
  store i64 %7722, i64* %R13.i, align 8
  store i64 %7720, i64* %7718, align 8
  store %struct.Memory* %loadMem_4532fa, %struct.Memory** %MEMORY
  %loadMem_4532fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7724 = getelementptr inbounds %struct.GPR, %struct.GPR* %7723, i32 0, i32 33
  %7725 = getelementptr inbounds %struct.Reg, %struct.Reg* %7724, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7725 to i64*
  %7726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7727 = getelementptr inbounds %struct.GPR, %struct.GPR* %7726, i32 0, i32 29
  %7728 = getelementptr inbounds %struct.Reg, %struct.Reg* %7727, i32 0, i32 0
  %R14.i = bitcast %union.anon* %7728 to i64*
  %7729 = load i64, i64* %PC.i5
  %7730 = add i64 %7729, 2
  store i64 %7730, i64* %PC.i5
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7732 = load i64, i64* %7731, align 8
  %7733 = add i64 %7732, 8
  %7734 = inttoptr i64 %7732 to i64*
  %7735 = load i64, i64* %7734
  store i64 %7735, i64* %R14.i, align 8
  store i64 %7733, i64* %7731, align 8
  store %struct.Memory* %loadMem_4532fc, %struct.Memory** %MEMORY
  %loadMem_4532fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7737 = getelementptr inbounds %struct.GPR, %struct.GPR* %7736, i32 0, i32 33
  %7738 = getelementptr inbounds %struct.Reg, %struct.Reg* %7737, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7738 to i64*
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7740 = getelementptr inbounds %struct.GPR, %struct.GPR* %7739, i32 0, i32 31
  %7741 = getelementptr inbounds %struct.Reg, %struct.Reg* %7740, i32 0, i32 0
  %R15.i = bitcast %union.anon* %7741 to i64*
  %7742 = load i64, i64* %PC.i4
  %7743 = add i64 %7742, 2
  store i64 %7743, i64* %PC.i4
  %7744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7745 = load i64, i64* %7744, align 8
  %7746 = add i64 %7745, 8
  %7747 = inttoptr i64 %7745 to i64*
  %7748 = load i64, i64* %7747
  store i64 %7748, i64* %R15.i, align 8
  store i64 %7746, i64* %7744, align 8
  store %struct.Memory* %loadMem_4532fe, %struct.Memory** %MEMORY
  %loadMem_453300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7750 = getelementptr inbounds %struct.GPR, %struct.GPR* %7749, i32 0, i32 33
  %7751 = getelementptr inbounds %struct.Reg, %struct.Reg* %7750, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7751 to i64*
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7753 = getelementptr inbounds %struct.GPR, %struct.GPR* %7752, i32 0, i32 15
  %7754 = getelementptr inbounds %struct.Reg, %struct.Reg* %7753, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7754 to i64*
  %7755 = load i64, i64* %PC.i2
  %7756 = add i64 %7755, 1
  store i64 %7756, i64* %PC.i2
  %7757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7758 = load i64, i64* %7757, align 8
  %7759 = add i64 %7758, 8
  %7760 = inttoptr i64 %7758 to i64*
  %7761 = load i64, i64* %7760
  store i64 %7761, i64* %RBP.i3, align 8
  store i64 %7759, i64* %7757, align 8
  store %struct.Memory* %loadMem_453300, %struct.Memory** %MEMORY
  %loadMem_453301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7763 = getelementptr inbounds %struct.GPR, %struct.GPR* %7762, i32 0, i32 33
  %7764 = getelementptr inbounds %struct.Reg, %struct.Reg* %7763, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7764 to i64*
  %7765 = load i64, i64* %PC.i1
  %7766 = add i64 %7765, 1
  store i64 %7766, i64* %PC.i1
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7769 = load i64, i64* %7768, align 8
  %7770 = inttoptr i64 %7769 to i64*
  %7771 = load i64, i64* %7770
  store i64 %7771, i64* %7767, align 8
  %7772 = add i64 %7769, 8
  store i64 %7772, i64* %7768, align 8
  store %struct.Memory* %loadMem_453301, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_453301
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %9, i64* %15
  store i64 %14, i64* %12, align 8
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

define %struct.Memory* @routine_subq__0x678___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 1656
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 1656
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
  %23 = xor i64 1656, %9
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

define %struct.Memory* @routine_movq__0x57f55d___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f55d_type* @G__0x57f55d to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x608__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1544
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x614__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x618__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x628__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x630__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1584
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x634__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1588
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x638__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1592
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_452a89(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xae239c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xae239c_type* @G_0xae239c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0xae239c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xae239c_type* @G_0xae239c to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xae23a0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xae23a0_type* @G_0xae23a0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xae23a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xae23a0_type* @G_0xae23a0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_je_.L_452ad5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_452b19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %8, 63
  %25 = xor i64 %21, %24
  %26 = add i64 %25, %24
  %27 = icmp eq i64 %26, 2
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_452b0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f570___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f570_type* @G__0x57f570 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x630__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x634__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x638__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.sgf_trace2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4532ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.same_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_452b72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_452b66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x5___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 5, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57f58c___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f58c_type* @G__0x57f58c to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 5, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x7afc58___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7afc58_type* @G_0x7afc58 to i32*)
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

define %struct.Memory* @routine_jle_.L_452bca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_452bbe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f59e___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f59e_type* @G__0x57f59e to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x7afc5c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7afc5c_type* @G_0x7afc5c to i32*)
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

define %struct.Memory* @routine_jle_.L_452c22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_452c16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f5bc___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f5bc_type* @G__0x57f5bc to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
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

define %struct.Memory* @routine_jg_.L_452d3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0x7ae43c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae43c_type* @G_0x7ae43c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x800___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 2048, %9
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

define %struct.Memory* @routine_je_.L_452d3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
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

define %struct.Memory* @routine_jne_.L_452d3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x34__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x628__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_read_result2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x61c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1564
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x61c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1564
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

define %struct.Memory* @routine_je_.L_452d38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x628__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shrl__0x18___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 23
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 15, %9
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

define %struct.Memory* @routine_je_.L_452cc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_452cc4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_shrl__0xa___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 9
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x3ff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 1023, %9
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

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_452cc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_452d20(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57dee3___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dee3_type* @G__0x57dee3 to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shrl__0x18___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = and i64 %11, 4294967295
  %15 = lshr i64 %14, 23
  %16 = trunc i64 %15 to i8
  %17 = and i8 %16, 1
  %18 = lshr i64 %15, 1
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 2147483647
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %24 = and i32 %19, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %23, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %31 = icmp eq i32 %20, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = and i64 15, %11
  %15 = trunc i64 %14 to i32
  store i64 %14, i64* %9, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %15, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
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

define %struct.Memory* @routine_jmpq_.L_452d3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x610__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.trivial_connection(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_452e02(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_452d95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f5db___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f5db_type* @G__0x57f5db to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x610__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_452d9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_452db1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x610__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x628__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_je_.L_452df6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_orl__0x20000000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = or i64 536870912, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__0x5000000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = or i64 83886080, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x610__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x3ff___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = and i64 1023, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_shll__0xa___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 9
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = or i64 %14, %12
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

define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x608__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x600__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.find_connection_moves(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x604__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x60c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1548
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x604__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1540
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

define %struct.Memory* @routine_jge_.L_453101(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x60c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x600__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1536
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x610__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1552
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x610__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R10D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
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

define %struct.Memory* @routine_movl__r9d__MINUS0x64c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1612
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x650__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1616
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x654__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1620
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x658__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1624
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x65c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1628
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x65d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1629
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_452eb8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x618__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1560
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

define %struct.Memory* @routine_sete__al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al__MINUS0x65d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1629
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x65d__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1629
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57f55d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f55d_type* @G__0x57f55d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x63c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x640__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x644__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 %15, i8* %AL, align 1
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

define %struct.Memory* @routine_movzbl__al___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %R8D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R8D to i64*
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = and i64 %15, 255
  store i64 %18, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x650__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1616
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x668__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x654__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x670__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x658__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x678__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x65c__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1628
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x67c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1660
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x64c__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1612
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x678__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %R14
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x670__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x668__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x67c__rbp____r13d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R13D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1660
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i32, i32* %R13D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4530e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x644__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1604
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

define %struct.Memory* @routine_jne_.L_45309f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x63c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x640__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1600
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.recursive_disconnect2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x648__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x648__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1608
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

define %struct.Memory* @routine_jne_.L_453059(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_452fec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f65f___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f65f_type* @G__0x57f65f to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_452ff1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_453008(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_45304d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_45309a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x648__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1608
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

define %struct.Memory* @routine_cmpl_MINUS0x618__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1560
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

define %struct.Memory* @routine_jle_.L_45309a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__ecx__MINUS0x614__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1556
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x618__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1560
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4530e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4530de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x614__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x618__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4530e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4530ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x60c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_452e2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x604__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1540
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

define %struct.Memory* @routine_jne_.L_4531b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x3e8__MINUS0x608__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 1544
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 1000
  %16 = icmp ult i32 %14, 1000
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
  %25 = xor i32 %14, 1000
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

define %struct.Memory* @routine_jge_.L_4531b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_453157(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f5ee___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f5ee_type* @G__0x57f5ee to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45315c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_453171(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4531a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_453280(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4531fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57f60a___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x614__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x618__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 1560
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453201(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_453225(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x614__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_453272(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x618__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xf___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 15, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_shll__0x18___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 23
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x614__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x618__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_4532b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__ecx___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4532b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4532e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x678___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1656, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1656
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
  %25 = xor i64 1656, %9
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

define %struct.Memory* @routine_popq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R12, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R13, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R14, align 8
  store i64 %13, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R15, align 8
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
