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
%G_0x6f8ee4_type = type <{ [16 x i8] }>
%G_0x6f8ee8_type = type <{ [16 x i8] }>
%G_0x6f8eec_type = type <{ [16 x i8] }>
%G_0x6f8ef0_type = type <{ [16 x i8] }>
%G_0x6f8ef4_type = type <{ [16 x i8] }>
%G_0x6f8ef8_type = type <{ [16 x i8] }>
%G_0x6f8efc_type = type <{ [16 x i8] }>
%G_0x724304_type = type <{ [16 x i8] }>
%G_0x724308_type = type <{ [16 x i8] }>
%G_0x72430c_type = type <{ [16 x i8] }>
%G_0x724310_type = type <{ [16 x i8] }>
%G_0x724314_type = type <{ [16 x i8] }>
%G_0x724318_type = type <{ [16 x i8] }>
%G_0x72431c_type = type <{ [16 x i8] }>
%G_0x9deee__rip__type = type <{ [4 x i8] }>
%G_0x9def3__rip__type = type <{ [4 x i8] }>
%G_0x9def8__rip__type = type <{ [4 x i8] }>
%G_0x9defc__rip__type = type <{ [4 x i8] }>
%G_0x9df00__rip__type = type <{ [4 x i8] }>
%G_0x9df04__rip__type = type <{ [4 x i8] }>
%G_0x9df08__rip__type = type <{ [4 x i8] }>
%G_0x9df0c__rip__type = type <{ [4 x i8] }>
%G_0x9df10__rip__type = type <{ [4 x i8] }>
%G_0x9df14__rip__type = type <{ [4 x i8] }>
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
@G_0x6f8ee4 = global %G_0x6f8ee4_type zeroinitializer
@G_0x6f8ee8 = global %G_0x6f8ee8_type zeroinitializer
@G_0x6f8eec = global %G_0x6f8eec_type zeroinitializer
@G_0x6f8ef0 = global %G_0x6f8ef0_type zeroinitializer
@G_0x6f8ef4 = global %G_0x6f8ef4_type zeroinitializer
@G_0x6f8ef8 = global %G_0x6f8ef8_type zeroinitializer
@G_0x6f8efc = global %G_0x6f8efc_type zeroinitializer
@G_0x724304 = global %G_0x724304_type zeroinitializer
@G_0x724308 = global %G_0x724308_type zeroinitializer
@G_0x72430c = global %G_0x72430c_type zeroinitializer
@G_0x724310 = global %G_0x724310_type zeroinitializer
@G_0x724314 = global %G_0x724314_type zeroinitializer
@G_0x724318 = global %G_0x724318_type zeroinitializer
@G_0x72431c = global %G_0x72431c_type zeroinitializer
@G_0x9deee__rip_ = global %G_0x9deee__rip__type zeroinitializer
@G_0x9def3__rip_ = global %G_0x9def3__rip__type zeroinitializer
@G_0x9def8__rip_ = global %G_0x9def8__rip__type zeroinitializer
@G_0x9defc__rip_ = global %G_0x9defc__rip__type zeroinitializer
@G_0x9df00__rip_ = global %G_0x9df00__rip__type zeroinitializer
@G_0x9df04__rip_ = global %G_0x9df04__rip__type zeroinitializer
@G_0x9df08__rip_ = global %G_0x9df08__rip__type zeroinitializer
@G_0x9df0c__rip_ = global %G_0x9df0c__rip__type zeroinitializer
@G_0x9df10__rip_ = global %G_0x9df10__rip__type zeroinitializer
@G_0x9df14__rip_ = global %G_0x9df14__rip__type zeroinitializer

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

