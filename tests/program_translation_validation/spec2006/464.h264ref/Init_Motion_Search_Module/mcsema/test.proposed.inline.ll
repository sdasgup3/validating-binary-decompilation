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
%G_0x53791__rip__type = type <{ [8 x i8] }>
%G_0x537d8__rip__type = type <{ [8 x i8] }>
%G_0x5380c__rip__type = type <{ [8 x i8] }>
%G_0x5385a__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d09a0_type = type <{ [8 x i8] }>
%G_0x6d1fac_type = type <{ [4 x i8] }>
%G_0x6f8f00_type = type <{ [8 x i8] }>
%G_0x6f9718_type = type <{ [8 x i8] }>
%G_0x711c50_type = type <{ [8 x i8] }>
%G_0x726840_type = type <{ [8 x i8] }>
%G__0x4c2240_type = type <{ [8 x i8] }>
%G__0x4c226b_type = type <{ [8 x i8] }>
%G__0x4c2296_type = type <{ [8 x i8] }>
%G__0x4c22b8_type = type <{ [8 x i8] }>
%G__0x4c22db_type = type <{ [8 x i8] }>
%G__0x6f9698_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x53791__rip_ = global %G_0x53791__rip__type zeroinitializer
@G_0x537d8__rip_ = global %G_0x537d8__rip__type zeroinitializer
@G_0x5380c__rip_ = global %G_0x5380c__rip__type zeroinitializer
@G_0x5385a__rip_ = global %G_0x5385a__rip__type zeroinitializer
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6d09a0 = global %G_0x6d09a0_type zeroinitializer
@G_0x6d1fac = global %G_0x6d1fac_type zeroinitializer
@G_0x6f8f00 = global %G_0x6f8f00_type zeroinitializer
@G_0x6f9718 = global %G_0x6f9718_type zeroinitializer
@G_0x711c50 = global %G_0x711c50_type zeroinitializer
@G_0x726840 = global %G_0x726840_type zeroinitializer
@G__0x4c2240 = global %G__0x4c2240_type zeroinitializer
@G__0x4c226b = global %G__0x4c226b_type zeroinitializer
@G__0x4c2296 = global %G__0x4c2296_type zeroinitializer
@G__0x4c22b8 = global %G__0x4c22b8_type zeroinitializer
@G__0x4c22db = global %G__0x4c22db_type zeroinitializer
@G__0x6f9698 = global %G__0x6f9698_type zeroinitializer

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

declare %struct.Memory* @sub_401200.ceil_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459be0.get_mem4Dint(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45a400.InitializeFastFullIntegerSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @Init_Motion_Search_Module(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_45df30 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_45df30, %struct.Memory** %MEMORY
  %loadMem_45df31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i299 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i299
  %27 = load i64, i64* %PC.i298
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i298
  store i64 %26, i64* %RBP.i300, align 8
  store %struct.Memory* %loadMem_45df31, %struct.Memory** %MEMORY
  %loadMem_45df34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i513 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i513
  %36 = load i64, i64* %PC.i512
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i512
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i513, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_45df34, %struct.Memory** %MEMORY
  %loadMem_45df3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i563
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC.i563
  %75 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %75, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_45df3b, %struct.Memory** %MEMORY
  %loadMem_45df43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %77 = getelementptr inbounds %struct.GPR, %struct.GPR* %76, i32 0, i32 33
  %78 = getelementptr inbounds %struct.Reg, %struct.Reg* %77, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %78 to i64*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %81 to i64*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %RAX.i583
  %86 = add i64 %85, 72684
  %87 = load i64, i64* %PC.i582
  %88 = add i64 %87, 6
  store i64 %88, i64* %PC.i582
  %89 = inttoptr i64 %86 to i32*
  %90 = load i32, i32* %89
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RCX.i584, align 8
  store %struct.Memory* %loadMem_45df43, %struct.Memory** %MEMORY
  %loadMem_45df49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i602
  %99 = add i64 %98, 8
  store i64 %99, i64* %PC.i602
  %100 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %100, i64* %RAX.i603, align 8
  store %struct.Memory* %loadMem_45df49, %struct.Memory** %MEMORY
  %loadMem_45df51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %ECX.i628 = bitcast %union.anon* %106 to i32*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RAX.i629 = bitcast %union.anon* %109 to i64*
  %110 = load i32, i32* %ECX.i628
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* %RAX.i629
  %113 = add i64 %112, 72688
  %114 = load i64, i64* %PC.i627
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC.i627
  %116 = inttoptr i64 %113 to i32*
  %117 = load i32, i32* %116
  %118 = sub i32 %110, %117
  %119 = icmp ult i32 %110, %117
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %120, i8* %121, align 1
  %122 = and i32 %118, 255
  %123 = call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %126, i8* %127, align 1
  %128 = xor i32 %117, %110
  %129 = xor i32 %128, %118
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %132, i8* %133, align 1
  %134 = icmp eq i32 %118, 0
  %135 = zext i1 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %135, i8* %136, align 1
  %137 = lshr i32 %118, 31
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %138, i8* %139, align 1
  %140 = lshr i32 %110, 31
  %141 = lshr i32 %117, 31
  %142 = xor i32 %141, %140
  %143 = xor i32 %137, %140
  %144 = add i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %146, i8* %147, align 1
  store %struct.Memory* %loadMem_45df51, %struct.Memory** %MEMORY
  %loadMem_45df57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i647
  %152 = add i64 %151, 34
  %153 = load i64, i64* %PC.i647
  %154 = add i64 %153, 6
  %155 = load i64, i64* %PC.i647
  %156 = add i64 %155, 6
  store i64 %156, i64* %PC.i647
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %158 = load i8, i8* %157, align 1
  %159 = icmp ne i8 %158, 0
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %164 = load i8, i8* %163, align 1
  %165 = icmp ne i8 %164, 0
  %166 = xor i1 %162, %165
  %167 = or i1 %159, %166
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %BRANCH_TAKEN, align 1
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %170 = select i1 %167, i64 %152, i64 %154
  store i64 %170, i64* %169, align 8
  store %struct.Memory* %loadMem_45df57, %struct.Memory** %MEMORY
  %loadBr_45df57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45df57 = icmp eq i8 %loadBr_45df57, 1
  br i1 %cmpBr_45df57, label %block_.L_45df79, label %block_45df5d

block_45df5d:                                     ; preds = %entry
  %loadMem_45df5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %PC.i706
  %178 = add i64 %177, 8
  store i64 %178, i64* %PC.i706
  %179 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %179, i64* %RAX.i707, align 8
  store %struct.Memory* %loadMem_45df5d, %struct.Memory** %MEMORY
  %loadMem_45df65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RAX.i718
  %190 = add i64 %189, 72684
  %191 = load i64, i64* %PC.i717
  %192 = add i64 %191, 6
  store i64 %192, i64* %PC.i717
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RCX.i719, align 8
  store %struct.Memory* %loadMem_45df65, %struct.Memory** %MEMORY
  %loadMem_45df6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %201 to i64*
  %202 = load i64, i64* %RCX.i774
  %203 = load i64, i64* %PC.i773
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC.i773
  %205 = trunc i64 %202 to i32
  %206 = add i32 1, %205
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RCX.i774, align 8
  %208 = icmp ult i32 %206, %205
  %209 = icmp ult i32 %206, 1
  %210 = or i1 %208, %209
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %211, i8* %212, align 1
  %213 = and i32 %206, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %217, i8* %218, align 1
  %219 = xor i64 1, %202
  %220 = trunc i64 %219 to i32
  %221 = xor i32 %220, %206
  %222 = lshr i32 %221, 4
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %224, i8* %225, align 1
  %226 = icmp eq i32 %206, 0
  %227 = zext i1 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %227, i8* %228, align 1
  %229 = lshr i32 %206, 31
  %230 = trunc i32 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %230, i8* %231, align 1
  %232 = lshr i32 %205, 31
  %233 = xor i32 %229, %232
  %234 = add i32 %233, %229
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %236, i8* %237, align 1
  store %struct.Memory* %loadMem_45df6b, %struct.Memory** %MEMORY
  %loadMem_45df6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RCX.i796
  %245 = load i64, i64* %PC.i795
  %246 = add i64 %245, 2
  store i64 %246, i64* %PC.i795
  %247 = trunc i64 %244 to i32
  %248 = shl i32 %247, 1
  %249 = icmp slt i32 %247, 0
  %250 = icmp slt i32 %248, 0
  %251 = xor i1 %249, %250
  %252 = zext i32 %248 to i64
  store i64 %252, i64* %RCX.i796, align 8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %254 = zext i1 %249 to i8
  store i8 %254, i8* %253, align 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %256 = and i32 %248, 254
  %257 = call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %255, align 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %261, align 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %263 = icmp eq i32 %248, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %262, align 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %266 = lshr i32 %248, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %265, align 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %269 = zext i1 %251 to i8
  store i8 %269, i8* %268, align 1
  store %struct.Memory* %loadMem_45df6e, %struct.Memory** %MEMORY
  %loadMem_45df71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %ECX.i807 = bitcast %union.anon* %275 to i32*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 15
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %278 to i64*
  %279 = load i64, i64* %RBP.i808
  %280 = sub i64 %279, 60
  %281 = load i32, i32* %ECX.i807
  %282 = zext i32 %281 to i64
  %283 = load i64, i64* %PC.i806
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC.i806
  %285 = inttoptr i64 %280 to i32*
  store i32 %281, i32* %285
  store %struct.Memory* %loadMem_45df71, %struct.Memory** %MEMORY
  %loadMem_45df74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %PC.i930
  %290 = add i64 %289, 28
  %291 = load i64, i64* %PC.i930
  %292 = add i64 %291, 5
  store i64 %292, i64* %PC.i930
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %290, i64* %293, align 8
  store %struct.Memory* %loadMem_45df74, %struct.Memory** %MEMORY
  br label %block_.L_45df90

block_.L_45df79:                                  ; preds = %entry
  %loadMem_45df79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RAX.i929 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %PC.i928
  %301 = add i64 %300, 8
  store i64 %301, i64* %PC.i928
  %302 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %302, i64* %RAX.i929, align 8
  store %struct.Memory* %loadMem_45df79, %struct.Memory** %MEMORY
  %loadMem_45df81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RAX.i926 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RCX.i927 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RAX.i926
  %313 = add i64 %312, 72688
  %314 = load i64, i64* %PC.i925
  %315 = add i64 %314, 6
  store i64 %315, i64* %PC.i925
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX.i927, align 8
  store %struct.Memory* %loadMem_45df81, %struct.Memory** %MEMORY
  %loadMem_45df87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RCX.i924 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %RCX.i924
  %326 = load i64, i64* %PC.i923
  %327 = add i64 %326, 3
  store i64 %327, i64* %PC.i923
  %328 = trunc i64 %325 to i32
  %329 = add i32 1, %328
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RCX.i924, align 8
  %331 = icmp ult i32 %329, %328
  %332 = icmp ult i32 %329, 1
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %334, i8* %335, align 1
  %336 = and i32 %329, 255
  %337 = call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %340, i8* %341, align 1
  %342 = xor i64 1, %325
  %343 = trunc i64 %342 to i32
  %344 = xor i32 %343, %329
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %347, i8* %348, align 1
  %349 = icmp eq i32 %329, 0
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %350, i8* %351, align 1
  %352 = lshr i32 %329, 31
  %353 = trunc i32 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %353, i8* %354, align 1
  %355 = lshr i32 %328, 31
  %356 = xor i32 %352, %355
  %357 = add i32 %356, %352
  %358 = icmp eq i32 %357, 2
  %359 = zext i1 %358 to i8
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %359, i8* %360, align 1
  store %struct.Memory* %loadMem_45df87, %struct.Memory** %MEMORY
  %loadMem_45df8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 5
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RCX.i922 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RCX.i922
  %368 = load i64, i64* %PC.i921
  %369 = add i64 %368, 2
  store i64 %369, i64* %PC.i921
  %370 = trunc i64 %367 to i32
  %371 = shl i32 %370, 1
  %372 = icmp slt i32 %370, 0
  %373 = icmp slt i32 %371, 0
  %374 = xor i1 %372, %373
  %375 = zext i32 %371 to i64
  store i64 %375, i64* %RCX.i922, align 8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %377 = zext i1 %372 to i8
  store i8 %377, i8* %376, align 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %379 = and i32 %371, 254
  %380 = call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %378, align 1
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %384, align 1
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %386 = icmp eq i32 %371, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %385, align 1
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %389 = lshr i32 %371, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %388, align 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %392 = zext i1 %374 to i8
  store i8 %392, i8* %391, align 1
  store %struct.Memory* %loadMem_45df8a, %struct.Memory** %MEMORY
  %loadMem_45df8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 33
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %ECX.i919 = bitcast %union.anon* %398 to i32*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 15
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RBP.i920 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RBP.i920
  %403 = sub i64 %402, 60
  %404 = load i32, i32* %ECX.i919
  %405 = zext i32 %404 to i64
  %406 = load i64, i64* %PC.i918
  %407 = add i64 %406, 3
  store i64 %407, i64* %PC.i918
  %408 = inttoptr i64 %403 to i32*
  store i32 %404, i32* %408
  store %struct.Memory* %loadMem_45df8d, %struct.Memory** %MEMORY
  br label %block_.L_45df90

block_.L_45df90:                                  ; preds = %block_.L_45df79, %block_45df5d
  %loadMem_45df90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RAX.i916 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i917 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i917
  %419 = sub i64 %418, 60
  %420 = load i64, i64* %PC.i915
  %421 = add i64 %420, 3
  store i64 %421, i64* %PC.i915
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX.i916, align 8
  store %struct.Memory* %loadMem_45df90, %struct.Memory** %MEMORY
  %loadMem_45df93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 5
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RCX.i914 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %PC.i913
  %432 = add i64 %431, 5
  store i64 %432, i64* %PC.i913
  store i64 9, i64* %RCX.i914, align 8
  store %struct.Memory* %loadMem_45df93, %struct.Memory** %MEMORY
  %loadMem_45df98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %EAX.i911 = bitcast %union.anon* %438 to i32*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 15
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RBP.i912
  %443 = sub i64 %442, 28
  %444 = load i32, i32* %EAX.i911
  %445 = zext i32 %444 to i64
  %446 = load i64, i64* %PC.i910
  %447 = add i64 %446, 3
  store i64 %447, i64* %PC.i910
  %448 = inttoptr i64 %443 to i32*
  store i32 %444, i32* %448
  store %struct.Memory* %loadMem_45df98, %struct.Memory** %MEMORY
  %loadMem_45df9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 7
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RDX.i909 = bitcast %union.anon* %454 to i64*
  %455 = load i64, i64* %PC.i908
  %456 = add i64 %455, 8
  store i64 %456, i64* %PC.i908
  %457 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %457, i64* %RDX.i909, align 8
  store %struct.Memory* %loadMem_45df9b, %struct.Memory** %MEMORY
  %loadMem_45dfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 7
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RDX.i907 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %RDX.i907
  %468 = add i64 %467, 32
  %469 = load i64, i64* %PC.i905
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC.i905
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i906, align 8
  store %struct.Memory* %loadMem_45dfa3, %struct.Memory** %MEMORY
  %loadMem_45dfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %EAX.i903 = bitcast %union.anon* %479 to i32*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 15
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %RBP.i904
  %484 = sub i64 %483, 32
  %485 = load i32, i32* %EAX.i903
  %486 = zext i32 %485 to i64
  %487 = load i64, i64* %PC.i902
  %488 = add i64 %487, 3
  store i64 %488, i64* %PC.i902
  %489 = inttoptr i64 %484 to i32*
  store i32 %485, i32* %489
  store %struct.Memory* %loadMem_45dfa6, %struct.Memory** %MEMORY
  %loadMem_45dfa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 7
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RDX.i901 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %PC.i900
  %497 = add i64 %496, 8
  store i64 %497, i64* %PC.i900
  %498 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %498, i64* %RDX.i901, align 8
  store %struct.Memory* %loadMem_45dfa9, %struct.Memory** %MEMORY
  %loadMem_45dfb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RAX.i898 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 7
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RDX.i899 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RDX.i899
  %509 = add i64 %508, 36
  %510 = load i64, i64* %PC.i897
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i897
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RAX.i898, align 8
  store %struct.Memory* %loadMem_45dfb1, %struct.Memory** %MEMORY
  %loadMem_45dfb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %EAX.i895 = bitcast %union.anon* %520 to i32*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 15
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RBP.i896
  %525 = sub i64 %524, 36
  %526 = load i32, i32* %EAX.i895
  %527 = zext i32 %526 to i64
  %528 = load i64, i64* %PC.i894
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC.i894
  %530 = inttoptr i64 %525 to i32*
  store i32 %526, i32* %530
  store %struct.Memory* %loadMem_45dfb4, %struct.Memory** %MEMORY
  %loadMem_45dfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %RAX.i892 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 15
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %539 to i64*
  %540 = load i64, i64* %RBP.i893
  %541 = sub i64 %540, 32
  %542 = load i64, i64* %PC.i891
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC.i891
  %544 = inttoptr i64 %541 to i32*
  %545 = load i32, i32* %544
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX.i892, align 8
  store %struct.Memory* %loadMem_45dfb7, %struct.Memory** %MEMORY
  %loadMem_45dfba = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %RAX.i890
  %554 = load i64, i64* %PC.i889
  %555 = add i64 %554, 2
  store i64 %555, i64* %PC.i889
  %556 = trunc i64 %553 to i32
  %557 = shl i32 %556, 1
  %558 = icmp slt i32 %556, 0
  %559 = icmp slt i32 %557, 0
  %560 = xor i1 %558, %559
  %561 = zext i32 %557 to i64
  store i64 %561, i64* %RAX.i890, align 8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %563 = zext i1 %558 to i8
  store i8 %563, i8* %562, align 1
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %565 = and i32 %557, 254
  %566 = call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %564, align 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %570, align 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %572 = icmp eq i32 %557, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %571, align 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %575 = lshr i32 %557, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %574, align 1
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %578 = zext i1 %560 to i8
  store i8 %578, i8* %577, align 1
  store %struct.Memory* %loadMem_45dfba, %struct.Memory** %MEMORY
  %loadMem_45dfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 33
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 1
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %RAX.i888 = bitcast %union.anon* %584 to i64*
  %585 = load i64, i64* %RAX.i888
  %586 = load i64, i64* %PC.i887
  %587 = add i64 %586, 3
  store i64 %587, i64* %PC.i887
  %588 = trunc i64 %585 to i32
  %589 = add i32 1, %588
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RAX.i888, align 8
  %591 = icmp ult i32 %589, %588
  %592 = icmp ult i32 %589, 1
  %593 = or i1 %591, %592
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %594, i8* %595, align 1
  %596 = and i32 %589, 255
  %597 = call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %600, i8* %601, align 1
  %602 = xor i64 1, %585
  %603 = trunc i64 %602 to i32
  %604 = xor i32 %603, %589
  %605 = lshr i32 %604, 4
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %607, i8* %608, align 1
  %609 = icmp eq i32 %589, 0
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %610, i8* %611, align 1
  %612 = lshr i32 %589, 31
  %613 = trunc i32 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %613, i8* %614, align 1
  %615 = lshr i32 %588, 31
  %616 = xor i32 %612, %615
  %617 = add i32 %616, %612
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %619, i8* %620, align 1
  store %struct.Memory* %loadMem_45dfbd, %struct.Memory** %MEMORY
  %loadMem_45dfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 9
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RSI.i885 = bitcast %union.anon* %626 to i64*
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 15
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %RBP.i886 = bitcast %union.anon* %629 to i64*
  %630 = load i64, i64* %RBP.i886
  %631 = sub i64 %630, 32
  %632 = load i64, i64* %PC.i884
  %633 = add i64 %632, 3
  store i64 %633, i64* %PC.i884
  %634 = inttoptr i64 %631 to i32*
  %635 = load i32, i32* %634
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RSI.i885, align 8
  store %struct.Memory* %loadMem_45dfc0, %struct.Memory** %MEMORY
  %loadMem_45dfc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 9
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RSI.i883 = bitcast %union.anon* %642 to i64*
  %643 = load i64, i64* %RSI.i883
  %644 = load i64, i64* %PC.i882
  %645 = add i64 %644, 2
  store i64 %645, i64* %PC.i882
  %646 = trunc i64 %643 to i32
  %647 = shl i32 %646, 1
  %648 = icmp slt i32 %646, 0
  %649 = icmp slt i32 %647, 0
  %650 = xor i1 %648, %649
  %651 = zext i32 %647 to i64
  store i64 %651, i64* %RSI.i883, align 8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %653 = zext i1 %648 to i8
  store i8 %653, i8* %652, align 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %655 = and i32 %647, 254
  %656 = call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %654, align 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %660, align 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %662 = icmp eq i32 %647, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %661, align 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %665 = lshr i32 %647, 31
  %666 = trunc i32 %665 to i8
  store i8 %666, i8* %664, align 1
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %668 = zext i1 %650 to i8
  store i8 %668, i8* %667, align 1
  store %struct.Memory* %loadMem_45dfc3, %struct.Memory** %MEMORY
  %loadMem_45dfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 9
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RSI.i881 = bitcast %union.anon* %674 to i64*
  %675 = load i64, i64* %RSI.i881
  %676 = load i64, i64* %PC.i880
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC.i880
  %678 = trunc i64 %675 to i32
  %679 = add i32 1, %678
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RSI.i881, align 8
  %681 = icmp ult i32 %679, %678
  %682 = icmp ult i32 %679, 1
  %683 = or i1 %681, %682
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %684, i8* %685, align 1
  %686 = and i32 %679, 255
  %687 = call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %690, i8* %691, align 1
  %692 = xor i64 1, %675
  %693 = trunc i64 %692 to i32
  %694 = xor i32 %693, %679
  %695 = lshr i32 %694, 4
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %697, i8* %698, align 1
  %699 = icmp eq i32 %679, 0
  %700 = zext i1 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %700, i8* %701, align 1
  %702 = lshr i32 %679, 31
  %703 = trunc i32 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %703, i8* %704, align 1
  %705 = lshr i32 %678, 31
  %706 = xor i32 %702, %705
  %707 = add i32 %706, %702
  %708 = icmp eq i32 %707, 2
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %709, i8* %710, align 1
  store %struct.Memory* %loadMem_45dfc6, %struct.Memory** %MEMORY
  %loadMem_45dfc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 9
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %ESI.i878 = bitcast %union.anon* %716 to i32*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RAX.i879 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RAX.i879
  %721 = load i32, i32* %ESI.i878
  %722 = zext i32 %721 to i64
  %723 = load i64, i64* %PC.i877
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC.i877
  %725 = shl i64 %720, 32
  %726 = ashr exact i64 %725, 32
  %727 = shl i64 %722, 32
  %728 = ashr exact i64 %727, 32
  %729 = mul i64 %728, %726
  %730 = trunc i64 %729 to i32
  %731 = and i64 %729, 4294967295
  store i64 %731, i64* %RAX.i879, align 8
  %732 = shl i64 %729, 32
  %733 = ashr exact i64 %732, 32
  %734 = icmp ne i64 %733, %729
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %735, i8* %736, align 1
  %737 = and i32 %730, 255
  %738 = call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %741, i8* %742, align 1
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %743, align 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %744, align 1
  %745 = lshr i32 %730, 31
  %746 = trunc i32 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %746, i8* %747, align 1
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %735, i8* %748, align 1
  store %struct.Memory* %loadMem_45dfc9, %struct.Memory** %MEMORY
  %loadMem_45dfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 1
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %EAX.i875 = bitcast %union.anon* %754 to i32*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 5
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %ECX.i876 = bitcast %union.anon* %757 to i32*
  %758 = load i32, i32* %ECX.i876
  %759 = zext i32 %758 to i64
  %760 = load i32, i32* %EAX.i875
  %761 = zext i32 %760 to i64
  %762 = load i64, i64* %PC.i874
  %763 = add i64 %762, 2
  store i64 %763, i64* %PC.i874
  %764 = sub i32 %758, %760
  %765 = icmp ult i32 %758, %760
  %766 = zext i1 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %766, i8* %767, align 1
  %768 = and i32 %764, 255
  %769 = call i32 @llvm.ctpop.i32(i32 %768)
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %772, i8* %773, align 1
  %774 = xor i64 %761, %759
  %775 = trunc i64 %774 to i32
  %776 = xor i32 %775, %764
  %777 = lshr i32 %776, 4
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %779, i8* %780, align 1
  %781 = icmp eq i32 %764, 0
  %782 = zext i1 %781 to i8
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %782, i8* %783, align 1
  %784 = lshr i32 %764, 31
  %785 = trunc i32 %784 to i8
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %785, i8* %786, align 1
  %787 = lshr i32 %758, 31
  %788 = lshr i32 %760, 31
  %789 = xor i32 %788, %787
  %790 = xor i32 %784, %787
  %791 = add i32 %790, %789
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %793, i8* %794, align 1
  store %struct.Memory* %loadMem_45dfcc, %struct.Memory** %MEMORY
  %loadMem_45dfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %797 to i64*
  %798 = load i64, i64* %PC.i873
  %799 = add i64 %798, 19
  %800 = load i64, i64* %PC.i873
  %801 = add i64 %800, 6
  %802 = load i64, i64* %PC.i873
  %803 = add i64 %802, 6
  store i64 %803, i64* %PC.i873
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %805 = load i8, i8* %804, align 1
  %806 = icmp ne i8 %805, 0
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %808 = load i8, i8* %807, align 1
  %809 = icmp ne i8 %808, 0
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %811 = load i8, i8* %810, align 1
  %812 = icmp ne i8 %811, 0
  %813 = xor i1 %809, %812
  %814 = or i1 %806, %813
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %BRANCH_TAKEN, align 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %817 = select i1 %814, i64 %799, i64 %801
  store i64 %817, i64* %816, align 8
  store %struct.Memory* %loadMem_45dfce, %struct.Memory** %MEMORY
  %loadBr_45dfce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45dfce = icmp eq i8 %loadBr_45dfce, 1
  br i1 %cmpBr_45dfce, label %block_.L_45dfe1, label %block_45dfd4

block_45dfd4:                                     ; preds = %block_.L_45df90
  %loadMem_45dfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %PC.i871
  %825 = add i64 %824, 5
  store i64 %825, i64* %PC.i871
  store i64 9, i64* %RAX.i872, align 8
  store %struct.Memory* %loadMem_45dfd4, %struct.Memory** %MEMORY
  %loadMem_45dfd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %EAX.i869 = bitcast %union.anon* %831 to i32*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i870
  %836 = sub i64 %835, 64
  %837 = load i32, i32* %EAX.i869
  %838 = zext i32 %837 to i64
  %839 = load i64, i64* %PC.i868
  %840 = add i64 %839, 3
  store i64 %840, i64* %PC.i868
  %841 = inttoptr i64 %836 to i32*
  store i32 %837, i32* %841
  store %struct.Memory* %loadMem_45dfd9, %struct.Memory** %MEMORY
  %loadMem_45dfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %PC.i867
  %846 = add i64 %845, 29
  %847 = load i64, i64* %PC.i867
  %848 = add i64 %847, 5
  store i64 %848, i64* %PC.i867
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %846, i64* %849, align 8
  store %struct.Memory* %loadMem_45dfdc, %struct.Memory** %MEMORY
  br label %block_.L_45dff9

block_.L_45dfe1:                                  ; preds = %block_.L_45df90
  %loadMem_45dfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 1
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 15
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RBP.i866 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %RBP.i866
  %860 = sub i64 %859, 32
  %861 = load i64, i64* %PC.i864
  %862 = add i64 %861, 3
  store i64 %862, i64* %PC.i864
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX.i865, align 8
  store %struct.Memory* %loadMem_45dfe1, %struct.Memory** %MEMORY
  %loadMem_45dfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 1
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RAX.i863 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %RAX.i863
  %873 = load i64, i64* %PC.i862
  %874 = add i64 %873, 2
  store i64 %874, i64* %PC.i862
  %875 = trunc i64 %872 to i32
  %876 = shl i32 %875, 1
  %877 = icmp slt i32 %875, 0
  %878 = icmp slt i32 %876, 0
  %879 = xor i1 %877, %878
  %880 = zext i32 %876 to i64
  store i64 %880, i64* %RAX.i863, align 8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %882 = zext i1 %877 to i8
  store i8 %882, i8* %881, align 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %884 = and i32 %876, 254
  %885 = call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %883, align 1
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %889, align 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %891 = icmp eq i32 %876, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %890, align 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %894 = lshr i32 %876, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %893, align 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %897 = zext i1 %879 to i8
  store i8 %897, i8* %896, align 1
  store %struct.Memory* %loadMem_45dfe4, %struct.Memory** %MEMORY
  %loadMem_45dfe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RAX.i861 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %RAX.i861
  %905 = load i64, i64* %PC.i860
  %906 = add i64 %905, 3
  store i64 %906, i64* %PC.i860
  %907 = trunc i64 %904 to i32
  %908 = add i32 1, %907
  %909 = zext i32 %908 to i64
  store i64 %909, i64* %RAX.i861, align 8
  %910 = icmp ult i32 %908, %907
  %911 = icmp ult i32 %908, 1
  %912 = or i1 %910, %911
  %913 = zext i1 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %913, i8* %914, align 1
  %915 = and i32 %908, 255
  %916 = call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %919, i8* %920, align 1
  %921 = xor i64 1, %904
  %922 = trunc i64 %921 to i32
  %923 = xor i32 %922, %908
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %926, i8* %927, align 1
  %928 = icmp eq i32 %908, 0
  %929 = zext i1 %928 to i8
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %929, i8* %930, align 1
  %931 = lshr i32 %908, 31
  %932 = trunc i32 %931 to i8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %932, i8* %933, align 1
  %934 = lshr i32 %907, 31
  %935 = xor i32 %931, %934
  %936 = add i32 %935, %931
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %938, i8* %939, align 1
  store %struct.Memory* %loadMem_45dfe7, %struct.Memory** %MEMORY
  %loadMem_45dfea = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 5
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RCX.i858 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 15
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RBP.i859 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %RBP.i859
  %950 = sub i64 %949, 32
  %951 = load i64, i64* %PC.i857
  %952 = add i64 %951, 3
  store i64 %952, i64* %PC.i857
  %953 = inttoptr i64 %950 to i32*
  %954 = load i32, i32* %953
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RCX.i858, align 8
  store %struct.Memory* %loadMem_45dfea, %struct.Memory** %MEMORY
  %loadMem_45dfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 33
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 5
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %RCX.i856 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %RCX.i856
  %963 = load i64, i64* %PC.i855
  %964 = add i64 %963, 2
  store i64 %964, i64* %PC.i855
  %965 = trunc i64 %962 to i32
  %966 = shl i32 %965, 1
  %967 = icmp slt i32 %965, 0
  %968 = icmp slt i32 %966, 0
  %969 = xor i1 %967, %968
  %970 = zext i32 %966 to i64
  store i64 %970, i64* %RCX.i856, align 8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %972 = zext i1 %967 to i8
  store i8 %972, i8* %971, align 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %974 = and i32 %966, 254
  %975 = call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  store i8 %978, i8* %973, align 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %979, align 1
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %981 = icmp eq i32 %966, 0
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %980, align 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %984 = lshr i32 %966, 31
  %985 = trunc i32 %984 to i8
  store i8 %985, i8* %983, align 1
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %987 = zext i1 %969 to i8
  store i8 %987, i8* %986, align 1
  store %struct.Memory* %loadMem_45dfed, %struct.Memory** %MEMORY
  %loadMem_45dff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 5
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %993 to i64*
  %994 = load i64, i64* %RCX.i854
  %995 = load i64, i64* %PC.i853
  %996 = add i64 %995, 3
  store i64 %996, i64* %PC.i853
  %997 = trunc i64 %994 to i32
  %998 = add i32 1, %997
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RCX.i854, align 8
  %1000 = icmp ult i32 %998, %997
  %1001 = icmp ult i32 %998, 1
  %1002 = or i1 %1000, %1001
  %1003 = zext i1 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1003, i8* %1004, align 1
  %1005 = and i32 %998, 255
  %1006 = call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1009, i8* %1010, align 1
  %1011 = xor i64 1, %994
  %1012 = trunc i64 %1011 to i32
  %1013 = xor i32 %1012, %998
  %1014 = lshr i32 %1013, 4
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1016, i8* %1017, align 1
  %1018 = icmp eq i32 %998, 0
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1019, i8* %1020, align 1
  %1021 = lshr i32 %998, 31
  %1022 = trunc i32 %1021 to i8
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1022, i8* %1023, align 1
  %1024 = lshr i32 %997, 31
  %1025 = xor i32 %1021, %1024
  %1026 = add i32 %1025, %1021
  %1027 = icmp eq i32 %1026, 2
  %1028 = zext i1 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1028, i8* %1029, align 1
  store %struct.Memory* %loadMem_45dff0, %struct.Memory** %MEMORY
  %loadMem_45dff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 5
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %ECX.i851 = bitcast %union.anon* %1035 to i32*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 1
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %RAX.i852
  %1040 = load i32, i32* %ECX.i851
  %1041 = zext i32 %1040 to i64
  %1042 = load i64, i64* %PC.i850
  %1043 = add i64 %1042, 3
  store i64 %1043, i64* %PC.i850
  %1044 = shl i64 %1039, 32
  %1045 = ashr exact i64 %1044, 32
  %1046 = shl i64 %1041, 32
  %1047 = ashr exact i64 %1046, 32
  %1048 = mul i64 %1047, %1045
  %1049 = trunc i64 %1048 to i32
  %1050 = and i64 %1048, 4294967295
  store i64 %1050, i64* %RAX.i852, align 8
  %1051 = shl i64 %1048, 32
  %1052 = ashr exact i64 %1051, 32
  %1053 = icmp ne i64 %1052, %1048
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1054, i8* %1055, align 1
  %1056 = and i32 %1049, 255
  %1057 = call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1060, i8* %1061, align 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1062, align 1
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1063, align 1
  %1064 = lshr i32 %1049, 31
  %1065 = trunc i32 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1065, i8* %1066, align 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1054, i8* %1067, align 1
  store %struct.Memory* %loadMem_45dff3, %struct.Memory** %MEMORY
  %loadMem_45dff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 1
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %EAX.i848 = bitcast %union.anon* %1073 to i32*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 15
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RBP.i849
  %1078 = sub i64 %1077, 64
  %1079 = load i32, i32* %EAX.i848
  %1080 = zext i32 %1079 to i64
  %1081 = load i64, i64* %PC.i847
  %1082 = add i64 %1081, 3
  store i64 %1082, i64* %PC.i847
  %1083 = inttoptr i64 %1078 to i32*
  store i32 %1079, i32* %1083
  store %struct.Memory* %loadMem_45dff6, %struct.Memory** %MEMORY
  br label %block_.L_45dff9

block_.L_45dff9:                                  ; preds = %block_.L_45dfe1, %block_45dfd4
  %loadMem_45dff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RAX.i845 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 15
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RBP.i846
  %1094 = sub i64 %1093, 64
  %1095 = load i64, i64* %PC.i844
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %PC.i844
  %1097 = inttoptr i64 %1094 to i32*
  %1098 = load i32, i32* %1097
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RAX.i845, align 8
  store %struct.Memory* %loadMem_45dff9, %struct.Memory** %MEMORY
  %loadMem_45dffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 5
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RCX.i843 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %PC.i842
  %1107 = add i64 %1106, 5
  store i64 %1107, i64* %PC.i842
  store i64 16, i64* %RCX.i843, align 8
  store %struct.Memory* %loadMem_45dffc, %struct.Memory** %MEMORY
  %loadMem_45e001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 1
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %EAX.i840 = bitcast %union.anon* %1113 to i32*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 15
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %1116 to i64*
  %1117 = load i64, i64* %RBP.i841
  %1118 = sub i64 %1117, 40
  %1119 = load i32, i32* %EAX.i840
  %1120 = zext i32 %1119 to i64
  %1121 = load i64, i64* %PC.i839
  %1122 = add i64 %1121, 3
  store i64 %1122, i64* %PC.i839
  %1123 = inttoptr i64 %1118 to i32*
  store i32 %1119, i32* %1123
  store %struct.Memory* %loadMem_45e001, %struct.Memory** %MEMORY
  %loadMem_45e004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 1
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RAX.i837 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 15
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RBP.i838
  %1134 = sub i64 %1133, 36
  %1135 = load i64, i64* %PC.i836
  %1136 = add i64 %1135, 3
  store i64 %1136, i64* %PC.i836
  %1137 = inttoptr i64 %1134 to i32*
  %1138 = load i32, i32* %1137
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i837, align 8
  store %struct.Memory* %loadMem_45e004, %struct.Memory** %MEMORY
  %loadMem_45e007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 33
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 1
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RAX.i835 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RAX.i835
  %1147 = load i64, i64* %PC.i834
  %1148 = add i64 %1147, 3
  store i64 %1148, i64* %PC.i834
  %1149 = trunc i64 %1146 to i32
  %1150 = add i32 1, %1149
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RAX.i835, align 8
  %1152 = icmp ult i32 %1150, %1149
  %1153 = icmp ult i32 %1150, 1
  %1154 = or i1 %1152, %1153
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1155, i8* %1156, align 1
  %1157 = and i32 %1150, 255
  %1158 = call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1161, i8* %1162, align 1
  %1163 = xor i64 1, %1146
  %1164 = trunc i64 %1163 to i32
  %1165 = xor i32 %1164, %1150
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1168, i8* %1169, align 1
  %1170 = icmp eq i32 %1150, 0
  %1171 = zext i1 %1170 to i8
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1171, i8* %1172, align 1
  %1173 = lshr i32 %1150, 31
  %1174 = trunc i32 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1174, i8* %1175, align 1
  %1176 = lshr i32 %1149, 31
  %1177 = xor i32 %1173, %1176
  %1178 = add i32 %1177, %1173
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1180, i8* %1181, align 1
  store %struct.Memory* %loadMem_45e007, %struct.Memory** %MEMORY
  %loadMem_45e00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i831 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 1
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %EAX.i832 = bitcast %union.anon* %1187 to i32*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %ECX.i833 = bitcast %union.anon* %1190 to i32*
  %1191 = load i32, i32* %ECX.i833
  %1192 = zext i32 %1191 to i64
  %1193 = load i32, i32* %EAX.i832
  %1194 = zext i32 %1193 to i64
  %1195 = load i64, i64* %PC.i831
  %1196 = add i64 %1195, 2
  store i64 %1196, i64* %PC.i831
  %1197 = sub i32 %1191, %1193
  %1198 = icmp ult i32 %1191, %1193
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1199, i8* %1200, align 1
  %1201 = and i32 %1197, 255
  %1202 = call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1205, i8* %1206, align 1
  %1207 = xor i64 %1194, %1192
  %1208 = trunc i64 %1207 to i32
  %1209 = xor i32 %1208, %1197
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1212, i8* %1213, align 1
  %1214 = icmp eq i32 %1197, 0
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1215, i8* %1216, align 1
  %1217 = lshr i32 %1197, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1218, i8* %1219, align 1
  %1220 = lshr i32 %1191, 31
  %1221 = lshr i32 %1193, 31
  %1222 = xor i32 %1221, %1220
  %1223 = xor i32 %1217, %1220
  %1224 = add i32 %1223, %1222
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1226, i8* %1227, align 1
  store %struct.Memory* %loadMem_45e00a, %struct.Memory** %MEMORY
  %loadMem_45e00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 33
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1230 to i64*
  %1231 = load i64, i64* %PC.i830
  %1232 = add i64 %1231, 19
  %1233 = load i64, i64* %PC.i830
  %1234 = add i64 %1233, 6
  %1235 = load i64, i64* %PC.i830
  %1236 = add i64 %1235, 6
  store i64 %1236, i64* %PC.i830
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1238 = load i8, i8* %1237, align 1
  %1239 = icmp ne i8 %1238, 0
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1241 = load i8, i8* %1240, align 1
  %1242 = icmp ne i8 %1241, 0
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1244 = load i8, i8* %1243, align 1
  %1245 = icmp ne i8 %1244, 0
  %1246 = xor i1 %1242, %1245
  %1247 = or i1 %1239, %1246
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %BRANCH_TAKEN, align 1
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1250 = select i1 %1247, i64 %1232, i64 %1234
  store i64 %1250, i64* %1249, align 8
  store %struct.Memory* %loadMem_45e00c, %struct.Memory** %MEMORY
  %loadBr_45e00c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e00c = icmp eq i8 %loadBr_45e00c, 1
  br i1 %cmpBr_45e00c, label %block_.L_45e01f, label %block_45e012

block_45e012:                                     ; preds = %block_.L_45dff9
  %loadMem_45e012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 1
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RAX.i829 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %PC.i828
  %1258 = add i64 %1257, 5
  store i64 %1258, i64* %PC.i828
  store i64 16, i64* %RAX.i829, align 8
  store %struct.Memory* %loadMem_45e012, %struct.Memory** %MEMORY
  %loadMem_45e017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %EAX.i826 = bitcast %union.anon* %1264 to i32*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 15
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %RBP.i827
  %1269 = sub i64 %1268, 68
  %1270 = load i32, i32* %EAX.i826
  %1271 = zext i32 %1270 to i64
  %1272 = load i64, i64* %PC.i825
  %1273 = add i64 %1272, 3
  store i64 %1273, i64* %PC.i825
  %1274 = inttoptr i64 %1269 to i32*
  store i32 %1270, i32* %1274
  store %struct.Memory* %loadMem_45e017, %struct.Memory** %MEMORY
  %loadMem_45e01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %PC.i824
  %1279 = add i64 %1278, 14
  %1280 = load i64, i64* %PC.i824
  %1281 = add i64 %1280, 5
  store i64 %1281, i64* %PC.i824
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1279, i64* %1282, align 8
  store %struct.Memory* %loadMem_45e01a, %struct.Memory** %MEMORY
  br label %block_.L_45e028

block_.L_45e01f:                                  ; preds = %block_.L_45dff9
  %loadMem_45e01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 1
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RAX.i822 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 15
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %RBP.i823
  %1293 = sub i64 %1292, 36
  %1294 = load i64, i64* %PC.i821
  %1295 = add i64 %1294, 3
  store i64 %1295, i64* %PC.i821
  %1296 = inttoptr i64 %1293 to i32*
  %1297 = load i32, i32* %1296
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RAX.i822, align 8
  store %struct.Memory* %loadMem_45e01f, %struct.Memory** %MEMORY
  %loadMem_45e022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 1
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RAX.i820
  %1306 = load i64, i64* %PC.i819
  %1307 = add i64 %1306, 3
  store i64 %1307, i64* %PC.i819
  %1308 = trunc i64 %1305 to i32
  %1309 = add i32 1, %1308
  %1310 = zext i32 %1309 to i64
  store i64 %1310, i64* %RAX.i820, align 8
  %1311 = icmp ult i32 %1309, %1308
  %1312 = icmp ult i32 %1309, 1
  %1313 = or i1 %1311, %1312
  %1314 = zext i1 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1314, i8* %1315, align 1
  %1316 = and i32 %1309, 255
  %1317 = call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1320, i8* %1321, align 1
  %1322 = xor i64 1, %1305
  %1323 = trunc i64 %1322 to i32
  %1324 = xor i32 %1323, %1309
  %1325 = lshr i32 %1324, 4
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1327, i8* %1328, align 1
  %1329 = icmp eq i32 %1309, 0
  %1330 = zext i1 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1330, i8* %1331, align 1
  %1332 = lshr i32 %1309, 31
  %1333 = trunc i32 %1332 to i8
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1333, i8* %1334, align 1
  %1335 = lshr i32 %1308, 31
  %1336 = xor i32 %1332, %1335
  %1337 = add i32 %1336, %1332
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1339, i8* %1340, align 1
  store %struct.Memory* %loadMem_45e022, %struct.Memory** %MEMORY
  %loadMem_45e025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 1
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %EAX.i817 = bitcast %union.anon* %1346 to i32*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 15
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1349 to i64*
  %1350 = load i64, i64* %RBP.i818
  %1351 = sub i64 %1350, 68
  %1352 = load i32, i32* %EAX.i817
  %1353 = zext i32 %1352 to i64
  %1354 = load i64, i64* %PC.i816
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %PC.i816
  %1356 = inttoptr i64 %1351 to i32*
  store i32 %1352, i32* %1356
  store %struct.Memory* %loadMem_45e025, %struct.Memory** %MEMORY
  br label %block_.L_45e028

block_.L_45e028:                                  ; preds = %block_.L_45e01f, %block_45e012
  %loadMem_45e028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 15
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %RBP.i815
  %1367 = sub i64 %1366, 68
  %1368 = load i64, i64* %PC.i813
  %1369 = add i64 %1368, 3
  store i64 %1369, i64* %PC.i813
  %1370 = inttoptr i64 %1367 to i32*
  %1371 = load i32, i32* %1370
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX.i814, align 8
  store %struct.Memory* %loadMem_45e028, %struct.Memory** %MEMORY
  %loadMem_45e02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 1
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %EAX.i811 = bitcast %union.anon* %1378 to i32*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1380 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1379, i64 0, i64 0
  %YMM0.i812 = bitcast %union.VectorReg* %1380 to %"class.std::bitset"*
  %1381 = bitcast %"class.std::bitset"* %YMM0.i812 to i8*
  %1382 = load i32, i32* %EAX.i811
  %1383 = zext i32 %1382 to i64
  %1384 = load i64, i64* %PC.i810
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i810
  %1386 = sitofp i32 %1382 to double
  %1387 = bitcast i8* %1381 to double*
  store double %1386, double* %1387, align 1
  store %struct.Memory* %loadMem_45e02b, %struct.Memory** %MEMORY
  %loadMem1_45e02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %PC.i809
  %1392 = add i64 %1391, -380831
  %1393 = load i64, i64* %PC.i809
  %1394 = add i64 %1393, 5
  %1395 = load i64, i64* %PC.i809
  %1396 = add i64 %1395, 5
  store i64 %1396, i64* %PC.i809
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1398 = load i64, i64* %1397, align 8
  %1399 = add i64 %1398, -8
  %1400 = inttoptr i64 %1399 to i64*
  store i64 %1394, i64* %1400
  store i64 %1399, i64* %1397, align 8
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1392, i64* %1401, align 8
  store %struct.Memory* %loadMem1_45e02f, %struct.Memory** %MEMORY
  %loadMem2_45e02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e02f = load i64, i64* %3
  %1402 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_45e02f)
  store %struct.Memory* %1402, %struct.Memory** %MEMORY
  %loadMem_45e034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1405 to i64*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1406, i64 0, i64 1
  %YMM1.i805 = bitcast %union.VectorReg* %1407 to %"class.std::bitset"*
  %1408 = bitcast %"class.std::bitset"* %YMM1.i805 to i8*
  %1409 = load i64, i64* %PC.i804
  %1410 = add i64 %1409, ptrtoint (%G_0x5380c__rip__type* @G_0x5380c__rip_ to i64)
  %1411 = load i64, i64* %PC.i804
  %1412 = add i64 %1411, 8
  store i64 %1412, i64* %PC.i804
  %1413 = inttoptr i64 %1410 to double*
  %1414 = load double, double* %1413
  %1415 = bitcast i8* %1408 to double*
  store double %1414, double* %1415, align 1
  %1416 = getelementptr inbounds i8, i8* %1408, i64 8
  %1417 = bitcast i8* %1416 to double*
  store double 0.000000e+00, double* %1417, align 1
  store %struct.Memory* %loadMem_45e034, %struct.Memory** %MEMORY
  %loadMem_45e03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 15
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RBP.i802 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1424, i64 0, i64 0
  %XMM0.i803 = bitcast %union.VectorReg* %1425 to %union.vec128_t*
  %1426 = load i64, i64* %RBP.i802
  %1427 = sub i64 %1426, 80
  %1428 = bitcast %union.vec128_t* %XMM0.i803 to i8*
  %1429 = load i64, i64* %PC.i801
  %1430 = add i64 %1429, 5
  store i64 %1430, i64* %PC.i801
  %1431 = bitcast i8* %1428 to double*
  %1432 = load double, double* %1431, align 1
  %1433 = inttoptr i64 %1427 to double*
  store double %1432, double* %1433
  store %struct.Memory* %loadMem_45e03c, %struct.Memory** %MEMORY
  %loadMem_45e041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1438 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1437, i64 0, i64 0
  %YMM0.i799 = bitcast %union.VectorReg* %1438 to %"class.std::bitset"*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1439, i64 0, i64 1
  %XMM1.i800 = bitcast %union.VectorReg* %1440 to %union.vec128_t*
  %1441 = bitcast %"class.std::bitset"* %YMM0.i799 to i8*
  %1442 = bitcast %union.vec128_t* %XMM1.i800 to i8*
  %1443 = load i64, i64* %PC.i798
  %1444 = add i64 %1443, 3
  store i64 %1444, i64* %PC.i798
  %1445 = bitcast i8* %1442 to <2 x i32>*
  %1446 = load <2 x i32>, <2 x i32>* %1445, align 1
  %1447 = getelementptr inbounds i8, i8* %1442, i64 8
  %1448 = bitcast i8* %1447 to <2 x i32>*
  %1449 = load <2 x i32>, <2 x i32>* %1448, align 1
  %1450 = extractelement <2 x i32> %1446, i32 0
  %1451 = bitcast i8* %1441 to i32*
  store i32 %1450, i32* %1451, align 1
  %1452 = extractelement <2 x i32> %1446, i32 1
  %1453 = getelementptr inbounds i8, i8* %1441, i64 4
  %1454 = bitcast i8* %1453 to i32*
  store i32 %1452, i32* %1454, align 1
  %1455 = extractelement <2 x i32> %1449, i32 0
  %1456 = getelementptr inbounds i8, i8* %1441, i64 8
  %1457 = bitcast i8* %1456 to i32*
  store i32 %1455, i32* %1457, align 1
  %1458 = extractelement <2 x i32> %1449, i32 1
  %1459 = getelementptr inbounds i8, i8* %1441, i64 12
  %1460 = bitcast i8* %1459 to i32*
  store i32 %1458, i32* %1460, align 1
  store %struct.Memory* %loadMem_45e041, %struct.Memory** %MEMORY
  %loadMem1_45e044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i797
  %1465 = add i64 %1464, -380852
  %1466 = load i64, i64* %PC.i797
  %1467 = add i64 %1466, 5
  %1468 = load i64, i64* %PC.i797
  %1469 = add i64 %1468, 5
  store i64 %1469, i64* %PC.i797
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1471 = load i64, i64* %1470, align 8
  %1472 = add i64 %1471, -8
  %1473 = inttoptr i64 %1472 to i64*
  store i64 %1467, i64* %1473
  store i64 %1472, i64* %1470, align 8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1465, i64* %1474, align 8
  store %struct.Memory* %loadMem1_45e044, %struct.Memory** %MEMORY
  %loadMem2_45e044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e044 = load i64, i64* %3
  %1475 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_45e044)
  store %struct.Memory* %1475, %struct.Memory** %MEMORY
  %loadMem_45e049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 1
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %PC.i793
  %1483 = add i64 %1482, 5
  store i64 %1483, i64* %PC.i793
  store i64 1, i64* %RAX.i794, align 8
  store %struct.Memory* %loadMem_45e049, %struct.Memory** %MEMORY
  %loadMem_45e04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1488 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1487, i64 0, i64 1
  %YMM1.i792 = bitcast %union.VectorReg* %1488 to %"class.std::bitset"*
  %1489 = bitcast %"class.std::bitset"* %YMM1.i792 to i8*
  %1490 = load i64, i64* %PC.i791
  %1491 = add i64 %1490, ptrtoint (%G_0x5385a__rip__type* @G_0x5385a__rip_ to i64)
  %1492 = load i64, i64* %PC.i791
  %1493 = add i64 %1492, 8
  store i64 %1493, i64* %PC.i791
  %1494 = inttoptr i64 %1491 to double*
  %1495 = load double, double* %1494
  %1496 = bitcast i8* %1489 to double*
  store double %1495, double* %1496, align 1
  %1497 = getelementptr inbounds i8, i8* %1489, i64 8
  %1498 = bitcast i8* %1497 to double*
  store double 0.000000e+00, double* %1498, align 1
  store %struct.Memory* %loadMem_45e04e, %struct.Memory** %MEMORY
  %loadMem_45e056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 15
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1505, i64 0, i64 2
  %YMM2.i790 = bitcast %union.VectorReg* %1506 to %"class.std::bitset"*
  %1507 = bitcast %"class.std::bitset"* %YMM2.i790 to i8*
  %1508 = load i64, i64* %RBP.i789
  %1509 = sub i64 %1508, 80
  %1510 = load i64, i64* %PC.i788
  %1511 = add i64 %1510, 5
  store i64 %1511, i64* %PC.i788
  %1512 = inttoptr i64 %1509 to double*
  %1513 = load double, double* %1512
  %1514 = bitcast i8* %1507 to double*
  store double %1513, double* %1514, align 1
  %1515 = getelementptr inbounds i8, i8* %1507, i64 8
  %1516 = bitcast i8* %1515 to double*
  store double 0.000000e+00, double* %1516, align 1
  store %struct.Memory* %loadMem_45e056, %struct.Memory** %MEMORY
  %loadMem_45e05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1520, i64 0, i64 2
  %YMM2.i786 = bitcast %union.VectorReg* %1521 to %"class.std::bitset"*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1523 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1522, i64 0, i64 0
  %XMM0.i787 = bitcast %union.VectorReg* %1523 to %union.vec128_t*
  %1524 = bitcast %"class.std::bitset"* %YMM2.i786 to i8*
  %1525 = bitcast %"class.std::bitset"* %YMM2.i786 to i8*
  %1526 = bitcast %union.vec128_t* %XMM0.i787 to i8*
  %1527 = load i64, i64* %PC.i785
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %PC.i785
  %1529 = bitcast i8* %1525 to double*
  %1530 = load double, double* %1529, align 1
  %1531 = getelementptr inbounds i8, i8* %1525, i64 8
  %1532 = bitcast i8* %1531 to i64*
  %1533 = load i64, i64* %1532, align 1
  %1534 = bitcast i8* %1526 to double*
  %1535 = load double, double* %1534, align 1
  %1536 = fdiv double %1530, %1535
  %1537 = bitcast i8* %1524 to double*
  store double %1536, double* %1537, align 1
  %1538 = getelementptr inbounds i8, i8* %1524, i64 8
  %1539 = bitcast i8* %1538 to i64*
  store i64 %1533, i64* %1539, align 1
  store %struct.Memory* %loadMem_45e05b, %struct.Memory** %MEMORY
  %loadMem_45e05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1543, i64 0, i64 2
  %YMM2.i783 = bitcast %union.VectorReg* %1544 to %"class.std::bitset"*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1546 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1545, i64 0, i64 1
  %XMM1.i784 = bitcast %union.VectorReg* %1546 to %union.vec128_t*
  %1547 = bitcast %"class.std::bitset"* %YMM2.i783 to i8*
  %1548 = bitcast %"class.std::bitset"* %YMM2.i783 to i8*
  %1549 = bitcast %union.vec128_t* %XMM1.i784 to i8*
  %1550 = load i64, i64* %PC.i782
  %1551 = add i64 %1550, 4
  store i64 %1551, i64* %PC.i782
  %1552 = bitcast i8* %1548 to double*
  %1553 = load double, double* %1552, align 1
  %1554 = getelementptr inbounds i8, i8* %1548, i64 8
  %1555 = bitcast i8* %1554 to i64*
  %1556 = load i64, i64* %1555, align 1
  %1557 = bitcast i8* %1549 to double*
  %1558 = load double, double* %1557, align 1
  %1559 = fadd double %1553, %1558
  %1560 = bitcast i8* %1547 to double*
  store double %1559, double* %1560, align 1
  %1561 = getelementptr inbounds i8, i8* %1547, i64 8
  %1562 = bitcast i8* %1561 to i64*
  store i64 %1556, i64* %1562, align 1
  store %struct.Memory* %loadMem_45e05f, %struct.Memory** %MEMORY
  %loadMem_45e063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1567 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1566, i64 0, i64 0
  %YMM0.i780 = bitcast %union.VectorReg* %1567 to %"class.std::bitset"*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1568, i64 0, i64 2
  %XMM2.i781 = bitcast %union.VectorReg* %1569 to %union.vec128_t*
  %1570 = bitcast %"class.std::bitset"* %YMM0.i780 to i8*
  %1571 = bitcast %union.vec128_t* %XMM2.i781 to i8*
  %1572 = load i64, i64* %PC.i779
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC.i779
  %1574 = bitcast i8* %1571 to <2 x i32>*
  %1575 = load <2 x i32>, <2 x i32>* %1574, align 1
  %1576 = getelementptr inbounds i8, i8* %1571, i64 8
  %1577 = bitcast i8* %1576 to <2 x i32>*
  %1578 = load <2 x i32>, <2 x i32>* %1577, align 1
  %1579 = extractelement <2 x i32> %1575, i32 0
  %1580 = bitcast i8* %1570 to i32*
  store i32 %1579, i32* %1580, align 1
  %1581 = extractelement <2 x i32> %1575, i32 1
  %1582 = getelementptr inbounds i8, i8* %1570, i64 4
  %1583 = bitcast i8* %1582 to i32*
  store i32 %1581, i32* %1583, align 1
  %1584 = extractelement <2 x i32> %1578, i32 0
  %1585 = getelementptr inbounds i8, i8* %1570, i64 8
  %1586 = bitcast i8* %1585 to i32*
  store i32 %1584, i32* %1586, align 1
  %1587 = extractelement <2 x i32> %1578, i32 1
  %1588 = getelementptr inbounds i8, i8* %1570, i64 12
  %1589 = bitcast i8* %1588 to i32*
  store i32 %1587, i32* %1589, align 1
  store %struct.Memory* %loadMem_45e063, %struct.Memory** %MEMORY
  %loadMem_45e066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %EAX.i777 = bitcast %union.anon* %1595 to i32*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 15
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %1598 to i64*
  %1599 = load i64, i64* %RBP.i778
  %1600 = sub i64 %1599, 84
  %1601 = load i32, i32* %EAX.i777
  %1602 = zext i32 %1601 to i64
  %1603 = load i64, i64* %PC.i776
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC.i776
  %1605 = inttoptr i64 %1600 to i32*
  store i32 %1601, i32* %1605
  store %struct.Memory* %loadMem_45e066, %struct.Memory** %MEMORY
  %loadMem1_45e069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %PC.i775
  %1610 = add i64 %1609, -380601
  %1611 = load i64, i64* %PC.i775
  %1612 = add i64 %1611, 5
  %1613 = load i64, i64* %PC.i775
  %1614 = add i64 %1613, 5
  store i64 %1614, i64* %PC.i775
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1616 = load i64, i64* %1615, align 8
  %1617 = add i64 %1616, -8
  %1618 = inttoptr i64 %1617 to i64*
  store i64 %1612, i64* %1618
  store i64 %1617, i64* %1615, align 8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1610, i64* %1619, align 8
  store %struct.Memory* %loadMem1_45e069, %struct.Memory** %MEMORY
  %loadMem2_45e069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e069 = load i64, i64* %3
  %1620 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %loadMem2_45e069)
  store %struct.Memory* %1620, %struct.Memory** %MEMORY
  %loadMem_45e06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 33
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 1
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RAX.i771 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1628 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1627, i64 0, i64 0
  %XMM0.i772 = bitcast %union.VectorReg* %1628 to %union.vec128_t*
  %1629 = bitcast %union.vec128_t* %XMM0.i772 to i8*
  %1630 = load i64, i64* %PC.i770
  %1631 = add i64 %1630, 4
  store i64 %1631, i64* %PC.i770
  %1632 = bitcast i8* %1629 to double*
  %1633 = load double, double* %1632, align 1
  %1634 = call double @llvm.trunc.f64(double %1633)
  %1635 = call double @llvm.fabs.f64(double %1634)
  %1636 = fcmp ogt double %1635, 0x41DFFFFFFFC00000
  %1637 = fptosi double %1634 to i32
  %1638 = zext i32 %1637 to i64
  %1639 = select i1 %1636, i64 2147483648, i64 %1638
  store i64 %1639, i64* %RAX.i771, align 8
  store %struct.Memory* %loadMem_45e06e, %struct.Memory** %MEMORY
  %loadMem_45e072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 1
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %RAX.i769
  %1647 = load i64, i64* %PC.i768
  %1648 = add i64 %1647, 2
  store i64 %1648, i64* %PC.i768
  %1649 = trunc i64 %1646 to i32
  %1650 = shl i32 %1649, 1
  %1651 = icmp slt i32 %1649, 0
  %1652 = icmp slt i32 %1650, 0
  %1653 = xor i1 %1651, %1652
  %1654 = zext i32 %1650 to i64
  store i64 %1654, i64* %RAX.i769, align 8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1656 = zext i1 %1651 to i8
  store i8 %1656, i8* %1655, align 1
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1658 = and i32 %1650, 254
  %1659 = call i32 @llvm.ctpop.i32(i32 %1658)
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  %1662 = xor i8 %1661, 1
  store i8 %1662, i8* %1657, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1663, align 1
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1665 = icmp eq i32 %1650, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %1664, align 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1668 = lshr i32 %1650, 31
  %1669 = trunc i32 %1668 to i8
  store i8 %1669, i8* %1667, align 1
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1671 = zext i1 %1653 to i8
  store i8 %1671, i8* %1670, align 1
  store %struct.Memory* %loadMem_45e072, %struct.Memory** %MEMORY
  %loadMem_45e075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 1
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %1677 to i64*
  %1678 = load i64, i64* %RAX.i767
  %1679 = load i64, i64* %PC.i766
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC.i766
  %1681 = trunc i64 %1678 to i32
  %1682 = add i32 1, %1681
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RAX.i767, align 8
  %1684 = icmp ult i32 %1682, %1681
  %1685 = icmp ult i32 %1682, 1
  %1686 = or i1 %1684, %1685
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1687, i8* %1688, align 1
  %1689 = and i32 %1682, 255
  %1690 = call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1693, i8* %1694, align 1
  %1695 = xor i64 1, %1678
  %1696 = trunc i64 %1695 to i32
  %1697 = xor i32 %1696, %1682
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1700, i8* %1701, align 1
  %1702 = icmp eq i32 %1682, 0
  %1703 = zext i1 %1702 to i8
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1703, i8* %1704, align 1
  %1705 = lshr i32 %1682, 31
  %1706 = trunc i32 %1705 to i8
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1706, i8* %1707, align 1
  %1708 = lshr i32 %1681, 31
  %1709 = xor i32 %1705, %1708
  %1710 = add i32 %1709, %1705
  %1711 = icmp eq i32 %1710, 2
  %1712 = zext i1 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1712, i8* %1713, align 1
  store %struct.Memory* %loadMem_45e075, %struct.Memory** %MEMORY
  %loadMem_45e078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 1
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %EAX.i764 = bitcast %union.anon* %1719 to i32*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 15
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %RBP.i765
  %1724 = sub i64 %1723, 44
  %1725 = load i32, i32* %EAX.i764
  %1726 = zext i32 %1725 to i64
  %1727 = load i64, i64* %PC.i763
  %1728 = add i64 %1727, 3
  store i64 %1728, i64* %PC.i763
  %1729 = inttoptr i64 %1724 to i32*
  store i32 %1725, i32* %1729
  store %struct.Memory* %loadMem_45e078, %struct.Memory** %MEMORY
  %loadMem_45e07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 1
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RAX.i761 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i762
  %1740 = sub i64 %1739, 44
  %1741 = load i64, i64* %PC.i760
  %1742 = add i64 %1741, 3
  store i64 %1742, i64* %PC.i760
  %1743 = inttoptr i64 %1740 to i32*
  %1744 = load i32, i32* %1743
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RAX.i761, align 8
  store %struct.Memory* %loadMem_45e07b, %struct.Memory** %MEMORY
  %loadMem_45e07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RAX.i759 = bitcast %union.anon* %1751 to i64*
  %1752 = load i64, i64* %RAX.i759
  %1753 = load i64, i64* %PC.i758
  %1754 = add i64 %1753, 2
  store i64 %1754, i64* %PC.i758
  %1755 = shl i64 %1752, 32
  %1756 = ashr i64 %1755, 33
  %1757 = trunc i64 %1752 to i8
  %1758 = and i8 %1757, 1
  %1759 = trunc i64 %1756 to i32
  %1760 = and i64 %1756, 4294967295
  store i64 %1760, i64* %RAX.i759, align 8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1758, i8* %1761, align 1
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1763 = and i32 %1759, 255
  %1764 = call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  store i8 %1767, i8* %1762, align 1
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1768, align 1
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1770 = icmp eq i32 %1759, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %1769, align 1
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1773 = lshr i32 %1759, 31
  %1774 = trunc i32 %1773 to i8
  store i8 %1774, i8* %1772, align 1
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1775, align 1
  store %struct.Memory* %loadMem_45e07e, %struct.Memory** %MEMORY
  %loadMem_45e081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 1
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %RAX.i757
  %1783 = load i64, i64* %PC.i756
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %PC.i756
  %1785 = trunc i64 %1782 to i32
  %1786 = add i32 1, %1785
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RAX.i757, align 8
  %1788 = icmp ult i32 %1786, %1785
  %1789 = icmp ult i32 %1786, 1
  %1790 = or i1 %1788, %1789
  %1791 = zext i1 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1791, i8* %1792, align 1
  %1793 = and i32 %1786, 255
  %1794 = call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1797, i8* %1798, align 1
  %1799 = xor i64 1, %1782
  %1800 = trunc i64 %1799 to i32
  %1801 = xor i32 %1800, %1786
  %1802 = lshr i32 %1801, 4
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1804, i8* %1805, align 1
  %1806 = icmp eq i32 %1786, 0
  %1807 = zext i1 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1807, i8* %1808, align 1
  %1809 = lshr i32 %1786, 31
  %1810 = trunc i32 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1810, i8* %1811, align 1
  %1812 = lshr i32 %1785, 31
  %1813 = xor i32 %1809, %1812
  %1814 = add i32 %1813, %1809
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1816, i8* %1817, align 1
  store %struct.Memory* %loadMem_45e081, %struct.Memory** %MEMORY
  %loadMem_45e084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 33
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 1
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %EAX.i754 = bitcast %union.anon* %1823 to i32*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 5
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RCX.i755 = bitcast %union.anon* %1826 to i64*
  %1827 = load i32, i32* %EAX.i754
  %1828 = zext i32 %1827 to i64
  %1829 = load i64, i64* %PC.i753
  %1830 = add i64 %1829, 2
  store i64 %1830, i64* %PC.i753
  %1831 = and i64 %1828, 4294967295
  store i64 %1831, i64* %RCX.i755, align 8
  store %struct.Memory* %loadMem_45e084, %struct.Memory** %MEMORY
  %loadMem_45e086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 1
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 15
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %1840 to i64*
  %1841 = load i64, i64* %RBP.i752
  %1842 = sub i64 %1841, 84
  %1843 = load i64, i64* %PC.i750
  %1844 = add i64 %1843, 3
  store i64 %1844, i64* %PC.i750
  %1845 = inttoptr i64 %1842 to i32*
  %1846 = load i32, i32* %1845
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RAX.i751, align 8
  store %struct.Memory* %loadMem_45e086, %struct.Memory** %MEMORY
  %loadMem_45e089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 5
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %1854 = bitcast %union.anon* %1853 to %struct.anon.2*
  %CL.i747 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1854, i32 0, i32 0
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %RAX.i748
  %1859 = load i8, i8* %CL.i747
  %1860 = zext i8 %1859 to i64
  %1861 = load i64, i64* %PC.i746
  %1862 = add i64 %1861, 2
  store i64 %1862, i64* %PC.i746
  %1863 = trunc i64 %1860 to i5
  switch i5 %1863, label %1870 [
    i5 0, label %routine_shll__cl___eax.exit749
    i5 1, label %1864
  ]

; <label>:1864:                                   ; preds = %block_.L_45e028
  %1865 = trunc i64 %1858 to i32
  %1866 = shl i32 %1865, 1
  %1867 = icmp slt i32 %1865, 0
  %1868 = icmp slt i32 %1866, 0
  %1869 = xor i1 %1867, %1868
  br label %1879

; <label>:1870:                                   ; preds = %block_.L_45e028
  %1871 = and i64 %1860, 31
  %1872 = add i64 %1871, 4294967295
  %1873 = and i64 %1858, 4294967295
  %1874 = and i64 %1872, 4294967295
  %1875 = shl i64 %1873, %1874
  %1876 = trunc i64 %1875 to i32
  %1877 = icmp slt i32 %1876, 0
  %1878 = shl i32 %1876, 1
  br label %1879

; <label>:1879:                                   ; preds = %1870, %1864
  %1880 = phi i1 [ %1867, %1864 ], [ %1877, %1870 ]
  %1881 = phi i1 [ %1869, %1864 ], [ false, %1870 ]
  %1882 = phi i32 [ %1866, %1864 ], [ %1878, %1870 ]
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RAX.i748, align 8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1885 = zext i1 %1880 to i8
  store i8 %1885, i8* %1884, align 1
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1887 = and i32 %1882, 254
  %1888 = call i32 @llvm.ctpop.i32(i32 %1887)
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = xor i8 %1890, 1
  store i8 %1891, i8* %1886, align 1
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1892, align 1
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1894 = icmp eq i32 %1882, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %1893, align 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1897 = lshr i32 %1882, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %1896, align 1
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1900 = zext i1 %1881 to i8
  store i8 %1900, i8* %1899, align 1
  br label %routine_shll__cl___eax.exit749

routine_shll__cl___eax.exit749:                   ; preds = %block_.L_45e028, %1879
  store %struct.Memory* %loadMem_45e089, %struct.Memory** %MEMORY
  %loadMem_45e08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 1
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RAX.i745 = bitcast %union.anon* %1906 to i64*
  %1907 = load i64, i64* %RAX.i745
  %1908 = load i64, i64* %PC.i744
  %1909 = add i64 %1908, 3
  store i64 %1909, i64* %PC.i744
  %1910 = trunc i64 %1907 to i32
  %1911 = sub i32 %1910, 1
  %1912 = zext i32 %1911 to i64
  store i64 %1912, i64* %RAX.i745, align 8
  %1913 = icmp ult i32 %1910, 1
  %1914 = zext i1 %1913 to i8
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1914, i8* %1915, align 1
  %1916 = and i32 %1911, 255
  %1917 = call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1920, i8* %1921, align 1
  %1922 = xor i64 1, %1907
  %1923 = trunc i64 %1922 to i32
  %1924 = xor i32 %1923, %1911
  %1925 = lshr i32 %1924, 4
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1927, i8* %1928, align 1
  %1929 = icmp eq i32 %1911, 0
  %1930 = zext i1 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1930, i8* %1931, align 1
  %1932 = lshr i32 %1911, 31
  %1933 = trunc i32 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1933, i8* %1934, align 1
  %1935 = lshr i32 %1910, 31
  %1936 = xor i32 %1932, %1935
  %1937 = add i32 %1936, %1935
  %1938 = icmp eq i32 %1937, 2
  %1939 = zext i1 %1938 to i8
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1939, i8* %1940, align 1
  store %struct.Memory* %loadMem_45e08b, %struct.Memory** %MEMORY
  %loadMem_45e08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 1
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %EAX.i742 = bitcast %union.anon* %1946 to i32*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 15
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %RBP.i743
  %1951 = sub i64 %1950, 48
  %1952 = load i32, i32* %EAX.i742
  %1953 = zext i32 %1952 to i64
  %1954 = load i64, i64* %PC.i741
  %1955 = add i64 %1954, 3
  store i64 %1955, i64* %PC.i741
  %1956 = inttoptr i64 %1951 to i32*
  store i32 %1952, i32* %1956
  store %struct.Memory* %loadMem_45e08e, %struct.Memory** %MEMORY
  %loadMem_45e091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 1
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 15
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RBP.i740
  %1967 = sub i64 %1966, 32
  %1968 = load i64, i64* %PC.i738
  %1969 = add i64 %1968, 3
  store i64 %1969, i64* %PC.i738
  %1970 = inttoptr i64 %1967 to i32*
  %1971 = load i32, i32* %1970
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_45e091, %struct.Memory** %MEMORY
  %loadMem_45e094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %1978 to i64*
  %1979 = load i64, i64* %RAX.i737
  %1980 = load i64, i64* %PC.i736
  %1981 = add i64 %1980, 2
  store i64 %1981, i64* %PC.i736
  %1982 = trunc i64 %1979 to i32
  %1983 = shl i32 %1982, 1
  %1984 = icmp slt i32 %1982, 0
  %1985 = icmp slt i32 %1983, 0
  %1986 = xor i1 %1984, %1985
  %1987 = zext i32 %1983 to i64
  store i64 %1987, i64* %RAX.i737, align 8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1989 = zext i1 %1984 to i8
  store i8 %1989, i8* %1988, align 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1991 = and i32 %1983, 254
  %1992 = call i32 @llvm.ctpop.i32(i32 %1991)
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  store i8 %1995, i8* %1990, align 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1996, align 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1998 = icmp eq i32 %1983, 0
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %1997, align 1
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2001 = lshr i32 %1983, 31
  %2002 = trunc i32 %2001 to i8
  store i8 %2002, i8* %2000, align 1
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2004 = zext i1 %1986 to i8
  store i8 %2004, i8* %2003, align 1
  store %struct.Memory* %loadMem_45e094, %struct.Memory** %MEMORY
  %loadMem_45e097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 33
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 1
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RAX.i735 = bitcast %union.anon* %2010 to i64*
  %2011 = load i64, i64* %RAX.i735
  %2012 = load i64, i64* %PC.i734
  %2013 = add i64 %2012, 3
  store i64 %2013, i64* %PC.i734
  %2014 = trunc i64 %2011 to i32
  %2015 = add i32 3, %2014
  %2016 = zext i32 %2015 to i64
  store i64 %2016, i64* %RAX.i735, align 8
  %2017 = icmp ult i32 %2015, %2014
  %2018 = icmp ult i32 %2015, 3
  %2019 = or i1 %2017, %2018
  %2020 = zext i1 %2019 to i8
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2020, i8* %2021, align 1
  %2022 = and i32 %2015, 255
  %2023 = call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2026, i8* %2027, align 1
  %2028 = xor i64 3, %2011
  %2029 = trunc i64 %2028 to i32
  %2030 = xor i32 %2029, %2015
  %2031 = lshr i32 %2030, 4
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2033, i8* %2034, align 1
  %2035 = icmp eq i32 %2015, 0
  %2036 = zext i1 %2035 to i8
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2036, i8* %2037, align 1
  %2038 = lshr i32 %2015, 31
  %2039 = trunc i32 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2039, i8* %2040, align 1
  %2041 = lshr i32 %2014, 31
  %2042 = xor i32 %2038, %2041
  %2043 = add i32 %2042, %2038
  %2044 = icmp eq i32 %2043, 2
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2045, i8* %2046, align 1
  store %struct.Memory* %loadMem_45e097, %struct.Memory** %MEMORY
  %loadMem_45e09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 1
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RAX.i733 = bitcast %union.anon* %2052 to i64*
  %2053 = load i64, i64* %RAX.i733
  %2054 = load i64, i64* %PC.i732
  %2055 = add i64 %2054, 3
  store i64 %2055, i64* %PC.i732
  %2056 = and i64 %2053, 4294967295
  %2057 = shl i64 %2056, 1
  %2058 = trunc i64 %2057 to i32
  %2059 = icmp slt i32 %2058, 0
  %2060 = shl i32 %2058, 1
  %2061 = zext i32 %2060 to i64
  store i64 %2061, i64* %RAX.i733, align 8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2063 = zext i1 %2059 to i8
  store i8 %2063, i8* %2062, align 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2065 = and i32 %2060, 254
  %2066 = call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %2064, align 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2070, align 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2072 = icmp eq i32 %2060, 0
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %2071, align 1
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2075 = lshr i32 %2060, 31
  %2076 = trunc i32 %2075 to i8
  store i8 %2076, i8* %2074, align 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2077, align 1
  store %struct.Memory* %loadMem_45e09a, %struct.Memory** %MEMORY
  %loadMem_45e09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 1
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %EAX.i730 = bitcast %union.anon* %2083 to i32*
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 15
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %2086 to i64*
  %2087 = load i64, i64* %RBP.i731
  %2088 = sub i64 %2087, 52
  %2089 = load i32, i32* %EAX.i730
  %2090 = zext i32 %2089 to i64
  %2091 = load i64, i64* %PC.i729
  %2092 = add i64 %2091, 3
  store i64 %2092, i64* %PC.i729
  %2093 = inttoptr i64 %2088 to i32*
  store i32 %2089, i32* %2093
  store %struct.Memory* %loadMem_45e09d, %struct.Memory** %MEMORY
  %loadMem_45e0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RBP.i728
  %2104 = sub i64 %2103, 52
  %2105 = load i64, i64* %PC.i726
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %PC.i726
  %2107 = inttoptr i64 %2104 to i32*
  %2108 = load i32, i32* %2107
  %2109 = zext i32 %2108 to i64
  store i64 %2109, i64* %RAX.i727, align 8
  store %struct.Memory* %loadMem_45e0a0, %struct.Memory** %MEMORY
  %loadMem_45e0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 1
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RAX.i725
  %2117 = load i64, i64* %PC.i724
  %2118 = add i64 %2117, 3
  store i64 %2118, i64* %PC.i724
  %2119 = trunc i64 %2116 to i32
  %2120 = add i32 1, %2119
  %2121 = zext i32 %2120 to i64
  store i64 %2121, i64* %RAX.i725, align 8
  %2122 = icmp ult i32 %2120, %2119
  %2123 = icmp ult i32 %2120, 1
  %2124 = or i1 %2122, %2123
  %2125 = zext i1 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2125, i8* %2126, align 1
  %2127 = and i32 %2120, 255
  %2128 = call i32 @llvm.ctpop.i32(i32 %2127)
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2131, i8* %2132, align 1
  %2133 = xor i64 1, %2116
  %2134 = trunc i64 %2133 to i32
  %2135 = xor i32 %2134, %2120
  %2136 = lshr i32 %2135, 4
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2138, i8* %2139, align 1
  %2140 = icmp eq i32 %2120, 0
  %2141 = zext i1 %2140 to i8
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2141, i8* %2142, align 1
  %2143 = lshr i32 %2120, 31
  %2144 = trunc i32 %2143 to i8
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2144, i8* %2145, align 1
  %2146 = lshr i32 %2119, 31
  %2147 = xor i32 %2143, %2146
  %2148 = add i32 %2147, %2143
  %2149 = icmp eq i32 %2148, 2
  %2150 = zext i1 %2149 to i8
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2150, i8* %2151, align 1
  store %struct.Memory* %loadMem_45e0a3, %struct.Memory** %MEMORY
  %loadMem_45e0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 33
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 1
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %EAX.i722 = bitcast %union.anon* %2157 to i32*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2158, i64 0, i64 0
  %YMM0.i723 = bitcast %union.VectorReg* %2159 to %"class.std::bitset"*
  %2160 = bitcast %"class.std::bitset"* %YMM0.i723 to i8*
  %2161 = load i32, i32* %EAX.i722
  %2162 = zext i32 %2161 to i64
  %2163 = load i64, i64* %PC.i721
  %2164 = add i64 %2163, 4
  store i64 %2164, i64* %PC.i721
  %2165 = sitofp i32 %2161 to double
  %2166 = bitcast i8* %2160 to double*
  store double %2165, double* %2166, align 1
  store %struct.Memory* %loadMem_45e0a6, %struct.Memory** %MEMORY
  %loadMem1_45e0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %PC.i720
  %2171 = add i64 %2170, -380954
  %2172 = load i64, i64* %PC.i720
  %2173 = add i64 %2172, 5
  %2174 = load i64, i64* %PC.i720
  %2175 = add i64 %2174, 5
  store i64 %2175, i64* %PC.i720
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2177 = load i64, i64* %2176, align 8
  %2178 = add i64 %2177, -8
  %2179 = inttoptr i64 %2178 to i64*
  store i64 %2173, i64* %2179
  store i64 %2178, i64* %2176, align 8
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2171, i64* %2180, align 8
  store %struct.Memory* %loadMem1_45e0aa, %struct.Memory** %MEMORY
  %loadMem2_45e0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e0aa = load i64, i64* %3
  %2181 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_45e0aa)
  store %struct.Memory* %2181, %struct.Memory** %MEMORY
  %loadMem_45e0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2186 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2185, i64 0, i64 1
  %YMM1.i716 = bitcast %union.VectorReg* %2186 to %"class.std::bitset"*
  %2187 = bitcast %"class.std::bitset"* %YMM1.i716 to i8*
  %2188 = load i64, i64* %PC.i715
  %2189 = add i64 %2188, ptrtoint (%G_0x53791__rip__type* @G_0x53791__rip_ to i64)
  %2190 = load i64, i64* %PC.i715
  %2191 = add i64 %2190, 8
  store i64 %2191, i64* %PC.i715
  %2192 = inttoptr i64 %2189 to double*
  %2193 = load double, double* %2192
  %2194 = bitcast i8* %2187 to double*
  store double %2193, double* %2194, align 1
  %2195 = getelementptr inbounds i8, i8* %2187, i64 8
  %2196 = bitcast i8* %2195 to double*
  store double 0.000000e+00, double* %2196, align 1
  store %struct.Memory* %loadMem_45e0af, %struct.Memory** %MEMORY
  %loadMem_45e0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 15
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2203, i64 0, i64 0
  %XMM0.i714 = bitcast %union.VectorReg* %2204 to %union.vec128_t*
  %2205 = load i64, i64* %RBP.i713
  %2206 = sub i64 %2205, 96
  %2207 = bitcast %union.vec128_t* %XMM0.i714 to i8*
  %2208 = load i64, i64* %PC.i712
  %2209 = add i64 %2208, 5
  store i64 %2209, i64* %PC.i712
  %2210 = bitcast i8* %2207 to double*
  %2211 = load double, double* %2210, align 1
  %2212 = inttoptr i64 %2206 to double*
  store double %2211, double* %2212
  store %struct.Memory* %loadMem_45e0b7, %struct.Memory** %MEMORY
  %loadMem_45e0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2217 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2216, i64 0, i64 0
  %YMM0.i710 = bitcast %union.VectorReg* %2217 to %"class.std::bitset"*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2218, i64 0, i64 1
  %XMM1.i711 = bitcast %union.VectorReg* %2219 to %union.vec128_t*
  %2220 = bitcast %"class.std::bitset"* %YMM0.i710 to i8*
  %2221 = bitcast %union.vec128_t* %XMM1.i711 to i8*
  %2222 = load i64, i64* %PC.i709
  %2223 = add i64 %2222, 3
  store i64 %2223, i64* %PC.i709
  %2224 = bitcast i8* %2221 to <2 x i32>*
  %2225 = load <2 x i32>, <2 x i32>* %2224, align 1
  %2226 = getelementptr inbounds i8, i8* %2221, i64 8
  %2227 = bitcast i8* %2226 to <2 x i32>*
  %2228 = load <2 x i32>, <2 x i32>* %2227, align 1
  %2229 = extractelement <2 x i32> %2225, i32 0
  %2230 = bitcast i8* %2220 to i32*
  store i32 %2229, i32* %2230, align 1
  %2231 = extractelement <2 x i32> %2225, i32 1
  %2232 = getelementptr inbounds i8, i8* %2220, i64 4
  %2233 = bitcast i8* %2232 to i32*
  store i32 %2231, i32* %2233, align 1
  %2234 = extractelement <2 x i32> %2228, i32 0
  %2235 = getelementptr inbounds i8, i8* %2220, i64 8
  %2236 = bitcast i8* %2235 to i32*
  store i32 %2234, i32* %2236, align 1
  %2237 = extractelement <2 x i32> %2228, i32 1
  %2238 = getelementptr inbounds i8, i8* %2220, i64 12
  %2239 = bitcast i8* %2238 to i32*
  store i32 %2237, i32* %2239, align 1
  store %struct.Memory* %loadMem_45e0bc, %struct.Memory** %MEMORY
  %loadMem1_45e0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2242 to i64*
  %2243 = load i64, i64* %PC.i708
  %2244 = add i64 %2243, -380975
  %2245 = load i64, i64* %PC.i708
  %2246 = add i64 %2245, 5
  %2247 = load i64, i64* %PC.i708
  %2248 = add i64 %2247, 5
  store i64 %2248, i64* %PC.i708
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2250 = load i64, i64* %2249, align 8
  %2251 = add i64 %2250, -8
  %2252 = inttoptr i64 %2251 to i64*
  store i64 %2246, i64* %2252
  store i64 %2251, i64* %2249, align 8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2244, i64* %2253, align 8
  store %struct.Memory* %loadMem1_45e0bf, %struct.Memory** %MEMORY
  %loadMem2_45e0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e0bf = load i64, i64* %3
  %2254 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_45e0bf)
  store %struct.Memory* %2254, %struct.Memory** %MEMORY
  %loadMem_45e0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 33
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 1
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %PC.i704
  %2262 = add i64 %2261, 5
  store i64 %2262, i64* %PC.i704
  store i64 4, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_45e0c4, %struct.Memory** %MEMORY
  %loadMem_45e0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 1
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %EAX.i702 = bitcast %union.anon* %2268 to i32*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 9
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RSI.i703 = bitcast %union.anon* %2271 to i64*
  %2272 = load i32, i32* %EAX.i702
  %2273 = zext i32 %2272 to i64
  %2274 = load i64, i64* %PC.i701
  %2275 = add i64 %2274, 2
  store i64 %2275, i64* %PC.i701
  %2276 = and i64 %2273, 4294967295
  store i64 %2276, i64* %RSI.i703, align 8
  store %struct.Memory* %loadMem_45e0c9, %struct.Memory** %MEMORY
  %loadMem_45e0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 1
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RAX.i700 = bitcast %union.anon* %2282 to i64*
  %2283 = load i64, i64* %PC.i699
  %2284 = add i64 %2283, 5
  store i64 %2284, i64* %PC.i699
  store i64 1, i64* %RAX.i700, align 8
  store %struct.Memory* %loadMem_45e0cb, %struct.Memory** %MEMORY
  %loadMem_45e0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 33
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2288, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2289 to %"class.std::bitset"*
  %2290 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2291 = load i64, i64* %PC.i698
  %2292 = add i64 %2291, ptrtoint (%G_0x537d8__rip__type* @G_0x537d8__rip_ to i64)
  %2293 = load i64, i64* %PC.i698
  %2294 = add i64 %2293, 8
  store i64 %2294, i64* %PC.i698
  %2295 = inttoptr i64 %2292 to double*
  %2296 = load double, double* %2295
  %2297 = bitcast i8* %2290 to double*
  store double %2296, double* %2297, align 1
  %2298 = getelementptr inbounds i8, i8* %2290, i64 8
  %2299 = bitcast i8* %2298 to double*
  store double 0.000000e+00, double* %2299, align 1
  store %struct.Memory* %loadMem_45e0d0, %struct.Memory** %MEMORY
  %loadMem_45e0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 33
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2306, i64 0, i64 2
  %YMM2.i697 = bitcast %union.VectorReg* %2307 to %"class.std::bitset"*
  %2308 = bitcast %"class.std::bitset"* %YMM2.i697 to i8*
  %2309 = load i64, i64* %RBP.i696
  %2310 = sub i64 %2309, 96
  %2311 = load i64, i64* %PC.i695
  %2312 = add i64 %2311, 5
  store i64 %2312, i64* %PC.i695
  %2313 = inttoptr i64 %2310 to double*
  %2314 = load double, double* %2313
  %2315 = bitcast i8* %2308 to double*
  store double %2314, double* %2315, align 1
  %2316 = getelementptr inbounds i8, i8* %2308, i64 8
  %2317 = bitcast i8* %2316 to double*
  store double 0.000000e+00, double* %2317, align 1
  store %struct.Memory* %loadMem_45e0d8, %struct.Memory** %MEMORY
  %loadMem_45e0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2321, i64 0, i64 2
  %YMM2.i693 = bitcast %union.VectorReg* %2322 to %"class.std::bitset"*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2323, i64 0, i64 0
  %XMM0.i694 = bitcast %union.VectorReg* %2324 to %union.vec128_t*
  %2325 = bitcast %"class.std::bitset"* %YMM2.i693 to i8*
  %2326 = bitcast %"class.std::bitset"* %YMM2.i693 to i8*
  %2327 = bitcast %union.vec128_t* %XMM0.i694 to i8*
  %2328 = load i64, i64* %PC.i692
  %2329 = add i64 %2328, 4
  store i64 %2329, i64* %PC.i692
  %2330 = bitcast i8* %2326 to double*
  %2331 = load double, double* %2330, align 1
  %2332 = getelementptr inbounds i8, i8* %2326, i64 8
  %2333 = bitcast i8* %2332 to i64*
  %2334 = load i64, i64* %2333, align 1
  %2335 = bitcast i8* %2327 to double*
  %2336 = load double, double* %2335, align 1
  %2337 = fdiv double %2331, %2336
  %2338 = bitcast i8* %2325 to double*
  store double %2337, double* %2338, align 1
  %2339 = getelementptr inbounds i8, i8* %2325, i64 8
  %2340 = bitcast i8* %2339 to i64*
  store i64 %2334, i64* %2340, align 1
  store %struct.Memory* %loadMem_45e0dd, %struct.Memory** %MEMORY
  %loadMem_45e0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2344, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2345 to %"class.std::bitset"*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2346, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2347 to %union.vec128_t*
  %2348 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2349 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2350 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2351 = load i64, i64* %PC.i691
  %2352 = add i64 %2351, 4
  store i64 %2352, i64* %PC.i691
  %2353 = bitcast i8* %2349 to double*
  %2354 = load double, double* %2353, align 1
  %2355 = getelementptr inbounds i8, i8* %2349, i64 8
  %2356 = bitcast i8* %2355 to i64*
  %2357 = load i64, i64* %2356, align 1
  %2358 = bitcast i8* %2350 to double*
  %2359 = load double, double* %2358, align 1
  %2360 = fadd double %2354, %2359
  %2361 = bitcast i8* %2348 to double*
  store double %2360, double* %2361, align 1
  %2362 = getelementptr inbounds i8, i8* %2348, i64 8
  %2363 = bitcast i8* %2362 to i64*
  store i64 %2357, i64* %2363, align 1
  store %struct.Memory* %loadMem_45e0e1, %struct.Memory** %MEMORY
  %loadMem_45e0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2367, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2368 to %"class.std::bitset"*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2369, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2370 to %union.vec128_t*
  %2371 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2372 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2373 = load i64, i64* %PC.i690
  %2374 = add i64 %2373, 3
  store i64 %2374, i64* %PC.i690
  %2375 = bitcast i8* %2372 to <2 x i32>*
  %2376 = load <2 x i32>, <2 x i32>* %2375, align 1
  %2377 = getelementptr inbounds i8, i8* %2372, i64 8
  %2378 = bitcast i8* %2377 to <2 x i32>*
  %2379 = load <2 x i32>, <2 x i32>* %2378, align 1
  %2380 = extractelement <2 x i32> %2376, i32 0
  %2381 = bitcast i8* %2371 to i32*
  store i32 %2380, i32* %2381, align 1
  %2382 = extractelement <2 x i32> %2376, i32 1
  %2383 = getelementptr inbounds i8, i8* %2371, i64 4
  %2384 = bitcast i8* %2383 to i32*
  store i32 %2382, i32* %2384, align 1
  %2385 = extractelement <2 x i32> %2379, i32 0
  %2386 = getelementptr inbounds i8, i8* %2371, i64 8
  %2387 = bitcast i8* %2386 to i32*
  store i32 %2385, i32* %2387, align 1
  %2388 = extractelement <2 x i32> %2379, i32 1
  %2389 = getelementptr inbounds i8, i8* %2371, i64 12
  %2390 = bitcast i8* %2389 to i32*
  store i32 %2388, i32* %2390, align 1
  store %struct.Memory* %loadMem_45e0e5, %struct.Memory** %MEMORY
  %loadMem_45e0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 1
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %EAX.i688 = bitcast %union.anon* %2396 to i32*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %RBP.i689
  %2401 = sub i64 %2400, 100
  %2402 = load i32, i32* %EAX.i688
  %2403 = zext i32 %2402 to i64
  %2404 = load i64, i64* %PC.i687
  %2405 = add i64 %2404, 3
  store i64 %2405, i64* %PC.i687
  %2406 = inttoptr i64 %2401 to i32*
  store i32 %2402, i32* %2406
  store %struct.Memory* %loadMem_45e0e8, %struct.Memory** %MEMORY
  %loadMem_45e0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 33
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 9
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RSI.i685 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 15
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %RBP.i686
  %2417 = sub i64 %2416, 112
  %2418 = load i64, i64* %RSI.i685
  %2419 = load i64, i64* %PC.i684
  %2420 = add i64 %2419, 4
  store i64 %2420, i64* %PC.i684
  %2421 = inttoptr i64 %2417 to i64*
  store i64 %2418, i64* %2421
  store %struct.Memory* %loadMem_45e0eb, %struct.Memory** %MEMORY
  %loadMem1_45e0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %PC.i683
  %2426 = add i64 %2425, -380655
  %2427 = load i64, i64* %PC.i683
  %2428 = add i64 %2427, 5
  %2429 = load i64, i64* %PC.i683
  %2430 = add i64 %2429, 5
  store i64 %2430, i64* %PC.i683
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2432 = load i64, i64* %2431, align 8
  %2433 = add i64 %2432, -8
  %2434 = inttoptr i64 %2433 to i64*
  store i64 %2428, i64* %2434
  store i64 %2433, i64* %2431, align 8
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2426, i64* %2435, align 8
  store %struct.Memory* %loadMem1_45e0ef, %struct.Memory** %MEMORY
  %loadMem2_45e0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e0ef = load i64, i64* %3
  %call2_45e0ef = call %struct.Memory* @sub_401200.ceil_plt(%struct.State* %0, i64 %loadPC_45e0ef, %struct.Memory* %loadMem2_45e0ef)
  store %struct.Memory* %call2_45e0ef, %struct.Memory** %MEMORY
  %loadMem_45e0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 1
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2442, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2443 to %union.vec128_t*
  %2444 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2445 = load i64, i64* %PC.i681
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i681
  %2447 = bitcast i8* %2444 to double*
  %2448 = load double, double* %2447, align 1
  %2449 = call double @llvm.trunc.f64(double %2448)
  %2450 = call double @llvm.fabs.f64(double %2449)
  %2451 = fcmp ogt double %2450, 0x41DFFFFFFFC00000
  %2452 = fptosi double %2449 to i32
  %2453 = zext i32 %2452 to i64
  %2454 = select i1 %2451, i64 2147483648, i64 %2453
  store i64 %2454, i64* %RAX.i682, align 8
  store %struct.Memory* %loadMem_45e0f4, %struct.Memory** %MEMORY
  %loadMem_45e0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 1
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %2460 to i64*
  %2461 = load i64, i64* %RAX.i680
  %2462 = load i64, i64* %PC.i679
  %2463 = add i64 %2462, 2
  store i64 %2463, i64* %PC.i679
  %2464 = trunc i64 %2461 to i32
  %2465 = shl i32 %2464, 1
  %2466 = icmp slt i32 %2464, 0
  %2467 = icmp slt i32 %2465, 0
  %2468 = xor i1 %2466, %2467
  %2469 = zext i32 %2465 to i64
  store i64 %2469, i64* %RAX.i680, align 8
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2471 = zext i1 %2466 to i8
  store i8 %2471, i8* %2470, align 1
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2473 = and i32 %2465, 254
  %2474 = call i32 @llvm.ctpop.i32(i32 %2473)
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = xor i8 %2476, 1
  store i8 %2477, i8* %2472, align 1
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2478, align 1
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2480 = icmp eq i32 %2465, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %2479, align 1
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2483 = lshr i32 %2465, 31
  %2484 = trunc i32 %2483 to i8
  store i8 %2484, i8* %2482, align 1
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2486 = zext i1 %2468 to i8
  store i8 %2486, i8* %2485, align 1
  store %struct.Memory* %loadMem_45e0f8, %struct.Memory** %MEMORY
  %loadMem_45e0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RAX.i678
  %2494 = load i64, i64* %PC.i677
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC.i677
  %2496 = trunc i64 %2493 to i32
  %2497 = add i32 3, %2496
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RAX.i678, align 8
  %2499 = icmp ult i32 %2497, %2496
  %2500 = icmp ult i32 %2497, 3
  %2501 = or i1 %2499, %2500
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2502, i8* %2503, align 1
  %2504 = and i32 %2497, 255
  %2505 = call i32 @llvm.ctpop.i32(i32 %2504)
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  %2508 = xor i8 %2507, 1
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2508, i8* %2509, align 1
  %2510 = xor i64 3, %2493
  %2511 = trunc i64 %2510 to i32
  %2512 = xor i32 %2511, %2497
  %2513 = lshr i32 %2512, 4
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2515, i8* %2516, align 1
  %2517 = icmp eq i32 %2497, 0
  %2518 = zext i1 %2517 to i8
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2518, i8* %2519, align 1
  %2520 = lshr i32 %2497, 31
  %2521 = trunc i32 %2520 to i8
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2521, i8* %2522, align 1
  %2523 = lshr i32 %2496, 31
  %2524 = xor i32 %2520, %2523
  %2525 = add i32 %2524, %2520
  %2526 = icmp eq i32 %2525, 2
  %2527 = zext i1 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2527, i8* %2528, align 1
  store %struct.Memory* %loadMem_45e0fb, %struct.Memory** %MEMORY
  %loadMem_45e0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 1
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %EAX.i675 = bitcast %union.anon* %2534 to i32*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 15
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %2537 to i64*
  %2538 = load i64, i64* %RBP.i676
  %2539 = sub i64 %2538, 56
  %2540 = load i32, i32* %EAX.i675
  %2541 = zext i32 %2540 to i64
  %2542 = load i64, i64* %PC.i674
  %2543 = add i64 %2542, 3
  store i64 %2543, i64* %PC.i674
  %2544 = inttoptr i64 %2539 to i32*
  store i32 %2540, i32* %2544
  store %struct.Memory* %loadMem_45e0fe, %struct.Memory** %MEMORY
  %loadMem_45e101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 33
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 1
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 15
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %2553 to i64*
  %2554 = load i64, i64* %RBP.i673
  %2555 = sub i64 %2554, 56
  %2556 = load i64, i64* %PC.i671
  %2557 = add i64 %2556, 3
  store i64 %2557, i64* %PC.i671
  %2558 = inttoptr i64 %2555 to i32*
  %2559 = load i32, i32* %2558
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_45e101, %struct.Memory** %MEMORY
  %loadMem_45e104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 1
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %2566 to i64*
  %2567 = load i64, i64* %RAX.i670
  %2568 = load i64, i64* %PC.i669
  %2569 = add i64 %2568, 2
  store i64 %2569, i64* %PC.i669
  %2570 = shl i64 %2567, 32
  %2571 = ashr i64 %2570, 33
  %2572 = trunc i64 %2567 to i8
  %2573 = and i8 %2572, 1
  %2574 = trunc i64 %2571 to i32
  %2575 = and i64 %2571, 4294967295
  store i64 %2575, i64* %RAX.i670, align 8
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2573, i8* %2576, align 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2578 = and i32 %2574, 255
  %2579 = call i32 @llvm.ctpop.i32(i32 %2578)
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  %2582 = xor i8 %2581, 1
  store i8 %2582, i8* %2577, align 1
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2583, align 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2585 = icmp eq i32 %2574, 0
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %2584, align 1
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2588 = lshr i32 %2574, 31
  %2589 = trunc i32 %2588 to i8
  store i8 %2589, i8* %2587, align 1
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2590, align 1
  store %struct.Memory* %loadMem_45e104, %struct.Memory** %MEMORY
  %loadMem_45e107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 33
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2593 to i64*
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 1
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %EAX.i667 = bitcast %union.anon* %2596 to i32*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 5
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %2599 to i64*
  %2600 = load i32, i32* %EAX.i667
  %2601 = zext i32 %2600 to i64
  %2602 = load i64, i64* %PC.i666
  %2603 = add i64 %2602, 2
  store i64 %2603, i64* %PC.i666
  %2604 = and i64 %2601, 4294967295
  store i64 %2604, i64* %RCX.i668, align 8
  store %struct.Memory* %loadMem_45e107, %struct.Memory** %MEMORY
  %loadMem_45e109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 15
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %RBP.i665
  %2615 = sub i64 %2614, 100
  %2616 = load i64, i64* %PC.i663
  %2617 = add i64 %2616, 3
  store i64 %2617, i64* %PC.i663
  %2618 = inttoptr i64 %2615 to i32*
  %2619 = load i32, i32* %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RAX.i664, align 8
  store %struct.Memory* %loadMem_45e109, %struct.Memory** %MEMORY
  %loadMem_45e10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 5
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %2627 = bitcast %union.anon* %2626 to %struct.anon.2*
  %CL.i660 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2627, i32 0, i32 0
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RAX.i661
  %2632 = load i8, i8* %CL.i660
  %2633 = zext i8 %2632 to i64
  %2634 = load i64, i64* %PC.i659
  %2635 = add i64 %2634, 2
  store i64 %2635, i64* %PC.i659
  %2636 = trunc i64 %2633 to i5
  switch i5 %2636, label %2643 [
    i5 0, label %routine_shll__cl___eax.exit662
    i5 1, label %2637
  ]

; <label>:2637:                                   ; preds = %routine_shll__cl___eax.exit749
  %2638 = trunc i64 %2631 to i32
  %2639 = shl i32 %2638, 1
  %2640 = icmp slt i32 %2638, 0
  %2641 = icmp slt i32 %2639, 0
  %2642 = xor i1 %2640, %2641
  br label %2652

; <label>:2643:                                   ; preds = %routine_shll__cl___eax.exit749
  %2644 = and i64 %2633, 31
  %2645 = add i64 %2644, 4294967295
  %2646 = and i64 %2631, 4294967295
  %2647 = and i64 %2645, 4294967295
  %2648 = shl i64 %2646, %2647
  %2649 = trunc i64 %2648 to i32
  %2650 = icmp slt i32 %2649, 0
  %2651 = shl i32 %2649, 1
  br label %2652

; <label>:2652:                                   ; preds = %2643, %2637
  %2653 = phi i1 [ %2640, %2637 ], [ %2650, %2643 ]
  %2654 = phi i1 [ %2642, %2637 ], [ false, %2643 ]
  %2655 = phi i32 [ %2639, %2637 ], [ %2651, %2643 ]
  %2656 = zext i32 %2655 to i64
  store i64 %2656, i64* %RAX.i661, align 8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2658 = zext i1 %2653 to i8
  store i8 %2658, i8* %2657, align 1
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2660 = and i32 %2655, 254
  %2661 = call i32 @llvm.ctpop.i32(i32 %2660)
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  %2664 = xor i8 %2663, 1
  store i8 %2664, i8* %2659, align 1
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2665, align 1
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2667 = icmp eq i32 %2655, 0
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %2666, align 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2670 = lshr i32 %2655, 31
  %2671 = trunc i32 %2670 to i8
  store i8 %2671, i8* %2669, align 1
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2673 = zext i1 %2654 to i8
  store i8 %2673, i8* %2672, align 1
  br label %routine_shll__cl___eax.exit662

routine_shll__cl___eax.exit662:                   ; preds = %routine_shll__cl___eax.exit749, %2652
  store %struct.Memory* %loadMem_45e10c, %struct.Memory** %MEMORY
  %loadMem_45e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RAX.i658
  %2681 = load i64, i64* %PC.i657
  %2682 = add i64 %2681, 3
  store i64 %2682, i64* %PC.i657
  %2683 = trunc i64 %2680 to i32
  %2684 = sub i32 %2683, 1
  %2685 = zext i32 %2684 to i64
  store i64 %2685, i64* %RAX.i658, align 8
  %2686 = icmp ult i32 %2683, 1
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2687, i8* %2688, align 1
  %2689 = and i32 %2684, 255
  %2690 = call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2693, i8* %2694, align 1
  %2695 = xor i64 1, %2680
  %2696 = trunc i64 %2695 to i32
  %2697 = xor i32 %2696, %2684
  %2698 = lshr i32 %2697, 4
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2700, i8* %2701, align 1
  %2702 = icmp eq i32 %2684, 0
  %2703 = zext i1 %2702 to i8
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2703, i8* %2704, align 1
  %2705 = lshr i32 %2684, 31
  %2706 = trunc i32 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2706, i8* %2707, align 1
  %2708 = lshr i32 %2683, 31
  %2709 = xor i32 %2705, %2708
  %2710 = add i32 %2709, %2708
  %2711 = icmp eq i32 %2710, 2
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2712, i8* %2713, align 1
  store %struct.Memory* %loadMem_45e10e, %struct.Memory** %MEMORY
  %loadMem_45e111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %EAX.i656 = bitcast %union.anon* %2719 to i32*
  %2720 = load i32, i32* %EAX.i656
  %2721 = zext i32 %2720 to i64
  %2722 = load i64, i64* %PC.i655
  %2723 = add i64 %2722, 7
  store i64 %2723, i64* %PC.i655
  store i32 %2720, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*)
  store %struct.Memory* %loadMem_45e111, %struct.Memory** %MEMORY
  %loadMem_45e118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 11
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RDI.i653 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 15
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RBP.i654
  %2734 = sub i64 %2733, 40
  %2735 = load i64, i64* %PC.i652
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %PC.i652
  %2737 = inttoptr i64 %2734 to i32*
  %2738 = load i32, i32* %2737
  %2739 = sext i32 %2738 to i64
  store i64 %2739, i64* %RDI.i653, align 8
  store %struct.Memory* %loadMem_45e118, %struct.Memory** %MEMORY
  %loadMem_45e11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 9
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RSI.i650 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 15
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %2748 to i64*
  %2749 = load i64, i64* %RBP.i651
  %2750 = sub i64 %2749, 112
  %2751 = load i64, i64* %PC.i649
  %2752 = add i64 %2751, 4
  store i64 %2752, i64* %PC.i649
  %2753 = inttoptr i64 %2750 to i64*
  %2754 = load i64, i64* %2753
  store i64 %2754, i64* %RSI.i650, align 8
  store %struct.Memory* %loadMem_45e11c, %struct.Memory** %MEMORY
  %loadMem1_45e120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %PC.i648
  %2759 = add i64 %2758, -380992
  %2760 = load i64, i64* %PC.i648
  %2761 = add i64 %2760, 5
  %2762 = load i64, i64* %PC.i648
  %2763 = add i64 %2762, 5
  store i64 %2763, i64* %PC.i648
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2765 = load i64, i64* %2764, align 8
  %2766 = add i64 %2765, -8
  %2767 = inttoptr i64 %2766 to i64*
  store i64 %2761, i64* %2767
  store i64 %2766, i64* %2764, align 8
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2759, i64* %2768, align 8
  store %struct.Memory* %loadMem1_45e120, %struct.Memory** %MEMORY
  %loadMem2_45e120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e120 = load i64, i64* %3
  %2769 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_45e120)
  store %struct.Memory* %2769, %struct.Memory** %MEMORY
  %loadMem_45e125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 1
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %2775 to i64*
  %2776 = load i64, i64* %RAX.i646
  %2777 = load i64, i64* %PC.i645
  %2778 = add i64 %2777, 8
  store i64 %2778, i64* %PC.i645
  store i64 %2776, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store %struct.Memory* %loadMem_45e125, %struct.Memory** %MEMORY
  %loadMem_45e12d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 1
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %RAX.i644
  %2786 = load i64, i64* %PC.i643
  %2787 = add i64 %2786, 4
  store i64 %2787, i64* %PC.i643
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2788, align 1
  %2789 = trunc i64 %2785 to i32
  %2790 = and i32 %2789, 255
  %2791 = call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2794, i8* %2795, align 1
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2796, align 1
  %2797 = icmp eq i64 %2785, 0
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2798, i8* %2799, align 1
  %2800 = lshr i64 %2785, 63
  %2801 = trunc i64 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2801, i8* %2802, align 1
  %2803 = lshr i64 %2785, 63
  %2804 = xor i64 %2800, %2803
  %2805 = add i64 %2804, %2803
  %2806 = icmp eq i64 %2805, 2
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2807, i8* %2808, align 1
  store %struct.Memory* %loadMem_45e12d, %struct.Memory** %MEMORY
  %loadMem_45e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 33
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %PC.i642
  %2813 = add i64 %2812, 21
  %2814 = load i64, i64* %PC.i642
  %2815 = add i64 %2814, 6
  %2816 = load i64, i64* %PC.i642
  %2817 = add i64 %2816, 6
  store i64 %2817, i64* %PC.i642
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2819 = load i8, i8* %2818, align 1
  %2820 = icmp eq i8 %2819, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %BRANCH_TAKEN, align 1
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2823 = select i1 %2820, i64 %2813, i64 %2815
  store i64 %2823, i64* %2822, align 8
  store %struct.Memory* %loadMem_45e131, %struct.Memory** %MEMORY
  %loadBr_45e131 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e131 = icmp eq i8 %loadBr_45e131, 1
  br i1 %cmpBr_45e131, label %block_.L_45e146, label %block_45e137

block_45e137:                                     ; preds = %routine_shll__cl___eax.exit662
  %loadMem_45e137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 11
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RDI.i641 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %PC.i640
  %2831 = add i64 %2830, 10
  store i64 %2831, i64* %PC.i640
  store i64 ptrtoint (%G__0x4c2240_type* @G__0x4c2240 to i64), i64* %RDI.i641, align 8
  store %struct.Memory* %loadMem_45e137, %struct.Memory** %MEMORY
  %loadMem1_45e141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 33
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2834 to i64*
  %2835 = load i64, i64* %PC.i639
  %2836 = add i64 %2835, -19793
  %2837 = load i64, i64* %PC.i639
  %2838 = add i64 %2837, 5
  %2839 = load i64, i64* %PC.i639
  %2840 = add i64 %2839, 5
  store i64 %2840, i64* %PC.i639
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2842 = load i64, i64* %2841, align 8
  %2843 = add i64 %2842, -8
  %2844 = inttoptr i64 %2843 to i64*
  store i64 %2838, i64* %2844
  store i64 %2843, i64* %2841, align 8
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2836, i64* %2845, align 8
  store %struct.Memory* %loadMem1_45e141, %struct.Memory** %MEMORY
  %loadMem2_45e141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e141 = load i64, i64* %3
  %call2_45e141 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_45e141, %struct.Memory* %loadMem2_45e141)
  store %struct.Memory* %call2_45e141, %struct.Memory** %MEMORY
  br label %block_.L_45e146

block_.L_45e146:                                  ; preds = %block_45e137, %routine_shll__cl___eax.exit662
  %loadMem_45e146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 1
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %2851 to i64*
  %2852 = load i64, i64* %PC.i637
  %2853 = add i64 %2852, 5
  store i64 %2853, i64* %PC.i637
  store i64 4, i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_45e146, %struct.Memory** %MEMORY
  %loadMem_45e14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %EAX.i635 = bitcast %union.anon* %2859 to i32*
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2861 = getelementptr inbounds %struct.GPR, %struct.GPR* %2860, i32 0, i32 9
  %2862 = getelementptr inbounds %struct.Reg, %struct.Reg* %2861, i32 0, i32 0
  %RSI.i636 = bitcast %union.anon* %2862 to i64*
  %2863 = load i32, i32* %EAX.i635
  %2864 = zext i32 %2863 to i64
  %2865 = load i64, i64* %PC.i634
  %2866 = add i64 %2865, 2
  store i64 %2866, i64* %PC.i634
  %2867 = and i64 %2864, 4294967295
  store i64 %2867, i64* %RSI.i636, align 8
  store %struct.Memory* %loadMem_45e14b, %struct.Memory** %MEMORY
  %loadMem_45e14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 33
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2870 to i64*
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 11
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %RDI.i632 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 15
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %RBP.i633
  %2878 = sub i64 %2877, 40
  %2879 = load i64, i64* %PC.i631
  %2880 = add i64 %2879, 4
  store i64 %2880, i64* %PC.i631
  %2881 = inttoptr i64 %2878 to i32*
  %2882 = load i32, i32* %2881
  %2883 = sext i32 %2882 to i64
  store i64 %2883, i64* %RDI.i632, align 8
  store %struct.Memory* %loadMem_45e14d, %struct.Memory** %MEMORY
  %loadMem1_45e151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %PC.i630
  %2888 = add i64 %2887, -381041
  %2889 = load i64, i64* %PC.i630
  %2890 = add i64 %2889, 5
  %2891 = load i64, i64* %PC.i630
  %2892 = add i64 %2891, 5
  store i64 %2892, i64* %PC.i630
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2894 = load i64, i64* %2893, align 8
  %2895 = add i64 %2894, -8
  %2896 = inttoptr i64 %2895 to i64*
  store i64 %2890, i64* %2896
  store i64 %2895, i64* %2893, align 8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2888, i64* %2897, align 8
  store %struct.Memory* %loadMem1_45e151, %struct.Memory** %MEMORY
  %loadMem2_45e151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e151 = load i64, i64* %3
  %2898 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_45e151)
  store %struct.Memory* %2898, %struct.Memory** %MEMORY
  %loadMem_45e156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 1
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %RAX.i626
  %2906 = load i64, i64* %PC.i625
  %2907 = add i64 %2906, 8
  store i64 %2907, i64* %PC.i625
  store i64 %2905, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store %struct.Memory* %loadMem_45e156, %struct.Memory** %MEMORY
  %loadMem_45e15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %2913 to i64*
  %2914 = load i64, i64* %RAX.i624
  %2915 = load i64, i64* %PC.i623
  %2916 = add i64 %2915, 4
  store i64 %2916, i64* %PC.i623
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2917, align 1
  %2918 = trunc i64 %2914 to i32
  %2919 = and i32 %2918, 255
  %2920 = call i32 @llvm.ctpop.i32(i32 %2919)
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = xor i8 %2922, 1
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2923, i8* %2924, align 1
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2925, align 1
  %2926 = icmp eq i64 %2914, 0
  %2927 = zext i1 %2926 to i8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2927, i8* %2928, align 1
  %2929 = lshr i64 %2914, 63
  %2930 = trunc i64 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2930, i8* %2931, align 1
  %2932 = lshr i64 %2914, 63
  %2933 = xor i64 %2929, %2932
  %2934 = add i64 %2933, %2932
  %2935 = icmp eq i64 %2934, 2
  %2936 = zext i1 %2935 to i8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2936, i8* %2937, align 1
  store %struct.Memory* %loadMem_45e15e, %struct.Memory** %MEMORY
  %loadMem_45e162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %PC.i622
  %2942 = add i64 %2941, 21
  %2943 = load i64, i64* %PC.i622
  %2944 = add i64 %2943, 6
  %2945 = load i64, i64* %PC.i622
  %2946 = add i64 %2945, 6
  store i64 %2946, i64* %PC.i622
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2948 = load i8, i8* %2947, align 1
  %2949 = icmp eq i8 %2948, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %BRANCH_TAKEN, align 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2952 = select i1 %2949, i64 %2942, i64 %2944
  store i64 %2952, i64* %2951, align 8
  store %struct.Memory* %loadMem_45e162, %struct.Memory** %MEMORY
  %loadBr_45e162 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e162 = icmp eq i8 %loadBr_45e162, 1
  br i1 %cmpBr_45e162, label %block_.L_45e177, label %block_45e168

block_45e168:                                     ; preds = %block_.L_45e146
  %loadMem_45e168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 11
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RDI.i621 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %PC.i620
  %2960 = add i64 %2959, 10
  store i64 %2960, i64* %PC.i620
  store i64 ptrtoint (%G__0x4c226b_type* @G__0x4c226b to i64), i64* %RDI.i621, align 8
  store %struct.Memory* %loadMem_45e168, %struct.Memory** %MEMORY
  %loadMem1_45e172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 33
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %PC.i619
  %2965 = add i64 %2964, -19842
  %2966 = load i64, i64* %PC.i619
  %2967 = add i64 %2966, 5
  %2968 = load i64, i64* %PC.i619
  %2969 = add i64 %2968, 5
  store i64 %2969, i64* %PC.i619
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2971 = load i64, i64* %2970, align 8
  %2972 = add i64 %2971, -8
  %2973 = inttoptr i64 %2972 to i64*
  store i64 %2967, i64* %2973
  store i64 %2972, i64* %2970, align 8
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2965, i64* %2974, align 8
  store %struct.Memory* %loadMem1_45e172, %struct.Memory** %MEMORY
  %loadMem2_45e172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e172 = load i64, i64* %3
  %call2_45e172 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_45e172, %struct.Memory* %loadMem2_45e172)
  store %struct.Memory* %call2_45e172, %struct.Memory** %MEMORY
  br label %block_.L_45e177

block_.L_45e177:                                  ; preds = %block_45e168, %block_.L_45e146
  %loadMem_45e177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 1
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %PC.i617
  %2982 = add i64 %2981, 5
  store i64 %2982, i64* %PC.i617
  store i64 4, i64* %RAX.i618, align 8
  store %struct.Memory* %loadMem_45e177, %struct.Memory** %MEMORY
  %loadMem_45e17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 1
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %EAX.i615 = bitcast %union.anon* %2988 to i32*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 9
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RSI.i616 = bitcast %union.anon* %2991 to i64*
  %2992 = load i32, i32* %EAX.i615
  %2993 = zext i32 %2992 to i64
  %2994 = load i64, i64* %PC.i614
  %2995 = add i64 %2994, 2
  store i64 %2995, i64* %PC.i614
  %2996 = and i64 %2993, 4294967295
  store i64 %2996, i64* %RSI.i616, align 8
  store %struct.Memory* %loadMem_45e17c, %struct.Memory** %MEMORY
  %loadMem_45e17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 1
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %3002 to i64*
  %3003 = load i64, i64* %PC.i612
  %3004 = add i64 %3003, 7
  store i64 %3004, i64* %PC.i612
  %3005 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*)
  %3006 = zext i32 %3005 to i64
  store i64 %3006, i64* %RAX.i613, align 8
  store %struct.Memory* %loadMem_45e17e, %struct.Memory** %MEMORY
  %loadMem_45e185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RAX.i611
  %3014 = load i64, i64* %PC.i610
  %3015 = add i64 %3014, 2
  store i64 %3015, i64* %PC.i610
  %3016 = trunc i64 %3013 to i32
  %3017 = shl i32 %3016, 1
  %3018 = icmp slt i32 %3016, 0
  %3019 = icmp slt i32 %3017, 0
  %3020 = xor i1 %3018, %3019
  %3021 = zext i32 %3017 to i64
  store i64 %3021, i64* %RAX.i611, align 8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3023 = zext i1 %3018 to i8
  store i8 %3023, i8* %3022, align 1
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3025 = and i32 %3017, 254
  %3026 = call i32 @llvm.ctpop.i32(i32 %3025)
  %3027 = trunc i32 %3026 to i8
  %3028 = and i8 %3027, 1
  %3029 = xor i8 %3028, 1
  store i8 %3029, i8* %3024, align 1
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3030, align 1
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3032 = icmp eq i32 %3017, 0
  %3033 = zext i1 %3032 to i8
  store i8 %3033, i8* %3031, align 1
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3035 = lshr i32 %3017, 31
  %3036 = trunc i32 %3035 to i8
  store i8 %3036, i8* %3034, align 1
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3038 = zext i1 %3020 to i8
  store i8 %3038, i8* %3037, align 1
  store %struct.Memory* %loadMem_45e185, %struct.Memory** %MEMORY
  %loadMem_45e188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 33
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 1
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %3044 to i64*
  %3045 = load i64, i64* %RAX.i609
  %3046 = load i64, i64* %PC.i608
  %3047 = add i64 %3046, 3
  store i64 %3047, i64* %PC.i608
  %3048 = trunc i64 %3045 to i32
  %3049 = add i32 1, %3048
  %3050 = zext i32 %3049 to i64
  store i64 %3050, i64* %RAX.i609, align 8
  %3051 = icmp ult i32 %3049, %3048
  %3052 = icmp ult i32 %3049, 1
  %3053 = or i1 %3051, %3052
  %3054 = zext i1 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3054, i8* %3055, align 1
  %3056 = and i32 %3049, 255
  %3057 = call i32 @llvm.ctpop.i32(i32 %3056)
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = xor i8 %3059, 1
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3060, i8* %3061, align 1
  %3062 = xor i64 1, %3045
  %3063 = trunc i64 %3062 to i32
  %3064 = xor i32 %3063, %3049
  %3065 = lshr i32 %3064, 4
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3067, i8* %3068, align 1
  %3069 = icmp eq i32 %3049, 0
  %3070 = zext i1 %3069 to i8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3070, i8* %3071, align 1
  %3072 = lshr i32 %3049, 31
  %3073 = trunc i32 %3072 to i8
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3073, i8* %3074, align 1
  %3075 = lshr i32 %3048, 31
  %3076 = xor i32 %3072, %3075
  %3077 = add i32 %3076, %3072
  %3078 = icmp eq i32 %3077, 2
  %3079 = zext i1 %3078 to i8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3079, i8* %3080, align 1
  store %struct.Memory* %loadMem_45e188, %struct.Memory** %MEMORY
  %loadMem_45e18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 1
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %3086 to i32*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 11
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RDI.i607 = bitcast %union.anon* %3089 to i64*
  %3090 = load i32, i32* %EAX.i606
  %3091 = zext i32 %3090 to i64
  %3092 = load i64, i64* %PC.i605
  %3093 = add i64 %3092, 3
  store i64 %3093, i64* %PC.i605
  %3094 = shl i64 %3091, 32
  %3095 = ashr exact i64 %3094, 32
  store i64 %3095, i64* %RDI.i607, align 8
  store %struct.Memory* %loadMem_45e18b, %struct.Memory** %MEMORY
  %loadMem1_45e18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 33
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %PC.i604
  %3100 = add i64 %3099, -381102
  %3101 = load i64, i64* %PC.i604
  %3102 = add i64 %3101, 5
  %3103 = load i64, i64* %PC.i604
  %3104 = add i64 %3103, 5
  store i64 %3104, i64* %PC.i604
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3106 = load i64, i64* %3105, align 8
  %3107 = add i64 %3106, -8
  %3108 = inttoptr i64 %3107 to i64*
  store i64 %3102, i64* %3108
  store i64 %3107, i64* %3105, align 8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3100, i64* %3109, align 8
  store %struct.Memory* %loadMem1_45e18e, %struct.Memory** %MEMORY
  %loadMem2_45e18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e18e = load i64, i64* %3
  %3110 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_45e18e)
  store %struct.Memory* %3110, %struct.Memory** %MEMORY
  %loadMem_45e193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 33
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3113 to i64*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 1
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %3116 to i64*
  %3117 = load i64, i64* %RAX.i601
  %3118 = load i64, i64* %PC.i600
  %3119 = add i64 %3118, 8
  store i64 %3119, i64* %PC.i600
  store i64 %3117, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store %struct.Memory* %loadMem_45e193, %struct.Memory** %MEMORY
  %loadMem_45e19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 1
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RAX.i599
  %3127 = load i64, i64* %PC.i598
  %3128 = add i64 %3127, 4
  store i64 %3128, i64* %PC.i598
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3129, align 1
  %3130 = trunc i64 %3126 to i32
  %3131 = and i32 %3130, 255
  %3132 = call i32 @llvm.ctpop.i32(i32 %3131)
  %3133 = trunc i32 %3132 to i8
  %3134 = and i8 %3133, 1
  %3135 = xor i8 %3134, 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3135, i8* %3136, align 1
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3137, align 1
  %3138 = icmp eq i64 %3126, 0
  %3139 = zext i1 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3139, i8* %3140, align 1
  %3141 = lshr i64 %3126, 63
  %3142 = trunc i64 %3141 to i8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3142, i8* %3143, align 1
  %3144 = lshr i64 %3126, 63
  %3145 = xor i64 %3141, %3144
  %3146 = add i64 %3145, %3144
  %3147 = icmp eq i64 %3146, 2
  %3148 = zext i1 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3148, i8* %3149, align 1
  store %struct.Memory* %loadMem_45e19b, %struct.Memory** %MEMORY
  %loadMem_45e19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3152 to i64*
  %3153 = load i64, i64* %PC.i597
  %3154 = add i64 %3153, 21
  %3155 = load i64, i64* %PC.i597
  %3156 = add i64 %3155, 6
  %3157 = load i64, i64* %PC.i597
  %3158 = add i64 %3157, 6
  store i64 %3158, i64* %PC.i597
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3160 = load i8, i8* %3159, align 1
  %3161 = icmp eq i8 %3160, 0
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %BRANCH_TAKEN, align 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3164 = select i1 %3161, i64 %3154, i64 %3156
  store i64 %3164, i64* %3163, align 8
  store %struct.Memory* %loadMem_45e19f, %struct.Memory** %MEMORY
  %loadBr_45e19f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e19f = icmp eq i8 %loadBr_45e19f, 1
  br i1 %cmpBr_45e19f, label %block_.L_45e1b4, label %block_45e1a5

block_45e1a5:                                     ; preds = %block_.L_45e177
  %loadMem_45e1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 11
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RDI.i596 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %PC.i595
  %3172 = add i64 %3171, 10
  store i64 %3172, i64* %PC.i595
  store i64 ptrtoint (%G__0x4c2296_type* @G__0x4c2296 to i64), i64* %RDI.i596, align 8
  store %struct.Memory* %loadMem_45e1a5, %struct.Memory** %MEMORY
  %loadMem1_45e1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3175 to i64*
  %3176 = load i64, i64* %PC.i594
  %3177 = add i64 %3176, -19903
  %3178 = load i64, i64* %PC.i594
  %3179 = add i64 %3178, 5
  %3180 = load i64, i64* %PC.i594
  %3181 = add i64 %3180, 5
  store i64 %3181, i64* %PC.i594
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3183 = load i64, i64* %3182, align 8
  %3184 = add i64 %3183, -8
  %3185 = inttoptr i64 %3184 to i64*
  store i64 %3179, i64* %3185
  store i64 %3184, i64* %3182, align 8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3177, i64* %3186, align 8
  store %struct.Memory* %loadMem1_45e1af, %struct.Memory** %MEMORY
  %loadMem2_45e1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e1af = load i64, i64* %3
  %call2_45e1af = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_45e1af, %struct.Memory* %loadMem2_45e1af)
  store %struct.Memory* %call2_45e1af, %struct.Memory** %MEMORY
  br label %block_.L_45e1b4

block_.L_45e1b4:                                  ; preds = %block_45e1a5, %block_.L_45e177
  %loadMem_45e1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %3192 to i64*
  %3193 = load i64, i64* %PC.i592
  %3194 = add i64 %3193, 5
  store i64 %3194, i64* %PC.i592
  store i64 4, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_45e1b4, %struct.Memory** %MEMORY
  %loadMem_45e1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 1
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %EAX.i590 = bitcast %union.anon* %3200 to i32*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 9
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RSI.i591 = bitcast %union.anon* %3203 to i64*
  %3204 = load i32, i32* %EAX.i590
  %3205 = zext i32 %3204 to i64
  %3206 = load i64, i64* %PC.i589
  %3207 = add i64 %3206, 2
  store i64 %3207, i64* %PC.i589
  %3208 = and i64 %3205, 4294967295
  store i64 %3208, i64* %RSI.i591, align 8
  store %struct.Memory* %loadMem_45e1b9, %struct.Memory** %MEMORY
  %loadMem_45e1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 11
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RDI.i587 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 15
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %3217 to i64*
  %3218 = load i64, i64* %RBP.i588
  %3219 = sub i64 %3218, 48
  %3220 = load i64, i64* %PC.i586
  %3221 = add i64 %3220, 4
  store i64 %3221, i64* %PC.i586
  %3222 = inttoptr i64 %3219 to i32*
  %3223 = load i32, i32* %3222
  %3224 = sext i32 %3223 to i64
  store i64 %3224, i64* %RDI.i587, align 8
  store %struct.Memory* %loadMem_45e1bb, %struct.Memory** %MEMORY
  %loadMem1_45e1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %PC.i585
  %3229 = add i64 %3228, -381151
  %3230 = load i64, i64* %PC.i585
  %3231 = add i64 %3230, 5
  %3232 = load i64, i64* %PC.i585
  %3233 = add i64 %3232, 5
  store i64 %3233, i64* %PC.i585
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3235 = load i64, i64* %3234, align 8
  %3236 = add i64 %3235, -8
  %3237 = inttoptr i64 %3236 to i64*
  store i64 %3231, i64* %3237
  store i64 %3236, i64* %3234, align 8
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3229, i64* %3238, align 8
  store %struct.Memory* %loadMem1_45e1bf, %struct.Memory** %MEMORY
  %loadMem2_45e1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e1bf = load i64, i64* %3
  %3239 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_45e1bf)
  store %struct.Memory* %3239, %struct.Memory** %MEMORY
  %loadMem_45e1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %3245 to i64*
  %3246 = load i64, i64* %RAX.i581
  %3247 = load i64, i64* %PC.i580
  %3248 = add i64 %3247, 8
  store i64 %3248, i64* %PC.i580
  store i64 %3246, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*)
  store %struct.Memory* %loadMem_45e1c4, %struct.Memory** %MEMORY
  %loadMem_45e1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 33
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 1
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RAX.i579 = bitcast %union.anon* %3254 to i64*
  %3255 = load i64, i64* %RAX.i579
  %3256 = load i64, i64* %PC.i578
  %3257 = add i64 %3256, 4
  store i64 %3257, i64* %PC.i578
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3258, align 1
  %3259 = trunc i64 %3255 to i32
  %3260 = and i32 %3259, 255
  %3261 = call i32 @llvm.ctpop.i32(i32 %3260)
  %3262 = trunc i32 %3261 to i8
  %3263 = and i8 %3262, 1
  %3264 = xor i8 %3263, 1
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3264, i8* %3265, align 1
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3266, align 1
  %3267 = icmp eq i64 %3255, 0
  %3268 = zext i1 %3267 to i8
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3268, i8* %3269, align 1
  %3270 = lshr i64 %3255, 63
  %3271 = trunc i64 %3270 to i8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3271, i8* %3272, align 1
  %3273 = lshr i64 %3255, 63
  %3274 = xor i64 %3270, %3273
  %3275 = add i64 %3274, %3273
  %3276 = icmp eq i64 %3275, 2
  %3277 = zext i1 %3276 to i8
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3277, i8* %3278, align 1
  store %struct.Memory* %loadMem_45e1cc, %struct.Memory** %MEMORY
  %loadMem_45e1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %PC.i577
  %3283 = add i64 %3282, 21
  %3284 = load i64, i64* %PC.i577
  %3285 = add i64 %3284, 6
  %3286 = load i64, i64* %PC.i577
  %3287 = add i64 %3286, 6
  store i64 %3287, i64* %PC.i577
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3289 = load i8, i8* %3288, align 1
  %3290 = icmp eq i8 %3289, 0
  %3291 = zext i1 %3290 to i8
  store i8 %3291, i8* %BRANCH_TAKEN, align 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3293 = select i1 %3290, i64 %3283, i64 %3285
  store i64 %3293, i64* %3292, align 8
  store %struct.Memory* %loadMem_45e1d0, %struct.Memory** %MEMORY
  %loadBr_45e1d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e1d0 = icmp eq i8 %loadBr_45e1d0, 1
  br i1 %cmpBr_45e1d0, label %block_.L_45e1e5, label %block_45e1d6

block_45e1d6:                                     ; preds = %block_.L_45e1b4
  %loadMem_45e1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 11
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %RDI.i576 = bitcast %union.anon* %3299 to i64*
  %3300 = load i64, i64* %PC.i575
  %3301 = add i64 %3300, 10
  store i64 %3301, i64* %PC.i575
  store i64 ptrtoint (%G__0x4c22b8_type* @G__0x4c22b8 to i64), i64* %RDI.i576, align 8
  store %struct.Memory* %loadMem_45e1d6, %struct.Memory** %MEMORY
  %loadMem1_45e1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 33
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %PC.i574
  %3306 = add i64 %3305, -19952
  %3307 = load i64, i64* %PC.i574
  %3308 = add i64 %3307, 5
  %3309 = load i64, i64* %PC.i574
  %3310 = add i64 %3309, 5
  store i64 %3310, i64* %PC.i574
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3312 = load i64, i64* %3311, align 8
  %3313 = add i64 %3312, -8
  %3314 = inttoptr i64 %3313 to i64*
  store i64 %3308, i64* %3314
  store i64 %3313, i64* %3311, align 8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3306, i64* %3315, align 8
  store %struct.Memory* %loadMem1_45e1e0, %struct.Memory** %MEMORY
  %loadMem2_45e1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e1e0 = load i64, i64* %3
  %call2_45e1e0 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_45e1e0, %struct.Memory* %loadMem2_45e1e0)
  store %struct.Memory* %call2_45e1e0, %struct.Memory** %MEMORY
  br label %block_.L_45e1e5

block_.L_45e1e5:                                  ; preds = %block_45e1d6, %block_.L_45e1b4
  %loadMem_45e1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 1
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %PC.i572
  %3323 = add i64 %3322, 5
  store i64 %3323, i64* %PC.i572
  store i64 4, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_45e1e5, %struct.Memory** %MEMORY
  %loadMem_45e1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 1
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %EAX.i570 = bitcast %union.anon* %3329 to i32*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 9
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RSI.i571 = bitcast %union.anon* %3332 to i64*
  %3333 = load i32, i32* %EAX.i570
  %3334 = zext i32 %3333 to i64
  %3335 = load i64, i64* %PC.i569
  %3336 = add i64 %3335, 2
  store i64 %3336, i64* %PC.i569
  %3337 = and i64 %3334, 4294967295
  store i64 %3337, i64* %RSI.i571, align 8
  store %struct.Memory* %loadMem_45e1ea, %struct.Memory** %MEMORY
  %loadMem_45e1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 11
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RDI.i567 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 15
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %3346 to i64*
  %3347 = load i64, i64* %RBP.i568
  %3348 = sub i64 %3347, 28
  %3349 = load i64, i64* %PC.i566
  %3350 = add i64 %3349, 4
  store i64 %3350, i64* %PC.i566
  %3351 = inttoptr i64 %3348 to i32*
  %3352 = load i32, i32* %3351
  %3353 = sext i32 %3352 to i64
  store i64 %3353, i64* %RDI.i567, align 8
  store %struct.Memory* %loadMem_45e1ec, %struct.Memory** %MEMORY
  %loadMem1_45e1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3356 to i64*
  %3357 = load i64, i64* %PC.i565
  %3358 = add i64 %3357, -381200
  %3359 = load i64, i64* %PC.i565
  %3360 = add i64 %3359, 5
  %3361 = load i64, i64* %PC.i565
  %3362 = add i64 %3361, 5
  store i64 %3362, i64* %PC.i565
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3364 = load i64, i64* %3363, align 8
  %3365 = add i64 %3364, -8
  %3366 = inttoptr i64 %3365 to i64*
  store i64 %3360, i64* %3366
  store i64 %3365, i64* %3363, align 8
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3358, i64* %3367, align 8
  store %struct.Memory* %loadMem1_45e1f0, %struct.Memory** %MEMORY
  %loadMem2_45e1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e1f0 = load i64, i64* %3
  %3368 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_45e1f0)
  store %struct.Memory* %3368, %struct.Memory** %MEMORY
  %loadMem_45e1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 1
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %RAX.i562
  %3376 = load i64, i64* %PC.i561
  %3377 = add i64 %3376, 8
  store i64 %3377, i64* %PC.i561
  store i64 %3375, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store %struct.Memory* %loadMem_45e1f5, %struct.Memory** %MEMORY
  %loadMem_45e1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 1
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %3383 to i64*
  %3384 = load i64, i64* %RAX.i560
  %3385 = load i64, i64* %PC.i559
  %3386 = add i64 %3385, 4
  store i64 %3386, i64* %PC.i559
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3387, align 1
  %3388 = trunc i64 %3384 to i32
  %3389 = and i32 %3388, 255
  %3390 = call i32 @llvm.ctpop.i32(i32 %3389)
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  %3393 = xor i8 %3392, 1
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3393, i8* %3394, align 1
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3395, align 1
  %3396 = icmp eq i64 %3384, 0
  %3397 = zext i1 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3397, i8* %3398, align 1
  %3399 = lshr i64 %3384, 63
  %3400 = trunc i64 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3400, i8* %3401, align 1
  %3402 = lshr i64 %3384, 63
  %3403 = xor i64 %3399, %3402
  %3404 = add i64 %3403, %3402
  %3405 = icmp eq i64 %3404, 2
  %3406 = zext i1 %3405 to i8
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3406, i8* %3407, align 1
  store %struct.Memory* %loadMem_45e1fd, %struct.Memory** %MEMORY
  %loadMem_45e201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %PC.i558
  %3412 = add i64 %3411, 21
  %3413 = load i64, i64* %PC.i558
  %3414 = add i64 %3413, 6
  %3415 = load i64, i64* %PC.i558
  %3416 = add i64 %3415, 6
  store i64 %3416, i64* %PC.i558
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3418 = load i8, i8* %3417, align 1
  %3419 = icmp eq i8 %3418, 0
  %3420 = zext i1 %3419 to i8
  store i8 %3420, i8* %BRANCH_TAKEN, align 1
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3422 = select i1 %3419, i64 %3412, i64 %3414
  store i64 %3422, i64* %3421, align 8
  store %struct.Memory* %loadMem_45e201, %struct.Memory** %MEMORY
  %loadBr_45e201 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e201 = icmp eq i8 %loadBr_45e201, 1
  br i1 %cmpBr_45e201, label %block_.L_45e216, label %block_45e207

block_45e207:                                     ; preds = %block_.L_45e1e5
  %loadMem_45e207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 33
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 11
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %RDI.i557 = bitcast %union.anon* %3428 to i64*
  %3429 = load i64, i64* %PC.i556
  %3430 = add i64 %3429, 10
  store i64 %3430, i64* %PC.i556
  store i64 ptrtoint (%G__0x4c22db_type* @G__0x4c22db to i64), i64* %RDI.i557, align 8
  store %struct.Memory* %loadMem_45e207, %struct.Memory** %MEMORY
  %loadMem1_45e211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %PC.i555
  %3435 = add i64 %3434, -20001
  %3436 = load i64, i64* %PC.i555
  %3437 = add i64 %3436, 5
  %3438 = load i64, i64* %PC.i555
  %3439 = add i64 %3438, 5
  store i64 %3439, i64* %PC.i555
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3441 = load i64, i64* %3440, align 8
  %3442 = add i64 %3441, -8
  %3443 = inttoptr i64 %3442 to i64*
  store i64 %3437, i64* %3443
  store i64 %3442, i64* %3440, align 8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3435, i64* %3444, align 8
  store %struct.Memory* %loadMem1_45e211, %struct.Memory** %MEMORY
  %loadMem2_45e211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e211 = load i64, i64* %3
  %call2_45e211 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_45e211, %struct.Memory* %loadMem2_45e211)
  store %struct.Memory* %call2_45e211, %struct.Memory** %MEMORY
  br label %block_.L_45e216

block_.L_45e216:                                  ; preds = %block_45e207, %block_.L_45e1e5
  %loadMem_45e216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 11
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RDI.i554 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %PC.i553
  %3452 = add i64 %3451, 10
  store i64 %3452, i64* %PC.i553
  store i64 ptrtoint (%G__0x6f9698_type* @G__0x6f9698 to i64), i64* %RDI.i554, align 8
  store %struct.Memory* %loadMem_45e216, %struct.Memory** %MEMORY
  %loadMem_45e220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 9
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %RSI.i552 = bitcast %union.anon* %3458 to i64*
  %3459 = load i64, i64* %PC.i551
  %3460 = add i64 %3459, 5
  store i64 %3460, i64* %PC.i551
  store i64 8, i64* %RSI.i552, align 8
  store %struct.Memory* %loadMem_45e220, %struct.Memory** %MEMORY
  %loadMem_45e225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3463 to i64*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 7
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RDX.i550 = bitcast %union.anon* %3466 to i64*
  %3467 = load i64, i64* %PC.i549
  %3468 = add i64 %3467, 5
  store i64 %3468, i64* %PC.i549
  store i64 2, i64* %RDX.i550, align 8
  store %struct.Memory* %loadMem_45e225, %struct.Memory** %MEMORY
  %loadMem_45e22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 17
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3474 to i32*
  %3475 = bitcast i32* %R8D.i to i64*
  %3476 = load i64, i64* %PC.i548
  %3477 = add i64 %3476, 6
  store i64 %3477, i64* %PC.i548
  store i64 4, i64* %3475, align 8
  store %struct.Memory* %loadMem_45e22a, %struct.Memory** %MEMORY
  %loadMem_45e230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %PC.i546
  %3485 = add i64 %3484, 8
  store i64 %3485, i64* %PC.i546
  %3486 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3486, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_45e230, %struct.Memory** %MEMORY
  %loadMem_45e238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 33
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 1
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 5
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RAX.i544
  %3497 = add i64 %3496, 36
  %3498 = load i64, i64* %PC.i543
  %3499 = add i64 %3498, 3
  store i64 %3499, i64* %PC.i543
  %3500 = inttoptr i64 %3497 to i32*
  %3501 = load i32, i32* %3500
  %3502 = zext i32 %3501 to i64
  store i64 %3502, i64* %RCX.i545, align 8
  store %struct.Memory* %loadMem_45e238, %struct.Memory** %MEMORY
  %loadMem_45e23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 33
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 5
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %RCX.i542
  %3510 = load i64, i64* %PC.i541
  %3511 = add i64 %3510, 3
  store i64 %3511, i64* %PC.i541
  %3512 = trunc i64 %3509 to i32
  %3513 = add i32 1, %3512
  %3514 = zext i32 %3513 to i64
  store i64 %3514, i64* %RCX.i542, align 8
  %3515 = icmp ult i32 %3513, %3512
  %3516 = icmp ult i32 %3513, 1
  %3517 = or i1 %3515, %3516
  %3518 = zext i1 %3517 to i8
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3518, i8* %3519, align 1
  %3520 = and i32 %3513, 255
  %3521 = call i32 @llvm.ctpop.i32(i32 %3520)
  %3522 = trunc i32 %3521 to i8
  %3523 = and i8 %3522, 1
  %3524 = xor i8 %3523, 1
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3524, i8* %3525, align 1
  %3526 = xor i64 1, %3509
  %3527 = trunc i64 %3526 to i32
  %3528 = xor i32 %3527, %3513
  %3529 = lshr i32 %3528, 4
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3531, i8* %3532, align 1
  %3533 = icmp eq i32 %3513, 0
  %3534 = zext i1 %3533 to i8
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3534, i8* %3535, align 1
  %3536 = lshr i32 %3513, 31
  %3537 = trunc i32 %3536 to i8
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3537, i8* %3538, align 1
  %3539 = lshr i32 %3512, 31
  %3540 = xor i32 %3536, %3539
  %3541 = add i32 %3540, %3536
  %3542 = icmp eq i32 %3541, 2
  %3543 = zext i1 %3542 to i8
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3543, i8* %3544, align 1
  store %struct.Memory* %loadMem_45e23b, %struct.Memory** %MEMORY
  %loadMem1_45e23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 33
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3547 to i64*
  %3548 = load i64, i64* %PC.i540
  %3549 = add i64 %3548, -18014
  %3550 = load i64, i64* %PC.i540
  %3551 = add i64 %3550, 5
  %3552 = load i64, i64* %PC.i540
  %3553 = add i64 %3552, 5
  store i64 %3553, i64* %PC.i540
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3555 = load i64, i64* %3554, align 8
  %3556 = add i64 %3555, -8
  %3557 = inttoptr i64 %3556 to i64*
  store i64 %3551, i64* %3557
  store i64 %3556, i64* %3554, align 8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3549, i64* %3558, align 8
  store %struct.Memory* %loadMem1_45e23e, %struct.Memory** %MEMORY
  %loadMem2_45e23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e23e = load i64, i64* %3
  %call2_45e23e = call %struct.Memory* @sub_459be0.get_mem4Dint(%struct.State* %0, i64 %loadPC_45e23e, %struct.Memory* %loadMem2_45e23e)
  store %struct.Memory* %call2_45e23e, %struct.Memory** %MEMORY
  %loadMem_45e243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 5
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %3564 to i64*
  %3565 = load i64, i64* %PC.i538
  %3566 = add i64 %3565, 5
  store i64 %3566, i64* %PC.i538
  store i64 2, i64* %RCX.i539, align 8
  store %struct.Memory* %loadMem_45e243, %struct.Memory** %MEMORY
  %loadMem_45e248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 7
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RDX.i537 = bitcast %union.anon* %3572 to i64*
  %3573 = load i64, i64* %PC.i536
  %3574 = add i64 %3573, 7
  store i64 %3574, i64* %PC.i536
  %3575 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*)
  %3576 = zext i32 %3575 to i64
  store i64 %3576, i64* %RDX.i537, align 8
  store %struct.Memory* %loadMem_45e248, %struct.Memory** %MEMORY
  %loadMem_45e24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 11
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RDI.i535 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %PC.i534
  %3584 = add i64 %3583, 8
  store i64 %3584, i64* %PC.i534
  %3585 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store i64 %3585, i64* %RDI.i535, align 8
  store %struct.Memory* %loadMem_45e24f, %struct.Memory** %MEMORY
  %loadMem_45e257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 7
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %EDX.i532 = bitcast %union.anon* %3591 to i32*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 19
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %R9.i533 = bitcast %union.anon* %3594 to i64*
  %3595 = load i32, i32* %EDX.i532
  %3596 = zext i32 %3595 to i64
  %3597 = load i64, i64* %PC.i531
  %3598 = add i64 %3597, 3
  store i64 %3598, i64* %PC.i531
  %3599 = shl i64 %3596, 32
  %3600 = ashr exact i64 %3599, 32
  store i64 %3600, i64* %R9.i533, align 8
  store %struct.Memory* %loadMem_45e257, %struct.Memory** %MEMORY
  %loadMem_45e25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 19
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %R9.i530 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %R9.i530
  %3608 = load i64, i64* %PC.i529
  %3609 = add i64 %3608, 4
  store i64 %3609, i64* %PC.i529
  %3610 = shl i64 %3607, 1
  %3611 = icmp slt i64 %3610, 0
  %3612 = shl i64 %3610, 1
  store i64 %3612, i64* %R9.i530, align 8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3614 = zext i1 %3611 to i8
  store i8 %3614, i8* %3613, align 1
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3616 = trunc i64 %3612 to i32
  %3617 = and i32 %3616, 254
  %3618 = call i32 @llvm.ctpop.i32(i32 %3617)
  %3619 = trunc i32 %3618 to i8
  %3620 = and i8 %3619, 1
  %3621 = xor i8 %3620, 1
  store i8 %3621, i8* %3615, align 1
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3622, align 1
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3624 = icmp eq i64 %3612, 0
  %3625 = zext i1 %3624 to i8
  store i8 %3625, i8* %3623, align 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3627 = lshr i64 %3612, 63
  %3628 = trunc i64 %3627 to i8
  store i8 %3628, i8* %3626, align 1
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3629, align 1
  store %struct.Memory* %loadMem_45e25a, %struct.Memory** %MEMORY
  %loadMem_45e25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 33
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3632 to i64*
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 11
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %RDI.i527 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 19
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %R9.i528 = bitcast %union.anon* %3638 to i64*
  %3639 = load i64, i64* %RDI.i527
  %3640 = load i64, i64* %R9.i528
  %3641 = load i64, i64* %PC.i526
  %3642 = add i64 %3641, 3
  store i64 %3642, i64* %PC.i526
  %3643 = add i64 %3640, %3639
  store i64 %3643, i64* %RDI.i527, align 8
  %3644 = icmp ult i64 %3643, %3639
  %3645 = icmp ult i64 %3643, %3640
  %3646 = or i1 %3644, %3645
  %3647 = zext i1 %3646 to i8
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3647, i8* %3648, align 1
  %3649 = trunc i64 %3643 to i32
  %3650 = and i32 %3649, 255
  %3651 = call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3654, i8* %3655, align 1
  %3656 = xor i64 %3640, %3639
  %3657 = xor i64 %3656, %3643
  %3658 = lshr i64 %3657, 4
  %3659 = trunc i64 %3658 to i8
  %3660 = and i8 %3659, 1
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3660, i8* %3661, align 1
  %3662 = icmp eq i64 %3643, 0
  %3663 = zext i1 %3662 to i8
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3663, i8* %3664, align 1
  %3665 = lshr i64 %3643, 63
  %3666 = trunc i64 %3665 to i8
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3666, i8* %3667, align 1
  %3668 = lshr i64 %3639, 63
  %3669 = lshr i64 %3640, 63
  %3670 = xor i64 %3665, %3668
  %3671 = xor i64 %3665, %3669
  %3672 = add i64 %3670, %3671
  %3673 = icmp eq i64 %3672, 2
  %3674 = zext i1 %3673 to i8
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3674, i8* %3675, align 1
  store %struct.Memory* %loadMem_45e25e, %struct.Memory** %MEMORY
  %loadMem_45e261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 11
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RDI.i525 = bitcast %union.anon* %3681 to i64*
  %3682 = load i64, i64* %RDI.i525
  %3683 = load i64, i64* %PC.i524
  %3684 = add i64 %3683, 8
  store i64 %3684, i64* %PC.i524
  store i64 %3682, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store %struct.Memory* %loadMem_45e261, %struct.Memory** %MEMORY
  %loadMem_45e269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 7
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 15
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RBP.i523
  %3695 = sub i64 %3694, 28
  %3696 = load i64, i64* %PC.i521
  %3697 = add i64 %3696, 3
  store i64 %3697, i64* %PC.i521
  %3698 = inttoptr i64 %3695 to i32*
  %3699 = load i32, i32* %3698
  %3700 = zext i32 %3699 to i64
  store i64 %3700, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_45e269, %struct.Memory** %MEMORY
  %loadMem_45e26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 33
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 1
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %EAX.i519 = bitcast %union.anon* %3706 to i32*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 15
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %3709 to i64*
  %3710 = load i64, i64* %RBP.i520
  %3711 = sub i64 %3710, 116
  %3712 = load i32, i32* %EAX.i519
  %3713 = zext i32 %3712 to i64
  %3714 = load i64, i64* %PC.i518
  %3715 = add i64 %3714, 3
  store i64 %3715, i64* %PC.i518
  %3716 = inttoptr i64 %3711 to i32*
  store i32 %3712, i32* %3716
  store %struct.Memory* %loadMem_45e26c, %struct.Memory** %MEMORY
  %loadMem_45e26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 33
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %3719 to i64*
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 7
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %EDX.i516 = bitcast %union.anon* %3722 to i32*
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 1
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %3725 to i64*
  %3726 = load i32, i32* %EDX.i516
  %3727 = zext i32 %3726 to i64
  %3728 = load i64, i64* %PC.i515
  %3729 = add i64 %3728, 2
  store i64 %3729, i64* %PC.i515
  %3730 = and i64 %3727, 4294967295
  store i64 %3730, i64* %RAX.i517, align 8
  store %struct.Memory* %loadMem_45e26f, %struct.Memory** %MEMORY
  %loadMem_45e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 33
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3733 to i64*
  %3734 = load i64, i64* %PC.i514
  %3735 = add i64 %3734, 1
  store i64 %3735, i64* %PC.i514
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3738 = bitcast %union.anon* %3737 to i32*
  %3739 = load i32, i32* %3738, align 8
  %3740 = sext i32 %3739 to i64
  %3741 = lshr i64 %3740, 32
  store i64 %3741, i64* %3736, align 8
  store %struct.Memory* %loadMem_45e271, %struct.Memory** %MEMORY
  %loadMem_45e272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 33
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3744 to i64*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 5
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %ECX.i511 = bitcast %union.anon* %3747 to i32*
  %3748 = load i32, i32* %ECX.i511
  %3749 = zext i32 %3748 to i64
  %3750 = load i64, i64* %PC.i510
  %3751 = add i64 %3750, 2
  store i64 %3751, i64* %PC.i510
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3753 = bitcast %union.anon* %3752 to i32*
  %3754 = load i32, i32* %3753, align 8
  %3755 = zext i32 %3754 to i64
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3757 = bitcast %union.anon* %3756 to i32*
  %3758 = load i32, i32* %3757, align 8
  %3759 = zext i32 %3758 to i64
  %3760 = shl i64 %3749, 32
  %3761 = ashr exact i64 %3760, 32
  %3762 = shl i64 %3759, 32
  %3763 = or i64 %3762, %3755
  %3764 = sdiv i64 %3763, %3761
  %3765 = shl i64 %3764, 32
  %3766 = ashr exact i64 %3765, 32
  %3767 = icmp eq i64 %3764, %3766
  br i1 %3767, label %3772, label %3768

; <label>:3768:                                   ; preds = %block_.L_45e216
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3770 = load i64, i64* %3769, align 8
  %3771 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3770, %struct.Memory* %loadMem_45e272)
  br label %routine_idivl__ecx.exit

; <label>:3772:                                   ; preds = %block_.L_45e216
  %3773 = srem i64 %3763, %3761
  %3774 = getelementptr inbounds %union.anon, %union.anon* %3752, i64 0, i32 0
  %3775 = and i64 %3764, 4294967295
  store i64 %3775, i64* %3774, align 8
  %3776 = getelementptr inbounds %union.anon, %union.anon* %3756, i64 0, i32 0
  %3777 = and i64 %3773, 4294967295
  store i64 %3777, i64* %3776, align 8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3778, align 1
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3779, align 1
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3780, align 1
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3781, align 1
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3782, align 1
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3783, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3768, %3772
  %3784 = phi %struct.Memory* [ %3771, %3768 ], [ %loadMem_45e272, %3772 ]
  store %struct.Memory* %3784, %struct.Memory** %MEMORY
  %loadMem_45e274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 11
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RDI.i509 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %PC.i508
  %3792 = add i64 %3791, 8
  store i64 %3792, i64* %PC.i508
  %3793 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %3793, i64* %RDI.i509, align 8
  store %struct.Memory* %loadMem_45e274, %struct.Memory** %MEMORY
  %loadMem_45e27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 33
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3796 to i64*
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3798 = getelementptr inbounds %struct.GPR, %struct.GPR* %3797, i32 0, i32 1
  %3799 = getelementptr inbounds %struct.Reg, %struct.Reg* %3798, i32 0, i32 0
  %EAX.i506 = bitcast %union.anon* %3799 to i32*
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 19
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %R9.i507 = bitcast %union.anon* %3802 to i64*
  %3803 = load i32, i32* %EAX.i506
  %3804 = zext i32 %3803 to i64
  %3805 = load i64, i64* %PC.i505
  %3806 = add i64 %3805, 3
  store i64 %3806, i64* %PC.i505
  %3807 = shl i64 %3804, 32
  %3808 = ashr exact i64 %3807, 32
  store i64 %3808, i64* %R9.i507, align 8
  store %struct.Memory* %loadMem_45e27c, %struct.Memory** %MEMORY
  %loadMem_45e27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 19
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %R9.i504 = bitcast %union.anon* %3814 to i64*
  %3815 = load i64, i64* %R9.i504
  %3816 = load i64, i64* %PC.i503
  %3817 = add i64 %3816, 4
  store i64 %3817, i64* %PC.i503
  %3818 = shl i64 %3815, 1
  %3819 = icmp slt i64 %3818, 0
  %3820 = shl i64 %3818, 1
  store i64 %3820, i64* %R9.i504, align 8
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3822 = zext i1 %3819 to i8
  store i8 %3822, i8* %3821, align 1
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3824 = trunc i64 %3820 to i32
  %3825 = and i32 %3824, 254
  %3826 = call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  store i8 %3829, i8* %3823, align 1
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3830, align 1
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3832 = icmp eq i64 %3820, 0
  %3833 = zext i1 %3832 to i8
  store i8 %3833, i8* %3831, align 1
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3835 = lshr i64 %3820, 63
  %3836 = trunc i64 %3835 to i8
  store i8 %3836, i8* %3834, align 1
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3837, align 1
  store %struct.Memory* %loadMem_45e27f, %struct.Memory** %MEMORY
  %loadMem_45e283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 33
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 11
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RDI.i502 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 19
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %R9.i = bitcast %union.anon* %3846 to i64*
  %3847 = load i64, i64* %RDI.i502
  %3848 = load i64, i64* %R9.i
  %3849 = load i64, i64* %PC.i501
  %3850 = add i64 %3849, 3
  store i64 %3850, i64* %PC.i501
  %3851 = add i64 %3848, %3847
  store i64 %3851, i64* %RDI.i502, align 8
  %3852 = icmp ult i64 %3851, %3847
  %3853 = icmp ult i64 %3851, %3848
  %3854 = or i1 %3852, %3853
  %3855 = zext i1 %3854 to i8
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3855, i8* %3856, align 1
  %3857 = trunc i64 %3851 to i32
  %3858 = and i32 %3857, 255
  %3859 = call i32 @llvm.ctpop.i32(i32 %3858)
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3862, i8* %3863, align 1
  %3864 = xor i64 %3848, %3847
  %3865 = xor i64 %3864, %3851
  %3866 = lshr i64 %3865, 4
  %3867 = trunc i64 %3866 to i8
  %3868 = and i8 %3867, 1
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3868, i8* %3869, align 1
  %3870 = icmp eq i64 %3851, 0
  %3871 = zext i1 %3870 to i8
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3871, i8* %3872, align 1
  %3873 = lshr i64 %3851, 63
  %3874 = trunc i64 %3873 to i8
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3874, i8* %3875, align 1
  %3876 = lshr i64 %3847, 63
  %3877 = lshr i64 %3848, 63
  %3878 = xor i64 %3873, %3876
  %3879 = xor i64 %3873, %3877
  %3880 = add i64 %3878, %3879
  %3881 = icmp eq i64 %3880, 2
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3882, i8* %3883, align 1
  store %struct.Memory* %loadMem_45e283, %struct.Memory** %MEMORY
  %loadMem_45e286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 33
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 11
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %RDI.i500 = bitcast %union.anon* %3889 to i64*
  %3890 = load i64, i64* %RDI.i500
  %3891 = load i64, i64* %PC.i499
  %3892 = add i64 %3891, 8
  store i64 %3892, i64* %PC.i499
  store i64 %3890, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store %struct.Memory* %loadMem_45e286, %struct.Memory** %MEMORY
  %loadMem_45e28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 11
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RDI.i498 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %PC.i497
  %3900 = add i64 %3899, 8
  store i64 %3900, i64* %PC.i497
  %3901 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store i64 %3901, i64* %RDI.i498, align 8
  store %struct.Memory* %loadMem_45e28e, %struct.Memory** %MEMORY
  %loadMem_45e296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 11
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RDI.i496 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %RDI.i496
  %3909 = load i64, i64* %PC.i495
  %3910 = add i64 %3909, 6
  store i64 %3910, i64* %PC.i495
  %3911 = inttoptr i64 %3908 to i32*
  store i32 1, i32* %3911
  store %struct.Memory* %loadMem_45e296, %struct.Memory** %MEMORY
  %loadMem_45e29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 15
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %3917 to i64*
  %3918 = load i64, i64* %RBP.i494
  %3919 = sub i64 %3918, 4
  %3920 = load i64, i64* %PC.i493
  %3921 = add i64 %3920, 7
  store i64 %3921, i64* %PC.i493
  %3922 = inttoptr i64 %3919 to i32*
  store i32 3, i32* %3922
  store %struct.Memory* %loadMem_45e29c, %struct.Memory** %MEMORY
  br label %block_.L_45e2a3

block_.L_45e2a3:                                  ; preds = %block_.L_45e312, %routine_idivl__ecx.exit
  %loadMem_45e2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 1
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 15
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %RBP.i492
  %3933 = sub i64 %3932, 4
  %3934 = load i64, i64* %PC.i490
  %3935 = add i64 %3934, 3
  store i64 %3935, i64* %PC.i490
  %3936 = inttoptr i64 %3933 to i32*
  %3937 = load i32, i32* %3936
  %3938 = zext i32 %3937 to i64
  store i64 %3938, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_45e2a3, %struct.Memory** %MEMORY
  %loadMem_45e2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 1
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %EAX.i488 = bitcast %union.anon* %3944 to i32*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 15
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3947 to i64*
  %3948 = load i32, i32* %EAX.i488
  %3949 = zext i32 %3948 to i64
  %3950 = load i64, i64* %RBP.i489
  %3951 = sub i64 %3950, 56
  %3952 = load i64, i64* %PC.i487
  %3953 = add i64 %3952, 3
  store i64 %3953, i64* %PC.i487
  %3954 = inttoptr i64 %3951 to i32*
  %3955 = load i32, i32* %3954
  %3956 = sub i32 %3948, %3955
  %3957 = icmp ult i32 %3948, %3955
  %3958 = zext i1 %3957 to i8
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3958, i8* %3959, align 1
  %3960 = and i32 %3956, 255
  %3961 = call i32 @llvm.ctpop.i32(i32 %3960)
  %3962 = trunc i32 %3961 to i8
  %3963 = and i8 %3962, 1
  %3964 = xor i8 %3963, 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3964, i8* %3965, align 1
  %3966 = xor i32 %3955, %3948
  %3967 = xor i32 %3966, %3956
  %3968 = lshr i32 %3967, 4
  %3969 = trunc i32 %3968 to i8
  %3970 = and i8 %3969, 1
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3970, i8* %3971, align 1
  %3972 = icmp eq i32 %3956, 0
  %3973 = zext i1 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3973, i8* %3974, align 1
  %3975 = lshr i32 %3956, 31
  %3976 = trunc i32 %3975 to i8
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3976, i8* %3977, align 1
  %3978 = lshr i32 %3948, 31
  %3979 = lshr i32 %3955, 31
  %3980 = xor i32 %3979, %3978
  %3981 = xor i32 %3975, %3978
  %3982 = add i32 %3981, %3980
  %3983 = icmp eq i32 %3982, 2
  %3984 = zext i1 %3983 to i8
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3984, i8* %3985, align 1
  store %struct.Memory* %loadMem_45e2a6, %struct.Memory** %MEMORY
  %loadMem_45e2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 33
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %PC.i486
  %3990 = add i64 %3989, 119
  %3991 = load i64, i64* %PC.i486
  %3992 = add i64 %3991, 6
  %3993 = load i64, i64* %PC.i486
  %3994 = add i64 %3993, 6
  store i64 %3994, i64* %PC.i486
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3996 = load i8, i8* %3995, align 1
  %3997 = icmp eq i8 %3996, 0
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3999 = load i8, i8* %3998, align 1
  %4000 = icmp ne i8 %3999, 0
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4002 = load i8, i8* %4001, align 1
  %4003 = icmp ne i8 %4002, 0
  %4004 = xor i1 %4000, %4003
  %4005 = xor i1 %4004, true
  %4006 = and i1 %3997, %4005
  %4007 = zext i1 %4006 to i8
  store i8 %4007, i8* %BRANCH_TAKEN, align 1
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4009 = select i1 %4006, i64 %3990, i64 %3992
  store i64 %4009, i64* %4008, align 8
  store %struct.Memory* %loadMem_45e2a9, %struct.Memory** %MEMORY
  %loadBr_45e2a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e2a9 = icmp eq i8 %loadBr_45e2a9, 1
  br i1 %cmpBr_45e2a9, label %block_.L_45e320, label %block_45e2af

block_45e2af:                                     ; preds = %block_.L_45e2a3
  %loadMem_45e2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 1
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %4015 to i64*
  %4016 = load i64, i64* %PC.i484
  %4017 = add i64 %4016, 5
  store i64 %4017, i64* %PC.i484
  store i64 1, i64* %RAX.i485, align 8
  store %struct.Memory* %loadMem_45e2af, %struct.Memory** %MEMORY
  %loadMem_45e2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 5
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 15
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RBP.i483
  %4028 = sub i64 %4027, 4
  %4029 = load i64, i64* %PC.i481
  %4030 = add i64 %4029, 3
  store i64 %4030, i64* %PC.i481
  %4031 = inttoptr i64 %4028 to i32*
  %4032 = load i32, i32* %4031
  %4033 = zext i32 %4032 to i64
  store i64 %4033, i64* %RCX.i482, align 8
  store %struct.Memory* %loadMem_45e2b4, %struct.Memory** %MEMORY
  %loadMem_45e2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 5
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RCX.i480
  %4041 = load i64, i64* %PC.i479
  %4042 = add i64 %4041, 2
  store i64 %4042, i64* %PC.i479
  %4043 = shl i64 %4040, 32
  %4044 = ashr i64 %4043, 33
  %4045 = trunc i64 %4040 to i8
  %4046 = and i8 %4045, 1
  %4047 = trunc i64 %4044 to i32
  %4048 = and i64 %4044, 4294967295
  store i64 %4048, i64* %RCX.i480, align 8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4046, i8* %4049, align 1
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4051 = and i32 %4047, 255
  %4052 = call i32 @llvm.ctpop.i32(i32 %4051)
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = xor i8 %4054, 1
  store i8 %4055, i8* %4050, align 1
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4056, align 1
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4058 = icmp eq i32 %4047, 0
  %4059 = zext i1 %4058 to i8
  store i8 %4059, i8* %4057, align 1
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4061 = lshr i32 %4047, 31
  %4062 = trunc i32 %4061 to i8
  store i8 %4062, i8* %4060, align 1
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4063, align 1
  store %struct.Memory* %loadMem_45e2b7, %struct.Memory** %MEMORY
  %loadMem_45e2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 5
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %4070 = bitcast %union.anon* %4069 to %struct.anon.2*
  %CL.i476 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4070, i32 0, i32 0
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 1
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %4073 to i64*
  %4074 = load i64, i64* %RAX.i477
  %4075 = load i8, i8* %CL.i476
  %4076 = zext i8 %4075 to i64
  %4077 = load i64, i64* %PC.i475
  %4078 = add i64 %4077, 2
  store i64 %4078, i64* %PC.i475
  %4079 = trunc i64 %4076 to i5
  switch i5 %4079, label %4086 [
    i5 0, label %routine_shll__cl___eax.exit478
    i5 1, label %4080
  ]

; <label>:4080:                                   ; preds = %block_45e2af
  %4081 = trunc i64 %4074 to i32
  %4082 = shl i32 %4081, 1
  %4083 = icmp slt i32 %4081, 0
  %4084 = icmp slt i32 %4082, 0
  %4085 = xor i1 %4083, %4084
  br label %4095

; <label>:4086:                                   ; preds = %block_45e2af
  %4087 = and i64 %4076, 31
  %4088 = add i64 %4087, 4294967295
  %4089 = and i64 %4074, 4294967295
  %4090 = and i64 %4088, 4294967295
  %4091 = shl i64 %4089, %4090
  %4092 = trunc i64 %4091 to i32
  %4093 = icmp slt i32 %4092, 0
  %4094 = shl i32 %4092, 1
  br label %4095

; <label>:4095:                                   ; preds = %4086, %4080
  %4096 = phi i1 [ %4083, %4080 ], [ %4093, %4086 ]
  %4097 = phi i1 [ %4085, %4080 ], [ false, %4086 ]
  %4098 = phi i32 [ %4082, %4080 ], [ %4094, %4086 ]
  %4099 = zext i32 %4098 to i64
  store i64 %4099, i64* %RAX.i477, align 8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4101 = zext i1 %4096 to i8
  store i8 %4101, i8* %4100, align 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4103 = and i32 %4098, 254
  %4104 = call i32 @llvm.ctpop.i32(i32 %4103)
  %4105 = trunc i32 %4104 to i8
  %4106 = and i8 %4105, 1
  %4107 = xor i8 %4106, 1
  store i8 %4107, i8* %4102, align 1
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4108, align 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4110 = icmp eq i32 %4098, 0
  %4111 = zext i1 %4110 to i8
  store i8 %4111, i8* %4109, align 1
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4113 = lshr i32 %4098, 31
  %4114 = trunc i32 %4113 to i8
  store i8 %4114, i8* %4112, align 1
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4116 = zext i1 %4097 to i8
  store i8 %4116, i8* %4115, align 1
  br label %routine_shll__cl___eax.exit478

routine_shll__cl___eax.exit478:                   ; preds = %block_45e2af, %4095
  store %struct.Memory* %loadMem_45e2ba, %struct.Memory** %MEMORY
  %loadMem_45e2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 1
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %EAX.i473 = bitcast %union.anon* %4122 to i32*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 15
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RBP.i474
  %4127 = sub i64 %4126, 16
  %4128 = load i32, i32* %EAX.i473
  %4129 = zext i32 %4128 to i64
  %4130 = load i64, i64* %PC.i472
  %4131 = add i64 %4130, 3
  store i64 %4131, i64* %PC.i472
  %4132 = inttoptr i64 %4127 to i32*
  store i32 %4128, i32* %4132
  store %struct.Memory* %loadMem_45e2bc, %struct.Memory** %MEMORY
  %loadMem_45e2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 1
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 15
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %RBP.i471
  %4143 = sub i64 %4142, 16
  %4144 = load i64, i64* %PC.i469
  %4145 = add i64 %4144, 3
  store i64 %4145, i64* %PC.i469
  %4146 = inttoptr i64 %4143 to i32*
  %4147 = load i32, i32* %4146
  %4148 = zext i32 %4147 to i64
  store i64 %4148, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_45e2bf, %struct.Memory** %MEMORY
  %loadMem_45e2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 33
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 1
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %4154 to i64*
  %4155 = load i64, i64* %RAX.i468
  %4156 = load i64, i64* %PC.i467
  %4157 = add i64 %4156, 2
  store i64 %4157, i64* %PC.i467
  %4158 = shl i64 %4155, 32
  %4159 = ashr i64 %4158, 33
  %4160 = trunc i64 %4155 to i8
  %4161 = and i8 %4160, 1
  %4162 = trunc i64 %4159 to i32
  %4163 = and i64 %4159, 4294967295
  store i64 %4163, i64* %RAX.i468, align 8
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4161, i8* %4164, align 1
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4166 = and i32 %4162, 255
  %4167 = call i32 @llvm.ctpop.i32(i32 %4166)
  %4168 = trunc i32 %4167 to i8
  %4169 = and i8 %4168, 1
  %4170 = xor i8 %4169, 1
  store i8 %4170, i8* %4165, align 1
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4171, align 1
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4173 = icmp eq i32 %4162, 0
  %4174 = zext i1 %4173 to i8
  store i8 %4174, i8* %4172, align 1
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4176 = lshr i32 %4162, 31
  %4177 = trunc i32 %4176 to i8
  store i8 %4177, i8* %4175, align 1
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4178, align 1
  store %struct.Memory* %loadMem_45e2c2, %struct.Memory** %MEMORY
  %loadMem_45e2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 33
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 1
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %4184 to i32*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 15
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %4187 to i64*
  %4188 = load i64, i64* %RBP.i466
  %4189 = sub i64 %4188, 12
  %4190 = load i32, i32* %EAX.i465
  %4191 = zext i32 %4190 to i64
  %4192 = load i64, i64* %PC.i464
  %4193 = add i64 %4192, 3
  store i64 %4193, i64* %PC.i464
  %4194 = inttoptr i64 %4189 to i32*
  store i32 %4190, i32* %4194
  store %struct.Memory* %loadMem_45e2c5, %struct.Memory** %MEMORY
  %loadMem_45e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 33
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 1
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 15
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %4203 to i64*
  %4204 = load i64, i64* %RBP.i463
  %4205 = sub i64 %4204, 12
  %4206 = load i64, i64* %PC.i461
  %4207 = add i64 %4206, 3
  store i64 %4207, i64* %PC.i461
  %4208 = inttoptr i64 %4205 to i32*
  %4209 = load i32, i32* %4208
  %4210 = zext i32 %4209 to i64
  store i64 %4210, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_45e2c8, %struct.Memory** %MEMORY
  %loadMem_45e2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 33
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4213 to i64*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 1
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %EAX.i459 = bitcast %union.anon* %4216 to i32*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 15
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %4219 to i64*
  %4220 = load i64, i64* %RBP.i460
  %4221 = sub i64 %4220, 8
  %4222 = load i32, i32* %EAX.i459
  %4223 = zext i32 %4222 to i64
  %4224 = load i64, i64* %PC.i458
  %4225 = add i64 %4224, 3
  store i64 %4225, i64* %PC.i458
  %4226 = inttoptr i64 %4221 to i32*
  store i32 %4222, i32* %4226
  store %struct.Memory* %loadMem_45e2cb, %struct.Memory** %MEMORY
  br label %block_.L_45e2ce

block_.L_45e2ce:                                  ; preds = %block_45e2da, %routine_shll__cl___eax.exit478
  %loadMem_45e2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 1
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 15
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RBP.i457
  %4237 = sub i64 %4236, 8
  %4238 = load i64, i64* %PC.i455
  %4239 = add i64 %4238, 3
  store i64 %4239, i64* %PC.i455
  %4240 = inttoptr i64 %4237 to i32*
  %4241 = load i32, i32* %4240
  %4242 = zext i32 %4241 to i64
  store i64 %4242, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_45e2ce, %struct.Memory** %MEMORY
  %loadMem_45e2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 1
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %EAX.i453 = bitcast %union.anon* %4248 to i32*
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 15
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %4251 to i64*
  %4252 = load i32, i32* %EAX.i453
  %4253 = zext i32 %4252 to i64
  %4254 = load i64, i64* %RBP.i454
  %4255 = sub i64 %4254, 16
  %4256 = load i64, i64* %PC.i452
  %4257 = add i64 %4256, 3
  store i64 %4257, i64* %PC.i452
  %4258 = inttoptr i64 %4255 to i32*
  %4259 = load i32, i32* %4258
  %4260 = sub i32 %4252, %4259
  %4261 = icmp ult i32 %4252, %4259
  %4262 = zext i1 %4261 to i8
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4262, i8* %4263, align 1
  %4264 = and i32 %4260, 255
  %4265 = call i32 @llvm.ctpop.i32(i32 %4264)
  %4266 = trunc i32 %4265 to i8
  %4267 = and i8 %4266, 1
  %4268 = xor i8 %4267, 1
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4268, i8* %4269, align 1
  %4270 = xor i32 %4259, %4252
  %4271 = xor i32 %4270, %4260
  %4272 = lshr i32 %4271, 4
  %4273 = trunc i32 %4272 to i8
  %4274 = and i8 %4273, 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4274, i8* %4275, align 1
  %4276 = icmp eq i32 %4260, 0
  %4277 = zext i1 %4276 to i8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4277, i8* %4278, align 1
  %4279 = lshr i32 %4260, 31
  %4280 = trunc i32 %4279 to i8
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4280, i8* %4281, align 1
  %4282 = lshr i32 %4252, 31
  %4283 = lshr i32 %4259, 31
  %4284 = xor i32 %4283, %4282
  %4285 = xor i32 %4279, %4282
  %4286 = add i32 %4285, %4284
  %4287 = icmp eq i32 %4286, 2
  %4288 = zext i1 %4287 to i8
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4288, i8* %4289, align 1
  store %struct.Memory* %loadMem_45e2d1, %struct.Memory** %MEMORY
  %loadMem_45e2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 33
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4292 to i64*
  %4293 = load i64, i64* %PC.i451
  %4294 = add i64 %4293, 57
  %4295 = load i64, i64* %PC.i451
  %4296 = add i64 %4295, 6
  %4297 = load i64, i64* %PC.i451
  %4298 = add i64 %4297, 6
  store i64 %4298, i64* %PC.i451
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4300 = load i8, i8* %4299, align 1
  %4301 = icmp ne i8 %4300, 0
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4303 = load i8, i8* %4302, align 1
  %4304 = icmp ne i8 %4303, 0
  %4305 = xor i1 %4301, %4304
  %4306 = xor i1 %4305, true
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %BRANCH_TAKEN, align 1
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4309 = select i1 %4305, i64 %4296, i64 %4294
  store i64 %4309, i64* %4308, align 8
  store %struct.Memory* %loadMem_45e2d4, %struct.Memory** %MEMORY
  %loadBr_45e2d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e2d4 = icmp eq i8 %loadBr_45e2d4, 1
  br i1 %cmpBr_45e2d4, label %block_.L_45e30d, label %block_45e2da

block_45e2da:                                     ; preds = %block_.L_45e2ce
  %loadMem_45e2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 33
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4312 to i64*
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4314 = getelementptr inbounds %struct.GPR, %struct.GPR* %4313, i32 0, i32 1
  %4315 = getelementptr inbounds %struct.Reg, %struct.Reg* %4314, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %4315 to i32*
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 1
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4318 to i64*
  %4319 = load i64, i64* %RAX.i450
  %4320 = load i32, i32* %EAX.i449
  %4321 = zext i32 %4320 to i64
  %4322 = load i64, i64* %PC.i448
  %4323 = add i64 %4322, 2
  store i64 %4323, i64* %PC.i448
  %4324 = xor i64 %4321, %4319
  %4325 = trunc i64 %4324 to i32
  %4326 = and i64 %4324, 4294967295
  store i64 %4326, i64* %RAX.i450, align 8
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4327, align 1
  %4328 = and i32 %4325, 255
  %4329 = call i32 @llvm.ctpop.i32(i32 %4328)
  %4330 = trunc i32 %4329 to i8
  %4331 = and i8 %4330, 1
  %4332 = xor i8 %4331, 1
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4332, i8* %4333, align 1
  %4334 = icmp eq i32 %4325, 0
  %4335 = zext i1 %4334 to i8
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4335, i8* %4336, align 1
  %4337 = lshr i32 %4325, 31
  %4338 = trunc i32 %4337 to i8
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4338, i8* %4339, align 1
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4340, align 1
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4341, align 1
  store %struct.Memory* %loadMem_45e2da, %struct.Memory** %MEMORY
  %loadMem_45e2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 33
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 5
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 15
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4350 to i64*
  %4351 = load i64, i64* %RBP.i447
  %4352 = sub i64 %4351, 4
  %4353 = load i64, i64* %PC.i445
  %4354 = add i64 %4353, 3
  store i64 %4354, i64* %PC.i445
  %4355 = inttoptr i64 %4352 to i32*
  %4356 = load i32, i32* %4355
  %4357 = zext i32 %4356 to i64
  store i64 %4357, i64* %RCX.i446, align 8
  store %struct.Memory* %loadMem_45e2dc, %struct.Memory** %MEMORY
  %loadMem_45e2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 7
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %4363 to i64*
  %4364 = load i64, i64* %PC.i443
  %4365 = add i64 %4364, 8
  store i64 %4365, i64* %PC.i443
  %4366 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store i64 %4366, i64* %RDX.i444, align 8
  store %struct.Memory* %loadMem_45e2df, %struct.Memory** %MEMORY
  %loadMem_45e2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 33
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4369 to i64*
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 9
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %RSI.i441 = bitcast %union.anon* %4372 to i64*
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 15
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %4375 to i64*
  %4376 = load i64, i64* %RBP.i442
  %4377 = sub i64 %4376, 8
  %4378 = load i64, i64* %PC.i440
  %4379 = add i64 %4378, 4
  store i64 %4379, i64* %PC.i440
  %4380 = inttoptr i64 %4377 to i32*
  %4381 = load i32, i32* %4380
  %4382 = sext i32 %4381 to i64
  store i64 %4382, i64* %RSI.i441, align 8
  store %struct.Memory* %loadMem_45e2e7, %struct.Memory** %MEMORY
  %loadMem_45e2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 33
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4385 to i64*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 5
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %ECX.i437 = bitcast %union.anon* %4388 to i32*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 7
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %RDX.i438 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 9
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %RSI.i439 = bitcast %union.anon* %4394 to i64*
  %4395 = load i64, i64* %RDX.i438
  %4396 = load i64, i64* %RSI.i439
  %4397 = mul i64 %4396, 4
  %4398 = add i64 %4397, %4395
  %4399 = load i32, i32* %ECX.i437
  %4400 = zext i32 %4399 to i64
  %4401 = load i64, i64* %PC.i436
  %4402 = add i64 %4401, 3
  store i64 %4402, i64* %PC.i436
  %4403 = inttoptr i64 %4398 to i32*
  store i32 %4399, i32* %4403
  store %struct.Memory* %loadMem_45e2eb, %struct.Memory** %MEMORY
  %loadMem_45e2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 33
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 7
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %4409 to i64*
  %4410 = load i64, i64* %PC.i434
  %4411 = add i64 %4410, 8
  store i64 %4411, i64* %PC.i434
  %4412 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store i64 %4412, i64* %RDX.i435, align 8
  store %struct.Memory* %loadMem_45e2ee, %struct.Memory** %MEMORY
  %loadMem_45e2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 33
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4415 to i64*
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 1
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %4418 to i64*
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 15
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4421 to i64*
  %4422 = load i64, i64* %RAX.i432
  %4423 = load i64, i64* %RBP.i433
  %4424 = sub i64 %4423, 8
  %4425 = load i64, i64* %PC.i431
  %4426 = add i64 %4425, 3
  store i64 %4426, i64* %PC.i431
  %4427 = trunc i64 %4422 to i32
  %4428 = inttoptr i64 %4424 to i32*
  %4429 = load i32, i32* %4428
  %4430 = sub i32 %4427, %4429
  %4431 = zext i32 %4430 to i64
  store i64 %4431, i64* %RAX.i432, align 8
  %4432 = icmp ult i32 %4427, %4429
  %4433 = zext i1 %4432 to i8
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4433, i8* %4434, align 1
  %4435 = and i32 %4430, 255
  %4436 = call i32 @llvm.ctpop.i32(i32 %4435)
  %4437 = trunc i32 %4436 to i8
  %4438 = and i8 %4437, 1
  %4439 = xor i8 %4438, 1
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4439, i8* %4440, align 1
  %4441 = xor i32 %4429, %4427
  %4442 = xor i32 %4441, %4430
  %4443 = lshr i32 %4442, 4
  %4444 = trunc i32 %4443 to i8
  %4445 = and i8 %4444, 1
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4445, i8* %4446, align 1
  %4447 = icmp eq i32 %4430, 0
  %4448 = zext i1 %4447 to i8
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4448, i8* %4449, align 1
  %4450 = lshr i32 %4430, 31
  %4451 = trunc i32 %4450 to i8
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4451, i8* %4452, align 1
  %4453 = lshr i32 %4427, 31
  %4454 = lshr i32 %4429, 31
  %4455 = xor i32 %4454, %4453
  %4456 = xor i32 %4450, %4453
  %4457 = add i32 %4456, %4455
  %4458 = icmp eq i32 %4457, 2
  %4459 = zext i1 %4458 to i8
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4459, i8* %4460, align 1
  store %struct.Memory* %loadMem_45e2f6, %struct.Memory** %MEMORY
  %loadMem_45e2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 33
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 1
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %EAX.i429 = bitcast %union.anon* %4466 to i32*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 9
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RSI.i430 = bitcast %union.anon* %4469 to i64*
  %4470 = load i32, i32* %EAX.i429
  %4471 = zext i32 %4470 to i64
  %4472 = load i64, i64* %PC.i428
  %4473 = add i64 %4472, 3
  store i64 %4473, i64* %PC.i428
  %4474 = shl i64 %4471, 32
  %4475 = ashr exact i64 %4474, 32
  store i64 %4475, i64* %RSI.i430, align 8
  store %struct.Memory* %loadMem_45e2f9, %struct.Memory** %MEMORY
  %loadMem_45e2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 33
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 5
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %ECX.i425 = bitcast %union.anon* %4481 to i32*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 7
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %RDX.i426 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 9
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RSI.i427 = bitcast %union.anon* %4487 to i64*
  %4488 = load i64, i64* %RDX.i426
  %4489 = load i64, i64* %RSI.i427
  %4490 = mul i64 %4489, 4
  %4491 = add i64 %4490, %4488
  %4492 = load i32, i32* %ECX.i425
  %4493 = zext i32 %4492 to i64
  %4494 = load i64, i64* %PC.i424
  %4495 = add i64 %4494, 3
  store i64 %4495, i64* %PC.i424
  %4496 = inttoptr i64 %4491 to i32*
  store i32 %4492, i32* %4496
  store %struct.Memory* %loadMem_45e2fc, %struct.Memory** %MEMORY
  %loadMem_45e2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 1
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %4502 to i64*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 15
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4505 to i64*
  %4506 = load i64, i64* %RBP.i423
  %4507 = sub i64 %4506, 8
  %4508 = load i64, i64* %PC.i421
  %4509 = add i64 %4508, 3
  store i64 %4509, i64* %PC.i421
  %4510 = inttoptr i64 %4507 to i32*
  %4511 = load i32, i32* %4510
  %4512 = zext i32 %4511 to i64
  store i64 %4512, i64* %RAX.i422, align 8
  store %struct.Memory* %loadMem_45e2ff, %struct.Memory** %MEMORY
  %loadMem_45e302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 1
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %RAX.i420 = bitcast %union.anon* %4518 to i64*
  %4519 = load i64, i64* %RAX.i420
  %4520 = load i64, i64* %PC.i419
  %4521 = add i64 %4520, 3
  store i64 %4521, i64* %PC.i419
  %4522 = trunc i64 %4519 to i32
  %4523 = add i32 1, %4522
  %4524 = zext i32 %4523 to i64
  store i64 %4524, i64* %RAX.i420, align 8
  %4525 = icmp ult i32 %4523, %4522
  %4526 = icmp ult i32 %4523, 1
  %4527 = or i1 %4525, %4526
  %4528 = zext i1 %4527 to i8
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4528, i8* %4529, align 1
  %4530 = and i32 %4523, 255
  %4531 = call i32 @llvm.ctpop.i32(i32 %4530)
  %4532 = trunc i32 %4531 to i8
  %4533 = and i8 %4532, 1
  %4534 = xor i8 %4533, 1
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4534, i8* %4535, align 1
  %4536 = xor i64 1, %4519
  %4537 = trunc i64 %4536 to i32
  %4538 = xor i32 %4537, %4523
  %4539 = lshr i32 %4538, 4
  %4540 = trunc i32 %4539 to i8
  %4541 = and i8 %4540, 1
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4541, i8* %4542, align 1
  %4543 = icmp eq i32 %4523, 0
  %4544 = zext i1 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4544, i8* %4545, align 1
  %4546 = lshr i32 %4523, 31
  %4547 = trunc i32 %4546 to i8
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4547, i8* %4548, align 1
  %4549 = lshr i32 %4522, 31
  %4550 = xor i32 %4546, %4549
  %4551 = add i32 %4550, %4546
  %4552 = icmp eq i32 %4551, 2
  %4553 = zext i1 %4552 to i8
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4553, i8* %4554, align 1
  store %struct.Memory* %loadMem_45e302, %struct.Memory** %MEMORY
  %loadMem_45e305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 1
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %4560 to i32*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 15
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %4563 to i64*
  %4564 = load i64, i64* %RBP.i418
  %4565 = sub i64 %4564, 8
  %4566 = load i32, i32* %EAX.i417
  %4567 = zext i32 %4566 to i64
  %4568 = load i64, i64* %PC.i416
  %4569 = add i64 %4568, 3
  store i64 %4569, i64* %PC.i416
  %4570 = inttoptr i64 %4565 to i32*
  store i32 %4566, i32* %4570
  store %struct.Memory* %loadMem_45e305, %struct.Memory** %MEMORY
  %loadMem_45e308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 33
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %PC.i415
  %4575 = add i64 %4574, -58
  %4576 = load i64, i64* %PC.i415
  %4577 = add i64 %4576, 5
  store i64 %4577, i64* %PC.i415
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4575, i64* %4578, align 8
  store %struct.Memory* %loadMem_45e308, %struct.Memory** %MEMORY
  br label %block_.L_45e2ce

block_.L_45e30d:                                  ; preds = %block_.L_45e2ce
  %loadMem_45e30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 33
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4581 to i64*
  %4582 = load i64, i64* %PC.i414
  %4583 = add i64 %4582, 5
  %4584 = load i64, i64* %PC.i414
  %4585 = add i64 %4584, 5
  store i64 %4585, i64* %PC.i414
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4583, i64* %4586, align 8
  store %struct.Memory* %loadMem_45e30d, %struct.Memory** %MEMORY
  br label %block_.L_45e312

block_.L_45e312:                                  ; preds = %block_.L_45e30d
  %loadMem_45e312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 33
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 1
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 15
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %4595 to i64*
  %4596 = load i64, i64* %RBP.i413
  %4597 = sub i64 %4596, 4
  %4598 = load i64, i64* %PC.i411
  %4599 = add i64 %4598, 3
  store i64 %4599, i64* %PC.i411
  %4600 = inttoptr i64 %4597 to i32*
  %4601 = load i32, i32* %4600
  %4602 = zext i32 %4601 to i64
  store i64 %4602, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_45e312, %struct.Memory** %MEMORY
  %loadMem_45e315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 1
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %RAX.i410
  %4610 = load i64, i64* %PC.i409
  %4611 = add i64 %4610, 3
  store i64 %4611, i64* %PC.i409
  %4612 = trunc i64 %4609 to i32
  %4613 = add i32 2, %4612
  %4614 = zext i32 %4613 to i64
  store i64 %4614, i64* %RAX.i410, align 8
  %4615 = icmp ult i32 %4613, %4612
  %4616 = icmp ult i32 %4613, 2
  %4617 = or i1 %4615, %4616
  %4618 = zext i1 %4617 to i8
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4618, i8* %4619, align 1
  %4620 = and i32 %4613, 255
  %4621 = call i32 @llvm.ctpop.i32(i32 %4620)
  %4622 = trunc i32 %4621 to i8
  %4623 = and i8 %4622, 1
  %4624 = xor i8 %4623, 1
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4624, i8* %4625, align 1
  %4626 = xor i64 2, %4609
  %4627 = trunc i64 %4626 to i32
  %4628 = xor i32 %4627, %4613
  %4629 = lshr i32 %4628, 4
  %4630 = trunc i32 %4629 to i8
  %4631 = and i8 %4630, 1
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4631, i8* %4632, align 1
  %4633 = icmp eq i32 %4613, 0
  %4634 = zext i1 %4633 to i8
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4634, i8* %4635, align 1
  %4636 = lshr i32 %4613, 31
  %4637 = trunc i32 %4636 to i8
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4637, i8* %4638, align 1
  %4639 = lshr i32 %4612, 31
  %4640 = xor i32 %4636, %4639
  %4641 = add i32 %4640, %4636
  %4642 = icmp eq i32 %4641, 2
  %4643 = zext i1 %4642 to i8
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4643, i8* %4644, align 1
  store %struct.Memory* %loadMem_45e315, %struct.Memory** %MEMORY
  %loadMem_45e318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 33
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 1
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %4650 to i32*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 15
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4653 to i64*
  %4654 = load i64, i64* %RBP.i408
  %4655 = sub i64 %4654, 4
  %4656 = load i32, i32* %EAX.i407
  %4657 = zext i32 %4656 to i64
  %4658 = load i64, i64* %PC.i406
  %4659 = add i64 %4658, 3
  store i64 %4659, i64* %PC.i406
  %4660 = inttoptr i64 %4655 to i32*
  store i32 %4656, i32* %4660
  store %struct.Memory* %loadMem_45e318, %struct.Memory** %MEMORY
  %loadMem_45e31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4663 to i64*
  %4664 = load i64, i64* %PC.i405
  %4665 = add i64 %4664, -120
  %4666 = load i64, i64* %PC.i405
  %4667 = add i64 %4666, 5
  store i64 %4667, i64* %PC.i405
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4665, i64* %4668, align 8
  store %struct.Memory* %loadMem_45e31b, %struct.Memory** %MEMORY
  br label %block_.L_45e2a3

block_.L_45e320:                                  ; preds = %block_.L_45e2a3
  %loadMem_45e320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 33
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4671 to i64*
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 1
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %4674 to i64*
  %4675 = load i64, i64* %PC.i403
  %4676 = add i64 %4675, 8
  store i64 %4676, i64* %PC.i403
  %4677 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*)
  store i64 %4677, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_45e320, %struct.Memory** %MEMORY
  %loadMem_45e328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 33
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 1
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RAX.i402
  %4685 = load i64, i64* %PC.i401
  %4686 = add i64 %4685, 6
  store i64 %4686, i64* %PC.i401
  %4687 = inttoptr i64 %4684 to i32*
  store i32 1, i32* %4687
  store %struct.Memory* %loadMem_45e328, %struct.Memory** %MEMORY
  %loadMem_45e32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 15
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %4693 to i64*
  %4694 = load i64, i64* %RBP.i400
  %4695 = sub i64 %4694, 4
  %4696 = load i64, i64* %PC.i399
  %4697 = add i64 %4696, 7
  store i64 %4697, i64* %PC.i399
  %4698 = inttoptr i64 %4695 to i32*
  store i32 3, i32* %4698
  store %struct.Memory* %loadMem_45e32e, %struct.Memory** %MEMORY
  br label %block_.L_45e335

block_.L_45e335:                                  ; preds = %block_.L_45e397, %block_.L_45e320
  %loadMem_45e335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 33
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 1
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 15
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %4707 to i64*
  %4708 = load i64, i64* %RBP.i398
  %4709 = sub i64 %4708, 4
  %4710 = load i64, i64* %PC.i396
  %4711 = add i64 %4710, 3
  store i64 %4711, i64* %PC.i396
  %4712 = inttoptr i64 %4709 to i32*
  %4713 = load i32, i32* %4712
  %4714 = zext i32 %4713 to i64
  store i64 %4714, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_45e335, %struct.Memory** %MEMORY
  %loadMem_45e338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 33
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 1
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %4720 to i32*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 15
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %4723 to i64*
  %4724 = load i32, i32* %EAX.i394
  %4725 = zext i32 %4724 to i64
  %4726 = load i64, i64* %RBP.i395
  %4727 = sub i64 %4726, 44
  %4728 = load i64, i64* %PC.i393
  %4729 = add i64 %4728, 3
  store i64 %4729, i64* %PC.i393
  %4730 = inttoptr i64 %4727 to i32*
  %4731 = load i32, i32* %4730
  %4732 = sub i32 %4724, %4731
  %4733 = icmp ult i32 %4724, %4731
  %4734 = zext i1 %4733 to i8
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4734, i8* %4735, align 1
  %4736 = and i32 %4732, 255
  %4737 = call i32 @llvm.ctpop.i32(i32 %4736)
  %4738 = trunc i32 %4737 to i8
  %4739 = and i8 %4738, 1
  %4740 = xor i8 %4739, 1
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4740, i8* %4741, align 1
  %4742 = xor i32 %4731, %4724
  %4743 = xor i32 %4742, %4732
  %4744 = lshr i32 %4743, 4
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4746, i8* %4747, align 1
  %4748 = icmp eq i32 %4732, 0
  %4749 = zext i1 %4748 to i8
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4749, i8* %4750, align 1
  %4751 = lshr i32 %4732, 31
  %4752 = trunc i32 %4751 to i8
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4752, i8* %4753, align 1
  %4754 = lshr i32 %4724, 31
  %4755 = lshr i32 %4731, 31
  %4756 = xor i32 %4755, %4754
  %4757 = xor i32 %4751, %4754
  %4758 = add i32 %4757, %4756
  %4759 = icmp eq i32 %4758, 2
  %4760 = zext i1 %4759 to i8
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4760, i8* %4761, align 1
  store %struct.Memory* %loadMem_45e338, %struct.Memory** %MEMORY
  %loadMem_45e33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 33
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4764 to i64*
  %4765 = load i64, i64* %PC.i392
  %4766 = add i64 %4765, 106
  %4767 = load i64, i64* %PC.i392
  %4768 = add i64 %4767, 6
  %4769 = load i64, i64* %PC.i392
  %4770 = add i64 %4769, 6
  store i64 %4770, i64* %PC.i392
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4772 = load i8, i8* %4771, align 1
  %4773 = icmp eq i8 %4772, 0
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4775 = load i8, i8* %4774, align 1
  %4776 = icmp ne i8 %4775, 0
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4778 = load i8, i8* %4777, align 1
  %4779 = icmp ne i8 %4778, 0
  %4780 = xor i1 %4776, %4779
  %4781 = xor i1 %4780, true
  %4782 = and i1 %4773, %4781
  %4783 = zext i1 %4782 to i8
  store i8 %4783, i8* %BRANCH_TAKEN, align 1
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4785 = select i1 %4782, i64 %4766, i64 %4768
  store i64 %4785, i64* %4784, align 8
  store %struct.Memory* %loadMem_45e33b, %struct.Memory** %MEMORY
  %loadBr_45e33b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e33b = icmp eq i8 %loadBr_45e33b, 1
  br i1 %cmpBr_45e33b, label %block_.L_45e3a5, label %block_45e341

block_45e341:                                     ; preds = %block_.L_45e335
  %loadMem_45e341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 1
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RAX.i391 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %PC.i390
  %4793 = add i64 %4792, 5
  store i64 %4793, i64* %PC.i390
  store i64 1, i64* %RAX.i391, align 8
  store %struct.Memory* %loadMem_45e341, %struct.Memory** %MEMORY
  %loadMem_45e346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 5
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 15
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %4802 to i64*
  %4803 = load i64, i64* %RBP.i389
  %4804 = sub i64 %4803, 4
  %4805 = load i64, i64* %PC.i387
  %4806 = add i64 %4805, 3
  store i64 %4806, i64* %PC.i387
  %4807 = inttoptr i64 %4804 to i32*
  %4808 = load i32, i32* %4807
  %4809 = zext i32 %4808 to i64
  store i64 %4809, i64* %RCX.i388, align 8
  store %struct.Memory* %loadMem_45e346, %struct.Memory** %MEMORY
  %loadMem_45e349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 33
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4812 to i64*
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 5
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %4815 to i64*
  %4816 = load i64, i64* %RCX.i386
  %4817 = load i64, i64* %PC.i385
  %4818 = add i64 %4817, 2
  store i64 %4818, i64* %PC.i385
  %4819 = shl i64 %4816, 32
  %4820 = ashr i64 %4819, 33
  %4821 = trunc i64 %4816 to i8
  %4822 = and i8 %4821, 1
  %4823 = trunc i64 %4820 to i32
  %4824 = and i64 %4820, 4294967295
  store i64 %4824, i64* %RCX.i386, align 8
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4822, i8* %4825, align 1
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4827 = and i32 %4823, 255
  %4828 = call i32 @llvm.ctpop.i32(i32 %4827)
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  %4831 = xor i8 %4830, 1
  store i8 %4831, i8* %4826, align 1
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4832, align 1
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4834 = icmp eq i32 %4823, 0
  %4835 = zext i1 %4834 to i8
  store i8 %4835, i8* %4833, align 1
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4837 = lshr i32 %4823, 31
  %4838 = trunc i32 %4837 to i8
  store i8 %4838, i8* %4836, align 1
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4839, align 1
  store %struct.Memory* %loadMem_45e349, %struct.Memory** %MEMORY
  %loadMem_45e34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4841 = getelementptr inbounds %struct.GPR, %struct.GPR* %4840, i32 0, i32 33
  %4842 = getelementptr inbounds %struct.Reg, %struct.Reg* %4841, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %4842 to i64*
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4844 = getelementptr inbounds %struct.GPR, %struct.GPR* %4843, i32 0, i32 5
  %4845 = getelementptr inbounds %struct.Reg, %struct.Reg* %4844, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %4845 to i64*
  %4846 = load i64, i64* %RCX.i384
  %4847 = load i64, i64* %PC.i383
  %4848 = add i64 %4847, 3
  store i64 %4848, i64* %PC.i383
  %4849 = trunc i64 %4846 to i32
  %4850 = add i32 1, %4849
  %4851 = zext i32 %4850 to i64
  store i64 %4851, i64* %RCX.i384, align 8
  %4852 = icmp ult i32 %4850, %4849
  %4853 = icmp ult i32 %4850, 1
  %4854 = or i1 %4852, %4853
  %4855 = zext i1 %4854 to i8
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4855, i8* %4856, align 1
  %4857 = and i32 %4850, 255
  %4858 = call i32 @llvm.ctpop.i32(i32 %4857)
  %4859 = trunc i32 %4858 to i8
  %4860 = and i8 %4859, 1
  %4861 = xor i8 %4860, 1
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4861, i8* %4862, align 1
  %4863 = xor i64 1, %4846
  %4864 = trunc i64 %4863 to i32
  %4865 = xor i32 %4864, %4850
  %4866 = lshr i32 %4865, 4
  %4867 = trunc i32 %4866 to i8
  %4868 = and i8 %4867, 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4868, i8* %4869, align 1
  %4870 = icmp eq i32 %4850, 0
  %4871 = zext i1 %4870 to i8
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4871, i8* %4872, align 1
  %4873 = lshr i32 %4850, 31
  %4874 = trunc i32 %4873 to i8
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4874, i8* %4875, align 1
  %4876 = lshr i32 %4849, 31
  %4877 = xor i32 %4873, %4876
  %4878 = add i32 %4877, %4873
  %4879 = icmp eq i32 %4878, 2
  %4880 = zext i1 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4880, i8* %4881, align 1
  store %struct.Memory* %loadMem_45e34c, %struct.Memory** %MEMORY
  %loadMem_45e34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 33
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4884 to i64*
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 5
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %4888 = bitcast %union.anon* %4887 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4888, i32 0, i32 0
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 1
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %4891 to i64*
  %4892 = load i64, i64* %RAX.i382
  %4893 = load i8, i8* %CL.i
  %4894 = zext i8 %4893 to i64
  %4895 = load i64, i64* %PC.i381
  %4896 = add i64 %4895, 2
  store i64 %4896, i64* %PC.i381
  %4897 = trunc i64 %4894 to i5
  switch i5 %4897, label %4904 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %4898
  ]

; <label>:4898:                                   ; preds = %block_45e341
  %4899 = trunc i64 %4892 to i32
  %4900 = shl i32 %4899, 1
  %4901 = icmp slt i32 %4899, 0
  %4902 = icmp slt i32 %4900, 0
  %4903 = xor i1 %4901, %4902
  br label %4913

; <label>:4904:                                   ; preds = %block_45e341
  %4905 = and i64 %4894, 31
  %4906 = add i64 %4905, 4294967295
  %4907 = and i64 %4892, 4294967295
  %4908 = and i64 %4906, 4294967295
  %4909 = shl i64 %4907, %4908
  %4910 = trunc i64 %4909 to i32
  %4911 = icmp slt i32 %4910, 0
  %4912 = shl i32 %4910, 1
  br label %4913

; <label>:4913:                                   ; preds = %4904, %4898
  %4914 = phi i1 [ %4901, %4898 ], [ %4911, %4904 ]
  %4915 = phi i1 [ %4903, %4898 ], [ false, %4904 ]
  %4916 = phi i32 [ %4900, %4898 ], [ %4912, %4904 ]
  %4917 = zext i32 %4916 to i64
  store i64 %4917, i64* %RAX.i382, align 8
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4919 = zext i1 %4914 to i8
  store i8 %4919, i8* %4918, align 1
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4921 = and i32 %4916, 254
  %4922 = call i32 @llvm.ctpop.i32(i32 %4921)
  %4923 = trunc i32 %4922 to i8
  %4924 = and i8 %4923, 1
  %4925 = xor i8 %4924, 1
  store i8 %4925, i8* %4920, align 1
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4926, align 1
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4928 = icmp eq i32 %4916, 0
  %4929 = zext i1 %4928 to i8
  store i8 %4929, i8* %4927, align 1
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4931 = lshr i32 %4916, 31
  %4932 = trunc i32 %4931 to i8
  store i8 %4932, i8* %4930, align 1
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4934 = zext i1 %4915 to i8
  store i8 %4934, i8* %4933, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %block_45e341, %4913
  store %struct.Memory* %loadMem_45e34f, %struct.Memory** %MEMORY
  %loadMem_45e351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 33
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4937 to i64*
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 1
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %4940 to i64*
  %4941 = load i64, i64* %RAX.i380
  %4942 = load i64, i64* %PC.i379
  %4943 = add i64 %4942, 3
  store i64 %4943, i64* %PC.i379
  %4944 = trunc i64 %4941 to i32
  %4945 = sub i32 %4944, 1
  %4946 = zext i32 %4945 to i64
  store i64 %4946, i64* %RAX.i380, align 8
  %4947 = icmp ult i32 %4944, 1
  %4948 = zext i1 %4947 to i8
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4948, i8* %4949, align 1
  %4950 = and i32 %4945, 255
  %4951 = call i32 @llvm.ctpop.i32(i32 %4950)
  %4952 = trunc i32 %4951 to i8
  %4953 = and i8 %4952, 1
  %4954 = xor i8 %4953, 1
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4954, i8* %4955, align 1
  %4956 = xor i64 1, %4941
  %4957 = trunc i64 %4956 to i32
  %4958 = xor i32 %4957, %4945
  %4959 = lshr i32 %4958, 4
  %4960 = trunc i32 %4959 to i8
  %4961 = and i8 %4960, 1
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4961, i8* %4962, align 1
  %4963 = icmp eq i32 %4945, 0
  %4964 = zext i1 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4964, i8* %4965, align 1
  %4966 = lshr i32 %4945, 31
  %4967 = trunc i32 %4966 to i8
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4967, i8* %4968, align 1
  %4969 = lshr i32 %4944, 31
  %4970 = xor i32 %4966, %4969
  %4971 = add i32 %4970, %4969
  %4972 = icmp eq i32 %4971, 2
  %4973 = zext i1 %4972 to i8
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4973, i8* %4974, align 1
  store %struct.Memory* %loadMem_45e351, %struct.Memory** %MEMORY
  %loadMem_45e354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 1
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %4980 to i32*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 15
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RBP.i378 = bitcast %union.anon* %4983 to i64*
  %4984 = load i64, i64* %RBP.i378
  %4985 = sub i64 %4984, 16
  %4986 = load i32, i32* %EAX.i377
  %4987 = zext i32 %4986 to i64
  %4988 = load i64, i64* %PC.i376
  %4989 = add i64 %4988, 3
  store i64 %4989, i64* %PC.i376
  %4990 = inttoptr i64 %4985 to i32*
  store i32 %4986, i32* %4990
  store %struct.Memory* %loadMem_45e354, %struct.Memory** %MEMORY
  %loadMem_45e357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 1
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 15
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %4999 to i64*
  %5000 = load i64, i64* %RBP.i375
  %5001 = sub i64 %5000, 16
  %5002 = load i64, i64* %PC.i373
  %5003 = add i64 %5002, 3
  store i64 %5003, i64* %PC.i373
  %5004 = inttoptr i64 %5001 to i32*
  %5005 = load i32, i32* %5004
  %5006 = zext i32 %5005 to i64
  store i64 %5006, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_45e357, %struct.Memory** %MEMORY
  %loadMem_45e35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 1
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %RAX.i372
  %5014 = load i64, i64* %PC.i371
  %5015 = add i64 %5014, 2
  store i64 %5015, i64* %PC.i371
  %5016 = shl i64 %5013, 32
  %5017 = ashr i64 %5016, 33
  %5018 = trunc i64 %5013 to i8
  %5019 = and i8 %5018, 1
  %5020 = trunc i64 %5017 to i32
  %5021 = and i64 %5017, 4294967295
  store i64 %5021, i64* %RAX.i372, align 8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5019, i8* %5022, align 1
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5024 = and i32 %5020, 255
  %5025 = call i32 @llvm.ctpop.i32(i32 %5024)
  %5026 = trunc i32 %5025 to i8
  %5027 = and i8 %5026, 1
  %5028 = xor i8 %5027, 1
  store i8 %5028, i8* %5023, align 1
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5029, align 1
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5031 = icmp eq i32 %5020, 0
  %5032 = zext i1 %5031 to i8
  store i8 %5032, i8* %5030, align 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5034 = lshr i32 %5020, 31
  %5035 = trunc i32 %5034 to i8
  store i8 %5035, i8* %5033, align 1
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5036, align 1
  store %struct.Memory* %loadMem_45e35a, %struct.Memory** %MEMORY
  %loadMem_45e35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 33
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 1
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %EAX.i369 = bitcast %union.anon* %5042 to i32*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 15
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %5045 to i64*
  %5046 = load i64, i64* %RBP.i370
  %5047 = sub i64 %5046, 12
  %5048 = load i32, i32* %EAX.i369
  %5049 = zext i32 %5048 to i64
  %5050 = load i64, i64* %PC.i368
  %5051 = add i64 %5050, 3
  store i64 %5051, i64* %PC.i368
  %5052 = inttoptr i64 %5047 to i32*
  store i32 %5048, i32* %5052
  store %struct.Memory* %loadMem_45e35d, %struct.Memory** %MEMORY
  %loadMem_45e360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 1
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 15
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %5061 to i64*
  %5062 = load i64, i64* %RBP.i367
  %5063 = sub i64 %5062, 12
  %5064 = load i64, i64* %PC.i365
  %5065 = add i64 %5064, 3
  store i64 %5065, i64* %PC.i365
  %5066 = inttoptr i64 %5063 to i32*
  %5067 = load i32, i32* %5066
  %5068 = zext i32 %5067 to i64
  store i64 %5068, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_45e360, %struct.Memory** %MEMORY
  %loadMem_45e363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 33
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 1
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %5074 to i32*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 15
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %5077 to i64*
  %5078 = load i64, i64* %RBP.i364
  %5079 = sub i64 %5078, 8
  %5080 = load i32, i32* %EAX.i363
  %5081 = zext i32 %5080 to i64
  %5082 = load i64, i64* %PC.i362
  %5083 = add i64 %5082, 3
  store i64 %5083, i64* %PC.i362
  %5084 = inttoptr i64 %5079 to i32*
  store i32 %5080, i32* %5084
  store %struct.Memory* %loadMem_45e363, %struct.Memory** %MEMORY
  br label %block_.L_45e366

block_.L_45e366:                                  ; preds = %block_45e372, %routine_shll__cl___eax.exit
  %loadMem_45e366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5086 = getelementptr inbounds %struct.GPR, %struct.GPR* %5085, i32 0, i32 33
  %5087 = getelementptr inbounds %struct.Reg, %struct.Reg* %5086, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5087 to i64*
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 1
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %5090 to i64*
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 15
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %5093 to i64*
  %5094 = load i64, i64* %RBP.i361
  %5095 = sub i64 %5094, 8
  %5096 = load i64, i64* %PC.i359
  %5097 = add i64 %5096, 3
  store i64 %5097, i64* %PC.i359
  %5098 = inttoptr i64 %5095 to i32*
  %5099 = load i32, i32* %5098
  %5100 = zext i32 %5099 to i64
  store i64 %5100, i64* %RAX.i360, align 8
  store %struct.Memory* %loadMem_45e366, %struct.Memory** %MEMORY
  %loadMem_45e369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5102 = getelementptr inbounds %struct.GPR, %struct.GPR* %5101, i32 0, i32 33
  %5103 = getelementptr inbounds %struct.Reg, %struct.Reg* %5102, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5103 to i64*
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 1
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %EAX.i357 = bitcast %union.anon* %5106 to i32*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 15
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %5109 to i64*
  %5110 = load i32, i32* %EAX.i357
  %5111 = zext i32 %5110 to i64
  %5112 = load i64, i64* %RBP.i358
  %5113 = sub i64 %5112, 16
  %5114 = load i64, i64* %PC.i356
  %5115 = add i64 %5114, 3
  store i64 %5115, i64* %PC.i356
  %5116 = inttoptr i64 %5113 to i32*
  %5117 = load i32, i32* %5116
  %5118 = sub i32 %5110, %5117
  %5119 = icmp ult i32 %5110, %5117
  %5120 = zext i1 %5119 to i8
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5120, i8* %5121, align 1
  %5122 = and i32 %5118, 255
  %5123 = call i32 @llvm.ctpop.i32(i32 %5122)
  %5124 = trunc i32 %5123 to i8
  %5125 = and i8 %5124, 1
  %5126 = xor i8 %5125, 1
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5126, i8* %5127, align 1
  %5128 = xor i32 %5117, %5110
  %5129 = xor i32 %5128, %5118
  %5130 = lshr i32 %5129, 4
  %5131 = trunc i32 %5130 to i8
  %5132 = and i8 %5131, 1
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5132, i8* %5133, align 1
  %5134 = icmp eq i32 %5118, 0
  %5135 = zext i1 %5134 to i8
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5135, i8* %5136, align 1
  %5137 = lshr i32 %5118, 31
  %5138 = trunc i32 %5137 to i8
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5138, i8* %5139, align 1
  %5140 = lshr i32 %5110, 31
  %5141 = lshr i32 %5117, 31
  %5142 = xor i32 %5141, %5140
  %5143 = xor i32 %5137, %5140
  %5144 = add i32 %5143, %5142
  %5145 = icmp eq i32 %5144, 2
  %5146 = zext i1 %5145 to i8
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5146, i8* %5147, align 1
  store %struct.Memory* %loadMem_45e369, %struct.Memory** %MEMORY
  %loadMem_45e36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5150 to i64*
  %5151 = load i64, i64* %PC.i355
  %5152 = add i64 %5151, 38
  %5153 = load i64, i64* %PC.i355
  %5154 = add i64 %5153, 6
  %5155 = load i64, i64* %PC.i355
  %5156 = add i64 %5155, 6
  store i64 %5156, i64* %PC.i355
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5158 = load i8, i8* %5157, align 1
  %5159 = icmp ne i8 %5158, 0
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5161 = load i8, i8* %5160, align 1
  %5162 = icmp ne i8 %5161, 0
  %5163 = xor i1 %5159, %5162
  %5164 = xor i1 %5163, true
  %5165 = zext i1 %5164 to i8
  store i8 %5165, i8* %BRANCH_TAKEN, align 1
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5167 = select i1 %5163, i64 %5154, i64 %5152
  store i64 %5167, i64* %5166, align 8
  store %struct.Memory* %loadMem_45e36c, %struct.Memory** %MEMORY
  %loadBr_45e36c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e36c = icmp eq i8 %loadBr_45e36c, 1
  br i1 %cmpBr_45e36c, label %block_.L_45e392, label %block_45e372

block_45e372:                                     ; preds = %block_.L_45e366
  %loadMem_45e372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 33
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5170 to i64*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 1
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %5173 to i64*
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 15
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %5176 to i64*
  %5177 = load i64, i64* %RBP.i354
  %5178 = sub i64 %5177, 4
  %5179 = load i64, i64* %PC.i352
  %5180 = add i64 %5179, 3
  store i64 %5180, i64* %PC.i352
  %5181 = inttoptr i64 %5178 to i32*
  %5182 = load i32, i32* %5181
  %5183 = zext i32 %5182 to i64
  store i64 %5183, i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_45e372, %struct.Memory** %MEMORY
  %loadMem_45e375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 33
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5186 to i64*
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 5
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %5189 to i64*
  %5190 = load i64, i64* %PC.i350
  %5191 = add i64 %5190, 8
  store i64 %5191, i64* %PC.i350
  %5192 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*)
  store i64 %5192, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_45e375, %struct.Memory** %MEMORY
  %loadMem_45e37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 7
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 15
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RBP.i349
  %5203 = sub i64 %5202, 8
  %5204 = load i64, i64* %PC.i347
  %5205 = add i64 %5204, 4
  store i64 %5205, i64* %PC.i347
  %5206 = inttoptr i64 %5203 to i32*
  %5207 = load i32, i32* %5206
  %5208 = sext i32 %5207 to i64
  store i64 %5208, i64* %RDX.i348, align 8
  store %struct.Memory* %loadMem_45e37d, %struct.Memory** %MEMORY
  %loadMem_45e381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 1
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %5214 to i32*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 5
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 7
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RDX.i346 = bitcast %union.anon* %5220 to i64*
  %5221 = load i64, i64* %RCX.i345
  %5222 = load i64, i64* %RDX.i346
  %5223 = mul i64 %5222, 4
  %5224 = add i64 %5223, %5221
  %5225 = load i32, i32* %EAX.i344
  %5226 = zext i32 %5225 to i64
  %5227 = load i64, i64* %PC.i343
  %5228 = add i64 %5227, 3
  store i64 %5228, i64* %PC.i343
  %5229 = inttoptr i64 %5224 to i32*
  store i32 %5225, i32* %5229
  store %struct.Memory* %loadMem_45e381, %struct.Memory** %MEMORY
  %loadMem_45e384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 33
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5232 to i64*
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5234 = getelementptr inbounds %struct.GPR, %struct.GPR* %5233, i32 0, i32 1
  %5235 = getelementptr inbounds %struct.Reg, %struct.Reg* %5234, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %5235 to i64*
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 15
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %5238 to i64*
  %5239 = load i64, i64* %RBP.i342
  %5240 = sub i64 %5239, 8
  %5241 = load i64, i64* %PC.i340
  %5242 = add i64 %5241, 3
  store i64 %5242, i64* %PC.i340
  %5243 = inttoptr i64 %5240 to i32*
  %5244 = load i32, i32* %5243
  %5245 = zext i32 %5244 to i64
  store i64 %5245, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_45e384, %struct.Memory** %MEMORY
  %loadMem_45e387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 33
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5248 to i64*
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 1
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %5251 to i64*
  %5252 = load i64, i64* %RAX.i339
  %5253 = load i64, i64* %PC.i338
  %5254 = add i64 %5253, 3
  store i64 %5254, i64* %PC.i338
  %5255 = trunc i64 %5252 to i32
  %5256 = add i32 1, %5255
  %5257 = zext i32 %5256 to i64
  store i64 %5257, i64* %RAX.i339, align 8
  %5258 = icmp ult i32 %5256, %5255
  %5259 = icmp ult i32 %5256, 1
  %5260 = or i1 %5258, %5259
  %5261 = zext i1 %5260 to i8
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5261, i8* %5262, align 1
  %5263 = and i32 %5256, 255
  %5264 = call i32 @llvm.ctpop.i32(i32 %5263)
  %5265 = trunc i32 %5264 to i8
  %5266 = and i8 %5265, 1
  %5267 = xor i8 %5266, 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5267, i8* %5268, align 1
  %5269 = xor i64 1, %5252
  %5270 = trunc i64 %5269 to i32
  %5271 = xor i32 %5270, %5256
  %5272 = lshr i32 %5271, 4
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5274, i8* %5275, align 1
  %5276 = icmp eq i32 %5256, 0
  %5277 = zext i1 %5276 to i8
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5277, i8* %5278, align 1
  %5279 = lshr i32 %5256, 31
  %5280 = trunc i32 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5280, i8* %5281, align 1
  %5282 = lshr i32 %5255, 31
  %5283 = xor i32 %5279, %5282
  %5284 = add i32 %5283, %5279
  %5285 = icmp eq i32 %5284, 2
  %5286 = zext i1 %5285 to i8
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5286, i8* %5287, align 1
  store %struct.Memory* %loadMem_45e387, %struct.Memory** %MEMORY
  %loadMem_45e38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 33
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 1
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %EAX.i336 = bitcast %union.anon* %5293 to i32*
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5295 = getelementptr inbounds %struct.GPR, %struct.GPR* %5294, i32 0, i32 15
  %5296 = getelementptr inbounds %struct.Reg, %struct.Reg* %5295, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %5296 to i64*
  %5297 = load i64, i64* %RBP.i337
  %5298 = sub i64 %5297, 8
  %5299 = load i32, i32* %EAX.i336
  %5300 = zext i32 %5299 to i64
  %5301 = load i64, i64* %PC.i335
  %5302 = add i64 %5301, 3
  store i64 %5302, i64* %PC.i335
  %5303 = inttoptr i64 %5298 to i32*
  store i32 %5299, i32* %5303
  store %struct.Memory* %loadMem_45e38a, %struct.Memory** %MEMORY
  %loadMem_45e38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 33
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5306 to i64*
  %5307 = load i64, i64* %PC.i334
  %5308 = add i64 %5307, -39
  %5309 = load i64, i64* %PC.i334
  %5310 = add i64 %5309, 5
  store i64 %5310, i64* %PC.i334
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5308, i64* %5311, align 8
  store %struct.Memory* %loadMem_45e38d, %struct.Memory** %MEMORY
  br label %block_.L_45e366

block_.L_45e392:                                  ; preds = %block_.L_45e366
  %loadMem_45e392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5314 to i64*
  %5315 = load i64, i64* %PC.i333
  %5316 = add i64 %5315, 5
  %5317 = load i64, i64* %PC.i333
  %5318 = add i64 %5317, 5
  store i64 %5318, i64* %PC.i333
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5316, i64* %5319, align 8
  store %struct.Memory* %loadMem_45e392, %struct.Memory** %MEMORY
  br label %block_.L_45e397

block_.L_45e397:                                  ; preds = %block_.L_45e392
  %loadMem_45e397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5321 = getelementptr inbounds %struct.GPR, %struct.GPR* %5320, i32 0, i32 33
  %5322 = getelementptr inbounds %struct.Reg, %struct.Reg* %5321, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %5322 to i64*
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 1
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 15
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %5328 to i64*
  %5329 = load i64, i64* %RBP.i332
  %5330 = sub i64 %5329, 4
  %5331 = load i64, i64* %PC.i330
  %5332 = add i64 %5331, 3
  store i64 %5332, i64* %PC.i330
  %5333 = inttoptr i64 %5330 to i32*
  %5334 = load i32, i32* %5333
  %5335 = zext i32 %5334 to i64
  store i64 %5335, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_45e397, %struct.Memory** %MEMORY
  %loadMem_45e39a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %5341 to i64*
  %5342 = load i64, i64* %RAX.i329
  %5343 = load i64, i64* %PC.i328
  %5344 = add i64 %5343, 3
  store i64 %5344, i64* %PC.i328
  %5345 = trunc i64 %5342 to i32
  %5346 = add i32 2, %5345
  %5347 = zext i32 %5346 to i64
  store i64 %5347, i64* %RAX.i329, align 8
  %5348 = icmp ult i32 %5346, %5345
  %5349 = icmp ult i32 %5346, 2
  %5350 = or i1 %5348, %5349
  %5351 = zext i1 %5350 to i8
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5351, i8* %5352, align 1
  %5353 = and i32 %5346, 255
  %5354 = call i32 @llvm.ctpop.i32(i32 %5353)
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5357, i8* %5358, align 1
  %5359 = xor i64 2, %5342
  %5360 = trunc i64 %5359 to i32
  %5361 = xor i32 %5360, %5346
  %5362 = lshr i32 %5361, 4
  %5363 = trunc i32 %5362 to i8
  %5364 = and i8 %5363, 1
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5364, i8* %5365, align 1
  %5366 = icmp eq i32 %5346, 0
  %5367 = zext i1 %5366 to i8
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5367, i8* %5368, align 1
  %5369 = lshr i32 %5346, 31
  %5370 = trunc i32 %5369 to i8
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5370, i8* %5371, align 1
  %5372 = lshr i32 %5345, 31
  %5373 = xor i32 %5369, %5372
  %5374 = add i32 %5373, %5369
  %5375 = icmp eq i32 %5374, 2
  %5376 = zext i1 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5376, i8* %5377, align 1
  store %struct.Memory* %loadMem_45e39a, %struct.Memory** %MEMORY
  %loadMem_45e39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %EAX.i326 = bitcast %union.anon* %5383 to i32*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 15
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RBP.i327
  %5388 = sub i64 %5387, 4
  %5389 = load i32, i32* %EAX.i326
  %5390 = zext i32 %5389 to i64
  %5391 = load i64, i64* %PC.i325
  %5392 = add i64 %5391, 3
  store i64 %5392, i64* %PC.i325
  %5393 = inttoptr i64 %5388 to i32*
  store i32 %5389, i32* %5393
  store %struct.Memory* %loadMem_45e39d, %struct.Memory** %MEMORY
  %loadMem_45e3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 33
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %5396 to i64*
  %5397 = load i64, i64* %PC.i324
  %5398 = add i64 %5397, -107
  %5399 = load i64, i64* %PC.i324
  %5400 = add i64 %5399, 5
  store i64 %5400, i64* %PC.i324
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5398, i64* %5401, align 8
  store %struct.Memory* %loadMem_45e3a0, %struct.Memory** %MEMORY
  br label %block_.L_45e335

block_.L_45e3a5:                                  ; preds = %block_.L_45e335
  %loadMem_45e3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 33
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5404 to i64*
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5406 = getelementptr inbounds %struct.GPR, %struct.GPR* %5405, i32 0, i32 1
  %5407 = getelementptr inbounds %struct.Reg, %struct.Reg* %5406, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %5407 to i64*
  %5408 = load i64, i64* %PC.i322
  %5409 = add i64 %5408, 8
  store i64 %5409, i64* %PC.i322
  %5410 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %5410, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_45e3a5, %struct.Memory** %MEMORY
  %loadMem_45e3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 1
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %RAX.i321
  %5418 = load i64, i64* %PC.i320
  %5419 = add i64 %5418, 6
  store i64 %5419, i64* %PC.i320
  %5420 = inttoptr i64 %5417 to i32*
  store i32 0, i32* %5420
  store %struct.Memory* %loadMem_45e3ad, %struct.Memory** %MEMORY
  %loadMem_45e3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 33
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %5423 to i64*
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 15
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %5426 to i64*
  %5427 = load i64, i64* %RBP.i319
  %5428 = sub i64 %5427, 8
  %5429 = load i64, i64* %PC.i318
  %5430 = add i64 %5429, 7
  store i64 %5430, i64* %PC.i318
  %5431 = inttoptr i64 %5428 to i32*
  store i32 1, i32* %5431
  store %struct.Memory* %loadMem_45e3b3, %struct.Memory** %MEMORY
  br label %block_.L_45e3ba

block_.L_45e3ba:                                  ; preds = %block_45e3d8, %block_.L_45e3a5
  %loadMem_45e3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 33
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5434 to i64*
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 1
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %5437 to i64*
  %5438 = load i64, i64* %PC.i316
  %5439 = add i64 %5438, 5
  store i64 %5439, i64* %PC.i316
  store i64 2, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_45e3ba, %struct.Memory** %MEMORY
  %loadMem_45e3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 33
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5442 to i64*
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 5
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %5445 to i64*
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 15
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5448 to i64*
  %5449 = load i64, i64* %RBP.i315
  %5450 = sub i64 %5449, 8
  %5451 = load i64, i64* %PC.i313
  %5452 = add i64 %5451, 3
  store i64 %5452, i64* %PC.i313
  %5453 = inttoptr i64 %5450 to i32*
  %5454 = load i32, i32* %5453
  %5455 = zext i32 %5454 to i64
  store i64 %5455, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_45e3bf, %struct.Memory** %MEMORY
  %loadMem_45e3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 33
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5458 to i64*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 7
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %5461 to i64*
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 15
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %5464 to i64*
  %5465 = load i64, i64* %RBP.i312
  %5466 = sub i64 %5465, 28
  %5467 = load i64, i64* %PC.i310
  %5468 = add i64 %5467, 3
  store i64 %5468, i64* %PC.i310
  %5469 = inttoptr i64 %5466 to i32*
  %5470 = load i32, i32* %5469
  %5471 = zext i32 %5470 to i64
  store i64 %5471, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_45e3c2, %struct.Memory** %MEMORY
  %loadMem_45e3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 33
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5474 to i64*
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 1
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %EAX.i308 = bitcast %union.anon* %5477 to i32*
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 15
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %5480 to i64*
  %5481 = load i64, i64* %RBP.i309
  %5482 = sub i64 %5481, 120
  %5483 = load i32, i32* %EAX.i308
  %5484 = zext i32 %5483 to i64
  %5485 = load i64, i64* %PC.i307
  %5486 = add i64 %5485, 3
  store i64 %5486, i64* %PC.i307
  %5487 = inttoptr i64 %5482 to i32*
  store i32 %5483, i32* %5487
  store %struct.Memory* %loadMem_45e3c5, %struct.Memory** %MEMORY
  %loadMem_45e3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 7
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5493 to i32*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 1
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %5496 to i64*
  %5497 = load i32, i32* %EDX.i
  %5498 = zext i32 %5497 to i64
  %5499 = load i64, i64* %PC.i305
  %5500 = add i64 %5499, 2
  store i64 %5500, i64* %PC.i305
  %5501 = and i64 %5498, 4294967295
  store i64 %5501, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_45e3c8, %struct.Memory** %MEMORY
  %loadMem_45e3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 33
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5504 to i64*
  %5505 = load i64, i64* %PC.i304
  %5506 = add i64 %5505, 1
  store i64 %5506, i64* %PC.i304
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5509 = bitcast %union.anon* %5508 to i32*
  %5510 = load i32, i32* %5509, align 8
  %5511 = sext i32 %5510 to i64
  %5512 = lshr i64 %5511, 32
  store i64 %5512, i64* %5507, align 8
  store %struct.Memory* %loadMem_45e3ca, %struct.Memory** %MEMORY
  %loadMem_45e3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 33
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5515 to i64*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 9
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %RSI.i302 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 15
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %5521 to i64*
  %5522 = load i64, i64* %RBP.i303
  %5523 = sub i64 %5522, 120
  %5524 = load i64, i64* %PC.i301
  %5525 = add i64 %5524, 3
  store i64 %5525, i64* %PC.i301
  %5526 = inttoptr i64 %5523 to i32*
  %5527 = load i32, i32* %5526
  %5528 = zext i32 %5527 to i64
  store i64 %5528, i64* %RSI.i302, align 8
  store %struct.Memory* %loadMem_45e3cb, %struct.Memory** %MEMORY
  %loadMem_45e3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 33
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5531 to i64*
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 9
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %ESI.i297 = bitcast %union.anon* %5534 to i32*
  %5535 = load i32, i32* %ESI.i297
  %5536 = zext i32 %5535 to i64
  %5537 = load i64, i64* %PC.i296
  %5538 = add i64 %5537, 2
  store i64 %5538, i64* %PC.i296
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5540 = bitcast %union.anon* %5539 to i32*
  %5541 = load i32, i32* %5540, align 8
  %5542 = zext i32 %5541 to i64
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5544 = bitcast %union.anon* %5543 to i32*
  %5545 = load i32, i32* %5544, align 8
  %5546 = zext i32 %5545 to i64
  %5547 = shl i64 %5536, 32
  %5548 = ashr exact i64 %5547, 32
  %5549 = shl i64 %5546, 32
  %5550 = or i64 %5549, %5542
  %5551 = sdiv i64 %5550, %5548
  %5552 = shl i64 %5551, 32
  %5553 = ashr exact i64 %5552, 32
  %5554 = icmp eq i64 %5551, %5553
  br i1 %5554, label %5559, label %5555

; <label>:5555:                                   ; preds = %block_.L_45e3ba
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5557 = load i64, i64* %5556, align 8
  %5558 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5557, %struct.Memory* %loadMem_45e3ce)
  br label %routine_idivl__esi.exit

; <label>:5559:                                   ; preds = %block_.L_45e3ba
  %5560 = srem i64 %5550, %5548
  %5561 = getelementptr inbounds %union.anon, %union.anon* %5539, i64 0, i32 0
  %5562 = and i64 %5551, 4294967295
  store i64 %5562, i64* %5561, align 8
  %5563 = getelementptr inbounds %union.anon, %union.anon* %5543, i64 0, i32 0
  %5564 = and i64 %5560, 4294967295
  store i64 %5564, i64* %5563, align 8
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5565, align 1
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5566, align 1
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5567, align 1
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5568, align 1
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5569, align 1
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5570, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %5555, %5559
  %5571 = phi %struct.Memory* [ %5558, %5555 ], [ %loadMem_45e3ce, %5559 ]
  store %struct.Memory* %5571, %struct.Memory** %MEMORY
  %loadMem_45e3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 33
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5574 to i64*
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5576 = getelementptr inbounds %struct.GPR, %struct.GPR* %5575, i32 0, i32 1
  %5577 = getelementptr inbounds %struct.Reg, %struct.Reg* %5576, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %5577 to i32*
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 5
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %ECX.i295 = bitcast %union.anon* %5580 to i32*
  %5581 = load i32, i32* %ECX.i295
  %5582 = zext i32 %5581 to i64
  %5583 = load i32, i32* %EAX.i294
  %5584 = zext i32 %5583 to i64
  %5585 = load i64, i64* %PC.i293
  %5586 = add i64 %5585, 2
  store i64 %5586, i64* %PC.i293
  %5587 = sub i32 %5581, %5583
  %5588 = icmp ult i32 %5581, %5583
  %5589 = zext i1 %5588 to i8
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5589, i8* %5590, align 1
  %5591 = and i32 %5587, 255
  %5592 = call i32 @llvm.ctpop.i32(i32 %5591)
  %5593 = trunc i32 %5592 to i8
  %5594 = and i8 %5593, 1
  %5595 = xor i8 %5594, 1
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5595, i8* %5596, align 1
  %5597 = xor i64 %5584, %5582
  %5598 = trunc i64 %5597 to i32
  %5599 = xor i32 %5598, %5587
  %5600 = lshr i32 %5599, 4
  %5601 = trunc i32 %5600 to i8
  %5602 = and i8 %5601, 1
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5602, i8* %5603, align 1
  %5604 = icmp eq i32 %5587, 0
  %5605 = zext i1 %5604 to i8
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5605, i8* %5606, align 1
  %5607 = lshr i32 %5587, 31
  %5608 = trunc i32 %5607 to i8
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5608, i8* %5609, align 1
  %5610 = lshr i32 %5581, 31
  %5611 = lshr i32 %5583, 31
  %5612 = xor i32 %5611, %5610
  %5613 = xor i32 %5607, %5610
  %5614 = add i32 %5613, %5612
  %5615 = icmp eq i32 %5614, 2
  %5616 = zext i1 %5615 to i8
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5616, i8* %5617, align 1
  store %struct.Memory* %loadMem_45e3d0, %struct.Memory** %MEMORY
  %loadMem_45e3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5619 = getelementptr inbounds %struct.GPR, %struct.GPR* %5618, i32 0, i32 33
  %5620 = getelementptr inbounds %struct.Reg, %struct.Reg* %5619, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5620 to i64*
  %5621 = load i64, i64* %PC.i292
  %5622 = add i64 %5621, 57
  %5623 = load i64, i64* %PC.i292
  %5624 = add i64 %5623, 6
  %5625 = load i64, i64* %PC.i292
  %5626 = add i64 %5625, 6
  store i64 %5626, i64* %PC.i292
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5628 = load i8, i8* %5627, align 1
  %5629 = icmp ne i8 %5628, 0
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5631 = load i8, i8* %5630, align 1
  %5632 = icmp ne i8 %5631, 0
  %5633 = xor i1 %5629, %5632
  %5634 = xor i1 %5633, true
  %5635 = zext i1 %5634 to i8
  store i8 %5635, i8* %BRANCH_TAKEN, align 1
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5637 = select i1 %5633, i64 %5624, i64 %5622
  store i64 %5637, i64* %5636, align 8
  store %struct.Memory* %loadMem_45e3d2, %struct.Memory** %MEMORY
  %loadBr_45e3d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e3d2 = icmp eq i8 %loadBr_45e3d2, 1
  br i1 %cmpBr_45e3d2, label %block_.L_45e40b, label %block_45e3d8

block_45e3d8:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_45e3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 33
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 1
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %EAX.i290 = bitcast %union.anon* %5643 to i32*
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5645 = getelementptr inbounds %struct.GPR, %struct.GPR* %5644, i32 0, i32 1
  %5646 = getelementptr inbounds %struct.Reg, %struct.Reg* %5645, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %5646 to i64*
  %5647 = load i64, i64* %RAX.i291
  %5648 = load i32, i32* %EAX.i290
  %5649 = zext i32 %5648 to i64
  %5650 = load i64, i64* %PC.i289
  %5651 = add i64 %5650, 2
  store i64 %5651, i64* %PC.i289
  %5652 = xor i64 %5649, %5647
  %5653 = trunc i64 %5652 to i32
  %5654 = and i64 %5652, 4294967295
  store i64 %5654, i64* %RAX.i291, align 8
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5655, align 1
  %5656 = and i32 %5653, 255
  %5657 = call i32 @llvm.ctpop.i32(i32 %5656)
  %5658 = trunc i32 %5657 to i8
  %5659 = and i8 %5658, 1
  %5660 = xor i8 %5659, 1
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5660, i8* %5661, align 1
  %5662 = icmp eq i32 %5653, 0
  %5663 = zext i1 %5662 to i8
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5663, i8* %5664, align 1
  %5665 = lshr i32 %5653, 31
  %5666 = trunc i32 %5665 to i8
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5666, i8* %5667, align 1
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5668, align 1
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5669, align 1
  store %struct.Memory* %loadMem_45e3d8, %struct.Memory** %MEMORY
  %loadMem_45e3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5671 = getelementptr inbounds %struct.GPR, %struct.GPR* %5670, i32 0, i32 33
  %5672 = getelementptr inbounds %struct.Reg, %struct.Reg* %5671, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5672 to i64*
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 5
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %5675 to i64*
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 15
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %5678 to i64*
  %5679 = load i64, i64* %RBP.i288
  %5680 = sub i64 %5679, 8
  %5681 = load i64, i64* %PC.i286
  %5682 = add i64 %5681, 3
  store i64 %5682, i64* %PC.i286
  %5683 = inttoptr i64 %5680 to i32*
  %5684 = load i32, i32* %5683
  %5685 = zext i32 %5684 to i64
  store i64 %5685, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_45e3da, %struct.Memory** %MEMORY
  %loadMem_45e3dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 33
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 7
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RDX.i285 = bitcast %union.anon* %5691 to i64*
  %5692 = load i64, i64* %PC.i284
  %5693 = add i64 %5692, 8
  store i64 %5693, i64* %PC.i284
  %5694 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %5694, i64* %RDX.i285, align 8
  store %struct.Memory* %loadMem_45e3dd, %struct.Memory** %MEMORY
  %loadMem_45e3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 33
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %5697 to i64*
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 1
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %5700 to i64*
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 15
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %5703 to i64*
  %5704 = load i64, i64* %RAX.i282
  %5705 = load i64, i64* %RBP.i283
  %5706 = sub i64 %5705, 8
  %5707 = load i64, i64* %PC.i281
  %5708 = add i64 %5707, 3
  store i64 %5708, i64* %PC.i281
  %5709 = trunc i64 %5704 to i32
  %5710 = inttoptr i64 %5706 to i32*
  %5711 = load i32, i32* %5710
  %5712 = sub i32 %5709, %5711
  %5713 = zext i32 %5712 to i64
  store i64 %5713, i64* %RAX.i282, align 8
  %5714 = icmp ult i32 %5709, %5711
  %5715 = zext i1 %5714 to i8
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5715, i8* %5716, align 1
  %5717 = and i32 %5712, 255
  %5718 = call i32 @llvm.ctpop.i32(i32 %5717)
  %5719 = trunc i32 %5718 to i8
  %5720 = and i8 %5719, 1
  %5721 = xor i8 %5720, 1
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5721, i8* %5722, align 1
  %5723 = xor i32 %5711, %5709
  %5724 = xor i32 %5723, %5712
  %5725 = lshr i32 %5724, 4
  %5726 = trunc i32 %5725 to i8
  %5727 = and i8 %5726, 1
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5727, i8* %5728, align 1
  %5729 = icmp eq i32 %5712, 0
  %5730 = zext i1 %5729 to i8
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5730, i8* %5731, align 1
  %5732 = lshr i32 %5712, 31
  %5733 = trunc i32 %5732 to i8
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5733, i8* %5734, align 1
  %5735 = lshr i32 %5709, 31
  %5736 = lshr i32 %5711, 31
  %5737 = xor i32 %5736, %5735
  %5738 = xor i32 %5732, %5735
  %5739 = add i32 %5738, %5737
  %5740 = icmp eq i32 %5739, 2
  %5741 = zext i1 %5740 to i8
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5741, i8* %5742, align 1
  store %struct.Memory* %loadMem_45e3e5, %struct.Memory** %MEMORY
  %loadMem_45e3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 33
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 1
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %5748 to i32*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 9
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %RSI.i280 = bitcast %union.anon* %5751 to i64*
  %5752 = load i32, i32* %EAX.i279
  %5753 = zext i32 %5752 to i64
  %5754 = load i64, i64* %PC.i278
  %5755 = add i64 %5754, 3
  store i64 %5755, i64* %PC.i278
  %5756 = shl i64 %5753, 32
  %5757 = ashr exact i64 %5756, 32
  store i64 %5757, i64* %RSI.i280, align 8
  store %struct.Memory* %loadMem_45e3e8, %struct.Memory** %MEMORY
  %loadMem_45e3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 5
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %ECX.i275 = bitcast %union.anon* %5763 to i32*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 7
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RDX.i276 = bitcast %union.anon* %5766 to i64*
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 9
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %RSI.i277 = bitcast %union.anon* %5769 to i64*
  %5770 = load i64, i64* %RDX.i276
  %5771 = load i64, i64* %RSI.i277
  %5772 = mul i64 %5771, 4
  %5773 = add i64 %5772, %5770
  %5774 = load i32, i32* %ECX.i275
  %5775 = zext i32 %5774 to i64
  %5776 = load i64, i64* %PC.i274
  %5777 = add i64 %5776, 3
  store i64 %5777, i64* %PC.i274
  %5778 = inttoptr i64 %5773 to i32*
  store i32 %5774, i32* %5778
  store %struct.Memory* %loadMem_45e3eb, %struct.Memory** %MEMORY
  %loadMem_45e3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 33
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5781 to i64*
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5783 = getelementptr inbounds %struct.GPR, %struct.GPR* %5782, i32 0, i32 7
  %5784 = getelementptr inbounds %struct.Reg, %struct.Reg* %5783, i32 0, i32 0
  %RDX.i273 = bitcast %union.anon* %5784 to i64*
  %5785 = load i64, i64* %PC.i272
  %5786 = add i64 %5785, 8
  store i64 %5786, i64* %PC.i272
  %5787 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %5787, i64* %RDX.i273, align 8
  store %struct.Memory* %loadMem_45e3ee, %struct.Memory** %MEMORY
  %loadMem_45e3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5789 = getelementptr inbounds %struct.GPR, %struct.GPR* %5788, i32 0, i32 33
  %5790 = getelementptr inbounds %struct.Reg, %struct.Reg* %5789, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5790 to i64*
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5792 = getelementptr inbounds %struct.GPR, %struct.GPR* %5791, i32 0, i32 9
  %5793 = getelementptr inbounds %struct.Reg, %struct.Reg* %5792, i32 0, i32 0
  %RSI.i270 = bitcast %union.anon* %5793 to i64*
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 15
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5796 to i64*
  %5797 = load i64, i64* %RBP.i271
  %5798 = sub i64 %5797, 8
  %5799 = load i64, i64* %PC.i269
  %5800 = add i64 %5799, 4
  store i64 %5800, i64* %PC.i269
  %5801 = inttoptr i64 %5798 to i32*
  %5802 = load i32, i32* %5801
  %5803 = sext i32 %5802 to i64
  store i64 %5803, i64* %RSI.i270, align 8
  store %struct.Memory* %loadMem_45e3f6, %struct.Memory** %MEMORY
  %loadMem_45e3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 5
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %ECX.i266 = bitcast %union.anon* %5809 to i32*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 7
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %5812 to i64*
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 9
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %RSI.i268 = bitcast %union.anon* %5815 to i64*
  %5816 = load i64, i64* %RDX.i267
  %5817 = load i64, i64* %RSI.i268
  %5818 = mul i64 %5817, 4
  %5819 = add i64 %5818, %5816
  %5820 = load i32, i32* %ECX.i266
  %5821 = zext i32 %5820 to i64
  %5822 = load i64, i64* %PC.i265
  %5823 = add i64 %5822, 3
  store i64 %5823, i64* %PC.i265
  %5824 = inttoptr i64 %5819 to i32*
  store i32 %5820, i32* %5824
  store %struct.Memory* %loadMem_45e3fa, %struct.Memory** %MEMORY
  %loadMem_45e3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 33
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 1
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 15
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %RBP.i264
  %5835 = sub i64 %5834, 8
  %5836 = load i64, i64* %PC.i262
  %5837 = add i64 %5836, 3
  store i64 %5837, i64* %PC.i262
  %5838 = inttoptr i64 %5835 to i32*
  %5839 = load i32, i32* %5838
  %5840 = zext i32 %5839 to i64
  store i64 %5840, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_45e3fd, %struct.Memory** %MEMORY
  %loadMem_45e400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 33
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5843 to i64*
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5845 = getelementptr inbounds %struct.GPR, %struct.GPR* %5844, i32 0, i32 1
  %5846 = getelementptr inbounds %struct.Reg, %struct.Reg* %5845, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %5846 to i64*
  %5847 = load i64, i64* %RAX.i261
  %5848 = load i64, i64* %PC.i260
  %5849 = add i64 %5848, 3
  store i64 %5849, i64* %PC.i260
  %5850 = trunc i64 %5847 to i32
  %5851 = add i32 1, %5850
  %5852 = zext i32 %5851 to i64
  store i64 %5852, i64* %RAX.i261, align 8
  %5853 = icmp ult i32 %5851, %5850
  %5854 = icmp ult i32 %5851, 1
  %5855 = or i1 %5853, %5854
  %5856 = zext i1 %5855 to i8
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5856, i8* %5857, align 1
  %5858 = and i32 %5851, 255
  %5859 = call i32 @llvm.ctpop.i32(i32 %5858)
  %5860 = trunc i32 %5859 to i8
  %5861 = and i8 %5860, 1
  %5862 = xor i8 %5861, 1
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5862, i8* %5863, align 1
  %5864 = xor i64 1, %5847
  %5865 = trunc i64 %5864 to i32
  %5866 = xor i32 %5865, %5851
  %5867 = lshr i32 %5866, 4
  %5868 = trunc i32 %5867 to i8
  %5869 = and i8 %5868, 1
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5869, i8* %5870, align 1
  %5871 = icmp eq i32 %5851, 0
  %5872 = zext i1 %5871 to i8
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5872, i8* %5873, align 1
  %5874 = lshr i32 %5851, 31
  %5875 = trunc i32 %5874 to i8
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5875, i8* %5876, align 1
  %5877 = lshr i32 %5850, 31
  %5878 = xor i32 %5874, %5877
  %5879 = add i32 %5878, %5874
  %5880 = icmp eq i32 %5879, 2
  %5881 = zext i1 %5880 to i8
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5881, i8* %5882, align 1
  store %struct.Memory* %loadMem_45e400, %struct.Memory** %MEMORY
  %loadMem_45e403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 33
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 1
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %5888 to i32*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 15
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %5891 to i64*
  %5892 = load i64, i64* %RBP.i259
  %5893 = sub i64 %5892, 8
  %5894 = load i32, i32* %EAX.i258
  %5895 = zext i32 %5894 to i64
  %5896 = load i64, i64* %PC.i257
  %5897 = add i64 %5896, 3
  store i64 %5897, i64* %PC.i257
  %5898 = inttoptr i64 %5893 to i32*
  store i32 %5894, i32* %5898
  store %struct.Memory* %loadMem_45e403, %struct.Memory** %MEMORY
  %loadMem_45e406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 33
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5901 to i64*
  %5902 = load i64, i64* %PC.i256
  %5903 = add i64 %5902, -76
  %5904 = load i64, i64* %PC.i256
  %5905 = add i64 %5904, 5
  store i64 %5905, i64* %PC.i256
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5903, i64* %5906, align 8
  store %struct.Memory* %loadMem_45e406, %struct.Memory** %MEMORY
  br label %block_.L_45e3ba

block_.L_45e40b:                                  ; preds = %routine_idivl__esi.exit
  %loadMem_45e40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 33
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 1
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %5912 to i64*
  %5913 = load i64, i64* %PC.i254
  %5914 = add i64 %5913, 8
  store i64 %5914, i64* %PC.i254
  %5915 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %5915, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_45e40b, %struct.Memory** %MEMORY
  %loadMem_45e413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 33
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5918 to i64*
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5920 = getelementptr inbounds %struct.GPR, %struct.GPR* %5919, i32 0, i32 1
  %5921 = getelementptr inbounds %struct.Reg, %struct.Reg* %5920, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %5921 to i64*
  %5922 = load i64, i64* %RAX.i253
  %5923 = load i64, i64* %PC.i252
  %5924 = add i64 %5923, 6
  store i64 %5924, i64* %PC.i252
  %5925 = inttoptr i64 %5922 to i32*
  store i32 0, i32* %5925
  store %struct.Memory* %loadMem_45e413, %struct.Memory** %MEMORY
  %loadMem_45e419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 33
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 1
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %5931 to i64*
  %5932 = load i64, i64* %PC.i250
  %5933 = add i64 %5932, 8
  store i64 %5933, i64* %PC.i250
  %5934 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %5934, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_45e419, %struct.Memory** %MEMORY
  %loadMem_45e421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 33
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5937 to i64*
  %5938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5939 = getelementptr inbounds %struct.GPR, %struct.GPR* %5938, i32 0, i32 1
  %5940 = getelementptr inbounds %struct.Reg, %struct.Reg* %5939, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %5940 to i64*
  %5941 = load i64, i64* %RAX.i249
  %5942 = load i64, i64* %PC.i248
  %5943 = add i64 %5942, 6
  store i64 %5943, i64* %PC.i248
  %5944 = inttoptr i64 %5941 to i32*
  store i32 0, i32* %5944
  store %struct.Memory* %loadMem_45e421, %struct.Memory** %MEMORY
  %loadMem_45e427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 33
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5947 to i64*
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 15
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %5950 to i64*
  %5951 = load i64, i64* %RBP.i247
  %5952 = sub i64 %5951, 20
  %5953 = load i64, i64* %PC.i246
  %5954 = add i64 %5953, 7
  store i64 %5954, i64* %PC.i246
  %5955 = inttoptr i64 %5952 to i32*
  store i32 1, i32* %5955
  store %struct.Memory* %loadMem_45e427, %struct.Memory** %MEMORY
  %loadMem_45e42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 15
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %5961 to i64*
  %5962 = load i64, i64* %RBP.i245
  %5963 = sub i64 %5962, 24
  %5964 = load i64, i64* %PC.i244
  %5965 = add i64 %5964, 7
  store i64 %5965, i64* %PC.i244
  %5966 = inttoptr i64 %5963 to i32*
  store i32 1, i32* %5966
  store %struct.Memory* %loadMem_45e42e, %struct.Memory** %MEMORY
  br label %block_.L_45e435

block_.L_45e435:                                  ; preds = %block_.L_45e572, %block_.L_45e40b
  %loadMem_45e435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 33
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5969 to i64*
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 1
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %5972 to i64*
  %5973 = load i64, i64* %PC.i242
  %5974 = add i64 %5973, 5
  store i64 %5974, i64* %PC.i242
  store i64 1, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_45e435, %struct.Memory** %MEMORY
  %loadMem_45e43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 33
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5977 to i64*
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 5
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %5980 to i64*
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 15
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %5983 to i64*
  %5984 = load i64, i64* %RBP.i241
  %5985 = sub i64 %5984, 24
  %5986 = load i64, i64* %PC.i239
  %5987 = add i64 %5986, 3
  store i64 %5987, i64* %PC.i239
  %5988 = inttoptr i64 %5985 to i32*
  %5989 = load i32, i32* %5988
  %5990 = zext i32 %5989 to i64
  store i64 %5990, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_45e43a, %struct.Memory** %MEMORY
  %loadMem_45e43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5992 = getelementptr inbounds %struct.GPR, %struct.GPR* %5991, i32 0, i32 33
  %5993 = getelementptr inbounds %struct.Reg, %struct.Reg* %5992, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5993 to i64*
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5995 = getelementptr inbounds %struct.GPR, %struct.GPR* %5994, i32 0, i32 1
  %5996 = getelementptr inbounds %struct.Reg, %struct.Reg* %5995, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %5996 to i32*
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5998 = getelementptr inbounds %struct.GPR, %struct.GPR* %5997, i32 0, i32 15
  %5999 = getelementptr inbounds %struct.Reg, %struct.Reg* %5998, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %5999 to i64*
  %6000 = load i32, i32* %EAX.i237
  %6001 = zext i32 %6000 to i64
  %6002 = load i64, i64* %RBP.i238
  %6003 = sub i64 %6002, 32
  %6004 = load i64, i64* %PC.i236
  %6005 = add i64 %6004, 3
  store i64 %6005, i64* %PC.i236
  %6006 = inttoptr i64 %6003 to i32*
  %6007 = load i32, i32* %6006
  %6008 = sub i32 %6000, %6007
  %6009 = icmp ult i32 %6000, %6007
  %6010 = zext i1 %6009 to i8
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6010, i8* %6011, align 1
  %6012 = and i32 %6008, 255
  %6013 = call i32 @llvm.ctpop.i32(i32 %6012)
  %6014 = trunc i32 %6013 to i8
  %6015 = and i8 %6014, 1
  %6016 = xor i8 %6015, 1
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6016, i8* %6017, align 1
  %6018 = xor i32 %6007, %6000
  %6019 = xor i32 %6018, %6008
  %6020 = lshr i32 %6019, 4
  %6021 = trunc i32 %6020 to i8
  %6022 = and i8 %6021, 1
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6022, i8* %6023, align 1
  %6024 = icmp eq i32 %6008, 0
  %6025 = zext i1 %6024 to i8
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6025, i8* %6026, align 1
  %6027 = lshr i32 %6008, 31
  %6028 = trunc i32 %6027 to i8
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6028, i8* %6029, align 1
  %6030 = lshr i32 %6000, 31
  %6031 = lshr i32 %6007, 31
  %6032 = xor i32 %6031, %6030
  %6033 = xor i32 %6027, %6030
  %6034 = add i32 %6033, %6032
  %6035 = icmp eq i32 %6034, 2
  %6036 = zext i1 %6035 to i8
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6036, i8* %6037, align 1
  store %struct.Memory* %loadMem_45e43d, %struct.Memory** %MEMORY
  %loadMem_45e440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6039 = getelementptr inbounds %struct.GPR, %struct.GPR* %6038, i32 0, i32 33
  %6040 = getelementptr inbounds %struct.Reg, %struct.Reg* %6039, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %6040 to i64*
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6042 = getelementptr inbounds %struct.GPR, %struct.GPR* %6041, i32 0, i32 5
  %6043 = getelementptr inbounds %struct.Reg, %struct.Reg* %6042, i32 0, i32 0
  %ECX.i234 = bitcast %union.anon* %6043 to i32*
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6045 = getelementptr inbounds %struct.GPR, %struct.GPR* %6044, i32 0, i32 15
  %6046 = getelementptr inbounds %struct.Reg, %struct.Reg* %6045, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %6046 to i64*
  %6047 = load i64, i64* %RBP.i235
  %6048 = sub i64 %6047, 124
  %6049 = load i32, i32* %ECX.i234
  %6050 = zext i32 %6049 to i64
  %6051 = load i64, i64* %PC.i233
  %6052 = add i64 %6051, 3
  store i64 %6052, i64* %PC.i233
  %6053 = inttoptr i64 %6048 to i32*
  store i32 %6049, i32* %6053
  store %struct.Memory* %loadMem_45e440, %struct.Memory** %MEMORY
  %loadMem_45e443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6055 = getelementptr inbounds %struct.GPR, %struct.GPR* %6054, i32 0, i32 33
  %6056 = getelementptr inbounds %struct.Reg, %struct.Reg* %6055, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6056 to i64*
  %6057 = load i64, i64* %PC.i232
  %6058 = add i64 %6057, 19
  %6059 = load i64, i64* %PC.i232
  %6060 = add i64 %6059, 6
  %6061 = load i64, i64* %PC.i232
  %6062 = add i64 %6061, 6
  store i64 %6062, i64* %PC.i232
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6064 = load i8, i8* %6063, align 1
  %6065 = icmp ne i8 %6064, 0
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6067 = load i8, i8* %6066, align 1
  %6068 = icmp ne i8 %6067, 0
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6070 = load i8, i8* %6069, align 1
  %6071 = icmp ne i8 %6070, 0
  %6072 = xor i1 %6068, %6071
  %6073 = or i1 %6065, %6072
  %6074 = zext i1 %6073 to i8
  store i8 %6074, i8* %BRANCH_TAKEN, align 1
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6076 = select i1 %6073, i64 %6058, i64 %6060
  store i64 %6076, i64* %6075, align 8
  store %struct.Memory* %loadMem_45e443, %struct.Memory** %MEMORY
  %loadBr_45e443 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e443 = icmp eq i8 %loadBr_45e443, 1
  br i1 %cmpBr_45e443, label %block_.L_45e456, label %block_45e449

block_45e449:                                     ; preds = %block_.L_45e435
  %loadMem_45e449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 1
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %6082 to i64*
  %6083 = load i64, i64* %PC.i230
  %6084 = add i64 %6083, 5
  store i64 %6084, i64* %PC.i230
  store i64 1, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_45e449, %struct.Memory** %MEMORY
  %loadMem_45e44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 33
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 1
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %6090 to i32*
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 15
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %6093 to i64*
  %6094 = load i64, i64* %RBP.i229
  %6095 = sub i64 %6094, 128
  %6096 = load i32, i32* %EAX.i228
  %6097 = zext i32 %6096 to i64
  %6098 = load i64, i64* %PC.i227
  %6099 = add i64 %6098, 3
  store i64 %6099, i64* %PC.i227
  %6100 = inttoptr i64 %6095 to i32*
  store i32 %6096, i32* %6100
  store %struct.Memory* %loadMem_45e44e, %struct.Memory** %MEMORY
  %loadMem_45e451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 33
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6103 to i64*
  %6104 = load i64, i64* %PC.i226
  %6105 = add i64 %6104, 11
  %6106 = load i64, i64* %PC.i226
  %6107 = add i64 %6106, 5
  store i64 %6107, i64* %PC.i226
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6105, i64* %6108, align 8
  store %struct.Memory* %loadMem_45e451, %struct.Memory** %MEMORY
  br label %block_.L_45e45c

block_.L_45e456:                                  ; preds = %block_.L_45e435
  %loadMem_45e456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 33
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6111 to i64*
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 1
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %6114 to i64*
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 15
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %6117 to i64*
  %6118 = load i64, i64* %RBP.i225
  %6119 = sub i64 %6118, 32
  %6120 = load i64, i64* %PC.i223
  %6121 = add i64 %6120, 3
  store i64 %6121, i64* %PC.i223
  %6122 = inttoptr i64 %6119 to i32*
  %6123 = load i32, i32* %6122
  %6124 = zext i32 %6123 to i64
  store i64 %6124, i64* %RAX.i224, align 8
  store %struct.Memory* %loadMem_45e456, %struct.Memory** %MEMORY
  %loadMem_45e459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6126 = getelementptr inbounds %struct.GPR, %struct.GPR* %6125, i32 0, i32 33
  %6127 = getelementptr inbounds %struct.Reg, %struct.Reg* %6126, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6127 to i64*
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 1
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %6130 to i32*
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 15
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %6133 to i64*
  %6134 = load i64, i64* %RBP.i222
  %6135 = sub i64 %6134, 128
  %6136 = load i32, i32* %EAX.i221
  %6137 = zext i32 %6136 to i64
  %6138 = load i64, i64* %PC.i220
  %6139 = add i64 %6138, 3
  store i64 %6139, i64* %PC.i220
  %6140 = inttoptr i64 %6135 to i32*
  store i32 %6136, i32* %6140
  store %struct.Memory* %loadMem_45e459, %struct.Memory** %MEMORY
  br label %block_.L_45e45c

block_.L_45e45c:                                  ; preds = %block_.L_45e456, %block_45e449
  %loadMem_45e45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6142 = getelementptr inbounds %struct.GPR, %struct.GPR* %6141, i32 0, i32 33
  %6143 = getelementptr inbounds %struct.Reg, %struct.Reg* %6142, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6143 to i64*
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 1
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %6146 to i64*
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 15
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %6149 to i64*
  %6150 = load i64, i64* %RBP.i219
  %6151 = sub i64 %6150, 128
  %6152 = load i64, i64* %PC.i217
  %6153 = add i64 %6152, 3
  store i64 %6153, i64* %PC.i217
  %6154 = inttoptr i64 %6151 to i32*
  %6155 = load i32, i32* %6154
  %6156 = zext i32 %6155 to i64
  store i64 %6156, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_45e45c, %struct.Memory** %MEMORY
  %loadMem_45e45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 33
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6159 to i64*
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 5
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 15
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %6165 to i64*
  %6166 = load i64, i64* %RBP.i216
  %6167 = sub i64 %6166, 124
  %6168 = load i64, i64* %PC.i214
  %6169 = add i64 %6168, 3
  store i64 %6169, i64* %PC.i214
  %6170 = inttoptr i64 %6167 to i32*
  %6171 = load i32, i32* %6170
  %6172 = zext i32 %6171 to i64
  store i64 %6172, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_45e45f, %struct.Memory** %MEMORY
  %loadMem_45e462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 1
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %EAX.i212 = bitcast %union.anon* %6178 to i32*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 5
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %ECX.i213 = bitcast %union.anon* %6181 to i32*
  %6182 = load i32, i32* %ECX.i213
  %6183 = zext i32 %6182 to i64
  %6184 = load i32, i32* %EAX.i212
  %6185 = zext i32 %6184 to i64
  %6186 = load i64, i64* %PC.i211
  %6187 = add i64 %6186, 2
  store i64 %6187, i64* %PC.i211
  %6188 = sub i32 %6182, %6184
  %6189 = icmp ult i32 %6182, %6184
  %6190 = zext i1 %6189 to i8
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6190, i8* %6191, align 1
  %6192 = and i32 %6188, 255
  %6193 = call i32 @llvm.ctpop.i32(i32 %6192)
  %6194 = trunc i32 %6193 to i8
  %6195 = and i8 %6194, 1
  %6196 = xor i8 %6195, 1
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6196, i8* %6197, align 1
  %6198 = xor i64 %6185, %6183
  %6199 = trunc i64 %6198 to i32
  %6200 = xor i32 %6199, %6188
  %6201 = lshr i32 %6200, 4
  %6202 = trunc i32 %6201 to i8
  %6203 = and i8 %6202, 1
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6203, i8* %6204, align 1
  %6205 = icmp eq i32 %6188, 0
  %6206 = zext i1 %6205 to i8
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6206, i8* %6207, align 1
  %6208 = lshr i32 %6188, 31
  %6209 = trunc i32 %6208 to i8
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6209, i8* %6210, align 1
  %6211 = lshr i32 %6182, 31
  %6212 = lshr i32 %6184, 31
  %6213 = xor i32 %6212, %6211
  %6214 = xor i32 %6208, %6211
  %6215 = add i32 %6214, %6213
  %6216 = icmp eq i32 %6215, 2
  %6217 = zext i1 %6216 to i8
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6217, i8* %6218, align 1
  store %struct.Memory* %loadMem_45e462, %struct.Memory** %MEMORY
  %loadMem_45e464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 33
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6221 to i64*
  %6222 = load i64, i64* %PC.i210
  %6223 = add i64 %6222, 284
  %6224 = load i64, i64* %PC.i210
  %6225 = add i64 %6224, 6
  %6226 = load i64, i64* %PC.i210
  %6227 = add i64 %6226, 6
  store i64 %6227, i64* %PC.i210
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6229 = load i8, i8* %6228, align 1
  %6230 = icmp eq i8 %6229, 0
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6232 = load i8, i8* %6231, align 1
  %6233 = icmp ne i8 %6232, 0
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6235 = load i8, i8* %6234, align 1
  %6236 = icmp ne i8 %6235, 0
  %6237 = xor i1 %6233, %6236
  %6238 = xor i1 %6237, true
  %6239 = and i1 %6230, %6238
  %6240 = zext i1 %6239 to i8
  store i8 %6240, i8* %BRANCH_TAKEN, align 1
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6242 = select i1 %6239, i64 %6223, i64 %6225
  store i64 %6242, i64* %6241, align 8
  store %struct.Memory* %loadMem_45e464, %struct.Memory** %MEMORY
  %loadBr_45e464 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e464 = icmp eq i8 %loadBr_45e464, 1
  br i1 %cmpBr_45e464, label %block_.L_45e580, label %block_45e46a

block_45e46a:                                     ; preds = %block_.L_45e45c
  %loadMem_45e46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6244 = getelementptr inbounds %struct.GPR, %struct.GPR* %6243, i32 0, i32 33
  %6245 = getelementptr inbounds %struct.Reg, %struct.Reg* %6244, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6245 to i64*
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6247 = getelementptr inbounds %struct.GPR, %struct.GPR* %6246, i32 0, i32 1
  %6248 = getelementptr inbounds %struct.Reg, %struct.Reg* %6247, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %6248 to i32*
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 1
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %6251 to i64*
  %6252 = load i64, i64* %RAX.i209
  %6253 = load i32, i32* %EAX.i208
  %6254 = zext i32 %6253 to i64
  %6255 = load i64, i64* %PC.i207
  %6256 = add i64 %6255, 2
  store i64 %6256, i64* %PC.i207
  %6257 = xor i64 %6254, %6252
  %6258 = trunc i64 %6257 to i32
  %6259 = and i64 %6257, 4294967295
  store i64 %6259, i64* %RAX.i209, align 8
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6260, align 1
  %6261 = and i32 %6258, 255
  %6262 = call i32 @llvm.ctpop.i32(i32 %6261)
  %6263 = trunc i32 %6262 to i8
  %6264 = and i8 %6263, 1
  %6265 = xor i8 %6264, 1
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6265, i8* %6266, align 1
  %6267 = icmp eq i32 %6258, 0
  %6268 = zext i1 %6267 to i8
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6268, i8* %6269, align 1
  %6270 = lshr i32 %6258, 31
  %6271 = trunc i32 %6270 to i8
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6271, i8* %6272, align 1
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6273, align 1
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6274, align 1
  store %struct.Memory* %loadMem_45e46a, %struct.Memory** %MEMORY
  %loadMem_45e46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 33
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6277 to i64*
  %6278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6279 = getelementptr inbounds %struct.GPR, %struct.GPR* %6278, i32 0, i32 1
  %6280 = getelementptr inbounds %struct.Reg, %struct.Reg* %6279, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %6280 to i64*
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 15
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %6283 to i64*
  %6284 = load i64, i64* %RAX.i205
  %6285 = load i64, i64* %RBP.i206
  %6286 = sub i64 %6285, 24
  %6287 = load i64, i64* %PC.i204
  %6288 = add i64 %6287, 3
  store i64 %6288, i64* %PC.i204
  %6289 = trunc i64 %6284 to i32
  %6290 = inttoptr i64 %6286 to i32*
  %6291 = load i32, i32* %6290
  %6292 = sub i32 %6289, %6291
  %6293 = zext i32 %6292 to i64
  store i64 %6293, i64* %RAX.i205, align 8
  %6294 = icmp ult i32 %6289, %6291
  %6295 = zext i1 %6294 to i8
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6295, i8* %6296, align 1
  %6297 = and i32 %6292, 255
  %6298 = call i32 @llvm.ctpop.i32(i32 %6297)
  %6299 = trunc i32 %6298 to i8
  %6300 = and i8 %6299, 1
  %6301 = xor i8 %6300, 1
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6301, i8* %6302, align 1
  %6303 = xor i32 %6291, %6289
  %6304 = xor i32 %6303, %6292
  %6305 = lshr i32 %6304, 4
  %6306 = trunc i32 %6305 to i8
  %6307 = and i8 %6306, 1
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6307, i8* %6308, align 1
  %6309 = icmp eq i32 %6292, 0
  %6310 = zext i1 %6309 to i8
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6310, i8* %6311, align 1
  %6312 = lshr i32 %6292, 31
  %6313 = trunc i32 %6312 to i8
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6313, i8* %6314, align 1
  %6315 = lshr i32 %6289, 31
  %6316 = lshr i32 %6291, 31
  %6317 = xor i32 %6316, %6315
  %6318 = xor i32 %6312, %6315
  %6319 = add i32 %6318, %6317
  %6320 = icmp eq i32 %6319, 2
  %6321 = zext i1 %6320 to i8
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6321, i8* %6322, align 1
  store %struct.Memory* %loadMem_45e46c, %struct.Memory** %MEMORY
  %loadMem_45e46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 33
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6325 to i64*
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6327 = getelementptr inbounds %struct.GPR, %struct.GPR* %6326, i32 0, i32 1
  %6328 = getelementptr inbounds %struct.Reg, %struct.Reg* %6327, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %6328 to i64*
  %6329 = load i64, i64* %RAX.i203
  %6330 = load i64, i64* %PC.i202
  %6331 = add i64 %6330, 3
  store i64 %6331, i64* %PC.i202
  %6332 = trunc i64 %6329 to i32
  %6333 = add i32 1, %6332
  %6334 = zext i32 %6333 to i64
  store i64 %6334, i64* %RAX.i203, align 8
  %6335 = icmp ult i32 %6333, %6332
  %6336 = icmp ult i32 %6333, 1
  %6337 = or i1 %6335, %6336
  %6338 = zext i1 %6337 to i8
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6338, i8* %6339, align 1
  %6340 = and i32 %6333, 255
  %6341 = call i32 @llvm.ctpop.i32(i32 %6340)
  %6342 = trunc i32 %6341 to i8
  %6343 = and i8 %6342, 1
  %6344 = xor i8 %6343, 1
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6344, i8* %6345, align 1
  %6346 = xor i64 1, %6329
  %6347 = trunc i64 %6346 to i32
  %6348 = xor i32 %6347, %6333
  %6349 = lshr i32 %6348, 4
  %6350 = trunc i32 %6349 to i8
  %6351 = and i8 %6350, 1
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6351, i8* %6352, align 1
  %6353 = icmp eq i32 %6333, 0
  %6354 = zext i1 %6353 to i8
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6354, i8* %6355, align 1
  %6356 = lshr i32 %6333, 31
  %6357 = trunc i32 %6356 to i8
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6357, i8* %6358, align 1
  %6359 = lshr i32 %6332, 31
  %6360 = xor i32 %6356, %6359
  %6361 = add i32 %6360, %6356
  %6362 = icmp eq i32 %6361, 2
  %6363 = zext i1 %6362 to i8
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6363, i8* %6364, align 1
  store %struct.Memory* %loadMem_45e46f, %struct.Memory** %MEMORY
  %loadMem_45e472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 33
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6367 to i64*
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 1
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %6370 to i32*
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6372 = getelementptr inbounds %struct.GPR, %struct.GPR* %6371, i32 0, i32 15
  %6373 = getelementptr inbounds %struct.Reg, %struct.Reg* %6372, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %6373 to i64*
  %6374 = load i64, i64* %RBP.i201
  %6375 = sub i64 %6374, 8
  %6376 = load i32, i32* %EAX.i200
  %6377 = zext i32 %6376 to i64
  %6378 = load i64, i64* %PC.i199
  %6379 = add i64 %6378, 3
  store i64 %6379, i64* %PC.i199
  %6380 = inttoptr i64 %6375 to i32*
  store i32 %6376, i32* %6380
  store %struct.Memory* %loadMem_45e472, %struct.Memory** %MEMORY
  br label %block_.L_45e475

block_.L_45e475:                                  ; preds = %block_45e481, %block_45e46a
  %loadMem_45e475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 33
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6383 to i64*
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 1
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %6386 to i64*
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 15
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %6389 to i64*
  %6390 = load i64, i64* %RBP.i198
  %6391 = sub i64 %6390, 8
  %6392 = load i64, i64* %PC.i196
  %6393 = add i64 %6392, 3
  store i64 %6393, i64* %PC.i196
  %6394 = inttoptr i64 %6391 to i32*
  %6395 = load i32, i32* %6394
  %6396 = zext i32 %6395 to i64
  store i64 %6396, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_45e475, %struct.Memory** %MEMORY
  %loadMem_45e478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6398 = getelementptr inbounds %struct.GPR, %struct.GPR* %6397, i32 0, i32 33
  %6399 = getelementptr inbounds %struct.Reg, %struct.Reg* %6398, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6399 to i64*
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 1
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %6402 to i32*
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 15
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %6405 to i64*
  %6406 = load i32, i32* %EAX.i194
  %6407 = zext i32 %6406 to i64
  %6408 = load i64, i64* %RBP.i195
  %6409 = sub i64 %6408, 24
  %6410 = load i64, i64* %PC.i193
  %6411 = add i64 %6410, 3
  store i64 %6411, i64* %PC.i193
  %6412 = inttoptr i64 %6409 to i32*
  %6413 = load i32, i32* %6412
  %6414 = sub i32 %6406, %6413
  %6415 = icmp ult i32 %6406, %6413
  %6416 = zext i1 %6415 to i8
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6416, i8* %6417, align 1
  %6418 = and i32 %6414, 255
  %6419 = call i32 @llvm.ctpop.i32(i32 %6418)
  %6420 = trunc i32 %6419 to i8
  %6421 = and i8 %6420, 1
  %6422 = xor i8 %6421, 1
  %6423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6422, i8* %6423, align 1
  %6424 = xor i32 %6413, %6406
  %6425 = xor i32 %6424, %6414
  %6426 = lshr i32 %6425, 4
  %6427 = trunc i32 %6426 to i8
  %6428 = and i8 %6427, 1
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6428, i8* %6429, align 1
  %6430 = icmp eq i32 %6414, 0
  %6431 = zext i1 %6430 to i8
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6431, i8* %6432, align 1
  %6433 = lshr i32 %6414, 31
  %6434 = trunc i32 %6433 to i8
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6434, i8* %6435, align 1
  %6436 = lshr i32 %6406, 31
  %6437 = lshr i32 %6413, 31
  %6438 = xor i32 %6437, %6436
  %6439 = xor i32 %6433, %6436
  %6440 = add i32 %6439, %6438
  %6441 = icmp eq i32 %6440, 2
  %6442 = zext i1 %6441 to i8
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6442, i8* %6443, align 1
  store %struct.Memory* %loadMem_45e478, %struct.Memory** %MEMORY
  %loadMem_45e47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6445 = getelementptr inbounds %struct.GPR, %struct.GPR* %6444, i32 0, i32 33
  %6446 = getelementptr inbounds %struct.Reg, %struct.Reg* %6445, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6446 to i64*
  %6447 = load i64, i64* %PC.i192
  %6448 = add i64 %6447, 114
  %6449 = load i64, i64* %PC.i192
  %6450 = add i64 %6449, 6
  %6451 = load i64, i64* %PC.i192
  %6452 = add i64 %6451, 6
  store i64 %6452, i64* %PC.i192
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6454 = load i8, i8* %6453, align 1
  %6455 = icmp ne i8 %6454, 0
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6457 = load i8, i8* %6456, align 1
  %6458 = icmp ne i8 %6457, 0
  %6459 = xor i1 %6455, %6458
  %6460 = xor i1 %6459, true
  %6461 = zext i1 %6460 to i8
  store i8 %6461, i8* %BRANCH_TAKEN, align 1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6463 = select i1 %6459, i64 %6450, i64 %6448
  store i64 %6463, i64* %6462, align 8
  store %struct.Memory* %loadMem_45e47b, %struct.Memory** %MEMORY
  %loadBr_45e47b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e47b = icmp eq i8 %loadBr_45e47b, 1
  br i1 %cmpBr_45e47b, label %block_.L_45e4ed, label %block_45e481

block_45e481:                                     ; preds = %block_.L_45e475
  %loadMem_45e481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6465 = getelementptr inbounds %struct.GPR, %struct.GPR* %6464, i32 0, i32 33
  %6466 = getelementptr inbounds %struct.Reg, %struct.Reg* %6465, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %6466 to i64*
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6468 = getelementptr inbounds %struct.GPR, %struct.GPR* %6467, i32 0, i32 1
  %6469 = getelementptr inbounds %struct.Reg, %struct.Reg* %6468, i32 0, i32 0
  %EAX.i190 = bitcast %union.anon* %6469 to i32*
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 1
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %6472 to i64*
  %6473 = load i64, i64* %RAX.i191
  %6474 = load i32, i32* %EAX.i190
  %6475 = zext i32 %6474 to i64
  %6476 = load i64, i64* %PC.i189
  %6477 = add i64 %6476, 2
  store i64 %6477, i64* %PC.i189
  %6478 = xor i64 %6475, %6473
  %6479 = trunc i64 %6478 to i32
  %6480 = and i64 %6478, 4294967295
  store i64 %6480, i64* %RAX.i191, align 8
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6481, align 1
  %6482 = and i32 %6479, 255
  %6483 = call i32 @llvm.ctpop.i32(i32 %6482)
  %6484 = trunc i32 %6483 to i8
  %6485 = and i8 %6484, 1
  %6486 = xor i8 %6485, 1
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6486, i8* %6487, align 1
  %6488 = icmp eq i32 %6479, 0
  %6489 = zext i1 %6488 to i8
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6489, i8* %6490, align 1
  %6491 = lshr i32 %6479, 31
  %6492 = trunc i32 %6491 to i8
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6492, i8* %6493, align 1
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6494, align 1
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6495, align 1
  store %struct.Memory* %loadMem_45e481, %struct.Memory** %MEMORY
  %loadMem_45e483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6497 = getelementptr inbounds %struct.GPR, %struct.GPR* %6496, i32 0, i32 33
  %6498 = getelementptr inbounds %struct.Reg, %struct.Reg* %6497, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6498 to i64*
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 5
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %6501 to i64*
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 15
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %6504 to i64*
  %6505 = load i64, i64* %RBP.i188
  %6506 = sub i64 %6505, 8
  %6507 = load i64, i64* %PC.i186
  %6508 = add i64 %6507, 3
  store i64 %6508, i64* %PC.i186
  %6509 = inttoptr i64 %6506 to i32*
  %6510 = load i32, i32* %6509
  %6511 = zext i32 %6510 to i64
  store i64 %6511, i64* %RCX.i187, align 8
  store %struct.Memory* %loadMem_45e483, %struct.Memory** %MEMORY
  %loadMem_45e486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 33
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6514 to i64*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 7
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %PC.i184
  %6519 = add i64 %6518, 8
  store i64 %6519, i64* %PC.i184
  %6520 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %6520, i64* %RDX.i185, align 8
  store %struct.Memory* %loadMem_45e486, %struct.Memory** %MEMORY
  %loadMem_45e48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 9
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %RSI.i182 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 15
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %6529 to i64*
  %6530 = load i64, i64* %RBP.i183
  %6531 = sub i64 %6530, 20
  %6532 = load i64, i64* %PC.i181
  %6533 = add i64 %6532, 4
  store i64 %6533, i64* %PC.i181
  %6534 = inttoptr i64 %6531 to i32*
  %6535 = load i32, i32* %6534
  %6536 = sext i32 %6535 to i64
  store i64 %6536, i64* %RSI.i182, align 8
  store %struct.Memory* %loadMem_45e48e, %struct.Memory** %MEMORY
  %loadMem_45e492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 33
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6539 to i64*
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 5
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %ECX.i178 = bitcast %union.anon* %6542 to i32*
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 7
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %6545 to i64*
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 9
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %RSI.i180 = bitcast %union.anon* %6548 to i64*
  %6549 = load i64, i64* %RDX.i179
  %6550 = load i64, i64* %RSI.i180
  %6551 = mul i64 %6550, 4
  %6552 = add i64 %6551, %6549
  %6553 = load i32, i32* %ECX.i178
  %6554 = zext i32 %6553 to i64
  %6555 = load i64, i64* %PC.i177
  %6556 = add i64 %6555, 3
  store i64 %6556, i64* %PC.i177
  %6557 = inttoptr i64 %6552 to i32*
  store i32 %6553, i32* %6557
  store %struct.Memory* %loadMem_45e492, %struct.Memory** %MEMORY
  %loadMem_45e495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 33
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 1
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %6563 to i64*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 15
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %6566 to i64*
  %6567 = load i64, i64* %RAX.i175
  %6568 = load i64, i64* %RBP.i176
  %6569 = sub i64 %6568, 24
  %6570 = load i64, i64* %PC.i174
  %6571 = add i64 %6570, 3
  store i64 %6571, i64* %PC.i174
  %6572 = trunc i64 %6567 to i32
  %6573 = inttoptr i64 %6569 to i32*
  %6574 = load i32, i32* %6573
  %6575 = sub i32 %6572, %6574
  %6576 = zext i32 %6575 to i64
  store i64 %6576, i64* %RAX.i175, align 8
  %6577 = icmp ult i32 %6572, %6574
  %6578 = zext i1 %6577 to i8
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6578, i8* %6579, align 1
  %6580 = and i32 %6575, 255
  %6581 = call i32 @llvm.ctpop.i32(i32 %6580)
  %6582 = trunc i32 %6581 to i8
  %6583 = and i8 %6582, 1
  %6584 = xor i8 %6583, 1
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6584, i8* %6585, align 1
  %6586 = xor i32 %6574, %6572
  %6587 = xor i32 %6586, %6575
  %6588 = lshr i32 %6587, 4
  %6589 = trunc i32 %6588 to i8
  %6590 = and i8 %6589, 1
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6590, i8* %6591, align 1
  %6592 = icmp eq i32 %6575, 0
  %6593 = zext i1 %6592 to i8
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6593, i8* %6594, align 1
  %6595 = lshr i32 %6575, 31
  %6596 = trunc i32 %6595 to i8
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6596, i8* %6597, align 1
  %6598 = lshr i32 %6572, 31
  %6599 = lshr i32 %6574, 31
  %6600 = xor i32 %6599, %6598
  %6601 = xor i32 %6595, %6598
  %6602 = add i32 %6601, %6600
  %6603 = icmp eq i32 %6602, 2
  %6604 = zext i1 %6603 to i8
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6604, i8* %6605, align 1
  store %struct.Memory* %loadMem_45e495, %struct.Memory** %MEMORY
  %loadMem_45e498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 33
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 7
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %6611 to i64*
  %6612 = load i64, i64* %PC.i172
  %6613 = add i64 %6612, 8
  store i64 %6613, i64* %PC.i172
  %6614 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %6614, i64* %RDX.i173, align 8
  store %struct.Memory* %loadMem_45e498, %struct.Memory** %MEMORY
  %loadMem_45e4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 33
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6617 to i64*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 5
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %6620 to i64*
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 15
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %6623 to i64*
  %6624 = load i64, i64* %RBP.i171
  %6625 = sub i64 %6624, 20
  %6626 = load i64, i64* %PC.i169
  %6627 = add i64 %6626, 3
  store i64 %6627, i64* %PC.i169
  %6628 = inttoptr i64 %6625 to i32*
  %6629 = load i32, i32* %6628
  %6630 = zext i32 %6629 to i64
  store i64 %6630, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_45e4a0, %struct.Memory** %MEMORY
  %loadMem_45e4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 33
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6633 to i64*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 5
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %ECX.i167 = bitcast %union.anon* %6636 to i32*
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 11
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %RDI.i168 = bitcast %union.anon* %6639 to i64*
  %6640 = load i32, i32* %ECX.i167
  %6641 = zext i32 %6640 to i64
  %6642 = load i64, i64* %PC.i166
  %6643 = add i64 %6642, 2
  store i64 %6643, i64* %PC.i166
  %6644 = and i64 %6641, 4294967295
  store i64 %6644, i64* %RDI.i168, align 8
  store %struct.Memory* %loadMem_45e4a3, %struct.Memory** %MEMORY
  %loadMem_45e4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 33
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6647 to i64*
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 11
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %RDI.i165 = bitcast %union.anon* %6650 to i64*
  %6651 = load i64, i64* %RDI.i165
  %6652 = load i64, i64* %PC.i164
  %6653 = add i64 %6652, 3
  store i64 %6653, i64* %PC.i164
  %6654 = trunc i64 %6651 to i32
  %6655 = add i32 1, %6654
  %6656 = zext i32 %6655 to i64
  store i64 %6656, i64* %RDI.i165, align 8
  %6657 = icmp ult i32 %6655, %6654
  %6658 = icmp ult i32 %6655, 1
  %6659 = or i1 %6657, %6658
  %6660 = zext i1 %6659 to i8
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6660, i8* %6661, align 1
  %6662 = and i32 %6655, 255
  %6663 = call i32 @llvm.ctpop.i32(i32 %6662)
  %6664 = trunc i32 %6663 to i8
  %6665 = and i8 %6664, 1
  %6666 = xor i8 %6665, 1
  %6667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6666, i8* %6667, align 1
  %6668 = xor i64 1, %6651
  %6669 = trunc i64 %6668 to i32
  %6670 = xor i32 %6669, %6655
  %6671 = lshr i32 %6670, 4
  %6672 = trunc i32 %6671 to i8
  %6673 = and i8 %6672, 1
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6673, i8* %6674, align 1
  %6675 = icmp eq i32 %6655, 0
  %6676 = zext i1 %6675 to i8
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6676, i8* %6677, align 1
  %6678 = lshr i32 %6655, 31
  %6679 = trunc i32 %6678 to i8
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6679, i8* %6680, align 1
  %6681 = lshr i32 %6654, 31
  %6682 = xor i32 %6678, %6681
  %6683 = add i32 %6682, %6678
  %6684 = icmp eq i32 %6683, 2
  %6685 = zext i1 %6684 to i8
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6685, i8* %6686, align 1
  store %struct.Memory* %loadMem_45e4a5, %struct.Memory** %MEMORY
  %loadMem_45e4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 33
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6689 to i64*
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6691 = getelementptr inbounds %struct.GPR, %struct.GPR* %6690, i32 0, i32 11
  %6692 = getelementptr inbounds %struct.Reg, %struct.Reg* %6691, i32 0, i32 0
  %EDI.i162 = bitcast %union.anon* %6692 to i32*
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 15
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %6695 to i64*
  %6696 = load i64, i64* %RBP.i163
  %6697 = sub i64 %6696, 20
  %6698 = load i32, i32* %EDI.i162
  %6699 = zext i32 %6698 to i64
  %6700 = load i64, i64* %PC.i161
  %6701 = add i64 %6700, 3
  store i64 %6701, i64* %PC.i161
  %6702 = inttoptr i64 %6697 to i32*
  store i32 %6698, i32* %6702
  store %struct.Memory* %loadMem_45e4a8, %struct.Memory** %MEMORY
  %loadMem_45e4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 33
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 5
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %ECX.i159 = bitcast %union.anon* %6708 to i32*
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 9
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %RSI.i160 = bitcast %union.anon* %6711 to i64*
  %6712 = load i32, i32* %ECX.i159
  %6713 = zext i32 %6712 to i64
  %6714 = load i64, i64* %PC.i158
  %6715 = add i64 %6714, 3
  store i64 %6715, i64* %PC.i158
  %6716 = shl i64 %6713, 32
  %6717 = ashr exact i64 %6716, 32
  store i64 %6717, i64* %RSI.i160, align 8
  store %struct.Memory* %loadMem_45e4ab, %struct.Memory** %MEMORY
  %loadMem_45e4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6719 = getelementptr inbounds %struct.GPR, %struct.GPR* %6718, i32 0, i32 33
  %6720 = getelementptr inbounds %struct.Reg, %struct.Reg* %6719, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6720 to i64*
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6722 = getelementptr inbounds %struct.GPR, %struct.GPR* %6721, i32 0, i32 1
  %6723 = getelementptr inbounds %struct.Reg, %struct.Reg* %6722, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %6723 to i32*
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 7
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 9
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %RSI.i157 = bitcast %union.anon* %6729 to i64*
  %6730 = load i64, i64* %RDX.i156
  %6731 = load i64, i64* %RSI.i157
  %6732 = mul i64 %6731, 4
  %6733 = add i64 %6732, %6730
  %6734 = load i32, i32* %EAX.i155
  %6735 = zext i32 %6734 to i64
  %6736 = load i64, i64* %PC.i154
  %6737 = add i64 %6736, 3
  store i64 %6737, i64* %PC.i154
  %6738 = inttoptr i64 %6733 to i32*
  store i32 %6734, i32* %6738
  store %struct.Memory* %loadMem_45e4ae, %struct.Memory** %MEMORY
  %loadMem_45e4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 33
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6741 to i64*
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6743 = getelementptr inbounds %struct.GPR, %struct.GPR* %6742, i32 0, i32 1
  %6744 = getelementptr inbounds %struct.Reg, %struct.Reg* %6743, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %6744 to i64*
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6746 = getelementptr inbounds %struct.GPR, %struct.GPR* %6745, i32 0, i32 15
  %6747 = getelementptr inbounds %struct.Reg, %struct.Reg* %6746, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %6747 to i64*
  %6748 = load i64, i64* %RBP.i153
  %6749 = sub i64 %6748, 8
  %6750 = load i64, i64* %PC.i151
  %6751 = add i64 %6750, 3
  store i64 %6751, i64* %PC.i151
  %6752 = inttoptr i64 %6749 to i32*
  %6753 = load i32, i32* %6752
  %6754 = zext i32 %6753 to i64
  store i64 %6754, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_45e4b1, %struct.Memory** %MEMORY
  %loadMem_45e4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 33
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 7
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %6760 to i64*
  %6761 = load i64, i64* %PC.i149
  %6762 = add i64 %6761, 8
  store i64 %6762, i64* %PC.i149
  %6763 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %6763, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_45e4b4, %struct.Memory** %MEMORY
  %loadMem_45e4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 33
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6766 to i64*
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 9
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %RSI.i147 = bitcast %union.anon* %6769 to i64*
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6771 = getelementptr inbounds %struct.GPR, %struct.GPR* %6770, i32 0, i32 15
  %6772 = getelementptr inbounds %struct.Reg, %struct.Reg* %6771, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %6772 to i64*
  %6773 = load i64, i64* %RBP.i148
  %6774 = sub i64 %6773, 20
  %6775 = load i64, i64* %PC.i146
  %6776 = add i64 %6775, 4
  store i64 %6776, i64* %PC.i146
  %6777 = inttoptr i64 %6774 to i32*
  %6778 = load i32, i32* %6777
  %6779 = sext i32 %6778 to i64
  store i64 %6779, i64* %RSI.i147, align 8
  store %struct.Memory* %loadMem_45e4bc, %struct.Memory** %MEMORY
  %loadMem_45e4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6781 = getelementptr inbounds %struct.GPR, %struct.GPR* %6780, i32 0, i32 33
  %6782 = getelementptr inbounds %struct.Reg, %struct.Reg* %6781, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6782 to i64*
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6784 = getelementptr inbounds %struct.GPR, %struct.GPR* %6783, i32 0, i32 1
  %6785 = getelementptr inbounds %struct.Reg, %struct.Reg* %6784, i32 0, i32 0
  %EAX.i143 = bitcast %union.anon* %6785 to i32*
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 7
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %6788 to i64*
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 9
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %6791 to i64*
  %6792 = load i64, i64* %RDX.i144
  %6793 = load i64, i64* %RSI.i145
  %6794 = mul i64 %6793, 4
  %6795 = add i64 %6794, %6792
  %6796 = load i32, i32* %EAX.i143
  %6797 = zext i32 %6796 to i64
  %6798 = load i64, i64* %PC.i142
  %6799 = add i64 %6798, 3
  store i64 %6799, i64* %PC.i142
  %6800 = inttoptr i64 %6795 to i32*
  store i32 %6796, i32* %6800
  store %struct.Memory* %loadMem_45e4c0, %struct.Memory** %MEMORY
  %loadMem_45e4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6802 = getelementptr inbounds %struct.GPR, %struct.GPR* %6801, i32 0, i32 33
  %6803 = getelementptr inbounds %struct.Reg, %struct.Reg* %6802, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6803 to i64*
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6805 = getelementptr inbounds %struct.GPR, %struct.GPR* %6804, i32 0, i32 1
  %6806 = getelementptr inbounds %struct.Reg, %struct.Reg* %6805, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %6806 to i64*
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6808 = getelementptr inbounds %struct.GPR, %struct.GPR* %6807, i32 0, i32 15
  %6809 = getelementptr inbounds %struct.Reg, %struct.Reg* %6808, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %6809 to i64*
  %6810 = load i64, i64* %RBP.i141
  %6811 = sub i64 %6810, 24
  %6812 = load i64, i64* %PC.i139
  %6813 = add i64 %6812, 3
  store i64 %6813, i64* %PC.i139
  %6814 = inttoptr i64 %6811 to i32*
  %6815 = load i32, i32* %6814
  %6816 = zext i32 %6815 to i64
  store i64 %6816, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_45e4c3, %struct.Memory** %MEMORY
  %loadMem_45e4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 33
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6819 to i64*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 7
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %PC.i137
  %6824 = add i64 %6823, 8
  store i64 %6824, i64* %PC.i137
  %6825 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %6825, i64* %RDX.i138, align 8
  store %struct.Memory* %loadMem_45e4c6, %struct.Memory** %MEMORY
  %loadMem_45e4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 33
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6828 to i64*
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6830 = getelementptr inbounds %struct.GPR, %struct.GPR* %6829, i32 0, i32 5
  %6831 = getelementptr inbounds %struct.Reg, %struct.Reg* %6830, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %6831 to i64*
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 15
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6834 to i64*
  %6835 = load i64, i64* %RBP.i136
  %6836 = sub i64 %6835, 20
  %6837 = load i64, i64* %PC.i134
  %6838 = add i64 %6837, 3
  store i64 %6838, i64* %PC.i134
  %6839 = inttoptr i64 %6836 to i32*
  %6840 = load i32, i32* %6839
  %6841 = zext i32 %6840 to i64
  store i64 %6841, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_45e4ce, %struct.Memory** %MEMORY
  %loadMem_45e4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 33
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 5
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %ECX.i132 = bitcast %union.anon* %6847 to i32*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 11
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %RDI.i133 = bitcast %union.anon* %6850 to i64*
  %6851 = load i32, i32* %ECX.i132
  %6852 = zext i32 %6851 to i64
  %6853 = load i64, i64* %PC.i131
  %6854 = add i64 %6853, 2
  store i64 %6854, i64* %PC.i131
  %6855 = and i64 %6852, 4294967295
  store i64 %6855, i64* %RDI.i133, align 8
  store %struct.Memory* %loadMem_45e4d1, %struct.Memory** %MEMORY
  %loadMem_45e4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6857 = getelementptr inbounds %struct.GPR, %struct.GPR* %6856, i32 0, i32 33
  %6858 = getelementptr inbounds %struct.Reg, %struct.Reg* %6857, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6858 to i64*
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 11
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %RDI.i130 = bitcast %union.anon* %6861 to i64*
  %6862 = load i64, i64* %RDI.i130
  %6863 = load i64, i64* %PC.i129
  %6864 = add i64 %6863, 3
  store i64 %6864, i64* %PC.i129
  %6865 = trunc i64 %6862 to i32
  %6866 = add i32 1, %6865
  %6867 = zext i32 %6866 to i64
  store i64 %6867, i64* %RDI.i130, align 8
  %6868 = icmp ult i32 %6866, %6865
  %6869 = icmp ult i32 %6866, 1
  %6870 = or i1 %6868, %6869
  %6871 = zext i1 %6870 to i8
  %6872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6871, i8* %6872, align 1
  %6873 = and i32 %6866, 255
  %6874 = call i32 @llvm.ctpop.i32(i32 %6873)
  %6875 = trunc i32 %6874 to i8
  %6876 = and i8 %6875, 1
  %6877 = xor i8 %6876, 1
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6877, i8* %6878, align 1
  %6879 = xor i64 1, %6862
  %6880 = trunc i64 %6879 to i32
  %6881 = xor i32 %6880, %6866
  %6882 = lshr i32 %6881, 4
  %6883 = trunc i32 %6882 to i8
  %6884 = and i8 %6883, 1
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6884, i8* %6885, align 1
  %6886 = icmp eq i32 %6866, 0
  %6887 = zext i1 %6886 to i8
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6887, i8* %6888, align 1
  %6889 = lshr i32 %6866, 31
  %6890 = trunc i32 %6889 to i8
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6890, i8* %6891, align 1
  %6892 = lshr i32 %6865, 31
  %6893 = xor i32 %6889, %6892
  %6894 = add i32 %6893, %6889
  %6895 = icmp eq i32 %6894, 2
  %6896 = zext i1 %6895 to i8
  %6897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6896, i8* %6897, align 1
  store %struct.Memory* %loadMem_45e4d3, %struct.Memory** %MEMORY
  %loadMem_45e4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 33
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6900 to i64*
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6902 = getelementptr inbounds %struct.GPR, %struct.GPR* %6901, i32 0, i32 11
  %6903 = getelementptr inbounds %struct.Reg, %struct.Reg* %6902, i32 0, i32 0
  %EDI.i127 = bitcast %union.anon* %6903 to i32*
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6905 = getelementptr inbounds %struct.GPR, %struct.GPR* %6904, i32 0, i32 15
  %6906 = getelementptr inbounds %struct.Reg, %struct.Reg* %6905, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %6906 to i64*
  %6907 = load i64, i64* %RBP.i128
  %6908 = sub i64 %6907, 20
  %6909 = load i32, i32* %EDI.i127
  %6910 = zext i32 %6909 to i64
  %6911 = load i64, i64* %PC.i126
  %6912 = add i64 %6911, 3
  store i64 %6912, i64* %PC.i126
  %6913 = inttoptr i64 %6908 to i32*
  store i32 %6909, i32* %6913
  store %struct.Memory* %loadMem_45e4d6, %struct.Memory** %MEMORY
  %loadMem_45e4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6915 = getelementptr inbounds %struct.GPR, %struct.GPR* %6914, i32 0, i32 33
  %6916 = getelementptr inbounds %struct.Reg, %struct.Reg* %6915, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6916 to i64*
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 5
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6919 to i32*
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 9
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %RSI.i125 = bitcast %union.anon* %6922 to i64*
  %6923 = load i32, i32* %ECX.i
  %6924 = zext i32 %6923 to i64
  %6925 = load i64, i64* %PC.i124
  %6926 = add i64 %6925, 3
  store i64 %6926, i64* %PC.i124
  %6927 = shl i64 %6924, 32
  %6928 = ashr exact i64 %6927, 32
  store i64 %6928, i64* %RSI.i125, align 8
  store %struct.Memory* %loadMem_45e4d9, %struct.Memory** %MEMORY
  %loadMem_45e4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6930 = getelementptr inbounds %struct.GPR, %struct.GPR* %6929, i32 0, i32 33
  %6931 = getelementptr inbounds %struct.Reg, %struct.Reg* %6930, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6931 to i64*
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6933 = getelementptr inbounds %struct.GPR, %struct.GPR* %6932, i32 0, i32 1
  %6934 = getelementptr inbounds %struct.Reg, %struct.Reg* %6933, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %6934 to i32*
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 7
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %6937 to i64*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 9
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %RSI.i123 = bitcast %union.anon* %6940 to i64*
  %6941 = load i64, i64* %RDX.i122
  %6942 = load i64, i64* %RSI.i123
  %6943 = mul i64 %6942, 4
  %6944 = add i64 %6943, %6941
  %6945 = load i32, i32* %EAX.i121
  %6946 = zext i32 %6945 to i64
  %6947 = load i64, i64* %PC.i120
  %6948 = add i64 %6947, 3
  store i64 %6948, i64* %PC.i120
  %6949 = inttoptr i64 %6944 to i32*
  store i32 %6945, i32* %6949
  store %struct.Memory* %loadMem_45e4dc, %struct.Memory** %MEMORY
  %loadMem_45e4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 33
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6952 to i64*
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 1
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %6955 to i64*
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6957 = getelementptr inbounds %struct.GPR, %struct.GPR* %6956, i32 0, i32 15
  %6958 = getelementptr inbounds %struct.Reg, %struct.Reg* %6957, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %6958 to i64*
  %6959 = load i64, i64* %RBP.i119
  %6960 = sub i64 %6959, 8
  %6961 = load i64, i64* %PC.i117
  %6962 = add i64 %6961, 3
  store i64 %6962, i64* %PC.i117
  %6963 = inttoptr i64 %6960 to i32*
  %6964 = load i32, i32* %6963
  %6965 = zext i32 %6964 to i64
  store i64 %6965, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_45e4df, %struct.Memory** %MEMORY
  %loadMem_45e4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6967 = getelementptr inbounds %struct.GPR, %struct.GPR* %6966, i32 0, i32 33
  %6968 = getelementptr inbounds %struct.Reg, %struct.Reg* %6967, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6968 to i64*
  %6969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6970 = getelementptr inbounds %struct.GPR, %struct.GPR* %6969, i32 0, i32 1
  %6971 = getelementptr inbounds %struct.Reg, %struct.Reg* %6970, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %6971 to i64*
  %6972 = load i64, i64* %RAX.i116
  %6973 = load i64, i64* %PC.i115
  %6974 = add i64 %6973, 3
  store i64 %6974, i64* %PC.i115
  %6975 = trunc i64 %6972 to i32
  %6976 = add i32 1, %6975
  %6977 = zext i32 %6976 to i64
  store i64 %6977, i64* %RAX.i116, align 8
  %6978 = icmp ult i32 %6976, %6975
  %6979 = icmp ult i32 %6976, 1
  %6980 = or i1 %6978, %6979
  %6981 = zext i1 %6980 to i8
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6981, i8* %6982, align 1
  %6983 = and i32 %6976, 255
  %6984 = call i32 @llvm.ctpop.i32(i32 %6983)
  %6985 = trunc i32 %6984 to i8
  %6986 = and i8 %6985, 1
  %6987 = xor i8 %6986, 1
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6987, i8* %6988, align 1
  %6989 = xor i64 1, %6972
  %6990 = trunc i64 %6989 to i32
  %6991 = xor i32 %6990, %6976
  %6992 = lshr i32 %6991, 4
  %6993 = trunc i32 %6992 to i8
  %6994 = and i8 %6993, 1
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6994, i8* %6995, align 1
  %6996 = icmp eq i32 %6976, 0
  %6997 = zext i1 %6996 to i8
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6997, i8* %6998, align 1
  %6999 = lshr i32 %6976, 31
  %7000 = trunc i32 %6999 to i8
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7000, i8* %7001, align 1
  %7002 = lshr i32 %6975, 31
  %7003 = xor i32 %6999, %7002
  %7004 = add i32 %7003, %6999
  %7005 = icmp eq i32 %7004, 2
  %7006 = zext i1 %7005 to i8
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7006, i8* %7007, align 1
  store %struct.Memory* %loadMem_45e4e2, %struct.Memory** %MEMORY
  %loadMem_45e4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7009 = getelementptr inbounds %struct.GPR, %struct.GPR* %7008, i32 0, i32 33
  %7010 = getelementptr inbounds %struct.Reg, %struct.Reg* %7009, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7010 to i64*
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7012 = getelementptr inbounds %struct.GPR, %struct.GPR* %7011, i32 0, i32 1
  %7013 = getelementptr inbounds %struct.Reg, %struct.Reg* %7012, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %7013 to i32*
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 15
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %7016 to i64*
  %7017 = load i64, i64* %RBP.i114
  %7018 = sub i64 %7017, 8
  %7019 = load i32, i32* %EAX.i113
  %7020 = zext i32 %7019 to i64
  %7021 = load i64, i64* %PC.i112
  %7022 = add i64 %7021, 3
  store i64 %7022, i64* %PC.i112
  %7023 = inttoptr i64 %7018 to i32*
  store i32 %7019, i32* %7023
  store %struct.Memory* %loadMem_45e4e5, %struct.Memory** %MEMORY
  %loadMem_45e4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 33
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7026 to i64*
  %7027 = load i64, i64* %PC.i111
  %7028 = add i64 %7027, -115
  %7029 = load i64, i64* %PC.i111
  %7030 = add i64 %7029, 5
  store i64 %7030, i64* %PC.i111
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7028, i64* %7031, align 8
  store %struct.Memory* %loadMem_45e4e8, %struct.Memory** %MEMORY
  br label %block_.L_45e475

block_.L_45e4ed:                                  ; preds = %block_.L_45e475
  %loadMem_45e4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7033 = getelementptr inbounds %struct.GPR, %struct.GPR* %7032, i32 0, i32 33
  %7034 = getelementptr inbounds %struct.Reg, %struct.Reg* %7033, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7034 to i64*
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7036 = getelementptr inbounds %struct.GPR, %struct.GPR* %7035, i32 0, i32 1
  %7037 = getelementptr inbounds %struct.Reg, %struct.Reg* %7036, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %7037 to i32*
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 1
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %7040 to i64*
  %7041 = load i64, i64* %RAX.i110
  %7042 = load i32, i32* %EAX.i109
  %7043 = zext i32 %7042 to i64
  %7044 = load i64, i64* %PC.i108
  %7045 = add i64 %7044, 2
  store i64 %7045, i64* %PC.i108
  %7046 = xor i64 %7043, %7041
  %7047 = trunc i64 %7046 to i32
  %7048 = and i64 %7046, 4294967295
  store i64 %7048, i64* %RAX.i110, align 8
  %7049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7049, align 1
  %7050 = and i32 %7047, 255
  %7051 = call i32 @llvm.ctpop.i32(i32 %7050)
  %7052 = trunc i32 %7051 to i8
  %7053 = and i8 %7052, 1
  %7054 = xor i8 %7053, 1
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7054, i8* %7055, align 1
  %7056 = icmp eq i32 %7047, 0
  %7057 = zext i1 %7056 to i8
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7057, i8* %7058, align 1
  %7059 = lshr i32 %7047, 31
  %7060 = trunc i32 %7059 to i8
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7060, i8* %7061, align 1
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7062, align 1
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7063, align 1
  store %struct.Memory* %loadMem_45e4ed, %struct.Memory** %MEMORY
  %loadMem_45e4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7065 = getelementptr inbounds %struct.GPR, %struct.GPR* %7064, i32 0, i32 33
  %7066 = getelementptr inbounds %struct.Reg, %struct.Reg* %7065, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7066 to i64*
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 1
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %7069 to i64*
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 15
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %7072 to i64*
  %7073 = load i64, i64* %RAX.i106
  %7074 = load i64, i64* %RBP.i107
  %7075 = sub i64 %7074, 24
  %7076 = load i64, i64* %PC.i105
  %7077 = add i64 %7076, 3
  store i64 %7077, i64* %PC.i105
  %7078 = trunc i64 %7073 to i32
  %7079 = inttoptr i64 %7075 to i32*
  %7080 = load i32, i32* %7079
  %7081 = sub i32 %7078, %7080
  %7082 = zext i32 %7081 to i64
  store i64 %7082, i64* %RAX.i106, align 8
  %7083 = icmp ult i32 %7078, %7080
  %7084 = zext i1 %7083 to i8
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7084, i8* %7085, align 1
  %7086 = and i32 %7081, 255
  %7087 = call i32 @llvm.ctpop.i32(i32 %7086)
  %7088 = trunc i32 %7087 to i8
  %7089 = and i8 %7088, 1
  %7090 = xor i8 %7089, 1
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7090, i8* %7091, align 1
  %7092 = xor i32 %7080, %7078
  %7093 = xor i32 %7092, %7081
  %7094 = lshr i32 %7093, 4
  %7095 = trunc i32 %7094 to i8
  %7096 = and i8 %7095, 1
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7096, i8* %7097, align 1
  %7098 = icmp eq i32 %7081, 0
  %7099 = zext i1 %7098 to i8
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7099, i8* %7100, align 1
  %7101 = lshr i32 %7081, 31
  %7102 = trunc i32 %7101 to i8
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7102, i8* %7103, align 1
  %7104 = lshr i32 %7078, 31
  %7105 = lshr i32 %7080, 31
  %7106 = xor i32 %7105, %7104
  %7107 = xor i32 %7101, %7104
  %7108 = add i32 %7107, %7106
  %7109 = icmp eq i32 %7108, 2
  %7110 = zext i1 %7109 to i8
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7110, i8* %7111, align 1
  store %struct.Memory* %loadMem_45e4ef, %struct.Memory** %MEMORY
  %loadMem_45e4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 33
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %7114 to i64*
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 1
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %7117 to i32*
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 15
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %7120 to i64*
  %7121 = load i64, i64* %RBP.i104
  %7122 = sub i64 %7121, 8
  %7123 = load i32, i32* %EAX.i103
  %7124 = zext i32 %7123 to i64
  %7125 = load i64, i64* %PC.i102
  %7126 = add i64 %7125, 3
  store i64 %7126, i64* %PC.i102
  %7127 = inttoptr i64 %7122 to i32*
  store i32 %7123, i32* %7127
  store %struct.Memory* %loadMem_45e4f2, %struct.Memory** %MEMORY
  br label %block_.L_45e4f5

block_.L_45e4f5:                                  ; preds = %block_45e501, %block_.L_45e4ed
  %loadMem_45e4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7129 = getelementptr inbounds %struct.GPR, %struct.GPR* %7128, i32 0, i32 33
  %7130 = getelementptr inbounds %struct.Reg, %struct.Reg* %7129, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %7130 to i64*
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7132 = getelementptr inbounds %struct.GPR, %struct.GPR* %7131, i32 0, i32 1
  %7133 = getelementptr inbounds %struct.Reg, %struct.Reg* %7132, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %7133 to i64*
  %7134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7135 = getelementptr inbounds %struct.GPR, %struct.GPR* %7134, i32 0, i32 15
  %7136 = getelementptr inbounds %struct.Reg, %struct.Reg* %7135, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %7136 to i64*
  %7137 = load i64, i64* %RBP.i101
  %7138 = sub i64 %7137, 8
  %7139 = load i64, i64* %PC.i99
  %7140 = add i64 %7139, 3
  store i64 %7140, i64* %PC.i99
  %7141 = inttoptr i64 %7138 to i32*
  %7142 = load i32, i32* %7141
  %7143 = zext i32 %7142 to i64
  store i64 %7143, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_45e4f5, %struct.Memory** %MEMORY
  %loadMem_45e4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 33
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7146 to i64*
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7148 = getelementptr inbounds %struct.GPR, %struct.GPR* %7147, i32 0, i32 1
  %7149 = getelementptr inbounds %struct.Reg, %struct.Reg* %7148, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %7149 to i32*
  %7150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7151 = getelementptr inbounds %struct.GPR, %struct.GPR* %7150, i32 0, i32 15
  %7152 = getelementptr inbounds %struct.Reg, %struct.Reg* %7151, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %7152 to i64*
  %7153 = load i32, i32* %EAX.i97
  %7154 = zext i32 %7153 to i64
  %7155 = load i64, i64* %RBP.i98
  %7156 = sub i64 %7155, 24
  %7157 = load i64, i64* %PC.i96
  %7158 = add i64 %7157, 3
  store i64 %7158, i64* %PC.i96
  %7159 = inttoptr i64 %7156 to i32*
  %7160 = load i32, i32* %7159
  %7161 = sub i32 %7153, %7160
  %7162 = icmp ult i32 %7153, %7160
  %7163 = zext i1 %7162 to i8
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7163, i8* %7164, align 1
  %7165 = and i32 %7161, 255
  %7166 = call i32 @llvm.ctpop.i32(i32 %7165)
  %7167 = trunc i32 %7166 to i8
  %7168 = and i8 %7167, 1
  %7169 = xor i8 %7168, 1
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7169, i8* %7170, align 1
  %7171 = xor i32 %7160, %7153
  %7172 = xor i32 %7171, %7161
  %7173 = lshr i32 %7172, 4
  %7174 = trunc i32 %7173 to i8
  %7175 = and i8 %7174, 1
  %7176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7175, i8* %7176, align 1
  %7177 = icmp eq i32 %7161, 0
  %7178 = zext i1 %7177 to i8
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7178, i8* %7179, align 1
  %7180 = lshr i32 %7161, 31
  %7181 = trunc i32 %7180 to i8
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7181, i8* %7182, align 1
  %7183 = lshr i32 %7153, 31
  %7184 = lshr i32 %7160, 31
  %7185 = xor i32 %7184, %7183
  %7186 = xor i32 %7180, %7183
  %7187 = add i32 %7186, %7185
  %7188 = icmp eq i32 %7187, 2
  %7189 = zext i1 %7188 to i8
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7189, i8* %7190, align 1
  store %struct.Memory* %loadMem_45e4f8, %struct.Memory** %MEMORY
  %loadMem_45e4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 33
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7193 to i64*
  %7194 = load i64, i64* %PC.i95
  %7195 = add i64 %7194, 114
  %7196 = load i64, i64* %PC.i95
  %7197 = add i64 %7196, 6
  %7198 = load i64, i64* %PC.i95
  %7199 = add i64 %7198, 6
  store i64 %7199, i64* %PC.i95
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7201 = load i8, i8* %7200, align 1
  %7202 = icmp eq i8 %7201, 0
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7204 = load i8, i8* %7203, align 1
  %7205 = icmp ne i8 %7204, 0
  %7206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7207 = load i8, i8* %7206, align 1
  %7208 = icmp ne i8 %7207, 0
  %7209 = xor i1 %7205, %7208
  %7210 = xor i1 %7209, true
  %7211 = and i1 %7202, %7210
  %7212 = zext i1 %7211 to i8
  store i8 %7212, i8* %BRANCH_TAKEN, align 1
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7214 = select i1 %7211, i64 %7195, i64 %7197
  store i64 %7214, i64* %7213, align 8
  store %struct.Memory* %loadMem_45e4fb, %struct.Memory** %MEMORY
  %loadBr_45e4fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e4fb = icmp eq i8 %loadBr_45e4fb, 1
  br i1 %cmpBr_45e4fb, label %block_.L_45e56d, label %block_45e501

block_45e501:                                     ; preds = %block_.L_45e4f5
  %loadMem_45e501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 33
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7217 to i64*
  %7218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7219 = getelementptr inbounds %struct.GPR, %struct.GPR* %7218, i32 0, i32 1
  %7220 = getelementptr inbounds %struct.Reg, %struct.Reg* %7219, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %7220 to i32*
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7222 = getelementptr inbounds %struct.GPR, %struct.GPR* %7221, i32 0, i32 1
  %7223 = getelementptr inbounds %struct.Reg, %struct.Reg* %7222, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %7223 to i64*
  %7224 = load i64, i64* %RAX.i94
  %7225 = load i32, i32* %EAX.i93
  %7226 = zext i32 %7225 to i64
  %7227 = load i64, i64* %PC.i92
  %7228 = add i64 %7227, 2
  store i64 %7228, i64* %PC.i92
  %7229 = xor i64 %7226, %7224
  %7230 = trunc i64 %7229 to i32
  %7231 = and i64 %7229, 4294967295
  store i64 %7231, i64* %RAX.i94, align 8
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7232, align 1
  %7233 = and i32 %7230, 255
  %7234 = call i32 @llvm.ctpop.i32(i32 %7233)
  %7235 = trunc i32 %7234 to i8
  %7236 = and i8 %7235, 1
  %7237 = xor i8 %7236, 1
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7237, i8* %7238, align 1
  %7239 = icmp eq i32 %7230, 0
  %7240 = zext i1 %7239 to i8
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7240, i8* %7241, align 1
  %7242 = lshr i32 %7230, 31
  %7243 = trunc i32 %7242 to i8
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7243, i8* %7244, align 1
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7245, align 1
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7246, align 1
  store %struct.Memory* %loadMem_45e501, %struct.Memory** %MEMORY
  %loadMem_45e503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7248 = getelementptr inbounds %struct.GPR, %struct.GPR* %7247, i32 0, i32 33
  %7249 = getelementptr inbounds %struct.Reg, %struct.Reg* %7248, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7249 to i64*
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7251 = getelementptr inbounds %struct.GPR, %struct.GPR* %7250, i32 0, i32 1
  %7252 = getelementptr inbounds %struct.Reg, %struct.Reg* %7251, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %7252 to i64*
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7254 = getelementptr inbounds %struct.GPR, %struct.GPR* %7253, i32 0, i32 15
  %7255 = getelementptr inbounds %struct.Reg, %struct.Reg* %7254, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %7255 to i64*
  %7256 = load i64, i64* %RAX.i90
  %7257 = load i64, i64* %RBP.i91
  %7258 = sub i64 %7257, 24
  %7259 = load i64, i64* %PC.i89
  %7260 = add i64 %7259, 3
  store i64 %7260, i64* %PC.i89
  %7261 = trunc i64 %7256 to i32
  %7262 = inttoptr i64 %7258 to i32*
  %7263 = load i32, i32* %7262
  %7264 = sub i32 %7261, %7263
  %7265 = zext i32 %7264 to i64
  store i64 %7265, i64* %RAX.i90, align 8
  %7266 = icmp ult i32 %7261, %7263
  %7267 = zext i1 %7266 to i8
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7267, i8* %7268, align 1
  %7269 = and i32 %7264, 255
  %7270 = call i32 @llvm.ctpop.i32(i32 %7269)
  %7271 = trunc i32 %7270 to i8
  %7272 = and i8 %7271, 1
  %7273 = xor i8 %7272, 1
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7273, i8* %7274, align 1
  %7275 = xor i32 %7263, %7261
  %7276 = xor i32 %7275, %7264
  %7277 = lshr i32 %7276, 4
  %7278 = trunc i32 %7277 to i8
  %7279 = and i8 %7278, 1
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7279, i8* %7280, align 1
  %7281 = icmp eq i32 %7264, 0
  %7282 = zext i1 %7281 to i8
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7282, i8* %7283, align 1
  %7284 = lshr i32 %7264, 31
  %7285 = trunc i32 %7284 to i8
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7285, i8* %7286, align 1
  %7287 = lshr i32 %7261, 31
  %7288 = lshr i32 %7263, 31
  %7289 = xor i32 %7288, %7287
  %7290 = xor i32 %7284, %7287
  %7291 = add i32 %7290, %7289
  %7292 = icmp eq i32 %7291, 2
  %7293 = zext i1 %7292 to i8
  %7294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7293, i8* %7294, align 1
  store %struct.Memory* %loadMem_45e503, %struct.Memory** %MEMORY
  %loadMem_45e506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 33
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7297 to i64*
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7299 = getelementptr inbounds %struct.GPR, %struct.GPR* %7298, i32 0, i32 5
  %7300 = getelementptr inbounds %struct.Reg, %struct.Reg* %7299, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %7300 to i64*
  %7301 = load i64, i64* %PC.i87
  %7302 = add i64 %7301, 8
  store i64 %7302, i64* %PC.i87
  %7303 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %7303, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_45e506, %struct.Memory** %MEMORY
  %loadMem_45e50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7305 = getelementptr inbounds %struct.GPR, %struct.GPR* %7304, i32 0, i32 33
  %7306 = getelementptr inbounds %struct.Reg, %struct.Reg* %7305, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7306 to i64*
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7308 = getelementptr inbounds %struct.GPR, %struct.GPR* %7307, i32 0, i32 7
  %7309 = getelementptr inbounds %struct.Reg, %struct.Reg* %7308, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %7309 to i64*
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7311 = getelementptr inbounds %struct.GPR, %struct.GPR* %7310, i32 0, i32 15
  %7312 = getelementptr inbounds %struct.Reg, %struct.Reg* %7311, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %7312 to i64*
  %7313 = load i64, i64* %RBP.i86
  %7314 = sub i64 %7313, 20
  %7315 = load i64, i64* %PC.i84
  %7316 = add i64 %7315, 4
  store i64 %7316, i64* %PC.i84
  %7317 = inttoptr i64 %7314 to i32*
  %7318 = load i32, i32* %7317
  %7319 = sext i32 %7318 to i64
  store i64 %7319, i64* %RDX.i85, align 8
  store %struct.Memory* %loadMem_45e50e, %struct.Memory** %MEMORY
  %loadMem_45e512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 33
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7322 to i64*
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7324 = getelementptr inbounds %struct.GPR, %struct.GPR* %7323, i32 0, i32 1
  %7325 = getelementptr inbounds %struct.Reg, %struct.Reg* %7324, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %7325 to i32*
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7327 = getelementptr inbounds %struct.GPR, %struct.GPR* %7326, i32 0, i32 5
  %7328 = getelementptr inbounds %struct.Reg, %struct.Reg* %7327, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %7328 to i64*
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7330 = getelementptr inbounds %struct.GPR, %struct.GPR* %7329, i32 0, i32 7
  %7331 = getelementptr inbounds %struct.Reg, %struct.Reg* %7330, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %7331 to i64*
  %7332 = load i64, i64* %RCX.i82
  %7333 = load i64, i64* %RDX.i83
  %7334 = mul i64 %7333, 4
  %7335 = add i64 %7334, %7332
  %7336 = load i32, i32* %EAX.i81
  %7337 = zext i32 %7336 to i64
  %7338 = load i64, i64* %PC.i80
  %7339 = add i64 %7338, 3
  store i64 %7339, i64* %PC.i80
  %7340 = inttoptr i64 %7335 to i32*
  store i32 %7336, i32* %7340
  store %struct.Memory* %loadMem_45e512, %struct.Memory** %MEMORY
  %loadMem_45e515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 33
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7343 to i64*
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 1
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %7346 to i64*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 15
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %7349 to i64*
  %7350 = load i64, i64* %RBP.i79
  %7351 = sub i64 %7350, 8
  %7352 = load i64, i64* %PC.i77
  %7353 = add i64 %7352, 3
  store i64 %7353, i64* %PC.i77
  %7354 = inttoptr i64 %7351 to i32*
  %7355 = load i32, i32* %7354
  %7356 = zext i32 %7355 to i64
  store i64 %7356, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_45e515, %struct.Memory** %MEMORY
  %loadMem_45e518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7358 = getelementptr inbounds %struct.GPR, %struct.GPR* %7357, i32 0, i32 33
  %7359 = getelementptr inbounds %struct.Reg, %struct.Reg* %7358, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7359 to i64*
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 5
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %7362 to i64*
  %7363 = load i64, i64* %PC.i75
  %7364 = add i64 %7363, 8
  store i64 %7364, i64* %PC.i75
  %7365 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %7365, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_45e518, %struct.Memory** %MEMORY
  %loadMem_45e520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7367 = getelementptr inbounds %struct.GPR, %struct.GPR* %7366, i32 0, i32 33
  %7368 = getelementptr inbounds %struct.Reg, %struct.Reg* %7367, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7368 to i64*
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7370 = getelementptr inbounds %struct.GPR, %struct.GPR* %7369, i32 0, i32 9
  %7371 = getelementptr inbounds %struct.Reg, %struct.Reg* %7370, i32 0, i32 0
  %RSI.i73 = bitcast %union.anon* %7371 to i64*
  %7372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7373 = getelementptr inbounds %struct.GPR, %struct.GPR* %7372, i32 0, i32 15
  %7374 = getelementptr inbounds %struct.Reg, %struct.Reg* %7373, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %7374 to i64*
  %7375 = load i64, i64* %RBP.i74
  %7376 = sub i64 %7375, 20
  %7377 = load i64, i64* %PC.i72
  %7378 = add i64 %7377, 3
  store i64 %7378, i64* %PC.i72
  %7379 = inttoptr i64 %7376 to i32*
  %7380 = load i32, i32* %7379
  %7381 = zext i32 %7380 to i64
  store i64 %7381, i64* %RSI.i73, align 8
  store %struct.Memory* %loadMem_45e520, %struct.Memory** %MEMORY
  %loadMem_45e523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 33
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7384 to i64*
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7386 = getelementptr inbounds %struct.GPR, %struct.GPR* %7385, i32 0, i32 9
  %7387 = getelementptr inbounds %struct.Reg, %struct.Reg* %7386, i32 0, i32 0
  %ESI.i70 = bitcast %union.anon* %7387 to i32*
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7389 = getelementptr inbounds %struct.GPR, %struct.GPR* %7388, i32 0, i32 11
  %7390 = getelementptr inbounds %struct.Reg, %struct.Reg* %7389, i32 0, i32 0
  %RDI.i71 = bitcast %union.anon* %7390 to i64*
  %7391 = load i32, i32* %ESI.i70
  %7392 = zext i32 %7391 to i64
  %7393 = load i64, i64* %PC.i69
  %7394 = add i64 %7393, 2
  store i64 %7394, i64* %PC.i69
  %7395 = and i64 %7392, 4294967295
  store i64 %7395, i64* %RDI.i71, align 8
  store %struct.Memory* %loadMem_45e523, %struct.Memory** %MEMORY
  %loadMem_45e525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7397 = getelementptr inbounds %struct.GPR, %struct.GPR* %7396, i32 0, i32 33
  %7398 = getelementptr inbounds %struct.Reg, %struct.Reg* %7397, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7398 to i64*
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7400 = getelementptr inbounds %struct.GPR, %struct.GPR* %7399, i32 0, i32 11
  %7401 = getelementptr inbounds %struct.Reg, %struct.Reg* %7400, i32 0, i32 0
  %RDI.i68 = bitcast %union.anon* %7401 to i64*
  %7402 = load i64, i64* %RDI.i68
  %7403 = load i64, i64* %PC.i67
  %7404 = add i64 %7403, 3
  store i64 %7404, i64* %PC.i67
  %7405 = trunc i64 %7402 to i32
  %7406 = add i32 1, %7405
  %7407 = zext i32 %7406 to i64
  store i64 %7407, i64* %RDI.i68, align 8
  %7408 = icmp ult i32 %7406, %7405
  %7409 = icmp ult i32 %7406, 1
  %7410 = or i1 %7408, %7409
  %7411 = zext i1 %7410 to i8
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7411, i8* %7412, align 1
  %7413 = and i32 %7406, 255
  %7414 = call i32 @llvm.ctpop.i32(i32 %7413)
  %7415 = trunc i32 %7414 to i8
  %7416 = and i8 %7415, 1
  %7417 = xor i8 %7416, 1
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7417, i8* %7418, align 1
  %7419 = xor i64 1, %7402
  %7420 = trunc i64 %7419 to i32
  %7421 = xor i32 %7420, %7406
  %7422 = lshr i32 %7421, 4
  %7423 = trunc i32 %7422 to i8
  %7424 = and i8 %7423, 1
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7424, i8* %7425, align 1
  %7426 = icmp eq i32 %7406, 0
  %7427 = zext i1 %7426 to i8
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7427, i8* %7428, align 1
  %7429 = lshr i32 %7406, 31
  %7430 = trunc i32 %7429 to i8
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7430, i8* %7431, align 1
  %7432 = lshr i32 %7405, 31
  %7433 = xor i32 %7429, %7432
  %7434 = add i32 %7433, %7429
  %7435 = icmp eq i32 %7434, 2
  %7436 = zext i1 %7435 to i8
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7436, i8* %7437, align 1
  store %struct.Memory* %loadMem_45e525, %struct.Memory** %MEMORY
  %loadMem_45e528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 33
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7440 to i64*
  %7441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7442 = getelementptr inbounds %struct.GPR, %struct.GPR* %7441, i32 0, i32 11
  %7443 = getelementptr inbounds %struct.Reg, %struct.Reg* %7442, i32 0, i32 0
  %EDI.i65 = bitcast %union.anon* %7443 to i32*
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7445 = getelementptr inbounds %struct.GPR, %struct.GPR* %7444, i32 0, i32 15
  %7446 = getelementptr inbounds %struct.Reg, %struct.Reg* %7445, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %7446 to i64*
  %7447 = load i64, i64* %RBP.i66
  %7448 = sub i64 %7447, 20
  %7449 = load i32, i32* %EDI.i65
  %7450 = zext i32 %7449 to i64
  %7451 = load i64, i64* %PC.i64
  %7452 = add i64 %7451, 3
  store i64 %7452, i64* %PC.i64
  %7453 = inttoptr i64 %7448 to i32*
  store i32 %7449, i32* %7453
  store %struct.Memory* %loadMem_45e528, %struct.Memory** %MEMORY
  %loadMem_45e52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7455 = getelementptr inbounds %struct.GPR, %struct.GPR* %7454, i32 0, i32 33
  %7456 = getelementptr inbounds %struct.Reg, %struct.Reg* %7455, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7456 to i64*
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7458 = getelementptr inbounds %struct.GPR, %struct.GPR* %7457, i32 0, i32 9
  %7459 = getelementptr inbounds %struct.Reg, %struct.Reg* %7458, i32 0, i32 0
  %ESI.i62 = bitcast %union.anon* %7459 to i32*
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7461 = getelementptr inbounds %struct.GPR, %struct.GPR* %7460, i32 0, i32 7
  %7462 = getelementptr inbounds %struct.Reg, %struct.Reg* %7461, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %7462 to i64*
  %7463 = load i32, i32* %ESI.i62
  %7464 = zext i32 %7463 to i64
  %7465 = load i64, i64* %PC.i61
  %7466 = add i64 %7465, 3
  store i64 %7466, i64* %PC.i61
  %7467 = shl i64 %7464, 32
  %7468 = ashr exact i64 %7467, 32
  store i64 %7468, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_45e52b, %struct.Memory** %MEMORY
  %loadMem_45e52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7470 = getelementptr inbounds %struct.GPR, %struct.GPR* %7469, i32 0, i32 33
  %7471 = getelementptr inbounds %struct.Reg, %struct.Reg* %7470, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7471 to i64*
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7473 = getelementptr inbounds %struct.GPR, %struct.GPR* %7472, i32 0, i32 1
  %7474 = getelementptr inbounds %struct.Reg, %struct.Reg* %7473, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %7474 to i32*
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 5
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %7477 to i64*
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 7
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %7480 to i64*
  %7481 = load i64, i64* %RCX.i59
  %7482 = load i64, i64* %RDX.i60
  %7483 = mul i64 %7482, 4
  %7484 = add i64 %7483, %7481
  %7485 = load i32, i32* %EAX.i58
  %7486 = zext i32 %7485 to i64
  %7487 = load i64, i64* %PC.i57
  %7488 = add i64 %7487, 3
  store i64 %7488, i64* %PC.i57
  %7489 = inttoptr i64 %7484 to i32*
  store i32 %7485, i32* %7489
  store %struct.Memory* %loadMem_45e52e, %struct.Memory** %MEMORY
  %loadMem_45e531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 33
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7492 to i64*
  %7493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7494 = getelementptr inbounds %struct.GPR, %struct.GPR* %7493, i32 0, i32 1
  %7495 = getelementptr inbounds %struct.Reg, %struct.Reg* %7494, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %7495 to i64*
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7497 = getelementptr inbounds %struct.GPR, %struct.GPR* %7496, i32 0, i32 15
  %7498 = getelementptr inbounds %struct.Reg, %struct.Reg* %7497, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %7498 to i64*
  %7499 = load i64, i64* %RBP.i56
  %7500 = sub i64 %7499, 24
  %7501 = load i64, i64* %PC.i54
  %7502 = add i64 %7501, 3
  store i64 %7502, i64* %PC.i54
  %7503 = inttoptr i64 %7500 to i32*
  %7504 = load i32, i32* %7503
  %7505 = zext i32 %7504 to i64
  store i64 %7505, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_45e531, %struct.Memory** %MEMORY
  %loadMem_45e534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7507 = getelementptr inbounds %struct.GPR, %struct.GPR* %7506, i32 0, i32 33
  %7508 = getelementptr inbounds %struct.Reg, %struct.Reg* %7507, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7508 to i64*
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7510 = getelementptr inbounds %struct.GPR, %struct.GPR* %7509, i32 0, i32 5
  %7511 = getelementptr inbounds %struct.Reg, %struct.Reg* %7510, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %7511 to i64*
  %7512 = load i64, i64* %PC.i52
  %7513 = add i64 %7512, 8
  store i64 %7513, i64* %PC.i52
  %7514 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %7514, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_45e534, %struct.Memory** %MEMORY
  %loadMem_45e53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7516 = getelementptr inbounds %struct.GPR, %struct.GPR* %7515, i32 0, i32 33
  %7517 = getelementptr inbounds %struct.Reg, %struct.Reg* %7516, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7517 to i64*
  %7518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7519 = getelementptr inbounds %struct.GPR, %struct.GPR* %7518, i32 0, i32 7
  %7520 = getelementptr inbounds %struct.Reg, %struct.Reg* %7519, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %7520 to i64*
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 15
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %7523 to i64*
  %7524 = load i64, i64* %RBP.i51
  %7525 = sub i64 %7524, 20
  %7526 = load i64, i64* %PC.i49
  %7527 = add i64 %7526, 4
  store i64 %7527, i64* %PC.i49
  %7528 = inttoptr i64 %7525 to i32*
  %7529 = load i32, i32* %7528
  %7530 = sext i32 %7529 to i64
  store i64 %7530, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_45e53c, %struct.Memory** %MEMORY
  %loadMem_45e540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7532 = getelementptr inbounds %struct.GPR, %struct.GPR* %7531, i32 0, i32 33
  %7533 = getelementptr inbounds %struct.Reg, %struct.Reg* %7532, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7533 to i64*
  %7534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7535 = getelementptr inbounds %struct.GPR, %struct.GPR* %7534, i32 0, i32 1
  %7536 = getelementptr inbounds %struct.Reg, %struct.Reg* %7535, i32 0, i32 0
  %EAX.i46 = bitcast %union.anon* %7536 to i32*
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 5
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %7539 to i64*
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7541 = getelementptr inbounds %struct.GPR, %struct.GPR* %7540, i32 0, i32 7
  %7542 = getelementptr inbounds %struct.Reg, %struct.Reg* %7541, i32 0, i32 0
  %RDX.i48 = bitcast %union.anon* %7542 to i64*
  %7543 = load i64, i64* %RCX.i47
  %7544 = load i64, i64* %RDX.i48
  %7545 = mul i64 %7544, 4
  %7546 = add i64 %7545, %7543
  %7547 = load i32, i32* %EAX.i46
  %7548 = zext i32 %7547 to i64
  %7549 = load i64, i64* %PC.i45
  %7550 = add i64 %7549, 3
  store i64 %7550, i64* %PC.i45
  %7551 = inttoptr i64 %7546 to i32*
  store i32 %7547, i32* %7551
  store %struct.Memory* %loadMem_45e540, %struct.Memory** %MEMORY
  %loadMem_45e543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 33
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 1
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %7557 to i64*
  %7558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7559 = getelementptr inbounds %struct.GPR, %struct.GPR* %7558, i32 0, i32 15
  %7560 = getelementptr inbounds %struct.Reg, %struct.Reg* %7559, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %7560 to i64*
  %7561 = load i64, i64* %RBP.i44
  %7562 = sub i64 %7561, 8
  %7563 = load i64, i64* %PC.i42
  %7564 = add i64 %7563, 3
  store i64 %7564, i64* %PC.i42
  %7565 = inttoptr i64 %7562 to i32*
  %7566 = load i32, i32* %7565
  %7567 = zext i32 %7566 to i64
  store i64 %7567, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_45e543, %struct.Memory** %MEMORY
  %loadMem_45e546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7569 = getelementptr inbounds %struct.GPR, %struct.GPR* %7568, i32 0, i32 33
  %7570 = getelementptr inbounds %struct.Reg, %struct.Reg* %7569, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7570 to i64*
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7572 = getelementptr inbounds %struct.GPR, %struct.GPR* %7571, i32 0, i32 5
  %7573 = getelementptr inbounds %struct.Reg, %struct.Reg* %7572, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %7573 to i64*
  %7574 = load i64, i64* %PC.i40
  %7575 = add i64 %7574, 8
  store i64 %7575, i64* %PC.i40
  %7576 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %7576, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_45e546, %struct.Memory** %MEMORY
  %loadMem_45e54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7578 = getelementptr inbounds %struct.GPR, %struct.GPR* %7577, i32 0, i32 33
  %7579 = getelementptr inbounds %struct.Reg, %struct.Reg* %7578, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7579 to i64*
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7581 = getelementptr inbounds %struct.GPR, %struct.GPR* %7580, i32 0, i32 9
  %7582 = getelementptr inbounds %struct.Reg, %struct.Reg* %7581, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7582 to i64*
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 15
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %7585 to i64*
  %7586 = load i64, i64* %RBP.i39
  %7587 = sub i64 %7586, 20
  %7588 = load i64, i64* %PC.i38
  %7589 = add i64 %7588, 3
  store i64 %7589, i64* %PC.i38
  %7590 = inttoptr i64 %7587 to i32*
  %7591 = load i32, i32* %7590
  %7592 = zext i32 %7591 to i64
  store i64 %7592, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_45e54e, %struct.Memory** %MEMORY
  %loadMem_45e551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7594 = getelementptr inbounds %struct.GPR, %struct.GPR* %7593, i32 0, i32 33
  %7595 = getelementptr inbounds %struct.Reg, %struct.Reg* %7594, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7595 to i64*
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7597 = getelementptr inbounds %struct.GPR, %struct.GPR* %7596, i32 0, i32 9
  %7598 = getelementptr inbounds %struct.Reg, %struct.Reg* %7597, i32 0, i32 0
  %ESI.i36 = bitcast %union.anon* %7598 to i32*
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7600 = getelementptr inbounds %struct.GPR, %struct.GPR* %7599, i32 0, i32 11
  %7601 = getelementptr inbounds %struct.Reg, %struct.Reg* %7600, i32 0, i32 0
  %RDI.i37 = bitcast %union.anon* %7601 to i64*
  %7602 = load i32, i32* %ESI.i36
  %7603 = zext i32 %7602 to i64
  %7604 = load i64, i64* %PC.i35
  %7605 = add i64 %7604, 2
  store i64 %7605, i64* %PC.i35
  %7606 = and i64 %7603, 4294967295
  store i64 %7606, i64* %RDI.i37, align 8
  store %struct.Memory* %loadMem_45e551, %struct.Memory** %MEMORY
  %loadMem_45e553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7608 = getelementptr inbounds %struct.GPR, %struct.GPR* %7607, i32 0, i32 33
  %7609 = getelementptr inbounds %struct.Reg, %struct.Reg* %7608, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7609 to i64*
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7611 = getelementptr inbounds %struct.GPR, %struct.GPR* %7610, i32 0, i32 11
  %7612 = getelementptr inbounds %struct.Reg, %struct.Reg* %7611, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7612 to i64*
  %7613 = load i64, i64* %RDI.i
  %7614 = load i64, i64* %PC.i34
  %7615 = add i64 %7614, 3
  store i64 %7615, i64* %PC.i34
  %7616 = trunc i64 %7613 to i32
  %7617 = add i32 1, %7616
  %7618 = zext i32 %7617 to i64
  store i64 %7618, i64* %RDI.i, align 8
  %7619 = icmp ult i32 %7617, %7616
  %7620 = icmp ult i32 %7617, 1
  %7621 = or i1 %7619, %7620
  %7622 = zext i1 %7621 to i8
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7622, i8* %7623, align 1
  %7624 = and i32 %7617, 255
  %7625 = call i32 @llvm.ctpop.i32(i32 %7624)
  %7626 = trunc i32 %7625 to i8
  %7627 = and i8 %7626, 1
  %7628 = xor i8 %7627, 1
  %7629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7628, i8* %7629, align 1
  %7630 = xor i64 1, %7613
  %7631 = trunc i64 %7630 to i32
  %7632 = xor i32 %7631, %7617
  %7633 = lshr i32 %7632, 4
  %7634 = trunc i32 %7633 to i8
  %7635 = and i8 %7634, 1
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7635, i8* %7636, align 1
  %7637 = icmp eq i32 %7617, 0
  %7638 = zext i1 %7637 to i8
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7638, i8* %7639, align 1
  %7640 = lshr i32 %7617, 31
  %7641 = trunc i32 %7640 to i8
  %7642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7641, i8* %7642, align 1
  %7643 = lshr i32 %7616, 31
  %7644 = xor i32 %7640, %7643
  %7645 = add i32 %7644, %7640
  %7646 = icmp eq i32 %7645, 2
  %7647 = zext i1 %7646 to i8
  %7648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7647, i8* %7648, align 1
  store %struct.Memory* %loadMem_45e553, %struct.Memory** %MEMORY
  %loadMem_45e556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7650 = getelementptr inbounds %struct.GPR, %struct.GPR* %7649, i32 0, i32 33
  %7651 = getelementptr inbounds %struct.Reg, %struct.Reg* %7650, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7651 to i64*
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7653 = getelementptr inbounds %struct.GPR, %struct.GPR* %7652, i32 0, i32 11
  %7654 = getelementptr inbounds %struct.Reg, %struct.Reg* %7653, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7654 to i32*
  %7655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7656 = getelementptr inbounds %struct.GPR, %struct.GPR* %7655, i32 0, i32 15
  %7657 = getelementptr inbounds %struct.Reg, %struct.Reg* %7656, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %7657 to i64*
  %7658 = load i64, i64* %RBP.i33
  %7659 = sub i64 %7658, 20
  %7660 = load i32, i32* %EDI.i
  %7661 = zext i32 %7660 to i64
  %7662 = load i64, i64* %PC.i32
  %7663 = add i64 %7662, 3
  store i64 %7663, i64* %PC.i32
  %7664 = inttoptr i64 %7659 to i32*
  store i32 %7660, i32* %7664
  store %struct.Memory* %loadMem_45e556, %struct.Memory** %MEMORY
  %loadMem_45e559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7666 = getelementptr inbounds %struct.GPR, %struct.GPR* %7665, i32 0, i32 33
  %7667 = getelementptr inbounds %struct.Reg, %struct.Reg* %7666, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7667 to i64*
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7669 = getelementptr inbounds %struct.GPR, %struct.GPR* %7668, i32 0, i32 9
  %7670 = getelementptr inbounds %struct.Reg, %struct.Reg* %7669, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %7670 to i32*
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7672 = getelementptr inbounds %struct.GPR, %struct.GPR* %7671, i32 0, i32 7
  %7673 = getelementptr inbounds %struct.Reg, %struct.Reg* %7672, i32 0, i32 0
  %RDX.i31 = bitcast %union.anon* %7673 to i64*
  %7674 = load i32, i32* %ESI.i
  %7675 = zext i32 %7674 to i64
  %7676 = load i64, i64* %PC.i30
  %7677 = add i64 %7676, 3
  store i64 %7677, i64* %PC.i30
  %7678 = shl i64 %7675, 32
  %7679 = ashr exact i64 %7678, 32
  store i64 %7679, i64* %RDX.i31, align 8
  store %struct.Memory* %loadMem_45e559, %struct.Memory** %MEMORY
  %loadMem_45e55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7681 = getelementptr inbounds %struct.GPR, %struct.GPR* %7680, i32 0, i32 33
  %7682 = getelementptr inbounds %struct.Reg, %struct.Reg* %7681, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %7682 to i64*
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7684 = getelementptr inbounds %struct.GPR, %struct.GPR* %7683, i32 0, i32 1
  %7685 = getelementptr inbounds %struct.Reg, %struct.Reg* %7684, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %7685 to i32*
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 5
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7688 to i64*
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 7
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7691 to i64*
  %7692 = load i64, i64* %RCX.i
  %7693 = load i64, i64* %RDX.i
  %7694 = mul i64 %7693, 4
  %7695 = add i64 %7694, %7692
  %7696 = load i32, i32* %EAX.i29
  %7697 = zext i32 %7696 to i64
  %7698 = load i64, i64* %PC.i28
  %7699 = add i64 %7698, 3
  store i64 %7699, i64* %PC.i28
  %7700 = inttoptr i64 %7695 to i32*
  store i32 %7696, i32* %7700
  store %struct.Memory* %loadMem_45e55c, %struct.Memory** %MEMORY
  %loadMem_45e55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7702 = getelementptr inbounds %struct.GPR, %struct.GPR* %7701, i32 0, i32 33
  %7703 = getelementptr inbounds %struct.Reg, %struct.Reg* %7702, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7703 to i64*
  %7704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7705 = getelementptr inbounds %struct.GPR, %struct.GPR* %7704, i32 0, i32 1
  %7706 = getelementptr inbounds %struct.Reg, %struct.Reg* %7705, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %7706 to i64*
  %7707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7708 = getelementptr inbounds %struct.GPR, %struct.GPR* %7707, i32 0, i32 15
  %7709 = getelementptr inbounds %struct.Reg, %struct.Reg* %7708, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %7709 to i64*
  %7710 = load i64, i64* %RBP.i27
  %7711 = sub i64 %7710, 8
  %7712 = load i64, i64* %PC.i25
  %7713 = add i64 %7712, 3
  store i64 %7713, i64* %PC.i25
  %7714 = inttoptr i64 %7711 to i32*
  %7715 = load i32, i32* %7714
  %7716 = zext i32 %7715 to i64
  store i64 %7716, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_45e55f, %struct.Memory** %MEMORY
  %loadMem_45e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7718 = getelementptr inbounds %struct.GPR, %struct.GPR* %7717, i32 0, i32 33
  %7719 = getelementptr inbounds %struct.Reg, %struct.Reg* %7718, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7719 to i64*
  %7720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7721 = getelementptr inbounds %struct.GPR, %struct.GPR* %7720, i32 0, i32 1
  %7722 = getelementptr inbounds %struct.Reg, %struct.Reg* %7721, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %7722 to i64*
  %7723 = load i64, i64* %RAX.i24
  %7724 = load i64, i64* %PC.i23
  %7725 = add i64 %7724, 3
  store i64 %7725, i64* %PC.i23
  %7726 = trunc i64 %7723 to i32
  %7727 = add i32 1, %7726
  %7728 = zext i32 %7727 to i64
  store i64 %7728, i64* %RAX.i24, align 8
  %7729 = icmp ult i32 %7727, %7726
  %7730 = icmp ult i32 %7727, 1
  %7731 = or i1 %7729, %7730
  %7732 = zext i1 %7731 to i8
  %7733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7732, i8* %7733, align 1
  %7734 = and i32 %7727, 255
  %7735 = call i32 @llvm.ctpop.i32(i32 %7734)
  %7736 = trunc i32 %7735 to i8
  %7737 = and i8 %7736, 1
  %7738 = xor i8 %7737, 1
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7738, i8* %7739, align 1
  %7740 = xor i64 1, %7723
  %7741 = trunc i64 %7740 to i32
  %7742 = xor i32 %7741, %7727
  %7743 = lshr i32 %7742, 4
  %7744 = trunc i32 %7743 to i8
  %7745 = and i8 %7744, 1
  %7746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7745, i8* %7746, align 1
  %7747 = icmp eq i32 %7727, 0
  %7748 = zext i1 %7747 to i8
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7748, i8* %7749, align 1
  %7750 = lshr i32 %7727, 31
  %7751 = trunc i32 %7750 to i8
  %7752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7751, i8* %7752, align 1
  %7753 = lshr i32 %7726, 31
  %7754 = xor i32 %7750, %7753
  %7755 = add i32 %7754, %7750
  %7756 = icmp eq i32 %7755, 2
  %7757 = zext i1 %7756 to i8
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7757, i8* %7758, align 1
  store %struct.Memory* %loadMem_45e562, %struct.Memory** %MEMORY
  %loadMem_45e565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7760 = getelementptr inbounds %struct.GPR, %struct.GPR* %7759, i32 0, i32 33
  %7761 = getelementptr inbounds %struct.Reg, %struct.Reg* %7760, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7761 to i64*
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7763 = getelementptr inbounds %struct.GPR, %struct.GPR* %7762, i32 0, i32 1
  %7764 = getelementptr inbounds %struct.Reg, %struct.Reg* %7763, i32 0, i32 0
  %EAX.i21 = bitcast %union.anon* %7764 to i32*
  %7765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7766 = getelementptr inbounds %struct.GPR, %struct.GPR* %7765, i32 0, i32 15
  %7767 = getelementptr inbounds %struct.Reg, %struct.Reg* %7766, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %7767 to i64*
  %7768 = load i64, i64* %RBP.i22
  %7769 = sub i64 %7768, 8
  %7770 = load i32, i32* %EAX.i21
  %7771 = zext i32 %7770 to i64
  %7772 = load i64, i64* %PC.i20
  %7773 = add i64 %7772, 3
  store i64 %7773, i64* %PC.i20
  %7774 = inttoptr i64 %7769 to i32*
  store i32 %7770, i32* %7774
  store %struct.Memory* %loadMem_45e565, %struct.Memory** %MEMORY
  %loadMem_45e568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7776 = getelementptr inbounds %struct.GPR, %struct.GPR* %7775, i32 0, i32 33
  %7777 = getelementptr inbounds %struct.Reg, %struct.Reg* %7776, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7777 to i64*
  %7778 = load i64, i64* %PC.i19
  %7779 = add i64 %7778, -115
  %7780 = load i64, i64* %PC.i19
  %7781 = add i64 %7780, 5
  store i64 %7781, i64* %PC.i19
  %7782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7779, i64* %7782, align 8
  store %struct.Memory* %loadMem_45e568, %struct.Memory** %MEMORY
  br label %block_.L_45e4f5

block_.L_45e56d:                                  ; preds = %block_.L_45e4f5
  %loadMem_45e56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7784 = getelementptr inbounds %struct.GPR, %struct.GPR* %7783, i32 0, i32 33
  %7785 = getelementptr inbounds %struct.Reg, %struct.Reg* %7784, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7785 to i64*
  %7786 = load i64, i64* %PC.i18
  %7787 = add i64 %7786, 5
  %7788 = load i64, i64* %PC.i18
  %7789 = add i64 %7788, 5
  store i64 %7789, i64* %PC.i18
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7787, i64* %7790, align 8
  store %struct.Memory* %loadMem_45e56d, %struct.Memory** %MEMORY
  br label %block_.L_45e572

block_.L_45e572:                                  ; preds = %block_.L_45e56d
  %loadMem_45e572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7792 = getelementptr inbounds %struct.GPR, %struct.GPR* %7791, i32 0, i32 33
  %7793 = getelementptr inbounds %struct.Reg, %struct.Reg* %7792, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7793 to i64*
  %7794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7795 = getelementptr inbounds %struct.GPR, %struct.GPR* %7794, i32 0, i32 1
  %7796 = getelementptr inbounds %struct.Reg, %struct.Reg* %7795, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %7796 to i64*
  %7797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7798 = getelementptr inbounds %struct.GPR, %struct.GPR* %7797, i32 0, i32 15
  %7799 = getelementptr inbounds %struct.Reg, %struct.Reg* %7798, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %7799 to i64*
  %7800 = load i64, i64* %RBP.i17
  %7801 = sub i64 %7800, 24
  %7802 = load i64, i64* %PC.i15
  %7803 = add i64 %7802, 3
  store i64 %7803, i64* %PC.i15
  %7804 = inttoptr i64 %7801 to i32*
  %7805 = load i32, i32* %7804
  %7806 = zext i32 %7805 to i64
  store i64 %7806, i64* %RAX.i16, align 8
  store %struct.Memory* %loadMem_45e572, %struct.Memory** %MEMORY
  %loadMem_45e575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7808 = getelementptr inbounds %struct.GPR, %struct.GPR* %7807, i32 0, i32 33
  %7809 = getelementptr inbounds %struct.Reg, %struct.Reg* %7808, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7809 to i64*
  %7810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7811 = getelementptr inbounds %struct.GPR, %struct.GPR* %7810, i32 0, i32 1
  %7812 = getelementptr inbounds %struct.Reg, %struct.Reg* %7811, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %7812 to i64*
  %7813 = load i64, i64* %RAX.i14
  %7814 = load i64, i64* %PC.i13
  %7815 = add i64 %7814, 3
  store i64 %7815, i64* %PC.i13
  %7816 = trunc i64 %7813 to i32
  %7817 = add i32 1, %7816
  %7818 = zext i32 %7817 to i64
  store i64 %7818, i64* %RAX.i14, align 8
  %7819 = icmp ult i32 %7817, %7816
  %7820 = icmp ult i32 %7817, 1
  %7821 = or i1 %7819, %7820
  %7822 = zext i1 %7821 to i8
  %7823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7822, i8* %7823, align 1
  %7824 = and i32 %7817, 255
  %7825 = call i32 @llvm.ctpop.i32(i32 %7824)
  %7826 = trunc i32 %7825 to i8
  %7827 = and i8 %7826, 1
  %7828 = xor i8 %7827, 1
  %7829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7828, i8* %7829, align 1
  %7830 = xor i64 1, %7813
  %7831 = trunc i64 %7830 to i32
  %7832 = xor i32 %7831, %7817
  %7833 = lshr i32 %7832, 4
  %7834 = trunc i32 %7833 to i8
  %7835 = and i8 %7834, 1
  %7836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7835, i8* %7836, align 1
  %7837 = icmp eq i32 %7817, 0
  %7838 = zext i1 %7837 to i8
  %7839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7838, i8* %7839, align 1
  %7840 = lshr i32 %7817, 31
  %7841 = trunc i32 %7840 to i8
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7841, i8* %7842, align 1
  %7843 = lshr i32 %7816, 31
  %7844 = xor i32 %7840, %7843
  %7845 = add i32 %7844, %7840
  %7846 = icmp eq i32 %7845, 2
  %7847 = zext i1 %7846 to i8
  %7848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7847, i8* %7848, align 1
  store %struct.Memory* %loadMem_45e575, %struct.Memory** %MEMORY
  %loadMem_45e578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7850 = getelementptr inbounds %struct.GPR, %struct.GPR* %7849, i32 0, i32 33
  %7851 = getelementptr inbounds %struct.Reg, %struct.Reg* %7850, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7851 to i64*
  %7852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7853 = getelementptr inbounds %struct.GPR, %struct.GPR* %7852, i32 0, i32 1
  %7854 = getelementptr inbounds %struct.Reg, %struct.Reg* %7853, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7854 to i32*
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7856 = getelementptr inbounds %struct.GPR, %struct.GPR* %7855, i32 0, i32 15
  %7857 = getelementptr inbounds %struct.Reg, %struct.Reg* %7856, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %7857 to i64*
  %7858 = load i64, i64* %RBP.i12
  %7859 = sub i64 %7858, 24
  %7860 = load i32, i32* %EAX.i
  %7861 = zext i32 %7860 to i64
  %7862 = load i64, i64* %PC.i11
  %7863 = add i64 %7862, 3
  store i64 %7863, i64* %PC.i11
  %7864 = inttoptr i64 %7859 to i32*
  store i32 %7860, i32* %7864
  store %struct.Memory* %loadMem_45e578, %struct.Memory** %MEMORY
  %loadMem_45e57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7866 = getelementptr inbounds %struct.GPR, %struct.GPR* %7865, i32 0, i32 33
  %7867 = getelementptr inbounds %struct.Reg, %struct.Reg* %7866, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %7867 to i64*
  %7868 = load i64, i64* %PC.i10
  %7869 = add i64 %7868, -326
  %7870 = load i64, i64* %PC.i10
  %7871 = add i64 %7870, 5
  store i64 %7871, i64* %PC.i10
  %7872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7869, i64* %7872, align 8
  store %struct.Memory* %loadMem_45e57b, %struct.Memory** %MEMORY
  br label %block_.L_45e435

block_.L_45e580:                                  ; preds = %block_.L_45e45c
  %loadMem_45e580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7874 = getelementptr inbounds %struct.GPR, %struct.GPR* %7873, i32 0, i32 33
  %7875 = getelementptr inbounds %struct.Reg, %struct.Reg* %7874, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7875 to i64*
  %7876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7877 = getelementptr inbounds %struct.GPR, %struct.GPR* %7876, i32 0, i32 1
  %7878 = getelementptr inbounds %struct.Reg, %struct.Reg* %7877, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %7878 to i64*
  %7879 = load i64, i64* %PC.i8
  %7880 = add i64 %7879, 8
  store i64 %7880, i64* %PC.i8
  %7881 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %7881, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_45e580, %struct.Memory** %MEMORY
  %loadMem_45e588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7883 = getelementptr inbounds %struct.GPR, %struct.GPR* %7882, i32 0, i32 33
  %7884 = getelementptr inbounds %struct.Reg, %struct.Reg* %7883, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7884 to i64*
  %7885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7886 = getelementptr inbounds %struct.GPR, %struct.GPR* %7885, i32 0, i32 1
  %7887 = getelementptr inbounds %struct.Reg, %struct.Reg* %7886, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7887 to i64*
  %7888 = load i64, i64* %RAX.i
  %7889 = add i64 %7888, 3292
  %7890 = load i64, i64* %PC.i7
  %7891 = add i64 %7890, 7
  store i64 %7891, i64* %PC.i7
  %7892 = inttoptr i64 %7889 to i32*
  %7893 = load i32, i32* %7892
  %7894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7894, align 1
  %7895 = and i32 %7893, 255
  %7896 = call i32 @llvm.ctpop.i32(i32 %7895)
  %7897 = trunc i32 %7896 to i8
  %7898 = and i8 %7897, 1
  %7899 = xor i8 %7898, 1
  %7900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7899, i8* %7900, align 1
  %7901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7901, align 1
  %7902 = icmp eq i32 %7893, 0
  %7903 = zext i1 %7902 to i8
  %7904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7903, i8* %7904, align 1
  %7905 = lshr i32 %7893, 31
  %7906 = trunc i32 %7905 to i8
  %7907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7906, i8* %7907, align 1
  %7908 = lshr i32 %7893, 31
  %7909 = xor i32 %7905, %7908
  %7910 = add i32 %7909, %7908
  %7911 = icmp eq i32 %7910, 2
  %7912 = zext i1 %7911 to i8
  %7913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7912, i8* %7913, align 1
  store %struct.Memory* %loadMem_45e588, %struct.Memory** %MEMORY
  %loadMem_45e58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7915 = getelementptr inbounds %struct.GPR, %struct.GPR* %7914, i32 0, i32 33
  %7916 = getelementptr inbounds %struct.Reg, %struct.Reg* %7915, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7916 to i64*
  %7917 = load i64, i64* %PC.i6
  %7918 = add i64 %7917, 11
  %7919 = load i64, i64* %PC.i6
  %7920 = add i64 %7919, 6
  %7921 = load i64, i64* %PC.i6
  %7922 = add i64 %7921, 6
  store i64 %7922, i64* %PC.i6
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7924 = load i8, i8* %7923, align 1
  %7925 = icmp eq i8 %7924, 0
  %7926 = zext i1 %7925 to i8
  store i8 %7926, i8* %BRANCH_TAKEN, align 1
  %7927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7928 = select i1 %7925, i64 %7918, i64 %7920
  store i64 %7928, i64* %7927, align 8
  store %struct.Memory* %loadMem_45e58f, %struct.Memory** %MEMORY
  %loadBr_45e58f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45e58f = icmp eq i8 %loadBr_45e58f, 1
  br i1 %cmpBr_45e58f, label %block_.L_45e59a, label %block_45e595

block_45e595:                                     ; preds = %block_.L_45e580
  %loadMem1_45e595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7930 = getelementptr inbounds %struct.GPR, %struct.GPR* %7929, i32 0, i32 33
  %7931 = getelementptr inbounds %struct.Reg, %struct.Reg* %7930, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7931 to i64*
  %7932 = load i64, i64* %PC.i5
  %7933 = add i64 %7932, -16789
  %7934 = load i64, i64* %PC.i5
  %7935 = add i64 %7934, 5
  %7936 = load i64, i64* %PC.i5
  %7937 = add i64 %7936, 5
  store i64 %7937, i64* %PC.i5
  %7938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7939 = load i64, i64* %7938, align 8
  %7940 = add i64 %7939, -8
  %7941 = inttoptr i64 %7940 to i64*
  store i64 %7935, i64* %7941
  store i64 %7940, i64* %7938, align 8
  %7942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7933, i64* %7942, align 8
  store %struct.Memory* %loadMem1_45e595, %struct.Memory** %MEMORY
  %loadMem2_45e595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45e595 = load i64, i64* %3
  %call2_45e595 = call %struct.Memory* @sub_45a400.InitializeFastFullIntegerSearch(%struct.State* %0, i64 %loadPC_45e595, %struct.Memory* %loadMem2_45e595)
  store %struct.Memory* %call2_45e595, %struct.Memory** %MEMORY
  br label %block_.L_45e59a

block_.L_45e59a:                                  ; preds = %block_45e595, %block_.L_45e580
  %loadMem_45e59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 33
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7945 to i64*
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7947 = getelementptr inbounds %struct.GPR, %struct.GPR* %7946, i32 0, i32 13
  %7948 = getelementptr inbounds %struct.Reg, %struct.Reg* %7947, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7948 to i64*
  %7949 = load i64, i64* %RSP.i
  %7950 = load i64, i64* %PC.i4
  %7951 = add i64 %7950, 7
  store i64 %7951, i64* %PC.i4
  %7952 = add i64 128, %7949
  store i64 %7952, i64* %RSP.i, align 8
  %7953 = icmp ult i64 %7952, %7949
  %7954 = icmp ult i64 %7952, 128
  %7955 = or i1 %7953, %7954
  %7956 = zext i1 %7955 to i8
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7956, i8* %7957, align 1
  %7958 = trunc i64 %7952 to i32
  %7959 = and i32 %7958, 255
  %7960 = call i32 @llvm.ctpop.i32(i32 %7959)
  %7961 = trunc i32 %7960 to i8
  %7962 = and i8 %7961, 1
  %7963 = xor i8 %7962, 1
  %7964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7963, i8* %7964, align 1
  %7965 = xor i64 128, %7949
  %7966 = xor i64 %7965, %7952
  %7967 = lshr i64 %7966, 4
  %7968 = trunc i64 %7967 to i8
  %7969 = and i8 %7968, 1
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7969, i8* %7970, align 1
  %7971 = icmp eq i64 %7952, 0
  %7972 = zext i1 %7971 to i8
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7972, i8* %7973, align 1
  %7974 = lshr i64 %7952, 63
  %7975 = trunc i64 %7974 to i8
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7975, i8* %7976, align 1
  %7977 = lshr i64 %7949, 63
  %7978 = xor i64 %7974, %7977
  %7979 = add i64 %7978, %7974
  %7980 = icmp eq i64 %7979, 2
  %7981 = zext i1 %7980 to i8
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7981, i8* %7982, align 1
  store %struct.Memory* %loadMem_45e59a, %struct.Memory** %MEMORY
  %loadMem_45e5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7984 = getelementptr inbounds %struct.GPR, %struct.GPR* %7983, i32 0, i32 33
  %7985 = getelementptr inbounds %struct.Reg, %struct.Reg* %7984, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7985 to i64*
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 15
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7988 to i64*
  %7989 = load i64, i64* %PC.i2
  %7990 = add i64 %7989, 1
  store i64 %7990, i64* %PC.i2
  %7991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7992 = load i64, i64* %7991, align 8
  %7993 = add i64 %7992, 8
  %7994 = inttoptr i64 %7992 to i64*
  %7995 = load i64, i64* %7994
  store i64 %7995, i64* %RBP.i3, align 8
  store i64 %7993, i64* %7991, align 8
  store %struct.Memory* %loadMem_45e5a1, %struct.Memory** %MEMORY
  %loadMem_45e5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 33
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7998 to i64*
  %7999 = load i64, i64* %PC.i1
  %8000 = add i64 %7999, 1
  store i64 %8000, i64* %PC.i1
  %8001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8003 = load i64, i64* %8002, align 8
  %8004 = inttoptr i64 %8003 to i64*
  %8005 = load i64, i64* %8004
  store i64 %8005, i64* %8001, align 8
  %8006 = add i64 %8003, 8
  store i64 %8006, i64* %8002, align 8
  store %struct.Memory* %loadMem_45e5a2, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_45e5a2
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x11bf0__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 72688
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

define %struct.Memory* @routine_jle_.L_45df79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_45df90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__0x9___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 9, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x20__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x24__rdx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_shll__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_imull__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RAX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jle_.L_45dfe1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 9, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_45dff9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RAX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x10___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RCX, align 8
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

define %struct.Memory* @routine_jle_.L_45e01f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_45e028(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.log_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x5380c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x5380c__rip__type* @G_0x5380c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
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

define %struct.Memory* @routine_movsd_0x5385a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x5385a__rip__type* @G_0x5385a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
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

define %struct.Memory* @routine_callq_.floor_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 32
  %13 = ashr i64 %12, 33
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = trunc i64 %13 to i32
  %17 = and i64 %13, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %19, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i32 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i32 %16, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
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

define %struct.Memory* @routine_addl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 3, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 3
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
  %26 = xor i64 3, %9
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

define %struct.Memory* @routine_shll__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
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

define %struct.Memory* @routine_movsd_0x53791__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x53791__rip__type* @G_0x53791__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd_0x537d8__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x537d8__rip__type* @G_0x537d8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
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

define %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ceil_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x6d1fac(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*)
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__0x6d09a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_45e146(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2240___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2240_type* @G__0x4c2240 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__0x711c50(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_45e177(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c226b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c226b_type* @G__0x4c226b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6d1fac___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__0x6f8f00(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_45e1b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c2296___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c2296_type* @G__0x4c2296 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x6f9718(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_45e1e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c22b8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c22b8_type* @G__0x4c22b8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x726840(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_45e216(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c22db___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c22db_type* @G__0x4c22db to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6f9698___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6f9698_type* @G__0x6f9698 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x4___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_mem4Dint(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x6d1fac___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x6d1fac_type* @G_0x6d1fac to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6f8f00___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R9, align 8
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

define %struct.Memory* @routine_addq__r9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__rdi__0x6f8f00(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
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

define %struct.Memory* @routine_movl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 2
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

define %struct.Memory* @routine_movq_0x726840___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__0x726840(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 1, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 3, i32* %13
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

define %struct.Memory* @routine_jg_.L_45e320(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr i64 %12, 33
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = trunc i64 %13 to i32
  %17 = and i64 %13, 4294967295
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %19, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i32 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i32 %16, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_jge_.L_45e30d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6f8f00___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6f8f00_type* @G_0x6f8f00 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45e2ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e312(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_jmpq_.L_45e2a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x6f9718___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jg_.L_45e3a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_45e392(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6f9718___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6f9718_type* @G_0x6f9718 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_jmpq_.L_45e366(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e397(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e335(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x726840___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x78__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 2
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

define %struct.Memory* @routine_jge_.L_45e40b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x726840___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x726840_type* @G_0x726840 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45e3ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x711c50___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6d09a0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_45e456(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_45e45c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_45e580(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 24
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

define %struct.Memory* @routine_jge_.L_45e4ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6d09a0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x711c50___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_jmpq_.L_45e475(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_45e56d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6d09a0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d09a0_type* @G_0x6d09a0 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x711c50___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x711c50_type* @G_0x711c50 to i64*)
  store i64 %11, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45e4f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e572(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_45e435(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3292
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

define %struct.Memory* @routine_jne_.L_45e59a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.InitializeFastFullIntegerSearch(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
