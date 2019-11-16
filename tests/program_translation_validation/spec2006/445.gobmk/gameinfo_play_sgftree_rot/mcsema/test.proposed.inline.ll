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
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
%G_0xb4097__rip__type = type <{ [4 x i8] }>
%G_0xb40a5__rip__type = type <{ [4 x i8] }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
%G__0x579c47_type = type <{ [8 x i8] }>
%G__0x579c4a_type = type <{ [8 x i8] }>
%G__0x57ca87_type = type <{ [8 x i8] }>
%G__0x57cac0_type = type <{ [8 x i8] }>
%G__0x57cad7_type = type <{ [8 x i8] }>
%G__0x57caf9_type = type <{ [8 x i8] }>
%G__0x57cb03_type = type <{ [8 x i8] }>
%G__0x57cb47_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G_0xafdfb0 = global %G_0xafdfb0_type zeroinitializer
@G_0xb4097__rip_ = global %G_0xb4097__rip__type zeroinitializer
@G_0xb40a5__rip_ = global %G_0xb40a5__rip__type zeroinitializer
@G_0xb6eec4 = global %G_0xb6eec4_type zeroinitializer
@G__0x579c47 = global %G__0x579c47_type zeroinitializer
@G__0x579c4a = global %G__0x579c4a_type zeroinitializer
@G__0x57ca87 = global %G__0x57ca87_type zeroinitializer
@G__0x57cac0 = global %G__0x57cac0_type zeroinitializer
@G__0x57cad7 = global %G__0x57cad7_type zeroinitializer
@G__0x57caf9 = global %G__0x57caf9_type zeroinitializer
@G__0x57cb03 = global %G__0x57cb03_type zeroinitializer
@G__0x57cb47 = global %G__0x57cb47_type zeroinitializer

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

declare %struct.Memory* @sub_401e00.sgfGetFloatProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42e430.gnugo_clear_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42e4a0.gnugo_set_komi(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4044c0.sgftreeForward(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4e2990.rotate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_404430.sgftreeBack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @gameinfo_play_sgftree_rot(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42f020 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42f020, %struct.Memory** %MEMORY
  %loadMem_42f021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i775 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i775
  %27 = load i64, i64* %PC.i774
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i774
  store i64 %26, i64* %RBP.i776, align 8
  store %struct.Memory* %loadMem_42f021, %struct.Memory** %MEMORY
  %loadMem_42f024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i843 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i843
  %36 = load i64, i64* %PC.i842
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i842
  %38 = sub i64 %35, 176
  store i64 %38, i64* %RSP.i843, align 8
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
  store %struct.Memory* %loadMem_42f024, %struct.Memory** %MEMORY
  %loadMem_42f02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i951 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i950
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i950
  store i64 ptrtoint (%G__0x579c4a_type* @G__0x579c4a to i64), i64* %RAX.i951, align 8
  store %struct.Memory* %loadMem_42f02b, %struct.Memory** %MEMORY
  %loadMem_42f035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 17
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %R8.i949 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i948
  %85 = sub i64 %84, 48
  %86 = load i64, i64* %PC.i947
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i947
  store i64 %85, i64* %R8.i949, align 8
  store %struct.Memory* %loadMem_42f035, %struct.Memory** %MEMORY
  %loadMem_42f039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 11
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %RDI.i945 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 15
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RBP.i946 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RBP.i946
  %98 = sub i64 %97, 16
  %99 = load i64, i64* %RDI.i945
  %100 = load i64, i64* %PC.i944
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC.i944
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102
  store %struct.Memory* %loadMem_42f039, %struct.Memory** %MEMORY
  %loadMem_42f03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 33
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 9
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RSI.i942 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i943 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %RBP.i943
  %113 = sub i64 %112, 24
  %114 = load i64, i64* %RSI.i942
  %115 = load i64, i64* %PC.i941
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC.i941
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  store %struct.Memory* %loadMem_42f03d, %struct.Memory** %MEMORY
  %loadMem_42f041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RDX.i939 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i940 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %RBP.i940
  %128 = sub i64 %127, 32
  %129 = load i64, i64* %RDX.i939
  %130 = load i64, i64* %PC.i938
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC.i938
  %132 = inttoptr i64 %128 to i64*
  store i64 %129, i64* %132
  store %struct.Memory* %loadMem_42f041, %struct.Memory** %MEMORY
  %loadMem_42f045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 33
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %ECX.i936 = bitcast %union.anon* %138 to i32*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %RBP.i937
  %143 = sub i64 %142, 36
  %144 = load i32, i32* %ECX.i936
  %145 = zext i32 %144 to i64
  %146 = load i64, i64* %PC.i935
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC.i935
  %148 = inttoptr i64 %143 to i32*
  store i32 %144, i32* %148
  store %struct.Memory* %loadMem_42f045, %struct.Memory** %MEMORY
  %loadMem_42f048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RBP.i934 = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %RBP.i934
  %156 = sub i64 %155, 52
  %157 = load i64, i64* %PC.i933
  %158 = add i64 %157, 7
  store i64 %158, i64* %PC.i933
  %159 = inttoptr i64 %156 to i32*
  store i32 2, i32* %159
  store %struct.Memory* %loadMem_42f048, %struct.Memory** %MEMORY
  %loadMem_42f04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %162 to i64*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 15
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %165 to i64*
  %166 = load i64, i64* %RBP.i932
  %167 = sub i64 %166, 56
  %168 = load i64, i64* %PC.i931
  %169 = add i64 %168, 7
  store i64 %169, i64* %PC.i931
  %170 = inttoptr i64 %167 to i32*
  store i32 -1, i32* %170
  store %struct.Memory* %loadMem_42f04f, %struct.Memory** %MEMORY
  %loadMem_42f056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i930 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i930
  %178 = sub i64 %177, 60
  %179 = load i64, i64* %PC.i929
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC.i929
  %181 = inttoptr i64 %178 to i32*
  store i32 -1, i32* %181
  store %struct.Memory* %loadMem_42f056, %struct.Memory** %MEMORY
  %loadMem_42f05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i928
  %189 = sub i64 %188, 64
  %190 = load i64, i64* %PC.i927
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC.i927
  %192 = inttoptr i64 %189 to i32*
  store i32 9999, i32* %192
  store %struct.Memory* %loadMem_42f05d, %struct.Memory** %MEMORY
  %loadMem_42f064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 33
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %195 to i64*
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 15
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %RBP.i926 = bitcast %union.anon* %198 to i64*
  %199 = load i64, i64* %RBP.i926
  %200 = sub i64 %199, 68
  %201 = load i64, i64* %PC.i925
  %202 = add i64 %201, 7
  store i64 %202, i64* %PC.i925
  %203 = inttoptr i64 %200 to i32*
  store i32 0, i32* %203
  store %struct.Memory* %loadMem_42f064, %struct.Memory** %MEMORY
  %loadMem_42f06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RDX.i923 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP.i924 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RBP.i924
  %214 = sub i64 %213, 24
  %215 = load i64, i64* %PC.i922
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC.i922
  %217 = inttoptr i64 %214 to i64*
  %218 = load i64, i64* %217
  store i64 %218, i64* %RDX.i923, align 8
  store %struct.Memory* %loadMem_42f06b, %struct.Memory** %MEMORY
  %loadMem_42f06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RDX.i920 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 11
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RDI.i921 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RDX.i920
  %229 = load i64, i64* %PC.i919
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC.i919
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %RDI.i921, align 8
  store %struct.Memory* %loadMem_42f06f, %struct.Memory** %MEMORY
  %loadMem_42f072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RAX.i917 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 9
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RSI.i918 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RAX.i917
  %243 = load i64, i64* %PC.i916
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC.i916
  store i64 %242, i64* %RSI.i918, align 8
  store %struct.Memory* %loadMem_42f072, %struct.Memory** %MEMORY
  %loadMem_42f075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 7
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RDX.i915 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 17
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %R8.i = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %R8.i
  %255 = load i64, i64* %PC.i914
  %256 = add i64 %255, 3
  store i64 %256, i64* %PC.i914
  store i64 %254, i64* %RDX.i915, align 8
  store %struct.Memory* %loadMem_42f075, %struct.Memory** %MEMORY
  %loadMem1_42f078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %259 to i64*
  %260 = load i64, i64* %PC.i913
  %261 = add i64 %260, -184952
  %262 = load i64, i64* %PC.i913
  %263 = add i64 %262, 5
  %264 = load i64, i64* %PC.i913
  %265 = add i64 %264, 5
  store i64 %265, i64* %PC.i913
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %263, i64* %269
  store i64 %268, i64* %266, align 8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %261, i64* %270, align 8
  store %struct.Memory* %loadMem1_42f078, %struct.Memory** %MEMORY
  %loadMem2_42f078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f078 = load i64, i64* %3
  %call2_42f078 = call %struct.Memory* @sub_401e00.sgfGetFloatProperty(%struct.State* %0, i64 %loadPC_42f078, %struct.Memory* %loadMem2_42f078)
  store %struct.Memory* %call2_42f078, %struct.Memory** %MEMORY
  %loadMem_42f07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %EAX.i912 = bitcast %union.anon* %276 to i32*
  %277 = load i32, i32* %EAX.i912
  %278 = zext i32 %277 to i64
  %279 = load i64, i64* %PC.i911
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC.i911
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %281, align 1
  %282 = and i32 %277, 255
  %283 = call i32 @llvm.ctpop.i32(i32 %282)
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %286, i8* %287, align 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %288, align 1
  %289 = icmp eq i32 %277, 0
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %290, i8* %291, align 1
  %292 = lshr i32 %277, 31
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %293, i8* %294, align 1
  %295 = lshr i32 %277, 31
  %296 = xor i32 %292, %295
  %297 = add i32 %296, %295
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %299, i8* %300, align 1
  store %struct.Memory* %loadMem_42f07d, %struct.Memory** %MEMORY
  %loadMem_42f080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 33
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %PC.i910
  %305 = add i64 %304, 55
  %306 = load i64, i64* %PC.i910
  %307 = add i64 %306, 6
  %308 = load i64, i64* %PC.i910
  %309 = add i64 %308, 6
  store i64 %309, i64* %PC.i910
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %311 = load i8, i8* %310, align 1
  %312 = icmp eq i8 %311, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %BRANCH_TAKEN, align 1
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %315 = select i1 %312, i64 %305, i64 %307
  store i64 %315, i64* %314, align 8
  store %struct.Memory* %loadMem_42f080, %struct.Memory** %MEMORY
  %loadBr_42f080 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f080 = icmp eq i8 %loadBr_42f080, 1
  br i1 %cmpBr_42f080, label %block_.L_42f0b7, label %block_42f086

block_42f086:                                     ; preds = %entry
  %loadMem_42f086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %RAX.i908 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 15
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RBP.i909 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RBP.i909
  %326 = sub i64 %325, 16
  %327 = load i64, i64* %PC.i907
  %328 = add i64 %327, 4
  store i64 %328, i64* %PC.i907
  %329 = inttoptr i64 %326 to i64*
  %330 = load i64, i64* %329
  store i64 %330, i64* %RAX.i908, align 8
  store %struct.Memory* %loadMem_42f086, %struct.Memory** %MEMORY
  %loadMem_42f08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RAX.i906
  %338 = load i64, i64* %PC.i905
  %339 = add i64 %338, 3
  store i64 %339, i64* %PC.i905
  %340 = inttoptr i64 %337 to i32*
  %341 = load i32, i32* %340
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %342, align 1
  %343 = and i32 %341, 255
  %344 = call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %347, i8* %348, align 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %349, align 1
  %350 = icmp eq i32 %341, 0
  %351 = zext i1 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %351, i8* %352, align 1
  %353 = lshr i32 %341, 31
  %354 = trunc i32 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %354, i8* %355, align 1
  %356 = lshr i32 %341, 31
  %357 = xor i32 %353, %356
  %358 = add i32 %357, %356
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %360, i8* %361, align 1
  store %struct.Memory* %loadMem_42f08a, %struct.Memory** %MEMORY
  %loadMem_42f08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %PC.i904
  %366 = add i64 %365, 24
  %367 = load i64, i64* %PC.i904
  %368 = add i64 %367, 6
  %369 = load i64, i64* %PC.i904
  %370 = add i64 %369, 6
  store i64 %370, i64* %PC.i904
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %372 = load i8, i8* %371, align 1
  %373 = icmp eq i8 %372, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %BRANCH_TAKEN, align 1
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %376 = select i1 %373, i64 %366, i64 %368
  store i64 %376, i64* %375, align 8
  store %struct.Memory* %loadMem_42f08d, %struct.Memory** %MEMORY
  %loadBr_42f08d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f08d = icmp eq i8 %loadBr_42f08d, 1
  br i1 %cmpBr_42f08d, label %block_.L_42f0a5, label %block_42f093

block_42f093:                                     ; preds = %block_42f086
  %loadMem_42f093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %380, i64 0, i64 0
  %YMM0.i903 = bitcast %union.VectorReg* %381 to %"class.std::bitset"*
  %382 = bitcast %"class.std::bitset"* %YMM0.i903 to i8*
  %383 = load i64, i64* %PC.i902
  %384 = add i64 %383, ptrtoint (%G_0xb40a5__rip__type* @G_0xb40a5__rip_ to i64)
  %385 = load i64, i64* %PC.i902
  %386 = add i64 %385, 8
  store i64 %386, i64* %PC.i902
  %387 = inttoptr i64 %384 to float*
  %388 = load float, float* %387
  %389 = bitcast i8* %382 to float*
  store float %388, float* %389, align 1
  %390 = getelementptr inbounds i8, i8* %382, i64 4
  %391 = bitcast i8* %390 to float*
  store float 0.000000e+00, float* %391, align 1
  %392 = getelementptr inbounds i8, i8* %382, i64 8
  %393 = bitcast i8* %392 to float*
  store float 0.000000e+00, float* %393, align 1
  %394 = getelementptr inbounds i8, i8* %382, i64 12
  %395 = bitcast i8* %394 to float*
  store float 0.000000e+00, float* %395, align 1
  store %struct.Memory* %loadMem_42f093, %struct.Memory** %MEMORY
  %loadMem_42f09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 15
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %402, i64 0, i64 0
  %XMM0.i901 = bitcast %union.VectorReg* %403 to %union.vec128_t*
  %404 = load i64, i64* %RBP.i900
  %405 = sub i64 %404, 48
  %406 = bitcast %union.vec128_t* %XMM0.i901 to i8*
  %407 = load i64, i64* %PC.i899
  %408 = add i64 %407, 5
  store i64 %408, i64* %PC.i899
  %409 = bitcast i8* %406 to <2 x float>*
  %410 = load <2 x float>, <2 x float>* %409, align 1
  %411 = extractelement <2 x float> %410, i32 0
  %412 = inttoptr i64 %405 to float*
  store float %411, float* %412
  store %struct.Memory* %loadMem_42f09b, %struct.Memory** %MEMORY
  %loadMem_42f0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %PC.i898
  %417 = add i64 %416, 18
  %418 = load i64, i64* %PC.i898
  %419 = add i64 %418, 5
  store i64 %419, i64* %PC.i898
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %417, i64* %420, align 8
  store %struct.Memory* %loadMem_42f0a0, %struct.Memory** %MEMORY
  br label %block_.L_42f0b2

block_.L_42f0a5:                                  ; preds = %block_42f086
  %loadMem_42f0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %424, i64 0, i64 0
  %YMM0.i897 = bitcast %union.VectorReg* %425 to %"class.std::bitset"*
  %426 = bitcast %"class.std::bitset"* %YMM0.i897 to i8*
  %427 = load i64, i64* %PC.i896
  %428 = add i64 %427, ptrtoint (%G_0xb4097__rip__type* @G_0xb4097__rip_ to i64)
  %429 = load i64, i64* %PC.i896
  %430 = add i64 %429, 8
  store i64 %430, i64* %PC.i896
  %431 = inttoptr i64 %428 to float*
  %432 = load float, float* %431
  %433 = bitcast i8* %426 to float*
  store float %432, float* %433, align 1
  %434 = getelementptr inbounds i8, i8* %426, i64 4
  %435 = bitcast i8* %434 to float*
  store float 0.000000e+00, float* %435, align 1
  %436 = getelementptr inbounds i8, i8* %426, i64 8
  %437 = bitcast i8* %436 to float*
  store float 0.000000e+00, float* %437, align 1
  %438 = getelementptr inbounds i8, i8* %426, i64 12
  %439 = bitcast i8* %438 to float*
  store float 0.000000e+00, float* %439, align 1
  store %struct.Memory* %loadMem_42f0a5, %struct.Memory** %MEMORY
  %loadMem_42f0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 15
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %447 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %446, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %447 to %union.vec128_t*
  %448 = load i64, i64* %RBP.i895
  %449 = sub i64 %448, 48
  %450 = bitcast %union.vec128_t* %XMM0.i to i8*
  %451 = load i64, i64* %PC.i894
  %452 = add i64 %451, 5
  store i64 %452, i64* %PC.i894
  %453 = bitcast i8* %450 to <2 x float>*
  %454 = load <2 x float>, <2 x float>* %453, align 1
  %455 = extractelement <2 x float> %454, i32 0
  %456 = inttoptr i64 %449 to float*
  store float %455, float* %456
  store %struct.Memory* %loadMem_42f0ad, %struct.Memory** %MEMORY
  br label %block_.L_42f0b2

block_.L_42f0b2:                                  ; preds = %block_.L_42f0a5, %block_42f093
  %loadMem_42f0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %PC.i893
  %461 = add i64 %460, 5
  %462 = load i64, i64* %PC.i893
  %463 = add i64 %462, 5
  store i64 %463, i64* %PC.i893
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %461, i64* %464, align 8
  store %struct.Memory* %loadMem_42f0b2, %struct.Memory** %MEMORY
  br label %block_.L_42f0b7

block_.L_42f0b7:                                  ; preds = %block_.L_42f0b2, %entry
  %loadMem_42f0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 9
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RSI.i892 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %PC.i891
  %472 = add i64 %471, 10
  store i64 %472, i64* %PC.i891
  store i64 ptrtoint (%G__0x579c47_type* @G__0x579c47 to i64), i64* %RSI.i892, align 8
  store %struct.Memory* %loadMem_42f0b7, %struct.Memory** %MEMORY
  %loadMem_42f0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 7
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RDX.i889 = bitcast %union.anon* %478 to i64*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RBP.i890 = bitcast %union.anon* %481 to i64*
  %482 = load i64, i64* %RBP.i890
  %483 = sub i64 %482, 40
  %484 = load i64, i64* %PC.i888
  %485 = add i64 %484, 4
  store i64 %485, i64* %PC.i888
  store i64 %483, i64* %RDX.i889, align 8
  store %struct.Memory* %loadMem_42f0c1, %struct.Memory** %MEMORY
  %loadMem_42f0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RAX.i886 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 15
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %494 to i64*
  %495 = load i64, i64* %RBP.i887
  %496 = sub i64 %495, 24
  %497 = load i64, i64* %PC.i885
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC.i885
  %499 = inttoptr i64 %496 to i64*
  %500 = load i64, i64* %499
  store i64 %500, i64* %RAX.i886, align 8
  store %struct.Memory* %loadMem_42f0c5, %struct.Memory** %MEMORY
  %loadMem_42f0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 11
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %RDI.i884 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %RAX.i883
  %511 = load i64, i64* %PC.i882
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC.i882
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513
  store i64 %514, i64* %RDI.i884, align 8
  store %struct.Memory* %loadMem_42f0c9, %struct.Memory** %MEMORY
  %loadMem1_42f0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %PC.i881
  %519 = add i64 %518, -185196
  %520 = load i64, i64* %PC.i881
  %521 = add i64 %520, 5
  %522 = load i64, i64* %PC.i881
  %523 = add i64 %522, 5
  store i64 %523, i64* %PC.i881
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %521, i64* %527
  store i64 %526, i64* %524, align 8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %519, i64* %528, align 8
  store %struct.Memory* %loadMem1_42f0cc, %struct.Memory** %MEMORY
  %loadMem2_42f0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f0cc = load i64, i64* %3
  %call2_42f0cc = call %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* %0, i64 %loadPC_42f0cc, %struct.Memory* %loadMem2_42f0cc)
  store %struct.Memory* %call2_42f0cc, %struct.Memory** %MEMORY
  %loadMem_42f0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 1
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %EAX.i880 = bitcast %union.anon* %534 to i32*
  %535 = load i32, i32* %EAX.i880
  %536 = zext i32 %535 to i64
  %537 = load i64, i64* %PC.i879
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC.i879
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %539, align 1
  %540 = and i32 %535, 255
  %541 = call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %544, i8* %545, align 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %546, align 1
  %547 = icmp eq i32 %535, 0
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %548, i8* %549, align 1
  %550 = lshr i32 %535, 31
  %551 = trunc i32 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %551, i8* %552, align 1
  %553 = lshr i32 %535, 31
  %554 = xor i32 %550, %553
  %555 = add i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %557, i8* %558, align 1
  store %struct.Memory* %loadMem_42f0d1, %struct.Memory** %MEMORY
  %loadMem_42f0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %PC.i878
  %563 = add i64 %562, 13
  %564 = load i64, i64* %PC.i878
  %565 = add i64 %564, 6
  %566 = load i64, i64* %PC.i878
  %567 = add i64 %566, 6
  store i64 %567, i64* %PC.i878
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %569 = load i8, i8* %568, align 1
  %570 = icmp eq i8 %569, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %BRANCH_TAKEN, align 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %573 = select i1 %570, i64 %563, i64 %565
  store i64 %573, i64* %572, align 8
  store %struct.Memory* %loadMem_42f0d4, %struct.Memory** %MEMORY
  %loadBr_42f0d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f0d4 = icmp eq i8 %loadBr_42f0d4, 1
  br i1 %cmpBr_42f0d4, label %block_.L_42f0e1, label %block_42f0da

block_42f0da:                                     ; preds = %block_.L_42f0b7
  %loadMem_42f0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i877 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i877
  %581 = sub i64 %580, 40
  %582 = load i64, i64* %PC.i876
  %583 = add i64 %582, 7
  store i64 %583, i64* %PC.i876
  %584 = inttoptr i64 %581 to i32*
  store i32 19, i32* %584
  store %struct.Memory* %loadMem_42f0da, %struct.Memory** %MEMORY
  br label %block_.L_42f0e1

block_.L_42f0e1:                                  ; preds = %block_42f0da, %block_.L_42f0b7
  %loadMem_42f0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 33
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 11
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RDI.i874 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 15
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %593 to i64*
  %594 = load i64, i64* %RBP.i875
  %595 = sub i64 %594, 40
  %596 = load i64, i64* %PC.i873
  %597 = add i64 %596, 3
  store i64 %597, i64* %PC.i873
  %598 = inttoptr i64 %595 to i32*
  %599 = load i32, i32* %598
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RDI.i874, align 8
  store %struct.Memory* %loadMem_42f0e1, %struct.Memory** %MEMORY
  %loadMem1_42f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %603 to i64*
  %604 = load i64, i64* %PC.i872
  %605 = add i64 %604, -3252
  %606 = load i64, i64* %PC.i872
  %607 = add i64 %606, 5
  %608 = load i64, i64* %PC.i872
  %609 = add i64 %608, 5
  store i64 %609, i64* %PC.i872
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %611 = load i64, i64* %610, align 8
  %612 = add i64 %611, -8
  %613 = inttoptr i64 %612 to i64*
  store i64 %607, i64* %613
  store i64 %612, i64* %610, align 8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %605, i64* %614, align 8
  store %struct.Memory* %loadMem1_42f0e4, %struct.Memory** %MEMORY
  %loadMem2_42f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f0e4 = load i64, i64* %3
  %call2_42f0e4 = call %struct.Memory* @sub_42e430.gnugo_clear_board(%struct.State* %0, i64 %loadPC_42f0e4, %struct.Memory* %loadMem2_42f0e4)
  store %struct.Memory* %call2_42f0e4, %struct.Memory** %MEMORY
  %loadMem_42f0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 15
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RBP.i871 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %621, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %622 to %"class.std::bitset"*
  %623 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %624 = load i64, i64* %RBP.i871
  %625 = sub i64 %624, 48
  %626 = load i64, i64* %PC.i870
  %627 = add i64 %626, 5
  store i64 %627, i64* %PC.i870
  %628 = inttoptr i64 %625 to float*
  %629 = load float, float* %628
  %630 = bitcast i8* %623 to float*
  store float %629, float* %630, align 1
  %631 = getelementptr inbounds i8, i8* %623, i64 4
  %632 = bitcast i8* %631 to float*
  store float 0.000000e+00, float* %632, align 1
  %633 = getelementptr inbounds i8, i8* %623, i64 8
  %634 = bitcast i8* %633 to float*
  store float 0.000000e+00, float* %634, align 1
  %635 = getelementptr inbounds i8, i8* %623, i64 12
  %636 = bitcast i8* %635 to float*
  store float 0.000000e+00, float* %636, align 1
  store %struct.Memory* %loadMem_42f0e9, %struct.Memory** %MEMORY
  %loadMem1_42f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %PC.i869
  %641 = add i64 %640, -3150
  %642 = load i64, i64* %PC.i869
  %643 = add i64 %642, 5
  %644 = load i64, i64* %PC.i869
  %645 = add i64 %644, 5
  store i64 %645, i64* %PC.i869
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = add i64 %647, -8
  %649 = inttoptr i64 %648 to i64*
  store i64 %643, i64* %649
  store i64 %648, i64* %646, align 8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %641, i64* %650, align 8
  store %struct.Memory* %loadMem1_42f0ee, %struct.Memory** %MEMORY
  %loadMem2_42f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f0ee = load i64, i64* %3
  %call2_42f0ee = call %struct.Memory* @sub_42e4a0.gnugo_set_komi(%struct.State* %0, i64 %loadPC_42f0ee, %struct.Memory* %loadMem2_42f0ee)
  store %struct.Memory* %call2_42f0ee, %struct.Memory** %MEMORY
  %loadMem_42f0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 15
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %656 to i64*
  %657 = load i64, i64* %RBP.i868
  %658 = sub i64 %657, 32
  %659 = load i64, i64* %PC.i867
  %660 = add i64 %659, 5
  store i64 %660, i64* %PC.i867
  %661 = inttoptr i64 %658 to i64*
  %662 = load i64, i64* %661
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %663, align 1
  %664 = trunc i64 %662 to i32
  %665 = and i32 %664, 255
  %666 = call i32 @llvm.ctpop.i32(i32 %665)
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %669, i8* %670, align 1
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %671, align 1
  %672 = icmp eq i64 %662, 0
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %673, i8* %674, align 1
  %675 = lshr i64 %662, 63
  %676 = trunc i64 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %676, i8* %677, align 1
  %678 = lshr i64 %662, 63
  %679 = xor i64 %675, %678
  %680 = add i64 %679, %678
  %681 = icmp eq i64 %680, 2
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %682, i8* %683, align 1
  store %struct.Memory* %loadMem_42f0f3, %struct.Memory** %MEMORY
  %loadMem_42f0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %PC.i866
  %688 = add i64 %687, 245
  %689 = load i64, i64* %PC.i866
  %690 = add i64 %689, 6
  %691 = load i64, i64* %PC.i866
  %692 = add i64 %691, 6
  store i64 %692, i64* %PC.i866
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %694 = load i8, i8* %693, align 1
  store i8 %694, i8* %BRANCH_TAKEN, align 1
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %696 = icmp ne i8 %694, 0
  %697 = select i1 %696, i64 %688, i64 %690
  store i64 %697, i64* %695, align 8
  store %struct.Memory* %loadMem_42f0f8, %struct.Memory** %MEMORY
  %loadBr_42f0f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f0f8 = icmp eq i8 %loadBr_42f0f8, 1
  br i1 %cmpBr_42f0f8, label %block_.L_42f1ed, label %block_42f0fe

block_42f0fe:                                     ; preds = %block_.L_42f0e1
  %loadMem_42f0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 33
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 1
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 15
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %RBP.i865
  %708 = sub i64 %707, 32
  %709 = load i64, i64* %PC.i863
  %710 = add i64 %709, 4
  store i64 %710, i64* %PC.i863
  %711 = inttoptr i64 %708 to i64*
  %712 = load i64, i64* %711
  store i64 %712, i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_42f0fe, %struct.Memory** %MEMORY
  %loadMem_42f102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RAX.i861 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 5
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RCX.i862 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RAX.i861
  %723 = load i64, i64* %PC.i860
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC.i860
  %725 = inttoptr i64 %722 to i8*
  %726 = load i8, i8* %725
  %727 = sext i8 %726 to i64
  %728 = and i64 %727, 4294967295
  store i64 %728, i64* %RCX.i862, align 8
  store %struct.Memory* %loadMem_42f102, %struct.Memory** %MEMORY
  %loadMem_42f105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 5
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %ECX.i859 = bitcast %union.anon* %734 to i32*
  %735 = load i32, i32* %ECX.i859
  %736 = zext i32 %735 to i64
  %737 = load i64, i64* %PC.i858
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i858
  %739 = sub i32 %735, 48
  %740 = icmp ult i32 %735, 48
  %741 = zext i1 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %741, i8* %742, align 1
  %743 = and i32 %739, 255
  %744 = call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %747, i8* %748, align 1
  %749 = xor i64 48, %736
  %750 = trunc i64 %749 to i32
  %751 = xor i32 %750, %739
  %752 = lshr i32 %751, 4
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %754, i8* %755, align 1
  %756 = icmp eq i32 %739, 0
  %757 = zext i1 %756 to i8
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %757, i8* %758, align 1
  %759 = lshr i32 %739, 31
  %760 = trunc i32 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %760, i8* %761, align 1
  %762 = lshr i32 %735, 31
  %763 = xor i32 %759, %762
  %764 = add i32 %763, %762
  %765 = icmp eq i32 %764, 2
  %766 = zext i1 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %766, i8* %767, align 1
  store %struct.Memory* %loadMem_42f105, %struct.Memory** %MEMORY
  %loadMem_42f108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 33
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %770 to i64*
  %771 = load i64, i64* %PC.i857
  %772 = add i64 %771, 88
  %773 = load i64, i64* %PC.i857
  %774 = add i64 %773, 6
  %775 = load i64, i64* %PC.i857
  %776 = add i64 %775, 6
  store i64 %776, i64* %PC.i857
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %778 = load i8, i8* %777, align 1
  %779 = icmp ne i8 %778, 0
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %781 = load i8, i8* %780, align 1
  %782 = icmp ne i8 %781, 0
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %784 = load i8, i8* %783, align 1
  %785 = icmp ne i8 %784, 0
  %786 = xor i1 %782, %785
  %787 = or i1 %779, %786
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %BRANCH_TAKEN, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %790 = select i1 %787, i64 %772, i64 %774
  store i64 %790, i64* %789, align 8
  store %struct.Memory* %loadMem_42f108, %struct.Memory** %MEMORY
  %loadBr_42f108 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f108 = icmp eq i8 %loadBr_42f108, 1
  br i1 %cmpBr_42f108, label %block_.L_42f160, label %block_42f10e

block_42f10e:                                     ; preds = %block_42f0fe
  %loadMem_42f10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 1
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RAX.i855 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 15
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %RBP.i856
  %801 = sub i64 %800, 32
  %802 = load i64, i64* %PC.i854
  %803 = add i64 %802, 4
  store i64 %803, i64* %PC.i854
  %804 = inttoptr i64 %801 to i64*
  %805 = load i64, i64* %804
  store i64 %805, i64* %RAX.i855, align 8
  store %struct.Memory* %loadMem_42f10e, %struct.Memory** %MEMORY
  %loadMem_42f112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 33
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 1
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %811 to i64*
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 5
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %RCX.i853 = bitcast %union.anon* %814 to i64*
  %815 = load i64, i64* %RAX.i852
  %816 = load i64, i64* %PC.i851
  %817 = add i64 %816, 3
  store i64 %817, i64* %PC.i851
  %818 = inttoptr i64 %815 to i8*
  %819 = load i8, i8* %818
  %820 = sext i8 %819 to i64
  %821 = and i64 %820, 4294967295
  store i64 %821, i64* %RCX.i853, align 8
  store %struct.Memory* %loadMem_42f112, %struct.Memory** %MEMORY
  %loadMem_42f115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 5
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %ECX.i850 = bitcast %union.anon* %827 to i32*
  %828 = load i32, i32* %ECX.i850
  %829 = zext i32 %828 to i64
  %830 = load i64, i64* %PC.i849
  %831 = add i64 %830, 3
  store i64 %831, i64* %PC.i849
  %832 = sub i32 %828, 57
  %833 = icmp ult i32 %828, 57
  %834 = zext i1 %833 to i8
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %834, i8* %835, align 1
  %836 = and i32 %832, 255
  %837 = call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %840, i8* %841, align 1
  %842 = xor i64 57, %829
  %843 = trunc i64 %842 to i32
  %844 = xor i32 %843, %832
  %845 = lshr i32 %844, 4
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %847, i8* %848, align 1
  %849 = icmp eq i32 %832, 0
  %850 = zext i1 %849 to i8
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %850, i8* %851, align 1
  %852 = lshr i32 %832, 31
  %853 = trunc i32 %852 to i8
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %853, i8* %854, align 1
  %855 = lshr i32 %828, 31
  %856 = xor i32 %852, %855
  %857 = add i32 %856, %855
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %859, i8* %860, align 1
  store %struct.Memory* %loadMem_42f115, %struct.Memory** %MEMORY
  %loadMem_42f118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %PC.i848
  %865 = add i64 %864, 72
  %866 = load i64, i64* %PC.i848
  %867 = add i64 %866, 6
  %868 = load i64, i64* %PC.i848
  %869 = add i64 %868, 6
  store i64 %869, i64* %PC.i848
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %871 = load i8, i8* %870, align 1
  %872 = icmp eq i8 %871, 0
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %874 = load i8, i8* %873, align 1
  %875 = icmp ne i8 %874, 0
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %877 = load i8, i8* %876, align 1
  %878 = icmp ne i8 %877, 0
  %879 = xor i1 %875, %878
  %880 = xor i1 %879, true
  %881 = and i1 %872, %880
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %BRANCH_TAKEN, align 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %884 = select i1 %881, i64 %865, i64 %867
  store i64 %884, i64* %883, align 8
  store %struct.Memory* %loadMem_42f118, %struct.Memory** %MEMORY
  %loadBr_42f118 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f118 = icmp eq i8 %loadBr_42f118, 1
  br i1 %cmpBr_42f118, label %block_.L_42f160, label %block_42f11e

block_42f11e:                                     ; preds = %block_42f10e
  %loadMem_42f11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 11
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RDI.i846 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RBP.i847
  %895 = sub i64 %894, 32
  %896 = load i64, i64* %PC.i845
  %897 = add i64 %896, 4
  store i64 %897, i64* %PC.i845
  %898 = inttoptr i64 %895 to i64*
  %899 = load i64, i64* %898
  store i64 %899, i64* %RDI.i846, align 8
  store %struct.Memory* %loadMem_42f11e, %struct.Memory** %MEMORY
  %loadMem1_42f122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %PC.i844
  %904 = add i64 %903, -188274
  %905 = load i64, i64* %PC.i844
  %906 = add i64 %905, 5
  %907 = load i64, i64* %PC.i844
  %908 = add i64 %907, 5
  store i64 %908, i64* %PC.i844
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %910 = load i64, i64* %909, align 8
  %911 = add i64 %910, -8
  %912 = inttoptr i64 %911 to i64*
  store i64 %906, i64* %912
  store i64 %911, i64* %909, align 8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %904, i64* %913, align 8
  store %struct.Memory* %loadMem1_42f122, %struct.Memory** %MEMORY
  %loadMem2_42f122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f122 = load i64, i64* %3
  %914 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %loadMem2_42f122)
  store %struct.Memory* %914, %struct.Memory** %MEMORY
  %loadMem_42f127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %EAX.i840 = bitcast %union.anon* %920 to i32*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i841
  %925 = sub i64 %924, 64
  %926 = load i32, i32* %EAX.i840
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i839
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC.i839
  %930 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %930
  store %struct.Memory* %loadMem_42f127, %struct.Memory** %MEMORY
  %loadMem_42f12a = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i838 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %PC.i837
  %938 = add i64 %937, 7
  store i64 %938, i64* %PC.i837
  %939 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RAX.i838, align 8
  store %struct.Memory* %loadMem_42f12a, %struct.Memory** %MEMORY
  %loadMem_42f131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 33
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 1
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %946 to i64*
  %947 = load i64, i64* %RAX.i836
  %948 = load i64, i64* %PC.i835
  %949 = add i64 %948, 5
  store i64 %949, i64* %PC.i835
  %950 = and i64 128, %947
  %951 = trunc i64 %950 to i32
  store i64 %950, i64* %RAX.i836, align 8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %952, align 1
  %953 = and i32 %951, 255
  %954 = call i32 @llvm.ctpop.i32(i32 %953)
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  %957 = xor i8 %956, 1
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %957, i8* %958, align 1
  %959 = icmp eq i32 %951, 0
  %960 = zext i1 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %960, i8* %961, align 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %962, align 1
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %963, align 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %964, align 1
  store %struct.Memory* %loadMem_42f131, %struct.Memory** %MEMORY
  %loadMem_42f136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 33
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 1
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %EAX.i834 = bitcast %union.anon* %970 to i32*
  %971 = load i32, i32* %EAX.i834
  %972 = zext i32 %971 to i64
  %973 = load i64, i64* %PC.i833
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC.i833
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %975, align 1
  %976 = and i32 %971, 255
  %977 = call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %980, i8* %981, align 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %982, align 1
  %983 = icmp eq i32 %971, 0
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %984, i8* %985, align 1
  %986 = lshr i32 %971, 31
  %987 = trunc i32 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %987, i8* %988, align 1
  %989 = lshr i32 %971, 31
  %990 = xor i32 %986, %989
  %991 = add i32 %990, %989
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %993, i8* %994, align 1
  store %struct.Memory* %loadMem_42f136, %struct.Memory** %MEMORY
  %loadMem_42f139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %PC.i832
  %999 = add i64 %998, 11
  %1000 = load i64, i64* %PC.i832
  %1001 = add i64 %1000, 6
  %1002 = load i64, i64* %PC.i832
  %1003 = add i64 %1002, 6
  store i64 %1003, i64* %PC.i832
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1005 = load i8, i8* %1004, align 1
  %1006 = icmp eq i8 %1005, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %BRANCH_TAKEN, align 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1009 = select i1 %1006, i64 %999, i64 %1001
  store i64 %1009, i64* %1008, align 8
  store %struct.Memory* %loadMem_42f139, %struct.Memory** %MEMORY
  %loadBr_42f139 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f139 = icmp eq i8 %loadBr_42f139, 1
  br i1 %cmpBr_42f139, label %block_.L_42f144, label %block_42f13f

block_42f13f:                                     ; preds = %block_42f11e
  %loadMem_42f13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %PC.i831
  %1014 = add i64 %1013, 28
  %1015 = load i64, i64* %PC.i831
  %1016 = add i64 %1015, 5
  store i64 %1016, i64* %PC.i831
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1014, i64* %1017, align 8
  store %struct.Memory* %loadMem_42f13f, %struct.Memory** %MEMORY
  br label %block_.L_42f15b

block_.L_42f144:                                  ; preds = %block_42f11e
  %loadMem_42f144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 11
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RDI.i830 = bitcast %union.anon* %1023 to i64*
  %1024 = load i64, i64* %PC.i829
  %1025 = add i64 %1024, 10
  store i64 %1025, i64* %PC.i829
  store i64 ptrtoint (%G__0x57cac0_type* @G__0x57cac0 to i64), i64* %RDI.i830, align 8
  store %struct.Memory* %loadMem_42f144, %struct.Memory** %MEMORY
  %loadMem_42f14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 9
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RSI.i827 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 15
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %RBP.i828
  %1036 = sub i64 %1035, 64
  %1037 = load i64, i64* %PC.i826
  %1038 = add i64 %1037, 3
  store i64 %1038, i64* %PC.i826
  %1039 = inttoptr i64 %1036 to i32*
  %1040 = load i32, i32* %1039
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RSI.i827, align 8
  store %struct.Memory* %loadMem_42f14e, %struct.Memory** %MEMORY
  %loadMem_42f151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 1
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %1048 = bitcast %union.anon* %1047 to %struct.anon.2*
  %AL.i825 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1048, i32 0, i32 0
  %1049 = load i64, i64* %PC.i824
  %1050 = add i64 %1049, 2
  store i64 %1050, i64* %PC.i824
  store i8 0, i8* %AL.i825, align 1
  store %struct.Memory* %loadMem_42f151, %struct.Memory** %MEMORY
  %loadMem1_42f153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %PC.i823
  %1055 = add i64 %1054, 142429
  %1056 = load i64, i64* %PC.i823
  %1057 = add i64 %1056, 5
  %1058 = load i64, i64* %PC.i823
  %1059 = add i64 %1058, 5
  store i64 %1059, i64* %PC.i823
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1061 = load i64, i64* %1060, align 8
  %1062 = add i64 %1061, -8
  %1063 = inttoptr i64 %1062 to i64*
  store i64 %1057, i64* %1063
  store i64 %1062, i64* %1060, align 8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1055, i64* %1064, align 8
  store %struct.Memory* %loadMem1_42f153, %struct.Memory** %MEMORY
  %loadMem2_42f153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f153 = load i64, i64* %3
  %call2_42f153 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42f153, %struct.Memory* %loadMem2_42f153)
  store %struct.Memory* %call2_42f153, %struct.Memory** %MEMORY
  %loadMem_42f158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 1
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %EAX.i821 = bitcast %union.anon* %1070 to i32*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 15
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %RBP.i822
  %1075 = sub i64 %1074, 96
  %1076 = load i32, i32* %EAX.i821
  %1077 = zext i32 %1076 to i64
  %1078 = load i64, i64* %PC.i820
  %1079 = add i64 %1078, 3
  store i64 %1079, i64* %PC.i820
  %1080 = inttoptr i64 %1075 to i32*
  store i32 %1076, i32* %1080
  store %struct.Memory* %loadMem_42f158, %struct.Memory** %MEMORY
  br label %block_.L_42f15b

block_.L_42f15b:                                  ; preds = %block_.L_42f144, %block_42f13f
  %loadMem_42f15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1083 to i64*
  %1084 = load i64, i64* %PC.i819
  %1085 = add i64 %1084, 141
  %1086 = load i64, i64* %PC.i819
  %1087 = add i64 %1086, 5
  store i64 %1087, i64* %PC.i819
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1085, i64* %1088, align 8
  store %struct.Memory* %loadMem_42f15b, %struct.Memory** %MEMORY
  br label %block_.L_42f1e8

block_.L_42f160:                                  ; preds = %block_42f10e, %block_42f0fe
  %loadMem_42f160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 1
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RAX.i817 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 15
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1097 to i64*
  %1098 = load i64, i64* %RBP.i818
  %1099 = sub i64 %1098, 32
  %1100 = load i64, i64* %PC.i816
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %PC.i816
  %1102 = inttoptr i64 %1099 to i64*
  %1103 = load i64, i64* %1102
  store i64 %1103, i64* %RAX.i817, align 8
  store %struct.Memory* %loadMem_42f160, %struct.Memory** %MEMORY
  %loadMem_42f164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 1
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %1109 to i64*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 5
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %1112 to i64*
  %1113 = load i64, i64* %RAX.i814
  %1114 = load i64, i64* %PC.i813
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i813
  %1116 = inttoptr i64 %1113 to i8*
  %1117 = load i8, i8* %1116
  %1118 = sext i8 %1117 to i64
  %1119 = and i64 %1118, 4294967295
  store i64 %1119, i64* %RCX.i815, align 8
  store %struct.Memory* %loadMem_42f164, %struct.Memory** %MEMORY
  %loadMem_42f167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 5
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %RCX.i812
  %1127 = load i64, i64* %PC.i811
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %PC.i811
  %1129 = trunc i64 %1126 to i32
  %1130 = sub i32 %1129, 65
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RCX.i812, align 8
  %1132 = icmp ult i32 %1129, 65
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1133, i8* %1134, align 1
  %1135 = and i32 %1130, 255
  %1136 = call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1139, i8* %1140, align 1
  %1141 = xor i64 65, %1126
  %1142 = trunc i64 %1141 to i32
  %1143 = xor i32 %1142, %1130
  %1144 = lshr i32 %1143, 4
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1146, i8* %1147, align 1
  %1148 = icmp eq i32 %1130, 0
  %1149 = zext i1 %1148 to i8
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1149, i8* %1150, align 1
  %1151 = lshr i32 %1130, 31
  %1152 = trunc i32 %1151 to i8
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1152, i8* %1153, align 1
  %1154 = lshr i32 %1129, 31
  %1155 = xor i32 %1151, %1154
  %1156 = add i32 %1155, %1154
  %1157 = icmp eq i32 %1156, 2
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1158, i8* %1159, align 1
  store %struct.Memory* %loadMem_42f167, %struct.Memory** %MEMORY
  %loadMem_42f16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 5
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %ECX.i809 = bitcast %union.anon* %1165 to i32*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RBP.i810
  %1170 = sub i64 %1169, 60
  %1171 = load i32, i32* %ECX.i809
  %1172 = zext i32 %1171 to i64
  %1173 = load i64, i64* %PC.i808
  %1174 = add i64 %1173, 3
  store i64 %1174, i64* %PC.i808
  %1175 = inttoptr i64 %1170 to i32*
  store i32 %1171, i32* %1175
  store %struct.Memory* %loadMem_42f16a, %struct.Memory** %MEMORY
  %loadMem_42f16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 1
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RBP.i807
  %1186 = sub i64 %1185, 32
  %1187 = load i64, i64* %PC.i805
  %1188 = add i64 %1187, 4
  store i64 %1188, i64* %PC.i805
  %1189 = inttoptr i64 %1186 to i64*
  %1190 = load i64, i64* %1189
  store i64 %1190, i64* %RAX.i806, align 8
  store %struct.Memory* %loadMem_42f16d, %struct.Memory** %MEMORY
  %loadMem_42f171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 5
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RCX.i804 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RAX.i803
  %1201 = load i64, i64* %PC.i802
  %1202 = add i64 %1201, 3
  store i64 %1202, i64* %PC.i802
  %1203 = inttoptr i64 %1200 to i8*
  %1204 = load i8, i8* %1203
  %1205 = sext i8 %1204 to i64
  %1206 = and i64 %1205, 4294967295
  store i64 %1206, i64* %RCX.i804, align 8
  store %struct.Memory* %loadMem_42f171, %struct.Memory** %MEMORY
  %loadMem_42f174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 5
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %ECX.i801 = bitcast %union.anon* %1212 to i32*
  %1213 = load i32, i32* %ECX.i801
  %1214 = zext i32 %1213 to i64
  %1215 = load i64, i64* %PC.i800
  %1216 = add i64 %1215, 3
  store i64 %1216, i64* %PC.i800
  %1217 = sub i32 %1213, 73
  %1218 = icmp ult i32 %1213, 73
  %1219 = zext i1 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1219, i8* %1220, align 1
  %1221 = and i32 %1217, 255
  %1222 = call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1225, i8* %1226, align 1
  %1227 = xor i64 73, %1214
  %1228 = trunc i64 %1227 to i32
  %1229 = xor i32 %1228, %1217
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1232, i8* %1233, align 1
  %1234 = icmp eq i32 %1217, 0
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1235, i8* %1236, align 1
  %1237 = lshr i32 %1217, 31
  %1238 = trunc i32 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1238, i8* %1239, align 1
  %1240 = lshr i32 %1213, 31
  %1241 = xor i32 %1237, %1240
  %1242 = add i32 %1241, %1240
  %1243 = icmp eq i32 %1242, 2
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1244, i8* %1245, align 1
  store %struct.Memory* %loadMem_42f174, %struct.Memory** %MEMORY
  %loadMem_42f177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1248 to i64*
  %1249 = load i64, i64* %PC.i799
  %1250 = add i64 %1249, 15
  %1251 = load i64, i64* %PC.i799
  %1252 = add i64 %1251, 6
  %1253 = load i64, i64* %PC.i799
  %1254 = add i64 %1253, 6
  store i64 %1254, i64* %PC.i799
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1256 = load i8, i8* %1255, align 1
  %1257 = icmp ne i8 %1256, 0
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1259 = load i8, i8* %1258, align 1
  %1260 = icmp ne i8 %1259, 0
  %1261 = xor i1 %1257, %1260
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %BRANCH_TAKEN, align 1
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1264 = select i1 %1261, i64 %1250, i64 %1252
  store i64 %1264, i64* %1263, align 8
  store %struct.Memory* %loadMem_42f177, %struct.Memory** %MEMORY
  %loadBr_42f177 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f177 = icmp eq i8 %loadBr_42f177, 1
  br i1 %cmpBr_42f177, label %block_.L_42f186, label %block_42f17d

block_42f17d:                                     ; preds = %block_.L_42f160
  %loadMem_42f17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 1
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RAX.i797 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i798
  %1275 = sub i64 %1274, 60
  %1276 = load i64, i64* %PC.i796
  %1277 = add i64 %1276, 3
  store i64 %1277, i64* %PC.i796
  %1278 = inttoptr i64 %1275 to i32*
  %1279 = load i32, i32* %1278
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i797, align 8
  store %struct.Memory* %loadMem_42f17d, %struct.Memory** %MEMORY
  %loadMem_42f180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %1286 to i64*
  %1287 = load i64, i64* %RAX.i795
  %1288 = load i64, i64* %PC.i794
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %PC.i794
  %1290 = trunc i64 %1287 to i32
  %1291 = add i32 -1, %1290
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i795, align 8
  %1293 = icmp ult i32 %1291, %1290
  %1294 = icmp ult i32 %1291, -1
  %1295 = or i1 %1293, %1294
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1296, i8* %1297, align 1
  %1298 = and i32 %1291, 255
  %1299 = call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1302, i8* %1303, align 1
  %1304 = xor i64 -1, %1287
  %1305 = trunc i64 %1304 to i32
  %1306 = xor i32 %1305, %1291
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1309, i8* %1310, align 1
  %1311 = icmp eq i32 %1291, 0
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1312, i8* %1313, align 1
  %1314 = lshr i32 %1291, 31
  %1315 = trunc i32 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1315, i8* %1316, align 1
  %1317 = lshr i32 %1290, 31
  %1318 = xor i32 %1314, %1317
  %1319 = xor i32 %1314, 1
  %1320 = add i32 %1318, %1319
  %1321 = icmp eq i32 %1320, 2
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1322, i8* %1323, align 1
  store %struct.Memory* %loadMem_42f180, %struct.Memory** %MEMORY
  %loadMem_42f183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %EAX.i792 = bitcast %union.anon* %1329 to i32*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RBP.i793
  %1334 = sub i64 %1333, 60
  %1335 = load i32, i32* %EAX.i792
  %1336 = zext i32 %1335 to i64
  %1337 = load i64, i64* %PC.i791
  %1338 = add i64 %1337, 3
  store i64 %1338, i64* %PC.i791
  %1339 = inttoptr i64 %1334 to i32*
  store i32 %1335, i32* %1339
  store %struct.Memory* %loadMem_42f183, %struct.Memory** %MEMORY
  br label %block_.L_42f186

block_.L_42f186:                                  ; preds = %block_42f17d, %block_.L_42f160
  %loadMem_42f186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %1345 to i64*
  %1346 = load i64, i64* %PC.i789
  %1347 = add i64 %1346, 7
  store i64 %1347, i64* %PC.i789
  %1348 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RAX.i790, align 8
  store %struct.Memory* %loadMem_42f186, %struct.Memory** %MEMORY
  %loadMem_42f18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 5
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RCX.i787 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 15
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %1358 to i64*
  %1359 = load i64, i64* %RBP.i788
  %1360 = sub i64 %1359, 32
  %1361 = load i64, i64* %PC.i786
  %1362 = add i64 %1361, 4
  store i64 %1362, i64* %PC.i786
  %1363 = inttoptr i64 %1360 to i64*
  %1364 = load i64, i64* %1363
  store i64 %1364, i64* %RCX.i787, align 8
  store %struct.Memory* %loadMem_42f18d, %struct.Memory** %MEMORY
  %loadMem_42f191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 5
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RCX.i785 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %RCX.i785
  %1372 = load i64, i64* %PC.i784
  %1373 = add i64 %1372, 4
  store i64 %1373, i64* %PC.i784
  %1374 = add i64 1, %1371
  store i64 %1374, i64* %RCX.i785, align 8
  %1375 = icmp ult i64 %1374, %1371
  %1376 = icmp ult i64 %1374, 1
  %1377 = or i1 %1375, %1376
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1378, i8* %1379, align 1
  %1380 = trunc i64 %1374 to i32
  %1381 = and i32 %1380, 255
  %1382 = call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1385, i8* %1386, align 1
  %1387 = xor i64 1, %1371
  %1388 = xor i64 %1387, %1374
  %1389 = lshr i64 %1388, 4
  %1390 = trunc i64 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1391, i8* %1392, align 1
  %1393 = icmp eq i64 %1374, 0
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1394, i8* %1395, align 1
  %1396 = lshr i64 %1374, 63
  %1397 = trunc i64 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1397, i8* %1398, align 1
  %1399 = lshr i64 %1371, 63
  %1400 = xor i64 %1396, %1399
  %1401 = add i64 %1400, %1396
  %1402 = icmp eq i64 %1401, 2
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1403, i8* %1404, align 1
  store %struct.Memory* %loadMem_42f191, %struct.Memory** %MEMORY
  %loadMem_42f195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 5
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 11
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RDI.i783 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RCX.i782
  %1415 = load i64, i64* %PC.i781
  %1416 = add i64 %1415, 3
  store i64 %1416, i64* %PC.i781
  store i64 %1414, i64* %RDI.i783, align 8
  store %struct.Memory* %loadMem_42f195, %struct.Memory** %MEMORY
  %loadMem_42f198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 1
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %EAX.i779 = bitcast %union.anon* %1422 to i32*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 15
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %1425 to i64*
  %1426 = load i64, i64* %RBP.i780
  %1427 = sub i64 %1426, 100
  %1428 = load i32, i32* %EAX.i779
  %1429 = zext i32 %1428 to i64
  %1430 = load i64, i64* %PC.i778
  %1431 = add i64 %1430, 3
  store i64 %1431, i64* %PC.i778
  %1432 = inttoptr i64 %1427 to i32*
  store i32 %1428, i32* %1432
  store %struct.Memory* %loadMem_42f198, %struct.Memory** %MEMORY
  %loadMem1_42f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1435 to i64*
  %1436 = load i64, i64* %PC.i777
  %1437 = add i64 %1436, -188395
  %1438 = load i64, i64* %PC.i777
  %1439 = add i64 %1438, 5
  %1440 = load i64, i64* %PC.i777
  %1441 = add i64 %1440, 5
  store i64 %1441, i64* %PC.i777
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1443 = load i64, i64* %1442, align 8
  %1444 = add i64 %1443, -8
  %1445 = inttoptr i64 %1444 to i64*
  store i64 %1439, i64* %1445
  store i64 %1444, i64* %1442, align 8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1437, i64* %1446, align 8
  store %struct.Memory* %loadMem1_42f19b, %struct.Memory** %MEMORY
  %loadMem2_42f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f19b = load i64, i64* %3
  %1447 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %loadMem2_42f19b)
  store %struct.Memory* %1447, %struct.Memory** %MEMORY
  %loadMem_42f1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 7
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RDX.i772 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 15
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %RBP.i773
  %1458 = sub i64 %1457, 100
  %1459 = load i64, i64* %PC.i771
  %1460 = add i64 %1459, 3
  store i64 %1460, i64* %PC.i771
  %1461 = inttoptr i64 %1458 to i32*
  %1462 = load i32, i32* %1461
  %1463 = zext i32 %1462 to i64
  store i64 %1463, i64* %RDX.i772, align 8
  store %struct.Memory* %loadMem_42f1a0, %struct.Memory** %MEMORY
  %loadMem_42f1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 1
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %EAX.i769 = bitcast %union.anon* %1469 to i32*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 7
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RDX.i770 = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RDX.i770
  %1474 = load i32, i32* %EAX.i769
  %1475 = zext i32 %1474 to i64
  %1476 = load i64, i64* %PC.i768
  %1477 = add i64 %1476, 2
  store i64 %1477, i64* %PC.i768
  %1478 = trunc i64 %1473 to i32
  %1479 = sub i32 %1478, %1474
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RDX.i770, align 8
  %1481 = icmp ult i32 %1478, %1474
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1482, i8* %1483, align 1
  %1484 = and i32 %1479, 255
  %1485 = call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1488, i8* %1489, align 1
  %1490 = xor i64 %1475, %1473
  %1491 = trunc i64 %1490 to i32
  %1492 = xor i32 %1491, %1479
  %1493 = lshr i32 %1492, 4
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1495, i8* %1496, align 1
  %1497 = icmp eq i32 %1479, 0
  %1498 = zext i1 %1497 to i8
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1498, i8* %1499, align 1
  %1500 = lshr i32 %1479, 31
  %1501 = trunc i32 %1500 to i8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1501, i8* %1502, align 1
  %1503 = lshr i32 %1478, 31
  %1504 = lshr i32 %1474, 31
  %1505 = xor i32 %1504, %1503
  %1506 = xor i32 %1500, %1503
  %1507 = add i32 %1506, %1505
  %1508 = icmp eq i32 %1507, 2
  %1509 = zext i1 %1508 to i8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1509, i8* %1510, align 1
  store %struct.Memory* %loadMem_42f1a3, %struct.Memory** %MEMORY
  %loadMem_42f1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 7
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %EDX.i766 = bitcast %union.anon* %1516 to i32*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 15
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RBP.i767
  %1521 = sub i64 %1520, 56
  %1522 = load i32, i32* %EDX.i766
  %1523 = zext i32 %1522 to i64
  %1524 = load i64, i64* %PC.i765
  %1525 = add i64 %1524, 3
  store i64 %1525, i64* %PC.i765
  %1526 = inttoptr i64 %1521 to i32*
  store i32 %1522, i32* %1526
  store %struct.Memory* %loadMem_42f1a5, %struct.Memory** %MEMORY
  %loadMem_42f1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 1
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RAX.i764 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %PC.i763
  %1534 = add i64 %1533, 7
  store i64 %1534, i64* %PC.i763
  %1535 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RAX.i764, align 8
  store %struct.Memory* %loadMem_42f1a8, %struct.Memory** %MEMORY
  %loadMem_42f1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 1
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RAX.i762 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RAX.i762
  %1544 = load i64, i64* %PC.i761
  %1545 = add i64 %1544, 5
  store i64 %1545, i64* %PC.i761
  %1546 = and i64 128, %1543
  %1547 = trunc i64 %1546 to i32
  store i64 %1546, i64* %RAX.i762, align 8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1548, align 1
  %1549 = and i32 %1547, 255
  %1550 = call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1553, i8* %1554, align 1
  %1555 = icmp eq i32 %1547, 0
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1556, i8* %1557, align 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1558, align 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1559, align 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1560, align 1
  store %struct.Memory* %loadMem_42f1af, %struct.Memory** %MEMORY
  %loadMem_42f1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 1
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %EAX.i760 = bitcast %union.anon* %1566 to i32*
  %1567 = load i32, i32* %EAX.i760
  %1568 = zext i32 %1567 to i64
  %1569 = load i64, i64* %PC.i759
  %1570 = add i64 %1569, 3
  store i64 %1570, i64* %PC.i759
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1571, align 1
  %1572 = and i32 %1567, 255
  %1573 = call i32 @llvm.ctpop.i32(i32 %1572)
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1576, i8* %1577, align 1
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1578, align 1
  %1579 = icmp eq i32 %1567, 0
  %1580 = zext i1 %1579 to i8
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1580, i8* %1581, align 1
  %1582 = lshr i32 %1567, 31
  %1583 = trunc i32 %1582 to i8
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1583, i8* %1584, align 1
  %1585 = lshr i32 %1567, 31
  %1586 = xor i32 %1582, %1585
  %1587 = add i32 %1586, %1585
  %1588 = icmp eq i32 %1587, 2
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1589, i8* %1590, align 1
  store %struct.Memory* %loadMem_42f1b4, %struct.Memory** %MEMORY
  %loadMem_42f1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1593 to i64*
  %1594 = load i64, i64* %PC.i758
  %1595 = add i64 %1594, 11
  %1596 = load i64, i64* %PC.i758
  %1597 = add i64 %1596, 6
  %1598 = load i64, i64* %PC.i758
  %1599 = add i64 %1598, 6
  store i64 %1599, i64* %PC.i758
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1601 = load i8, i8* %1600, align 1
  %1602 = icmp eq i8 %1601, 0
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %BRANCH_TAKEN, align 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1605 = select i1 %1602, i64 %1595, i64 %1597
  store i64 %1605, i64* %1604, align 8
  store %struct.Memory* %loadMem_42f1b7, %struct.Memory** %MEMORY
  %loadBr_42f1b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f1b7 = icmp eq i8 %loadBr_42f1b7, 1
  br i1 %cmpBr_42f1b7, label %block_.L_42f1c2, label %block_42f1bd

block_42f1bd:                                     ; preds = %block_.L_42f186
  %loadMem_42f1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %PC.i757
  %1610 = add i64 %1609, 38
  %1611 = load i64, i64* %PC.i757
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC.i757
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1610, i64* %1613, align 8
  store %struct.Memory* %loadMem_42f1bd, %struct.Memory** %MEMORY
  br label %block_.L_42f1e3

block_.L_42f1c2:                                  ; preds = %block_.L_42f186
  %loadMem_42f1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 11
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RDI.i756 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %PC.i755
  %1621 = add i64 %1620, 10
  store i64 %1621, i64* %PC.i755
  store i64 ptrtoint (%G__0x57cad7_type* @G__0x57cad7 to i64), i64* %RDI.i756, align 8
  store %struct.Memory* %loadMem_42f1c2, %struct.Memory** %MEMORY
  %loadMem_42f1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 9
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RSI.i753 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 15
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %1630 to i64*
  %1631 = load i64, i64* %RBP.i754
  %1632 = sub i64 %1631, 56
  %1633 = load i64, i64* %PC.i752
  %1634 = add i64 %1633, 3
  store i64 %1634, i64* %PC.i752
  %1635 = inttoptr i64 %1632 to i32*
  %1636 = load i32, i32* %1635
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RSI.i753, align 8
  store %struct.Memory* %loadMem_42f1cc, %struct.Memory** %MEMORY
  %loadMem_42f1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 7
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %RDX.i750 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 15
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1646 to i64*
  %1647 = load i64, i64* %RBP.i751
  %1648 = sub i64 %1647, 60
  %1649 = load i64, i64* %PC.i749
  %1650 = add i64 %1649, 3
  store i64 %1650, i64* %PC.i749
  %1651 = inttoptr i64 %1648 to i32*
  %1652 = load i32, i32* %1651
  %1653 = zext i32 %1652 to i64
  store i64 %1653, i64* %RDX.i750, align 8
  store %struct.Memory* %loadMem_42f1cf, %struct.Memory** %MEMORY
  %loadMem_42f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 5
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RCX.i747 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 15
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %RBP.i748
  %1664 = sub i64 %1663, 56
  %1665 = load i64, i64* %PC.i746
  %1666 = add i64 %1665, 3
  store i64 %1666, i64* %PC.i746
  %1667 = inttoptr i64 %1664 to i32*
  %1668 = load i32, i32* %1667
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RCX.i747, align 8
  store %struct.Memory* %loadMem_42f1d2, %struct.Memory** %MEMORY
  %loadMem_42f1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 33
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 17
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %R8D.i744 = bitcast %union.anon* %1675 to i32*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 15
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %1678 to i64*
  %1679 = bitcast i32* %R8D.i744 to i64*
  %1680 = load i64, i64* %RBP.i745
  %1681 = sub i64 %1680, 60
  %1682 = load i64, i64* %PC.i743
  %1683 = add i64 %1682, 4
  store i64 %1683, i64* %PC.i743
  %1684 = inttoptr i64 %1681 to i32*
  %1685 = load i32, i32* %1684
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %1679, align 8
  store %struct.Memory* %loadMem_42f1d5, %struct.Memory** %MEMORY
  %loadMem_42f1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 1
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %1693 = bitcast %union.anon* %1692 to %struct.anon.2*
  %AL.i742 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1693, i32 0, i32 0
  %1694 = load i64, i64* %PC.i741
  %1695 = add i64 %1694, 2
  store i64 %1695, i64* %PC.i741
  store i8 0, i8* %AL.i742, align 1
  store %struct.Memory* %loadMem_42f1d9, %struct.Memory** %MEMORY
  %loadMem1_42f1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %PC.i740
  %1700 = add i64 %1699, 142293
  %1701 = load i64, i64* %PC.i740
  %1702 = add i64 %1701, 5
  %1703 = load i64, i64* %PC.i740
  %1704 = add i64 %1703, 5
  store i64 %1704, i64* %PC.i740
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1706 = load i64, i64* %1705, align 8
  %1707 = add i64 %1706, -8
  %1708 = inttoptr i64 %1707 to i64*
  store i64 %1702, i64* %1708
  store i64 %1707, i64* %1705, align 8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1700, i64* %1709, align 8
  store %struct.Memory* %loadMem1_42f1db, %struct.Memory** %MEMORY
  %loadMem2_42f1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f1db = load i64, i64* %3
  %call2_42f1db = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42f1db, %struct.Memory* %loadMem2_42f1db)
  store %struct.Memory* %call2_42f1db, %struct.Memory** %MEMORY
  %loadMem_42f1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 1
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %EAX.i738 = bitcast %union.anon* %1715 to i32*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 15
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RBP.i739 = bitcast %union.anon* %1718 to i64*
  %1719 = load i64, i64* %RBP.i739
  %1720 = sub i64 %1719, 104
  %1721 = load i32, i32* %EAX.i738
  %1722 = zext i32 %1721 to i64
  %1723 = load i64, i64* %PC.i737
  %1724 = add i64 %1723, 3
  store i64 %1724, i64* %PC.i737
  %1725 = inttoptr i64 %1720 to i32*
  store i32 %1721, i32* %1725
  store %struct.Memory* %loadMem_42f1e0, %struct.Memory** %MEMORY
  br label %block_.L_42f1e3

block_.L_42f1e3:                                  ; preds = %block_.L_42f1c2, %block_42f1bd
  %loadMem_42f1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 33
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %PC.i736
  %1730 = add i64 %1729, 5
  %1731 = load i64, i64* %PC.i736
  %1732 = add i64 %1731, 5
  store i64 %1732, i64* %PC.i736
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1730, i64* %1733, align 8
  store %struct.Memory* %loadMem_42f1e3, %struct.Memory** %MEMORY
  br label %block_.L_42f1e8

block_.L_42f1e8:                                  ; preds = %block_.L_42f1e3, %block_.L_42f15b
  %loadMem_42f1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1736 to i64*
  %1737 = load i64, i64* %PC.i735
  %1738 = add i64 %1737, 5
  %1739 = load i64, i64* %PC.i735
  %1740 = add i64 %1739, 5
  store i64 %1740, i64* %PC.i735
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1738, i64* %1741, align 8
  store %struct.Memory* %loadMem_42f1e8, %struct.Memory** %MEMORY
  br label %block_.L_42f1ed

block_.L_42f1ed:                                  ; preds = %block_.L_42f1e8, %block_.L_42f0e1
  %loadMem_42f1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 9
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RSI.i734 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %PC.i733
  %1749 = add i64 %1748, 10
  store i64 %1749, i64* %PC.i733
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI.i734, align 8
  store %struct.Memory* %loadMem_42f1ed, %struct.Memory** %MEMORY
  %loadMem_42f1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 7
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RDX.i731 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 15
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1758 to i64*
  %1759 = load i64, i64* %RBP.i732
  %1760 = sub i64 %1759, 44
  %1761 = load i64, i64* %PC.i730
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %PC.i730
  store i64 %1760, i64* %RDX.i731, align 8
  store %struct.Memory* %loadMem_42f1f7, %struct.Memory** %MEMORY
  %loadMem_42f1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 1
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 15
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %RBP.i729
  %1773 = sub i64 %1772, 24
  %1774 = load i64, i64* %PC.i727
  %1775 = add i64 %1774, 4
  store i64 %1775, i64* %PC.i727
  %1776 = inttoptr i64 %1773 to i64*
  %1777 = load i64, i64* %1776
  store i64 %1777, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_42f1fb, %struct.Memory** %MEMORY
  %loadMem_42f1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 33
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 1
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 11
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RDI.i726 = bitcast %union.anon* %1786 to i64*
  %1787 = load i64, i64* %RAX.i725
  %1788 = load i64, i64* %PC.i724
  %1789 = add i64 %1788, 3
  store i64 %1789, i64* %PC.i724
  %1790 = inttoptr i64 %1787 to i64*
  %1791 = load i64, i64* %1790
  store i64 %1791, i64* %RDI.i726, align 8
  store %struct.Memory* %loadMem_42f1ff, %struct.Memory** %MEMORY
  %loadMem1_42f202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1794 to i64*
  %1795 = load i64, i64* %PC.i723
  %1796 = add i64 %1795, -185506
  %1797 = load i64, i64* %PC.i723
  %1798 = add i64 %1797, 5
  %1799 = load i64, i64* %PC.i723
  %1800 = add i64 %1799, 5
  store i64 %1800, i64* %PC.i723
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1802 = load i64, i64* %1801, align 8
  %1803 = add i64 %1802, -8
  %1804 = inttoptr i64 %1803 to i64*
  store i64 %1798, i64* %1804
  store i64 %1803, i64* %1801, align 8
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1796, i64* %1805, align 8
  store %struct.Memory* %loadMem1_42f202, %struct.Memory** %MEMORY
  %loadMem2_42f202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f202 = load i64, i64* %3
  %call2_42f202 = call %struct.Memory* @sub_401d60.sgfGetIntProperty(%struct.State* %0, i64 %loadPC_42f202, %struct.Memory* %loadMem2_42f202)
  store %struct.Memory* %call2_42f202, %struct.Memory** %MEMORY
  %loadMem_42f207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 1
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %EAX.i722 = bitcast %union.anon* %1811 to i32*
  %1812 = load i32, i32* %EAX.i722
  %1813 = zext i32 %1812 to i64
  %1814 = load i64, i64* %PC.i721
  %1815 = add i64 %1814, 3
  store i64 %1815, i64* %PC.i721
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1816, align 1
  %1817 = and i32 %1812, 255
  %1818 = call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1821, i8* %1822, align 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1823, align 1
  %1824 = icmp eq i32 %1812, 0
  %1825 = zext i1 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1825, i8* %1826, align 1
  %1827 = lshr i32 %1812, 31
  %1828 = trunc i32 %1827 to i8
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1828, i8* %1829, align 1
  %1830 = lshr i32 %1812, 31
  %1831 = xor i32 %1827, %1830
  %1832 = add i32 %1831, %1830
  %1833 = icmp eq i32 %1832, 2
  %1834 = zext i1 %1833 to i8
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1834, i8* %1835, align 1
  store %struct.Memory* %loadMem_42f207, %struct.Memory** %MEMORY
  %loadMem_42f20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1838 to i64*
  %1839 = load i64, i64* %PC.i720
  %1840 = add i64 %1839, 32
  %1841 = load i64, i64* %PC.i720
  %1842 = add i64 %1841, 6
  %1843 = load i64, i64* %PC.i720
  %1844 = add i64 %1843, 6
  store i64 %1844, i64* %PC.i720
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1846 = load i8, i8* %1845, align 1
  store i8 %1846, i8* %BRANCH_TAKEN, align 1
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1848 = icmp ne i8 %1846, 0
  %1849 = select i1 %1848, i64 %1840, i64 %1842
  store i64 %1849, i64* %1847, align 8
  store %struct.Memory* %loadMem_42f20a, %struct.Memory** %MEMORY
  %loadBr_42f20a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f20a = icmp eq i8 %loadBr_42f20a, 1
  br i1 %cmpBr_42f20a, label %block_.L_42f22a, label %block_42f210

block_42f210:                                     ; preds = %block_.L_42f1ed
  %loadMem_42f210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 15
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RBP.i719 = bitcast %union.anon* %1855 to i64*
  %1856 = load i64, i64* %RBP.i719
  %1857 = sub i64 %1856, 44
  %1858 = load i64, i64* %PC.i718
  %1859 = add i64 %1858, 4
  store i64 %1859, i64* %PC.i718
  %1860 = inttoptr i64 %1857 to i32*
  %1861 = load i32, i32* %1860
  %1862 = sub i32 %1861, 1
  %1863 = icmp ult i32 %1861, 1
  %1864 = zext i1 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1864, i8* %1865, align 1
  %1866 = and i32 %1862, 255
  %1867 = call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1870, i8* %1871, align 1
  %1872 = xor i32 %1861, 1
  %1873 = xor i32 %1872, %1862
  %1874 = lshr i32 %1873, 4
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1876, i8* %1877, align 1
  %1878 = icmp eq i32 %1862, 0
  %1879 = zext i1 %1878 to i8
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1879, i8* %1880, align 1
  %1881 = lshr i32 %1862, 31
  %1882 = trunc i32 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1882, i8* %1883, align 1
  %1884 = lshr i32 %1861, 31
  %1885 = xor i32 %1881, %1884
  %1886 = add i32 %1885, %1884
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1888, i8* %1889, align 1
  store %struct.Memory* %loadMem_42f210, %struct.Memory** %MEMORY
  %loadMem_42f214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %PC.i717
  %1894 = add i64 %1893, 22
  %1895 = load i64, i64* %PC.i717
  %1896 = add i64 %1895, 6
  %1897 = load i64, i64* %PC.i717
  %1898 = add i64 %1897, 6
  store i64 %1898, i64* %PC.i717
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1900 = load i8, i8* %1899, align 1
  %1901 = icmp ne i8 %1900, 0
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1903 = load i8, i8* %1902, align 1
  %1904 = icmp ne i8 %1903, 0
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1906 = load i8, i8* %1905, align 1
  %1907 = icmp ne i8 %1906, 0
  %1908 = xor i1 %1904, %1907
  %1909 = or i1 %1901, %1908
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %BRANCH_TAKEN, align 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1912 = select i1 %1909, i64 %1894, i64 %1896
  store i64 %1912, i64* %1911, align 8
  store %struct.Memory* %loadMem_42f214, %struct.Memory** %MEMORY
  %loadBr_42f214 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f214 = icmp eq i8 %loadBr_42f214, 1
  br i1 %cmpBr_42f214, label %block_.L_42f22a, label %block_42f21a

block_42f21a:                                     ; preds = %block_42f210
  %loadMem_42f21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 1
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RAX.i715 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 15
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RBP.i716
  %1923 = sub i64 %1922, 44
  %1924 = load i64, i64* %PC.i714
  %1925 = add i64 %1924, 3
  store i64 %1925, i64* %PC.i714
  %1926 = inttoptr i64 %1923 to i32*
  %1927 = load i32, i32* %1926
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RAX.i715, align 8
  store %struct.Memory* %loadMem_42f21a, %struct.Memory** %MEMORY
  %loadMem_42f21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 5
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RCX.i712 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 15
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %1937 to i64*
  %1938 = load i64, i64* %RBP.i713
  %1939 = sub i64 %1938, 16
  %1940 = load i64, i64* %PC.i711
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i711
  %1942 = inttoptr i64 %1939 to i64*
  %1943 = load i64, i64* %1942
  store i64 %1943, i64* %RCX.i712, align 8
  store %struct.Memory* %loadMem_42f21d, %struct.Memory** %MEMORY
  %loadMem_42f221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 1
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %EAX.i709 = bitcast %union.anon* %1949 to i32*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 5
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RCX.i710
  %1954 = load i32, i32* %EAX.i709
  %1955 = zext i32 %1954 to i64
  %1956 = load i64, i64* %PC.i708
  %1957 = add i64 %1956, 2
  store i64 %1957, i64* %PC.i708
  %1958 = inttoptr i64 %1953 to i32*
  store i32 %1954, i32* %1958
  store %struct.Memory* %loadMem_42f221, %struct.Memory** %MEMORY
  %loadMem_42f223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 15
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %1964 to i64*
  %1965 = load i64, i64* %RBP.i707
  %1966 = sub i64 %1965, 52
  %1967 = load i64, i64* %PC.i706
  %1968 = add i64 %1967, 7
  store i64 %1968, i64* %PC.i706
  %1969 = inttoptr i64 %1966 to i32*
  store i32 1, i32* %1969
  store %struct.Memory* %loadMem_42f223, %struct.Memory** %MEMORY
  br label %block_.L_42f22a

block_.L_42f22a:                                  ; preds = %block_42f21a, %block_42f210, %block_.L_42f1ed
  %loadMem_42f22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 1
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RBP.i705
  %1980 = sub i64 %1979, 24
  %1981 = load i64, i64* %PC.i703
  %1982 = add i64 %1981, 4
  store i64 %1982, i64* %PC.i703
  %1983 = inttoptr i64 %1980 to i64*
  %1984 = load i64, i64* %1983
  store i64 %1984, i64* %RAX.i704, align 8
  store %struct.Memory* %loadMem_42f22a, %struct.Memory** %MEMORY
  %loadMem_42f22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 1
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %1990 to i64*
  %1991 = load i64, i64* %RAX.i702
  %1992 = add i64 %1991, 8
  %1993 = load i64, i64* %PC.i701
  %1994 = add i64 %1993, 8
  store i64 %1994, i64* %PC.i701
  %1995 = inttoptr i64 %1992 to i64*
  store i64 0, i64* %1995
  store %struct.Memory* %loadMem_42f22e, %struct.Memory** %MEMORY
  br label %block_.L_42f236

block_.L_42f236:                                  ; preds = %block_.L_42f774, %block_.L_42f22a
  %loadMem_42f236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 11
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %RDI.i699 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 15
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %RBP.i700
  %2006 = sub i64 %2005, 24
  %2007 = load i64, i64* %PC.i698
  %2008 = add i64 %2007, 4
  store i64 %2008, i64* %PC.i698
  %2009 = inttoptr i64 %2006 to i64*
  %2010 = load i64, i64* %2009
  store i64 %2010, i64* %RDI.i699, align 8
  store %struct.Memory* %loadMem_42f236, %struct.Memory** %MEMORY
  %loadMem1_42f23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2013 to i64*
  %2014 = load i64, i64* %PC.i697
  %2015 = add i64 %2014, -175482
  %2016 = load i64, i64* %PC.i697
  %2017 = add i64 %2016, 5
  %2018 = load i64, i64* %PC.i697
  %2019 = add i64 %2018, 5
  store i64 %2019, i64* %PC.i697
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2021 = load i64, i64* %2020, align 8
  %2022 = add i64 %2021, -8
  %2023 = inttoptr i64 %2022 to i64*
  store i64 %2017, i64* %2023
  store i64 %2022, i64* %2020, align 8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2015, i64* %2024, align 8
  store %struct.Memory* %loadMem1_42f23a, %struct.Memory** %MEMORY
  %loadMem2_42f23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f23a = load i64, i64* %3
  %call2_42f23a = call %struct.Memory* @sub_4044c0.sgftreeForward(%struct.State* %0, i64 %loadPC_42f23a, %struct.Memory* %loadMem2_42f23a)
  store %struct.Memory* %call2_42f23a, %struct.Memory** %MEMORY
  %loadMem_42f23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 33
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 1
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %EAX.i696 = bitcast %union.anon* %2030 to i32*
  %2031 = load i32, i32* %EAX.i696
  %2032 = zext i32 %2031 to i64
  %2033 = load i64, i64* %PC.i695
  %2034 = add i64 %2033, 3
  store i64 %2034, i64* %PC.i695
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2035, align 1
  %2036 = and i32 %2031, 255
  %2037 = call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2040, i8* %2041, align 1
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2042, align 1
  %2043 = icmp eq i32 %2031, 0
  %2044 = zext i1 %2043 to i8
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2044, i8* %2045, align 1
  %2046 = lshr i32 %2031, 31
  %2047 = trunc i32 %2046 to i8
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2047, i8* %2048, align 1
  %2049 = lshr i32 %2031, 31
  %2050 = xor i32 %2046, %2049
  %2051 = add i32 %2050, %2049
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2053, i8* %2054, align 1
  store %struct.Memory* %loadMem_42f23f, %struct.Memory** %MEMORY
  %loadMem_42f242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2056 = getelementptr inbounds %struct.GPR, %struct.GPR* %2055, i32 0, i32 33
  %2057 = getelementptr inbounds %struct.Reg, %struct.Reg* %2056, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2057 to i64*
  %2058 = load i64, i64* %PC.i694
  %2059 = add i64 %2058, 1335
  %2060 = load i64, i64* %PC.i694
  %2061 = add i64 %2060, 6
  %2062 = load i64, i64* %PC.i694
  %2063 = add i64 %2062, 6
  store i64 %2063, i64* %PC.i694
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2065 = load i8, i8* %2064, align 1
  store i8 %2065, i8* %BRANCH_TAKEN, align 1
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2067 = icmp ne i8 %2065, 0
  %2068 = select i1 %2067, i64 %2059, i64 %2061
  store i64 %2068, i64* %2066, align 8
  store %struct.Memory* %loadMem_42f242, %struct.Memory** %MEMORY
  %loadBr_42f242 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f242 = icmp eq i8 %loadBr_42f242, 1
  br i1 %cmpBr_42f242, label %block_.L_42f779, label %block_42f248

block_42f248:                                     ; preds = %block_.L_42f236
  %loadMem_42f248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 1
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 15
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RBP.i693
  %2079 = sub i64 %2078, 24
  %2080 = load i64, i64* %PC.i691
  %2081 = add i64 %2080, 4
  store i64 %2081, i64* %PC.i691
  %2082 = inttoptr i64 %2079 to i64*
  %2083 = load i64, i64* %2082
  store i64 %2083, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_42f248, %struct.Memory** %MEMORY
  %loadMem_42f24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 1
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %2089 to i64*
  %2090 = load i64, i64* %RAX.i690
  %2091 = add i64 %2090, 8
  %2092 = load i64, i64* %PC.i689
  %2093 = add i64 %2092, 4
  store i64 %2093, i64* %PC.i689
  %2094 = inttoptr i64 %2091 to i64*
  %2095 = load i64, i64* %2094
  store i64 %2095, i64* %RAX.i690, align 8
  store %struct.Memory* %loadMem_42f24c, %struct.Memory** %MEMORY
  %loadMem_42f250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 33
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2098 to i64*
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 1
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %2101 to i64*
  %2102 = load i64, i64* %RAX.i688
  %2103 = load i64, i64* %PC.i687
  %2104 = add i64 %2103, 3
  store i64 %2104, i64* %PC.i687
  %2105 = inttoptr i64 %2102 to i64*
  %2106 = load i64, i64* %2105
  store i64 %2106, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_42f250, %struct.Memory** %MEMORY
  %loadMem_42f253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 1
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 15
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RBP.i686
  %2117 = sub i64 %2116, 80
  %2118 = load i64, i64* %RAX.i685
  %2119 = load i64, i64* %PC.i684
  %2120 = add i64 %2119, 4
  store i64 %2120, i64* %PC.i684
  %2121 = inttoptr i64 %2117 to i64*
  store i64 %2118, i64* %2121
  store %struct.Memory* %loadMem_42f253, %struct.Memory** %MEMORY
  br label %block_.L_42f257

block_.L_42f257:                                  ; preds = %block_.L_42f764, %block_42f248
  %loadMem_42f257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 15
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %RBP.i683
  %2129 = sub i64 %2128, 80
  %2130 = load i64, i64* %PC.i682
  %2131 = add i64 %2130, 5
  store i64 %2131, i64* %PC.i682
  %2132 = inttoptr i64 %2129 to i64*
  %2133 = load i64, i64* %2132
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2134, align 1
  %2135 = trunc i64 %2133 to i32
  %2136 = and i32 %2135, 255
  %2137 = call i32 @llvm.ctpop.i32(i32 %2136)
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  %2140 = xor i8 %2139, 1
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2140, i8* %2141, align 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2142, align 1
  %2143 = icmp eq i64 %2133, 0
  %2144 = zext i1 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2144, i8* %2145, align 1
  %2146 = lshr i64 %2133, 63
  %2147 = trunc i64 %2146 to i8
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2147, i8* %2148, align 1
  %2149 = lshr i64 %2133, 63
  %2150 = xor i64 %2146, %2149
  %2151 = add i64 %2150, %2149
  %2152 = icmp eq i64 %2151, 2
  %2153 = zext i1 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2153, i8* %2154, align 1
  store %struct.Memory* %loadMem_42f257, %struct.Memory** %MEMORY
  %loadMem_42f25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2157 to i64*
  %2158 = load i64, i64* %PC.i681
  %2159 = add i64 %2158, 1304
  %2160 = load i64, i64* %PC.i681
  %2161 = add i64 %2160, 6
  %2162 = load i64, i64* %PC.i681
  %2163 = add i64 %2162, 6
  store i64 %2163, i64* %PC.i681
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2165 = load i8, i8* %2164, align 1
  store i8 %2165, i8* %BRANCH_TAKEN, align 1
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2167 = icmp ne i8 %2165, 0
  %2168 = select i1 %2167, i64 %2159, i64 %2161
  store i64 %2168, i64* %2166, align 8
  store %struct.Memory* %loadMem_42f25c, %struct.Memory** %MEMORY
  %loadBr_42f25c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f25c = icmp eq i8 %loadBr_42f25c, 1
  br i1 %cmpBr_42f25c, label %block_.L_42f774, label %block_42f262

block_42f262:                                     ; preds = %block_.L_42f257
  %loadMem_42f262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 33
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2171 to i64*
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 1
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %2174 to i64*
  %2175 = load i64, i64* %PC.i679
  %2176 = add i64 %2175, 7
  store i64 %2176, i64* %PC.i679
  %2177 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %2178 = zext i32 %2177 to i64
  store i64 %2178, i64* %RAX.i680, align 8
  store %struct.Memory* %loadMem_42f262, %struct.Memory** %MEMORY
  %loadMem_42f269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 33
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 1
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %2184 to i64*
  %2185 = load i64, i64* %RAX.i678
  %2186 = load i64, i64* %PC.i677
  %2187 = add i64 %2186, 5
  store i64 %2187, i64* %PC.i677
  %2188 = and i64 128, %2185
  %2189 = trunc i64 %2188 to i32
  store i64 %2188, i64* %RAX.i678, align 8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2190, align 1
  %2191 = and i32 %2189, 255
  %2192 = call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2195, i8* %2196, align 1
  %2197 = icmp eq i32 %2189, 0
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2198, i8* %2199, align 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2200, align 1
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2201, align 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2202, align 1
  store %struct.Memory* %loadMem_42f269, %struct.Memory** %MEMORY
  %loadMem_42f26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 33
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2207 = getelementptr inbounds %struct.GPR, %struct.GPR* %2206, i32 0, i32 1
  %2208 = getelementptr inbounds %struct.Reg, %struct.Reg* %2207, i32 0, i32 0
  %EAX.i676 = bitcast %union.anon* %2208 to i32*
  %2209 = load i32, i32* %EAX.i676
  %2210 = zext i32 %2209 to i64
  %2211 = load i64, i64* %PC.i675
  %2212 = add i64 %2211, 3
  store i64 %2212, i64* %PC.i675
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2213, align 1
  %2214 = and i32 %2209, 255
  %2215 = call i32 @llvm.ctpop.i32(i32 %2214)
  %2216 = trunc i32 %2215 to i8
  %2217 = and i8 %2216, 1
  %2218 = xor i8 %2217, 1
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2218, i8* %2219, align 1
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2220, align 1
  %2221 = icmp eq i32 %2209, 0
  %2222 = zext i1 %2221 to i8
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2222, i8* %2223, align 1
  %2224 = lshr i32 %2209, 31
  %2225 = trunc i32 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2225, i8* %2226, align 1
  %2227 = lshr i32 %2209, 31
  %2228 = xor i32 %2224, %2227
  %2229 = add i32 %2228, %2227
  %2230 = icmp eq i32 %2229, 2
  %2231 = zext i1 %2230 to i8
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2231, i8* %2232, align 1
  store %struct.Memory* %loadMem_42f26e, %struct.Memory** %MEMORY
  %loadMem_42f271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2235 to i64*
  %2236 = load i64, i64* %PC.i674
  %2237 = add i64 %2236, 11
  %2238 = load i64, i64* %PC.i674
  %2239 = add i64 %2238, 6
  %2240 = load i64, i64* %PC.i674
  %2241 = add i64 %2240, 6
  store i64 %2241, i64* %PC.i674
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2243 = load i8, i8* %2242, align 1
  %2244 = icmp eq i8 %2243, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %BRANCH_TAKEN, align 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2247 = select i1 %2244, i64 %2237, i64 %2239
  store i64 %2247, i64* %2246, align 8
  store %struct.Memory* %loadMem_42f271, %struct.Memory** %MEMORY
  %loadBr_42f271 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f271 = icmp eq i8 %loadBr_42f271, 1
  br i1 %cmpBr_42f271, label %block_.L_42f27c, label %block_42f277

block_42f277:                                     ; preds = %block_42f262
  %loadMem_42f277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %PC.i673
  %2252 = add i64 %2251, 63
  %2253 = load i64, i64* %PC.i673
  %2254 = add i64 %2253, 5
  store i64 %2254, i64* %PC.i673
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2252, i64* %2255, align 8
  store %struct.Memory* %loadMem_42f277, %struct.Memory** %MEMORY
  br label %block_.L_42f2b6

block_.L_42f27c:                                  ; preds = %block_42f262
  %loadMem_42f27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 11
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RDI.i672 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %PC.i671
  %2263 = add i64 %2262, 10
  store i64 %2263, i64* %PC.i671
  store i64 ptrtoint (%G__0x57caf9_type* @G__0x57caf9 to i64), i64* %RDI.i672, align 8
  store %struct.Memory* %loadMem_42f27c, %struct.Memory** %MEMORY
  %loadMem_42f286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 15
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RBP.i670
  %2274 = sub i64 %2273, 80
  %2275 = load i64, i64* %PC.i668
  %2276 = add i64 %2275, 4
  store i64 %2276, i64* %PC.i668
  %2277 = inttoptr i64 %2274 to i64*
  %2278 = load i64, i64* %2277
  store i64 %2278, i64* %RAX.i669, align 8
  store %struct.Memory* %loadMem_42f286, %struct.Memory** %MEMORY
  %loadMem_42f28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 33
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 1
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RAX.i666 = bitcast %union.anon* %2284 to i64*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 5
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %2287 to i64*
  %2288 = load i64, i64* %RAX.i666
  %2289 = add i64 %2288, 8
  %2290 = load i64, i64* %PC.i665
  %2291 = add i64 %2290, 4
  store i64 %2291, i64* %PC.i665
  %2292 = inttoptr i64 %2289 to i16*
  %2293 = load i16, i16* %2292
  %2294 = sext i16 %2293 to i64
  %2295 = and i64 %2294, 4294967295
  store i64 %2295, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_42f28a, %struct.Memory** %MEMORY
  %loadMem_42f28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 33
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 5
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RCX.i664
  %2303 = load i64, i64* %PC.i663
  %2304 = add i64 %2303, 6
  store i64 %2304, i64* %PC.i663
  %2305 = and i64 255, %2302
  %2306 = trunc i64 %2305 to i32
  store i64 %2305, i64* %RCX.i664, align 8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2307, align 1
  %2308 = and i32 %2306, 255
  %2309 = call i32 @llvm.ctpop.i32(i32 %2308)
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  %2312 = xor i8 %2311, 1
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2312, i8* %2313, align 1
  %2314 = icmp eq i32 %2306, 0
  %2315 = zext i1 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2315, i8* %2316, align 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2317, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2318, align 1
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2319, align 1
  store %struct.Memory* %loadMem_42f28e, %struct.Memory** %MEMORY
  %loadMem_42f294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 1
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 15
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %RBP.i662
  %2330 = sub i64 %2329, 80
  %2331 = load i64, i64* %PC.i660
  %2332 = add i64 %2331, 4
  store i64 %2332, i64* %PC.i660
  %2333 = inttoptr i64 %2330 to i64*
  %2334 = load i64, i64* %2333
  store i64 %2334, i64* %RAX.i661, align 8
  store %struct.Memory* %loadMem_42f294, %struct.Memory** %MEMORY
  %loadMem_42f298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 1
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 7
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %2343 to i64*
  %2344 = load i64, i64* %RAX.i658
  %2345 = add i64 %2344, 8
  %2346 = load i64, i64* %PC.i657
  %2347 = add i64 %2346, 4
  store i64 %2347, i64* %PC.i657
  %2348 = inttoptr i64 %2345 to i16*
  %2349 = load i16, i16* %2348
  %2350 = sext i16 %2349 to i64
  %2351 = and i64 %2350, 4294967295
  store i64 %2351, i64* %RDX.i659, align 8
  store %struct.Memory* %loadMem_42f298, %struct.Memory** %MEMORY
  %loadMem_42f29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 7
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RDX.i656 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RDX.i656
  %2359 = load i64, i64* %PC.i655
  %2360 = add i64 %2359, 3
  store i64 %2360, i64* %PC.i655
  %2361 = shl i64 %2358, 32
  %2362 = ashr exact i64 %2361, 32
  %2363 = ashr i64 %2362, 7
  %2364 = lshr i64 %2363, 1
  %2365 = trunc i64 %2363 to i8
  %2366 = and i8 %2365, 1
  %2367 = trunc i64 %2364 to i32
  %2368 = and i64 %2364, 4294967295
  store i64 %2368, i64* %RDX.i656, align 8
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2366, i8* %2369, align 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2371 = and i32 %2367, 255
  %2372 = call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  store i8 %2375, i8* %2370, align 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2376, align 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2378 = icmp eq i32 %2367, 0
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %2377, align 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2381 = lshr i32 %2367, 31
  %2382 = trunc i32 %2381 to i8
  store i8 %2382, i8* %2380, align 1
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2383, align 1
  store %struct.Memory* %loadMem_42f29c, %struct.Memory** %MEMORY
  %loadMem_42f29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 1
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 15
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %RBP.i654
  %2394 = sub i64 %2393, 80
  %2395 = load i64, i64* %PC.i652
  %2396 = add i64 %2395, 4
  store i64 %2396, i64* %PC.i652
  %2397 = inttoptr i64 %2394 to i64*
  %2398 = load i64, i64* %2397
  store i64 %2398, i64* %RAX.i653, align 8
  store %struct.Memory* %loadMem_42f29f, %struct.Memory** %MEMORY
  %loadMem_42f2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 33
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 1
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %2404 to i64*
  %2405 = load i64, i64* %RAX.i651
  %2406 = add i64 %2405, 16
  %2407 = load i64, i64* %PC.i650
  %2408 = add i64 %2407, 4
  store i64 %2408, i64* %PC.i650
  %2409 = inttoptr i64 %2406 to i64*
  %2410 = load i64, i64* %2409
  store i64 %2410, i64* %RAX.i651, align 8
  store %struct.Memory* %loadMem_42f2a3, %struct.Memory** %MEMORY
  %loadMem_42f2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 5
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %ECX.i648 = bitcast %union.anon* %2416 to i32*
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 9
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %RSI.i649 = bitcast %union.anon* %2419 to i64*
  %2420 = load i32, i32* %ECX.i648
  %2421 = zext i32 %2420 to i64
  %2422 = load i64, i64* %PC.i647
  %2423 = add i64 %2422, 2
  store i64 %2423, i64* %PC.i647
  %2424 = and i64 %2421, 4294967295
  store i64 %2424, i64* %RSI.i649, align 8
  store %struct.Memory* %loadMem_42f2a7, %struct.Memory** %MEMORY
  %loadMem_42f2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 1
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 5
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %2433 to i64*
  %2434 = load i64, i64* %RAX.i645
  %2435 = load i64, i64* %PC.i644
  %2436 = add i64 %2435, 3
  store i64 %2436, i64* %PC.i644
  store i64 %2434, i64* %RCX.i646, align 8
  store %struct.Memory* %loadMem_42f2a9, %struct.Memory** %MEMORY
  %loadMem_42f2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 1
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %2443 = bitcast %union.anon* %2442 to %struct.anon.2*
  %AL.i643 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2443, i32 0, i32 0
  %2444 = load i64, i64* %PC.i642
  %2445 = add i64 %2444, 2
  store i64 %2445, i64* %PC.i642
  store i8 0, i8* %AL.i643, align 1
  store %struct.Memory* %loadMem_42f2ac, %struct.Memory** %MEMORY
  %loadMem1_42f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2448 to i64*
  %2449 = load i64, i64* %PC.i641
  %2450 = add i64 %2449, 142082
  %2451 = load i64, i64* %PC.i641
  %2452 = add i64 %2451, 5
  %2453 = load i64, i64* %PC.i641
  %2454 = add i64 %2453, 5
  store i64 %2454, i64* %PC.i641
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2456 = load i64, i64* %2455, align 8
  %2457 = add i64 %2456, -8
  %2458 = inttoptr i64 %2457 to i64*
  store i64 %2452, i64* %2458
  store i64 %2457, i64* %2455, align 8
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2450, i64* %2459, align 8
  store %struct.Memory* %loadMem1_42f2ae, %struct.Memory** %MEMORY
  %loadMem2_42f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f2ae = load i64, i64* %3
  %call2_42f2ae = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42f2ae, %struct.Memory* %loadMem2_42f2ae)
  store %struct.Memory* %call2_42f2ae, %struct.Memory** %MEMORY
  %loadMem_42f2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %EAX.i639 = bitcast %union.anon* %2465 to i32*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 15
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %RBP.i640
  %2470 = sub i64 %2469, 108
  %2471 = load i32, i32* %EAX.i639
  %2472 = zext i32 %2471 to i64
  %2473 = load i64, i64* %PC.i638
  %2474 = add i64 %2473, 3
  store i64 %2474, i64* %PC.i638
  %2475 = inttoptr i64 %2470 to i32*
  store i32 %2471, i32* %2475
  store %struct.Memory* %loadMem_42f2b3, %struct.Memory** %MEMORY
  br label %block_.L_42f2b6

block_.L_42f2b6:                                  ; preds = %block_.L_42f27c, %block_42f277
  %loadMem_42f2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 1
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 15
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %2484 to i64*
  %2485 = load i64, i64* %RBP.i637
  %2486 = sub i64 %2485, 80
  %2487 = load i64, i64* %PC.i635
  %2488 = add i64 %2487, 4
  store i64 %2488, i64* %PC.i635
  %2489 = inttoptr i64 %2486 to i64*
  %2490 = load i64, i64* %2489
  store i64 %2490, i64* %RAX.i636, align 8
  store %struct.Memory* %loadMem_42f2b6, %struct.Memory** %MEMORY
  %loadMem_42f2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 1
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %2496 to i64*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 5
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RCX.i634 = bitcast %union.anon* %2499 to i64*
  %2500 = load i64, i64* %RAX.i633
  %2501 = add i64 %2500, 8
  %2502 = load i64, i64* %PC.i632
  %2503 = add i64 %2502, 4
  store i64 %2503, i64* %PC.i632
  %2504 = inttoptr i64 %2501 to i16*
  %2505 = load i16, i16* %2504
  %2506 = sext i16 %2505 to i64
  %2507 = and i64 %2506, 4294967295
  store i64 %2507, i64* %RCX.i634, align 8
  store %struct.Memory* %loadMem_42f2ba, %struct.Memory** %MEMORY
  %loadMem_42f2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 33
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 5
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %ECX.i630 = bitcast %union.anon* %2513 to i32*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 7
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RDX.i631 = bitcast %union.anon* %2516 to i64*
  %2517 = load i32, i32* %ECX.i630
  %2518 = zext i32 %2517 to i64
  %2519 = load i64, i64* %PC.i629
  %2520 = add i64 %2519, 2
  store i64 %2520, i64* %PC.i629
  %2521 = and i64 %2518, 4294967295
  store i64 %2521, i64* %RDX.i631, align 8
  store %struct.Memory* %loadMem_42f2be, %struct.Memory** %MEMORY
  %loadMem_42f2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 7
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RDX.i628 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RDX.i628
  %2529 = load i64, i64* %PC.i627
  %2530 = add i64 %2529, 6
  store i64 %2530, i64* %PC.i627
  %2531 = trunc i64 %2528 to i32
  %2532 = sub i32 %2531, 8258
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RDX.i628, align 8
  %2534 = icmp ult i32 %2531, 8258
  %2535 = zext i1 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2535, i8* %2536, align 1
  %2537 = and i32 %2532, 255
  %2538 = call i32 @llvm.ctpop.i32(i32 %2537)
  %2539 = trunc i32 %2538 to i8
  %2540 = and i8 %2539, 1
  %2541 = xor i8 %2540, 1
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2541, i8* %2542, align 1
  %2543 = xor i64 8258, %2528
  %2544 = trunc i64 %2543 to i32
  %2545 = xor i32 %2544, %2532
  %2546 = lshr i32 %2545, 4
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2548, i8* %2549, align 1
  %2550 = icmp eq i32 %2532, 0
  %2551 = zext i1 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2551, i8* %2552, align 1
  %2553 = lshr i32 %2532, 31
  %2554 = trunc i32 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2554, i8* %2555, align 1
  %2556 = lshr i32 %2531, 31
  %2557 = xor i32 %2553, %2556
  %2558 = add i32 %2557, %2556
  %2559 = icmp eq i32 %2558, 2
  %2560 = zext i1 %2559 to i8
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2560, i8* %2561, align 1
  store %struct.Memory* %loadMem_42f2c0, %struct.Memory** %MEMORY
  %loadMem_42f2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 5
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %ECX.i625 = bitcast %union.anon* %2567 to i32*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 15
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %2570 to i64*
  %2571 = load i64, i64* %RBP.i626
  %2572 = sub i64 %2571, 112
  %2573 = load i32, i32* %ECX.i625
  %2574 = zext i32 %2573 to i64
  %2575 = load i64, i64* %PC.i624
  %2576 = add i64 %2575, 3
  store i64 %2576, i64* %PC.i624
  %2577 = inttoptr i64 %2572 to i32*
  store i32 %2573, i32* %2577
  store %struct.Memory* %loadMem_42f2c6, %struct.Memory** %MEMORY
  %loadMem_42f2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 33
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2580 to i64*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 7
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %EDX.i622 = bitcast %union.anon* %2583 to i32*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 15
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %RBP.i623
  %2588 = sub i64 %2587, 116
  %2589 = load i32, i32* %EDX.i622
  %2590 = zext i32 %2589 to i64
  %2591 = load i64, i64* %PC.i621
  %2592 = add i64 %2591, 3
  store i64 %2592, i64* %PC.i621
  %2593 = inttoptr i64 %2588 to i32*
  store i32 %2589, i32* %2593
  store %struct.Memory* %loadMem_42f2c9, %struct.Memory** %MEMORY
  %loadMem_42f2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2596 to i64*
  %2597 = load i64, i64* %PC.i620
  %2598 = add i64 %2597, 462
  %2599 = load i64, i64* %PC.i620
  %2600 = add i64 %2599, 6
  %2601 = load i64, i64* %PC.i620
  %2602 = add i64 %2601, 6
  store i64 %2602, i64* %PC.i620
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2604 = load i8, i8* %2603, align 1
  store i8 %2604, i8* %BRANCH_TAKEN, align 1
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2606 = icmp ne i8 %2604, 0
  %2607 = select i1 %2606, i64 %2598, i64 %2600
  store i64 %2607, i64* %2605, align 8
  store %struct.Memory* %loadMem_42f2cc, %struct.Memory** %MEMORY
  %loadBr_42f2cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f2cc = icmp eq i8 %loadBr_42f2cc, 1
  br i1 %cmpBr_42f2cc, label %block_.L_42f49a, label %block_42f2d2

block_42f2d2:                                     ; preds = %block_.L_42f2b6
  %loadMem_42f2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %PC.i619
  %2612 = add i64 %2611, 5
  %2613 = load i64, i64* %PC.i619
  %2614 = add i64 %2613, 5
  store i64 %2614, i64* %PC.i619
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2612, i64* %2615, align 8
  store %struct.Memory* %loadMem_42f2d2, %struct.Memory** %MEMORY
  br label %block_.L_42f2d7

block_.L_42f2d7:                                  ; preds = %block_42f2d2
  %loadMem_42f2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 1
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 15
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %2624 to i64*
  %2625 = load i64, i64* %RBP.i618
  %2626 = sub i64 %2625, 112
  %2627 = load i64, i64* %PC.i616
  %2628 = add i64 %2627, 3
  store i64 %2628, i64* %PC.i616
  %2629 = inttoptr i64 %2626 to i32*
  %2630 = load i32, i32* %2629
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_42f2d7, %struct.Memory** %MEMORY
  %loadMem_42f2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 1
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %2637 to i64*
  %2638 = load i64, i64* %RAX.i615
  %2639 = load i64, i64* %PC.i614
  %2640 = add i64 %2639, 5
  store i64 %2640, i64* %PC.i614
  %2641 = trunc i64 %2638 to i32
  %2642 = sub i32 %2641, 8279
  %2643 = zext i32 %2642 to i64
  store i64 %2643, i64* %RAX.i615, align 8
  %2644 = icmp ult i32 %2641, 8279
  %2645 = zext i1 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2645, i8* %2646, align 1
  %2647 = and i32 %2642, 255
  %2648 = call i32 @llvm.ctpop.i32(i32 %2647)
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2651, i8* %2652, align 1
  %2653 = xor i64 8279, %2638
  %2654 = trunc i64 %2653 to i32
  %2655 = xor i32 %2654, %2642
  %2656 = lshr i32 %2655, 4
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2658, i8* %2659, align 1
  %2660 = icmp eq i32 %2642, 0
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2661, i8* %2662, align 1
  %2663 = lshr i32 %2642, 31
  %2664 = trunc i32 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2664, i8* %2665, align 1
  %2666 = lshr i32 %2641, 31
  %2667 = xor i32 %2663, %2666
  %2668 = add i32 %2667, %2666
  %2669 = icmp eq i32 %2668, 2
  %2670 = zext i1 %2669 to i8
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2670, i8* %2671, align 1
  store %struct.Memory* %loadMem_42f2da, %struct.Memory** %MEMORY
  %loadMem_42f2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 1
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %EAX.i612 = bitcast %union.anon* %2677 to i32*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 15
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %RBP.i613
  %2682 = sub i64 %2681, 120
  %2683 = load i32, i32* %EAX.i612
  %2684 = zext i32 %2683 to i64
  %2685 = load i64, i64* %PC.i611
  %2686 = add i64 %2685, 3
  store i64 %2686, i64* %PC.i611
  %2687 = inttoptr i64 %2682 to i32*
  store i32 %2683, i32* %2687
  store %struct.Memory* %loadMem_42f2df, %struct.Memory** %MEMORY
  %loadMem_42f2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %PC.i610
  %2692 = add i64 %2691, 440
  %2693 = load i64, i64* %PC.i610
  %2694 = add i64 %2693, 6
  %2695 = load i64, i64* %PC.i610
  %2696 = add i64 %2695, 6
  store i64 %2696, i64* %PC.i610
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2698 = load i8, i8* %2697, align 1
  store i8 %2698, i8* %BRANCH_TAKEN, align 1
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2700 = icmp ne i8 %2698, 0
  %2701 = select i1 %2700, i64 %2692, i64 %2694
  store i64 %2701, i64* %2699, align 8
  store %struct.Memory* %loadMem_42f2e2, %struct.Memory** %MEMORY
  %loadBr_42f2e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f2e2 = icmp eq i8 %loadBr_42f2e2, 1
  br i1 %cmpBr_42f2e2, label %block_.L_42f49a, label %block_42f2e8

block_42f2e8:                                     ; preds = %block_.L_42f2d7
  %loadMem_42f2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 33
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %PC.i609
  %2706 = add i64 %2705, 5
  %2707 = load i64, i64* %PC.i609
  %2708 = add i64 %2707, 5
  store i64 %2708, i64* %PC.i609
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2706, i64* %2709, align 8
  store %struct.Memory* %loadMem_42f2e8, %struct.Memory** %MEMORY
  br label %block_.L_42f2ed

block_.L_42f2ed:                                  ; preds = %block_42f2e8
  %loadMem_42f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2714 = getelementptr inbounds %struct.GPR, %struct.GPR* %2713, i32 0, i32 1
  %2715 = getelementptr inbounds %struct.Reg, %struct.Reg* %2714, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %2715 to i64*
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 15
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2718 to i64*
  %2719 = load i64, i64* %RBP.i608
  %2720 = sub i64 %2719, 112
  %2721 = load i64, i64* %PC.i606
  %2722 = add i64 %2721, 3
  store i64 %2722, i64* %PC.i606
  %2723 = inttoptr i64 %2720 to i32*
  %2724 = load i32, i32* %2723
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RAX.i607, align 8
  store %struct.Memory* %loadMem_42f2ed, %struct.Memory** %MEMORY
  %loadMem_42f2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 33
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2728 to i64*
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 1
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %2731 to i64*
  %2732 = load i64, i64* %RAX.i605
  %2733 = load i64, i64* %PC.i604
  %2734 = add i64 %2733, 5
  store i64 %2734, i64* %PC.i604
  %2735 = trunc i64 %2732 to i32
  %2736 = sub i32 %2735, 16961
  %2737 = zext i32 %2736 to i64
  store i64 %2737, i64* %RAX.i605, align 8
  %2738 = icmp ult i32 %2735, 16961
  %2739 = zext i1 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2739, i8* %2740, align 1
  %2741 = and i32 %2736, 255
  %2742 = call i32 @llvm.ctpop.i32(i32 %2741)
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  %2745 = xor i8 %2744, 1
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2745, i8* %2746, align 1
  %2747 = xor i64 16961, %2732
  %2748 = trunc i64 %2747 to i32
  %2749 = xor i32 %2748, %2736
  %2750 = lshr i32 %2749, 4
  %2751 = trunc i32 %2750 to i8
  %2752 = and i8 %2751, 1
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2752, i8* %2753, align 1
  %2754 = icmp eq i32 %2736, 0
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2755, i8* %2756, align 1
  %2757 = lshr i32 %2736, 31
  %2758 = trunc i32 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2758, i8* %2759, align 1
  %2760 = lshr i32 %2735, 31
  %2761 = xor i32 %2757, %2760
  %2762 = add i32 %2761, %2760
  %2763 = icmp eq i32 %2762, 2
  %2764 = zext i1 %2763 to i8
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2764, i8* %2765, align 1
  store %struct.Memory* %loadMem_42f2f0, %struct.Memory** %MEMORY
  %loadMem_42f2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 1
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %EAX.i602 = bitcast %union.anon* %2771 to i32*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 15
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %RBP.i603
  %2776 = sub i64 %2775, 124
  %2777 = load i32, i32* %EAX.i602
  %2778 = zext i32 %2777 to i64
  %2779 = load i64, i64* %PC.i601
  %2780 = add i64 %2779, 3
  store i64 %2780, i64* %PC.i601
  %2781 = inttoptr i64 %2776 to i32*
  store i32 %2777, i32* %2781
  store %struct.Memory* %loadMem_42f2f5, %struct.Memory** %MEMORY
  %loadMem_42f2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %PC.i600
  %2786 = add i64 %2785, 83
  %2787 = load i64, i64* %PC.i600
  %2788 = add i64 %2787, 6
  %2789 = load i64, i64* %PC.i600
  %2790 = add i64 %2789, 6
  store i64 %2790, i64* %PC.i600
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2792 = load i8, i8* %2791, align 1
  store i8 %2792, i8* %BRANCH_TAKEN, align 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2794 = icmp ne i8 %2792, 0
  %2795 = select i1 %2794, i64 %2786, i64 %2788
  store i64 %2795, i64* %2793, align 8
  store %struct.Memory* %loadMem_42f2f8, %struct.Memory** %MEMORY
  %loadBr_42f2f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f2f8 = icmp eq i8 %loadBr_42f2f8, 1
  br i1 %cmpBr_42f2f8, label %block_.L_42f34b, label %block_42f2fe

block_42f2fe:                                     ; preds = %block_.L_42f2ed
  %loadMem_42f2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 33
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2798 to i64*
  %2799 = load i64, i64* %PC.i599
  %2800 = add i64 %2799, 5
  %2801 = load i64, i64* %PC.i599
  %2802 = add i64 %2801, 5
  store i64 %2802, i64* %PC.i599
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2800, i64* %2803, align 8
  store %struct.Memory* %loadMem_42f2fe, %struct.Memory** %MEMORY
  br label %block_.L_42f303

block_.L_42f303:                                  ; preds = %block_42f2fe
  %loadMem_42f303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 1
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RAX.i597 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 15
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %2812 to i64*
  %2813 = load i64, i64* %RBP.i598
  %2814 = sub i64 %2813, 112
  %2815 = load i64, i64* %PC.i596
  %2816 = add i64 %2815, 3
  store i64 %2816, i64* %PC.i596
  %2817 = inttoptr i64 %2814 to i32*
  %2818 = load i32, i32* %2817
  %2819 = zext i32 %2818 to i64
  store i64 %2819, i64* %RAX.i597, align 8
  store %struct.Memory* %loadMem_42f303, %struct.Memory** %MEMORY
  %loadMem_42f306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 1
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2825 to i64*
  %2826 = load i64, i64* %RAX.i595
  %2827 = load i64, i64* %PC.i594
  %2828 = add i64 %2827, 5
  store i64 %2828, i64* %PC.i594
  %2829 = trunc i64 %2826 to i32
  %2830 = sub i32 %2829, 19529
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RAX.i595, align 8
  %2832 = icmp ult i32 %2829, 19529
  %2833 = zext i1 %2832 to i8
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2833, i8* %2834, align 1
  %2835 = and i32 %2830, 255
  %2836 = call i32 @llvm.ctpop.i32(i32 %2835)
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2839, i8* %2840, align 1
  %2841 = xor i64 19529, %2826
  %2842 = trunc i64 %2841 to i32
  %2843 = xor i32 %2842, %2830
  %2844 = lshr i32 %2843, 4
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2846, i8* %2847, align 1
  %2848 = icmp eq i32 %2830, 0
  %2849 = zext i1 %2848 to i8
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2849, i8* %2850, align 1
  %2851 = lshr i32 %2830, 31
  %2852 = trunc i32 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2852, i8* %2853, align 1
  %2854 = lshr i32 %2829, 31
  %2855 = xor i32 %2851, %2854
  %2856 = add i32 %2855, %2854
  %2857 = icmp eq i32 %2856, 2
  %2858 = zext i1 %2857 to i8
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2858, i8* %2859, align 1
  store %struct.Memory* %loadMem_42f306, %struct.Memory** %MEMORY
  %loadMem_42f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 33
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2862 to i64*
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 1
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %EAX.i592 = bitcast %union.anon* %2865 to i32*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 15
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %RBP.i593
  %2870 = sub i64 %2869, 128
  %2871 = load i32, i32* %EAX.i592
  %2872 = zext i32 %2871 to i64
  %2873 = load i64, i64* %PC.i591
  %2874 = add i64 %2873, 3
  store i64 %2874, i64* %PC.i591
  %2875 = inttoptr i64 %2870 to i32*
  store i32 %2871, i32* %2875
  store %struct.Memory* %loadMem_42f30b, %struct.Memory** %MEMORY
  %loadMem_42f30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %PC.i590
  %2880 = add i64 %2879, 865
  %2881 = load i64, i64* %PC.i590
  %2882 = add i64 %2881, 6
  %2883 = load i64, i64* %PC.i590
  %2884 = add i64 %2883, 6
  store i64 %2884, i64* %PC.i590
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2886 = load i8, i8* %2885, align 1
  store i8 %2886, i8* %BRANCH_TAKEN, align 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2888 = icmp ne i8 %2886, 0
  %2889 = select i1 %2888, i64 %2880, i64 %2882
  store i64 %2889, i64* %2887, align 8
  store %struct.Memory* %loadMem_42f30e, %struct.Memory** %MEMORY
  %loadBr_42f30e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f30e = icmp eq i8 %loadBr_42f30e, 1
  br i1 %cmpBr_42f30e, label %block_.L_42f66f, label %block_42f314

block_42f314:                                     ; preds = %block_.L_42f303
  %loadMem_42f314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %PC.i589
  %2894 = add i64 %2893, 5
  %2895 = load i64, i64* %PC.i589
  %2896 = add i64 %2895, 5
  store i64 %2896, i64* %PC.i589
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2894, i64* %2897, align 8
  store %struct.Memory* %loadMem_42f314, %struct.Memory** %MEMORY
  br label %block_.L_42f319

block_.L_42f319:                                  ; preds = %block_42f314
  %loadMem_42f319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 1
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 15
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %2906 to i64*
  %2907 = load i64, i64* %RBP.i588
  %2908 = sub i64 %2907, 112
  %2909 = load i64, i64* %PC.i586
  %2910 = add i64 %2909, 3
  store i64 %2910, i64* %PC.i586
  %2911 = inttoptr i64 %2908 to i32*
  %2912 = load i32, i32* %2911
  %2913 = zext i32 %2912 to i64
  store i64 %2913, i64* %RAX.i587, align 8
  store %struct.Memory* %loadMem_42f319, %struct.Memory** %MEMORY
  %loadMem_42f31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 1
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RAX.i585
  %2921 = load i64, i64* %PC.i584
  %2922 = add i64 %2921, 5
  store i64 %2922, i64* %PC.i584
  %2923 = trunc i64 %2920 to i32
  %2924 = sub i32 %2923, 19536
  %2925 = zext i32 %2924 to i64
  store i64 %2925, i64* %RAX.i585, align 8
  %2926 = icmp ult i32 %2923, 19536
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2927, i8* %2928, align 1
  %2929 = and i32 %2924, 255
  %2930 = call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2933, i8* %2934, align 1
  %2935 = xor i64 19536, %2920
  %2936 = trunc i64 %2935 to i32
  %2937 = xor i32 %2936, %2924
  %2938 = lshr i32 %2937, 4
  %2939 = trunc i32 %2938 to i8
  %2940 = and i8 %2939, 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2940, i8* %2941, align 1
  %2942 = icmp eq i32 %2924, 0
  %2943 = zext i1 %2942 to i8
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2943, i8* %2944, align 1
  %2945 = lshr i32 %2924, 31
  %2946 = trunc i32 %2945 to i8
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2946, i8* %2947, align 1
  %2948 = lshr i32 %2923, 31
  %2949 = xor i32 %2945, %2948
  %2950 = add i32 %2949, %2948
  %2951 = icmp eq i32 %2950, 2
  %2952 = zext i1 %2951 to i8
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2952, i8* %2953, align 1
  store %struct.Memory* %loadMem_42f31c, %struct.Memory** %MEMORY
  %loadMem_42f321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 1
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %2959 to i32*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 15
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %RBP.i583
  %2964 = sub i64 %2963, 132
  %2965 = load i32, i32* %EAX.i582
  %2966 = zext i32 %2965 to i64
  %2967 = load i64, i64* %PC.i581
  %2968 = add i64 %2967, 6
  store i64 %2968, i64* %PC.i581
  %2969 = inttoptr i64 %2964 to i32*
  store i32 %2965, i32* %2969
  store %struct.Memory* %loadMem_42f321, %struct.Memory** %MEMORY
  %loadMem_42f327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2972 to i64*
  %2973 = load i64, i64* %PC.i580
  %2974 = add i64 %2973, 214
  %2975 = load i64, i64* %PC.i580
  %2976 = add i64 %2975, 6
  %2977 = load i64, i64* %PC.i580
  %2978 = add i64 %2977, 6
  store i64 %2978, i64* %PC.i580
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2980 = load i8, i8* %2979, align 1
  store i8 %2980, i8* %BRANCH_TAKEN, align 1
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2982 = icmp ne i8 %2980, 0
  %2983 = select i1 %2982, i64 %2974, i64 %2976
  store i64 %2983, i64* %2981, align 8
  store %struct.Memory* %loadMem_42f327, %struct.Memory** %MEMORY
  %loadBr_42f327 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f327 = icmp eq i8 %loadBr_42f327, 1
  br i1 %cmpBr_42f327, label %block_.L_42f3fd, label %block_42f32d

block_42f32d:                                     ; preds = %block_.L_42f319
  %loadMem_42f32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 33
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2986 to i64*
  %2987 = load i64, i64* %PC.i579
  %2988 = add i64 %2987, 5
  %2989 = load i64, i64* %PC.i579
  %2990 = add i64 %2989, 5
  store i64 %2990, i64* %PC.i579
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2988, i64* %2991, align 8
  store %struct.Memory* %loadMem_42f32d, %struct.Memory** %MEMORY
  br label %block_.L_42f332

block_.L_42f332:                                  ; preds = %block_42f32d
  %loadMem_42f332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 33
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2994 to i64*
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2996 = getelementptr inbounds %struct.GPR, %struct.GPR* %2995, i32 0, i32 1
  %2997 = getelementptr inbounds %struct.Reg, %struct.Reg* %2996, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %2997 to i64*
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 15
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %RBP.i578
  %3002 = sub i64 %3001, 112
  %3003 = load i64, i64* %PC.i576
  %3004 = add i64 %3003, 3
  store i64 %3004, i64* %PC.i576
  %3005 = inttoptr i64 %3002 to i32*
  %3006 = load i32, i32* %3005
  %3007 = zext i32 %3006 to i64
  store i64 %3007, i64* %RAX.i577, align 8
  store %struct.Memory* %loadMem_42f332, %struct.Memory** %MEMORY
  %loadMem_42f335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 1
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %RAX.i575
  %3015 = load i64, i64* %PC.i574
  %3016 = add i64 %3015, 5
  store i64 %3016, i64* %PC.i574
  %3017 = trunc i64 %3014 to i32
  %3018 = sub i32 %3017, 22337
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RAX.i575, align 8
  %3020 = icmp ult i32 %3017, 22337
  %3021 = zext i1 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3021, i8* %3022, align 1
  %3023 = and i32 %3018, 255
  %3024 = call i32 @llvm.ctpop.i32(i32 %3023)
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  %3027 = xor i8 %3026, 1
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3027, i8* %3028, align 1
  %3029 = xor i64 22337, %3014
  %3030 = trunc i64 %3029 to i32
  %3031 = xor i32 %3030, %3018
  %3032 = lshr i32 %3031, 4
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3034, i8* %3035, align 1
  %3036 = icmp eq i32 %3018, 0
  %3037 = zext i1 %3036 to i8
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3037, i8* %3038, align 1
  %3039 = lshr i32 %3018, 31
  %3040 = trunc i32 %3039 to i8
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3040, i8* %3041, align 1
  %3042 = lshr i32 %3017, 31
  %3043 = xor i32 %3039, %3042
  %3044 = add i32 %3043, %3042
  %3045 = icmp eq i32 %3044, 2
  %3046 = zext i1 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3046, i8* %3047, align 1
  store %struct.Memory* %loadMem_42f335, %struct.Memory** %MEMORY
  %loadMem_42f33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 33
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 1
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %EAX.i572 = bitcast %union.anon* %3053 to i32*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3055 = getelementptr inbounds %struct.GPR, %struct.GPR* %3054, i32 0, i32 15
  %3056 = getelementptr inbounds %struct.Reg, %struct.Reg* %3055, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %3056 to i64*
  %3057 = load i64, i64* %RBP.i573
  %3058 = sub i64 %3057, 136
  %3059 = load i32, i32* %EAX.i572
  %3060 = zext i32 %3059 to i64
  %3061 = load i64, i64* %PC.i571
  %3062 = add i64 %3061, 6
  store i64 %3062, i64* %PC.i571
  %3063 = inttoptr i64 %3058 to i32*
  store i32 %3059, i32* %3063
  store %struct.Memory* %loadMem_42f33a, %struct.Memory** %MEMORY
  %loadMem_42f340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3066 to i64*
  %3067 = load i64, i64* %PC.i570
  %3068 = add i64 %3067, 100
  %3069 = load i64, i64* %PC.i570
  %3070 = add i64 %3069, 6
  %3071 = load i64, i64* %PC.i570
  %3072 = add i64 %3071, 6
  store i64 %3072, i64* %PC.i570
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3074 = load i8, i8* %3073, align 1
  store i8 %3074, i8* %BRANCH_TAKEN, align 1
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3076 = icmp ne i8 %3074, 0
  %3077 = select i1 %3076, i64 %3068, i64 %3070
  store i64 %3077, i64* %3075, align 8
  store %struct.Memory* %loadMem_42f340, %struct.Memory** %MEMORY
  %loadBr_42f340 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f340 = icmp eq i8 %loadBr_42f340, 1
  br i1 %cmpBr_42f340, label %block_.L_42f3a4, label %block_42f346

block_42f346:                                     ; preds = %block_.L_42f332
  %loadMem_42f346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3080 to i64*
  %3081 = load i64, i64* %PC.i569
  %3082 = add i64 %3081, 1049
  %3083 = load i64, i64* %PC.i569
  %3084 = add i64 %3083, 5
  store i64 %3084, i64* %PC.i569
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3082, i64* %3085, align 8
  store %struct.Memory* %loadMem_42f346, %struct.Memory** %MEMORY
  br label %block_.L_42f75f

block_.L_42f34b:                                  ; preds = %block_.L_42f2ed
  %loadMem_42f34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 9
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RSI.i567 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 15
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %3094 to i64*
  %3095 = load i64, i64* %RBP.i568
  %3096 = sub i64 %3095, 84
  %3097 = load i64, i64* %PC.i566
  %3098 = add i64 %3097, 4
  store i64 %3098, i64* %PC.i566
  store i64 %3096, i64* %RSI.i567, align 8
  store %struct.Memory* %loadMem_42f34b, %struct.Memory** %MEMORY
  %loadMem_42f34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 7
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RDX.i564 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 15
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %3107 to i64*
  %3108 = load i64, i64* %RBP.i565
  %3109 = sub i64 %3108, 88
  %3110 = load i64, i64* %PC.i563
  %3111 = add i64 %3110, 4
  store i64 %3111, i64* %PC.i563
  store i64 %3109, i64* %RDX.i564, align 8
  store %struct.Memory* %loadMem_42f34f, %struct.Memory** %MEMORY
  %loadMem_42f353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 11
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RDI.i561 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 15
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %3120 to i64*
  %3121 = load i64, i64* %RBP.i562
  %3122 = sub i64 %3121, 80
  %3123 = load i64, i64* %PC.i560
  %3124 = add i64 %3123, 4
  store i64 %3124, i64* %PC.i560
  %3125 = inttoptr i64 %3122 to i64*
  %3126 = load i64, i64* %3125
  store i64 %3126, i64* %RDI.i561, align 8
  store %struct.Memory* %loadMem_42f353, %struct.Memory** %MEMORY
  %loadMem_42f357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 33
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3129 to i64*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 5
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %PC.i558
  %3134 = add i64 %3133, 7
  store i64 %3134, i64* %PC.i558
  %3135 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_42f357, %struct.Memory** %MEMORY
  %loadMem1_42f35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %3139 to i64*
  %3140 = load i64, i64* %PC.i557
  %3141 = add i64 %3140, -188286
  %3142 = load i64, i64* %PC.i557
  %3143 = add i64 %3142, 5
  %3144 = load i64, i64* %PC.i557
  %3145 = add i64 %3144, 5
  store i64 %3145, i64* %PC.i557
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3147 = load i64, i64* %3146, align 8
  %3148 = add i64 %3147, -8
  %3149 = inttoptr i64 %3148 to i64*
  store i64 %3143, i64* %3149
  store i64 %3148, i64* %3146, align 8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3141, i64* %3150, align 8
  store %struct.Memory* %loadMem1_42f35e, %struct.Memory** %MEMORY
  %loadMem2_42f35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f35e = load i64, i64* %3
  %call2_42f35e = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64 %loadPC_42f35e, %struct.Memory* %loadMem2_42f35e)
  store %struct.Memory* %call2_42f35e, %struct.Memory** %MEMORY
  %loadMem_42f363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 7
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %RDX.i555 = bitcast %union.anon* %3156 to i64*
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 15
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %3159 to i64*
  %3160 = load i64, i64* %RBP.i556
  %3161 = sub i64 %3160, 84
  %3162 = load i64, i64* %PC.i554
  %3163 = add i64 %3162, 4
  store i64 %3163, i64* %PC.i554
  store i64 %3161, i64* %RDX.i555, align 8
  store %struct.Memory* %loadMem_42f363, %struct.Memory** %MEMORY
  %loadMem_42f367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 5
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 15
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %RBP.i553
  %3174 = sub i64 %3173, 88
  %3175 = load i64, i64* %PC.i551
  %3176 = add i64 %3175, 4
  store i64 %3176, i64* %PC.i551
  store i64 %3174, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_42f367, %struct.Memory** %MEMORY
  %loadMem_42f36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 11
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RDI.i549 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 15
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RBP.i550
  %3187 = sub i64 %3186, 84
  %3188 = load i64, i64* %PC.i548
  %3189 = add i64 %3188, 3
  store i64 %3189, i64* %PC.i548
  %3190 = inttoptr i64 %3187 to i32*
  %3191 = load i32, i32* %3190
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RDI.i549, align 8
  store %struct.Memory* %loadMem_42f36b, %struct.Memory** %MEMORY
  %loadMem_42f36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 9
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RSI.i546 = bitcast %union.anon* %3198 to i64*
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 15
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3201 to i64*
  %3202 = load i64, i64* %RBP.i547
  %3203 = sub i64 %3202, 88
  %3204 = load i64, i64* %PC.i545
  %3205 = add i64 %3204, 3
  store i64 %3205, i64* %PC.i545
  %3206 = inttoptr i64 %3203 to i32*
  %3207 = load i32, i32* %3206
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RSI.i546, align 8
  store %struct.Memory* %loadMem_42f36e, %struct.Memory** %MEMORY
  %loadMem_42f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 17
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %R8D.i544 = bitcast %union.anon* %3214 to i32*
  %3215 = bitcast i32* %R8D.i544 to i64*
  %3216 = load i64, i64* %PC.i543
  %3217 = add i64 %3216, 8
  store i64 %3217, i64* %PC.i543
  %3218 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3219 = zext i32 %3218 to i64
  store i64 %3219, i64* %3215, align 8
  store %struct.Memory* %loadMem_42f371, %struct.Memory** %MEMORY
  %loadMem_42f379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 19
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %R9D.i541 = bitcast %union.anon* %3225 to i32*
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 15
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %3228 to i64*
  %3229 = bitcast i32* %R9D.i541 to i64*
  %3230 = load i64, i64* %RBP.i542
  %3231 = sub i64 %3230, 36
  %3232 = load i64, i64* %PC.i540
  %3233 = add i64 %3232, 4
  store i64 %3233, i64* %PC.i540
  %3234 = inttoptr i64 %3231 to i32*
  %3235 = load i32, i32* %3234
  %3236 = zext i32 %3235 to i64
  store i64 %3236, i64* %3229, align 8
  store %struct.Memory* %loadMem_42f379, %struct.Memory** %MEMORY
  %loadMem_42f37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 33
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3239 to i64*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 1
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %EAX.i538 = bitcast %union.anon* %3242 to i32*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 15
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RBP.i539
  %3247 = sub i64 %3246, 140
  %3248 = load i32, i32* %EAX.i538
  %3249 = zext i32 %3248 to i64
  %3250 = load i64, i64* %PC.i537
  %3251 = add i64 %3250, 6
  store i64 %3251, i64* %PC.i537
  %3252 = inttoptr i64 %3247 to i32*
  store i32 %3248, i32* %3252
  store %struct.Memory* %loadMem_42f37d, %struct.Memory** %MEMORY
  %loadMem1_42f383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 33
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3255 to i64*
  %3256 = load i64, i64* %PC.i536
  %3257 = add i64 %3256, 734733
  %3258 = load i64, i64* %PC.i536
  %3259 = add i64 %3258, 5
  %3260 = load i64, i64* %PC.i536
  %3261 = add i64 %3260, 5
  store i64 %3261, i64* %PC.i536
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3263 = load i64, i64* %3262, align 8
  %3264 = add i64 %3263, -8
  %3265 = inttoptr i64 %3264 to i64*
  store i64 %3259, i64* %3265
  store i64 %3264, i64* %3262, align 8
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3257, i64* %3266, align 8
  store %struct.Memory* %loadMem1_42f383, %struct.Memory** %MEMORY
  %loadMem2_42f383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f383 = load i64, i64* %3
  %call2_42f383 = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64 %loadPC_42f383, %struct.Memory* %loadMem2_42f383)
  store %struct.Memory* %call2_42f383, %struct.Memory** %MEMORY
  %loadMem_42f388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 7
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RDX.i535 = bitcast %union.anon* %3272 to i64*
  %3273 = load i64, i64* %PC.i534
  %3274 = add i64 %3273, 5
  store i64 %3274, i64* %PC.i534
  store i64 2, i64* %RDX.i535, align 8
  store %struct.Memory* %loadMem_42f388, %struct.Memory** %MEMORY
  %loadMem_42f38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 33
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 11
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RDI.i532 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 15
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3283 to i64*
  %3284 = load i64, i64* %RBP.i533
  %3285 = sub i64 %3284, 84
  %3286 = load i64, i64* %PC.i531
  %3287 = add i64 %3286, 3
  store i64 %3287, i64* %PC.i531
  %3288 = inttoptr i64 %3285 to i32*
  %3289 = load i32, i32* %3288
  %3290 = zext i32 %3289 to i64
  store i64 %3290, i64* %RDI.i532, align 8
  store %struct.Memory* %loadMem_42f38d, %struct.Memory** %MEMORY
  %loadMem_42f390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 33
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 9
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RSI.i529 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 15
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %RBP.i530
  %3301 = sub i64 %3300, 88
  %3302 = load i64, i64* %PC.i528
  %3303 = add i64 %3302, 3
  store i64 %3303, i64* %PC.i528
  %3304 = inttoptr i64 %3301 to i32*
  %3305 = load i32, i32* %3304
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RSI.i529, align 8
  store %struct.Memory* %loadMem_42f390, %struct.Memory** %MEMORY
  %loadMem1_42f393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %PC.i527
  %3311 = add i64 %3310, -3795
  %3312 = load i64, i64* %PC.i527
  %3313 = add i64 %3312, 5
  %3314 = load i64, i64* %PC.i527
  %3315 = add i64 %3314, 5
  store i64 %3315, i64* %PC.i527
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3317 = load i64, i64* %3316, align 8
  %3318 = add i64 %3317, -8
  %3319 = inttoptr i64 %3318 to i64*
  store i64 %3313, i64* %3319
  store i64 %3318, i64* %3316, align 8
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3311, i64* %3320, align 8
  store %struct.Memory* %loadMem1_42f393, %struct.Memory** %MEMORY
  %loadMem2_42f393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f393 = load i64, i64* %3
  %call2_42f393 = call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* %0, i64 %loadPC_42f393, %struct.Memory* %loadMem2_42f393)
  store %struct.Memory* %call2_42f393, %struct.Memory** %MEMORY
  %loadMem_42f398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 15
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %RBP.i526
  %3328 = sub i64 %3327, 68
  %3329 = load i64, i64* %PC.i525
  %3330 = add i64 %3329, 7
  store i64 %3330, i64* %PC.i525
  %3331 = inttoptr i64 %3328 to i32*
  store i32 1, i32* %3331
  store %struct.Memory* %loadMem_42f398, %struct.Memory** %MEMORY
  %loadMem_42f39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 33
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %PC.i524
  %3336 = add i64 %3335, 960
  %3337 = load i64, i64* %PC.i524
  %3338 = add i64 %3337, 5
  store i64 %3338, i64* %PC.i524
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3336, i64* %3339, align 8
  store %struct.Memory* %loadMem_42f39f, %struct.Memory** %MEMORY
  br label %block_.L_42f75f

block_.L_42f3a4:                                  ; preds = %block_.L_42f332
  %loadMem_42f3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 9
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RSI.i522 = bitcast %union.anon* %3345 to i64*
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 15
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %RBP.i523
  %3350 = sub i64 %3349, 84
  %3351 = load i64, i64* %PC.i521
  %3352 = add i64 %3351, 4
  store i64 %3352, i64* %PC.i521
  store i64 %3350, i64* %RSI.i522, align 8
  store %struct.Memory* %loadMem_42f3a4, %struct.Memory** %MEMORY
  %loadMem_42f3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 7
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 15
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RBP.i520
  %3363 = sub i64 %3362, 88
  %3364 = load i64, i64* %PC.i518
  %3365 = add i64 %3364, 4
  store i64 %3365, i64* %PC.i518
  store i64 %3363, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_42f3a8, %struct.Memory** %MEMORY
  %loadMem_42f3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 11
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RDI.i516 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 15
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %RBP.i517
  %3376 = sub i64 %3375, 80
  %3377 = load i64, i64* %PC.i515
  %3378 = add i64 %3377, 4
  store i64 %3378, i64* %PC.i515
  %3379 = inttoptr i64 %3376 to i64*
  %3380 = load i64, i64* %3379
  store i64 %3380, i64* %RDI.i516, align 8
  store %struct.Memory* %loadMem_42f3ac, %struct.Memory** %MEMORY
  %loadMem_42f3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 5
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %3386 to i64*
  %3387 = load i64, i64* %PC.i513
  %3388 = add i64 %3387, 7
  store i64 %3388, i64* %PC.i513
  %3389 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3390 = zext i32 %3389 to i64
  store i64 %3390, i64* %RCX.i514, align 8
  store %struct.Memory* %loadMem_42f3b0, %struct.Memory** %MEMORY
  %loadMem1_42f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 33
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3393 to i64*
  %3394 = load i64, i64* %PC.i512
  %3395 = add i64 %3394, -188375
  %3396 = load i64, i64* %PC.i512
  %3397 = add i64 %3396, 5
  %3398 = load i64, i64* %PC.i512
  %3399 = add i64 %3398, 5
  store i64 %3399, i64* %PC.i512
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3401 = load i64, i64* %3400, align 8
  %3402 = add i64 %3401, -8
  %3403 = inttoptr i64 %3402 to i64*
  store i64 %3397, i64* %3403
  store i64 %3402, i64* %3400, align 8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3395, i64* %3404, align 8
  store %struct.Memory* %loadMem1_42f3b7, %struct.Memory** %MEMORY
  %loadMem2_42f3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f3b7 = load i64, i64* %3
  %call2_42f3b7 = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64 %loadPC_42f3b7, %struct.Memory* %loadMem2_42f3b7)
  store %struct.Memory* %call2_42f3b7, %struct.Memory** %MEMORY
  %loadMem_42f3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 7
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RBP.i511
  %3415 = sub i64 %3414, 84
  %3416 = load i64, i64* %PC.i509
  %3417 = add i64 %3416, 4
  store i64 %3417, i64* %PC.i509
  store i64 %3415, i64* %RDX.i510, align 8
  store %struct.Memory* %loadMem_42f3bc, %struct.Memory** %MEMORY
  %loadMem_42f3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 5
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 15
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %3426 to i64*
  %3427 = load i64, i64* %RBP.i508
  %3428 = sub i64 %3427, 88
  %3429 = load i64, i64* %PC.i506
  %3430 = add i64 %3429, 4
  store i64 %3430, i64* %PC.i506
  store i64 %3428, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_42f3c0, %struct.Memory** %MEMORY
  %loadMem_42f3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 11
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %RDI.i504 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 15
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %3439 to i64*
  %3440 = load i64, i64* %RBP.i505
  %3441 = sub i64 %3440, 84
  %3442 = load i64, i64* %PC.i503
  %3443 = add i64 %3442, 3
  store i64 %3443, i64* %PC.i503
  %3444 = inttoptr i64 %3441 to i32*
  %3445 = load i32, i32* %3444
  %3446 = zext i32 %3445 to i64
  store i64 %3446, i64* %RDI.i504, align 8
  store %struct.Memory* %loadMem_42f3c4, %struct.Memory** %MEMORY
  %loadMem_42f3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 9
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RSI.i501 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 15
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %3455 to i64*
  %3456 = load i64, i64* %RBP.i502
  %3457 = sub i64 %3456, 88
  %3458 = load i64, i64* %PC.i500
  %3459 = add i64 %3458, 3
  store i64 %3459, i64* %PC.i500
  %3460 = inttoptr i64 %3457 to i32*
  %3461 = load i32, i32* %3460
  %3462 = zext i32 %3461 to i64
  store i64 %3462, i64* %RSI.i501, align 8
  store %struct.Memory* %loadMem_42f3c7, %struct.Memory** %MEMORY
  %loadMem_42f3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3465 to i64*
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 17
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %R8D.i499 = bitcast %union.anon* %3468 to i32*
  %3469 = bitcast i32* %R8D.i499 to i64*
  %3470 = load i64, i64* %PC.i498
  %3471 = add i64 %3470, 8
  store i64 %3471, i64* %PC.i498
  %3472 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %3473 = zext i32 %3472 to i64
  store i64 %3473, i64* %3469, align 8
  store %struct.Memory* %loadMem_42f3ca, %struct.Memory** %MEMORY
  %loadMem_42f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 33
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3476 to i64*
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 19
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %R9D.i496 = bitcast %union.anon* %3479 to i32*
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3481 = getelementptr inbounds %struct.GPR, %struct.GPR* %3480, i32 0, i32 15
  %3482 = getelementptr inbounds %struct.Reg, %struct.Reg* %3481, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %3482 to i64*
  %3483 = bitcast i32* %R9D.i496 to i64*
  %3484 = load i64, i64* %RBP.i497
  %3485 = sub i64 %3484, 36
  %3486 = load i64, i64* %PC.i495
  %3487 = add i64 %3486, 4
  store i64 %3487, i64* %PC.i495
  %3488 = inttoptr i64 %3485 to i32*
  %3489 = load i32, i32* %3488
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %3483, align 8
  store %struct.Memory* %loadMem_42f3d2, %struct.Memory** %MEMORY
  %loadMem_42f3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 1
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %EAX.i493 = bitcast %union.anon* %3496 to i32*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 15
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RBP.i494
  %3501 = sub i64 %3500, 144
  %3502 = load i32, i32* %EAX.i493
  %3503 = zext i32 %3502 to i64
  %3504 = load i64, i64* %PC.i492
  %3505 = add i64 %3504, 6
  store i64 %3505, i64* %PC.i492
  %3506 = inttoptr i64 %3501 to i32*
  store i32 %3502, i32* %3506
  store %struct.Memory* %loadMem_42f3d6, %struct.Memory** %MEMORY
  %loadMem1_42f3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %PC.i491
  %3511 = add i64 %3510, 734644
  %3512 = load i64, i64* %PC.i491
  %3513 = add i64 %3512, 5
  %3514 = load i64, i64* %PC.i491
  %3515 = add i64 %3514, 5
  store i64 %3515, i64* %PC.i491
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3517 = load i64, i64* %3516, align 8
  %3518 = add i64 %3517, -8
  %3519 = inttoptr i64 %3518 to i64*
  store i64 %3513, i64* %3519
  store i64 %3518, i64* %3516, align 8
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3511, i64* %3520, align 8
  store %struct.Memory* %loadMem1_42f3dc, %struct.Memory** %MEMORY
  %loadMem2_42f3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f3dc = load i64, i64* %3
  %call2_42f3dc = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64 %loadPC_42f3dc, %struct.Memory* %loadMem2_42f3dc)
  store %struct.Memory* %call2_42f3dc, %struct.Memory** %MEMORY
  %loadMem_42f3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 33
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3523 to i64*
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 7
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %RDX.i490 = bitcast %union.anon* %3526 to i64*
  %3527 = load i64, i64* %PC.i489
  %3528 = add i64 %3527, 5
  store i64 %3528, i64* %PC.i489
  store i64 1, i64* %RDX.i490, align 8
  store %struct.Memory* %loadMem_42f3e1, %struct.Memory** %MEMORY
  %loadMem_42f3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 33
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 11
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RDI.i487 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 15
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %3537 to i64*
  %3538 = load i64, i64* %RBP.i488
  %3539 = sub i64 %3538, 84
  %3540 = load i64, i64* %PC.i486
  %3541 = add i64 %3540, 3
  store i64 %3541, i64* %PC.i486
  %3542 = inttoptr i64 %3539 to i32*
  %3543 = load i32, i32* %3542
  %3544 = zext i32 %3543 to i64
  store i64 %3544, i64* %RDI.i487, align 8
  store %struct.Memory* %loadMem_42f3e6, %struct.Memory** %MEMORY
  %loadMem_42f3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 33
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %3547 to i64*
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 9
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %RSI.i484 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 15
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %3553 to i64*
  %3554 = load i64, i64* %RBP.i485
  %3555 = sub i64 %3554, 88
  %3556 = load i64, i64* %PC.i483
  %3557 = add i64 %3556, 3
  store i64 %3557, i64* %PC.i483
  %3558 = inttoptr i64 %3555 to i32*
  %3559 = load i32, i32* %3558
  %3560 = zext i32 %3559 to i64
  store i64 %3560, i64* %RSI.i484, align 8
  store %struct.Memory* %loadMem_42f3e9, %struct.Memory** %MEMORY
  %loadMem1_42f3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 33
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3563 to i64*
  %3564 = load i64, i64* %PC.i482
  %3565 = add i64 %3564, -3884
  %3566 = load i64, i64* %PC.i482
  %3567 = add i64 %3566, 5
  %3568 = load i64, i64* %PC.i482
  %3569 = add i64 %3568, 5
  store i64 %3569, i64* %PC.i482
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3571 = load i64, i64* %3570, align 8
  %3572 = add i64 %3571, -8
  %3573 = inttoptr i64 %3572 to i64*
  store i64 %3567, i64* %3573
  store i64 %3572, i64* %3570, align 8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3565, i64* %3574, align 8
  store %struct.Memory* %loadMem1_42f3ec, %struct.Memory** %MEMORY
  %loadMem2_42f3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f3ec = load i64, i64* %3
  %call2_42f3ec = call %struct.Memory* @sub_42e4c0.gnugo_add_stone(%struct.State* %0, i64 %loadPC_42f3ec, %struct.Memory* %loadMem2_42f3ec)
  store %struct.Memory* %call2_42f3ec, %struct.Memory** %MEMORY
  %loadMem_42f3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 15
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %3580 to i64*
  %3581 = load i64, i64* %RBP.i481
  %3582 = sub i64 %3581, 68
  %3583 = load i64, i64* %PC.i480
  %3584 = add i64 %3583, 7
  store i64 %3584, i64* %PC.i480
  %3585 = inttoptr i64 %3582 to i32*
  store i32 1, i32* %3585
  store %struct.Memory* %loadMem_42f3f1, %struct.Memory** %MEMORY
  %loadMem_42f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %PC.i479
  %3590 = add i64 %3589, 871
  %3591 = load i64, i64* %PC.i479
  %3592 = add i64 %3591, 5
  store i64 %3592, i64* %PC.i479
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3590, i64* %3593, align 8
  store %struct.Memory* %loadMem_42f3f8, %struct.Memory** %MEMORY
  br label %block_.L_42f75f

block_.L_42f3fd:                                  ; preds = %block_.L_42f319
  %loadMem_42f3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %PC.i478
  %3598 = add i64 %3597, 8
  store i64 %3598, i64* %PC.i478
  %3599 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3600, align 1
  %3601 = and i32 %3599, 255
  %3602 = call i32 @llvm.ctpop.i32(i32 %3601)
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3605, i8* %3606, align 1
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3607, align 1
  %3608 = icmp eq i32 %3599, 0
  %3609 = zext i1 %3608 to i8
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3609, i8* %3610, align 1
  %3611 = lshr i32 %3599, 31
  %3612 = trunc i32 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3612, i8* %3613, align 1
  %3614 = lshr i32 %3599, 31
  %3615 = xor i32 %3611, %3614
  %3616 = add i32 %3615, %3614
  %3617 = icmp eq i32 %3616, 2
  %3618 = zext i1 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3618, i8* %3619, align 1
  store %struct.Memory* %loadMem_42f3fd, %struct.Memory** %MEMORY
  %loadMem_42f405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3622 to i64*
  %3623 = load i64, i64* %PC.i477
  %3624 = add i64 %3623, 65
  %3625 = load i64, i64* %PC.i477
  %3626 = add i64 %3625, 6
  %3627 = load i64, i64* %PC.i477
  %3628 = add i64 %3627, 6
  store i64 %3628, i64* %PC.i477
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3630 = load i8, i8* %3629, align 1
  store i8 %3630, i8* %BRANCH_TAKEN, align 1
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3632 = icmp ne i8 %3630, 0
  %3633 = select i1 %3632, i64 %3624, i64 %3626
  store i64 %3633, i64* %3631, align 8
  store %struct.Memory* %loadMem_42f405, %struct.Memory** %MEMORY
  %loadBr_42f405 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f405 = icmp eq i8 %loadBr_42f405, 1
  br i1 %cmpBr_42f405, label %block_.L_42f446, label %block_42f40b

block_42f40b:                                     ; preds = %block_.L_42f3fd
  %loadMem_42f40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 15
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RBP.i476
  %3641 = sub i64 %3640, 68
  %3642 = load i64, i64* %PC.i475
  %3643 = add i64 %3642, 4
  store i64 %3643, i64* %PC.i475
  %3644 = inttoptr i64 %3641 to i32*
  %3645 = load i32, i32* %3644
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3646, align 1
  %3647 = and i32 %3645, 255
  %3648 = call i32 @llvm.ctpop.i32(i32 %3647)
  %3649 = trunc i32 %3648 to i8
  %3650 = and i8 %3649, 1
  %3651 = xor i8 %3650, 1
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3651, i8* %3652, align 1
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3653, align 1
  %3654 = icmp eq i32 %3645, 0
  %3655 = zext i1 %3654 to i8
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3655, i8* %3656, align 1
  %3657 = lshr i32 %3645, 31
  %3658 = trunc i32 %3657 to i8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3658, i8* %3659, align 1
  %3660 = lshr i32 %3645, 31
  %3661 = xor i32 %3657, %3660
  %3662 = add i32 %3661, %3660
  %3663 = icmp eq i32 %3662, 2
  %3664 = zext i1 %3663 to i8
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3664, i8* %3665, align 1
  store %struct.Memory* %loadMem_42f40b, %struct.Memory** %MEMORY
  %loadMem_42f40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3668 to i64*
  %3669 = load i64, i64* %PC.i474
  %3670 = add i64 %3669, 55
  %3671 = load i64, i64* %PC.i474
  %3672 = add i64 %3671, 6
  %3673 = load i64, i64* %PC.i474
  %3674 = add i64 %3673, 6
  store i64 %3674, i64* %PC.i474
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3676 = load i8, i8* %3675, align 1
  %3677 = icmp eq i8 %3676, 0
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %BRANCH_TAKEN, align 1
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3680 = select i1 %3677, i64 %3670, i64 %3672
  store i64 %3680, i64* %3679, align 8
  store %struct.Memory* %loadMem_42f40f, %struct.Memory** %MEMORY
  %loadBr_42f40f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f40f = icmp eq i8 %loadBr_42f40f, 1
  br i1 %cmpBr_42f40f, label %block_.L_42f446, label %block_42f415

block_42f415:                                     ; preds = %block_42f40b
  %loadMem_42f415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 33
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3683 to i64*
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 1
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %EAX.i472 = bitcast %union.anon* %3686 to i32*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 1
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %3689 to i64*
  %3690 = load i64, i64* %RAX.i473
  %3691 = load i32, i32* %EAX.i472
  %3692 = zext i32 %3691 to i64
  %3693 = load i64, i64* %PC.i471
  %3694 = add i64 %3693, 2
  store i64 %3694, i64* %PC.i471
  %3695 = xor i64 %3692, %3690
  %3696 = trunc i64 %3695 to i32
  %3697 = and i64 %3695, 4294967295
  store i64 %3697, i64* %RAX.i473, align 8
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3698, align 1
  %3699 = and i32 %3696, 255
  %3700 = call i32 @llvm.ctpop.i32(i32 %3699)
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  %3703 = xor i8 %3702, 1
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3703, i8* %3704, align 1
  %3705 = icmp eq i32 %3696, 0
  %3706 = zext i1 %3705 to i8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3706, i8* %3707, align 1
  %3708 = lshr i32 %3696, 31
  %3709 = trunc i32 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3709, i8* %3710, align 1
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3711, align 1
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3712, align 1
  store %struct.Memory* %loadMem_42f415, %struct.Memory** %MEMORY
  %loadMem_42f417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 1
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %EAX.i469 = bitcast %union.anon* %3718 to i32*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 9
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %3721 to i64*
  %3722 = load i32, i32* %EAX.i469
  %3723 = zext i32 %3722 to i64
  %3724 = load i64, i64* %PC.i468
  %3725 = add i64 %3724, 2
  store i64 %3725, i64* %PC.i468
  %3726 = and i64 %3723, 4294967295
  store i64 %3726, i64* %RSI.i470, align 8
  store %struct.Memory* %loadMem_42f417, %struct.Memory** %MEMORY
  %loadMem_42f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 33
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3729 to i64*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 5
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 15
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %3735 to i64*
  %3736 = load i64, i64* %RBP.i467
  %3737 = sub i64 %3736, 16
  %3738 = load i64, i64* %PC.i465
  %3739 = add i64 %3738, 4
  store i64 %3739, i64* %PC.i465
  %3740 = inttoptr i64 %3737 to i64*
  %3741 = load i64, i64* %3740
  store i64 %3741, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_42f419, %struct.Memory** %MEMORY
  %loadMem_42f41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 33
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 5
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 11
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RDI.i464 = bitcast %union.anon* %3750 to i64*
  %3751 = load i64, i64* %RCX.i463
  %3752 = load i64, i64* %PC.i462
  %3753 = add i64 %3752, 2
  store i64 %3753, i64* %PC.i462
  %3754 = inttoptr i64 %3751 to i32*
  %3755 = load i32, i32* %3754
  %3756 = zext i32 %3755 to i64
  store i64 %3756, i64* %RDI.i464, align 8
  store %struct.Memory* %loadMem_42f41d, %struct.Memory** %MEMORY
  %loadMem1_42f41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3759 to i64*
  %3760 = load i64, i64* %PC.i461
  %3761 = add i64 %3760, -2543
  %3762 = load i64, i64* %PC.i461
  %3763 = add i64 %3762, 5
  %3764 = load i64, i64* %PC.i461
  %3765 = add i64 %3764, 5
  store i64 %3765, i64* %PC.i461
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3767 = load i64, i64* %3766, align 8
  %3768 = add i64 %3767, -8
  %3769 = inttoptr i64 %3768 to i64*
  store i64 %3763, i64* %3769
  store i64 %3768, i64* %3766, align 8
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3761, i64* %3770, align 8
  store %struct.Memory* %loadMem1_42f41f, %struct.Memory** %MEMORY
  %loadMem2_42f41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f41f = load i64, i64* %3
  %call2_42f41f = call %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* %0, i64 %loadPC_42f41f, %struct.Memory* %loadMem2_42f41f)
  store %struct.Memory* %call2_42f41f, %struct.Memory** %MEMORY
  %loadMem_42f424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 33
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3773 to i64*
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 9
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %RSI.i460 = bitcast %union.anon* %3776 to i64*
  %3777 = load i64, i64* %PC.i459
  %3778 = add i64 %3777, 10
  store i64 %3778, i64* %PC.i459
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI.i460, align 8
  store %struct.Memory* %loadMem_42f424, %struct.Memory** %MEMORY
  %loadMem_42f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 5
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %3784 to i64*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 15
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %3787 to i64*
  %3788 = load i64, i64* %RBP.i458
  %3789 = sub i64 %3788, 24
  %3790 = load i64, i64* %PC.i456
  %3791 = add i64 %3790, 4
  store i64 %3791, i64* %PC.i456
  %3792 = inttoptr i64 %3789 to i64*
  %3793 = load i64, i64* %3792
  store i64 %3793, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_42f42e, %struct.Memory** %MEMORY
  %loadMem_42f432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 33
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %3796 to i64*
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 5
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %3799 to i64*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 11
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %RDI.i455 = bitcast %union.anon* %3802 to i64*
  %3803 = load i64, i64* %RCX.i454
  %3804 = load i64, i64* %PC.i453
  %3805 = add i64 %3804, 3
  store i64 %3805, i64* %PC.i453
  %3806 = inttoptr i64 %3803 to i64*
  %3807 = load i64, i64* %3806
  store i64 %3807, i64* %RDI.i455, align 8
  store %struct.Memory* %loadMem_42f432, %struct.Memory** %MEMORY
  %loadMem_42f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 5
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 15
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %RBP.i452
  %3818 = sub i64 %3817, 16
  %3819 = load i64, i64* %PC.i450
  %3820 = add i64 %3819, 4
  store i64 %3820, i64* %PC.i450
  %3821 = inttoptr i64 %3818 to i64*
  %3822 = load i64, i64* %3821
  store i64 %3822, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_42f435, %struct.Memory** %MEMORY
  %loadMem_42f439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3824 = getelementptr inbounds %struct.GPR, %struct.GPR* %3823, i32 0, i32 33
  %3825 = getelementptr inbounds %struct.Reg, %struct.Reg* %3824, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3825 to i64*
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3827 = getelementptr inbounds %struct.GPR, %struct.GPR* %3826, i32 0, i32 5
  %3828 = getelementptr inbounds %struct.Reg, %struct.Reg* %3827, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %3828 to i64*
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 7
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %3831 to i64*
  %3832 = load i64, i64* %RCX.i448
  %3833 = load i64, i64* %PC.i447
  %3834 = add i64 %3833, 2
  store i64 %3834, i64* %PC.i447
  %3835 = inttoptr i64 %3832 to i32*
  %3836 = load i32, i32* %3835
  %3837 = zext i32 %3836 to i64
  store i64 %3837, i64* %RDX.i449, align 8
  store %struct.Memory* %loadMem_42f439, %struct.Memory** %MEMORY
  %loadMem_42f43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 1
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %EAX.i445 = bitcast %union.anon* %3843 to i32*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 15
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %RBP.i446
  %3848 = sub i64 %3847, 148
  %3849 = load i32, i32* %EAX.i445
  %3850 = zext i32 %3849 to i64
  %3851 = load i64, i64* %PC.i444
  %3852 = add i64 %3851, 6
  store i64 %3852, i64* %PC.i444
  %3853 = inttoptr i64 %3848 to i32*
  store i32 %3849, i32* %3853
  store %struct.Memory* %loadMem_42f43b, %struct.Memory** %MEMORY
  %loadMem1_42f441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 33
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %PC.i443
  %3858 = add i64 %3857, -185361
  %3859 = load i64, i64* %PC.i443
  %3860 = add i64 %3859, 5
  %3861 = load i64, i64* %PC.i443
  %3862 = add i64 %3861, 5
  store i64 %3862, i64* %PC.i443
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3864 = load i64, i64* %3863, align 8
  %3865 = add i64 %3864, -8
  %3866 = inttoptr i64 %3865 to i64*
  store i64 %3860, i64* %3866
  store i64 %3865, i64* %3863, align 8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3858, i64* %3867, align 8
  store %struct.Memory* %loadMem1_42f441, %struct.Memory** %MEMORY
  %loadMem2_42f441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f441 = load i64, i64* %3
  %call2_42f441 = call %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* %0, i64 %loadPC_42f441, %struct.Memory* %loadMem2_42f441)
  store %struct.Memory* %call2_42f441, %struct.Memory** %MEMORY
  br label %block_.L_42f446

block_.L_42f446:                                  ; preds = %block_42f415, %block_42f40b, %block_.L_42f3fd
  %loadMem_42f446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 1
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %3873 to i64*
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 15
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %3876 to i64*
  %3877 = load i64, i64* %RBP.i442
  %3878 = sub i64 %3877, 80
  %3879 = load i64, i64* %PC.i440
  %3880 = add i64 %3879, 4
  store i64 %3880, i64* %PC.i440
  %3881 = inttoptr i64 %3878 to i64*
  %3882 = load i64, i64* %3881
  store i64 %3882, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_42f446, %struct.Memory** %MEMORY
  %loadMem_42f44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 33
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 1
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RAX.i439
  %3890 = add i64 %3889, 16
  %3891 = load i64, i64* %PC.i438
  %3892 = add i64 %3891, 4
  store i64 %3892, i64* %PC.i438
  %3893 = inttoptr i64 %3890 to i64*
  %3894 = load i64, i64* %3893
  store i64 %3894, i64* %RAX.i439, align 8
  store %struct.Memory* %loadMem_42f44a, %struct.Memory** %MEMORY
  %loadMem_42f44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 1
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 5
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %3903 to i64*
  %3904 = load i64, i64* %RAX.i436
  %3905 = load i64, i64* %PC.i435
  %3906 = add i64 %3905, 3
  store i64 %3906, i64* %PC.i435
  %3907 = inttoptr i64 %3904 to i8*
  %3908 = load i8, i8* %3907
  %3909 = sext i8 %3908 to i64
  %3910 = and i64 %3909, 4294967295
  store i64 %3910, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_42f44e, %struct.Memory** %MEMORY
  %loadMem_42f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 33
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 5
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %ECX.i434 = bitcast %union.anon* %3916 to i32*
  %3917 = load i32, i32* %ECX.i434
  %3918 = zext i32 %3917 to i64
  %3919 = load i64, i64* %PC.i433
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC.i433
  %3921 = sub i32 %3917, 119
  %3922 = icmp ult i32 %3917, 119
  %3923 = zext i1 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3923, i8* %3924, align 1
  %3925 = and i32 %3921, 255
  %3926 = call i32 @llvm.ctpop.i32(i32 %3925)
  %3927 = trunc i32 %3926 to i8
  %3928 = and i8 %3927, 1
  %3929 = xor i8 %3928, 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3929, i8* %3930, align 1
  %3931 = xor i64 119, %3918
  %3932 = trunc i64 %3931 to i32
  %3933 = xor i32 %3932, %3921
  %3934 = lshr i32 %3933, 4
  %3935 = trunc i32 %3934 to i8
  %3936 = and i8 %3935, 1
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3936, i8* %3937, align 1
  %3938 = icmp eq i32 %3921, 0
  %3939 = zext i1 %3938 to i8
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3939, i8* %3940, align 1
  %3941 = lshr i32 %3921, 31
  %3942 = trunc i32 %3941 to i8
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3942, i8* %3943, align 1
  %3944 = lshr i32 %3917, 31
  %3945 = xor i32 %3941, %3944
  %3946 = add i32 %3945, %3944
  %3947 = icmp eq i32 %3946, 2
  %3948 = zext i1 %3947 to i8
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3948, i8* %3949, align 1
  store %struct.Memory* %loadMem_42f451, %struct.Memory** %MEMORY
  %loadMem_42f454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3952 to i64*
  %3953 = load i64, i64* %PC.i432
  %3954 = add i64 %3953, 46
  %3955 = load i64, i64* %PC.i432
  %3956 = add i64 %3955, 6
  %3957 = load i64, i64* %PC.i432
  %3958 = add i64 %3957, 6
  store i64 %3958, i64* %PC.i432
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3960 = load i8, i8* %3959, align 1
  store i8 %3960, i8* %BRANCH_TAKEN, align 1
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3962 = icmp ne i8 %3960, 0
  %3963 = select i1 %3962, i64 %3954, i64 %3956
  store i64 %3963, i64* %3961, align 8
  store %struct.Memory* %loadMem_42f454, %struct.Memory** %MEMORY
  %loadBr_42f454 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f454 = icmp eq i8 %loadBr_42f454, 1
  br i1 %cmpBr_42f454, label %block_.L_42f482, label %block_42f45a

block_42f45a:                                     ; preds = %block_.L_42f446
  %loadMem_42f45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 1
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 15
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %RBP.i431
  %3974 = sub i64 %3973, 80
  %3975 = load i64, i64* %PC.i429
  %3976 = add i64 %3975, 4
  store i64 %3976, i64* %PC.i429
  %3977 = inttoptr i64 %3974 to i64*
  %3978 = load i64, i64* %3977
  store i64 %3978, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_42f45a, %struct.Memory** %MEMORY
  %loadMem_42f45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 1
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %RAX.i428
  %3986 = add i64 %3985, 16
  %3987 = load i64, i64* %PC.i427
  %3988 = add i64 %3987, 4
  store i64 %3988, i64* %PC.i427
  %3989 = inttoptr i64 %3986 to i64*
  %3990 = load i64, i64* %3989
  store i64 %3990, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_42f45e, %struct.Memory** %MEMORY
  %loadMem_42f462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 1
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %3996 to i64*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 5
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %3999 to i64*
  %4000 = load i64, i64* %RAX.i425
  %4001 = load i64, i64* %PC.i424
  %4002 = add i64 %4001, 3
  store i64 %4002, i64* %PC.i424
  %4003 = inttoptr i64 %4000 to i8*
  %4004 = load i8, i8* %4003
  %4005 = sext i8 %4004 to i64
  %4006 = and i64 %4005, 4294967295
  store i64 %4006, i64* %RCX.i426, align 8
  store %struct.Memory* %loadMem_42f462, %struct.Memory** %MEMORY
  %loadMem_42f465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 5
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %ECX.i423 = bitcast %union.anon* %4012 to i32*
  %4013 = load i32, i32* %ECX.i423
  %4014 = zext i32 %4013 to i64
  %4015 = load i64, i64* %PC.i422
  %4016 = add i64 %4015, 3
  store i64 %4016, i64* %PC.i422
  %4017 = sub i32 %4013, 87
  %4018 = icmp ult i32 %4013, 87
  %4019 = zext i1 %4018 to i8
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4019, i8* %4020, align 1
  %4021 = and i32 %4017, 255
  %4022 = call i32 @llvm.ctpop.i32(i32 %4021)
  %4023 = trunc i32 %4022 to i8
  %4024 = and i8 %4023, 1
  %4025 = xor i8 %4024, 1
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4025, i8* %4026, align 1
  %4027 = xor i64 87, %4014
  %4028 = trunc i64 %4027 to i32
  %4029 = xor i32 %4028, %4017
  %4030 = lshr i32 %4029, 4
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4032, i8* %4033, align 1
  %4034 = icmp eq i32 %4017, 0
  %4035 = zext i1 %4034 to i8
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4035, i8* %4036, align 1
  %4037 = lshr i32 %4017, 31
  %4038 = trunc i32 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4038, i8* %4039, align 1
  %4040 = lshr i32 %4013, 31
  %4041 = xor i32 %4037, %4040
  %4042 = add i32 %4041, %4040
  %4043 = icmp eq i32 %4042, 2
  %4044 = zext i1 %4043 to i8
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4044, i8* %4045, align 1
  store %struct.Memory* %loadMem_42f465, %struct.Memory** %MEMORY
  %loadMem_42f468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 33
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4048 to i64*
  %4049 = load i64, i64* %PC.i421
  %4050 = add i64 %4049, 26
  %4051 = load i64, i64* %PC.i421
  %4052 = add i64 %4051, 6
  %4053 = load i64, i64* %PC.i421
  %4054 = add i64 %4053, 6
  store i64 %4054, i64* %PC.i421
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4056 = load i8, i8* %4055, align 1
  store i8 %4056, i8* %BRANCH_TAKEN, align 1
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4058 = icmp ne i8 %4056, 0
  %4059 = select i1 %4058, i64 %4050, i64 %4052
  store i64 %4059, i64* %4057, align 8
  store %struct.Memory* %loadMem_42f468, %struct.Memory** %MEMORY
  %loadBr_42f468 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f468 = icmp eq i8 %loadBr_42f468, 1
  br i1 %cmpBr_42f468, label %block_.L_42f482, label %block_42f46e

block_42f46e:                                     ; preds = %block_42f45a
  %loadMem_42f46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 33
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 1
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 15
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %4068 to i64*
  %4069 = load i64, i64* %RBP.i420
  %4070 = sub i64 %4069, 80
  %4071 = load i64, i64* %PC.i418
  %4072 = add i64 %4071, 4
  store i64 %4072, i64* %PC.i418
  %4073 = inttoptr i64 %4070 to i64*
  %4074 = load i64, i64* %4073
  store i64 %4074, i64* %RAX.i419, align 8
  store %struct.Memory* %loadMem_42f46e, %struct.Memory** %MEMORY
  %loadMem_42f472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 33
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4077 to i64*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 1
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RAX.i417 = bitcast %union.anon* %4080 to i64*
  %4081 = load i64, i64* %RAX.i417
  %4082 = add i64 %4081, 16
  %4083 = load i64, i64* %PC.i416
  %4084 = add i64 %4083, 4
  store i64 %4084, i64* %PC.i416
  %4085 = inttoptr i64 %4082 to i64*
  %4086 = load i64, i64* %4085
  store i64 %4086, i64* %RAX.i417, align 8
  store %struct.Memory* %loadMem_42f472, %struct.Memory** %MEMORY
  %loadMem_42f476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 1
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RAX.i414 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 5
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RCX.i415 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RAX.i414
  %4097 = load i64, i64* %PC.i413
  %4098 = add i64 %4097, 3
  store i64 %4098, i64* %PC.i413
  %4099 = inttoptr i64 %4096 to i8*
  %4100 = load i8, i8* %4099
  %4101 = sext i8 %4100 to i64
  %4102 = and i64 %4101, 4294967295
  store i64 %4102, i64* %RCX.i415, align 8
  store %struct.Memory* %loadMem_42f476, %struct.Memory** %MEMORY
  %loadMem_42f479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 5
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %ECX.i412 = bitcast %union.anon* %4108 to i32*
  %4109 = load i32, i32* %ECX.i412
  %4110 = zext i32 %4109 to i64
  %4111 = load i64, i64* %PC.i411
  %4112 = add i64 %4111, 3
  store i64 %4112, i64* %PC.i411
  %4113 = sub i32 %4109, 50
  %4114 = icmp ult i32 %4109, 50
  %4115 = zext i1 %4114 to i8
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4115, i8* %4116, align 1
  %4117 = and i32 %4113, 255
  %4118 = call i32 @llvm.ctpop.i32(i32 %4117)
  %4119 = trunc i32 %4118 to i8
  %4120 = and i8 %4119, 1
  %4121 = xor i8 %4120, 1
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4121, i8* %4122, align 1
  %4123 = xor i64 50, %4110
  %4124 = trunc i64 %4123 to i32
  %4125 = xor i32 %4124, %4113
  %4126 = lshr i32 %4125, 4
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4128, i8* %4129, align 1
  %4130 = icmp eq i32 %4113, 0
  %4131 = zext i1 %4130 to i8
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4131, i8* %4132, align 1
  %4133 = lshr i32 %4113, 31
  %4134 = trunc i32 %4133 to i8
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4134, i8* %4135, align 1
  %4136 = lshr i32 %4109, 31
  %4137 = xor i32 %4133, %4136
  %4138 = add i32 %4137, %4136
  %4139 = icmp eq i32 %4138, 2
  %4140 = zext i1 %4139 to i8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4140, i8* %4141, align 1
  store %struct.Memory* %loadMem_42f479, %struct.Memory** %MEMORY
  %loadMem_42f47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 33
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %PC.i410
  %4146 = add i64 %4145, 18
  %4147 = load i64, i64* %PC.i410
  %4148 = add i64 %4147, 6
  %4149 = load i64, i64* %PC.i410
  %4150 = add i64 %4149, 6
  store i64 %4150, i64* %PC.i410
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4152 = load i8, i8* %4151, align 1
  %4153 = icmp eq i8 %4152, 0
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %BRANCH_TAKEN, align 1
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4156 = select i1 %4153, i64 %4146, i64 %4148
  store i64 %4156, i64* %4155, align 8
  store %struct.Memory* %loadMem_42f47c, %struct.Memory** %MEMORY
  %loadBr_42f47c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f47c = icmp eq i8 %loadBr_42f47c, 1
  br i1 %cmpBr_42f47c, label %block_.L_42f48e, label %block_.L_42f482

block_.L_42f482:                                  ; preds = %block_42f46e, %block_42f45a, %block_.L_42f446
  %loadMem_42f482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 33
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4159 to i64*
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 15
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %4162 to i64*
  %4163 = load i64, i64* %RBP.i409
  %4164 = sub i64 %4163, 52
  %4165 = load i64, i64* %PC.i408
  %4166 = add i64 %4165, 7
  store i64 %4166, i64* %PC.i408
  %4167 = inttoptr i64 %4164 to i32*
  store i32 1, i32* %4167
  store %struct.Memory* %loadMem_42f482, %struct.Memory** %MEMORY
  %loadMem_42f489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 33
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4170 to i64*
  %4171 = load i64, i64* %PC.i407
  %4172 = add i64 %4171, 12
  %4173 = load i64, i64* %PC.i407
  %4174 = add i64 %4173, 5
  store i64 %4174, i64* %PC.i407
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4172, i64* %4175, align 8
  store %struct.Memory* %loadMem_42f489, %struct.Memory** %MEMORY
  br label %block_.L_42f495

block_.L_42f48e:                                  ; preds = %block_42f46e
  %loadMem_42f48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 33
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 15
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %4181 to i64*
  %4182 = load i64, i64* %RBP.i406
  %4183 = sub i64 %4182, 52
  %4184 = load i64, i64* %PC.i405
  %4185 = add i64 %4184, 7
  store i64 %4185, i64* %PC.i405
  %4186 = inttoptr i64 %4183 to i32*
  store i32 2, i32* %4186
  store %struct.Memory* %loadMem_42f48e, %struct.Memory** %MEMORY
  br label %block_.L_42f495

block_.L_42f495:                                  ; preds = %block_.L_42f48e, %block_.L_42f482
  %loadMem_42f495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 33
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4189 to i64*
  %4190 = load i64, i64* %PC.i404
  %4191 = add i64 %4190, 714
  %4192 = load i64, i64* %PC.i404
  %4193 = add i64 %4192, 5
  store i64 %4193, i64* %PC.i404
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4191, i64* %4194, align 8
  store %struct.Memory* %loadMem_42f495, %struct.Memory** %MEMORY
  br label %block_.L_42f75f

block_.L_42f49a:                                  ; preds = %block_.L_42f2d7, %block_.L_42f2b6
  %loadMem_42f49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 1
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %4200 to i64*
  %4201 = load i64, i64* %PC.i402
  %4202 = add i64 %4201, 5
  store i64 %4202, i64* %PC.i402
  store i64 2, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_42f49a, %struct.Memory** %MEMORY
  %loadMem_42f49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 33
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 5
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %4208 to i64*
  %4209 = load i64, i64* %PC.i400
  %4210 = add i64 %4209, 5
  store i64 %4210, i64* %PC.i400
  store i64 1, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_42f49f, %struct.Memory** %MEMORY
  %loadMem_42f4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 7
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 15
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %RBP.i399
  %4221 = sub i64 %4220, 80
  %4222 = load i64, i64* %PC.i397
  %4223 = add i64 %4222, 4
  store i64 %4223, i64* %PC.i397
  %4224 = inttoptr i64 %4221 to i64*
  %4225 = load i64, i64* %4224
  store i64 %4225, i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_42f4a4, %struct.Memory** %MEMORY
  %loadMem_42f4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 33
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4228 to i64*
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 7
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %4231 to i64*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 9
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %RSI.i396 = bitcast %union.anon* %4234 to i64*
  %4235 = load i64, i64* %RDX.i395
  %4236 = add i64 %4235, 8
  %4237 = load i64, i64* %PC.i394
  %4238 = add i64 %4237, 4
  store i64 %4238, i64* %PC.i394
  %4239 = inttoptr i64 %4236 to i16*
  %4240 = load i16, i16* %4239
  %4241 = sext i16 %4240 to i64
  %4242 = and i64 %4241, 4294967295
  store i64 %4242, i64* %RSI.i396, align 8
  store %struct.Memory* %loadMem_42f4a8, %struct.Memory** %MEMORY
  %loadMem_42f4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 9
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %ESI.i393 = bitcast %union.anon* %4248 to i32*
  %4249 = load i32, i32* %ESI.i393
  %4250 = zext i32 %4249 to i64
  %4251 = load i64, i64* %PC.i392
  %4252 = add i64 %4251, 6
  store i64 %4252, i64* %PC.i392
  %4253 = sub i32 %4249, 8279
  %4254 = icmp ult i32 %4249, 8279
  %4255 = zext i1 %4254 to i8
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4255, i8* %4256, align 1
  %4257 = and i32 %4253, 255
  %4258 = call i32 @llvm.ctpop.i32(i32 %4257)
  %4259 = trunc i32 %4258 to i8
  %4260 = and i8 %4259, 1
  %4261 = xor i8 %4260, 1
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4261, i8* %4262, align 1
  %4263 = xor i64 8279, %4250
  %4264 = trunc i64 %4263 to i32
  %4265 = xor i32 %4264, %4253
  %4266 = lshr i32 %4265, 4
  %4267 = trunc i32 %4266 to i8
  %4268 = and i8 %4267, 1
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4268, i8* %4269, align 1
  %4270 = icmp eq i32 %4253, 0
  %4271 = zext i1 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4271, i8* %4272, align 1
  %4273 = lshr i32 %4253, 31
  %4274 = trunc i32 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4274, i8* %4275, align 1
  %4276 = lshr i32 %4249, 31
  %4277 = xor i32 %4273, %4276
  %4278 = add i32 %4277, %4276
  %4279 = icmp eq i32 %4278, 2
  %4280 = zext i1 %4279 to i8
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4280, i8* %4281, align 1
  store %struct.Memory* %loadMem_42f4ac, %struct.Memory** %MEMORY
  %loadMem_42f4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 33
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 5
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %ECX.i390 = bitcast %union.anon* %4287 to i32*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 1
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %4290 to i64*
  %4291 = load i32, i32* %ECX.i390
  %4292 = zext i32 %4291 to i64
  %4293 = load i64, i64* %PC.i389
  %4294 = add i64 %4293, 3
  store i64 %4294, i64* %PC.i389
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4296 = load i8, i8* %4295, align 1
  %4297 = icmp ne i8 %4296, 0
  %4298 = load i64, i64* %RAX.i391, align 8
  %4299 = select i1 %4297, i64 %4292, i64 %4298
  %4300 = and i64 %4299, 4294967295
  store i64 %4300, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_42f4b2, %struct.Memory** %MEMORY
  %loadMem_42f4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 1
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %4306 to i32*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 15
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %RBP.i388
  %4311 = sub i64 %4310, 52
  %4312 = load i32, i32* %EAX.i387
  %4313 = zext i32 %4312 to i64
  %4314 = load i64, i64* %PC.i386
  %4315 = add i64 %4314, 3
  store i64 %4315, i64* %PC.i386
  %4316 = inttoptr i64 %4311 to i32*
  store i32 %4312, i32* %4316
  store %struct.Memory* %loadMem_42f4b5, %struct.Memory** %MEMORY
  %loadMem_42f4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 33
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4319 to i64*
  %4320 = load i64, i64* %PC.i385
  %4321 = add i64 %4320, 8
  store i64 %4321, i64* %PC.i385
  %4322 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4323, align 1
  %4324 = and i32 %4322, 255
  %4325 = call i32 @llvm.ctpop.i32(i32 %4324)
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  %4328 = xor i8 %4327, 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4328, i8* %4329, align 1
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4330, align 1
  %4331 = icmp eq i32 %4322, 0
  %4332 = zext i1 %4331 to i8
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4332, i8* %4333, align 1
  %4334 = lshr i32 %4322, 31
  %4335 = trunc i32 %4334 to i8
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4335, i8* %4336, align 1
  %4337 = lshr i32 %4322, 31
  %4338 = xor i32 %4334, %4337
  %4339 = add i32 %4338, %4337
  %4340 = icmp eq i32 %4339, 2
  %4341 = zext i1 %4340 to i8
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4341, i8* %4342, align 1
  store %struct.Memory* %loadMem_42f4b8, %struct.Memory** %MEMORY
  %loadMem_42f4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 33
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %4345 to i64*
  %4346 = load i64, i64* %PC.i384
  %4347 = add i64 %4346, 65
  %4348 = load i64, i64* %PC.i384
  %4349 = add i64 %4348, 6
  %4350 = load i64, i64* %PC.i384
  %4351 = add i64 %4350, 6
  store i64 %4351, i64* %PC.i384
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4353 = load i8, i8* %4352, align 1
  store i8 %4353, i8* %BRANCH_TAKEN, align 1
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4355 = icmp ne i8 %4353, 0
  %4356 = select i1 %4355, i64 %4347, i64 %4349
  store i64 %4356, i64* %4354, align 8
  store %struct.Memory* %loadMem_42f4c0, %struct.Memory** %MEMORY
  %loadBr_42f4c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f4c0 = icmp eq i8 %loadBr_42f4c0, 1
  br i1 %cmpBr_42f4c0, label %block_.L_42f501, label %block_42f4c6

block_42f4c6:                                     ; preds = %block_.L_42f49a
  %loadMem_42f4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 15
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RBP.i383
  %4364 = sub i64 %4363, 68
  %4365 = load i64, i64* %PC.i382
  %4366 = add i64 %4365, 4
  store i64 %4366, i64* %PC.i382
  %4367 = inttoptr i64 %4364 to i32*
  %4368 = load i32, i32* %4367
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4369, align 1
  %4370 = and i32 %4368, 255
  %4371 = call i32 @llvm.ctpop.i32(i32 %4370)
  %4372 = trunc i32 %4371 to i8
  %4373 = and i8 %4372, 1
  %4374 = xor i8 %4373, 1
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4374, i8* %4375, align 1
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4376, align 1
  %4377 = icmp eq i32 %4368, 0
  %4378 = zext i1 %4377 to i8
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4378, i8* %4379, align 1
  %4380 = lshr i32 %4368, 31
  %4381 = trunc i32 %4380 to i8
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4381, i8* %4382, align 1
  %4383 = lshr i32 %4368, 31
  %4384 = xor i32 %4380, %4383
  %4385 = add i32 %4384, %4383
  %4386 = icmp eq i32 %4385, 2
  %4387 = zext i1 %4386 to i8
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4387, i8* %4388, align 1
  store %struct.Memory* %loadMem_42f4c6, %struct.Memory** %MEMORY
  %loadMem_42f4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4391 to i64*
  %4392 = load i64, i64* %PC.i381
  %4393 = add i64 %4392, 55
  %4394 = load i64, i64* %PC.i381
  %4395 = add i64 %4394, 6
  %4396 = load i64, i64* %PC.i381
  %4397 = add i64 %4396, 6
  store i64 %4397, i64* %PC.i381
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4399 = load i8, i8* %4398, align 1
  %4400 = icmp eq i8 %4399, 0
  %4401 = zext i1 %4400 to i8
  store i8 %4401, i8* %BRANCH_TAKEN, align 1
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4403 = select i1 %4400, i64 %4393, i64 %4395
  store i64 %4403, i64* %4402, align 8
  store %struct.Memory* %loadMem_42f4ca, %struct.Memory** %MEMORY
  %loadBr_42f4ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f4ca = icmp eq i8 %loadBr_42f4ca, 1
  br i1 %cmpBr_42f4ca, label %block_.L_42f501, label %block_42f4d0

block_42f4d0:                                     ; preds = %block_42f4c6
  %loadMem_42f4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 33
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 1
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %EAX.i379 = bitcast %union.anon* %4409 to i32*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 1
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %4412 to i64*
  %4413 = load i64, i64* %RAX.i380
  %4414 = load i32, i32* %EAX.i379
  %4415 = zext i32 %4414 to i64
  %4416 = load i64, i64* %PC.i378
  %4417 = add i64 %4416, 2
  store i64 %4417, i64* %PC.i378
  %4418 = xor i64 %4415, %4413
  %4419 = trunc i64 %4418 to i32
  %4420 = and i64 %4418, 4294967295
  store i64 %4420, i64* %RAX.i380, align 8
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4421, align 1
  %4422 = and i32 %4419, 255
  %4423 = call i32 @llvm.ctpop.i32(i32 %4422)
  %4424 = trunc i32 %4423 to i8
  %4425 = and i8 %4424, 1
  %4426 = xor i8 %4425, 1
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4426, i8* %4427, align 1
  %4428 = icmp eq i32 %4419, 0
  %4429 = zext i1 %4428 to i8
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4429, i8* %4430, align 1
  %4431 = lshr i32 %4419, 31
  %4432 = trunc i32 %4431 to i8
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4432, i8* %4433, align 1
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4434, align 1
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4435, align 1
  store %struct.Memory* %loadMem_42f4d0, %struct.Memory** %MEMORY
  %loadMem_42f4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 1
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %4441 to i32*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 9
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RSI.i377 = bitcast %union.anon* %4444 to i64*
  %4445 = load i32, i32* %EAX.i376
  %4446 = zext i32 %4445 to i64
  %4447 = load i64, i64* %PC.i375
  %4448 = add i64 %4447, 2
  store i64 %4448, i64* %PC.i375
  %4449 = and i64 %4446, 4294967295
  store i64 %4449, i64* %RSI.i377, align 8
  store %struct.Memory* %loadMem_42f4d2, %struct.Memory** %MEMORY
  %loadMem_42f4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 5
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RCX.i373 = bitcast %union.anon* %4455 to i64*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i374
  %4460 = sub i64 %4459, 16
  %4461 = load i64, i64* %PC.i372
  %4462 = add i64 %4461, 4
  store i64 %4462, i64* %PC.i372
  %4463 = inttoptr i64 %4460 to i64*
  %4464 = load i64, i64* %4463
  store i64 %4464, i64* %RCX.i373, align 8
  store %struct.Memory* %loadMem_42f4d4, %struct.Memory** %MEMORY
  %loadMem_42f4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 33
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4467 to i64*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 5
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %4470 to i64*
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 11
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %RDI.i371 = bitcast %union.anon* %4473 to i64*
  %4474 = load i64, i64* %RCX.i370
  %4475 = load i64, i64* %PC.i369
  %4476 = add i64 %4475, 2
  store i64 %4476, i64* %PC.i369
  %4477 = inttoptr i64 %4474 to i32*
  %4478 = load i32, i32* %4477
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %RDI.i371, align 8
  store %struct.Memory* %loadMem_42f4d8, %struct.Memory** %MEMORY
  %loadMem1_42f4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 33
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %PC.i368
  %4484 = add i64 %4483, -2730
  %4485 = load i64, i64* %PC.i368
  %4486 = add i64 %4485, 5
  %4487 = load i64, i64* %PC.i368
  %4488 = add i64 %4487, 5
  store i64 %4488, i64* %PC.i368
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4490 = load i64, i64* %4489, align 8
  %4491 = add i64 %4490, -8
  %4492 = inttoptr i64 %4491 to i64*
  store i64 %4486, i64* %4492
  store i64 %4491, i64* %4489, align 8
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4484, i64* %4493, align 8
  store %struct.Memory* %loadMem1_42f4da, %struct.Memory** %MEMORY
  %loadMem2_42f4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f4da = load i64, i64* %3
  %call2_42f4da = call %struct.Memory* @sub_42ea30.gnugo_sethand(%struct.State* %0, i64 %loadPC_42f4da, %struct.Memory* %loadMem2_42f4da)
  store %struct.Memory* %call2_42f4da, %struct.Memory** %MEMORY
  %loadMem_42f4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 9
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RSI.i367 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %PC.i366
  %4501 = add i64 %4500, 10
  store i64 %4501, i64* %PC.i366
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI.i367, align 8
  store %struct.Memory* %loadMem_42f4df, %struct.Memory** %MEMORY
  %loadMem_42f4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 33
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %4504 to i64*
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 5
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 15
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %4510 to i64*
  %4511 = load i64, i64* %RBP.i365
  %4512 = sub i64 %4511, 24
  %4513 = load i64, i64* %PC.i363
  %4514 = add i64 %4513, 4
  store i64 %4514, i64* %PC.i363
  %4515 = inttoptr i64 %4512 to i64*
  %4516 = load i64, i64* %4515
  store i64 %4516, i64* %RCX.i364, align 8
  store %struct.Memory* %loadMem_42f4e9, %struct.Memory** %MEMORY
  %loadMem_42f4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 33
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 5
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 11
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RDI.i362 = bitcast %union.anon* %4525 to i64*
  %4526 = load i64, i64* %RCX.i361
  %4527 = load i64, i64* %PC.i360
  %4528 = add i64 %4527, 3
  store i64 %4528, i64* %PC.i360
  %4529 = inttoptr i64 %4526 to i64*
  %4530 = load i64, i64* %4529
  store i64 %4530, i64* %RDI.i362, align 8
  store %struct.Memory* %loadMem_42f4ed, %struct.Memory** %MEMORY
  %loadMem_42f4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 33
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 5
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %4536 to i64*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 15
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %4539 to i64*
  %4540 = load i64, i64* %RBP.i359
  %4541 = sub i64 %4540, 16
  %4542 = load i64, i64* %PC.i357
  %4543 = add i64 %4542, 4
  store i64 %4543, i64* %PC.i357
  %4544 = inttoptr i64 %4541 to i64*
  %4545 = load i64, i64* %4544
  store i64 %4545, i64* %RCX.i358, align 8
  store %struct.Memory* %loadMem_42f4f0, %struct.Memory** %MEMORY
  %loadMem_42f4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 5
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 7
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %RCX.i355
  %4556 = load i64, i64* %PC.i354
  %4557 = add i64 %4556, 2
  store i64 %4557, i64* %PC.i354
  %4558 = inttoptr i64 %4555 to i32*
  %4559 = load i32, i32* %4558
  %4560 = zext i32 %4559 to i64
  store i64 %4560, i64* %RDX.i356, align 8
  store %struct.Memory* %loadMem_42f4f4, %struct.Memory** %MEMORY
  %loadMem_42f4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 33
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4563 to i64*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 1
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %4566 to i32*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 15
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %4569 to i64*
  %4570 = load i64, i64* %RBP.i353
  %4571 = sub i64 %4570, 152
  %4572 = load i32, i32* %EAX.i352
  %4573 = zext i32 %4572 to i64
  %4574 = load i64, i64* %PC.i351
  %4575 = add i64 %4574, 6
  store i64 %4575, i64* %PC.i351
  %4576 = inttoptr i64 %4571 to i32*
  store i32 %4572, i32* %4576
  store %struct.Memory* %loadMem_42f4f6, %struct.Memory** %MEMORY
  %loadMem1_42f4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4579 to i64*
  %4580 = load i64, i64* %PC.i350
  %4581 = add i64 %4580, -185548
  %4582 = load i64, i64* %PC.i350
  %4583 = add i64 %4582, 5
  %4584 = load i64, i64* %PC.i350
  %4585 = add i64 %4584, 5
  store i64 %4585, i64* %PC.i350
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4587 = load i64, i64* %4586, align 8
  %4588 = add i64 %4587, -8
  %4589 = inttoptr i64 %4588 to i64*
  store i64 %4583, i64* %4589
  store i64 %4588, i64* %4586, align 8
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4581, i64* %4590, align 8
  store %struct.Memory* %loadMem1_42f4fc, %struct.Memory** %MEMORY
  %loadMem2_42f4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f4fc = load i64, i64* %3
  %call2_42f4fc = call %struct.Memory* @sub_402030.sgfOverwritePropertyInt(%struct.State* %0, i64 %loadPC_42f4fc, %struct.Memory* %loadMem2_42f4fc)
  store %struct.Memory* %call2_42f4fc, %struct.Memory** %MEMORY
  br label %block_.L_42f501

block_.L_42f501:                                  ; preds = %block_42f4d0, %block_42f4c6, %block_.L_42f49a
  %loadMem_42f501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 33
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4593 to i64*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 1
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %4596 to i64*
  %4597 = load i64, i64* %PC.i348
  %4598 = add i64 %4597, 7
  store i64 %4598, i64* %PC.i348
  %4599 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %4600 = zext i32 %4599 to i64
  store i64 %4600, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_42f501, %struct.Memory** %MEMORY
  %loadMem_42f508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 33
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4603 to i64*
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 5
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 15
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4609 to i64*
  %4610 = load i64, i64* %RBP.i347
  %4611 = sub i64 %4610, 64
  %4612 = load i64, i64* %PC.i345
  %4613 = add i64 %4612, 3
  store i64 %4613, i64* %PC.i345
  %4614 = inttoptr i64 %4611 to i32*
  %4615 = load i32, i32* %4614
  %4616 = zext i32 %4615 to i64
  store i64 %4616, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_42f508, %struct.Memory** %MEMORY
  %loadMem_42f50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 33
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 5
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %4622 to i64*
  %4623 = load i64, i64* %RCX.i344
  %4624 = load i64, i64* %PC.i343
  %4625 = add i64 %4624, 3
  store i64 %4625, i64* %PC.i343
  %4626 = trunc i64 %4623 to i32
  %4627 = sub i32 %4626, 1
  %4628 = zext i32 %4627 to i64
  store i64 %4628, i64* %RCX.i344, align 8
  %4629 = icmp ult i32 %4626, 1
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4630, i8* %4631, align 1
  %4632 = and i32 %4627, 255
  %4633 = call i32 @llvm.ctpop.i32(i32 %4632)
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  %4636 = xor i8 %4635, 1
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4636, i8* %4637, align 1
  %4638 = xor i64 1, %4623
  %4639 = trunc i64 %4638 to i32
  %4640 = xor i32 %4639, %4627
  %4641 = lshr i32 %4640, 4
  %4642 = trunc i32 %4641 to i8
  %4643 = and i8 %4642, 1
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4643, i8* %4644, align 1
  %4645 = icmp eq i32 %4627, 0
  %4646 = zext i1 %4645 to i8
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4646, i8* %4647, align 1
  %4648 = lshr i32 %4627, 31
  %4649 = trunc i32 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4649, i8* %4650, align 1
  %4651 = lshr i32 %4626, 31
  %4652 = xor i32 %4648, %4651
  %4653 = add i32 %4652, %4651
  %4654 = icmp eq i32 %4653, 2
  %4655 = zext i1 %4654 to i8
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4655, i8* %4656, align 1
  store %struct.Memory* %loadMem_42f50b, %struct.Memory** %MEMORY
  %loadMem_42f50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 33
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4659 to i64*
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 1
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %EAX.i341 = bitcast %union.anon* %4662 to i32*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 5
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %ECX.i342 = bitcast %union.anon* %4665 to i32*
  %4666 = load i32, i32* %EAX.i341
  %4667 = zext i32 %4666 to i64
  %4668 = load i32, i32* %ECX.i342
  %4669 = zext i32 %4668 to i64
  %4670 = load i64, i64* %PC.i340
  %4671 = add i64 %4670, 2
  store i64 %4671, i64* %PC.i340
  %4672 = sub i32 %4666, %4668
  %4673 = icmp ult i32 %4666, %4668
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4674, i8* %4675, align 1
  %4676 = and i32 %4672, 255
  %4677 = call i32 @llvm.ctpop.i32(i32 %4676)
  %4678 = trunc i32 %4677 to i8
  %4679 = and i8 %4678, 1
  %4680 = xor i8 %4679, 1
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4680, i8* %4681, align 1
  %4682 = xor i64 %4669, %4667
  %4683 = trunc i64 %4682 to i32
  %4684 = xor i32 %4683, %4672
  %4685 = lshr i32 %4684, 4
  %4686 = trunc i32 %4685 to i8
  %4687 = and i8 %4686, 1
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4687, i8* %4688, align 1
  %4689 = icmp eq i32 %4672, 0
  %4690 = zext i1 %4689 to i8
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4690, i8* %4691, align 1
  %4692 = lshr i32 %4672, 31
  %4693 = trunc i32 %4692 to i8
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4693, i8* %4694, align 1
  %4695 = lshr i32 %4666, 31
  %4696 = lshr i32 %4668, 31
  %4697 = xor i32 %4696, %4695
  %4698 = xor i32 %4692, %4695
  %4699 = add i32 %4698, %4697
  %4700 = icmp eq i32 %4699, 2
  %4701 = zext i1 %4700 to i8
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4701, i8* %4702, align 1
  store %struct.Memory* %loadMem_42f50e, %struct.Memory** %MEMORY
  %loadMem_42f510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 33
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %4705 to i64*
  %4706 = load i64, i64* %PC.i339
  %4707 = add i64 %4706, 42
  %4708 = load i64, i64* %PC.i339
  %4709 = add i64 %4708, 6
  %4710 = load i64, i64* %PC.i339
  %4711 = add i64 %4710, 6
  store i64 %4711, i64* %PC.i339
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4713 = load i8, i8* %4712, align 1
  %4714 = icmp eq i8 %4713, 0
  %4715 = zext i1 %4714 to i8
  store i8 %4715, i8* %BRANCH_TAKEN, align 1
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4717 = select i1 %4714, i64 %4707, i64 %4709
  store i64 %4717, i64* %4716, align 8
  store %struct.Memory* %loadMem_42f510, %struct.Memory** %MEMORY
  %loadBr_42f510 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f510 = icmp eq i8 %loadBr_42f510, 1
  br i1 %cmpBr_42f510, label %block_.L_42f53a, label %block_42f516

block_42f516:                                     ; preds = %block_.L_42f501
  %loadMem_42f516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 33
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 1
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 15
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %4726 to i64*
  %4727 = load i64, i64* %RBP.i338
  %4728 = sub i64 %4727, 52
  %4729 = load i64, i64* %PC.i336
  %4730 = add i64 %4729, 3
  store i64 %4730, i64* %PC.i336
  %4731 = inttoptr i64 %4728 to i32*
  %4732 = load i32, i32* %4731
  %4733 = zext i32 %4732 to i64
  store i64 %4733, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_42f516, %struct.Memory** %MEMORY
  %loadMem_42f519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 33
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 5
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 15
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %4742 to i64*
  %4743 = load i64, i64* %RBP.i335
  %4744 = sub i64 %4743, 16
  %4745 = load i64, i64* %PC.i333
  %4746 = add i64 %4745, 4
  store i64 %4746, i64* %PC.i333
  %4747 = inttoptr i64 %4744 to i64*
  %4748 = load i64, i64* %4747
  store i64 %4748, i64* %RCX.i334, align 8
  store %struct.Memory* %loadMem_42f519, %struct.Memory** %MEMORY
  %loadMem_42f51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 33
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 1
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %EAX.i331 = bitcast %union.anon* %4754 to i32*
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 5
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %4757 to i64*
  %4758 = load i64, i64* %RCX.i332
  %4759 = add i64 %4758, 4
  %4760 = load i32, i32* %EAX.i331
  %4761 = zext i32 %4760 to i64
  %4762 = load i64, i64* %PC.i330
  %4763 = add i64 %4762, 3
  store i64 %4763, i64* %PC.i330
  %4764 = inttoptr i64 %4759 to i32*
  store i32 %4760, i32* %4764
  store %struct.Memory* %loadMem_42f51d, %struct.Memory** %MEMORY
  %loadMem_42f520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 33
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4767 to i64*
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4769 = getelementptr inbounds %struct.GPR, %struct.GPR* %4768, i32 0, i32 11
  %4770 = getelementptr inbounds %struct.Reg, %struct.Reg* %4769, i32 0, i32 0
  %RDI.i328 = bitcast %union.anon* %4770 to i64*
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 15
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %4773 to i64*
  %4774 = load i64, i64* %RBP.i329
  %4775 = sub i64 %4774, 24
  %4776 = load i64, i64* %PC.i327
  %4777 = add i64 %4776, 4
  store i64 %4777, i64* %PC.i327
  %4778 = inttoptr i64 %4775 to i64*
  %4779 = load i64, i64* %4778
  store i64 %4779, i64* %RDI.i328, align 8
  store %struct.Memory* %loadMem_42f520, %struct.Memory** %MEMORY
  %loadMem1_42f524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4782 to i64*
  %4783 = load i64, i64* %PC.i326
  %4784 = add i64 %4783, -176372
  %4785 = load i64, i64* %PC.i326
  %4786 = add i64 %4785, 5
  %4787 = load i64, i64* %PC.i326
  %4788 = add i64 %4787, 5
  store i64 %4788, i64* %PC.i326
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4790 = load i64, i64* %4789, align 8
  %4791 = add i64 %4790, -8
  %4792 = inttoptr i64 %4791 to i64*
  store i64 %4786, i64* %4792
  store i64 %4791, i64* %4789, align 8
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4784, i64* %4793, align 8
  store %struct.Memory* %loadMem1_42f524, %struct.Memory** %MEMORY
  %loadMem2_42f524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f524 = load i64, i64* %3
  %call2_42f524 = call %struct.Memory* @sub_404430.sgftreeBack(%struct.State* %0, i64 %loadPC_42f524, %struct.Memory* %loadMem2_42f524)
  store %struct.Memory* %call2_42f524, %struct.Memory** %MEMORY
  %loadMem_42f529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 7
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 15
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %4802 to i64*
  %4803 = load i64, i64* %RBP.i325
  %4804 = sub i64 %4803, 52
  %4805 = load i64, i64* %PC.i323
  %4806 = add i64 %4805, 3
  store i64 %4806, i64* %PC.i323
  %4807 = inttoptr i64 %4804 to i32*
  %4808 = load i32, i32* %4807
  %4809 = zext i32 %4808 to i64
  store i64 %4809, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_42f529, %struct.Memory** %MEMORY
  %loadMem_42f52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 33
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 7
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %EDX.i321 = bitcast %union.anon* %4815 to i32*
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 15
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %4818 to i64*
  %4819 = load i64, i64* %RBP.i322
  %4820 = sub i64 %4819, 4
  %4821 = load i32, i32* %EDX.i321
  %4822 = zext i32 %4821 to i64
  %4823 = load i64, i64* %PC.i320
  %4824 = add i64 %4823, 3
  store i64 %4824, i64* %PC.i320
  %4825 = inttoptr i64 %4820 to i32*
  store i32 %4821, i32* %4825
  store %struct.Memory* %loadMem_42f52c, %struct.Memory** %MEMORY
  %loadMem_42f52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 1
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %EAX.i318 = bitcast %union.anon* %4831 to i32*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 15
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RBP.i319
  %4836 = sub i64 %4835, 156
  %4837 = load i32, i32* %EAX.i318
  %4838 = zext i32 %4837 to i64
  %4839 = load i64, i64* %PC.i317
  %4840 = add i64 %4839, 6
  store i64 %4840, i64* %PC.i317
  %4841 = inttoptr i64 %4836 to i32*
  store i32 %4837, i32* %4841
  store %struct.Memory* %loadMem_42f52f, %struct.Memory** %MEMORY
  %loadMem_42f535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %4844 to i64*
  %4845 = load i64, i64* %PC.i316
  %4846 = add i64 %4845, 596
  %4847 = load i64, i64* %PC.i316
  %4848 = add i64 %4847, 5
  store i64 %4848, i64* %PC.i316
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4846, i64* %4849, align 8
  store %struct.Memory* %loadMem_42f535, %struct.Memory** %MEMORY
  br label %block_.L_42f789

block_.L_42f53a:                                  ; preds = %block_.L_42f501
  %loadMem_42f53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 33
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4852 to i64*
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 9
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %RSI.i314 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 15
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %RBP.i315
  %4860 = sub i64 %4859, 84
  %4861 = load i64, i64* %PC.i313
  %4862 = add i64 %4861, 4
  store i64 %4862, i64* %PC.i313
  store i64 %4860, i64* %RSI.i314, align 8
  store %struct.Memory* %loadMem_42f53a, %struct.Memory** %MEMORY
  %loadMem_42f53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 33
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 7
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 15
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %RBP.i312
  %4873 = sub i64 %4872, 88
  %4874 = load i64, i64* %PC.i310
  %4875 = add i64 %4874, 4
  store i64 %4875, i64* %PC.i310
  store i64 %4873, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_42f53e, %struct.Memory** %MEMORY
  %loadMem_42f542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 33
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4878 to i64*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 11
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %RDI.i308 = bitcast %union.anon* %4881 to i64*
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 15
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %4884 to i64*
  %4885 = load i64, i64* %RBP.i309
  %4886 = sub i64 %4885, 80
  %4887 = load i64, i64* %PC.i307
  %4888 = add i64 %4887, 4
  store i64 %4888, i64* %PC.i307
  %4889 = inttoptr i64 %4886 to i64*
  %4890 = load i64, i64* %4889
  store i64 %4890, i64* %RDI.i308, align 8
  store %struct.Memory* %loadMem_42f542, %struct.Memory** %MEMORY
  %loadMem_42f546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 33
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4893 to i64*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 5
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %4896 to i64*
  %4897 = load i64, i64* %PC.i305
  %4898 = add i64 %4897, 7
  store i64 %4898, i64* %PC.i305
  %4899 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %4900 = zext i32 %4899 to i64
  store i64 %4900, i64* %RCX.i306, align 8
  store %struct.Memory* %loadMem_42f546, %struct.Memory** %MEMORY
  %loadMem1_42f54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4903 to i64*
  %4904 = load i64, i64* %PC.i304
  %4905 = add i64 %4904, -188781
  %4906 = load i64, i64* %PC.i304
  %4907 = add i64 %4906, 5
  %4908 = load i64, i64* %PC.i304
  %4909 = add i64 %4908, 5
  store i64 %4909, i64* %PC.i304
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4911 = load i64, i64* %4910, align 8
  %4912 = add i64 %4911, -8
  %4913 = inttoptr i64 %4912 to i64*
  store i64 %4907, i64* %4913
  store i64 %4912, i64* %4910, align 8
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4905, i64* %4914, align 8
  store %struct.Memory* %loadMem1_42f54d, %struct.Memory** %MEMORY
  %loadMem2_42f54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f54d = load i64, i64* %3
  %call2_42f54d = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64 %loadPC_42f54d, %struct.Memory* %loadMem2_42f54d)
  store %struct.Memory* %call2_42f54d, %struct.Memory** %MEMORY
  %loadMem_42f552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 33
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 1
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %EAX.i303 = bitcast %union.anon* %4920 to i32*
  %4921 = load i32, i32* %EAX.i303
  %4922 = zext i32 %4921 to i64
  %4923 = load i64, i64* %PC.i302
  %4924 = add i64 %4923, 3
  store i64 %4924, i64* %PC.i302
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4925, align 1
  %4926 = and i32 %4921, 255
  %4927 = call i32 @llvm.ctpop.i32(i32 %4926)
  %4928 = trunc i32 %4927 to i8
  %4929 = and i8 %4928, 1
  %4930 = xor i8 %4929, 1
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4930, i8* %4931, align 1
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4932, align 1
  %4933 = icmp eq i32 %4921, 0
  %4934 = zext i1 %4933 to i8
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4934, i8* %4935, align 1
  %4936 = lshr i32 %4921, 31
  %4937 = trunc i32 %4936 to i8
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4937, i8* %4938, align 1
  %4939 = lshr i32 %4921, 31
  %4940 = xor i32 %4936, %4939
  %4941 = add i32 %4940, %4939
  %4942 = icmp eq i32 %4941, 2
  %4943 = zext i1 %4942 to i8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4943, i8* %4944, align 1
  store %struct.Memory* %loadMem_42f552, %struct.Memory** %MEMORY
  %loadMem_42f555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4946 = getelementptr inbounds %struct.GPR, %struct.GPR* %4945, i32 0, i32 33
  %4947 = getelementptr inbounds %struct.Reg, %struct.Reg* %4946, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4947 to i64*
  %4948 = load i64, i64* %PC.i301
  %4949 = add i64 %4948, 71
  %4950 = load i64, i64* %PC.i301
  %4951 = add i64 %4950, 6
  %4952 = load i64, i64* %PC.i301
  %4953 = add i64 %4952, 6
  store i64 %4953, i64* %PC.i301
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4955 = load i8, i8* %4954, align 1
  store i8 %4955, i8* %BRANCH_TAKEN, align 1
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4957 = icmp ne i8 %4955, 0
  %4958 = select i1 %4957, i64 %4949, i64 %4951
  store i64 %4958, i64* %4956, align 8
  store %struct.Memory* %loadMem_42f555, %struct.Memory** %MEMORY
  %loadBr_42f555 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f555 = icmp eq i8 %loadBr_42f555, 1
  br i1 %cmpBr_42f555, label %block_.L_42f59c, label %block_42f55b

block_42f55b:                                     ; preds = %block_.L_42f53a
  %loadMem_42f55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4960 = getelementptr inbounds %struct.GPR, %struct.GPR* %4959, i32 0, i32 33
  %4961 = getelementptr inbounds %struct.Reg, %struct.Reg* %4960, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4961 to i64*
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 1
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 15
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %4967 to i64*
  %4968 = load i64, i64* %RBP.i300
  %4969 = sub i64 %4968, 84
  %4970 = load i64, i64* %PC.i298
  %4971 = add i64 %4970, 3
  store i64 %4971, i64* %PC.i298
  %4972 = inttoptr i64 %4969 to i32*
  %4973 = load i32, i32* %4972
  %4974 = zext i32 %4973 to i64
  store i64 %4974, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_42f55b, %struct.Memory** %MEMORY
  %loadMem_42f55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 1
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %4980 to i32*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 15
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %4983 to i64*
  %4984 = load i32, i32* %EAX.i296
  %4985 = zext i32 %4984 to i64
  %4986 = load i64, i64* %RBP.i297
  %4987 = sub i64 %4986, 56
  %4988 = load i64, i64* %PC.i295
  %4989 = add i64 %4988, 3
  store i64 %4989, i64* %PC.i295
  %4990 = inttoptr i64 %4987 to i32*
  %4991 = load i32, i32* %4990
  %4992 = sub i32 %4984, %4991
  %4993 = icmp ult i32 %4984, %4991
  %4994 = zext i1 %4993 to i8
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4994, i8* %4995, align 1
  %4996 = and i32 %4992, 255
  %4997 = call i32 @llvm.ctpop.i32(i32 %4996)
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = xor i8 %4999, 1
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5000, i8* %5001, align 1
  %5002 = xor i32 %4991, %4984
  %5003 = xor i32 %5002, %4992
  %5004 = lshr i32 %5003, 4
  %5005 = trunc i32 %5004 to i8
  %5006 = and i8 %5005, 1
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5006, i8* %5007, align 1
  %5008 = icmp eq i32 %4992, 0
  %5009 = zext i1 %5008 to i8
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5009, i8* %5010, align 1
  %5011 = lshr i32 %4992, 31
  %5012 = trunc i32 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5012, i8* %5013, align 1
  %5014 = lshr i32 %4984, 31
  %5015 = lshr i32 %4991, 31
  %5016 = xor i32 %5015, %5014
  %5017 = xor i32 %5011, %5014
  %5018 = add i32 %5017, %5016
  %5019 = icmp eq i32 %5018, 2
  %5020 = zext i1 %5019 to i8
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5020, i8* %5021, align 1
  store %struct.Memory* %loadMem_42f55e, %struct.Memory** %MEMORY
  %loadMem_42f561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 33
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5024 to i64*
  %5025 = load i64, i64* %PC.i294
  %5026 = add i64 %5025, 54
  %5027 = load i64, i64* %PC.i294
  %5028 = add i64 %5027, 6
  %5029 = load i64, i64* %PC.i294
  %5030 = add i64 %5029, 6
  store i64 %5030, i64* %PC.i294
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5032 = load i8, i8* %5031, align 1
  %5033 = icmp eq i8 %5032, 0
  %5034 = zext i1 %5033 to i8
  store i8 %5034, i8* %BRANCH_TAKEN, align 1
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5036 = select i1 %5033, i64 %5026, i64 %5028
  store i64 %5036, i64* %5035, align 8
  store %struct.Memory* %loadMem_42f561, %struct.Memory** %MEMORY
  %loadBr_42f561 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f561 = icmp eq i8 %loadBr_42f561, 1
  br i1 %cmpBr_42f561, label %block_.L_42f597, label %block_42f567

block_42f567:                                     ; preds = %block_42f55b
  %loadMem_42f567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 1
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 15
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %5045 to i64*
  %5046 = load i64, i64* %RBP.i293
  %5047 = sub i64 %5046, 88
  %5048 = load i64, i64* %PC.i291
  %5049 = add i64 %5048, 3
  store i64 %5049, i64* %PC.i291
  %5050 = inttoptr i64 %5047 to i32*
  %5051 = load i32, i32* %5050
  %5052 = zext i32 %5051 to i64
  store i64 %5052, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_42f567, %struct.Memory** %MEMORY
  %loadMem_42f56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 1
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %5058 to i32*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 15
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %5061 to i64*
  %5062 = load i32, i32* %EAX.i289
  %5063 = zext i32 %5062 to i64
  %5064 = load i64, i64* %RBP.i290
  %5065 = sub i64 %5064, 60
  %5066 = load i64, i64* %PC.i288
  %5067 = add i64 %5066, 3
  store i64 %5067, i64* %PC.i288
  %5068 = inttoptr i64 %5065 to i32*
  %5069 = load i32, i32* %5068
  %5070 = sub i32 %5062, %5069
  %5071 = icmp ult i32 %5062, %5069
  %5072 = zext i1 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5072, i8* %5073, align 1
  %5074 = and i32 %5070, 255
  %5075 = call i32 @llvm.ctpop.i32(i32 %5074)
  %5076 = trunc i32 %5075 to i8
  %5077 = and i8 %5076, 1
  %5078 = xor i8 %5077, 1
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5078, i8* %5079, align 1
  %5080 = xor i32 %5069, %5062
  %5081 = xor i32 %5080, %5070
  %5082 = lshr i32 %5081, 4
  %5083 = trunc i32 %5082 to i8
  %5084 = and i8 %5083, 1
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5084, i8* %5085, align 1
  %5086 = icmp eq i32 %5070, 0
  %5087 = zext i1 %5086 to i8
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5087, i8* %5088, align 1
  %5089 = lshr i32 %5070, 31
  %5090 = trunc i32 %5089 to i8
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5090, i8* %5091, align 1
  %5092 = lshr i32 %5062, 31
  %5093 = lshr i32 %5069, 31
  %5094 = xor i32 %5093, %5092
  %5095 = xor i32 %5089, %5092
  %5096 = add i32 %5095, %5094
  %5097 = icmp eq i32 %5096, 2
  %5098 = zext i1 %5097 to i8
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5098, i8* %5099, align 1
  store %struct.Memory* %loadMem_42f56a, %struct.Memory** %MEMORY
  %loadMem_42f56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %5102 to i64*
  %5103 = load i64, i64* %PC.i287
  %5104 = add i64 %5103, 42
  %5105 = load i64, i64* %PC.i287
  %5106 = add i64 %5105, 6
  %5107 = load i64, i64* %PC.i287
  %5108 = add i64 %5107, 6
  store i64 %5108, i64* %PC.i287
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5110 = load i8, i8* %5109, align 1
  %5111 = icmp eq i8 %5110, 0
  %5112 = zext i1 %5111 to i8
  store i8 %5112, i8* %BRANCH_TAKEN, align 1
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5114 = select i1 %5111, i64 %5104, i64 %5106
  store i64 %5114, i64* %5113, align 8
  store %struct.Memory* %loadMem_42f56d, %struct.Memory** %MEMORY
  %loadBr_42f56d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f56d = icmp eq i8 %loadBr_42f56d, 1
  br i1 %cmpBr_42f56d, label %block_.L_42f597, label %block_42f573

block_42f573:                                     ; preds = %block_42f567
  %loadMem_42f573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 1
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 15
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %5123 to i64*
  %5124 = load i64, i64* %RBP.i286
  %5125 = sub i64 %5124, 52
  %5126 = load i64, i64* %PC.i284
  %5127 = add i64 %5126, 3
  store i64 %5127, i64* %PC.i284
  %5128 = inttoptr i64 %5125 to i32*
  %5129 = load i32, i32* %5128
  %5130 = zext i32 %5129 to i64
  store i64 %5130, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_42f573, %struct.Memory** %MEMORY
  %loadMem_42f576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 5
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 15
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %RBP.i283
  %5141 = sub i64 %5140, 16
  %5142 = load i64, i64* %PC.i281
  %5143 = add i64 %5142, 4
  store i64 %5143, i64* %PC.i281
  %5144 = inttoptr i64 %5141 to i64*
  %5145 = load i64, i64* %5144
  store i64 %5145, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_42f576, %struct.Memory** %MEMORY
  %loadMem_42f57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 33
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5148 to i64*
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 1
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %5151 to i32*
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 5
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %5154 to i64*
  %5155 = load i64, i64* %RCX.i280
  %5156 = add i64 %5155, 4
  %5157 = load i32, i32* %EAX.i279
  %5158 = zext i32 %5157 to i64
  %5159 = load i64, i64* %PC.i278
  %5160 = add i64 %5159, 3
  store i64 %5160, i64* %PC.i278
  %5161 = inttoptr i64 %5156 to i32*
  store i32 %5157, i32* %5161
  store %struct.Memory* %loadMem_42f57a, %struct.Memory** %MEMORY
  %loadMem_42f57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 33
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5164 to i64*
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 11
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %RDI.i276 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 15
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5170 to i64*
  %5171 = load i64, i64* %RBP.i277
  %5172 = sub i64 %5171, 24
  %5173 = load i64, i64* %PC.i275
  %5174 = add i64 %5173, 4
  store i64 %5174, i64* %PC.i275
  %5175 = inttoptr i64 %5172 to i64*
  %5176 = load i64, i64* %5175
  store i64 %5176, i64* %RDI.i276, align 8
  store %struct.Memory* %loadMem_42f57d, %struct.Memory** %MEMORY
  %loadMem1_42f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 33
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5179 to i64*
  %5180 = load i64, i64* %PC.i274
  %5181 = add i64 %5180, -176465
  %5182 = load i64, i64* %PC.i274
  %5183 = add i64 %5182, 5
  %5184 = load i64, i64* %PC.i274
  %5185 = add i64 %5184, 5
  store i64 %5185, i64* %PC.i274
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5187 = load i64, i64* %5186, align 8
  %5188 = add i64 %5187, -8
  %5189 = inttoptr i64 %5188 to i64*
  store i64 %5183, i64* %5189
  store i64 %5188, i64* %5186, align 8
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5181, i64* %5190, align 8
  store %struct.Memory* %loadMem1_42f581, %struct.Memory** %MEMORY
  %loadMem2_42f581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f581 = load i64, i64* %3
  %call2_42f581 = call %struct.Memory* @sub_404430.sgftreeBack(%struct.State* %0, i64 %loadPC_42f581, %struct.Memory* %loadMem2_42f581)
  store %struct.Memory* %call2_42f581, %struct.Memory** %MEMORY
  %loadMem_42f586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5192 = getelementptr inbounds %struct.GPR, %struct.GPR* %5191, i32 0, i32 33
  %5193 = getelementptr inbounds %struct.Reg, %struct.Reg* %5192, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %5193 to i64*
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 7
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 15
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %5199 to i64*
  %5200 = load i64, i64* %RBP.i273
  %5201 = sub i64 %5200, 52
  %5202 = load i64, i64* %PC.i271
  %5203 = add i64 %5202, 3
  store i64 %5203, i64* %PC.i271
  %5204 = inttoptr i64 %5201 to i32*
  %5205 = load i32, i32* %5204
  %5206 = zext i32 %5205 to i64
  store i64 %5206, i64* %RDX.i272, align 8
  store %struct.Memory* %loadMem_42f586, %struct.Memory** %MEMORY
  %loadMem_42f589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 33
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 7
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %EDX.i269 = bitcast %union.anon* %5212 to i32*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 15
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %5215 to i64*
  %5216 = load i64, i64* %RBP.i270
  %5217 = sub i64 %5216, 4
  %5218 = load i32, i32* %EDX.i269
  %5219 = zext i32 %5218 to i64
  %5220 = load i64, i64* %PC.i268
  %5221 = add i64 %5220, 3
  store i64 %5221, i64* %PC.i268
  %5222 = inttoptr i64 %5217 to i32*
  store i32 %5218, i32* %5222
  store %struct.Memory* %loadMem_42f589, %struct.Memory** %MEMORY
  %loadMem_42f58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 33
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 1
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %5228 to i32*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 15
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %5231 to i64*
  %5232 = load i64, i64* %RBP.i267
  %5233 = sub i64 %5232, 160
  %5234 = load i32, i32* %EAX.i266
  %5235 = zext i32 %5234 to i64
  %5236 = load i64, i64* %PC.i265
  %5237 = add i64 %5236, 6
  store i64 %5237, i64* %PC.i265
  %5238 = inttoptr i64 %5233 to i32*
  store i32 %5234, i32* %5238
  store %struct.Memory* %loadMem_42f58c, %struct.Memory** %MEMORY
  %loadMem_42f592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 33
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5241 to i64*
  %5242 = load i64, i64* %PC.i264
  %5243 = add i64 %5242, 503
  %5244 = load i64, i64* %PC.i264
  %5245 = add i64 %5244, 5
  store i64 %5245, i64* %PC.i264
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5243, i64* %5246, align 8
  store %struct.Memory* %loadMem_42f592, %struct.Memory** %MEMORY
  br label %block_.L_42f789

block_.L_42f597:                                  ; preds = %block_42f567, %block_42f55b
  %loadMem_42f597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5249 to i64*
  %5250 = load i64, i64* %PC.i263
  %5251 = add i64 %5250, 5
  %5252 = load i64, i64* %PC.i263
  %5253 = add i64 %5252, 5
  store i64 %5253, i64* %PC.i263
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5251, i64* %5254, align 8
  store %struct.Memory* %loadMem_42f597, %struct.Memory** %MEMORY
  br label %block_.L_42f59c

block_.L_42f59c:                                  ; preds = %block_.L_42f597, %block_.L_42f53a
  %loadMem_42f59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 7
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 15
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %RBP.i262
  %5265 = sub i64 %5264, 84
  %5266 = load i64, i64* %PC.i260
  %5267 = add i64 %5266, 4
  store i64 %5267, i64* %PC.i260
  store i64 %5265, i64* %RDX.i261, align 8
  store %struct.Memory* %loadMem_42f59c, %struct.Memory** %MEMORY
  %loadMem_42f5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 33
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5270 to i64*
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 5
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 15
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %5276 to i64*
  %5277 = load i64, i64* %RBP.i259
  %5278 = sub i64 %5277, 88
  %5279 = load i64, i64* %PC.i257
  %5280 = add i64 %5279, 4
  store i64 %5280, i64* %PC.i257
  store i64 %5278, i64* %RCX.i258, align 8
  store %struct.Memory* %loadMem_42f5a0, %struct.Memory** %MEMORY
  %loadMem_42f5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 33
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 11
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %RDI.i255 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 15
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %5289 to i64*
  %5290 = load i64, i64* %RBP.i256
  %5291 = sub i64 %5290, 84
  %5292 = load i64, i64* %PC.i254
  %5293 = add i64 %5292, 3
  store i64 %5293, i64* %PC.i254
  %5294 = inttoptr i64 %5291 to i32*
  %5295 = load i32, i32* %5294
  %5296 = zext i32 %5295 to i64
  store i64 %5296, i64* %RDI.i255, align 8
  store %struct.Memory* %loadMem_42f5a4, %struct.Memory** %MEMORY
  %loadMem_42f5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 33
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5299 to i64*
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5301 = getelementptr inbounds %struct.GPR, %struct.GPR* %5300, i32 0, i32 9
  %5302 = getelementptr inbounds %struct.Reg, %struct.Reg* %5301, i32 0, i32 0
  %RSI.i252 = bitcast %union.anon* %5302 to i64*
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 15
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %5305 to i64*
  %5306 = load i64, i64* %RBP.i253
  %5307 = sub i64 %5306, 88
  %5308 = load i64, i64* %PC.i251
  %5309 = add i64 %5308, 3
  store i64 %5309, i64* %PC.i251
  %5310 = inttoptr i64 %5307 to i32*
  %5311 = load i32, i32* %5310
  %5312 = zext i32 %5311 to i64
  store i64 %5312, i64* %RSI.i252, align 8
  store %struct.Memory* %loadMem_42f5a7, %struct.Memory** %MEMORY
  %loadMem_42f5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 33
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5315 to i64*
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 17
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %R8D.i250 = bitcast %union.anon* %5318 to i32*
  %5319 = bitcast i32* %R8D.i250 to i64*
  %5320 = load i64, i64* %PC.i249
  %5321 = add i64 %5320, 8
  store i64 %5321, i64* %PC.i249
  %5322 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %5323 = zext i32 %5322 to i64
  store i64 %5323, i64* %5319, align 8
  store %struct.Memory* %loadMem_42f5aa, %struct.Memory** %MEMORY
  %loadMem_42f5b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 19
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %R9D.i247 = bitcast %union.anon* %5329 to i32*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 15
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %5332 to i64*
  %5333 = bitcast i32* %R9D.i247 to i64*
  %5334 = load i64, i64* %RBP.i248
  %5335 = sub i64 %5334, 36
  %5336 = load i64, i64* %PC.i246
  %5337 = add i64 %5336, 4
  store i64 %5337, i64* %PC.i246
  %5338 = inttoptr i64 %5335 to i32*
  %5339 = load i32, i32* %5338
  %5340 = zext i32 %5339 to i64
  store i64 %5340, i64* %5333, align 8
  store %struct.Memory* %loadMem_42f5b2, %struct.Memory** %MEMORY
  %loadMem1_42f5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 33
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5343 to i64*
  %5344 = load i64, i64* %PC.i245
  %5345 = add i64 %5344, 734170
  %5346 = load i64, i64* %PC.i245
  %5347 = add i64 %5346, 5
  %5348 = load i64, i64* %PC.i245
  %5349 = add i64 %5348, 5
  store i64 %5349, i64* %PC.i245
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5351 = load i64, i64* %5350, align 8
  %5352 = add i64 %5351, -8
  %5353 = inttoptr i64 %5352 to i64*
  store i64 %5347, i64* %5353
  store i64 %5352, i64* %5350, align 8
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5345, i64* %5354, align 8
  store %struct.Memory* %loadMem1_42f5b6, %struct.Memory** %MEMORY
  %loadMem2_42f5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f5b6 = load i64, i64* %3
  %call2_42f5b6 = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64 %loadPC_42f5b6, %struct.Memory* %loadMem2_42f5b6)
  store %struct.Memory* %call2_42f5b6, %struct.Memory** %MEMORY
  %loadMem_42f5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 33
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 9
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RSI.i243 = bitcast %union.anon* %5360 to i64*
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 15
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %5363 to i64*
  %5364 = load i64, i64* %RBP.i244
  %5365 = sub i64 %5364, 84
  %5366 = load i64, i64* %PC.i242
  %5367 = add i64 %5366, 3
  store i64 %5367, i64* %PC.i242
  %5368 = inttoptr i64 %5365 to i32*
  %5369 = load i32, i32* %5368
  %5370 = zext i32 %5369 to i64
  store i64 %5370, i64* %RSI.i243, align 8
  store %struct.Memory* %loadMem_42f5bb, %struct.Memory** %MEMORY
  %loadMem_42f5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 33
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %5373 to i64*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 9
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5376 to i32*
  %5377 = load i32, i32* %ESI.i
  %5378 = zext i32 %5377 to i64
  %5379 = load i64, i64* %PC.i241
  %5380 = add i64 %5379, 7
  store i64 %5380, i64* %PC.i241
  %5381 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %5382 = sub i32 %5377, %5381
  %5383 = icmp ult i32 %5377, %5381
  %5384 = zext i1 %5383 to i8
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5384, i8* %5385, align 1
  %5386 = and i32 %5382, 255
  %5387 = call i32 @llvm.ctpop.i32(i32 %5386)
  %5388 = trunc i32 %5387 to i8
  %5389 = and i8 %5388, 1
  %5390 = xor i8 %5389, 1
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5390, i8* %5391, align 1
  %5392 = xor i32 %5381, %5377
  %5393 = xor i32 %5392, %5382
  %5394 = lshr i32 %5393, 4
  %5395 = trunc i32 %5394 to i8
  %5396 = and i8 %5395, 1
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5396, i8* %5397, align 1
  %5398 = icmp eq i32 %5382, 0
  %5399 = zext i1 %5398 to i8
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5399, i8* %5400, align 1
  %5401 = lshr i32 %5382, 31
  %5402 = trunc i32 %5401 to i8
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5402, i8* %5403, align 1
  %5404 = lshr i32 %5377, 31
  %5405 = lshr i32 %5381, 31
  %5406 = xor i32 %5405, %5404
  %5407 = xor i32 %5401, %5404
  %5408 = add i32 %5407, %5406
  %5409 = icmp eq i32 %5408, 2
  %5410 = zext i1 %5409 to i8
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5410, i8* %5411, align 1
  store %struct.Memory* %loadMem_42f5be, %struct.Memory** %MEMORY
  %loadMem_42f5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5414 to i64*
  %5415 = load i64, i64* %PC.i240
  %5416 = add i64 %5415, 52
  %5417 = load i64, i64* %PC.i240
  %5418 = add i64 %5417, 6
  %5419 = load i64, i64* %PC.i240
  %5420 = add i64 %5419, 6
  store i64 %5420, i64* %PC.i240
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5422 = load i8, i8* %5421, align 1
  %5423 = icmp eq i8 %5422, 0
  %5424 = zext i1 %5423 to i8
  store i8 %5424, i8* %BRANCH_TAKEN, align 1
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5426 = select i1 %5423, i64 %5416, i64 %5418
  store i64 %5426, i64* %5425, align 8
  store %struct.Memory* %loadMem_42f5c5, %struct.Memory** %MEMORY
  %loadBr_42f5c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5c5 = icmp eq i8 %loadBr_42f5c5, 1
  br i1 %cmpBr_42f5c5, label %block_.L_42f5f9, label %block_42f5cb

block_42f5cb:                                     ; preds = %block_.L_42f59c
  %loadMem_42f5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 33
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5429 to i64*
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5431 = getelementptr inbounds %struct.GPR, %struct.GPR* %5430, i32 0, i32 1
  %5432 = getelementptr inbounds %struct.Reg, %struct.Reg* %5431, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %5432 to i64*
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 15
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5435 to i64*
  %5436 = load i64, i64* %RBP.i239
  %5437 = sub i64 %5436, 88
  %5438 = load i64, i64* %PC.i237
  %5439 = add i64 %5438, 3
  store i64 %5439, i64* %PC.i237
  %5440 = inttoptr i64 %5437 to i32*
  %5441 = load i32, i32* %5440
  %5442 = zext i32 %5441 to i64
  store i64 %5442, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_42f5cb, %struct.Memory** %MEMORY
  %loadMem_42f5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 33
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %5445 to i64*
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 1
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %EAX.i236 = bitcast %union.anon* %5448 to i32*
  %5449 = load i32, i32* %EAX.i236
  %5450 = zext i32 %5449 to i64
  %5451 = load i64, i64* %PC.i235
  %5452 = add i64 %5451, 7
  store i64 %5452, i64* %PC.i235
  %5453 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %5454 = sub i32 %5449, %5453
  %5455 = icmp ult i32 %5449, %5453
  %5456 = zext i1 %5455 to i8
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5456, i8* %5457, align 1
  %5458 = and i32 %5454, 255
  %5459 = call i32 @llvm.ctpop.i32(i32 %5458)
  %5460 = trunc i32 %5459 to i8
  %5461 = and i8 %5460, 1
  %5462 = xor i8 %5461, 1
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5462, i8* %5463, align 1
  %5464 = xor i32 %5453, %5449
  %5465 = xor i32 %5464, %5454
  %5466 = lshr i32 %5465, 4
  %5467 = trunc i32 %5466 to i8
  %5468 = and i8 %5467, 1
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5468, i8* %5469, align 1
  %5470 = icmp eq i32 %5454, 0
  %5471 = zext i1 %5470 to i8
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5471, i8* %5472, align 1
  %5473 = lshr i32 %5454, 31
  %5474 = trunc i32 %5473 to i8
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5474, i8* %5475, align 1
  %5476 = lshr i32 %5449, 31
  %5477 = lshr i32 %5453, 31
  %5478 = xor i32 %5477, %5476
  %5479 = xor i32 %5473, %5476
  %5480 = add i32 %5479, %5478
  %5481 = icmp eq i32 %5480, 2
  %5482 = zext i1 %5481 to i8
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5482, i8* %5483, align 1
  store %struct.Memory* %loadMem_42f5ce, %struct.Memory** %MEMORY
  %loadMem_42f5d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 33
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %5486 to i64*
  %5487 = load i64, i64* %PC.i234
  %5488 = add i64 %5487, 36
  %5489 = load i64, i64* %PC.i234
  %5490 = add i64 %5489, 6
  %5491 = load i64, i64* %PC.i234
  %5492 = add i64 %5491, 6
  store i64 %5492, i64* %PC.i234
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5494 = load i8, i8* %5493, align 1
  %5495 = icmp eq i8 %5494, 0
  %5496 = zext i1 %5495 to i8
  store i8 %5496, i8* %BRANCH_TAKEN, align 1
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5498 = select i1 %5495, i64 %5488, i64 %5490
  store i64 %5498, i64* %5497, align 8
  store %struct.Memory* %loadMem_42f5d5, %struct.Memory** %MEMORY
  %loadBr_42f5d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5d5 = icmp eq i8 %loadBr_42f5d5, 1
  br i1 %cmpBr_42f5d5, label %block_.L_42f5f9, label %block_42f5db

block_42f5db:                                     ; preds = %block_42f5cb
  %loadMem_42f5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 1
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %5504 to i64*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 15
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %5507 to i64*
  %5508 = load i64, i64* %RBP.i233
  %5509 = sub i64 %5508, 84
  %5510 = load i64, i64* %PC.i231
  %5511 = add i64 %5510, 4
  store i64 %5511, i64* %PC.i231
  %5512 = inttoptr i64 %5509 to i32*
  %5513 = load i32, i32* %5512
  %5514 = sext i32 %5513 to i64
  %5515 = mul i64 %5514, 20
  %5516 = trunc i64 %5515 to i32
  %5517 = and i64 %5515, 4294967295
  store i64 %5517, i64* %RAX.i232, align 8
  %5518 = shl i64 %5515, 32
  %5519 = ashr exact i64 %5518, 32
  %5520 = icmp ne i64 %5519, %5515
  %5521 = zext i1 %5520 to i8
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5521, i8* %5522, align 1
  %5523 = and i32 %5516, 255
  %5524 = call i32 @llvm.ctpop.i32(i32 %5523)
  %5525 = trunc i32 %5524 to i8
  %5526 = and i8 %5525, 1
  %5527 = xor i8 %5526, 1
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5527, i8* %5528, align 1
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5529, align 1
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5530, align 1
  %5531 = lshr i32 %5516, 31
  %5532 = trunc i32 %5531 to i8
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5532, i8* %5533, align 1
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5521, i8* %5534, align 1
  store %struct.Memory* %loadMem_42f5db, %struct.Memory** %MEMORY
  %loadMem_42f5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 33
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %5537 to i64*
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5539 = getelementptr inbounds %struct.GPR, %struct.GPR* %5538, i32 0, i32 1
  %5540 = getelementptr inbounds %struct.Reg, %struct.Reg* %5539, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %5540 to i64*
  %5541 = load i64, i64* %RAX.i230
  %5542 = load i64, i64* %PC.i229
  %5543 = add i64 %5542, 3
  store i64 %5543, i64* %PC.i229
  %5544 = trunc i64 %5541 to i32
  %5545 = add i32 21, %5544
  %5546 = zext i32 %5545 to i64
  store i64 %5546, i64* %RAX.i230, align 8
  %5547 = icmp ult i32 %5545, %5544
  %5548 = icmp ult i32 %5545, 21
  %5549 = or i1 %5547, %5548
  %5550 = zext i1 %5549 to i8
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5550, i8* %5551, align 1
  %5552 = and i32 %5545, 255
  %5553 = call i32 @llvm.ctpop.i32(i32 %5552)
  %5554 = trunc i32 %5553 to i8
  %5555 = and i8 %5554, 1
  %5556 = xor i8 %5555, 1
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5556, i8* %5557, align 1
  %5558 = xor i64 21, %5541
  %5559 = trunc i64 %5558 to i32
  %5560 = xor i32 %5559, %5545
  %5561 = lshr i32 %5560, 4
  %5562 = trunc i32 %5561 to i8
  %5563 = and i8 %5562, 1
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5563, i8* %5564, align 1
  %5565 = icmp eq i32 %5545, 0
  %5566 = zext i1 %5565 to i8
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5566, i8* %5567, align 1
  %5568 = lshr i32 %5545, 31
  %5569 = trunc i32 %5568 to i8
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5569, i8* %5570, align 1
  %5571 = lshr i32 %5544, 31
  %5572 = xor i32 %5568, %5571
  %5573 = add i32 %5572, %5568
  %5574 = icmp eq i32 %5573, 2
  %5575 = zext i1 %5574 to i8
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5575, i8* %5576, align 1
  store %struct.Memory* %loadMem_42f5df, %struct.Memory** %MEMORY
  %loadMem_42f5e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 33
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 1
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %5582 to i64*
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 15
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %5585 to i64*
  %5586 = load i64, i64* %RAX.i227
  %5587 = load i64, i64* %RBP.i228
  %5588 = sub i64 %5587, 88
  %5589 = load i64, i64* %PC.i226
  %5590 = add i64 %5589, 3
  store i64 %5590, i64* %PC.i226
  %5591 = trunc i64 %5586 to i32
  %5592 = inttoptr i64 %5588 to i32*
  %5593 = load i32, i32* %5592
  %5594 = add i32 %5593, %5591
  %5595 = zext i32 %5594 to i64
  store i64 %5595, i64* %RAX.i227, align 8
  %5596 = icmp ult i32 %5594, %5591
  %5597 = icmp ult i32 %5594, %5593
  %5598 = or i1 %5596, %5597
  %5599 = zext i1 %5598 to i8
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5599, i8* %5600, align 1
  %5601 = and i32 %5594, 255
  %5602 = call i32 @llvm.ctpop.i32(i32 %5601)
  %5603 = trunc i32 %5602 to i8
  %5604 = and i8 %5603, 1
  %5605 = xor i8 %5604, 1
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5605, i8* %5606, align 1
  %5607 = xor i32 %5593, %5591
  %5608 = xor i32 %5607, %5594
  %5609 = lshr i32 %5608, 4
  %5610 = trunc i32 %5609 to i8
  %5611 = and i8 %5610, 1
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5611, i8* %5612, align 1
  %5613 = icmp eq i32 %5594, 0
  %5614 = zext i1 %5613 to i8
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5614, i8* %5615, align 1
  %5616 = lshr i32 %5594, 31
  %5617 = trunc i32 %5616 to i8
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5617, i8* %5618, align 1
  %5619 = lshr i32 %5591, 31
  %5620 = lshr i32 %5593, 31
  %5621 = xor i32 %5616, %5619
  %5622 = xor i32 %5616, %5620
  %5623 = add i32 %5621, %5622
  %5624 = icmp eq i32 %5623, 2
  %5625 = zext i1 %5624 to i8
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5625, i8* %5626, align 1
  store %struct.Memory* %loadMem_42f5e2, %struct.Memory** %MEMORY
  %loadMem_42f5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 1
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %5632 to i32*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 5
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %5635 to i64*
  %5636 = load i32, i32* %EAX.i224
  %5637 = zext i32 %5636 to i64
  %5638 = load i64, i64* %PC.i223
  %5639 = add i64 %5638, 3
  store i64 %5639, i64* %PC.i223
  %5640 = shl i64 %5637, 32
  %5641 = ashr exact i64 %5640, 32
  store i64 %5641, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_42f5e5, %struct.Memory** %MEMORY
  %loadMem_42f5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 1
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 5
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %5650 to i64*
  %5651 = load i64, i64* %RCX.i222
  %5652 = add i64 %5651, 12099168
  %5653 = load i64, i64* %PC.i220
  %5654 = add i64 %5653, 8
  store i64 %5654, i64* %PC.i220
  %5655 = inttoptr i64 %5652 to i8*
  %5656 = load i8, i8* %5655
  %5657 = zext i8 %5656 to i64
  store i64 %5657, i64* %RAX.i221, align 8
  store %struct.Memory* %loadMem_42f5e8, %struct.Memory** %MEMORY
  %loadMem_42f5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 33
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 1
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %5663 to i32*
  %5664 = load i32, i32* %EAX.i219
  %5665 = zext i32 %5664 to i64
  %5666 = load i64, i64* %PC.i218
  %5667 = add i64 %5666, 3
  store i64 %5667, i64* %PC.i218
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5668, align 1
  %5669 = and i32 %5664, 255
  %5670 = call i32 @llvm.ctpop.i32(i32 %5669)
  %5671 = trunc i32 %5670 to i8
  %5672 = and i8 %5671, 1
  %5673 = xor i8 %5672, 1
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5673, i8* %5674, align 1
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5675, align 1
  %5676 = icmp eq i32 %5664, 0
  %5677 = zext i1 %5676 to i8
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5677, i8* %5678, align 1
  %5679 = lshr i32 %5664, 31
  %5680 = trunc i32 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5680, i8* %5681, align 1
  %5682 = lshr i32 %5664, 31
  %5683 = xor i32 %5679, %5682
  %5684 = add i32 %5683, %5682
  %5685 = icmp eq i32 %5684, 2
  %5686 = zext i1 %5685 to i8
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5686, i8* %5687, align 1
  store %struct.Memory* %loadMem_42f5f0, %struct.Memory** %MEMORY
  %loadMem_42f5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 33
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5690 to i64*
  %5691 = load i64, i64* %PC.i217
  %5692 = add i64 %5691, 26
  %5693 = load i64, i64* %PC.i217
  %5694 = add i64 %5693, 6
  %5695 = load i64, i64* %PC.i217
  %5696 = add i64 %5695, 6
  store i64 %5696, i64* %PC.i217
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5698 = load i8, i8* %5697, align 1
  store i8 %5698, i8* %BRANCH_TAKEN, align 1
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5700 = icmp ne i8 %5698, 0
  %5701 = select i1 %5700, i64 %5692, i64 %5694
  store i64 %5701, i64* %5699, align 8
  store %struct.Memory* %loadMem_42f5f3, %struct.Memory** %MEMORY
  %loadBr_42f5f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5f3 = icmp eq i8 %loadBr_42f5f3, 1
  br i1 %cmpBr_42f5f3, label %block_.L_42f60d, label %block_.L_42f5f9

block_.L_42f5f9:                                  ; preds = %block_42f5db, %block_42f5cb, %block_.L_42f59c
  %loadMem_42f5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 15
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %5707 to i64*
  %5708 = load i64, i64* %RBP.i216
  %5709 = sub i64 %5708, 84
  %5710 = load i64, i64* %PC.i215
  %5711 = add i64 %5710, 4
  store i64 %5711, i64* %PC.i215
  %5712 = inttoptr i64 %5709 to i32*
  %5713 = load i32, i32* %5712
  %5714 = sub i32 %5713, -1
  %5715 = icmp ult i32 %5713, -1
  %5716 = zext i1 %5715 to i8
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5716, i8* %5717, align 1
  %5718 = and i32 %5714, 255
  %5719 = call i32 @llvm.ctpop.i32(i32 %5718)
  %5720 = trunc i32 %5719 to i8
  %5721 = and i8 %5720, 1
  %5722 = xor i8 %5721, 1
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5722, i8* %5723, align 1
  %5724 = xor i32 %5713, -1
  %5725 = xor i32 %5724, %5714
  %5726 = lshr i32 %5725, 4
  %5727 = trunc i32 %5726 to i8
  %5728 = and i8 %5727, 1
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5728, i8* %5729, align 1
  %5730 = icmp eq i32 %5714, 0
  %5731 = zext i1 %5730 to i8
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5731, i8* %5732, align 1
  %5733 = lshr i32 %5714, 31
  %5734 = trunc i32 %5733 to i8
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5734, i8* %5735, align 1
  %5736 = lshr i32 %5713, 31
  %5737 = xor i32 %5736, 1
  %5738 = xor i32 %5733, %5736
  %5739 = add i32 %5738, %5737
  %5740 = icmp eq i32 %5739, 2
  %5741 = zext i1 %5740 to i8
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5741, i8* %5742, align 1
  store %struct.Memory* %loadMem_42f5f9, %struct.Memory** %MEMORY
  %loadMem_42f5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 33
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5745 to i64*
  %5746 = load i64, i64* %PC.i214
  %5747 = add i64 %5746, 46
  %5748 = load i64, i64* %PC.i214
  %5749 = add i64 %5748, 6
  %5750 = load i64, i64* %PC.i214
  %5751 = add i64 %5750, 6
  store i64 %5751, i64* %PC.i214
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5753 = load i8, i8* %5752, align 1
  %5754 = icmp eq i8 %5753, 0
  %5755 = zext i1 %5754 to i8
  store i8 %5755, i8* %BRANCH_TAKEN, align 1
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5757 = select i1 %5754, i64 %5747, i64 %5749
  store i64 %5757, i64* %5756, align 8
  store %struct.Memory* %loadMem_42f5fd, %struct.Memory** %MEMORY
  %loadBr_42f5fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f5fd = icmp eq i8 %loadBr_42f5fd, 1
  br i1 %cmpBr_42f5fd, label %block_.L_42f62b, label %block_42f603

block_42f603:                                     ; preds = %block_.L_42f5f9
  %loadMem_42f603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 15
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %5763 to i64*
  %5764 = load i64, i64* %RBP.i213
  %5765 = sub i64 %5764, 88
  %5766 = load i64, i64* %PC.i212
  %5767 = add i64 %5766, 4
  store i64 %5767, i64* %PC.i212
  %5768 = inttoptr i64 %5765 to i32*
  %5769 = load i32, i32* %5768
  %5770 = sub i32 %5769, -1
  %5771 = icmp ult i32 %5769, -1
  %5772 = zext i1 %5771 to i8
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5772, i8* %5773, align 1
  %5774 = and i32 %5770, 255
  %5775 = call i32 @llvm.ctpop.i32(i32 %5774)
  %5776 = trunc i32 %5775 to i8
  %5777 = and i8 %5776, 1
  %5778 = xor i8 %5777, 1
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5778, i8* %5779, align 1
  %5780 = xor i32 %5769, -1
  %5781 = xor i32 %5780, %5770
  %5782 = lshr i32 %5781, 4
  %5783 = trunc i32 %5782 to i8
  %5784 = and i8 %5783, 1
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5784, i8* %5785, align 1
  %5786 = icmp eq i32 %5770, 0
  %5787 = zext i1 %5786 to i8
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5787, i8* %5788, align 1
  %5789 = lshr i32 %5770, 31
  %5790 = trunc i32 %5789 to i8
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5790, i8* %5791, align 1
  %5792 = lshr i32 %5769, 31
  %5793 = xor i32 %5792, 1
  %5794 = xor i32 %5789, %5792
  %5795 = add i32 %5794, %5793
  %5796 = icmp eq i32 %5795, 2
  %5797 = zext i1 %5796 to i8
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5797, i8* %5798, align 1
  store %struct.Memory* %loadMem_42f603, %struct.Memory** %MEMORY
  %loadMem_42f607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 33
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5801 to i64*
  %5802 = load i64, i64* %PC.i211
  %5803 = add i64 %5802, 36
  %5804 = load i64, i64* %PC.i211
  %5805 = add i64 %5804, 6
  %5806 = load i64, i64* %PC.i211
  %5807 = add i64 %5806, 6
  store i64 %5807, i64* %PC.i211
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5809 = load i8, i8* %5808, align 1
  %5810 = icmp eq i8 %5809, 0
  %5811 = zext i1 %5810 to i8
  store i8 %5811, i8* %BRANCH_TAKEN, align 1
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5813 = select i1 %5810, i64 %5803, i64 %5805
  store i64 %5813, i64* %5812, align 8
  store %struct.Memory* %loadMem_42f607, %struct.Memory** %MEMORY
  %loadBr_42f607 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f607 = icmp eq i8 %loadBr_42f607, 1
  br i1 %cmpBr_42f607, label %block_.L_42f62b, label %block_.L_42f60d

block_.L_42f60d:                                  ; preds = %block_42f603, %block_42f5db
  %loadMem_42f60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 33
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5816 to i64*
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 11
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %RDI.i209 = bitcast %union.anon* %5819 to i64*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 15
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %5822 to i64*
  %5823 = load i64, i64* %RBP.i210
  %5824 = sub i64 %5823, 84
  %5825 = load i64, i64* %PC.i208
  %5826 = add i64 %5825, 3
  store i64 %5826, i64* %PC.i208
  %5827 = inttoptr i64 %5824 to i32*
  %5828 = load i32, i32* %5827
  %5829 = zext i32 %5828 to i64
  store i64 %5829, i64* %RDI.i209, align 8
  store %struct.Memory* %loadMem_42f60d, %struct.Memory** %MEMORY
  %loadMem_42f610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 33
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5832 to i64*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 9
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RSI.i206 = bitcast %union.anon* %5835 to i64*
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 15
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5838 to i64*
  %5839 = load i64, i64* %RBP.i207
  %5840 = sub i64 %5839, 88
  %5841 = load i64, i64* %PC.i205
  %5842 = add i64 %5841, 3
  store i64 %5842, i64* %PC.i205
  %5843 = inttoptr i64 %5840 to i32*
  %5844 = load i32, i32* %5843
  %5845 = zext i32 %5844 to i64
  store i64 %5845, i64* %RSI.i206, align 8
  store %struct.Memory* %loadMem_42f610, %struct.Memory** %MEMORY
  %loadMem_42f613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5847 = getelementptr inbounds %struct.GPR, %struct.GPR* %5846, i32 0, i32 33
  %5848 = getelementptr inbounds %struct.Reg, %struct.Reg* %5847, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5848 to i64*
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5850 = getelementptr inbounds %struct.GPR, %struct.GPR* %5849, i32 0, i32 7
  %5851 = getelementptr inbounds %struct.Reg, %struct.Reg* %5850, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %5851 to i64*
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 15
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %5854 to i64*
  %5855 = load i64, i64* %RBP.i204
  %5856 = sub i64 %5855, 52
  %5857 = load i64, i64* %PC.i202
  %5858 = add i64 %5857, 3
  store i64 %5858, i64* %PC.i202
  %5859 = inttoptr i64 %5856 to i32*
  %5860 = load i32, i32* %5859
  %5861 = zext i32 %5860 to i64
  store i64 %5861, i64* %RDX.i203, align 8
  store %struct.Memory* %loadMem_42f613, %struct.Memory** %MEMORY
  %loadMem1_42f616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 33
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5864 to i64*
  %5865 = load i64, i64* %PC.i201
  %5866 = add i64 %5865, -4294
  %5867 = load i64, i64* %PC.i201
  %5868 = add i64 %5867, 5
  %5869 = load i64, i64* %PC.i201
  %5870 = add i64 %5869, 5
  store i64 %5870, i64* %PC.i201
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5872 = load i64, i64* %5871, align 8
  %5873 = add i64 %5872, -8
  %5874 = inttoptr i64 %5873 to i64*
  store i64 %5868, i64* %5874
  store i64 %5873, i64* %5871, align 8
  %5875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5866, i64* %5875, align 8
  store %struct.Memory* %loadMem1_42f616, %struct.Memory** %MEMORY
  %loadMem2_42f616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f616 = load i64, i64* %3
  %call2_42f616 = call %struct.Memory* @sub_42e550.gnugo_play_move(%struct.State* %0, i64 %loadPC_42f616, %struct.Memory* %loadMem2_42f616)
  store %struct.Memory* %call2_42f616, %struct.Memory** %MEMORY
  %loadMem_42f61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5877 = getelementptr inbounds %struct.GPR, %struct.GPR* %5876, i32 0, i32 33
  %5878 = getelementptr inbounds %struct.Reg, %struct.Reg* %5877, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %5878 to i64*
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5880 = getelementptr inbounds %struct.GPR, %struct.GPR* %5879, i32 0, i32 7
  %5881 = getelementptr inbounds %struct.Reg, %struct.Reg* %5880, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %5881 to i64*
  %5882 = load i64, i64* %PC.i199
  %5883 = add i64 %5882, 5
  store i64 %5883, i64* %PC.i199
  store i64 3, i64* %RDX.i200, align 8
  store %struct.Memory* %loadMem_42f61b, %struct.Memory** %MEMORY
  %loadMem_42f620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 33
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5886 to i64*
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 7
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 15
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %5892 to i64*
  %5893 = load i64, i64* %RDX.i197
  %5894 = load i64, i64* %RBP.i198
  %5895 = sub i64 %5894, 52
  %5896 = load i64, i64* %PC.i196
  %5897 = add i64 %5896, 3
  store i64 %5897, i64* %PC.i196
  %5898 = trunc i64 %5893 to i32
  %5899 = inttoptr i64 %5895 to i32*
  %5900 = load i32, i32* %5899
  %5901 = sub i32 %5898, %5900
  %5902 = zext i32 %5901 to i64
  store i64 %5902, i64* %RDX.i197, align 8
  %5903 = icmp ult i32 %5898, %5900
  %5904 = zext i1 %5903 to i8
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5904, i8* %5905, align 1
  %5906 = and i32 %5901, 255
  %5907 = call i32 @llvm.ctpop.i32(i32 %5906)
  %5908 = trunc i32 %5907 to i8
  %5909 = and i8 %5908, 1
  %5910 = xor i8 %5909, 1
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5910, i8* %5911, align 1
  %5912 = xor i32 %5900, %5898
  %5913 = xor i32 %5912, %5901
  %5914 = lshr i32 %5913, 4
  %5915 = trunc i32 %5914 to i8
  %5916 = and i8 %5915, 1
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5916, i8* %5917, align 1
  %5918 = icmp eq i32 %5901, 0
  %5919 = zext i1 %5918 to i8
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5919, i8* %5920, align 1
  %5921 = lshr i32 %5901, 31
  %5922 = trunc i32 %5921 to i8
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5922, i8* %5923, align 1
  %5924 = lshr i32 %5898, 31
  %5925 = lshr i32 %5900, 31
  %5926 = xor i32 %5925, %5924
  %5927 = xor i32 %5921, %5924
  %5928 = add i32 %5927, %5926
  %5929 = icmp eq i32 %5928, 2
  %5930 = zext i1 %5929 to i8
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5930, i8* %5931, align 1
  store %struct.Memory* %loadMem_42f620, %struct.Memory** %MEMORY
  %loadMem_42f623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 33
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 7
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %EDX.i194 = bitcast %union.anon* %5937 to i32*
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5939 = getelementptr inbounds %struct.GPR, %struct.GPR* %5938, i32 0, i32 15
  %5940 = getelementptr inbounds %struct.Reg, %struct.Reg* %5939, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %5940 to i64*
  %5941 = load i64, i64* %RBP.i195
  %5942 = sub i64 %5941, 52
  %5943 = load i32, i32* %EDX.i194
  %5944 = zext i32 %5943 to i64
  %5945 = load i64, i64* %PC.i193
  %5946 = add i64 %5945, 3
  store i64 %5946, i64* %PC.i193
  %5947 = inttoptr i64 %5942 to i32*
  store i32 %5943, i32* %5947
  store %struct.Memory* %loadMem_42f623, %struct.Memory** %MEMORY
  %loadMem_42f626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 33
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5950 to i64*
  %5951 = load i64, i64* %PC.i192
  %5952 = add i64 %5951, 68
  %5953 = load i64, i64* %PC.i192
  %5954 = add i64 %5953, 5
  store i64 %5954, i64* %PC.i192
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5952, i64* %5955, align 8
  store %struct.Memory* %loadMem_42f626, %struct.Memory** %MEMORY
  br label %block_.L_42f66a

block_.L_42f62b:                                  ; preds = %block_42f603, %block_.L_42f5f9
  %loadMem_42f62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 11
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RDI.i191 = bitcast %union.anon* %5961 to i64*
  %5962 = load i64, i64* %PC.i190
  %5963 = add i64 %5962, 10
  store i64 %5963, i64* %PC.i190
  store i64 ptrtoint (%G__0x57cb03_type* @G__0x57cb03 to i64), i64* %RDI.i191, align 8
  store %struct.Memory* %loadMem_42f62b, %struct.Memory** %MEMORY
  %loadMem_42f635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 33
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 1
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %5970 = bitcast %union.anon* %5969 to %struct.anon.2*
  %AL.i189 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5970, i32 0, i32 0
  %5971 = load i64, i64* %PC.i188
  %5972 = add i64 %5971, 2
  store i64 %5972, i64* %PC.i188
  store i8 0, i8* %AL.i189, align 1
  store %struct.Memory* %loadMem_42f635, %struct.Memory** %MEMORY
  %loadMem1_42f637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 33
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5975 to i64*
  %5976 = load i64, i64* %PC.i187
  %5977 = add i64 %5976, 141177
  %5978 = load i64, i64* %PC.i187
  %5979 = add i64 %5978, 5
  %5980 = load i64, i64* %PC.i187
  %5981 = add i64 %5980, 5
  store i64 %5981, i64* %PC.i187
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5983 = load i64, i64* %5982, align 8
  %5984 = add i64 %5983, -8
  %5985 = inttoptr i64 %5984 to i64*
  store i64 %5979, i64* %5985
  store i64 %5984, i64* %5982, align 8
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5977, i64* %5986, align 8
  store %struct.Memory* %loadMem1_42f637, %struct.Memory** %MEMORY
  %loadMem2_42f637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f637 = load i64, i64* %3
  %call2_42f637 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42f637, %struct.Memory* %loadMem2_42f637)
  store %struct.Memory* %call2_42f637, %struct.Memory** %MEMORY
  %loadMem_42f63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5989 to i64*
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 11
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %RDI.i186 = bitcast %union.anon* %5992 to i64*
  %5993 = load i64, i64* %PC.i185
  %5994 = add i64 %5993, 10
  store i64 %5994, i64* %PC.i185
  store i64 ptrtoint (%G__0x57cb47_type* @G__0x57cb47 to i64), i64* %RDI.i186, align 8
  store %struct.Memory* %loadMem_42f63c, %struct.Memory** %MEMORY
  %loadMem_42f646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 33
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5997 to i64*
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 9
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %RSI.i183 = bitcast %union.anon* %6000 to i64*
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 15
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %6003 to i64*
  %6004 = load i64, i64* %RBP.i184
  %6005 = sub i64 %6004, 84
  %6006 = load i64, i64* %PC.i182
  %6007 = add i64 %6006, 3
  store i64 %6007, i64* %PC.i182
  %6008 = inttoptr i64 %6005 to i32*
  %6009 = load i32, i32* %6008
  %6010 = zext i32 %6009 to i64
  store i64 %6010, i64* %RSI.i183, align 8
  store %struct.Memory* %loadMem_42f646, %struct.Memory** %MEMORY
  %loadMem_42f649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 33
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6013 to i64*
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6015 = getelementptr inbounds %struct.GPR, %struct.GPR* %6014, i32 0, i32 7
  %6016 = getelementptr inbounds %struct.Reg, %struct.Reg* %6015, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %6016 to i64*
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6018 = getelementptr inbounds %struct.GPR, %struct.GPR* %6017, i32 0, i32 15
  %6019 = getelementptr inbounds %struct.Reg, %struct.Reg* %6018, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %6019 to i64*
  %6020 = load i64, i64* %RBP.i181
  %6021 = sub i64 %6020, 88
  %6022 = load i64, i64* %PC.i179
  %6023 = add i64 %6022, 3
  store i64 %6023, i64* %PC.i179
  %6024 = inttoptr i64 %6021 to i32*
  %6025 = load i32, i32* %6024
  %6026 = zext i32 %6025 to i64
  store i64 %6026, i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_42f649, %struct.Memory** %MEMORY
  %loadMem_42f64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 33
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 1
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %6032 to i32*
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 15
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %6035 to i64*
  %6036 = load i64, i64* %RBP.i178
  %6037 = sub i64 %6036, 164
  %6038 = load i32, i32* %EAX.i177
  %6039 = zext i32 %6038 to i64
  %6040 = load i64, i64* %PC.i176
  %6041 = add i64 %6040, 6
  store i64 %6041, i64* %PC.i176
  %6042 = inttoptr i64 %6037 to i32*
  store i32 %6038, i32* %6042
  store %struct.Memory* %loadMem_42f64c, %struct.Memory** %MEMORY
  %loadMem_42f652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6044 = getelementptr inbounds %struct.GPR, %struct.GPR* %6043, i32 0, i32 33
  %6045 = getelementptr inbounds %struct.Reg, %struct.Reg* %6044, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6045 to i64*
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 1
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %6049 = bitcast %union.anon* %6048 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6049, i32 0, i32 0
  %6050 = load i64, i64* %PC.i175
  %6051 = add i64 %6050, 2
  store i64 %6051, i64* %PC.i175
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_42f652, %struct.Memory** %MEMORY
  %loadMem1_42f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 33
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6054 to i64*
  %6055 = load i64, i64* %PC.i174
  %6056 = add i64 %6055, 141148
  %6057 = load i64, i64* %PC.i174
  %6058 = add i64 %6057, 5
  %6059 = load i64, i64* %PC.i174
  %6060 = add i64 %6059, 5
  store i64 %6060, i64* %PC.i174
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6062 = load i64, i64* %6061, align 8
  %6063 = add i64 %6062, -8
  %6064 = inttoptr i64 %6063 to i64*
  store i64 %6058, i64* %6064
  store i64 %6063, i64* %6061, align 8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6056, i64* %6065, align 8
  store %struct.Memory* %loadMem1_42f654, %struct.Memory** %MEMORY
  %loadMem2_42f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f654 = load i64, i64* %3
  %call2_42f654 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42f654, %struct.Memory* %loadMem2_42f654)
  store %struct.Memory* %call2_42f654, %struct.Memory** %MEMORY
  %loadMem_42f659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6067 = getelementptr inbounds %struct.GPR, %struct.GPR* %6066, i32 0, i32 33
  %6068 = getelementptr inbounds %struct.Reg, %struct.Reg* %6067, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6068 to i64*
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 7
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %6071 to i64*
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 15
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %6074 to i64*
  %6075 = load i64, i64* %RBP.i173
  %6076 = sub i64 %6075, 52
  %6077 = load i64, i64* %PC.i171
  %6078 = add i64 %6077, 3
  store i64 %6078, i64* %PC.i171
  %6079 = inttoptr i64 %6076 to i32*
  %6080 = load i32, i32* %6079
  %6081 = zext i32 %6080 to i64
  store i64 %6081, i64* %RDX.i172, align 8
  store %struct.Memory* %loadMem_42f659, %struct.Memory** %MEMORY
  %loadMem_42f65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6084 to i64*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 7
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6087 to i32*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 15
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6090 to i64*
  %6091 = load i64, i64* %RBP.i170
  %6092 = sub i64 %6091, 4
  %6093 = load i32, i32* %EDX.i
  %6094 = zext i32 %6093 to i64
  %6095 = load i64, i64* %PC.i169
  %6096 = add i64 %6095, 3
  store i64 %6096, i64* %PC.i169
  %6097 = inttoptr i64 %6092 to i32*
  store i32 %6093, i32* %6097
  store %struct.Memory* %loadMem_42f65c, %struct.Memory** %MEMORY
  %loadMem_42f65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 33
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 1
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %EAX.i167 = bitcast %union.anon* %6103 to i32*
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 15
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %6106 to i64*
  %6107 = load i64, i64* %RBP.i168
  %6108 = sub i64 %6107, 168
  %6109 = load i32, i32* %EAX.i167
  %6110 = zext i32 %6109 to i64
  %6111 = load i64, i64* %PC.i166
  %6112 = add i64 %6111, 6
  store i64 %6112, i64* %PC.i166
  %6113 = inttoptr i64 %6108 to i32*
  store i32 %6109, i32* %6113
  store %struct.Memory* %loadMem_42f65f, %struct.Memory** %MEMORY
  %loadMem_42f665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 33
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6116 to i64*
  %6117 = load i64, i64* %PC.i165
  %6118 = add i64 %6117, 292
  %6119 = load i64, i64* %PC.i165
  %6120 = add i64 %6119, 5
  store i64 %6120, i64* %PC.i165
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6118, i64* %6121, align 8
  store %struct.Memory* %loadMem_42f665, %struct.Memory** %MEMORY
  br label %block_.L_42f789

block_.L_42f66a:                                  ; preds = %block_.L_42f60d
  %loadMem_42f66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6123 = getelementptr inbounds %struct.GPR, %struct.GPR* %6122, i32 0, i32 33
  %6124 = getelementptr inbounds %struct.Reg, %struct.Reg* %6123, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6124 to i64*
  %6125 = load i64, i64* %PC.i164
  %6126 = add i64 %6125, 245
  %6127 = load i64, i64* %PC.i164
  %6128 = add i64 %6127, 5
  store i64 %6128, i64* %PC.i164
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6126, i64* %6129, align 8
  store %struct.Memory* %loadMem_42f66a, %struct.Memory** %MEMORY
  br label %block_.L_42f75f

block_.L_42f66f:                                  ; preds = %block_.L_42f303
  %loadMem_42f66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 33
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6132 to i64*
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 9
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %RSI.i162 = bitcast %union.anon* %6135 to i64*
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 15
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %6138 to i64*
  %6139 = load i64, i64* %RBP.i163
  %6140 = sub i64 %6139, 84
  %6141 = load i64, i64* %PC.i161
  %6142 = add i64 %6141, 4
  store i64 %6142, i64* %PC.i161
  store i64 %6140, i64* %RSI.i162, align 8
  store %struct.Memory* %loadMem_42f66f, %struct.Memory** %MEMORY
  %loadMem_42f673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6144 = getelementptr inbounds %struct.GPR, %struct.GPR* %6143, i32 0, i32 33
  %6145 = getelementptr inbounds %struct.Reg, %struct.Reg* %6144, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6145 to i64*
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 7
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %RDX.i159 = bitcast %union.anon* %6148 to i64*
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6150 = getelementptr inbounds %struct.GPR, %struct.GPR* %6149, i32 0, i32 15
  %6151 = getelementptr inbounds %struct.Reg, %struct.Reg* %6150, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %6151 to i64*
  %6152 = load i64, i64* %RBP.i160
  %6153 = sub i64 %6152, 88
  %6154 = load i64, i64* %PC.i158
  %6155 = add i64 %6154, 4
  store i64 %6155, i64* %PC.i158
  store i64 %6153, i64* %RDX.i159, align 8
  store %struct.Memory* %loadMem_42f673, %struct.Memory** %MEMORY
  %loadMem_42f677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6157 = getelementptr inbounds %struct.GPR, %struct.GPR* %6156, i32 0, i32 33
  %6158 = getelementptr inbounds %struct.Reg, %struct.Reg* %6157, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6158 to i64*
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6160 = getelementptr inbounds %struct.GPR, %struct.GPR* %6159, i32 0, i32 11
  %6161 = getelementptr inbounds %struct.Reg, %struct.Reg* %6160, i32 0, i32 0
  %RDI.i156 = bitcast %union.anon* %6161 to i64*
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 15
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6164 to i64*
  %6165 = load i64, i64* %RBP.i157
  %6166 = sub i64 %6165, 80
  %6167 = load i64, i64* %PC.i155
  %6168 = add i64 %6167, 4
  store i64 %6168, i64* %PC.i155
  %6169 = inttoptr i64 %6166 to i64*
  %6170 = load i64, i64* %6169
  store i64 %6170, i64* %RDI.i156, align 8
  store %struct.Memory* %loadMem_42f677, %struct.Memory** %MEMORY
  %loadMem_42f67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 33
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %6173 to i64*
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6175 = getelementptr inbounds %struct.GPR, %struct.GPR* %6174, i32 0, i32 5
  %6176 = getelementptr inbounds %struct.Reg, %struct.Reg* %6175, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %6176 to i64*
  %6177 = load i64, i64* %PC.i153
  %6178 = add i64 %6177, 7
  store i64 %6178, i64* %PC.i153
  %6179 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %6180 = zext i32 %6179 to i64
  store i64 %6180, i64* %RCX.i154, align 8
  store %struct.Memory* %loadMem_42f67b, %struct.Memory** %MEMORY
  %loadMem1_42f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6183 to i64*
  %6184 = load i64, i64* %PC.i152
  %6185 = add i64 %6184, -189090
  %6186 = load i64, i64* %PC.i152
  %6187 = add i64 %6186, 5
  %6188 = load i64, i64* %PC.i152
  %6189 = add i64 %6188, 5
  store i64 %6189, i64* %PC.i152
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6191 = load i64, i64* %6190, align 8
  %6192 = add i64 %6191, -8
  %6193 = inttoptr i64 %6192 to i64*
  store i64 %6187, i64* %6193
  store i64 %6192, i64* %6190, align 8
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6185, i64* %6194, align 8
  store %struct.Memory* %loadMem1_42f682, %struct.Memory** %MEMORY
  %loadMem2_42f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f682 = load i64, i64* %3
  %call2_42f682 = call %struct.Memory* @sub_4013e0.get_moveXY(%struct.State* %0, i64 %loadPC_42f682, %struct.Memory* %loadMem2_42f682)
  store %struct.Memory* %call2_42f682, %struct.Memory** %MEMORY
  %loadMem_42f687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 33
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6197 to i64*
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 7
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %6200 to i64*
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6202 = getelementptr inbounds %struct.GPR, %struct.GPR* %6201, i32 0, i32 15
  %6203 = getelementptr inbounds %struct.Reg, %struct.Reg* %6202, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %6203 to i64*
  %6204 = load i64, i64* %RBP.i151
  %6205 = sub i64 %6204, 84
  %6206 = load i64, i64* %PC.i149
  %6207 = add i64 %6206, 4
  store i64 %6207, i64* %PC.i149
  store i64 %6205, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_42f687, %struct.Memory** %MEMORY
  %loadMem_42f68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 33
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6210 to i64*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 5
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %6213 to i64*
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6215 = getelementptr inbounds %struct.GPR, %struct.GPR* %6214, i32 0, i32 15
  %6216 = getelementptr inbounds %struct.Reg, %struct.Reg* %6215, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %6216 to i64*
  %6217 = load i64, i64* %RBP.i148
  %6218 = sub i64 %6217, 88
  %6219 = load i64, i64* %PC.i146
  %6220 = add i64 %6219, 4
  store i64 %6220, i64* %PC.i146
  store i64 %6218, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_42f68b, %struct.Memory** %MEMORY
  %loadMem_42f68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 33
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6223 to i64*
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 11
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %RDI.i144 = bitcast %union.anon* %6226 to i64*
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6228 = getelementptr inbounds %struct.GPR, %struct.GPR* %6227, i32 0, i32 15
  %6229 = getelementptr inbounds %struct.Reg, %struct.Reg* %6228, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %6229 to i64*
  %6230 = load i64, i64* %RBP.i145
  %6231 = sub i64 %6230, 84
  %6232 = load i64, i64* %PC.i143
  %6233 = add i64 %6232, 3
  store i64 %6233, i64* %PC.i143
  %6234 = inttoptr i64 %6231 to i32*
  %6235 = load i32, i32* %6234
  %6236 = zext i32 %6235 to i64
  store i64 %6236, i64* %RDI.i144, align 8
  store %struct.Memory* %loadMem_42f68f, %struct.Memory** %MEMORY
  %loadMem_42f692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 33
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6239 to i64*
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 9
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %RSI.i141 = bitcast %union.anon* %6242 to i64*
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6244 = getelementptr inbounds %struct.GPR, %struct.GPR* %6243, i32 0, i32 15
  %6245 = getelementptr inbounds %struct.Reg, %struct.Reg* %6244, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %6245 to i64*
  %6246 = load i64, i64* %RBP.i142
  %6247 = sub i64 %6246, 88
  %6248 = load i64, i64* %PC.i140
  %6249 = add i64 %6248, 3
  store i64 %6249, i64* %PC.i140
  %6250 = inttoptr i64 %6247 to i32*
  %6251 = load i32, i32* %6250
  %6252 = zext i32 %6251 to i64
  store i64 %6252, i64* %RSI.i141, align 8
  store %struct.Memory* %loadMem_42f692, %struct.Memory** %MEMORY
  %loadMem_42f695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 33
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6255 to i64*
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6257 = getelementptr inbounds %struct.GPR, %struct.GPR* %6256, i32 0, i32 17
  %6258 = getelementptr inbounds %struct.Reg, %struct.Reg* %6257, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %6258 to i32*
  %6259 = bitcast i32* %R8D.i to i64*
  %6260 = load i64, i64* %PC.i139
  %6261 = add i64 %6260, 8
  store i64 %6261, i64* %PC.i139
  %6262 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %6263 = zext i32 %6262 to i64
  store i64 %6263, i64* %6259, align 8
  store %struct.Memory* %loadMem_42f695, %struct.Memory** %MEMORY
  %loadMem_42f69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 33
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6266 to i64*
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 19
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %6269 to i32*
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 15
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %6272 to i64*
  %6273 = bitcast i32* %R9D.i to i64*
  %6274 = load i64, i64* %RBP.i138
  %6275 = sub i64 %6274, 36
  %6276 = load i64, i64* %PC.i137
  %6277 = add i64 %6276, 4
  store i64 %6277, i64* %PC.i137
  %6278 = inttoptr i64 %6275 to i32*
  %6279 = load i32, i32* %6278
  %6280 = zext i32 %6279 to i64
  store i64 %6280, i64* %6273, align 8
  store %struct.Memory* %loadMem_42f69d, %struct.Memory** %MEMORY
  %loadMem_42f6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 33
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6283 to i64*
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 1
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %EAX.i135 = bitcast %union.anon* %6286 to i32*
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 15
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6289 to i64*
  %6290 = load i64, i64* %RBP.i136
  %6291 = sub i64 %6290, 172
  %6292 = load i32, i32* %EAX.i135
  %6293 = zext i32 %6292 to i64
  %6294 = load i64, i64* %PC.i134
  %6295 = add i64 %6294, 6
  store i64 %6295, i64* %PC.i134
  %6296 = inttoptr i64 %6291 to i32*
  store i32 %6292, i32* %6296
  store %struct.Memory* %loadMem_42f6a1, %struct.Memory** %MEMORY
  %loadMem1_42f6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 33
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6299 to i64*
  %6300 = load i64, i64* %PC.i133
  %6301 = add i64 %6300, 733929
  %6302 = load i64, i64* %PC.i133
  %6303 = add i64 %6302, 5
  %6304 = load i64, i64* %PC.i133
  %6305 = add i64 %6304, 5
  store i64 %6305, i64* %PC.i133
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6307 = load i64, i64* %6306, align 8
  %6308 = add i64 %6307, -8
  %6309 = inttoptr i64 %6308 to i64*
  store i64 %6303, i64* %6309
  store i64 %6308, i64* %6306, align 8
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6301, i64* %6310, align 8
  store %struct.Memory* %loadMem1_42f6a7, %struct.Memory** %MEMORY
  %loadMem2_42f6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f6a7 = load i64, i64* %3
  %call2_42f6a7 = call %struct.Memory* @sub_4e2990.rotate(%struct.State* %0, i64 %loadPC_42f6a7, %struct.Memory* %loadMem2_42f6a7)
  store %struct.Memory* %call2_42f6a7, %struct.Memory** %MEMORY
  %loadMem_42f6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 33
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %6313 to i64*
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 1
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %6316 to i64*
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 15
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %6319 to i64*
  %6320 = load i64, i64* %RBP.i132
  %6321 = sub i64 %6320, 84
  %6322 = load i64, i64* %PC.i130
  %6323 = add i64 %6322, 3
  store i64 %6323, i64* %PC.i130
  %6324 = inttoptr i64 %6321 to i32*
  %6325 = load i32, i32* %6324
  %6326 = zext i32 %6325 to i64
  store i64 %6326, i64* %RAX.i131, align 8
  store %struct.Memory* %loadMem_42f6ac, %struct.Memory** %MEMORY
  %loadMem_42f6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 33
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6329 to i64*
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6331 = getelementptr inbounds %struct.GPR, %struct.GPR* %6330, i32 0, i32 1
  %6332 = getelementptr inbounds %struct.Reg, %struct.Reg* %6331, i32 0, i32 0
  %EAX.i129 = bitcast %union.anon* %6332 to i32*
  %6333 = load i32, i32* %EAX.i129
  %6334 = zext i32 %6333 to i64
  %6335 = load i64, i64* %PC.i128
  %6336 = add i64 %6335, 7
  store i64 %6336, i64* %PC.i128
  %6337 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %6338 = sub i32 %6333, %6337
  %6339 = icmp ult i32 %6333, %6337
  %6340 = zext i1 %6339 to i8
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6340, i8* %6341, align 1
  %6342 = and i32 %6338, 255
  %6343 = call i32 @llvm.ctpop.i32(i32 %6342)
  %6344 = trunc i32 %6343 to i8
  %6345 = and i8 %6344, 1
  %6346 = xor i8 %6345, 1
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6346, i8* %6347, align 1
  %6348 = xor i32 %6337, %6333
  %6349 = xor i32 %6348, %6338
  %6350 = lshr i32 %6349, 4
  %6351 = trunc i32 %6350 to i8
  %6352 = and i8 %6351, 1
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6352, i8* %6353, align 1
  %6354 = icmp eq i32 %6338, 0
  %6355 = zext i1 %6354 to i8
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6355, i8* %6356, align 1
  %6357 = lshr i32 %6338, 31
  %6358 = trunc i32 %6357 to i8
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6358, i8* %6359, align 1
  %6360 = lshr i32 %6333, 31
  %6361 = lshr i32 %6337, 31
  %6362 = xor i32 %6361, %6360
  %6363 = xor i32 %6357, %6360
  %6364 = add i32 %6363, %6362
  %6365 = icmp eq i32 %6364, 2
  %6366 = zext i1 %6365 to i8
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6366, i8* %6367, align 1
  store %struct.Memory* %loadMem_42f6af, %struct.Memory** %MEMORY
  %loadMem_42f6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 33
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6370 to i64*
  %6371 = load i64, i64* %PC.i127
  %6372 = add i64 %6371, 22
  %6373 = load i64, i64* %PC.i127
  %6374 = add i64 %6373, 6
  %6375 = load i64, i64* %PC.i127
  %6376 = add i64 %6375, 6
  store i64 %6376, i64* %PC.i127
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6378 = load i8, i8* %6377, align 1
  %6379 = icmp eq i8 %6378, 0
  %6380 = zext i1 %6379 to i8
  store i8 %6380, i8* %BRANCH_TAKEN, align 1
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6382 = select i1 %6379, i64 %6372, i64 %6374
  store i64 %6382, i64* %6381, align 8
  store %struct.Memory* %loadMem_42f6b6, %struct.Memory** %MEMORY
  %loadBr_42f6b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f6b6 = icmp eq i8 %loadBr_42f6b6, 1
  br i1 %cmpBr_42f6b6, label %block_.L_42f6cc, label %block_42f6bc

block_42f6bc:                                     ; preds = %block_.L_42f66f
  %loadMem_42f6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 33
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 1
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 15
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %6391 to i64*
  %6392 = load i64, i64* %RBP.i126
  %6393 = sub i64 %6392, 88
  %6394 = load i64, i64* %PC.i124
  %6395 = add i64 %6394, 3
  store i64 %6395, i64* %PC.i124
  %6396 = inttoptr i64 %6393 to i32*
  %6397 = load i32, i32* %6396
  %6398 = zext i32 %6397 to i64
  store i64 %6398, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_42f6bc, %struct.Memory** %MEMORY
  %loadMem_42f6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6400 = getelementptr inbounds %struct.GPR, %struct.GPR* %6399, i32 0, i32 33
  %6401 = getelementptr inbounds %struct.Reg, %struct.Reg* %6400, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6401 to i64*
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 1
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %6404 to i32*
  %6405 = load i32, i32* %EAX.i123
  %6406 = zext i32 %6405 to i64
  %6407 = load i64, i64* %PC.i122
  %6408 = add i64 %6407, 7
  store i64 %6408, i64* %PC.i122
  %6409 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %6410 = sub i32 %6405, %6409
  %6411 = icmp ult i32 %6405, %6409
  %6412 = zext i1 %6411 to i8
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6412, i8* %6413, align 1
  %6414 = and i32 %6410, 255
  %6415 = call i32 @llvm.ctpop.i32(i32 %6414)
  %6416 = trunc i32 %6415 to i8
  %6417 = and i8 %6416, 1
  %6418 = xor i8 %6417, 1
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6418, i8* %6419, align 1
  %6420 = xor i32 %6409, %6405
  %6421 = xor i32 %6420, %6410
  %6422 = lshr i32 %6421, 4
  %6423 = trunc i32 %6422 to i8
  %6424 = and i8 %6423, 1
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6424, i8* %6425, align 1
  %6426 = icmp eq i32 %6410, 0
  %6427 = zext i1 %6426 to i8
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6427, i8* %6428, align 1
  %6429 = lshr i32 %6410, 31
  %6430 = trunc i32 %6429 to i8
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6430, i8* %6431, align 1
  %6432 = lshr i32 %6405, 31
  %6433 = lshr i32 %6409, 31
  %6434 = xor i32 %6433, %6432
  %6435 = xor i32 %6429, %6432
  %6436 = add i32 %6435, %6434
  %6437 = icmp eq i32 %6436, 2
  %6438 = zext i1 %6437 to i8
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6438, i8* %6439, align 1
  store %struct.Memory* %loadMem_42f6bf, %struct.Memory** %MEMORY
  %loadMem_42f6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 33
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6442 to i64*
  %6443 = load i64, i64* %PC.i121
  %6444 = add i64 %6443, 11
  %6445 = load i64, i64* %PC.i121
  %6446 = add i64 %6445, 6
  %6447 = load i64, i64* %PC.i121
  %6448 = add i64 %6447, 6
  store i64 %6448, i64* %PC.i121
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6450 = load i8, i8* %6449, align 1
  store i8 %6450, i8* %BRANCH_TAKEN, align 1
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6452 = icmp ne i8 %6450, 0
  %6453 = select i1 %6452, i64 %6444, i64 %6446
  store i64 %6453, i64* %6451, align 8
  store %struct.Memory* %loadMem_42f6c6, %struct.Memory** %MEMORY
  %loadBr_42f6c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f6c6 = icmp eq i8 %loadBr_42f6c6, 1
  br i1 %cmpBr_42f6c6, label %block_.L_42f6d1, label %block_.L_42f6cc

block_.L_42f6cc:                                  ; preds = %block_42f6bc, %block_.L_42f66f
  %loadMem_42f6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6455 = getelementptr inbounds %struct.GPR, %struct.GPR* %6454, i32 0, i32 33
  %6456 = getelementptr inbounds %struct.Reg, %struct.Reg* %6455, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6456 to i64*
  %6457 = load i64, i64* %PC.i120
  %6458 = add i64 %6457, 147
  %6459 = load i64, i64* %PC.i120
  %6460 = add i64 %6459, 5
  store i64 %6460, i64* %PC.i120
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6458, i64* %6461, align 8
  store %struct.Memory* %loadMem_42f6cc, %struct.Memory** %MEMORY
  br label %block_.L_42f75f

block_.L_42f6d1:                                  ; preds = %block_42f6bc
  %loadMem_42f6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 33
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6464 to i64*
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 15
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %6467 to i64*
  %6468 = load i64, i64* %RBP.i119
  %6469 = sub i64 %6468, 84
  %6470 = load i64, i64* %PC.i118
  %6471 = add i64 %6470, 4
  store i64 %6471, i64* %PC.i118
  %6472 = inttoptr i64 %6469 to i32*
  %6473 = load i32, i32* %6472
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6474, align 1
  %6475 = and i32 %6473, 255
  %6476 = call i32 @llvm.ctpop.i32(i32 %6475)
  %6477 = trunc i32 %6476 to i8
  %6478 = and i8 %6477, 1
  %6479 = xor i8 %6478, 1
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6479, i8* %6480, align 1
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6481, align 1
  %6482 = icmp eq i32 %6473, 0
  %6483 = zext i1 %6482 to i8
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6483, i8* %6484, align 1
  %6485 = lshr i32 %6473, 31
  %6486 = trunc i32 %6485 to i8
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6486, i8* %6487, align 1
  %6488 = lshr i32 %6473, 31
  %6489 = xor i32 %6485, %6488
  %6490 = add i32 %6489, %6488
  %6491 = icmp eq i32 %6490, 2
  %6492 = zext i1 %6491 to i8
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6492, i8* %6493, align 1
  store %struct.Memory* %loadMem_42f6d1, %struct.Memory** %MEMORY
  %loadMem_42f6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 33
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6496 to i64*
  %6497 = load i64, i64* %PC.i117
  %6498 = add i64 %6497, 47
  %6499 = load i64, i64* %PC.i117
  %6500 = add i64 %6499, 6
  %6501 = load i64, i64* %PC.i117
  %6502 = add i64 %6501, 6
  store i64 %6502, i64* %PC.i117
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6504 = load i8, i8* %6503, align 1
  %6505 = icmp ne i8 %6504, 0
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6507 = load i8, i8* %6506, align 1
  %6508 = icmp ne i8 %6507, 0
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6510 = load i8, i8* %6509, align 1
  %6511 = icmp ne i8 %6510, 0
  %6512 = xor i1 %6508, %6511
  %6513 = or i1 %6505, %6512
  %6514 = zext i1 %6513 to i8
  store i8 %6514, i8* %BRANCH_TAKEN, align 1
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6516 = select i1 %6513, i64 %6498, i64 %6500
  store i64 %6516, i64* %6515, align 8
  store %struct.Memory* %loadMem_42f6d5, %struct.Memory** %MEMORY
  %loadBr_42f6d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f6d5 = icmp eq i8 %loadBr_42f6d5, 1
  br i1 %cmpBr_42f6d5, label %block_.L_42f704, label %block_42f6db

block_42f6db:                                     ; preds = %block_.L_42f6d1
  %loadMem_42f6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6518 = getelementptr inbounds %struct.GPR, %struct.GPR* %6517, i32 0, i32 33
  %6519 = getelementptr inbounds %struct.Reg, %struct.Reg* %6518, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6519 to i64*
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 1
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %6522 to i64*
  %6523 = load i64, i64* %PC.i115
  %6524 = add i64 %6523, 5
  store i64 %6524, i64* %PC.i115
  store i64 3, i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_42f6db, %struct.Memory** %MEMORY
  %loadMem_42f6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6526 = getelementptr inbounds %struct.GPR, %struct.GPR* %6525, i32 0, i32 33
  %6527 = getelementptr inbounds %struct.Reg, %struct.Reg* %6526, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %6527 to i64*
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6529 = getelementptr inbounds %struct.GPR, %struct.GPR* %6528, i32 0, i32 5
  %6530 = getelementptr inbounds %struct.Reg, %struct.Reg* %6529, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %6530 to i64*
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6532 = getelementptr inbounds %struct.GPR, %struct.GPR* %6531, i32 0, i32 15
  %6533 = getelementptr inbounds %struct.Reg, %struct.Reg* %6532, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %6533 to i64*
  %6534 = load i64, i64* %RBP.i114
  %6535 = sub i64 %6534, 84
  %6536 = load i64, i64* %PC.i112
  %6537 = add i64 %6536, 3
  store i64 %6537, i64* %PC.i112
  %6538 = inttoptr i64 %6535 to i32*
  %6539 = load i32, i32* %6538
  %6540 = zext i32 %6539 to i64
  store i64 %6540, i64* %RCX.i113, align 8
  store %struct.Memory* %loadMem_42f6e0, %struct.Memory** %MEMORY
  %loadMem_42f6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6542 = getelementptr inbounds %struct.GPR, %struct.GPR* %6541, i32 0, i32 33
  %6543 = getelementptr inbounds %struct.Reg, %struct.Reg* %6542, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6543 to i64*
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 5
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %6546 to i64*
  %6547 = load i64, i64* %RCX.i111
  %6548 = load i64, i64* %PC.i110
  %6549 = add i64 %6548, 3
  store i64 %6549, i64* %PC.i110
  %6550 = trunc i64 %6547 to i32
  %6551 = sub i32 %6550, 1
  %6552 = zext i32 %6551 to i64
  store i64 %6552, i64* %RCX.i111, align 8
  %6553 = icmp ult i32 %6550, 1
  %6554 = zext i1 %6553 to i8
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6554, i8* %6555, align 1
  %6556 = and i32 %6551, 255
  %6557 = call i32 @llvm.ctpop.i32(i32 %6556)
  %6558 = trunc i32 %6557 to i8
  %6559 = and i8 %6558, 1
  %6560 = xor i8 %6559, 1
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6560, i8* %6561, align 1
  %6562 = xor i64 1, %6547
  %6563 = trunc i64 %6562 to i32
  %6564 = xor i32 %6563, %6551
  %6565 = lshr i32 %6564, 4
  %6566 = trunc i32 %6565 to i8
  %6567 = and i8 %6566, 1
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6567, i8* %6568, align 1
  %6569 = icmp eq i32 %6551, 0
  %6570 = zext i1 %6569 to i8
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6570, i8* %6571, align 1
  %6572 = lshr i32 %6551, 31
  %6573 = trunc i32 %6572 to i8
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6573, i8* %6574, align 1
  %6575 = lshr i32 %6550, 31
  %6576 = xor i32 %6572, %6575
  %6577 = add i32 %6576, %6575
  %6578 = icmp eq i32 %6577, 2
  %6579 = zext i1 %6578 to i8
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6579, i8* %6580, align 1
  store %struct.Memory* %loadMem_42f6e3, %struct.Memory** %MEMORY
  %loadMem_42f6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6582 = getelementptr inbounds %struct.GPR, %struct.GPR* %6581, i32 0, i32 33
  %6583 = getelementptr inbounds %struct.Reg, %struct.Reg* %6582, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6583 to i64*
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6585 = getelementptr inbounds %struct.GPR, %struct.GPR* %6584, i32 0, i32 5
  %6586 = getelementptr inbounds %struct.Reg, %struct.Reg* %6585, i32 0, i32 0
  %ECX.i108 = bitcast %union.anon* %6586 to i32*
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 5
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %6589 to i64*
  %6590 = load i32, i32* %ECX.i108
  %6591 = zext i32 %6590 to i64
  %6592 = load i64, i64* %PC.i107
  %6593 = add i64 %6592, 3
  store i64 %6593, i64* %PC.i107
  %6594 = shl i64 %6591, 32
  %6595 = ashr exact i64 %6594, 32
  %6596 = mul i64 20, %6595
  %6597 = trunc i64 %6596 to i32
  %6598 = and i64 %6596, 4294967295
  store i64 %6598, i64* %RCX.i109, align 8
  %6599 = shl i64 %6596, 32
  %6600 = ashr exact i64 %6599, 32
  %6601 = icmp ne i64 %6600, %6596
  %6602 = zext i1 %6601 to i8
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6602, i8* %6603, align 1
  %6604 = and i32 %6597, 255
  %6605 = call i32 @llvm.ctpop.i32(i32 %6604)
  %6606 = trunc i32 %6605 to i8
  %6607 = and i8 %6606, 1
  %6608 = xor i8 %6607, 1
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6608, i8* %6609, align 1
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6610, align 1
  %6611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6611, align 1
  %6612 = lshr i32 %6597, 31
  %6613 = trunc i32 %6612 to i8
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6613, i8* %6614, align 1
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6602, i8* %6615, align 1
  store %struct.Memory* %loadMem_42f6e6, %struct.Memory** %MEMORY
  %loadMem_42f6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 33
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6618 to i64*
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 5
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %6621 to i64*
  %6622 = load i64, i64* %RCX.i106
  %6623 = load i64, i64* %PC.i105
  %6624 = add i64 %6623, 3
  store i64 %6624, i64* %PC.i105
  %6625 = trunc i64 %6622 to i32
  %6626 = add i32 21, %6625
  %6627 = zext i32 %6626 to i64
  store i64 %6627, i64* %RCX.i106, align 8
  %6628 = icmp ult i32 %6626, %6625
  %6629 = icmp ult i32 %6626, 21
  %6630 = or i1 %6628, %6629
  %6631 = zext i1 %6630 to i8
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6631, i8* %6632, align 1
  %6633 = and i32 %6626, 255
  %6634 = call i32 @llvm.ctpop.i32(i32 %6633)
  %6635 = trunc i32 %6634 to i8
  %6636 = and i8 %6635, 1
  %6637 = xor i8 %6636, 1
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6637, i8* %6638, align 1
  %6639 = xor i64 21, %6622
  %6640 = trunc i64 %6639 to i32
  %6641 = xor i32 %6640, %6626
  %6642 = lshr i32 %6641, 4
  %6643 = trunc i32 %6642 to i8
  %6644 = and i8 %6643, 1
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6644, i8* %6645, align 1
  %6646 = icmp eq i32 %6626, 0
  %6647 = zext i1 %6646 to i8
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6647, i8* %6648, align 1
  %6649 = lshr i32 %6626, 31
  %6650 = trunc i32 %6649 to i8
  %6651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6650, i8* %6651, align 1
  %6652 = lshr i32 %6625, 31
  %6653 = xor i32 %6649, %6652
  %6654 = add i32 %6653, %6649
  %6655 = icmp eq i32 %6654, 2
  %6656 = zext i1 %6655 to i8
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6656, i8* %6657, align 1
  store %struct.Memory* %loadMem_42f6e9, %struct.Memory** %MEMORY
  %loadMem_42f6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 33
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 5
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %6663 to i64*
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6665 = getelementptr inbounds %struct.GPR, %struct.GPR* %6664, i32 0, i32 15
  %6666 = getelementptr inbounds %struct.Reg, %struct.Reg* %6665, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %6666 to i64*
  %6667 = load i64, i64* %RCX.i103
  %6668 = load i64, i64* %RBP.i104
  %6669 = sub i64 %6668, 88
  %6670 = load i64, i64* %PC.i102
  %6671 = add i64 %6670, 3
  store i64 %6671, i64* %PC.i102
  %6672 = trunc i64 %6667 to i32
  %6673 = inttoptr i64 %6669 to i32*
  %6674 = load i32, i32* %6673
  %6675 = add i32 %6674, %6672
  %6676 = zext i32 %6675 to i64
  store i64 %6676, i64* %RCX.i103, align 8
  %6677 = icmp ult i32 %6675, %6672
  %6678 = icmp ult i32 %6675, %6674
  %6679 = or i1 %6677, %6678
  %6680 = zext i1 %6679 to i8
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6680, i8* %6681, align 1
  %6682 = and i32 %6675, 255
  %6683 = call i32 @llvm.ctpop.i32(i32 %6682)
  %6684 = trunc i32 %6683 to i8
  %6685 = and i8 %6684, 1
  %6686 = xor i8 %6685, 1
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6686, i8* %6687, align 1
  %6688 = xor i32 %6674, %6672
  %6689 = xor i32 %6688, %6675
  %6690 = lshr i32 %6689, 4
  %6691 = trunc i32 %6690 to i8
  %6692 = and i8 %6691, 1
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6692, i8* %6693, align 1
  %6694 = icmp eq i32 %6675, 0
  %6695 = zext i1 %6694 to i8
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6695, i8* %6696, align 1
  %6697 = lshr i32 %6675, 31
  %6698 = trunc i32 %6697 to i8
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6698, i8* %6699, align 1
  %6700 = lshr i32 %6672, 31
  %6701 = lshr i32 %6674, 31
  %6702 = xor i32 %6697, %6700
  %6703 = xor i32 %6697, %6701
  %6704 = add i32 %6702, %6703
  %6705 = icmp eq i32 %6704, 2
  %6706 = zext i1 %6705 to i8
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6706, i8* %6707, align 1
  store %struct.Memory* %loadMem_42f6ec, %struct.Memory** %MEMORY
  %loadMem_42f6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 5
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %ECX.i100 = bitcast %union.anon* %6713 to i32*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 7
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %6716 to i64*
  %6717 = load i32, i32* %ECX.i100
  %6718 = zext i32 %6717 to i64
  %6719 = load i64, i64* %PC.i99
  %6720 = add i64 %6719, 3
  store i64 %6720, i64* %PC.i99
  %6721 = shl i64 %6718, 32
  %6722 = ashr exact i64 %6721, 32
  store i64 %6722, i64* %RDX.i101, align 8
  store %struct.Memory* %loadMem_42f6ef, %struct.Memory** %MEMORY
  %loadMem_42f6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6724 = getelementptr inbounds %struct.GPR, %struct.GPR* %6723, i32 0, i32 33
  %6725 = getelementptr inbounds %struct.Reg, %struct.Reg* %6724, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6725 to i64*
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6727 = getelementptr inbounds %struct.GPR, %struct.GPR* %6726, i32 0, i32 5
  %6728 = getelementptr inbounds %struct.Reg, %struct.Reg* %6727, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %6728 to i64*
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6730 = getelementptr inbounds %struct.GPR, %struct.GPR* %6729, i32 0, i32 7
  %6731 = getelementptr inbounds %struct.Reg, %struct.Reg* %6730, i32 0, i32 0
  %RDX.i98 = bitcast %union.anon* %6731 to i64*
  %6732 = load i64, i64* %RDX.i98
  %6733 = add i64 %6732, 12099168
  %6734 = load i64, i64* %PC.i96
  %6735 = add i64 %6734, 8
  store i64 %6735, i64* %PC.i96
  %6736 = inttoptr i64 %6733 to i8*
  %6737 = load i8, i8* %6736
  %6738 = zext i8 %6737 to i64
  store i64 %6738, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_42f6f2, %struct.Memory** %MEMORY
  %loadMem_42f6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 33
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6741 to i64*
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 5
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %ECX.i94 = bitcast %union.anon* %6744 to i32*
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6746 = getelementptr inbounds %struct.GPR, %struct.GPR* %6745, i32 0, i32 1
  %6747 = getelementptr inbounds %struct.Reg, %struct.Reg* %6746, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %6747 to i64*
  %6748 = load i64, i64* %RAX.i95
  %6749 = load i32, i32* %ECX.i94
  %6750 = zext i32 %6749 to i64
  %6751 = load i64, i64* %PC.i93
  %6752 = add i64 %6751, 2
  store i64 %6752, i64* %PC.i93
  %6753 = trunc i64 %6748 to i32
  %6754 = sub i32 %6753, %6749
  %6755 = zext i32 %6754 to i64
  store i64 %6755, i64* %RAX.i95, align 8
  %6756 = icmp ult i32 %6753, %6749
  %6757 = zext i1 %6756 to i8
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6757, i8* %6758, align 1
  %6759 = and i32 %6754, 255
  %6760 = call i32 @llvm.ctpop.i32(i32 %6759)
  %6761 = trunc i32 %6760 to i8
  %6762 = and i8 %6761, 1
  %6763 = xor i8 %6762, 1
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6763, i8* %6764, align 1
  %6765 = xor i64 %6750, %6748
  %6766 = trunc i64 %6765 to i32
  %6767 = xor i32 %6766, %6754
  %6768 = lshr i32 %6767, 4
  %6769 = trunc i32 %6768 to i8
  %6770 = and i8 %6769, 1
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6770, i8* %6771, align 1
  %6772 = icmp eq i32 %6754, 0
  %6773 = zext i1 %6772 to i8
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6773, i8* %6774, align 1
  %6775 = lshr i32 %6754, 31
  %6776 = trunc i32 %6775 to i8
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6776, i8* %6777, align 1
  %6778 = lshr i32 %6753, 31
  %6779 = lshr i32 %6749, 31
  %6780 = xor i32 %6779, %6778
  %6781 = xor i32 %6775, %6778
  %6782 = add i32 %6781, %6780
  %6783 = icmp eq i32 %6782, 2
  %6784 = zext i1 %6783 to i8
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6784, i8* %6785, align 1
  store %struct.Memory* %loadMem_42f6fa, %struct.Memory** %MEMORY
  %loadMem_42f6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 33
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6788 to i64*
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 1
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %6791 to i32*
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6793 = getelementptr inbounds %struct.GPR, %struct.GPR* %6792, i32 0, i32 15
  %6794 = getelementptr inbounds %struct.Reg, %struct.Reg* %6793, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %6794 to i64*
  %6795 = load i64, i64* %RBP.i92
  %6796 = sub i64 %6795, 92
  %6797 = load i32, i32* %EAX.i91
  %6798 = zext i32 %6797 to i64
  %6799 = load i64, i64* %PC.i90
  %6800 = add i64 %6799, 3
  store i64 %6800, i64* %PC.i90
  %6801 = inttoptr i64 %6796 to i32*
  store i32 %6797, i32* %6801
  store %struct.Memory* %loadMem_42f6fc, %struct.Memory** %MEMORY
  %loadMem_42f6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 33
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6804 to i64*
  %6805 = load i64, i64* %PC.i89
  %6806 = add i64 %6805, 41
  %6807 = load i64, i64* %PC.i89
  %6808 = add i64 %6807, 5
  store i64 %6808, i64* %PC.i89
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6806, i64* %6809, align 8
  store %struct.Memory* %loadMem_42f6ff, %struct.Memory** %MEMORY
  br label %block_.L_42f728

block_.L_42f704:                                  ; preds = %block_.L_42f6d1
  %loadMem_42f704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6811 = getelementptr inbounds %struct.GPR, %struct.GPR* %6810, i32 0, i32 33
  %6812 = getelementptr inbounds %struct.Reg, %struct.Reg* %6811, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6812 to i64*
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6814 = getelementptr inbounds %struct.GPR, %struct.GPR* %6813, i32 0, i32 1
  %6815 = getelementptr inbounds %struct.Reg, %struct.Reg* %6814, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %6815 to i64*
  %6816 = load i64, i64* %PC.i87
  %6817 = add i64 %6816, 5
  store i64 %6817, i64* %PC.i87
  store i64 3, i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_42f704, %struct.Memory** %MEMORY
  %loadMem_42f709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6819 = getelementptr inbounds %struct.GPR, %struct.GPR* %6818, i32 0, i32 33
  %6820 = getelementptr inbounds %struct.Reg, %struct.Reg* %6819, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6820 to i64*
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 5
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %6823 to i64*
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6825 = getelementptr inbounds %struct.GPR, %struct.GPR* %6824, i32 0, i32 15
  %6826 = getelementptr inbounds %struct.Reg, %struct.Reg* %6825, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %6826 to i64*
  %6827 = load i64, i64* %RBP.i86
  %6828 = sub i64 %6827, 84
  %6829 = load i64, i64* %PC.i84
  %6830 = add i64 %6829, 3
  store i64 %6830, i64* %PC.i84
  %6831 = inttoptr i64 %6828 to i32*
  %6832 = load i32, i32* %6831
  %6833 = zext i32 %6832 to i64
  store i64 %6833, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_42f709, %struct.Memory** %MEMORY
  %loadMem_42f70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 5
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %6839 to i64*
  %6840 = load i64, i64* %RCX.i83
  %6841 = load i64, i64* %PC.i82
  %6842 = add i64 %6841, 3
  store i64 %6842, i64* %PC.i82
  %6843 = trunc i64 %6840 to i32
  %6844 = add i32 1, %6843
  %6845 = zext i32 %6844 to i64
  store i64 %6845, i64* %RCX.i83, align 8
  %6846 = icmp ult i32 %6844, %6843
  %6847 = icmp ult i32 %6844, 1
  %6848 = or i1 %6846, %6847
  %6849 = zext i1 %6848 to i8
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6849, i8* %6850, align 1
  %6851 = and i32 %6844, 255
  %6852 = call i32 @llvm.ctpop.i32(i32 %6851)
  %6853 = trunc i32 %6852 to i8
  %6854 = and i8 %6853, 1
  %6855 = xor i8 %6854, 1
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6855, i8* %6856, align 1
  %6857 = xor i64 1, %6840
  %6858 = trunc i64 %6857 to i32
  %6859 = xor i32 %6858, %6844
  %6860 = lshr i32 %6859, 4
  %6861 = trunc i32 %6860 to i8
  %6862 = and i8 %6861, 1
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6862, i8* %6863, align 1
  %6864 = icmp eq i32 %6844, 0
  %6865 = zext i1 %6864 to i8
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6865, i8* %6866, align 1
  %6867 = lshr i32 %6844, 31
  %6868 = trunc i32 %6867 to i8
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6868, i8* %6869, align 1
  %6870 = lshr i32 %6843, 31
  %6871 = xor i32 %6867, %6870
  %6872 = add i32 %6871, %6867
  %6873 = icmp eq i32 %6872, 2
  %6874 = zext i1 %6873 to i8
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6874, i8* %6875, align 1
  store %struct.Memory* %loadMem_42f70c, %struct.Memory** %MEMORY
  %loadMem_42f70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 33
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6878 to i64*
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 5
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %ECX.i80 = bitcast %union.anon* %6881 to i32*
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 5
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %6884 to i64*
  %6885 = load i32, i32* %ECX.i80
  %6886 = zext i32 %6885 to i64
  %6887 = load i64, i64* %PC.i79
  %6888 = add i64 %6887, 3
  store i64 %6888, i64* %PC.i79
  %6889 = shl i64 %6886, 32
  %6890 = ashr exact i64 %6889, 32
  %6891 = mul i64 20, %6890
  %6892 = trunc i64 %6891 to i32
  %6893 = and i64 %6891, 4294967295
  store i64 %6893, i64* %RCX.i81, align 8
  %6894 = shl i64 %6891, 32
  %6895 = ashr exact i64 %6894, 32
  %6896 = icmp ne i64 %6895, %6891
  %6897 = zext i1 %6896 to i8
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6897, i8* %6898, align 1
  %6899 = and i32 %6892, 255
  %6900 = call i32 @llvm.ctpop.i32(i32 %6899)
  %6901 = trunc i32 %6900 to i8
  %6902 = and i8 %6901, 1
  %6903 = xor i8 %6902, 1
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6903, i8* %6904, align 1
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6905, align 1
  %6906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6906, align 1
  %6907 = lshr i32 %6892, 31
  %6908 = trunc i32 %6907 to i8
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6908, i8* %6909, align 1
  %6910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6897, i8* %6910, align 1
  store %struct.Memory* %loadMem_42f70f, %struct.Memory** %MEMORY
  %loadMem_42f712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 33
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %6913 to i64*
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6915 = getelementptr inbounds %struct.GPR, %struct.GPR* %6914, i32 0, i32 5
  %6916 = getelementptr inbounds %struct.Reg, %struct.Reg* %6915, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %6916 to i64*
  %6917 = load i64, i64* %RCX.i78
  %6918 = load i64, i64* %PC.i77
  %6919 = add i64 %6918, 3
  store i64 %6919, i64* %PC.i77
  %6920 = trunc i64 %6917 to i32
  %6921 = add i32 21, %6920
  %6922 = zext i32 %6921 to i64
  store i64 %6922, i64* %RCX.i78, align 8
  %6923 = icmp ult i32 %6921, %6920
  %6924 = icmp ult i32 %6921, 21
  %6925 = or i1 %6923, %6924
  %6926 = zext i1 %6925 to i8
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6926, i8* %6927, align 1
  %6928 = and i32 %6921, 255
  %6929 = call i32 @llvm.ctpop.i32(i32 %6928)
  %6930 = trunc i32 %6929 to i8
  %6931 = and i8 %6930, 1
  %6932 = xor i8 %6931, 1
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6932, i8* %6933, align 1
  %6934 = xor i64 21, %6917
  %6935 = trunc i64 %6934 to i32
  %6936 = xor i32 %6935, %6921
  %6937 = lshr i32 %6936, 4
  %6938 = trunc i32 %6937 to i8
  %6939 = and i8 %6938, 1
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6939, i8* %6940, align 1
  %6941 = icmp eq i32 %6921, 0
  %6942 = zext i1 %6941 to i8
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6942, i8* %6943, align 1
  %6944 = lshr i32 %6921, 31
  %6945 = trunc i32 %6944 to i8
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6945, i8* %6946, align 1
  %6947 = lshr i32 %6920, 31
  %6948 = xor i32 %6944, %6947
  %6949 = add i32 %6948, %6944
  %6950 = icmp eq i32 %6949, 2
  %6951 = zext i1 %6950 to i8
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6951, i8* %6952, align 1
  store %struct.Memory* %loadMem_42f712, %struct.Memory** %MEMORY
  %loadMem_42f715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 33
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %6955 to i64*
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6957 = getelementptr inbounds %struct.GPR, %struct.GPR* %6956, i32 0, i32 5
  %6958 = getelementptr inbounds %struct.Reg, %struct.Reg* %6957, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %6958 to i64*
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 15
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %6961 to i64*
  %6962 = load i64, i64* %RCX.i75
  %6963 = load i64, i64* %RBP.i76
  %6964 = sub i64 %6963, 88
  %6965 = load i64, i64* %PC.i74
  %6966 = add i64 %6965, 3
  store i64 %6966, i64* %PC.i74
  %6967 = trunc i64 %6962 to i32
  %6968 = inttoptr i64 %6964 to i32*
  %6969 = load i32, i32* %6968
  %6970 = add i32 %6969, %6967
  %6971 = zext i32 %6970 to i64
  store i64 %6971, i64* %RCX.i75, align 8
  %6972 = icmp ult i32 %6970, %6967
  %6973 = icmp ult i32 %6970, %6969
  %6974 = or i1 %6972, %6973
  %6975 = zext i1 %6974 to i8
  %6976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6975, i8* %6976, align 1
  %6977 = and i32 %6970, 255
  %6978 = call i32 @llvm.ctpop.i32(i32 %6977)
  %6979 = trunc i32 %6978 to i8
  %6980 = and i8 %6979, 1
  %6981 = xor i8 %6980, 1
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6981, i8* %6982, align 1
  %6983 = xor i32 %6969, %6967
  %6984 = xor i32 %6983, %6970
  %6985 = lshr i32 %6984, 4
  %6986 = trunc i32 %6985 to i8
  %6987 = and i8 %6986, 1
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6987, i8* %6988, align 1
  %6989 = icmp eq i32 %6970, 0
  %6990 = zext i1 %6989 to i8
  %6991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6990, i8* %6991, align 1
  %6992 = lshr i32 %6970, 31
  %6993 = trunc i32 %6992 to i8
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6993, i8* %6994, align 1
  %6995 = lshr i32 %6967, 31
  %6996 = lshr i32 %6969, 31
  %6997 = xor i32 %6992, %6995
  %6998 = xor i32 %6992, %6996
  %6999 = add i32 %6997, %6998
  %7000 = icmp eq i32 %6999, 2
  %7001 = zext i1 %7000 to i8
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7001, i8* %7002, align 1
  store %struct.Memory* %loadMem_42f715, %struct.Memory** %MEMORY
  %loadMem_42f718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7004 = getelementptr inbounds %struct.GPR, %struct.GPR* %7003, i32 0, i32 33
  %7005 = getelementptr inbounds %struct.Reg, %struct.Reg* %7004, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %7005 to i64*
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7007 = getelementptr inbounds %struct.GPR, %struct.GPR* %7006, i32 0, i32 5
  %7008 = getelementptr inbounds %struct.Reg, %struct.Reg* %7007, i32 0, i32 0
  %ECX.i72 = bitcast %union.anon* %7008 to i32*
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7010 = getelementptr inbounds %struct.GPR, %struct.GPR* %7009, i32 0, i32 7
  %7011 = getelementptr inbounds %struct.Reg, %struct.Reg* %7010, i32 0, i32 0
  %RDX.i73 = bitcast %union.anon* %7011 to i64*
  %7012 = load i32, i32* %ECX.i72
  %7013 = zext i32 %7012 to i64
  %7014 = load i64, i64* %PC.i71
  %7015 = add i64 %7014, 3
  store i64 %7015, i64* %PC.i71
  %7016 = shl i64 %7013, 32
  %7017 = ashr exact i64 %7016, 32
  store i64 %7017, i64* %RDX.i73, align 8
  store %struct.Memory* %loadMem_42f718, %struct.Memory** %MEMORY
  %loadMem_42f71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 33
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7020 to i64*
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 5
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %7023 to i64*
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 7
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %7026 to i64*
  %7027 = load i64, i64* %RDX.i70
  %7028 = add i64 %7027, 12099168
  %7029 = load i64, i64* %PC.i68
  %7030 = add i64 %7029, 8
  store i64 %7030, i64* %PC.i68
  %7031 = inttoptr i64 %7028 to i8*
  %7032 = load i8, i8* %7031
  %7033 = zext i8 %7032 to i64
  store i64 %7033, i64* %RCX.i69, align 8
  store %struct.Memory* %loadMem_42f71b, %struct.Memory** %MEMORY
  %loadMem_42f723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7035 = getelementptr inbounds %struct.GPR, %struct.GPR* %7034, i32 0, i32 33
  %7036 = getelementptr inbounds %struct.Reg, %struct.Reg* %7035, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7036 to i64*
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7038 = getelementptr inbounds %struct.GPR, %struct.GPR* %7037, i32 0, i32 5
  %7039 = getelementptr inbounds %struct.Reg, %struct.Reg* %7038, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7039 to i32*
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7041 = getelementptr inbounds %struct.GPR, %struct.GPR* %7040, i32 0, i32 1
  %7042 = getelementptr inbounds %struct.Reg, %struct.Reg* %7041, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %7042 to i64*
  %7043 = load i64, i64* %RAX.i67
  %7044 = load i32, i32* %ECX.i
  %7045 = zext i32 %7044 to i64
  %7046 = load i64, i64* %PC.i66
  %7047 = add i64 %7046, 2
  store i64 %7047, i64* %PC.i66
  %7048 = trunc i64 %7043 to i32
  %7049 = sub i32 %7048, %7044
  %7050 = zext i32 %7049 to i64
  store i64 %7050, i64* %RAX.i67, align 8
  %7051 = icmp ult i32 %7048, %7044
  %7052 = zext i1 %7051 to i8
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7052, i8* %7053, align 1
  %7054 = and i32 %7049, 255
  %7055 = call i32 @llvm.ctpop.i32(i32 %7054)
  %7056 = trunc i32 %7055 to i8
  %7057 = and i8 %7056, 1
  %7058 = xor i8 %7057, 1
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7058, i8* %7059, align 1
  %7060 = xor i64 %7045, %7043
  %7061 = trunc i64 %7060 to i32
  %7062 = xor i32 %7061, %7049
  %7063 = lshr i32 %7062, 4
  %7064 = trunc i32 %7063 to i8
  %7065 = and i8 %7064, 1
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7065, i8* %7066, align 1
  %7067 = icmp eq i32 %7049, 0
  %7068 = zext i1 %7067 to i8
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7068, i8* %7069, align 1
  %7070 = lshr i32 %7049, 31
  %7071 = trunc i32 %7070 to i8
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7071, i8* %7072, align 1
  %7073 = lshr i32 %7048, 31
  %7074 = lshr i32 %7044, 31
  %7075 = xor i32 %7074, %7073
  %7076 = xor i32 %7070, %7073
  %7077 = add i32 %7076, %7075
  %7078 = icmp eq i32 %7077, 2
  %7079 = zext i1 %7078 to i8
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7079, i8* %7080, align 1
  store %struct.Memory* %loadMem_42f723, %struct.Memory** %MEMORY
  %loadMem_42f725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 33
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7083 to i64*
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7085 = getelementptr inbounds %struct.GPR, %struct.GPR* %7084, i32 0, i32 1
  %7086 = getelementptr inbounds %struct.Reg, %struct.Reg* %7085, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %7086 to i32*
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7088 = getelementptr inbounds %struct.GPR, %struct.GPR* %7087, i32 0, i32 15
  %7089 = getelementptr inbounds %struct.Reg, %struct.Reg* %7088, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7089 to i64*
  %7090 = load i64, i64* %RBP.i65
  %7091 = sub i64 %7090, 92
  %7092 = load i32, i32* %EAX.i64
  %7093 = zext i32 %7092 to i64
  %7094 = load i64, i64* %PC.i63
  %7095 = add i64 %7094, 3
  store i64 %7095, i64* %PC.i63
  %7096 = inttoptr i64 %7091 to i32*
  store i32 %7092, i32* %7096
  store %struct.Memory* %loadMem_42f725, %struct.Memory** %MEMORY
  br label %block_.L_42f728

block_.L_42f728:                                  ; preds = %block_.L_42f704, %block_42f6db
  %loadMem_42f728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 33
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7099 to i64*
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7101 = getelementptr inbounds %struct.GPR, %struct.GPR* %7100, i32 0, i32 1
  %7102 = getelementptr inbounds %struct.Reg, %struct.Reg* %7101, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %7102 to i32*
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7104 = getelementptr inbounds %struct.GPR, %struct.GPR* %7103, i32 0, i32 1
  %7105 = getelementptr inbounds %struct.Reg, %struct.Reg* %7104, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %7105 to i64*
  %7106 = load i64, i64* %RAX.i62
  %7107 = load i32, i32* %EAX.i61
  %7108 = zext i32 %7107 to i64
  %7109 = load i64, i64* %PC.i60
  %7110 = add i64 %7109, 2
  store i64 %7110, i64* %PC.i60
  %7111 = xor i64 %7108, %7106
  %7112 = trunc i64 %7111 to i32
  %7113 = and i64 %7111, 4294967295
  store i64 %7113, i64* %RAX.i62, align 8
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7114, align 1
  %7115 = and i32 %7112, 255
  %7116 = call i32 @llvm.ctpop.i32(i32 %7115)
  %7117 = trunc i32 %7116 to i8
  %7118 = and i8 %7117, 1
  %7119 = xor i8 %7118, 1
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7119, i8* %7120, align 1
  %7121 = icmp eq i32 %7112, 0
  %7122 = zext i1 %7121 to i8
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7122, i8* %7123, align 1
  %7124 = lshr i32 %7112, 31
  %7125 = trunc i32 %7124 to i8
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7125, i8* %7126, align 1
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7127, align 1
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7128, align 1
  store %struct.Memory* %loadMem_42f728, %struct.Memory** %MEMORY
  %loadMem_42f72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7130 = getelementptr inbounds %struct.GPR, %struct.GPR* %7129, i32 0, i32 33
  %7131 = getelementptr inbounds %struct.Reg, %struct.Reg* %7130, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7131 to i64*
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 1
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %7134 to i32*
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 7
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7137 to i64*
  %7138 = load i32, i32* %EAX.i59
  %7139 = zext i32 %7138 to i64
  %7140 = load i64, i64* %PC.i58
  %7141 = add i64 %7140, 2
  store i64 %7141, i64* %PC.i58
  %7142 = and i64 %7139, 4294967295
  store i64 %7142, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_42f72a, %struct.Memory** %MEMORY
  %loadMem_42f72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7144 = getelementptr inbounds %struct.GPR, %struct.GPR* %7143, i32 0, i32 33
  %7145 = getelementptr inbounds %struct.Reg, %struct.Reg* %7144, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7145 to i64*
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 1
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %7148 to i64*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 15
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %7151 to i64*
  %7152 = load i64, i64* %RBP.i57
  %7153 = sub i64 %7152, 84
  %7154 = load i64, i64* %PC.i55
  %7155 = add i64 %7154, 4
  store i64 %7155, i64* %PC.i55
  %7156 = inttoptr i64 %7153 to i32*
  %7157 = load i32, i32* %7156
  %7158 = sext i32 %7157 to i64
  %7159 = mul i64 %7158, 20
  %7160 = trunc i64 %7159 to i32
  %7161 = and i64 %7159, 4294967295
  store i64 %7161, i64* %RAX.i56, align 8
  %7162 = shl i64 %7159, 32
  %7163 = ashr exact i64 %7162, 32
  %7164 = icmp ne i64 %7163, %7159
  %7165 = zext i1 %7164 to i8
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7165, i8* %7166, align 1
  %7167 = and i32 %7160, 255
  %7168 = call i32 @llvm.ctpop.i32(i32 %7167)
  %7169 = trunc i32 %7168 to i8
  %7170 = and i8 %7169, 1
  %7171 = xor i8 %7170, 1
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7171, i8* %7172, align 1
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7173, align 1
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7174, align 1
  %7175 = lshr i32 %7160, 31
  %7176 = trunc i32 %7175 to i8
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7176, i8* %7177, align 1
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7165, i8* %7178, align 1
  store %struct.Memory* %loadMem_42f72c, %struct.Memory** %MEMORY
  %loadMem_42f730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7180 = getelementptr inbounds %struct.GPR, %struct.GPR* %7179, i32 0, i32 33
  %7181 = getelementptr inbounds %struct.Reg, %struct.Reg* %7180, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7181 to i64*
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7183 = getelementptr inbounds %struct.GPR, %struct.GPR* %7182, i32 0, i32 1
  %7184 = getelementptr inbounds %struct.Reg, %struct.Reg* %7183, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %7184 to i64*
  %7185 = load i64, i64* %RAX.i54
  %7186 = load i64, i64* %PC.i53
  %7187 = add i64 %7186, 3
  store i64 %7187, i64* %PC.i53
  %7188 = trunc i64 %7185 to i32
  %7189 = add i32 21, %7188
  %7190 = zext i32 %7189 to i64
  store i64 %7190, i64* %RAX.i54, align 8
  %7191 = icmp ult i32 %7189, %7188
  %7192 = icmp ult i32 %7189, 21
  %7193 = or i1 %7191, %7192
  %7194 = zext i1 %7193 to i8
  %7195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7194, i8* %7195, align 1
  %7196 = and i32 %7189, 255
  %7197 = call i32 @llvm.ctpop.i32(i32 %7196)
  %7198 = trunc i32 %7197 to i8
  %7199 = and i8 %7198, 1
  %7200 = xor i8 %7199, 1
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7200, i8* %7201, align 1
  %7202 = xor i64 21, %7185
  %7203 = trunc i64 %7202 to i32
  %7204 = xor i32 %7203, %7189
  %7205 = lshr i32 %7204, 4
  %7206 = trunc i32 %7205 to i8
  %7207 = and i8 %7206, 1
  %7208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7207, i8* %7208, align 1
  %7209 = icmp eq i32 %7189, 0
  %7210 = zext i1 %7209 to i8
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7210, i8* %7211, align 1
  %7212 = lshr i32 %7189, 31
  %7213 = trunc i32 %7212 to i8
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7213, i8* %7214, align 1
  %7215 = lshr i32 %7188, 31
  %7216 = xor i32 %7212, %7215
  %7217 = add i32 %7216, %7212
  %7218 = icmp eq i32 %7217, 2
  %7219 = zext i1 %7218 to i8
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7219, i8* %7220, align 1
  store %struct.Memory* %loadMem_42f730, %struct.Memory** %MEMORY
  %loadMem_42f733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 33
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7223 to i64*
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 1
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %7226 to i64*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 15
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %7229 to i64*
  %7230 = load i64, i64* %RAX.i51
  %7231 = load i64, i64* %RBP.i52
  %7232 = sub i64 %7231, 88
  %7233 = load i64, i64* %PC.i50
  %7234 = add i64 %7233, 3
  store i64 %7234, i64* %PC.i50
  %7235 = trunc i64 %7230 to i32
  %7236 = inttoptr i64 %7232 to i32*
  %7237 = load i32, i32* %7236
  %7238 = add i32 %7237, %7235
  %7239 = zext i32 %7238 to i64
  store i64 %7239, i64* %RAX.i51, align 8
  %7240 = icmp ult i32 %7238, %7235
  %7241 = icmp ult i32 %7238, %7237
  %7242 = or i1 %7240, %7241
  %7243 = zext i1 %7242 to i8
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7243, i8* %7244, align 1
  %7245 = and i32 %7238, 255
  %7246 = call i32 @llvm.ctpop.i32(i32 %7245)
  %7247 = trunc i32 %7246 to i8
  %7248 = and i8 %7247, 1
  %7249 = xor i8 %7248, 1
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7249, i8* %7250, align 1
  %7251 = xor i32 %7237, %7235
  %7252 = xor i32 %7251, %7238
  %7253 = lshr i32 %7252, 4
  %7254 = trunc i32 %7253 to i8
  %7255 = and i8 %7254, 1
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7255, i8* %7256, align 1
  %7257 = icmp eq i32 %7238, 0
  %7258 = zext i1 %7257 to i8
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7258, i8* %7259, align 1
  %7260 = lshr i32 %7238, 31
  %7261 = trunc i32 %7260 to i8
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7261, i8* %7262, align 1
  %7263 = lshr i32 %7235, 31
  %7264 = lshr i32 %7237, 31
  %7265 = xor i32 %7260, %7263
  %7266 = xor i32 %7260, %7264
  %7267 = add i32 %7265, %7266
  %7268 = icmp eq i32 %7267, 2
  %7269 = zext i1 %7268 to i8
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7269, i8* %7270, align 1
  store %struct.Memory* %loadMem_42f733, %struct.Memory** %MEMORY
  %loadMem_42f736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7272 = getelementptr inbounds %struct.GPR, %struct.GPR* %7271, i32 0, i32 33
  %7273 = getelementptr inbounds %struct.Reg, %struct.Reg* %7272, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7273 to i64*
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7275 = getelementptr inbounds %struct.GPR, %struct.GPR* %7274, i32 0, i32 9
  %7276 = getelementptr inbounds %struct.Reg, %struct.Reg* %7275, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7276 to i64*
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7278 = getelementptr inbounds %struct.GPR, %struct.GPR* %7277, i32 0, i32 15
  %7279 = getelementptr inbounds %struct.Reg, %struct.Reg* %7278, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %7279 to i64*
  %7280 = load i64, i64* %RBP.i49
  %7281 = sub i64 %7280, 92
  %7282 = load i64, i64* %PC.i48
  %7283 = add i64 %7282, 3
  store i64 %7283, i64* %PC.i48
  %7284 = inttoptr i64 %7281 to i32*
  %7285 = load i32, i32* %7284
  %7286 = zext i32 %7285 to i64
  store i64 %7286, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42f736, %struct.Memory** %MEMORY
  %loadMem_42f739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7288 = getelementptr inbounds %struct.GPR, %struct.GPR* %7287, i32 0, i32 33
  %7289 = getelementptr inbounds %struct.Reg, %struct.Reg* %7288, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %7289 to i64*
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7291 = getelementptr inbounds %struct.GPR, %struct.GPR* %7290, i32 0, i32 1
  %7292 = getelementptr inbounds %struct.Reg, %struct.Reg* %7291, i32 0, i32 0
  %EAX.i47 = bitcast %union.anon* %7292 to i32*
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7294 = getelementptr inbounds %struct.GPR, %struct.GPR* %7293, i32 0, i32 11
  %7295 = getelementptr inbounds %struct.Reg, %struct.Reg* %7294, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7295 to i64*
  %7296 = load i32, i32* %EAX.i47
  %7297 = zext i32 %7296 to i64
  %7298 = load i64, i64* %PC.i46
  %7299 = add i64 %7298, 2
  store i64 %7299, i64* %PC.i46
  %7300 = and i64 %7297, 4294967295
  store i64 %7300, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42f739, %struct.Memory** %MEMORY
  %loadMem1_42f73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7302 = getelementptr inbounds %struct.GPR, %struct.GPR* %7301, i32 0, i32 33
  %7303 = getelementptr inbounds %struct.Reg, %struct.Reg* %7302, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7303 to i64*
  %7304 = load i64, i64* %PC.i45
  %7305 = add i64 %7304, -132411
  %7306 = load i64, i64* %PC.i45
  %7307 = add i64 %7306, 5
  %7308 = load i64, i64* %PC.i45
  %7309 = add i64 %7308, 5
  store i64 %7309, i64* %PC.i45
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7311 = load i64, i64* %7310, align 8
  %7312 = add i64 %7311, -8
  %7313 = inttoptr i64 %7312 to i64*
  store i64 %7307, i64* %7313
  store i64 %7312, i64* %7310, align 8
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7305, i64* %7314, align 8
  store %struct.Memory* %loadMem1_42f73b, %struct.Memory** %MEMORY
  %loadMem2_42f73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42f73b = load i64, i64* %3
  %call2_42f73b = call %struct.Memory* @sub_40f200.is_ko(%struct.State* %0, i64 %loadPC_42f73b, %struct.Memory* %loadMem2_42f73b)
  store %struct.Memory* %call2_42f73b, %struct.Memory** %MEMORY
  %loadMem_42f740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 33
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7317 to i64*
  %7318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7319 = getelementptr inbounds %struct.GPR, %struct.GPR* %7318, i32 0, i32 1
  %7320 = getelementptr inbounds %struct.Reg, %struct.Reg* %7319, i32 0, i32 0
  %EAX.i44 = bitcast %union.anon* %7320 to i32*
  %7321 = load i32, i32* %EAX.i44
  %7322 = zext i32 %7321 to i64
  %7323 = load i64, i64* %PC.i43
  %7324 = add i64 %7323, 3
  store i64 %7324, i64* %PC.i43
  %7325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7325, align 1
  %7326 = and i32 %7321, 255
  %7327 = call i32 @llvm.ctpop.i32(i32 %7326)
  %7328 = trunc i32 %7327 to i8
  %7329 = and i8 %7328, 1
  %7330 = xor i8 %7329, 1
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7330, i8* %7331, align 1
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7332, align 1
  %7333 = icmp eq i32 %7321, 0
  %7334 = zext i1 %7333 to i8
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7334, i8* %7335, align 1
  %7336 = lshr i32 %7321, 31
  %7337 = trunc i32 %7336 to i8
  %7338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7337, i8* %7338, align 1
  %7339 = lshr i32 %7321, 31
  %7340 = xor i32 %7336, %7339
  %7341 = add i32 %7340, %7339
  %7342 = icmp eq i32 %7341, 2
  %7343 = zext i1 %7342 to i8
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7343, i8* %7344, align 1
  store %struct.Memory* %loadMem_42f740, %struct.Memory** %MEMORY
  %loadMem_42f743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7346 = getelementptr inbounds %struct.GPR, %struct.GPR* %7345, i32 0, i32 33
  %7347 = getelementptr inbounds %struct.Reg, %struct.Reg* %7346, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7347 to i64*
  %7348 = load i64, i64* %PC.i42
  %7349 = add i64 %7348, 23
  %7350 = load i64, i64* %PC.i42
  %7351 = add i64 %7350, 6
  %7352 = load i64, i64* %PC.i42
  %7353 = add i64 %7352, 6
  store i64 %7353, i64* %PC.i42
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7355 = load i8, i8* %7354, align 1
  store i8 %7355, i8* %BRANCH_TAKEN, align 1
  %7356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7357 = icmp ne i8 %7355, 0
  %7358 = select i1 %7357, i64 %7349, i64 %7351
  store i64 %7358, i64* %7356, align 8
  store %struct.Memory* %loadMem_42f743, %struct.Memory** %MEMORY
  %loadBr_42f743 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42f743 = icmp eq i8 %loadBr_42f743, 1
  br i1 %cmpBr_42f743, label %block_.L_42f75a, label %block_42f749

block_42f749:                                     ; preds = %block_.L_42f728
  %loadMem_42f749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7360 = getelementptr inbounds %struct.GPR, %struct.GPR* %7359, i32 0, i32 33
  %7361 = getelementptr inbounds %struct.Reg, %struct.Reg* %7360, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7361 to i64*
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7363 = getelementptr inbounds %struct.GPR, %struct.GPR* %7362, i32 0, i32 1
  %7364 = getelementptr inbounds %struct.Reg, %struct.Reg* %7363, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %7364 to i64*
  %7365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7366 = getelementptr inbounds %struct.GPR, %struct.GPR* %7365, i32 0, i32 15
  %7367 = getelementptr inbounds %struct.Reg, %struct.Reg* %7366, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %7367 to i64*
  %7368 = load i64, i64* %RBP.i41
  %7369 = sub i64 %7368, 84
  %7370 = load i64, i64* %PC.i39
  %7371 = add i64 %7370, 4
  store i64 %7371, i64* %PC.i39
  %7372 = inttoptr i64 %7369 to i32*
  %7373 = load i32, i32* %7372
  %7374 = sext i32 %7373 to i64
  %7375 = mul i64 %7374, 20
  %7376 = trunc i64 %7375 to i32
  %7377 = and i64 %7375, 4294967295
  store i64 %7377, i64* %RAX.i40, align 8
  %7378 = shl i64 %7375, 32
  %7379 = ashr exact i64 %7378, 32
  %7380 = icmp ne i64 %7379, %7375
  %7381 = zext i1 %7380 to i8
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7381, i8* %7382, align 1
  %7383 = and i32 %7376, 255
  %7384 = call i32 @llvm.ctpop.i32(i32 %7383)
  %7385 = trunc i32 %7384 to i8
  %7386 = and i8 %7385, 1
  %7387 = xor i8 %7386, 1
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7387, i8* %7388, align 1
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7389, align 1
  %7390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7390, align 1
  %7391 = lshr i32 %7376, 31
  %7392 = trunc i32 %7391 to i8
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7392, i8* %7393, align 1
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7381, i8* %7394, align 1
  store %struct.Memory* %loadMem_42f749, %struct.Memory** %MEMORY
  %loadMem_42f74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7396 = getelementptr inbounds %struct.GPR, %struct.GPR* %7395, i32 0, i32 33
  %7397 = getelementptr inbounds %struct.Reg, %struct.Reg* %7396, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7397 to i64*
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7399 = getelementptr inbounds %struct.GPR, %struct.GPR* %7398, i32 0, i32 1
  %7400 = getelementptr inbounds %struct.Reg, %struct.Reg* %7399, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %7400 to i64*
  %7401 = load i64, i64* %RAX.i38
  %7402 = load i64, i64* %PC.i37
  %7403 = add i64 %7402, 3
  store i64 %7403, i64* %PC.i37
  %7404 = trunc i64 %7401 to i32
  %7405 = add i32 21, %7404
  %7406 = zext i32 %7405 to i64
  store i64 %7406, i64* %RAX.i38, align 8
  %7407 = icmp ult i32 %7405, %7404
  %7408 = icmp ult i32 %7405, 21
  %7409 = or i1 %7407, %7408
  %7410 = zext i1 %7409 to i8
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7410, i8* %7411, align 1
  %7412 = and i32 %7405, 255
  %7413 = call i32 @llvm.ctpop.i32(i32 %7412)
  %7414 = trunc i32 %7413 to i8
  %7415 = and i8 %7414, 1
  %7416 = xor i8 %7415, 1
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7416, i8* %7417, align 1
  %7418 = xor i64 21, %7401
  %7419 = trunc i64 %7418 to i32
  %7420 = xor i32 %7419, %7405
  %7421 = lshr i32 %7420, 4
  %7422 = trunc i32 %7421 to i8
  %7423 = and i8 %7422, 1
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7423, i8* %7424, align 1
  %7425 = icmp eq i32 %7405, 0
  %7426 = zext i1 %7425 to i8
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7426, i8* %7427, align 1
  %7428 = lshr i32 %7405, 31
  %7429 = trunc i32 %7428 to i8
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7429, i8* %7430, align 1
  %7431 = lshr i32 %7404, 31
  %7432 = xor i32 %7428, %7431
  %7433 = add i32 %7432, %7428
  %7434 = icmp eq i32 %7433, 2
  %7435 = zext i1 %7434 to i8
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7435, i8* %7436, align 1
  store %struct.Memory* %loadMem_42f74d, %struct.Memory** %MEMORY
  %loadMem_42f750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7438 = getelementptr inbounds %struct.GPR, %struct.GPR* %7437, i32 0, i32 33
  %7439 = getelementptr inbounds %struct.Reg, %struct.Reg* %7438, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7439 to i64*
  %7440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7441 = getelementptr inbounds %struct.GPR, %struct.GPR* %7440, i32 0, i32 1
  %7442 = getelementptr inbounds %struct.Reg, %struct.Reg* %7441, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %7442 to i64*
  %7443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7444 = getelementptr inbounds %struct.GPR, %struct.GPR* %7443, i32 0, i32 15
  %7445 = getelementptr inbounds %struct.Reg, %struct.Reg* %7444, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %7445 to i64*
  %7446 = load i64, i64* %RAX.i35
  %7447 = load i64, i64* %RBP.i36
  %7448 = sub i64 %7447, 88
  %7449 = load i64, i64* %PC.i34
  %7450 = add i64 %7449, 3
  store i64 %7450, i64* %PC.i34
  %7451 = trunc i64 %7446 to i32
  %7452 = inttoptr i64 %7448 to i32*
  %7453 = load i32, i32* %7452
  %7454 = add i32 %7453, %7451
  %7455 = zext i32 %7454 to i64
  store i64 %7455, i64* %RAX.i35, align 8
  %7456 = icmp ult i32 %7454, %7451
  %7457 = icmp ult i32 %7454, %7453
  %7458 = or i1 %7456, %7457
  %7459 = zext i1 %7458 to i8
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7459, i8* %7460, align 1
  %7461 = and i32 %7454, 255
  %7462 = call i32 @llvm.ctpop.i32(i32 %7461)
  %7463 = trunc i32 %7462 to i8
  %7464 = and i8 %7463, 1
  %7465 = xor i8 %7464, 1
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7465, i8* %7466, align 1
  %7467 = xor i32 %7453, %7451
  %7468 = xor i32 %7467, %7454
  %7469 = lshr i32 %7468, 4
  %7470 = trunc i32 %7469 to i8
  %7471 = and i8 %7470, 1
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7471, i8* %7472, align 1
  %7473 = icmp eq i32 %7454, 0
  %7474 = zext i1 %7473 to i8
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7474, i8* %7475, align 1
  %7476 = lshr i32 %7454, 31
  %7477 = trunc i32 %7476 to i8
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7477, i8* %7478, align 1
  %7479 = lshr i32 %7451, 31
  %7480 = lshr i32 %7453, 31
  %7481 = xor i32 %7476, %7479
  %7482 = xor i32 %7476, %7480
  %7483 = add i32 %7481, %7482
  %7484 = icmp eq i32 %7483, 2
  %7485 = zext i1 %7484 to i8
  %7486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7485, i8* %7486, align 1
  store %struct.Memory* %loadMem_42f750, %struct.Memory** %MEMORY
  %loadMem_42f753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7488 = getelementptr inbounds %struct.GPR, %struct.GPR* %7487, i32 0, i32 33
  %7489 = getelementptr inbounds %struct.Reg, %struct.Reg* %7488, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7489 to i64*
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 1
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %EAX.i33 = bitcast %union.anon* %7492 to i32*
  %7493 = load i32, i32* %EAX.i33
  %7494 = zext i32 %7493 to i64
  %7495 = load i64, i64* %PC.i32
  %7496 = add i64 %7495, 7
  store i64 %7496, i64* %PC.i32
  store i32 %7493, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  store %struct.Memory* %loadMem_42f753, %struct.Memory** %MEMORY
  br label %block_.L_42f75a

block_.L_42f75a:                                  ; preds = %block_42f749, %block_.L_42f728
  %loadMem_42f75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 33
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7499 to i64*
  %7500 = load i64, i64* %PC.i31
  %7501 = add i64 %7500, 5
  %7502 = load i64, i64* %PC.i31
  %7503 = add i64 %7502, 5
  store i64 %7503, i64* %PC.i31
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7501, i64* %7504, align 8
  store %struct.Memory* %loadMem_42f75a, %struct.Memory** %MEMORY
  br label %block_.L_42f75f

block_.L_42f75f:                                  ; preds = %block_.L_42f75a, %block_.L_42f6cc, %block_.L_42f66a, %block_.L_42f495, %block_.L_42f3a4, %block_.L_42f34b, %block_42f346
  %loadMem_42f75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7506 = getelementptr inbounds %struct.GPR, %struct.GPR* %7505, i32 0, i32 33
  %7507 = getelementptr inbounds %struct.Reg, %struct.Reg* %7506, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7507 to i64*
  %7508 = load i64, i64* %PC.i30
  %7509 = add i64 %7508, 5
  %7510 = load i64, i64* %PC.i30
  %7511 = add i64 %7510, 5
  store i64 %7511, i64* %PC.i30
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7509, i64* %7512, align 8
  store %struct.Memory* %loadMem_42f75f, %struct.Memory** %MEMORY
  br label %block_.L_42f764

block_.L_42f764:                                  ; preds = %block_.L_42f75f
  %loadMem_42f764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 33
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7515 to i64*
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7517 = getelementptr inbounds %struct.GPR, %struct.GPR* %7516, i32 0, i32 1
  %7518 = getelementptr inbounds %struct.Reg, %struct.Reg* %7517, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %7518 to i64*
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7520 = getelementptr inbounds %struct.GPR, %struct.GPR* %7519, i32 0, i32 15
  %7521 = getelementptr inbounds %struct.Reg, %struct.Reg* %7520, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %7521 to i64*
  %7522 = load i64, i64* %RBP.i29
  %7523 = sub i64 %7522, 80
  %7524 = load i64, i64* %PC.i27
  %7525 = add i64 %7524, 4
  store i64 %7525, i64* %PC.i27
  %7526 = inttoptr i64 %7523 to i64*
  %7527 = load i64, i64* %7526
  store i64 %7527, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_42f764, %struct.Memory** %MEMORY
  %loadMem_42f768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7529 = getelementptr inbounds %struct.GPR, %struct.GPR* %7528, i32 0, i32 33
  %7530 = getelementptr inbounds %struct.Reg, %struct.Reg* %7529, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7530 to i64*
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7532 = getelementptr inbounds %struct.GPR, %struct.GPR* %7531, i32 0, i32 1
  %7533 = getelementptr inbounds %struct.Reg, %struct.Reg* %7532, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %7533 to i64*
  %7534 = load i64, i64* %RAX.i26
  %7535 = load i64, i64* %PC.i25
  %7536 = add i64 %7535, 3
  store i64 %7536, i64* %PC.i25
  %7537 = inttoptr i64 %7534 to i64*
  %7538 = load i64, i64* %7537
  store i64 %7538, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_42f768, %struct.Memory** %MEMORY
  %loadMem_42f76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 33
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7541 to i64*
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 1
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %7544 to i64*
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7546 = getelementptr inbounds %struct.GPR, %struct.GPR* %7545, i32 0, i32 15
  %7547 = getelementptr inbounds %struct.Reg, %struct.Reg* %7546, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %7547 to i64*
  %7548 = load i64, i64* %RBP.i24
  %7549 = sub i64 %7548, 80
  %7550 = load i64, i64* %RAX.i23
  %7551 = load i64, i64* %PC.i22
  %7552 = add i64 %7551, 4
  store i64 %7552, i64* %PC.i22
  %7553 = inttoptr i64 %7549 to i64*
  store i64 %7550, i64* %7553
  store %struct.Memory* %loadMem_42f76b, %struct.Memory** %MEMORY
  %loadMem_42f76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7555 = getelementptr inbounds %struct.GPR, %struct.GPR* %7554, i32 0, i32 33
  %7556 = getelementptr inbounds %struct.Reg, %struct.Reg* %7555, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7556 to i64*
  %7557 = load i64, i64* %PC.i21
  %7558 = add i64 %7557, -1304
  %7559 = load i64, i64* %PC.i21
  %7560 = add i64 %7559, 5
  store i64 %7560, i64* %PC.i21
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7558, i64* %7561, align 8
  store %struct.Memory* %loadMem_42f76f, %struct.Memory** %MEMORY
  br label %block_.L_42f257

block_.L_42f774:                                  ; preds = %block_.L_42f257
  %loadMem_42f774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7563 = getelementptr inbounds %struct.GPR, %struct.GPR* %7562, i32 0, i32 33
  %7564 = getelementptr inbounds %struct.Reg, %struct.Reg* %7563, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7564 to i64*
  %7565 = load i64, i64* %PC.i20
  %7566 = add i64 %7565, -1342
  %7567 = load i64, i64* %PC.i20
  %7568 = add i64 %7567, 5
  store i64 %7568, i64* %PC.i20
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7566, i64* %7569, align 8
  store %struct.Memory* %loadMem_42f774, %struct.Memory** %MEMORY
  br label %block_.L_42f236

block_.L_42f779:                                  ; preds = %block_.L_42f236
  %loadMem_42f779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7571 = getelementptr inbounds %struct.GPR, %struct.GPR* %7570, i32 0, i32 33
  %7572 = getelementptr inbounds %struct.Reg, %struct.Reg* %7571, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7572 to i64*
  %7573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7574 = getelementptr inbounds %struct.GPR, %struct.GPR* %7573, i32 0, i32 1
  %7575 = getelementptr inbounds %struct.Reg, %struct.Reg* %7574, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %7575 to i64*
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7577 = getelementptr inbounds %struct.GPR, %struct.GPR* %7576, i32 0, i32 15
  %7578 = getelementptr inbounds %struct.Reg, %struct.Reg* %7577, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %7578 to i64*
  %7579 = load i64, i64* %RBP.i19
  %7580 = sub i64 %7579, 52
  %7581 = load i64, i64* %PC.i17
  %7582 = add i64 %7581, 3
  store i64 %7582, i64* %PC.i17
  %7583 = inttoptr i64 %7580 to i32*
  %7584 = load i32, i32* %7583
  %7585 = zext i32 %7584 to i64
  store i64 %7585, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_42f779, %struct.Memory** %MEMORY
  %loadMem_42f77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 33
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7588 to i64*
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 5
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %RCX.i15 = bitcast %union.anon* %7591 to i64*
  %7592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7593 = getelementptr inbounds %struct.GPR, %struct.GPR* %7592, i32 0, i32 15
  %7594 = getelementptr inbounds %struct.Reg, %struct.Reg* %7593, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %7594 to i64*
  %7595 = load i64, i64* %RBP.i16
  %7596 = sub i64 %7595, 16
  %7597 = load i64, i64* %PC.i14
  %7598 = add i64 %7597, 4
  store i64 %7598, i64* %PC.i14
  %7599 = inttoptr i64 %7596 to i64*
  %7600 = load i64, i64* %7599
  store i64 %7600, i64* %RCX.i15, align 8
  store %struct.Memory* %loadMem_42f77c, %struct.Memory** %MEMORY
  %loadMem_42f780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7602 = getelementptr inbounds %struct.GPR, %struct.GPR* %7601, i32 0, i32 33
  %7603 = getelementptr inbounds %struct.Reg, %struct.Reg* %7602, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7603 to i64*
  %7604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7605 = getelementptr inbounds %struct.GPR, %struct.GPR* %7604, i32 0, i32 1
  %7606 = getelementptr inbounds %struct.Reg, %struct.Reg* %7605, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %7606 to i32*
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7608 = getelementptr inbounds %struct.GPR, %struct.GPR* %7607, i32 0, i32 5
  %7609 = getelementptr inbounds %struct.Reg, %struct.Reg* %7608, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7609 to i64*
  %7610 = load i64, i64* %RCX.i
  %7611 = add i64 %7610, 4
  %7612 = load i32, i32* %EAX.i13
  %7613 = zext i32 %7612 to i64
  %7614 = load i64, i64* %PC.i12
  %7615 = add i64 %7614, 3
  store i64 %7615, i64* %PC.i12
  %7616 = inttoptr i64 %7611 to i32*
  store i32 %7612, i32* %7616
  store %struct.Memory* %loadMem_42f780, %struct.Memory** %MEMORY
  %loadMem_42f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7618 = getelementptr inbounds %struct.GPR, %struct.GPR* %7617, i32 0, i32 33
  %7619 = getelementptr inbounds %struct.Reg, %struct.Reg* %7618, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7619 to i64*
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7621 = getelementptr inbounds %struct.GPR, %struct.GPR* %7620, i32 0, i32 1
  %7622 = getelementptr inbounds %struct.Reg, %struct.Reg* %7621, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %7622 to i64*
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7624 = getelementptr inbounds %struct.GPR, %struct.GPR* %7623, i32 0, i32 15
  %7625 = getelementptr inbounds %struct.Reg, %struct.Reg* %7624, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %7625 to i64*
  %7626 = load i64, i64* %RBP.i11
  %7627 = sub i64 %7626, 52
  %7628 = load i64, i64* %PC.i9
  %7629 = add i64 %7628, 3
  store i64 %7629, i64* %PC.i9
  %7630 = inttoptr i64 %7627 to i32*
  %7631 = load i32, i32* %7630
  %7632 = zext i32 %7631 to i64
  store i64 %7632, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_42f783, %struct.Memory** %MEMORY
  %loadMem_42f786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7634 = getelementptr inbounds %struct.GPR, %struct.GPR* %7633, i32 0, i32 33
  %7635 = getelementptr inbounds %struct.Reg, %struct.Reg* %7634, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7635 to i64*
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7637 = getelementptr inbounds %struct.GPR, %struct.GPR* %7636, i32 0, i32 1
  %7638 = getelementptr inbounds %struct.Reg, %struct.Reg* %7637, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7638 to i32*
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7640 = getelementptr inbounds %struct.GPR, %struct.GPR* %7639, i32 0, i32 15
  %7641 = getelementptr inbounds %struct.Reg, %struct.Reg* %7640, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %7641 to i64*
  %7642 = load i64, i64* %RBP.i8
  %7643 = sub i64 %7642, 4
  %7644 = load i32, i32* %EAX.i
  %7645 = zext i32 %7644 to i64
  %7646 = load i64, i64* %PC.i7
  %7647 = add i64 %7646, 3
  store i64 %7647, i64* %PC.i7
  %7648 = inttoptr i64 %7643 to i32*
  store i32 %7644, i32* %7648
  store %struct.Memory* %loadMem_42f786, %struct.Memory** %MEMORY
  br label %block_.L_42f789

block_.L_42f789:                                  ; preds = %block_.L_42f779, %block_.L_42f62b, %block_42f573, %block_42f516
  %loadMem_42f789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 33
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7651 to i64*
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 1
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7654 to i64*
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7656 = getelementptr inbounds %struct.GPR, %struct.GPR* %7655, i32 0, i32 15
  %7657 = getelementptr inbounds %struct.Reg, %struct.Reg* %7656, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7657 to i64*
  %7658 = load i64, i64* %RBP.i6
  %7659 = sub i64 %7658, 4
  %7660 = load i64, i64* %PC.i5
  %7661 = add i64 %7660, 3
  store i64 %7661, i64* %PC.i5
  %7662 = inttoptr i64 %7659 to i32*
  %7663 = load i32, i32* %7662
  %7664 = zext i32 %7663 to i64
  store i64 %7664, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42f789, %struct.Memory** %MEMORY
  %loadMem_42f78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7666 = getelementptr inbounds %struct.GPR, %struct.GPR* %7665, i32 0, i32 33
  %7667 = getelementptr inbounds %struct.Reg, %struct.Reg* %7666, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7667 to i64*
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 13
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7670 to i64*
  %7671 = load i64, i64* %RSP.i
  %7672 = load i64, i64* %PC.i4
  %7673 = add i64 %7672, 7
  store i64 %7673, i64* %PC.i4
  %7674 = add i64 176, %7671
  store i64 %7674, i64* %RSP.i, align 8
  %7675 = icmp ult i64 %7674, %7671
  %7676 = icmp ult i64 %7674, 176
  %7677 = or i1 %7675, %7676
  %7678 = zext i1 %7677 to i8
  %7679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7678, i8* %7679, align 1
  %7680 = trunc i64 %7674 to i32
  %7681 = and i32 %7680, 255
  %7682 = call i32 @llvm.ctpop.i32(i32 %7681)
  %7683 = trunc i32 %7682 to i8
  %7684 = and i8 %7683, 1
  %7685 = xor i8 %7684, 1
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7685, i8* %7686, align 1
  %7687 = xor i64 176, %7671
  %7688 = xor i64 %7687, %7674
  %7689 = lshr i64 %7688, 4
  %7690 = trunc i64 %7689 to i8
  %7691 = and i8 %7690, 1
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7691, i8* %7692, align 1
  %7693 = icmp eq i64 %7674, 0
  %7694 = zext i1 %7693 to i8
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7694, i8* %7695, align 1
  %7696 = lshr i64 %7674, 63
  %7697 = trunc i64 %7696 to i8
  %7698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7697, i8* %7698, align 1
  %7699 = lshr i64 %7671, 63
  %7700 = xor i64 %7696, %7699
  %7701 = add i64 %7700, %7696
  %7702 = icmp eq i64 %7701, 2
  %7703 = zext i1 %7702 to i8
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7703, i8* %7704, align 1
  store %struct.Memory* %loadMem_42f78c, %struct.Memory** %MEMORY
  %loadMem_42f793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 33
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7707 to i64*
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 15
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7710 to i64*
  %7711 = load i64, i64* %PC.i2
  %7712 = add i64 %7711, 1
  store i64 %7712, i64* %PC.i2
  %7713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7714 = load i64, i64* %7713, align 8
  %7715 = add i64 %7714, 8
  %7716 = inttoptr i64 %7714 to i64*
  %7717 = load i64, i64* %7716
  store i64 %7717, i64* %RBP.i3, align 8
  store i64 %7715, i64* %7713, align 8
  store %struct.Memory* %loadMem_42f793, %struct.Memory** %MEMORY
  %loadMem_42f794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7719 = getelementptr inbounds %struct.GPR, %struct.GPR* %7718, i32 0, i32 33
  %7720 = getelementptr inbounds %struct.Reg, %struct.Reg* %7719, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7720 to i64*
  %7721 = load i64, i64* %PC.i1
  %7722 = add i64 %7721, 1
  store i64 %7722, i64* %PC.i1
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7725 = load i64, i64* %7724, align 8
  %7726 = inttoptr i64 %7725 to i64*
  %7727 = load i64, i64* %7726
  store i64 %7727, i64* %7723, align 8
  %7728 = add i64 %7725, 8
  store i64 %7728, i64* %7724, align 8
  store %struct.Memory* %loadMem_42f794, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42f794
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

define %struct.Memory* @routine_movq__0x579c4a___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x579c4a_type* @G__0x579c4a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x2__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x270f__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 9999, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movq___rdx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgfGetFloatProperty(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_42f0b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = xor i32 %25, %28
  %30 = add i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42f0a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0xb40a5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0xb40a5__rip__type* @G_0xb40a5__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f0b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0xb4097__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0xb4097__rip__type* @G_0xb4097__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f0b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x579c47___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x579c47_type* @G__0x579c47 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq___rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgfGetIntProperty(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_42f0e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x13__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 19, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gnugo_clear_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_callq_.gnugo_set_komi(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_42f1ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = sext i8 %16 to i64
  %18 = and i64 %17, 4294967295
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x30___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 48
  %14 = icmp ult i32 %9, 48
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
  %23 = xor i64 48, %10
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

define %struct.Memory* @routine_jle_.L_42f160(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x39___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 57
  %14 = icmp ult i32 %9, 57
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
  %23 = xor i64 57, %10
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

define %struct.Memory* @routine_jg_.L_42f160(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.atoi_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0x80___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 128, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_jne_.L_42f144(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f15b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57cac0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57cac0_type* @G__0x57cac0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f1e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x41___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 65
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 65
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
  %24 = xor i64 65, %9
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

define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x49___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 73
  %14 = icmp ult i32 %9, 73
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
  %23 = xor i64 73, %10
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

define %struct.Memory* @routine_jl_.L_42f186(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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

define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42f1c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f1e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57cad7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57cad7_type* @G__0x57cad7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f1ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57ca87___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57ca87_type* @G__0x57ca87 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42f22a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_42f22a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
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

define %struct.Memory* @routine_callq_.sgftreeForward(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_42f779(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 80
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

define %struct.Memory* @routine_je_.L_42f774(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_42f27c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f2b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57caf9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57caf9_type* @G__0x57caf9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = sext i16 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 255, %9
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

define %struct.Memory* @routine_movswl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = sext i16 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr exact i64 %12, 32
  %14 = ashr i64 %13, 7
  %15 = lshr i64 %14, 1
  %16 = trunc i64 %14 to i8
  %17 = and i8 %16, 1
  %18 = trunc i64 %15 to i32
  %19 = and i64 %15, 4294967295
  store i64 %19, i64* %RDX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %18, 255
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
  %32 = lshr i32 %18, 31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %31, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_subl__0x2042___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 8258
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 8258
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
  %24 = xor i64 8258, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42f49a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f2d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x2057___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 8279
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 8279
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
  %24 = xor i64 8279, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f2ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x4241___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 16961
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 16961
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
  %24 = xor i64 16961, %9
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

define %struct.Memory* @routine_je_.L_42f34b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f303(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x4c49___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 19529
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 19529
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
  %24 = xor i64 19529, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42f66f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f319(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x4c50___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 19536
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 19536
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
  %24 = xor i64 19536, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42f3fd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f332(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x5741___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 22337
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 22337
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
  %24 = xor i64 22337, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42f3a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f75f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_moveXY(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae438___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.rotate(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gnugo_add_stone(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xafdfb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
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

define %struct.Memory* @routine_je_.L_42f446(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
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

define %struct.Memory* @routine_jne_.L_42f446(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl___rcx____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gnugo_sethand(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgfOverwritePropertyInt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x77___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 119
  %14 = icmp ult i32 %9, 119
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
  %23 = xor i64 119, %10
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

define %struct.Memory* @routine_je_.L_42f482(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x57___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 87
  %14 = icmp ult i32 %9, 87
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
  %23 = xor i64 87, %10
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

define %struct.Memory* @routine_cmpl__0x32___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 50
  %14 = icmp ult i32 %9, 50
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
  %23 = xor i64 50, %10
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

define %struct.Memory* @routine_jne_.L_42f48e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_42f495(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x8__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i16*
  %17 = load i16, i16* %16
  %18 = sext i16 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2057___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 8279
  %14 = icmp ult i32 %9, 8279
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
  %23 = xor i64 8279, %10
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

define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_42f501(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_42f501(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xafdfb0_type* @G_0xafdfb0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_42f53a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgftreeBack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_42f789(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_42f59c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 56
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

define %struct.Memory* @routine_jne_.L_42f597(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 60
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

define %struct.Memory* @routine_jmpq_.L_42f59c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x7ae438___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jae_.L_42f5f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_imull__0x14__MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
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

define %struct.Memory* @routine_je_.L_42f60d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_42f62b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.gnugo_play_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f66a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57cb03___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57cb03_type* @G__0x57cb03 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57cb47___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57cb47_type* @G__0x57cb47 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_jae_.L_42f6cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jb_.L_42f6d1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
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

define %struct.Memory* @routine_jle_.L_42f704(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul i64 20, %17
  %19 = trunc i64 %18 to i32
  %20 = and i64 %18, 4294967295
  store i64 %20, i64* %RCX, align 8
  %21 = shl i64 %18, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp ne i64 %22, %18
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %24, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 88
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

define %struct.Memory* @routine_subl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_42f728(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.is_ko(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_42f75a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__0xb6eec4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42f764(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42f257(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42f236(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