declare %struct.Memory* @sub_41f9c0.DefineThresholdMB(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @DefineThreshold(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41f8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41f8e0, %struct.Memory** %MEMORY
  %loadMem_41f8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i33
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i33
  store i64 %26, i64* %RBP.i34, align 8
  store %struct.Memory* %loadMem_41f8e1, %struct.Memory** %MEMORY
  %loadMem_41f8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %32, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %33 to %"class.std::bitset"*
  %34 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %35 = load i64, i64* %PC.i32
  %36 = add i64 %35, ptrtoint (%G_0x9df14__rip__type* @G_0x9df14__rip_ to i64)
  %37 = load i64, i64* %PC.i32
  %38 = add i64 %37, 8
  store i64 %38, i64* %PC.i32
  %39 = inttoptr i64 %36 to float*
  %40 = load float, float* %39
  %41 = bitcast i8* %34 to float*
  store float %40, float* %41, align 1
  %42 = getelementptr inbounds i8, i8* %34, i64 4
  %43 = bitcast i8* %42 to float*
  store float 0.000000e+00, float* %43, align 1
  %44 = getelementptr inbounds i8, i8* %34, i64 8
  %45 = bitcast i8* %44 to float*
  store float 0.000000e+00, float* %45, align 1
  %46 = getelementptr inbounds i8, i8* %34, i64 12
  %47 = bitcast i8* %46 to float*
  store float 0.000000e+00, float* %47, align 1
  store %struct.Memory* %loadMem_41f8e4, %struct.Memory** %MEMORY
  %loadMem_41f8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 33
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %51, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %52 to %"class.std::bitset"*
  %53 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %54 = load i64, i64* %PC.i31
  %55 = add i64 %54, ptrtoint (%G_0x9df10__rip__type* @G_0x9df10__rip_ to i64)
  %56 = load i64, i64* %PC.i31
  %57 = add i64 %56, 8
  store i64 %57, i64* %PC.i31
  %58 = inttoptr i64 %55 to float*
  %59 = load float, float* %58
  %60 = bitcast i8* %53 to float*
  store float %59, float* %60, align 1
  %61 = getelementptr inbounds i8, i8* %53, i64 4
  %62 = bitcast i8* %61 to float*
  store float 0.000000e+00, float* %62, align 1
  %63 = getelementptr inbounds i8, i8* %53, i64 8
  %64 = bitcast i8* %63 to float*
  store float 0.000000e+00, float* %64, align 1
  %65 = getelementptr inbounds i8, i8* %53, i64 12
  %66 = bitcast i8* %65 to float*
  store float 0.000000e+00, float* %66, align 1
  store %struct.Memory* %loadMem_41f8ec, %struct.Memory** %MEMORY
  %loadMem_41f8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %73 = load i64, i64* %PC.i30
  %74 = add i64 %73, ptrtoint (%G_0x9df0c__rip__type* @G_0x9df0c__rip_ to i64)
  %75 = load i64, i64* %PC.i30
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i30
  %77 = inttoptr i64 %74 to float*
  %78 = load float, float* %77
  %79 = bitcast i8* %72 to float*
  store float %78, float* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 4
  %81 = bitcast i8* %80 to float*
  store float 0.000000e+00, float* %81, align 1
  %82 = getelementptr inbounds i8, i8* %72, i64 8
  %83 = bitcast i8* %82 to float*
  store float 0.000000e+00, float* %83, align 1
  %84 = getelementptr inbounds i8, i8* %72, i64 12
  %85 = bitcast i8* %84 to float*
  store float 0.000000e+00, float* %85, align 1
  store %struct.Memory* %loadMem_41f8f4, %struct.Memory** %MEMORY
  %loadMem_41f8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %90 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %89, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %90 to %"class.std::bitset"*
  %91 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %92 = load i64, i64* %PC.i29
  %93 = add i64 %92, ptrtoint (%G_0x9df08__rip__type* @G_0x9df08__rip_ to i64)
  %94 = load i64, i64* %PC.i29
  %95 = add i64 %94, 8
  store i64 %95, i64* %PC.i29
  %96 = inttoptr i64 %93 to float*
  %97 = load float, float* %96
  %98 = bitcast i8* %91 to float*
  store float %97, float* %98, align 1
  %99 = getelementptr inbounds i8, i8* %91, i64 4
  %100 = bitcast i8* %99 to float*
  store float 0.000000e+00, float* %100, align 1
  %101 = getelementptr inbounds i8, i8* %91, i64 8
  %102 = bitcast i8* %101 to float*
  store float 0.000000e+00, float* %102, align 1
  %103 = getelementptr inbounds i8, i8* %91, i64 12
  %104 = bitcast i8* %103 to float*
  store float 0.000000e+00, float* %104, align 1
  store %struct.Memory* %loadMem_41f8fc, %struct.Memory** %MEMORY
  %loadMem_41f904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %108, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %109 to %"class.std::bitset"*
  %110 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %111 = load i64, i64* %PC.i28
  %112 = add i64 %111, ptrtoint (%G_0x9df04__rip__type* @G_0x9df04__rip_ to i64)
  %113 = load i64, i64* %PC.i28
  %114 = add i64 %113, 8
  store i64 %114, i64* %PC.i28
  %115 = inttoptr i64 %112 to float*
  %116 = load float, float* %115
  %117 = bitcast i8* %110 to float*
  store float %116, float* %117, align 1
  %118 = getelementptr inbounds i8, i8* %110, i64 4
  %119 = bitcast i8* %118 to float*
  store float 0.000000e+00, float* %119, align 1
  %120 = getelementptr inbounds i8, i8* %110, i64 8
  %121 = bitcast i8* %120 to float*
  store float 0.000000e+00, float* %121, align 1
  %122 = getelementptr inbounds i8, i8* %110, i64 12
  %123 = bitcast i8* %122 to float*
  store float 0.000000e+00, float* %123, align 1
  store %struct.Memory* %loadMem_41f904, %struct.Memory** %MEMORY
  %loadMem_41f90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %128 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %127, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %128 to %"class.std::bitset"*
  %129 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %130 = load i64, i64* %PC.i27
  %131 = add i64 %130, ptrtoint (%G_0x9df00__rip__type* @G_0x9df00__rip_ to i64)
  %132 = load i64, i64* %PC.i27
  %133 = add i64 %132, 8
  store i64 %133, i64* %PC.i27
  %134 = inttoptr i64 %131 to float*
  %135 = load float, float* %134
  %136 = bitcast i8* %129 to float*
  store float %135, float* %136, align 1
  %137 = getelementptr inbounds i8, i8* %129, i64 4
  %138 = bitcast i8* %137 to float*
  store float 0.000000e+00, float* %138, align 1
  %139 = getelementptr inbounds i8, i8* %129, i64 8
  %140 = bitcast i8* %139 to float*
  store float 0.000000e+00, float* %140, align 1
  %141 = getelementptr inbounds i8, i8* %129, i64 12
  %142 = bitcast i8* %141 to float*
  store float 0.000000e+00, float* %142, align 1
  store %struct.Memory* %loadMem_41f90c, %struct.Memory** %MEMORY
  %loadMem_41f914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %146, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %147 to %"class.std::bitset"*
  %148 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %149 = load i64, i64* %PC.i26
  %150 = add i64 %149, ptrtoint (%G_0x9defc__rip__type* @G_0x9defc__rip_ to i64)
  %151 = load i64, i64* %PC.i26
  %152 = add i64 %151, 8
  store i64 %152, i64* %PC.i26
  %153 = inttoptr i64 %150 to float*
  %154 = load float, float* %153
  %155 = bitcast i8* %148 to float*
  store float %154, float* %155, align 1
  %156 = getelementptr inbounds i8, i8* %148, i64 4
  %157 = bitcast i8* %156 to float*
  store float 0.000000e+00, float* %157, align 1
  %158 = getelementptr inbounds i8, i8* %148, i64 8
  %159 = bitcast i8* %158 to float*
  store float 0.000000e+00, float* %159, align 1
  %160 = getelementptr inbounds i8, i8* %148, i64 12
  %161 = bitcast i8* %160 to float*
  store float 0.000000e+00, float* %161, align 1
  store %struct.Memory* %loadMem_41f914, %struct.Memory** %MEMORY
  %loadMem_41f91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %165, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %166 to %"class.std::bitset"*
  %167 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %168 = load i64, i64* %PC.i25
  %169 = add i64 %168, ptrtoint (%G_0x9def8__rip__type* @G_0x9def8__rip_ to i64)
  %170 = load i64, i64* %PC.i25
  %171 = add i64 %170, 8
  store i64 %171, i64* %PC.i25
  %172 = inttoptr i64 %169 to float*
  %173 = load float, float* %172
  %174 = bitcast i8* %167 to float*
  store float %173, float* %174, align 1
  %175 = getelementptr inbounds i8, i8* %167, i64 4
  %176 = bitcast i8* %175 to float*
  store float 0.000000e+00, float* %176, align 1
  %177 = getelementptr inbounds i8, i8* %167, i64 8
  %178 = bitcast i8* %177 to float*
  store float 0.000000e+00, float* %178, align 1
  %179 = getelementptr inbounds i8, i8* %167, i64 12
  %180 = bitcast i8* %179 to float*
  store float 0.000000e+00, float* %180, align 1
  store %struct.Memory* %loadMem_41f91c, %struct.Memory** %MEMORY
  %loadMem_41f924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %184, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %185 to %"class.std::bitset"*
  %186 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %187 = load i64, i64* %PC.i24
  %188 = add i64 %187, ptrtoint (%G_0x9def3__rip__type* @G_0x9def3__rip_ to i64)
  %189 = load i64, i64* %PC.i24
  %190 = add i64 %189, 9
  store i64 %190, i64* %PC.i24
  %191 = inttoptr i64 %188 to float*
  %192 = load float, float* %191
  %193 = bitcast i8* %186 to float*
  store float %192, float* %193, align 1
  %194 = getelementptr inbounds i8, i8* %186, i64 4
  %195 = bitcast i8* %194 to float*
  store float 0.000000e+00, float* %195, align 1
  %196 = getelementptr inbounds i8, i8* %186, i64 8
  %197 = bitcast i8* %196 to float*
  store float 0.000000e+00, float* %197, align 1
  %198 = getelementptr inbounds i8, i8* %186, i64 12
  %199 = bitcast i8* %198 to float*
  store float 0.000000e+00, float* %199, align 1
  store %struct.Memory* %loadMem_41f924, %struct.Memory** %MEMORY
  %loadMem_41f92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %203, i64 0, i64 9
  %YMM9.i = bitcast %union.VectorReg* %204 to %"class.std::bitset"*
  %205 = bitcast %"class.std::bitset"* %YMM9.i to i8*
  %206 = load i64, i64* %PC.i23
  %207 = add i64 %206, ptrtoint (%G_0x9deee__rip__type* @G_0x9deee__rip_ to i64)
  %208 = load i64, i64* %PC.i23
  %209 = add i64 %208, 9
  store i64 %209, i64* %PC.i23
  %210 = inttoptr i64 %207 to float*
  %211 = load float, float* %210
  %212 = bitcast i8* %205 to float*
  store float %211, float* %212, align 1
  %213 = getelementptr inbounds i8, i8* %205, i64 4
  %214 = bitcast i8* %213 to float*
  store float 0.000000e+00, float* %214, align 1
  %215 = getelementptr inbounds i8, i8* %205, i64 8
  %216 = bitcast i8* %215 to float*
  store float 0.000000e+00, float* %216, align 1
  %217 = getelementptr inbounds i8, i8* %205, i64 12
  %218 = bitcast i8* %217 to float*
  store float 0.000000e+00, float* %218, align 1
  store %struct.Memory* %loadMem_41f92d, %struct.Memory** %MEMORY
  %loadMem_41f936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %222, i64 0, i64 9
  %XMM9.i22 = bitcast %union.VectorReg* %223 to %union.vec128_t*
  %224 = bitcast %union.vec128_t* %XMM9.i22 to i8*
  %225 = load i64, i64* %PC.i21
  %226 = add i64 %225, 10
  store i64 %226, i64* %PC.i21
  %227 = bitcast i8* %224 to <2 x float>*
  %228 = load <2 x float>, <2 x float>* %227, align 1
  %229 = extractelement <2 x float> %228, i32 0
  store float %229, float* bitcast (%G_0x724304_type* @G_0x724304 to float*)
  store %struct.Memory* %loadMem_41f936, %struct.Memory** %MEMORY
  %loadMem_41f940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %233, i64 0, i64 9
  %XMM9.i20 = bitcast %union.VectorReg* %234 to %union.vec128_t*
  %235 = bitcast %union.vec128_t* %XMM9.i20 to i8*
  %236 = load i64, i64* %PC.i19
  %237 = add i64 %236, 10
  store i64 %237, i64* %PC.i19
  %238 = bitcast i8* %235 to <2 x float>*
  %239 = load <2 x float>, <2 x float>* %238, align 1
  %240 = extractelement <2 x float> %239, i32 0
  store float %240, float* bitcast (%G_0x724308_type* @G_0x724308 to float*)
  store %struct.Memory* %loadMem_41f940, %struct.Memory** %MEMORY
  %loadMem_41f94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 33
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %244, i64 0, i64 9
  %XMM9.i = bitcast %union.VectorReg* %245 to %union.vec128_t*
  %246 = bitcast %union.vec128_t* %XMM9.i to i8*
  %247 = load i64, i64* %PC.i18
  %248 = add i64 %247, 10
  store i64 %248, i64* %PC.i18
  %249 = bitcast i8* %246 to <2 x float>*
  %250 = load <2 x float>, <2 x float>* %249, align 1
  %251 = extractelement <2 x float> %250, i32 0
  store float %251, float* bitcast (%G_0x72430c_type* @G_0x72430c to float*)
  store %struct.Memory* %loadMem_41f94a, %struct.Memory** %MEMORY
  %loadMem_41f954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 33
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %256 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %255, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %256 to %union.vec128_t*
  %257 = bitcast %union.vec128_t* %XMM8.i to i8*
  %258 = load i64, i64* %PC.i17
  %259 = add i64 %258, 10
  store i64 %259, i64* %PC.i17
  %260 = bitcast i8* %257 to <2 x float>*
  %261 = load <2 x float>, <2 x float>* %260, align 1
  %262 = extractelement <2 x float> %261, i32 0
  store float %262, float* bitcast (%G_0x724310_type* @G_0x724310 to float*)
  store %struct.Memory* %loadMem_41f954, %struct.Memory** %MEMORY
  %loadMem_41f95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 7
  %XMM7.i16 = bitcast %union.VectorReg* %267 to %union.vec128_t*
  %268 = bitcast %union.vec128_t* %XMM7.i16 to i8*
  %269 = load i64, i64* %PC.i15
  %270 = add i64 %269, 9
  store i64 %270, i64* %PC.i15
  %271 = bitcast i8* %268 to <2 x float>*
  %272 = load <2 x float>, <2 x float>* %271, align 1
  %273 = extractelement <2 x float> %272, i32 0
  store float %273, float* bitcast (%G_0x724314_type* @G_0x724314 to float*)
  store %struct.Memory* %loadMem_41f95e, %struct.Memory** %MEMORY
  %loadMem_41f967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 33
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %278 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %277, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %278 to %union.vec128_t*
  %279 = bitcast %union.vec128_t* %XMM7.i to i8*
  %280 = load i64, i64* %PC.i14
  %281 = add i64 %280, 9
  store i64 %281, i64* %PC.i14
  %282 = bitcast i8* %279 to <2 x float>*
  %283 = load <2 x float>, <2 x float>* %282, align 1
  %284 = extractelement <2 x float> %283, i32 0
  store float %284, float* bitcast (%G_0x724318_type* @G_0x724318 to float*)
  store %struct.Memory* %loadMem_41f967, %struct.Memory** %MEMORY
  %loadMem_41f970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 33
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %289 to %union.vec128_t*
  %290 = bitcast %union.vec128_t* %XMM6.i to i8*
  %291 = load i64, i64* %PC.i13
  %292 = add i64 %291, 9
  store i64 %292, i64* %PC.i13
  %293 = bitcast i8* %290 to <2 x float>*
  %294 = load <2 x float>, <2 x float>* %293, align 1
  %295 = extractelement <2 x float> %294, i32 0
  store float %295, float* bitcast (%G_0x72431c_type* @G_0x72431c to float*)
  store %struct.Memory* %loadMem_41f970, %struct.Memory** %MEMORY
  %loadMem_41f979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %300 to %union.vec128_t*
  %301 = bitcast %union.vec128_t* %XMM5.i to i8*
  %302 = load i64, i64* %PC.i12
  %303 = add i64 %302, 9
  store i64 %303, i64* %PC.i12
  %304 = bitcast i8* %301 to <2 x float>*
  %305 = load <2 x float>, <2 x float>* %304, align 1
  %306 = extractelement <2 x float> %305, i32 0
  store float %306, float* bitcast (%G_0x6f8ee4_type* @G_0x6f8ee4 to float*)
  store %struct.Memory* %loadMem_41f979, %struct.Memory** %MEMORY
  %loadMem_41f982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 4
  %XMM4.i11 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = bitcast %union.vec128_t* %XMM4.i11 to i8*
  %313 = load i64, i64* %PC.i10
  %314 = add i64 %313, 9
  store i64 %314, i64* %PC.i10
  %315 = bitcast i8* %312 to <2 x float>*
  %316 = load <2 x float>, <2 x float>* %315, align 1
  %317 = extractelement <2 x float> %316, i32 0
  store float %317, float* bitcast (%G_0x6f8ee8_type* @G_0x6f8ee8 to float*)
  store %struct.Memory* %loadMem_41f982, %struct.Memory** %MEMORY
  %loadMem_41f98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %321, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %322 to %union.vec128_t*
  %323 = bitcast %union.vec128_t* %XMM4.i to i8*
  %324 = load i64, i64* %PC.i9
  %325 = add i64 %324, 9
  store i64 %325, i64* %PC.i9
  %326 = bitcast i8* %323 to <2 x float>*
  %327 = load <2 x float>, <2 x float>* %326, align 1
  %328 = extractelement <2 x float> %327, i32 0
  store float %328, float* bitcast (%G_0x6f8eec_type* @G_0x6f8eec to float*)
  store %struct.Memory* %loadMem_41f98b, %struct.Memory** %MEMORY
  %loadMem_41f994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %332, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %333 to %union.vec128_t*
  %334 = bitcast %union.vec128_t* %XMM3.i to i8*
  %335 = load i64, i64* %PC.i8
  %336 = add i64 %335, 9
  store i64 %336, i64* %PC.i8
  %337 = bitcast i8* %334 to <2 x float>*
  %338 = load <2 x float>, <2 x float>* %337, align 1
  %339 = extractelement <2 x float> %338, i32 0
  store float %339, float* bitcast (%G_0x6f8ef0_type* @G_0x6f8ef0 to float*)
  store %struct.Memory* %loadMem_41f994, %struct.Memory** %MEMORY
  %loadMem_41f99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %344 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %343, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %344 to %union.vec128_t*
  %345 = bitcast %union.vec128_t* %XMM2.i to i8*
  %346 = load i64, i64* %PC.i7
  %347 = add i64 %346, 9
  store i64 %347, i64* %PC.i7
  %348 = bitcast i8* %345 to <2 x float>*
  %349 = load <2 x float>, <2 x float>* %348, align 1
  %350 = extractelement <2 x float> %349, i32 0
  store float %350, float* bitcast (%G_0x6f8ef4_type* @G_0x6f8ef4 to float*)
  store %struct.Memory* %loadMem_41f99d, %struct.Memory** %MEMORY
  %loadMem_41f9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %354, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %355 to %union.vec128_t*
  %356 = bitcast %union.vec128_t* %XMM1.i to i8*
  %357 = load i64, i64* %PC.i6
  %358 = add i64 %357, 9
  store i64 %358, i64* %PC.i6
  %359 = bitcast i8* %356 to <2 x float>*
  %360 = load <2 x float>, <2 x float>* %359, align 1
  %361 = extractelement <2 x float> %360, i32 0
  store float %361, float* bitcast (%G_0x6f8ef8_type* @G_0x6f8ef8 to float*)
  store %struct.Memory* %loadMem_41f9a6, %struct.Memory** %MEMORY
  %loadMem_41f9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %366 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %365, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %366 to %union.vec128_t*
  %367 = bitcast %union.vec128_t* %XMM0.i to i8*
  %368 = load i64, i64* %PC.i5
  %369 = add i64 %368, 9
  store i64 %369, i64* %PC.i5
  %370 = bitcast i8* %367 to <2 x float>*
  %371 = load <2 x float>, <2 x float>* %370, align 1
  %372 = extractelement <2 x float> %371, i32 0
  store float %372, float* bitcast (%G_0x6f8efc_type* @G_0x6f8efc to float*)
  store %struct.Memory* %loadMem_41f9af, %struct.Memory** %MEMORY
  %loadMem1_41f9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %PC.i4
  %377 = add i64 %376, 8
  %378 = load i64, i64* %PC.i4
  %379 = add i64 %378, 5
  %380 = load i64, i64* %PC.i4
  %381 = add i64 %380, 5
  store i64 %381, i64* %PC.i4
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %379, i64* %385
  store i64 %384, i64* %382, align 8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %377, i64* %386, align 8
  store %struct.Memory* %loadMem1_41f9b8, %struct.Memory** %MEMORY
  %loadMem2_41f9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f9b8 = load i64, i64* %3
  %call2_41f9b8 = call %struct.Memory* @sub_41f9c0.DefineThresholdMB(%struct.State* %0, i64 %loadPC_41f9b8, %struct.Memory* %loadMem2_41f9b8)
  store %struct.Memory* %call2_41f9b8, %struct.Memory** %MEMORY
  %loadMem_41f9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %PC.i2
  %394 = add i64 %393, 1
  store i64 %394, i64* %PC.i2
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = add i64 %396, 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398
  store i64 %399, i64* %RBP.i3, align 8
  store i64 %397, i64* %395, align 8
  store %struct.Memory* %loadMem_41f9bd, %struct.Memory** %MEMORY
  %loadMem_41f9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %PC.i1
  %404 = add i64 %403, 1
  store i64 %404, i64* %PC.i1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = inttoptr i64 %407 to i64*
  %409 = load i64, i64* %408
  store i64 %409, i64* %405, align 8
  %410 = add i64 %407, 8
  store i64 %410, i64* %406, align 8
  store %struct.Memory* %loadMem_41f9be, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41f9be
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

define %struct.Memory* @routine_movss_0x9df14__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x9df14__rip__type* @G_0x9df14__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9df10__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x9df10__rip__type* @G_0x9df10__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9df0c__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9df0c__rip__type* @G_0x9df0c__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9df08__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9df08__rip__type* @G_0x9df08__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9df04__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9df04__rip__type* @G_0x9df04__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9df00__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9df00__rip__type* @G_0x9df00__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9defc__rip____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9defc__rip__type* @G_0x9defc__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9def8__rip____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9def8__rip__type* @G_0x9def8__rip_ to i64)
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

define %struct.Memory* @routine_movss_0x9def3__rip____xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9def3__rip__type* @G_0x9def3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 9
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

define %struct.Memory* @routine_movss_0x9deee__rip____xmm9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 9
  %YMM9 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM9 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x9deee__rip__type* @G_0x9deee__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 9
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

define %struct.Memory* @routine_movss__xmm9__0x724304(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM9 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x724304_type* @G_0x724304 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm9__0x724308(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM9 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x724308_type* @G_0x724308 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm9__0x72430c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM9 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x72430c_type* @G_0x72430c to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm8__0x724310(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM8 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x724310_type* @G_0x724310 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm7__0x724314(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM7 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x724314_type* @G_0x724314 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm7__0x724318(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM7 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x724318_type* @G_0x724318 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm6__0x72431c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM6 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x72431c_type* @G_0x72431c to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm5__0x6f8ee4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f8ee4_type* @G_0x6f8ee4 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm4__0x6f8ee8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f8ee8_type* @G_0x6f8ee8 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm4__0x6f8eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f8eec_type* @G_0x6f8eec to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm3__0x6f8ef0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f8ef0_type* @G_0x6f8ef0 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__0x6f8ef4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f8ef4_type* @G_0x6f8ef4 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x6f8ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f8ef8_type* @G_0x6f8ef8 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x6f8efc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0x6f8efc_type* @G_0x6f8efc to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.DefineThresholdMB(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
