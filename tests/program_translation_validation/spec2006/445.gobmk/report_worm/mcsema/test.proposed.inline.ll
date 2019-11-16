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
%G__0x58332f_type = type <{ [8 x i8] }>
%G__0x583348_type = type <{ [8 x i8] }>
%G__0x58335a_type = type <{ [8 x i8] }>
%G__0x583360_type = type <{ [8 x i8] }>
%G__0x583366_type = type <{ [8 x i8] }>
%G__0x58339c_type = type <{ [8 x i8] }>
%G__0x5833d6_type = type <{ [8 x i8] }>
%G__0x5833e8_type = type <{ [8 x i8] }>
%G__0x5833f9_type = type <{ [8 x i8] }>
%G__0x583402_type = type <{ [8 x i8] }>
%G__0x583405_type = type <{ [8 x i8] }>
%G__0x583418_type = type <{ [8 x i8] }>
%G__0x58342a_type = type <{ [8 x i8] }>
%G__0x583443_type = type <{ [8 x i8] }>
%G__0x58345b_type = type <{ [8 x i8] }>
%G__0x583475_type = type <{ [8 x i8] }>
%G__0x58348e_type = type <{ [8 x i8] }>
%G__0x58349c_type = type <{ [8 x i8] }>
%G__0x5834b9_type = type <{ [8 x i8] }>
%G__0x5834c5_type = type <{ [8 x i8] }>
%G__0x5834d8_type = type <{ [8 x i8] }>
%G__0x5834ea_type = type <{ [8 x i8] }>
%G__0x5834fd_type = type <{ [8 x i8] }>
%G__0x58350f_type = type <{ [8 x i8] }>
%G__0x58352b_type = type <{ [8 x i8] }>
%G__0x583546_type = type <{ [8 x i8] }>
%G__0x583569_type = type <{ [8 x i8] }>
%G__0x58358c_type = type <{ [8 x i8] }>
%G__0x588988_type = type <{ [8 x i8] }>
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
@G__0x58332f = global %G__0x58332f_type zeroinitializer
@G__0x583348 = global %G__0x583348_type zeroinitializer
@G__0x58335a = global %G__0x58335a_type zeroinitializer
@G__0x583360 = global %G__0x583360_type zeroinitializer
@G__0x583366 = global %G__0x583366_type zeroinitializer
@G__0x58339c = global %G__0x58339c_type zeroinitializer
@G__0x5833d6 = global %G__0x5833d6_type zeroinitializer
@G__0x5833e8 = global %G__0x5833e8_type zeroinitializer
@G__0x5833f9 = global %G__0x5833f9_type zeroinitializer
@G__0x583402 = global %G__0x583402_type zeroinitializer
@G__0x583405 = global %G__0x583405_type zeroinitializer
@G__0x583418 = global %G__0x583418_type zeroinitializer
@G__0x58342a = global %G__0x58342a_type zeroinitializer
@G__0x583443 = global %G__0x583443_type zeroinitializer
@G__0x58345b = global %G__0x58345b_type zeroinitializer
@G__0x583475 = global %G__0x583475_type zeroinitializer
@G__0x58348e = global %G__0x58348e_type zeroinitializer
@G__0x58349c = global %G__0x58349c_type zeroinitializer
@G__0x5834b9 = global %G__0x5834b9_type zeroinitializer
@G__0x5834c5 = global %G__0x5834c5_type zeroinitializer
@G__0x5834d8 = global %G__0x5834d8_type zeroinitializer
@G__0x5834ea = global %G__0x5834ea_type zeroinitializer
@G__0x5834fd = global %G__0x5834fd_type zeroinitializer
@G__0x58350f = global %G__0x58350f_type zeroinitializer
@G__0x58352b = global %G__0x58352b_type zeroinitializer
@G__0x583546 = global %G__0x583546_type zeroinitializer
@G__0x583569 = global %G__0x583569_type zeroinitializer
@G__0x58358c = global %G__0x58358c_type zeroinitializer
@G__0x588988 = global %G__0x588988_type zeroinitializer
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

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452720.result_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @report_worm(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_48acd0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_48acd0, %struct.Memory** %MEMORY
  %loadMem_48acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i974 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i975 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i974
  %27 = load i64, i64* %PC.i973
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i973
  store i64 %26, i64* %RBP.i975, align 8
  store %struct.Memory* %loadMem_48acd1, %struct.Memory** %MEMORY
  %loadMem_48acd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i972 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i972
  %36 = load i64, i64* %PC.i971
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i971
  %38 = sub i64 %35, 192
  store i64 %38, i64* %RSP.i972, align 8
  %39 = icmp ult i64 %35, 192
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
  %49 = xor i64 192, %35
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
  store %struct.Memory* %loadMem_48acd4, %struct.Memory** %MEMORY
  %loadMem_48acdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i970 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i970
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i969
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i969
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_48acdb, %struct.Memory** %MEMORY
  %loadMem_48acde = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 9
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %ESI.i967 = bitcast %union.anon* %88 to i32*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i968 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i968
  %93 = sub i64 %92, 8
  %94 = load i32, i32* %ESI.i967
  %95 = zext i32 %94 to i64
  %96 = load i64, i64* %PC.i966
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC.i966
  %98 = inttoptr i64 %93 to i32*
  store i32 %94, i32* %98
  store %struct.Memory* %loadMem_48acde, %struct.Memory** %MEMORY
  %loadMem_48ace1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RSI.i964 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i965 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i965
  %109 = sub i64 %108, 4
  %110 = load i64, i64* %PC.i963
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC.i963
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 20
  %116 = trunc i64 %115 to i32
  %117 = and i64 %115, 4294967295
  store i64 %117, i64* %RSI.i964, align 8
  %118 = shl i64 %115, 32
  %119 = ashr exact i64 %118, 32
  %120 = icmp ne i64 %119, %115
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %121, i8* %122, align 1
  %123 = and i32 %116, 255
  %124 = call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %127, i8* %128, align 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %129, align 1
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %130, align 1
  %131 = lshr i32 %116, 31
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %132, i8* %133, align 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %121, i8* %134, align 1
  store %struct.Memory* %loadMem_48ace1, %struct.Memory** %MEMORY
  %loadMem_48ace5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 9
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RSI.i962 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %RSI.i962
  %142 = load i64, i64* %PC.i961
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC.i961
  %144 = trunc i64 %141 to i32
  %145 = add i32 21, %144
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RSI.i962, align 8
  %147 = icmp ult i32 %145, %144
  %148 = icmp ult i32 %145, 21
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %150, i8* %151, align 1
  %152 = and i32 %145, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1
  %158 = xor i64 21, %141
  %159 = trunc i64 %158 to i32
  %160 = xor i32 %159, %145
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %163, i8* %164, align 1
  %165 = icmp eq i32 %145, 0
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %166, i8* %167, align 1
  %168 = lshr i32 %145, 31
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %169, i8* %170, align 1
  %171 = lshr i32 %144, 31
  %172 = xor i32 %168, %171
  %173 = add i32 %172, %168
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %175, i8* %176, align 1
  store %struct.Memory* %loadMem_48ace5, %struct.Memory** %MEMORY
  %loadMem_48ace8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 9
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RSI.i959 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i960 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RSI.i959
  %187 = load i64, i64* %RBP.i960
  %188 = sub i64 %187, 8
  %189 = load i64, i64* %PC.i958
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC.i958
  %191 = trunc i64 %186 to i32
  %192 = inttoptr i64 %188 to i32*
  %193 = load i32, i32* %192
  %194 = add i32 %193, %191
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RSI.i959, align 8
  %196 = icmp ult i32 %194, %191
  %197 = icmp ult i32 %194, %193
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %199, i8* %200, align 1
  %201 = and i32 %194, 255
  %202 = call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %205, i8* %206, align 1
  %207 = xor i32 %193, %191
  %208 = xor i32 %207, %194
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %211, i8* %212, align 1
  %213 = icmp eq i32 %194, 0
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %214, i8* %215, align 1
  %216 = lshr i32 %194, 31
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %217, i8* %218, align 1
  %219 = lshr i32 %191, 31
  %220 = lshr i32 %193, 31
  %221 = xor i32 %216, %219
  %222 = xor i32 %216, %220
  %223 = add i32 %221, %222
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %225, i8* %226, align 1
  store %struct.Memory* %loadMem_48ace8, %struct.Memory** %MEMORY
  %loadMem_48aceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %ESI.i956 = bitcast %union.anon* %232 to i32*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RBP.i957
  %237 = sub i64 %236, 12
  %238 = load i32, i32* %ESI.i956
  %239 = zext i32 %238 to i64
  %240 = load i64, i64* %PC.i955
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC.i955
  %242 = inttoptr i64 %237 to i32*
  store i32 %238, i32* %242
  store %struct.Memory* %loadMem_48aceb, %struct.Memory** %MEMORY
  %loadMem_48acee = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RAX.i953 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i954 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i954
  %253 = sub i64 %252, 12
  %254 = load i64, i64* %PC.i952
  %255 = add i64 %254, 4
  store i64 %255, i64* %PC.i952
  %256 = inttoptr i64 %253 to i32*
  %257 = load i32, i32* %256
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RAX.i953, align 8
  store %struct.Memory* %loadMem_48acee, %struct.Memory** %MEMORY
  %loadMem_48acf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 33
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RAX.i950 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RSI.i951 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %RAX.i950
  %269 = add i64 %268, 12099168
  %270 = load i64, i64* %PC.i949
  %271 = add i64 %270, 8
  store i64 %271, i64* %PC.i949
  %272 = inttoptr i64 %269 to i8*
  %273 = load i8, i8* %272
  %274 = zext i8 %273 to i64
  store i64 %274, i64* %RSI.i951, align 8
  store %struct.Memory* %loadMem_48acf2, %struct.Memory** %MEMORY
  %loadMem_48acfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 9
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %ESI.i948 = bitcast %union.anon* %280 to i32*
  %281 = load i32, i32* %ESI.i948
  %282 = zext i32 %281 to i64
  %283 = load i64, i64* %PC.i947
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC.i947
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %285, align 1
  %286 = and i32 %281, 255
  %287 = call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %290, i8* %291, align 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %292, align 1
  %293 = icmp eq i32 %281, 0
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %294, i8* %295, align 1
  %296 = lshr i32 %281, 31
  %297 = trunc i32 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %297, i8* %298, align 1
  %299 = lshr i32 %281, 31
  %300 = xor i32 %296, %299
  %301 = add i32 %300, %299
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %303, i8* %304, align 1
  store %struct.Memory* %loadMem_48acfa, %struct.Memory** %MEMORY
  %loadMem_48acfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 33
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %307 to i64*
  %308 = load i64, i64* %PC.i946
  %309 = add i64 %308, 34
  %310 = load i64, i64* %PC.i946
  %311 = add i64 %310, 6
  %312 = load i64, i64* %PC.i946
  %313 = add i64 %312, 6
  store i64 %313, i64* %PC.i946
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %315 = load i8, i8* %314, align 1
  %316 = icmp eq i8 %315, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %BRANCH_TAKEN, align 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %319 = select i1 %316, i64 %309, i64 %311
  store i64 %319, i64* %318, align 8
  store %struct.Memory* %loadMem_48acfd, %struct.Memory** %MEMORY
  %loadBr_48acfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48acfd = icmp eq i8 %loadBr_48acfd, 1
  br i1 %cmpBr_48acfd, label %block_.L_48ad1f, label %block_48ad03

block_48ad03:                                     ; preds = %entry
  %loadMem_48ad03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 11
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RDI.i945 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %PC.i944
  %327 = add i64 %326, 10
  store i64 %327, i64* %PC.i944
  store i64 ptrtoint (%G__0x58332f_type* @G__0x58332f to i64), i64* %RDI.i945, align 8
  store %struct.Memory* %loadMem_48ad03, %struct.Memory** %MEMORY
  %loadMem_48ad0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i941 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 9
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RSI.i942 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 15
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %RBP.i943 = bitcast %union.anon* %336 to i64*
  %337 = load i64, i64* %RBP.i943
  %338 = sub i64 %337, 12
  %339 = load i64, i64* %PC.i941
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC.i941
  %341 = inttoptr i64 %338 to i32*
  %342 = load i32, i32* %341
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RSI.i942, align 8
  store %struct.Memory* %loadMem_48ad0d, %struct.Memory** %MEMORY
  %loadMem_48ad10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %350 = bitcast %union.anon* %349 to %struct.anon.2*
  %AL.i940 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %350, i32 0, i32 0
  %351 = load i64, i64* %PC.i939
  %352 = add i64 %351, 2
  store i64 %352, i64* %PC.i939
  store i8 0, i8* %AL.i940, align 1
  store %struct.Memory* %loadMem_48ad10, %struct.Memory** %MEMORY
  %loadMem1_48ad12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %PC.i938
  %357 = add i64 %356, -233314
  %358 = load i64, i64* %PC.i938
  %359 = add i64 %358, 5
  %360 = load i64, i64* %PC.i938
  %361 = add i64 %360, 5
  store i64 %361, i64* %PC.i938
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = add i64 %363, -8
  %365 = inttoptr i64 %364 to i64*
  store i64 %359, i64* %365
  store i64 %364, i64* %362, align 8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %357, i64* %366, align 8
  store %struct.Memory* %loadMem1_48ad12, %struct.Memory** %MEMORY
  %loadMem2_48ad12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ad12 = load i64, i64* %3
  %call2_48ad12 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48ad12, %struct.Memory* %loadMem2_48ad12)
  store %struct.Memory* %call2_48ad12, %struct.Memory** %MEMORY
  %loadMem_48ad17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %EAX.i936 = bitcast %union.anon* %372 to i32*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 15
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RBP.i937
  %377 = sub i64 %376, 20
  %378 = load i32, i32* %EAX.i936
  %379 = zext i32 %378 to i64
  %380 = load i64, i64* %PC.i935
  %381 = add i64 %380, 3
  store i64 %381, i64* %PC.i935
  %382 = inttoptr i64 %377 to i32*
  store i32 %378, i32* %382
  store %struct.Memory* %loadMem_48ad17, %struct.Memory** %MEMORY
  %loadMem_48ad1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %PC.i934
  %387 = add i64 %386, 2150
  %388 = load i64, i64* %PC.i934
  %389 = add i64 %388, 5
  store i64 %389, i64* %PC.i934
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %387, i64* %390, align 8
  store %struct.Memory* %loadMem_48ad1a, %struct.Memory** %MEMORY
  br label %block_.L_48b580

block_.L_48ad1f:                                  ; preds = %entry
  %loadMem_48ad1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 11
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RDI.i933 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %PC.i932
  %398 = add i64 %397, 10
  store i64 %398, i64* %PC.i932
  store i64 ptrtoint (%G__0x583348_type* @G__0x583348 to i64), i64* %RDI.i933, align 8
  store %struct.Memory* %loadMem_48ad1f, %struct.Memory** %MEMORY
  %loadMem_48ad29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RSI.i930 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 15
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %RBP.i931
  %409 = sub i64 %408, 12
  %410 = load i64, i64* %PC.i929
  %411 = add i64 %410, 3
  store i64 %411, i64* %PC.i929
  %412 = inttoptr i64 %409 to i32*
  %413 = load i32, i32* %412
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RSI.i930, align 8
  store %struct.Memory* %loadMem_48ad29, %struct.Memory** %MEMORY
  %loadMem_48ad2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %421 = bitcast %union.anon* %420 to %struct.anon.2*
  %AL.i928 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %421, i32 0, i32 0
  %422 = load i64, i64* %PC.i927
  %423 = add i64 %422, 2
  store i64 %423, i64* %PC.i927
  store i8 0, i8* %AL.i928, align 1
  store %struct.Memory* %loadMem_48ad2c, %struct.Memory** %MEMORY
  %loadMem1_48ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %PC.i926
  %428 = add i64 %427, -233342
  %429 = load i64, i64* %PC.i926
  %430 = add i64 %429, 5
  %431 = load i64, i64* %PC.i926
  %432 = add i64 %431, 5
  store i64 %432, i64* %PC.i926
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = add i64 %434, -8
  %436 = inttoptr i64 %435 to i64*
  store i64 %430, i64* %436
  store i64 %435, i64* %433, align 8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %428, i64* %437, align 8
  store %struct.Memory* %loadMem1_48ad2e, %struct.Memory** %MEMORY
  %loadMem2_48ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ad2e = load i64, i64* %3
  %call2_48ad2e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48ad2e, %struct.Memory* %loadMem2_48ad2e)
  store %struct.Memory* %call2_48ad2e, %struct.Memory** %MEMORY
  %loadMem_48ad33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 11
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RDI.i925 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %PC.i924
  %445 = add i64 %444, 10
  store i64 %445, i64* %PC.i924
  store i64 ptrtoint (%G__0x583366_type* @G__0x583366 to i64), i64* %RDI.i925, align 8
  store %struct.Memory* %loadMem_48ad33, %struct.Memory** %MEMORY
  %loadMem_48ad3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 5
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %RCX.i923 = bitcast %union.anon* %451 to i64*
  %452 = load i64, i64* %PC.i922
  %453 = add i64 %452, 10
  store i64 %453, i64* %PC.i922
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i923, align 8
  store %struct.Memory* %loadMem_48ad3d, %struct.Memory** %MEMORY
  %loadMem_48ad47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 7
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RDX.i921 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %PC.i920
  %461 = add i64 %460, 10
  store i64 %461, i64* %PC.i920
  store i64 ptrtoint (%G__0x583360_type* @G__0x583360 to i64), i64* %RDX.i921, align 8
  store %struct.Memory* %loadMem_48ad47, %struct.Memory** %MEMORY
  %loadMem_48ad51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 17
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %R8.i919 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %PC.i918
  %469 = add i64 %468, 10
  store i64 %469, i64* %PC.i918
  store i64 ptrtoint (%G__0x58335a_type* @G__0x58335a to i64), i64* %R8.i919, align 8
  store %struct.Memory* %loadMem_48ad51, %struct.Memory** %MEMORY
  %loadMem_48ad5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 15
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 19
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %R9.i917 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RBP.i916
  %480 = sub i64 %479, 12
  %481 = load i64, i64* %PC.i915
  %482 = add i64 %481, 4
  store i64 %482, i64* %PC.i915
  %483 = inttoptr i64 %480 to i32*
  %484 = load i32, i32* %483
  %485 = sext i32 %484 to i64
  store i64 %485, i64* %R9.i917, align 8
  store %struct.Memory* %loadMem_48ad5b, %struct.Memory** %MEMORY
  %loadMem_48ad5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 19
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %R9.i914 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %R9.i914
  %493 = load i64, i64* %PC.i913
  %494 = add i64 %493, 7
  store i64 %494, i64* %PC.i913
  %495 = sext i64 %492 to i128
  %496 = and i128 %495, -18446744073709551616
  %497 = zext i64 %492 to i128
  %498 = or i128 %496, %497
  %499 = mul i128 380, %498
  %500 = trunc i128 %499 to i64
  store i64 %500, i64* %R9.i914, align 8
  %501 = sext i64 %500 to i128
  %502 = icmp ne i128 %501, %499
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %503, i8* %504, align 1
  %505 = trunc i128 %499 to i32
  %506 = and i32 %505, 255
  %507 = call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %510, i8* %511, align 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %512, align 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %513, align 1
  %514 = lshr i64 %500, 63
  %515 = trunc i64 %514 to i8
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %515, i8* %516, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %503, i8* %517, align 1
  store %struct.Memory* %loadMem_48ad5f, %struct.Memory** %MEMORY
  %loadMem_48ad66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 33
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 5
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RCX.i911 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 21
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %R10.i912 = bitcast %union.anon* %526 to i64*
  %527 = load i64, i64* %RCX.i911
  %528 = load i64, i64* %PC.i910
  %529 = add i64 %528, 3
  store i64 %529, i64* %PC.i910
  store i64 %527, i64* %R10.i912, align 8
  store %struct.Memory* %loadMem_48ad66, %struct.Memory** %MEMORY
  %loadMem_48ad69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 19
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %R9.i908 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 21
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %R10.i909 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %R10.i909
  %540 = load i64, i64* %R9.i908
  %541 = load i64, i64* %PC.i907
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC.i907
  %543 = add i64 %540, %539
  store i64 %543, i64* %R10.i909, align 8
  %544 = icmp ult i64 %543, %539
  %545 = icmp ult i64 %543, %540
  %546 = or i1 %544, %545
  %547 = zext i1 %546 to i8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %547, i8* %548, align 1
  %549 = trunc i64 %543 to i32
  %550 = and i32 %549, 255
  %551 = call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %554, i8* %555, align 1
  %556 = xor i64 %540, %539
  %557 = xor i64 %556, %543
  %558 = lshr i64 %557, 4
  %559 = trunc i64 %558 to i8
  %560 = and i8 %559, 1
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %560, i8* %561, align 1
  %562 = icmp eq i64 %543, 0
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %563, i8* %564, align 1
  %565 = lshr i64 %543, 63
  %566 = trunc i64 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %566, i8* %567, align 1
  %568 = lshr i64 %539, 63
  %569 = lshr i64 %540, 63
  %570 = xor i64 %565, %568
  %571 = xor i64 %565, %569
  %572 = add i64 %570, %571
  %573 = icmp eq i64 %572, 2
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %574, i8* %575, align 1
  store %struct.Memory* %loadMem_48ad69, %struct.Memory** %MEMORY
  %loadMem_48ad6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 21
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %R10.i = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %R10.i
  %583 = load i64, i64* %PC.i906
  %584 = add i64 %583, 4
  store i64 %584, i64* %PC.i906
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585
  %587 = sub i32 %586, 1
  %588 = icmp ult i32 %586, 1
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %589, i8* %590, align 1
  %591 = and i32 %587, 255
  %592 = call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %595, i8* %596, align 1
  %597 = xor i32 %586, 1
  %598 = xor i32 %597, %587
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %601, i8* %602, align 1
  %603 = icmp eq i32 %587, 0
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %604, i8* %605, align 1
  %606 = lshr i32 %587, 31
  %607 = trunc i32 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %607, i8* %608, align 1
  %609 = lshr i32 %586, 31
  %610 = xor i32 %606, %609
  %611 = add i32 %610, %609
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %614, align 1
  store %struct.Memory* %loadMem_48ad6c, %struct.Memory** %MEMORY
  %loadMem_48ad70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RDX.i904 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 17
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %R8.i905 = bitcast %union.anon* %623 to i64*
  %624 = load i64, i64* %R8.i905
  %625 = load i64, i64* %PC.i903
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC.i903
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %628 = load i8, i8* %627, align 1
  %629 = icmp ne i8 %628, 0
  %630 = load i64, i64* %RDX.i904, align 8
  %631 = select i1 %629, i64 %624, i64 %630
  store i64 %631, i64* %RDX.i904, align 8
  store %struct.Memory* %loadMem_48ad70, %struct.Memory** %MEMORY
  %loadMem_48ad74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i900 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 17
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %R8.i902 = bitcast %union.anon* %640 to i64*
  %641 = load i64, i64* %RBP.i901
  %642 = sub i64 %641, 12
  %643 = load i64, i64* %PC.i900
  %644 = add i64 %643, 4
  store i64 %644, i64* %PC.i900
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645
  %647 = sext i32 %646 to i64
  store i64 %647, i64* %R8.i902, align 8
  store %struct.Memory* %loadMem_48ad74, %struct.Memory** %MEMORY
  %loadMem_48ad78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 17
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %R8.i899 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %R8.i899
  %655 = load i64, i64* %PC.i898
  %656 = add i64 %655, 7
  store i64 %656, i64* %PC.i898
  %657 = sext i64 %654 to i128
  %658 = and i128 %657, -18446744073709551616
  %659 = zext i64 %654 to i128
  %660 = or i128 %658, %659
  %661 = mul i128 380, %660
  %662 = trunc i128 %661 to i64
  store i64 %662, i64* %R8.i899, align 8
  %663 = sext i64 %662 to i128
  %664 = icmp ne i128 %663, %661
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %665, i8* %666, align 1
  %667 = trunc i128 %661 to i32
  %668 = and i32 %667, 255
  %669 = call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %672, i8* %673, align 1
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %674, align 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %675, align 1
  %676 = lshr i64 %662, 63
  %677 = trunc i64 %676 to i8
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %677, i8* %678, align 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %665, i8* %679, align 1
  store %struct.Memory* %loadMem_48ad78, %struct.Memory** %MEMORY
  %loadMem_48ad7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 33
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 5
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RCX.i896 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 19
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %R9.i897 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %RCX.i896
  %690 = load i64, i64* %PC.i895
  %691 = add i64 %690, 3
  store i64 %691, i64* %PC.i895
  store i64 %689, i64* %R9.i897, align 8
  store %struct.Memory* %loadMem_48ad7f, %struct.Memory** %MEMORY
  %loadMem_48ad82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 33
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %694 to i64*
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 17
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %R8.i893 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 19
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %R9.i894 = bitcast %union.anon* %700 to i64*
  %701 = load i64, i64* %R9.i894
  %702 = load i64, i64* %R8.i893
  %703 = load i64, i64* %PC.i892
  %704 = add i64 %703, 3
  store i64 %704, i64* %PC.i892
  %705 = add i64 %702, %701
  store i64 %705, i64* %R9.i894, align 8
  %706 = icmp ult i64 %705, %701
  %707 = icmp ult i64 %705, %702
  %708 = or i1 %706, %707
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %709, i8* %710, align 1
  %711 = trunc i64 %705 to i32
  %712 = and i32 %711, 255
  %713 = call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %716, i8* %717, align 1
  %718 = xor i64 %702, %701
  %719 = xor i64 %718, %705
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %722, i8* %723, align 1
  %724 = icmp eq i64 %705, 0
  %725 = zext i1 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %725, i8* %726, align 1
  %727 = lshr i64 %705, 63
  %728 = trunc i64 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %728, i8* %729, align 1
  %730 = lshr i64 %701, 63
  %731 = lshr i64 %702, 63
  %732 = xor i64 %727, %730
  %733 = xor i64 %727, %731
  %734 = add i64 %732, %733
  %735 = icmp eq i64 %734, 2
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %736, i8* %737, align 1
  store %struct.Memory* %loadMem_48ad82, %struct.Memory** %MEMORY
  %loadMem_48ad85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 9
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RSI.i890 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 19
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %R9.i891 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %R9.i891
  %748 = add i64 %747, 12
  %749 = load i64, i64* %PC.i889
  %750 = add i64 %749, 4
  store i64 %750, i64* %PC.i889
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RSI.i890, align 8
  store %struct.Memory* %loadMem_48ad85, %struct.Memory** %MEMORY
  %loadMem_48ad89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 15
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 17
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %R8.i888 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RBP.i887
  %764 = sub i64 %763, 12
  %765 = load i64, i64* %PC.i886
  %766 = add i64 %765, 4
  store i64 %766, i64* %PC.i886
  %767 = inttoptr i64 %764 to i32*
  %768 = load i32, i32* %767
  %769 = sext i32 %768 to i64
  store i64 %769, i64* %R8.i888, align 8
  store %struct.Memory* %loadMem_48ad89, %struct.Memory** %MEMORY
  %loadMem_48ad8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 17
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %R8.i885 = bitcast %union.anon* %775 to i64*
  %776 = load i64, i64* %R8.i885
  %777 = load i64, i64* %PC.i884
  %778 = add i64 %777, 7
  store i64 %778, i64* %PC.i884
  %779 = sext i64 %776 to i128
  %780 = and i128 %779, -18446744073709551616
  %781 = zext i64 %776 to i128
  %782 = or i128 %780, %781
  %783 = mul i128 380, %782
  %784 = trunc i128 %783 to i64
  store i64 %784, i64* %R8.i885, align 8
  %785 = sext i64 %784 to i128
  %786 = icmp ne i128 %785, %783
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %787, i8* %788, align 1
  %789 = trunc i128 %783 to i32
  %790 = and i32 %789, 255
  %791 = call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %794, i8* %795, align 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %796, align 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %797, align 1
  %798 = lshr i64 %784, 63
  %799 = trunc i64 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %799, i8* %800, align 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %787, i8* %801, align 1
  store %struct.Memory* %loadMem_48ad8d, %struct.Memory** %MEMORY
  %loadMem_48ad94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 5
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 19
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %R9.i883 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RCX.i882
  %812 = load i64, i64* %PC.i881
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC.i881
  store i64 %811, i64* %R9.i883, align 8
  store %struct.Memory* %loadMem_48ad94, %struct.Memory** %MEMORY
  %loadMem_48ad97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 17
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %R8.i879 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 19
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %R9.i880 = bitcast %union.anon* %822 to i64*
  %823 = load i64, i64* %R9.i880
  %824 = load i64, i64* %R8.i879
  %825 = load i64, i64* %PC.i878
  %826 = add i64 %825, 3
  store i64 %826, i64* %PC.i878
  %827 = add i64 %824, %823
  store i64 %827, i64* %R9.i880, align 8
  %828 = icmp ult i64 %827, %823
  %829 = icmp ult i64 %827, %824
  %830 = or i1 %828, %829
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %831, i8* %832, align 1
  %833 = trunc i64 %827 to i32
  %834 = and i32 %833, 255
  %835 = call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %838, i8* %839, align 1
  %840 = xor i64 %824, %823
  %841 = xor i64 %840, %827
  %842 = lshr i64 %841, 4
  %843 = trunc i64 %842 to i8
  %844 = and i8 %843, 1
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %844, i8* %845, align 1
  %846 = icmp eq i64 %827, 0
  %847 = zext i1 %846 to i8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %847, i8* %848, align 1
  %849 = lshr i64 %827, 63
  %850 = trunc i64 %849 to i8
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %850, i8* %851, align 1
  %852 = lshr i64 %823, 63
  %853 = lshr i64 %824, 63
  %854 = xor i64 %849, %852
  %855 = xor i64 %849, %853
  %856 = add i64 %854, %855
  %857 = icmp eq i64 %856, 2
  %858 = zext i1 %857 to i8
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %858, i8* %859, align 1
  store %struct.Memory* %loadMem_48ad97, %struct.Memory** %MEMORY
  %loadMem_48ad9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 23
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %R11D.i876 = bitcast %union.anon* %865 to i32*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 19
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %R9.i877 = bitcast %union.anon* %868 to i64*
  %869 = bitcast i32* %R11D.i876 to i64*
  %870 = load i64, i64* %R9.i877
  %871 = add i64 %870, 4
  %872 = load i64, i64* %PC.i875
  %873 = add i64 %872, 4
  store i64 %873, i64* %PC.i875
  %874 = inttoptr i64 %871 to i32*
  %875 = load i32, i32* %874
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %869, align 8
  store %struct.Memory* %loadMem_48ad9a, %struct.Memory** %MEMORY
  %loadMem_48ad9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 15
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 17
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %R8.i874 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RBP.i873
  %887 = sub i64 %886, 12
  %888 = load i64, i64* %PC.i872
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i872
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890
  %892 = sext i32 %891 to i64
  store i64 %892, i64* %R8.i874, align 8
  store %struct.Memory* %loadMem_48ad9e, %struct.Memory** %MEMORY
  %loadMem_48ada2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 17
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %R8.i871 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %R8.i871
  %900 = load i64, i64* %PC.i870
  %901 = add i64 %900, 7
  store i64 %901, i64* %PC.i870
  %902 = sext i64 %899 to i128
  %903 = and i128 %902, -18446744073709551616
  %904 = zext i64 %899 to i128
  %905 = or i128 %903, %904
  %906 = mul i128 380, %905
  %907 = trunc i128 %906 to i64
  store i64 %907, i64* %R8.i871, align 8
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
  store %struct.Memory* %loadMem_48ada2, %struct.Memory** %MEMORY
  %loadMem_48ada9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 5
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RCX.i868 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 17
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %R8.i869 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RCX.i868
  %935 = load i64, i64* %R8.i869
  %936 = load i64, i64* %PC.i867
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC.i867
  %938 = add i64 %935, %934
  store i64 %938, i64* %RCX.i868, align 8
  %939 = icmp ult i64 %938, %934
  %940 = icmp ult i64 %938, %935
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1
  %944 = trunc i64 %938 to i32
  %945 = and i32 %944, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1
  %951 = xor i64 %935, %934
  %952 = xor i64 %951, %938
  %953 = lshr i64 %952, 4
  %954 = trunc i64 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1
  %957 = icmp eq i64 %938, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1
  %960 = lshr i64 %938, 63
  %961 = trunc i64 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1
  %963 = lshr i64 %934, 63
  %964 = lshr i64 %935, 63
  %965 = xor i64 %960, %963
  %966 = xor i64 %960, %964
  %967 = add i64 %965, %966
  %968 = icmp eq i64 %967, 2
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %969, i8* %970, align 1
  store %struct.Memory* %loadMem_48ada9, %struct.Memory** %MEMORY
  %loadMem_48adac = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 5
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %977, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %978 to %"class.std::bitset"*
  %979 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %980 = load i64, i64* %RCX.i866
  %981 = add i64 %980, 8
  %982 = load i64, i64* %PC.i865
  %983 = add i64 %982, 5
  store i64 %983, i64* %PC.i865
  %984 = inttoptr i64 %981 to float*
  %985 = load float, float* %984
  %986 = fpext float %985 to double
  %987 = bitcast i8* %979 to double*
  store double %986, double* %987, align 1
  store %struct.Memory* %loadMem_48adac, %struct.Memory** %MEMORY
  %loadMem_48adb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 9
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %ESI.i863 = bitcast %union.anon* %993 to i32*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 15
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %RBP.i864
  %998 = sub i64 %997, 24
  %999 = load i32, i32* %ESI.i863
  %1000 = zext i32 %999 to i64
  %1001 = load i64, i64* %PC.i862
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC.i862
  %1003 = inttoptr i64 %998 to i32*
  store i32 %999, i32* %1003
  store %struct.Memory* %loadMem_48adb1, %struct.Memory** %MEMORY
  %loadMem_48adb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 7
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RDX.i860 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 9
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RSI.i861 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RDX.i860
  %1014 = load i64, i64* %PC.i859
  %1015 = add i64 %1014, 3
  store i64 %1015, i64* %PC.i859
  store i64 %1013, i64* %RSI.i861, align 8
  store %struct.Memory* %loadMem_48adb4, %struct.Memory** %MEMORY
  %loadMem_48adb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 7
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RDX.i857 = bitcast %union.anon* %1021 to i64*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 15
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %1024 to i64*
  %1025 = load i64, i64* %RBP.i858
  %1026 = sub i64 %1025, 24
  %1027 = load i64, i64* %PC.i856
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %PC.i856
  %1029 = inttoptr i64 %1026 to i32*
  %1030 = load i32, i32* %1029
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RDX.i857, align 8
  store %struct.Memory* %loadMem_48adb7, %struct.Memory** %MEMORY
  %loadMem_48adba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 23
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %R11D.i854 = bitcast %union.anon* %1037 to i32*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 5
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RCX.i855 = bitcast %union.anon* %1040 to i64*
  %1041 = load i32, i32* %R11D.i854
  %1042 = zext i32 %1041 to i64
  %1043 = load i64, i64* %PC.i853
  %1044 = add i64 %1043, 3
  store i64 %1044, i64* %PC.i853
  %1045 = and i64 %1042, 4294967295
  store i64 %1045, i64* %RCX.i855, align 8
  store %struct.Memory* %loadMem_48adba, %struct.Memory** %MEMORY
  %loadMem_48adbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %EAX.i851 = bitcast %union.anon* %1051 to i32*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 15
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RBP.i852 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RBP.i852
  %1056 = sub i64 %1055, 28
  %1057 = load i32, i32* %EAX.i851
  %1058 = zext i32 %1057 to i64
  %1059 = load i64, i64* %PC.i850
  %1060 = add i64 %1059, 3
  store i64 %1060, i64* %PC.i850
  %1061 = inttoptr i64 %1056 to i32*
  store i32 %1057, i32* %1061
  store %struct.Memory* %loadMem_48adbd, %struct.Memory** %MEMORY
  %loadMem_48adc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 33
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 1
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %1068 = bitcast %union.anon* %1067 to %struct.anon.2*
  %AL.i849 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1068, i32 0, i32 0
  %1069 = load i64, i64* %PC.i848
  %1070 = add i64 %1069, 2
  store i64 %1070, i64* %PC.i848
  store i8 1, i8* %AL.i849, align 1
  store %struct.Memory* %loadMem_48adc0, %struct.Memory** %MEMORY
  %loadMem1_48adc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %PC.i847
  %1075 = add i64 %1074, -233490
  %1076 = load i64, i64* %PC.i847
  %1077 = add i64 %1076, 5
  %1078 = load i64, i64* %PC.i847
  %1079 = add i64 %1078, 5
  store i64 %1079, i64* %PC.i847
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1081 = load i64, i64* %1080, align 8
  %1082 = add i64 %1081, -8
  %1083 = inttoptr i64 %1082 to i64*
  store i64 %1077, i64* %1083
  store i64 %1082, i64* %1080, align 8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1075, i64* %1084, align 8
  store %struct.Memory* %loadMem1_48adc2, %struct.Memory** %MEMORY
  %loadMem2_48adc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48adc2 = load i64, i64* %3
  %call2_48adc2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48adc2, %struct.Memory* %loadMem2_48adc2)
  store %struct.Memory* %call2_48adc2, %struct.Memory** %MEMORY
  %loadMem_48adc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1087 to i64*
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 11
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %RDI.i846 = bitcast %union.anon* %1090 to i64*
  %1091 = load i64, i64* %PC.i845
  %1092 = add i64 %1091, 10
  store i64 %1092, i64* %PC.i845
  store i64 ptrtoint (%G__0x58339c_type* @G__0x58339c to i64), i64* %RDI.i846, align 8
  store %struct.Memory* %loadMem_48adc7, %struct.Memory** %MEMORY
  %loadMem_48add1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i843 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 9
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RSI.i844 = bitcast %union.anon* %1098 to i64*
  %1099 = load i64, i64* %PC.i843
  %1100 = add i64 %1099, 10
  store i64 %1100, i64* %PC.i843
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RSI.i844, align 8
  store %struct.Memory* %loadMem_48add1, %struct.Memory** %MEMORY
  %loadMem_48addb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 15
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RBP.i841 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 17
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %R8.i842 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %RBP.i841
  %1111 = sub i64 %1110, 12
  %1112 = load i64, i64* %PC.i840
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %PC.i840
  %1114 = inttoptr i64 %1111 to i32*
  %1115 = load i32, i32* %1114
  %1116 = sext i32 %1115 to i64
  store i64 %1116, i64* %R8.i842, align 8
  store %struct.Memory* %loadMem_48addb, %struct.Memory** %MEMORY
  %loadMem_48addf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 17
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %R8.i839 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %R8.i839
  %1124 = load i64, i64* %PC.i838
  %1125 = add i64 %1124, 7
  store i64 %1125, i64* %PC.i838
  %1126 = sext i64 %1123 to i128
  %1127 = and i128 %1126, -18446744073709551616
  %1128 = zext i64 %1123 to i128
  %1129 = or i128 %1127, %1128
  %1130 = mul i128 380, %1129
  %1131 = trunc i128 %1130 to i64
  store i64 %1131, i64* %R8.i839, align 8
  %1132 = sext i64 %1131 to i128
  %1133 = icmp ne i128 %1132, %1130
  %1134 = zext i1 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1134, i8* %1135, align 1
  %1136 = trunc i128 %1130 to i32
  %1137 = and i32 %1136, 255
  %1138 = call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1141, i8* %1142, align 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1143, align 1
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1144, align 1
  %1145 = lshr i64 %1131, 63
  %1146 = trunc i64 %1145 to i8
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1146, i8* %1147, align 1
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1134, i8* %1148, align 1
  store %struct.Memory* %loadMem_48addf, %struct.Memory** %MEMORY
  %loadMem_48ade6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 9
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RSI.i836 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 19
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %R9.i837 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %RSI.i836
  %1159 = load i64, i64* %PC.i835
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC.i835
  store i64 %1158, i64* %R9.i837, align 8
  store %struct.Memory* %loadMem_48ade6, %struct.Memory** %MEMORY
  %loadMem_48ade9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 17
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %R8.i833 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 19
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %R9.i834 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %R9.i834
  %1171 = load i64, i64* %R8.i833
  %1172 = load i64, i64* %PC.i832
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC.i832
  %1174 = add i64 %1171, %1170
  store i64 %1174, i64* %R9.i834, align 8
  %1175 = icmp ult i64 %1174, %1170
  %1176 = icmp ult i64 %1174, %1171
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1178, i8* %1179, align 1
  %1180 = trunc i64 %1174 to i32
  %1181 = and i32 %1180, 255
  %1182 = call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1185, i8* %1186, align 1
  %1187 = xor i64 %1171, %1170
  %1188 = xor i64 %1187, %1174
  %1189 = lshr i64 %1188, 4
  %1190 = trunc i64 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1191, i8* %1192, align 1
  %1193 = icmp eq i64 %1174, 0
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1194, i8* %1195, align 1
  %1196 = lshr i64 %1174, 63
  %1197 = trunc i64 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1197, i8* %1198, align 1
  %1199 = lshr i64 %1170, 63
  %1200 = lshr i64 %1171, 63
  %1201 = xor i64 %1196, %1199
  %1202 = xor i64 %1196, %1200
  %1203 = add i64 %1201, %1202
  %1204 = icmp eq i64 %1203, 2
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1205, i8* %1206, align 1
  store %struct.Memory* %loadMem_48ade9, %struct.Memory** %MEMORY
  %loadMem_48adec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 5
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RCX.i830 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 19
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %R9.i831 = bitcast %union.anon* %1215 to i64*
  %1216 = load i64, i64* %R9.i831
  %1217 = add i64 %1216, 16
  %1218 = load i64, i64* %PC.i829
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %PC.i829
  %1220 = inttoptr i64 %1217 to i32*
  %1221 = load i32, i32* %1220
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RCX.i830, align 8
  store %struct.Memory* %loadMem_48adec, %struct.Memory** %MEMORY
  %loadMem_48adf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 15
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 17
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %R8.i828 = bitcast %union.anon* %1231 to i64*
  %1232 = load i64, i64* %RBP.i827
  %1233 = sub i64 %1232, 12
  %1234 = load i64, i64* %PC.i826
  %1235 = add i64 %1234, 4
  store i64 %1235, i64* %PC.i826
  %1236 = inttoptr i64 %1233 to i32*
  %1237 = load i32, i32* %1236
  %1238 = sext i32 %1237 to i64
  store i64 %1238, i64* %R8.i828, align 8
  store %struct.Memory* %loadMem_48adf0, %struct.Memory** %MEMORY
  %loadMem_48adf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 17
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %R8.i825 = bitcast %union.anon* %1244 to i64*
  %1245 = load i64, i64* %R8.i825
  %1246 = load i64, i64* %PC.i824
  %1247 = add i64 %1246, 7
  store i64 %1247, i64* %PC.i824
  %1248 = sext i64 %1245 to i128
  %1249 = and i128 %1248, -18446744073709551616
  %1250 = zext i64 %1245 to i128
  %1251 = or i128 %1249, %1250
  %1252 = mul i128 380, %1251
  %1253 = trunc i128 %1252 to i64
  store i64 %1253, i64* %R8.i825, align 8
  %1254 = sext i64 %1253 to i128
  %1255 = icmp ne i128 %1254, %1252
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1256, i8* %1257, align 1
  %1258 = trunc i128 %1252 to i32
  %1259 = and i32 %1258, 255
  %1260 = call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1263, i8* %1264, align 1
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1265, align 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1266, align 1
  %1267 = lshr i64 %1253, 63
  %1268 = trunc i64 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1268, i8* %1269, align 1
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1256, i8* %1270, align 1
  store %struct.Memory* %loadMem_48adf4, %struct.Memory** %MEMORY
  %loadMem_48adfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 9
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RSI.i822 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 19
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %R9.i823 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RSI.i822
  %1281 = load i64, i64* %PC.i821
  %1282 = add i64 %1281, 3
  store i64 %1282, i64* %PC.i821
  store i64 %1280, i64* %R9.i823, align 8
  store %struct.Memory* %loadMem_48adfb, %struct.Memory** %MEMORY
  %loadMem_48adfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 17
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %R8.i819 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 19
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %R9.i820 = bitcast %union.anon* %1291 to i64*
  %1292 = load i64, i64* %R9.i820
  %1293 = load i64, i64* %R8.i819
  %1294 = load i64, i64* %PC.i818
  %1295 = add i64 %1294, 3
  store i64 %1295, i64* %PC.i818
  %1296 = add i64 %1293, %1292
  store i64 %1296, i64* %R9.i820, align 8
  %1297 = icmp ult i64 %1296, %1292
  %1298 = icmp ult i64 %1296, %1293
  %1299 = or i1 %1297, %1298
  %1300 = zext i1 %1299 to i8
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1300, i8* %1301, align 1
  %1302 = trunc i64 %1296 to i32
  %1303 = and i32 %1302, 255
  %1304 = call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1307, i8* %1308, align 1
  %1309 = xor i64 %1293, %1292
  %1310 = xor i64 %1309, %1296
  %1311 = lshr i64 %1310, 4
  %1312 = trunc i64 %1311 to i8
  %1313 = and i8 %1312, 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1313, i8* %1314, align 1
  %1315 = icmp eq i64 %1296, 0
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1316, i8* %1317, align 1
  %1318 = lshr i64 %1296, 63
  %1319 = trunc i64 %1318 to i8
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1319, i8* %1320, align 1
  %1321 = lshr i64 %1292, 63
  %1322 = lshr i64 %1293, 63
  %1323 = xor i64 %1318, %1321
  %1324 = xor i64 %1318, %1322
  %1325 = add i64 %1323, %1324
  %1326 = icmp eq i64 %1325, 2
  %1327 = zext i1 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1327, i8* %1328, align 1
  store %struct.Memory* %loadMem_48adfe, %struct.Memory** %MEMORY
  %loadMem_48ae01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 7
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RDX.i816 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 19
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %R9.i817 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %R9.i817
  %1339 = add i64 %1338, 20
  %1340 = load i64, i64* %PC.i815
  %1341 = add i64 %1340, 4
  store i64 %1341, i64* %PC.i815
  %1342 = inttoptr i64 %1339 to i32*
  %1343 = load i32, i32* %1342
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RDX.i816, align 8
  store %struct.Memory* %loadMem_48ae01, %struct.Memory** %MEMORY
  %loadMem_48ae05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 15
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 17
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %R8.i814 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RBP.i813
  %1355 = sub i64 %1354, 12
  %1356 = load i64, i64* %PC.i812
  %1357 = add i64 %1356, 4
  store i64 %1357, i64* %PC.i812
  %1358 = inttoptr i64 %1355 to i32*
  %1359 = load i32, i32* %1358
  %1360 = sext i32 %1359 to i64
  store i64 %1360, i64* %R8.i814, align 8
  store %struct.Memory* %loadMem_48ae05, %struct.Memory** %MEMORY
  %loadMem_48ae09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 17
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %R8.i811 = bitcast %union.anon* %1366 to i64*
  %1367 = load i64, i64* %R8.i811
  %1368 = load i64, i64* %PC.i810
  %1369 = add i64 %1368, 7
  store i64 %1369, i64* %PC.i810
  %1370 = sext i64 %1367 to i128
  %1371 = and i128 %1370, -18446744073709551616
  %1372 = zext i64 %1367 to i128
  %1373 = or i128 %1371, %1372
  %1374 = mul i128 380, %1373
  %1375 = trunc i128 %1374 to i64
  store i64 %1375, i64* %R8.i811, align 8
  %1376 = sext i64 %1375 to i128
  %1377 = icmp ne i128 %1376, %1374
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1378, i8* %1379, align 1
  %1380 = trunc i128 %1374 to i32
  %1381 = and i32 %1380, 255
  %1382 = call i32 @llvm.ctpop.i32(i32 %1381)
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = xor i8 %1384, 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1385, i8* %1386, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1387, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1388, align 1
  %1389 = lshr i64 %1375, 63
  %1390 = trunc i64 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1390, i8* %1391, align 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1378, i8* %1392, align 1
  store %struct.Memory* %loadMem_48ae09, %struct.Memory** %MEMORY
  %loadMem_48ae10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 33
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 9
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %RSI.i808 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 19
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %R9.i809 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %RSI.i808
  %1403 = load i64, i64* %PC.i807
  %1404 = add i64 %1403, 3
  store i64 %1404, i64* %PC.i807
  store i64 %1402, i64* %R9.i809, align 8
  store %struct.Memory* %loadMem_48ae10, %struct.Memory** %MEMORY
  %loadMem_48ae13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 17
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %R8.i805 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 19
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %R9.i806 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %R9.i806
  %1415 = load i64, i64* %R8.i805
  %1416 = load i64, i64* %PC.i804
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %PC.i804
  %1418 = add i64 %1415, %1414
  store i64 %1418, i64* %R9.i806, align 8
  %1419 = icmp ult i64 %1418, %1414
  %1420 = icmp ult i64 %1418, %1415
  %1421 = or i1 %1419, %1420
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1422, i8* %1423, align 1
  %1424 = trunc i64 %1418 to i32
  %1425 = and i32 %1424, 255
  %1426 = call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1429, i8* %1430, align 1
  %1431 = xor i64 %1415, %1414
  %1432 = xor i64 %1431, %1418
  %1433 = lshr i64 %1432, 4
  %1434 = trunc i64 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1435, i8* %1436, align 1
  %1437 = icmp eq i64 %1418, 0
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1438, i8* %1439, align 1
  %1440 = lshr i64 %1418, 63
  %1441 = trunc i64 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1441, i8* %1442, align 1
  %1443 = lshr i64 %1414, 63
  %1444 = lshr i64 %1415, 63
  %1445 = xor i64 %1440, %1443
  %1446 = xor i64 %1440, %1444
  %1447 = add i64 %1445, %1446
  %1448 = icmp eq i64 %1447, 2
  %1449 = zext i1 %1448 to i8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1449, i8* %1450, align 1
  store %struct.Memory* %loadMem_48ae13, %struct.Memory** %MEMORY
  %loadMem_48ae16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 23
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %R11D.i802 = bitcast %union.anon* %1456 to i32*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 19
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %R9.i803 = bitcast %union.anon* %1459 to i64*
  %1460 = bitcast i32* %R11D.i802 to i64*
  %1461 = load i64, i64* %R9.i803
  %1462 = add i64 %1461, 24
  %1463 = load i64, i64* %PC.i801
  %1464 = add i64 %1463, 4
  store i64 %1464, i64* %PC.i801
  %1465 = inttoptr i64 %1462 to i32*
  %1466 = load i32, i32* %1465
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %1460, align 8
  store %struct.Memory* %loadMem_48ae16, %struct.Memory** %MEMORY
  %loadMem_48ae1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 33
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 15
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 17
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %R8.i800 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %RBP.i799
  %1478 = sub i64 %1477, 12
  %1479 = load i64, i64* %PC.i798
  %1480 = add i64 %1479, 4
  store i64 %1480, i64* %PC.i798
  %1481 = inttoptr i64 %1478 to i32*
  %1482 = load i32, i32* %1481
  %1483 = sext i32 %1482 to i64
  store i64 %1483, i64* %R8.i800, align 8
  store %struct.Memory* %loadMem_48ae1a, %struct.Memory** %MEMORY
  %loadMem_48ae1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 17
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %R8.i797 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %R8.i797
  %1491 = load i64, i64* %PC.i796
  %1492 = add i64 %1491, 7
  store i64 %1492, i64* %PC.i796
  %1493 = sext i64 %1490 to i128
  %1494 = and i128 %1493, -18446744073709551616
  %1495 = zext i64 %1490 to i128
  %1496 = or i128 %1494, %1495
  %1497 = mul i128 380, %1496
  %1498 = trunc i128 %1497 to i64
  store i64 %1498, i64* %R8.i797, align 8
  %1499 = sext i64 %1498 to i128
  %1500 = icmp ne i128 %1499, %1497
  %1501 = zext i1 %1500 to i8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1501, i8* %1502, align 1
  %1503 = trunc i128 %1497 to i32
  %1504 = and i32 %1503, 255
  %1505 = call i32 @llvm.ctpop.i32(i32 %1504)
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  %1508 = xor i8 %1507, 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1508, i8* %1509, align 1
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1510, align 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1511, align 1
  %1512 = lshr i64 %1498, 63
  %1513 = trunc i64 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1513, i8* %1514, align 1
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1501, i8* %1515, align 1
  store %struct.Memory* %loadMem_48ae1e, %struct.Memory** %MEMORY
  %loadMem_48ae25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 33
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 9
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RSI.i794 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 17
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %R8.i795 = bitcast %union.anon* %1524 to i64*
  %1525 = load i64, i64* %RSI.i794
  %1526 = load i64, i64* %R8.i795
  %1527 = load i64, i64* %PC.i793
  %1528 = add i64 %1527, 3
  store i64 %1528, i64* %PC.i793
  %1529 = add i64 %1526, %1525
  store i64 %1529, i64* %RSI.i794, align 8
  %1530 = icmp ult i64 %1529, %1525
  %1531 = icmp ult i64 %1529, %1526
  %1532 = or i1 %1530, %1531
  %1533 = zext i1 %1532 to i8
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1533, i8* %1534, align 1
  %1535 = trunc i64 %1529 to i32
  %1536 = and i32 %1535, 255
  %1537 = call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1540, i8* %1541, align 1
  %1542 = xor i64 %1526, %1525
  %1543 = xor i64 %1542, %1529
  %1544 = lshr i64 %1543, 4
  %1545 = trunc i64 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1546, i8* %1547, align 1
  %1548 = icmp eq i64 %1529, 0
  %1549 = zext i1 %1548 to i8
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1549, i8* %1550, align 1
  %1551 = lshr i64 %1529, 63
  %1552 = trunc i64 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1552, i8* %1553, align 1
  %1554 = lshr i64 %1525, 63
  %1555 = lshr i64 %1526, 63
  %1556 = xor i64 %1551, %1554
  %1557 = xor i64 %1551, %1555
  %1558 = add i64 %1556, %1557
  %1559 = icmp eq i64 %1558, 2
  %1560 = zext i1 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1560, i8* %1561, align 1
  store %struct.Memory* %loadMem_48ae25, %struct.Memory** %MEMORY
  %loadMem_48ae28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 17
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %1567 to i32*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 9
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RSI.i792 = bitcast %union.anon* %1570 to i64*
  %1571 = bitcast i32* %R8D.i to i64*
  %1572 = load i64, i64* %RSI.i792
  %1573 = add i64 %1572, 28
  %1574 = load i64, i64* %PC.i791
  %1575 = add i64 %1574, 4
  store i64 %1575, i64* %PC.i791
  %1576 = inttoptr i64 %1573 to i32*
  %1577 = load i32, i32* %1576
  %1578 = zext i32 %1577 to i64
  store i64 %1578, i64* %1571, align 8
  store %struct.Memory* %loadMem_48ae28, %struct.Memory** %MEMORY
  %loadMem_48ae2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 33
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1581 to i64*
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 5
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1584 to i32*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 9
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RSI.i790 = bitcast %union.anon* %1587 to i64*
  %1588 = load i32, i32* %ECX.i
  %1589 = zext i32 %1588 to i64
  %1590 = load i64, i64* %PC.i789
  %1591 = add i64 %1590, 2
  store i64 %1591, i64* %PC.i789
  %1592 = and i64 %1589, 4294967295
  store i64 %1592, i64* %RSI.i790, align 8
  store %struct.Memory* %loadMem_48ae2c, %struct.Memory** %MEMORY
  %loadMem_48ae2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 33
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 23
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %1598 to i32*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 5
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %RCX.i788 = bitcast %union.anon* %1601 to i64*
  %1602 = load i32, i32* %R11D.i
  %1603 = zext i32 %1602 to i64
  %1604 = load i64, i64* %PC.i787
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %PC.i787
  %1606 = and i64 %1603, 4294967295
  store i64 %1606, i64* %RCX.i788, align 8
  store %struct.Memory* %loadMem_48ae2e, %struct.Memory** %MEMORY
  %loadMem_48ae31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 1
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %EAX.i785 = bitcast %union.anon* %1612 to i32*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 15
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %1615 to i64*
  %1616 = load i64, i64* %RBP.i786
  %1617 = sub i64 %1616, 32
  %1618 = load i32, i32* %EAX.i785
  %1619 = zext i32 %1618 to i64
  %1620 = load i64, i64* %PC.i784
  %1621 = add i64 %1620, 3
  store i64 %1621, i64* %PC.i784
  %1622 = inttoptr i64 %1617 to i32*
  store i32 %1618, i32* %1622
  store %struct.Memory* %loadMem_48ae31, %struct.Memory** %MEMORY
  %loadMem_48ae34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 1
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %1629 = bitcast %union.anon* %1628 to %struct.anon.2*
  %AL.i783 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1629, i32 0, i32 0
  %1630 = load i64, i64* %PC.i782
  %1631 = add i64 %1630, 2
  store i64 %1631, i64* %PC.i782
  store i8 0, i8* %AL.i783, align 1
  store %struct.Memory* %loadMem_48ae34, %struct.Memory** %MEMORY
  %loadMem1_48ae36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1634 to i64*
  %1635 = load i64, i64* %PC.i781
  %1636 = add i64 %1635, -233606
  %1637 = load i64, i64* %PC.i781
  %1638 = add i64 %1637, 5
  %1639 = load i64, i64* %PC.i781
  %1640 = add i64 %1639, 5
  store i64 %1640, i64* %PC.i781
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1642 = load i64, i64* %1641, align 8
  %1643 = add i64 %1642, -8
  %1644 = inttoptr i64 %1643 to i64*
  store i64 %1638, i64* %1644
  store i64 %1643, i64* %1641, align 8
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1636, i64* %1645, align 8
  store %struct.Memory* %loadMem1_48ae36, %struct.Memory** %MEMORY
  %loadMem2_48ae36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ae36 = load i64, i64* %3
  %call2_48ae36 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48ae36, %struct.Memory* %loadMem2_48ae36)
  store %struct.Memory* %call2_48ae36, %struct.Memory** %MEMORY
  %loadMem_48ae3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 11
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RDI.i780 = bitcast %union.anon* %1651 to i64*
  %1652 = load i64, i64* %PC.i779
  %1653 = add i64 %1652, 10
  store i64 %1653, i64* %PC.i779
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RDI.i780, align 8
  store %struct.Memory* %loadMem_48ae3b, %struct.Memory** %MEMORY
  %loadMem_48ae45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 15
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 19
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %R9.i778 = bitcast %union.anon* %1662 to i64*
  %1663 = load i64, i64* %RBP.i777
  %1664 = sub i64 %1663, 12
  %1665 = load i64, i64* %PC.i776
  %1666 = add i64 %1665, 4
  store i64 %1666, i64* %PC.i776
  %1667 = inttoptr i64 %1664 to i32*
  %1668 = load i32, i32* %1667
  %1669 = sext i32 %1668 to i64
  store i64 %1669, i64* %R9.i778, align 8
  store %struct.Memory* %loadMem_48ae45, %struct.Memory** %MEMORY
  %loadMem_48ae49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 33
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1672 to i64*
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 19
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %R9.i775 = bitcast %union.anon* %1675 to i64*
  %1676 = load i64, i64* %R9.i775
  %1677 = load i64, i64* %PC.i774
  %1678 = add i64 %1677, 7
  store i64 %1678, i64* %PC.i774
  %1679 = sext i64 %1676 to i128
  %1680 = and i128 %1679, -18446744073709551616
  %1681 = zext i64 %1676 to i128
  %1682 = or i128 %1680, %1681
  %1683 = mul i128 380, %1682
  %1684 = trunc i128 %1683 to i64
  store i64 %1684, i64* %R9.i775, align 8
  %1685 = sext i64 %1684 to i128
  %1686 = icmp ne i128 %1685, %1683
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1687, i8* %1688, align 1
  %1689 = trunc i128 %1683 to i32
  %1690 = and i32 %1689, 255
  %1691 = call i32 @llvm.ctpop.i32(i32 %1690)
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  %1694 = xor i8 %1693, 1
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1694, i8* %1695, align 1
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1696, align 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1697, align 1
  %1698 = lshr i64 %1684, 63
  %1699 = trunc i64 %1698 to i8
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1699, i8* %1700, align 1
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1687, i8* %1701, align 1
  store %struct.Memory* %loadMem_48ae49, %struct.Memory** %MEMORY
  %loadMem_48ae50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 11
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RDI.i773 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 19
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %R9.i = bitcast %union.anon* %1710 to i64*
  %1711 = load i64, i64* %RDI.i773
  %1712 = load i64, i64* %R9.i
  %1713 = load i64, i64* %PC.i772
  %1714 = add i64 %1713, 3
  store i64 %1714, i64* %PC.i772
  %1715 = add i64 %1712, %1711
  store i64 %1715, i64* %RDI.i773, align 8
  %1716 = icmp ult i64 %1715, %1711
  %1717 = icmp ult i64 %1715, %1712
  %1718 = or i1 %1716, %1717
  %1719 = zext i1 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1719, i8* %1720, align 1
  %1721 = trunc i64 %1715 to i32
  %1722 = and i32 %1721, 255
  %1723 = call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1726, i8* %1727, align 1
  %1728 = xor i64 %1712, %1711
  %1729 = xor i64 %1728, %1715
  %1730 = lshr i64 %1729, 4
  %1731 = trunc i64 %1730 to i8
  %1732 = and i8 %1731, 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1732, i8* %1733, align 1
  %1734 = icmp eq i64 %1715, 0
  %1735 = zext i1 %1734 to i8
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1735, i8* %1736, align 1
  %1737 = lshr i64 %1715, 63
  %1738 = trunc i64 %1737 to i8
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1738, i8* %1739, align 1
  %1740 = lshr i64 %1711, 63
  %1741 = lshr i64 %1712, 63
  %1742 = xor i64 %1737, %1740
  %1743 = xor i64 %1737, %1741
  %1744 = add i64 %1742, %1743
  %1745 = icmp eq i64 %1744, 2
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1746, i8* %1747, align 1
  store %struct.Memory* %loadMem_48ae50, %struct.Memory** %MEMORY
  %loadMem_48ae53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 11
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RDI.i771 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %RDI.i771
  %1755 = add i64 %1754, 60
  %1756 = load i64, i64* %PC.i770
  %1757 = add i64 %1756, 4
  store i64 %1757, i64* %PC.i770
  %1758 = inttoptr i64 %1755 to i32*
  %1759 = load i32, i32* %1758
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1760, align 1
  %1761 = and i32 %1759, 255
  %1762 = call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1765, i8* %1766, align 1
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1767, align 1
  %1768 = icmp eq i32 %1759, 0
  %1769 = zext i1 %1768 to i8
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1769, i8* %1770, align 1
  %1771 = lshr i32 %1759, 31
  %1772 = trunc i32 %1771 to i8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1772, i8* %1773, align 1
  %1774 = lshr i32 %1759, 31
  %1775 = xor i32 %1771, %1774
  %1776 = add i32 %1775, %1774
  %1777 = icmp eq i32 %1776, 2
  %1778 = zext i1 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1778, i8* %1779, align 1
  store %struct.Memory* %loadMem_48ae53, %struct.Memory** %MEMORY
  %loadMem_48ae57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 33
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 1
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %EAX.i768 = bitcast %union.anon* %1785 to i32*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 15
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %1788 to i64*
  %1789 = load i64, i64* %RBP.i769
  %1790 = sub i64 %1789, 36
  %1791 = load i32, i32* %EAX.i768
  %1792 = zext i32 %1791 to i64
  %1793 = load i64, i64* %PC.i767
  %1794 = add i64 %1793, 3
  store i64 %1794, i64* %PC.i767
  %1795 = inttoptr i64 %1790 to i32*
  store i32 %1791, i32* %1795
  store %struct.Memory* %loadMem_48ae57, %struct.Memory** %MEMORY
  %loadMem_48ae5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 33
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1798 to i64*
  %1799 = load i64, i64* %PC.i766
  %1800 = add i64 %1799, 31
  %1801 = load i64, i64* %PC.i766
  %1802 = add i64 %1801, 6
  %1803 = load i64, i64* %PC.i766
  %1804 = add i64 %1803, 6
  store i64 %1804, i64* %PC.i766
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1806 = load i8, i8* %1805, align 1
  %1807 = icmp eq i8 %1806, 0
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %BRANCH_TAKEN, align 1
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1810 = select i1 %1807, i64 %1800, i64 %1802
  store i64 %1810, i64* %1809, align 8
  store %struct.Memory* %loadMem_48ae5a, %struct.Memory** %MEMORY
  %loadBr_48ae5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ae5a = icmp eq i8 %loadBr_48ae5a, 1
  br i1 %cmpBr_48ae5a, label %block_.L_48ae79, label %block_48ae60

block_48ae60:                                     ; preds = %block_.L_48ad1f
  %loadMem_48ae60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 33
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 11
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %RDI.i765 = bitcast %union.anon* %1816 to i64*
  %1817 = load i64, i64* %PC.i764
  %1818 = add i64 %1817, 10
  store i64 %1818, i64* %PC.i764
  store i64 ptrtoint (%G__0x5833d6_type* @G__0x5833d6 to i64), i64* %RDI.i765, align 8
  store %struct.Memory* %loadMem_48ae60, %struct.Memory** %MEMORY
  %loadMem_48ae6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 1
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %1825 = bitcast %union.anon* %1824 to %struct.anon.2*
  %AL.i763 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1825, i32 0, i32 0
  %1826 = load i64, i64* %PC.i762
  %1827 = add i64 %1826, 2
  store i64 %1827, i64* %PC.i762
  store i8 0, i8* %AL.i763, align 1
  store %struct.Memory* %loadMem_48ae6a, %struct.Memory** %MEMORY
  %loadMem1_48ae6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %PC.i761
  %1832 = add i64 %1831, -233660
  %1833 = load i64, i64* %PC.i761
  %1834 = add i64 %1833, 5
  %1835 = load i64, i64* %PC.i761
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i761
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1838 = load i64, i64* %1837, align 8
  %1839 = add i64 %1838, -8
  %1840 = inttoptr i64 %1839 to i64*
  store i64 %1834, i64* %1840
  store i64 %1839, i64* %1837, align 8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1832, i64* %1841, align 8
  store %struct.Memory* %loadMem1_48ae6c, %struct.Memory** %MEMORY
  %loadMem2_48ae6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ae6c = load i64, i64* %3
  %call2_48ae6c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48ae6c, %struct.Memory* %loadMem2_48ae6c)
  store %struct.Memory* %call2_48ae6c, %struct.Memory** %MEMORY
  %loadMem_48ae71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 33
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 1
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %EAX.i759 = bitcast %union.anon* %1847 to i32*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 15
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RBP.i760 = bitcast %union.anon* %1850 to i64*
  %1851 = load i64, i64* %RBP.i760
  %1852 = sub i64 %1851, 40
  %1853 = load i32, i32* %EAX.i759
  %1854 = zext i32 %1853 to i64
  %1855 = load i64, i64* %PC.i758
  %1856 = add i64 %1855, 3
  store i64 %1856, i64* %PC.i758
  %1857 = inttoptr i64 %1852 to i32*
  store i32 %1853, i32* %1857
  store %struct.Memory* %loadMem_48ae71, %struct.Memory** %MEMORY
  %loadMem_48ae74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 33
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %PC.i757
  %1862 = add i64 %1861, 226
  %1863 = load i64, i64* %PC.i757
  %1864 = add i64 %1863, 5
  store i64 %1864, i64* %PC.i757
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1862, i64* %1865, align 8
  store %struct.Memory* %loadMem_48ae74, %struct.Memory** %MEMORY
  br label %block_.L_48af56

block_.L_48ae79:                                  ; preds = %block_.L_48ad1f
  %loadMem_48ae79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 11
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RDI.i756 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %PC.i755
  %1873 = add i64 %1872, 10
  store i64 %1873, i64* %PC.i755
  store i64 ptrtoint (%G__0x5833e8_type* @G__0x5833e8 to i64), i64* %RDI.i756, align 8
  store %struct.Memory* %loadMem_48ae79, %struct.Memory** %MEMORY
  %loadMem_48ae83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %1880 = bitcast %union.anon* %1879 to %struct.anon.2*
  %AL.i754 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1880, i32 0, i32 0
  %1881 = load i64, i64* %PC.i753
  %1882 = add i64 %1881, 2
  store i64 %1882, i64* %PC.i753
  store i8 0, i8* %AL.i754, align 1
  store %struct.Memory* %loadMem_48ae83, %struct.Memory** %MEMORY
  %loadMem1_48ae85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1885 to i64*
  %1886 = load i64, i64* %PC.i752
  %1887 = add i64 %1886, -233685
  %1888 = load i64, i64* %PC.i752
  %1889 = add i64 %1888, 5
  %1890 = load i64, i64* %PC.i752
  %1891 = add i64 %1890, 5
  store i64 %1891, i64* %PC.i752
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1893 = load i64, i64* %1892, align 8
  %1894 = add i64 %1893, -8
  %1895 = inttoptr i64 %1894 to i64*
  store i64 %1889, i64* %1895
  store i64 %1894, i64* %1892, align 8
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1887, i64* %1896, align 8
  store %struct.Memory* %loadMem1_48ae85, %struct.Memory** %MEMORY
  %loadMem2_48ae85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ae85 = load i64, i64* %3
  %call2_48ae85 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48ae85, %struct.Memory* %loadMem2_48ae85)
  store %struct.Memory* %call2_48ae85, %struct.Memory** %MEMORY
  %loadMem_48ae8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 15
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1902 to i64*
  %1903 = load i64, i64* %RBP.i751
  %1904 = sub i64 %1903, 16
  %1905 = load i64, i64* %PC.i750
  %1906 = add i64 %1905, 7
  store i64 %1906, i64* %PC.i750
  %1907 = inttoptr i64 %1904 to i32*
  store i32 0, i32* %1907
  store %struct.Memory* %loadMem_48ae8a, %struct.Memory** %MEMORY
  %loadMem_48ae91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %EAX.i748 = bitcast %union.anon* %1913 to i32*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 15
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RBP.i749
  %1918 = sub i64 %1917, 44
  %1919 = load i32, i32* %EAX.i748
  %1920 = zext i32 %1919 to i64
  %1921 = load i64, i64* %PC.i747
  %1922 = add i64 %1921, 3
  store i64 %1922, i64* %PC.i747
  %1923 = inttoptr i64 %1918 to i32*
  store i32 %1919, i32* %1923
  store %struct.Memory* %loadMem_48ae91, %struct.Memory** %MEMORY
  br label %block_.L_48ae94

block_.L_48ae94:                                  ; preds = %block_.L_48aed9, %block_.L_48ae79
  %loadMem_48ae94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 1
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %1929 to i64*
  %1930 = load i64, i64* %PC.i745
  %1931 = add i64 %1930, 10
  store i64 %1931, i64* %PC.i745
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_48ae94, %struct.Memory** %MEMORY
  %loadMem_48ae9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 5
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %RCX.i743 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 15
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %1940 to i64*
  %1941 = load i64, i64* %RBP.i744
  %1942 = sub i64 %1941, 12
  %1943 = load i64, i64* %PC.i742
  %1944 = add i64 %1943, 4
  store i64 %1944, i64* %PC.i742
  %1945 = inttoptr i64 %1942 to i32*
  %1946 = load i32, i32* %1945
  %1947 = sext i32 %1946 to i64
  store i64 %1947, i64* %RCX.i743, align 8
  store %struct.Memory* %loadMem_48ae9e, %struct.Memory** %MEMORY
  %loadMem_48aea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 5
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RCX.i741 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RCX.i741
  %1955 = load i64, i64* %PC.i740
  %1956 = add i64 %1955, 7
  store i64 %1956, i64* %PC.i740
  %1957 = sext i64 %1954 to i128
  %1958 = and i128 %1957, -18446744073709551616
  %1959 = zext i64 %1954 to i128
  %1960 = or i128 %1958, %1959
  %1961 = mul i128 380, %1960
  %1962 = trunc i128 %1961 to i64
  store i64 %1962, i64* %RCX.i741, align 8
  %1963 = sext i64 %1962 to i128
  %1964 = icmp ne i128 %1963, %1961
  %1965 = zext i1 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1965, i8* %1966, align 1
  %1967 = trunc i128 %1961 to i32
  %1968 = and i32 %1967, 255
  %1969 = call i32 @llvm.ctpop.i32(i32 %1968)
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1972, i8* %1973, align 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1974, align 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1975, align 1
  %1976 = lshr i64 %1962, 63
  %1977 = trunc i64 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1977, i8* %1978, align 1
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1965, i8* %1979, align 1
  store %struct.Memory* %loadMem_48aea2, %struct.Memory** %MEMORY
  %loadMem_48aea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 1
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 5
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RCX.i739 = bitcast %union.anon* %1988 to i64*
  %1989 = load i64, i64* %RAX.i738
  %1990 = load i64, i64* %RCX.i739
  %1991 = load i64, i64* %PC.i737
  %1992 = add i64 %1991, 3
  store i64 %1992, i64* %PC.i737
  %1993 = add i64 %1990, %1989
  store i64 %1993, i64* %RAX.i738, align 8
  %1994 = icmp ult i64 %1993, %1989
  %1995 = icmp ult i64 %1993, %1990
  %1996 = or i1 %1994, %1995
  %1997 = zext i1 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1997, i8* %1998, align 1
  %1999 = trunc i64 %1993 to i32
  %2000 = and i32 %1999, 255
  %2001 = call i32 @llvm.ctpop.i32(i32 %2000)
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  %2004 = xor i8 %2003, 1
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2004, i8* %2005, align 1
  %2006 = xor i64 %1990, %1989
  %2007 = xor i64 %2006, %1993
  %2008 = lshr i64 %2007, 4
  %2009 = trunc i64 %2008 to i8
  %2010 = and i8 %2009, 1
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2010, i8* %2011, align 1
  %2012 = icmp eq i64 %1993, 0
  %2013 = zext i1 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2013, i8* %2014, align 1
  %2015 = lshr i64 %1993, 63
  %2016 = trunc i64 %2015 to i8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2016, i8* %2017, align 1
  %2018 = lshr i64 %1989, 63
  %2019 = lshr i64 %1990, 63
  %2020 = xor i64 %2015, %2018
  %2021 = xor i64 %2015, %2019
  %2022 = add i64 %2020, %2021
  %2023 = icmp eq i64 %2022, 2
  %2024 = zext i1 %2023 to i8
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2024, i8* %2025, align 1
  store %struct.Memory* %loadMem_48aea9, %struct.Memory** %MEMORY
  %loadMem_48aeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 5
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RCX.i735 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i736
  %2036 = sub i64 %2035, 16
  %2037 = load i64, i64* %PC.i734
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i734
  %2039 = inttoptr i64 %2036 to i32*
  %2040 = load i32, i32* %2039
  %2041 = sext i32 %2040 to i64
  store i64 %2041, i64* %RCX.i735, align 8
  store %struct.Memory* %loadMem_48aeac, %struct.Memory** %MEMORY
  %loadMem_48aeb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 1
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 5
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RCX.i733 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %RAX.i732
  %2052 = load i64, i64* %RCX.i733
  %2053 = mul i64 %2052, 4
  %2054 = add i64 %2051, 60
  %2055 = add i64 %2054, %2053
  %2056 = load i64, i64* %PC.i731
  %2057 = add i64 %2056, 5
  store i64 %2057, i64* %PC.i731
  %2058 = inttoptr i64 %2055 to i32*
  %2059 = load i32, i32* %2058
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2060, align 1
  %2061 = and i32 %2059, 255
  %2062 = call i32 @llvm.ctpop.i32(i32 %2061)
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = xor i8 %2064, 1
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2065, i8* %2066, align 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2067, align 1
  %2068 = icmp eq i32 %2059, 0
  %2069 = zext i1 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2069, i8* %2070, align 1
  %2071 = lshr i32 %2059, 31
  %2072 = trunc i32 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2072, i8* %2073, align 1
  %2074 = lshr i32 %2059, 31
  %2075 = xor i32 %2071, %2074
  %2076 = add i32 %2075, %2074
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2078, i8* %2079, align 1
  store %struct.Memory* %loadMem_48aeb0, %struct.Memory** %MEMORY
  %loadMem_48aeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %PC.i730
  %2084 = add i64 %2083, 141
  %2085 = load i64, i64* %PC.i730
  %2086 = add i64 %2085, 6
  %2087 = load i64, i64* %PC.i730
  %2088 = add i64 %2087, 6
  store i64 %2088, i64* %PC.i730
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2090 = load i8, i8* %2089, align 1
  store i8 %2090, i8* %BRANCH_TAKEN, align 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2092 = icmp ne i8 %2090, 0
  %2093 = select i1 %2092, i64 %2084, i64 %2086
  store i64 %2093, i64* %2091, align 8
  store %struct.Memory* %loadMem_48aeb5, %struct.Memory** %MEMORY
  %loadBr_48aeb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48aeb5 = icmp eq i8 %loadBr_48aeb5, 1
  br i1 %cmpBr_48aeb5, label %block_.L_48af42, label %block_48aebb

block_48aebb:                                     ; preds = %block_.L_48ae94
  %loadMem_48aebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 15
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %2099 to i64*
  %2100 = load i64, i64* %RBP.i729
  %2101 = sub i64 %2100, 16
  %2102 = load i64, i64* %PC.i728
  %2103 = add i64 %2102, 4
  store i64 %2103, i64* %PC.i728
  %2104 = inttoptr i64 %2101 to i32*
  %2105 = load i32, i32* %2104
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2106, align 1
  %2107 = and i32 %2105, 255
  %2108 = call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2111, i8* %2112, align 1
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2113, align 1
  %2114 = icmp eq i32 %2105, 0
  %2115 = zext i1 %2114 to i8
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2115, i8* %2116, align 1
  %2117 = lshr i32 %2105, 31
  %2118 = trunc i32 %2117 to i8
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2118, i8* %2119, align 1
  %2120 = lshr i32 %2105, 31
  %2121 = xor i32 %2117, %2120
  %2122 = add i32 %2121, %2120
  %2123 = icmp eq i32 %2122, 2
  %2124 = zext i1 %2123 to i8
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2124, i8* %2125, align 1
  store %struct.Memory* %loadMem_48aebb, %struct.Memory** %MEMORY
  %loadMem_48aebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %PC.i727
  %2130 = add i64 %2129, 26
  %2131 = load i64, i64* %PC.i727
  %2132 = add i64 %2131, 6
  %2133 = load i64, i64* %PC.i727
  %2134 = add i64 %2133, 6
  store i64 %2134, i64* %PC.i727
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2136 = load i8, i8* %2135, align 1
  %2137 = icmp ne i8 %2136, 0
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2139 = load i8, i8* %2138, align 1
  %2140 = icmp ne i8 %2139, 0
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2142 = load i8, i8* %2141, align 1
  %2143 = icmp ne i8 %2142, 0
  %2144 = xor i1 %2140, %2143
  %2145 = or i1 %2137, %2144
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %BRANCH_TAKEN, align 1
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2148 = select i1 %2145, i64 %2130, i64 %2132
  store i64 %2148, i64* %2147, align 8
  store %struct.Memory* %loadMem_48aebf, %struct.Memory** %MEMORY
  %loadBr_48aebf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48aebf = icmp eq i8 %loadBr_48aebf, 1
  br i1 %cmpBr_48aebf, label %block_.L_48aed9, label %block_48aec5

block_48aec5:                                     ; preds = %block_48aebb
  %loadMem_48aec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 11
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RDI.i726 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %PC.i725
  %2156 = add i64 %2155, 10
  store i64 %2156, i64* %PC.i725
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i726, align 8
  store %struct.Memory* %loadMem_48aec5, %struct.Memory** %MEMORY
  %loadMem_48aecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 1
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %2163 = bitcast %union.anon* %2162 to %struct.anon.2*
  %AL.i724 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2163, i32 0, i32 0
  %2164 = load i64, i64* %PC.i723
  %2165 = add i64 %2164, 2
  store i64 %2165, i64* %PC.i723
  store i8 0, i8* %AL.i724, align 1
  store %struct.Memory* %loadMem_48aecf, %struct.Memory** %MEMORY
  %loadMem1_48aed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 33
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2168 to i64*
  %2169 = load i64, i64* %PC.i722
  %2170 = add i64 %2169, -233761
  %2171 = load i64, i64* %PC.i722
  %2172 = add i64 %2171, 5
  %2173 = load i64, i64* %PC.i722
  %2174 = add i64 %2173, 5
  store i64 %2174, i64* %PC.i722
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2176 = load i64, i64* %2175, align 8
  %2177 = add i64 %2176, -8
  %2178 = inttoptr i64 %2177 to i64*
  store i64 %2172, i64* %2178
  store i64 %2177, i64* %2175, align 8
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2170, i64* %2179, align 8
  store %struct.Memory* %loadMem1_48aed1, %struct.Memory** %MEMORY
  %loadMem2_48aed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48aed1 = load i64, i64* %3
  %call2_48aed1 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48aed1, %struct.Memory* %loadMem2_48aed1)
  store %struct.Memory* %call2_48aed1, %struct.Memory** %MEMORY
  %loadMem_48aed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 1
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %EAX.i720 = bitcast %union.anon* %2185 to i32*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 15
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %2188 to i64*
  %2189 = load i64, i64* %RBP.i721
  %2190 = sub i64 %2189, 48
  %2191 = load i32, i32* %EAX.i720
  %2192 = zext i32 %2191 to i64
  %2193 = load i64, i64* %PC.i719
  %2194 = add i64 %2193, 3
  store i64 %2194, i64* %PC.i719
  %2195 = inttoptr i64 %2190 to i32*
  store i32 %2191, i32* %2195
  store %struct.Memory* %loadMem_48aed6, %struct.Memory** %MEMORY
  br label %block_.L_48aed9

block_.L_48aed9:                                  ; preds = %block_48aec5, %block_48aebb
  %loadMem_48aed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 1
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %2201 to i64*
  %2202 = load i64, i64* %PC.i717
  %2203 = add i64 %2202, 10
  store i64 %2203, i64* %PC.i717
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i718, align 8
  store %struct.Memory* %loadMem_48aed9, %struct.Memory** %MEMORY
  %loadMem_48aee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 5
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 15
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RBP.i716
  %2214 = sub i64 %2213, 12
  %2215 = load i64, i64* %PC.i714
  %2216 = add i64 %2215, 4
  store i64 %2216, i64* %PC.i714
  %2217 = inttoptr i64 %2214 to i32*
  %2218 = load i32, i32* %2217
  %2219 = sext i32 %2218 to i64
  store i64 %2219, i64* %RCX.i715, align 8
  store %struct.Memory* %loadMem_48aee3, %struct.Memory** %MEMORY
  %loadMem_48aee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 5
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RCX.i713
  %2227 = load i64, i64* %PC.i712
  %2228 = add i64 %2227, 7
  store i64 %2228, i64* %PC.i712
  %2229 = sext i64 %2226 to i128
  %2230 = and i128 %2229, -18446744073709551616
  %2231 = zext i64 %2226 to i128
  %2232 = or i128 %2230, %2231
  %2233 = mul i128 380, %2232
  %2234 = trunc i128 %2233 to i64
  store i64 %2234, i64* %RCX.i713, align 8
  %2235 = sext i64 %2234 to i128
  %2236 = icmp ne i128 %2235, %2233
  %2237 = zext i1 %2236 to i8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2237, i8* %2238, align 1
  %2239 = trunc i128 %2233 to i32
  %2240 = and i32 %2239, 255
  %2241 = call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2244, i8* %2245, align 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2246, align 1
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2247, align 1
  %2248 = lshr i64 %2234, 63
  %2249 = trunc i64 %2248 to i8
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2249, i8* %2250, align 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2237, i8* %2251, align 1
  store %struct.Memory* %loadMem_48aee7, %struct.Memory** %MEMORY
  %loadMem_48aeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 7
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RDX.i711 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RAX.i710
  %2262 = load i64, i64* %PC.i709
  %2263 = add i64 %2262, 3
  store i64 %2263, i64* %PC.i709
  store i64 %2261, i64* %RDX.i711, align 8
  store %struct.Memory* %loadMem_48aeee, %struct.Memory** %MEMORY
  %loadMem_48aef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 5
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %RCX.i707 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 7
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RDX.i708 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RDX.i708
  %2274 = load i64, i64* %RCX.i707
  %2275 = load i64, i64* %PC.i706
  %2276 = add i64 %2275, 3
  store i64 %2276, i64* %PC.i706
  %2277 = add i64 %2274, %2273
  store i64 %2277, i64* %RDX.i708, align 8
  %2278 = icmp ult i64 %2277, %2273
  %2279 = icmp ult i64 %2277, %2274
  %2280 = or i1 %2278, %2279
  %2281 = zext i1 %2280 to i8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2281, i8* %2282, align 1
  %2283 = trunc i64 %2277 to i32
  %2284 = and i32 %2283, 255
  %2285 = call i32 @llvm.ctpop.i32(i32 %2284)
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2288, i8* %2289, align 1
  %2290 = xor i64 %2274, %2273
  %2291 = xor i64 %2290, %2277
  %2292 = lshr i64 %2291, 4
  %2293 = trunc i64 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2294, i8* %2295, align 1
  %2296 = icmp eq i64 %2277, 0
  %2297 = zext i1 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2297, i8* %2298, align 1
  %2299 = lshr i64 %2277, 63
  %2300 = trunc i64 %2299 to i8
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2300, i8* %2301, align 1
  %2302 = lshr i64 %2273, 63
  %2303 = lshr i64 %2274, 63
  %2304 = xor i64 %2299, %2302
  %2305 = xor i64 %2299, %2303
  %2306 = add i64 %2304, %2305
  %2307 = icmp eq i64 %2306, 2
  %2308 = zext i1 %2307 to i8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2308, i8* %2309, align 1
  store %struct.Memory* %loadMem_48aef1, %struct.Memory** %MEMORY
  %loadMem_48aef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 5
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 15
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %2318 to i64*
  %2319 = load i64, i64* %RBP.i705
  %2320 = sub i64 %2319, 16
  %2321 = load i64, i64* %PC.i703
  %2322 = add i64 %2321, 4
  store i64 %2322, i64* %PC.i703
  %2323 = inttoptr i64 %2320 to i32*
  %2324 = load i32, i32* %2323
  %2325 = sext i32 %2324 to i64
  store i64 %2325, i64* %RCX.i704, align 8
  store %struct.Memory* %loadMem_48aef4, %struct.Memory** %MEMORY
  %loadMem_48aef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 5
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RCX.i700 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 7
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RDX.i701 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 9
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RSI.i702 = bitcast %union.anon* %2337 to i64*
  %2338 = load i64, i64* %RDX.i701
  %2339 = load i64, i64* %RCX.i700
  %2340 = mul i64 %2339, 4
  %2341 = add i64 %2338, 60
  %2342 = add i64 %2341, %2340
  %2343 = load i64, i64* %PC.i699
  %2344 = add i64 %2343, 4
  store i64 %2344, i64* %PC.i699
  %2345 = inttoptr i64 %2342 to i32*
  %2346 = load i32, i32* %2345
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RSI.i702, align 8
  store %struct.Memory* %loadMem_48aef8, %struct.Memory** %MEMORY
  %loadMem_48aefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 5
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 15
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %2356 to i64*
  %2357 = load i64, i64* %RBP.i698
  %2358 = sub i64 %2357, 12
  %2359 = load i64, i64* %PC.i696
  %2360 = add i64 %2359, 4
  store i64 %2360, i64* %PC.i696
  %2361 = inttoptr i64 %2358 to i32*
  %2362 = load i32, i32* %2361
  %2363 = sext i32 %2362 to i64
  store i64 %2363, i64* %RCX.i697, align 8
  store %struct.Memory* %loadMem_48aefc, %struct.Memory** %MEMORY
  %loadMem_48af00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 5
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %RCX.i695
  %2371 = load i64, i64* %PC.i694
  %2372 = add i64 %2371, 7
  store i64 %2372, i64* %PC.i694
  %2373 = sext i64 %2370 to i128
  %2374 = and i128 %2373, -18446744073709551616
  %2375 = zext i64 %2370 to i128
  %2376 = or i128 %2374, %2375
  %2377 = mul i128 380, %2376
  %2378 = trunc i128 %2377 to i64
  store i64 %2378, i64* %RCX.i695, align 8
  %2379 = sext i64 %2378 to i128
  %2380 = icmp ne i128 %2379, %2377
  %2381 = zext i1 %2380 to i8
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2381, i8* %2382, align 1
  %2383 = trunc i128 %2377 to i32
  %2384 = and i32 %2383, 255
  %2385 = call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2388, i8* %2389, align 1
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2390, align 1
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2391, align 1
  %2392 = lshr i64 %2378, 63
  %2393 = trunc i64 %2392 to i8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2393, i8* %2394, align 1
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2381, i8* %2395, align 1
  store %struct.Memory* %loadMem_48af00, %struct.Memory** %MEMORY
  %loadMem_48af07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 1
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 5
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %2404 to i64*
  %2405 = load i64, i64* %RAX.i692
  %2406 = load i64, i64* %RCX.i693
  %2407 = load i64, i64* %PC.i691
  %2408 = add i64 %2407, 3
  store i64 %2408, i64* %PC.i691
  %2409 = add i64 %2406, %2405
  store i64 %2409, i64* %RAX.i692, align 8
  %2410 = icmp ult i64 %2409, %2405
  %2411 = icmp ult i64 %2409, %2406
  %2412 = or i1 %2410, %2411
  %2413 = zext i1 %2412 to i8
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2413, i8* %2414, align 1
  %2415 = trunc i64 %2409 to i32
  %2416 = and i32 %2415, 255
  %2417 = call i32 @llvm.ctpop.i32(i32 %2416)
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2420, i8* %2421, align 1
  %2422 = xor i64 %2406, %2405
  %2423 = xor i64 %2422, %2409
  %2424 = lshr i64 %2423, 4
  %2425 = trunc i64 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2426, i8* %2427, align 1
  %2428 = icmp eq i64 %2409, 0
  %2429 = zext i1 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2429, i8* %2430, align 1
  %2431 = lshr i64 %2409, 63
  %2432 = trunc i64 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2432, i8* %2433, align 1
  %2434 = lshr i64 %2405, 63
  %2435 = lshr i64 %2406, 63
  %2436 = xor i64 %2431, %2434
  %2437 = xor i64 %2431, %2435
  %2438 = add i64 %2436, %2437
  %2439 = icmp eq i64 %2438, 2
  %2440 = zext i1 %2439 to i8
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2440, i8* %2441, align 1
  store %struct.Memory* %loadMem_48af07, %struct.Memory** %MEMORY
  %loadMem_48af0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 33
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2444 to i64*
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 5
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %RCX.i689 = bitcast %union.anon* %2447 to i64*
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 15
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %2450 to i64*
  %2451 = load i64, i64* %RBP.i690
  %2452 = sub i64 %2451, 16
  %2453 = load i64, i64* %PC.i688
  %2454 = add i64 %2453, 4
  store i64 %2454, i64* %PC.i688
  %2455 = inttoptr i64 %2452 to i32*
  %2456 = load i32, i32* %2455
  %2457 = sext i32 %2456 to i64
  store i64 %2457, i64* %RCX.i689, align 8
  store %struct.Memory* %loadMem_48af0a, %struct.Memory** %MEMORY
  %loadMem_48af0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 33
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2460 to i64*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 1
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2463 to i64*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 5
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %RCX.i686 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 11
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RDI.i687 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RAX.i685
  %2471 = load i64, i64* %RCX.i686
  %2472 = mul i64 %2471, 4
  %2473 = add i64 %2470, 100
  %2474 = add i64 %2473, %2472
  %2475 = load i64, i64* %PC.i684
  %2476 = add i64 %2475, 4
  store i64 %2476, i64* %PC.i684
  %2477 = inttoptr i64 %2474 to i32*
  %2478 = load i32, i32* %2477
  %2479 = zext i32 %2478 to i64
  store i64 %2479, i64* %RDI.i687, align 8
  store %struct.Memory* %loadMem_48af0e, %struct.Memory** %MEMORY
  %loadMem_48af12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 9
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %ESI.i682 = bitcast %union.anon* %2485 to i32*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 15
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %2488 to i64*
  %2489 = load i64, i64* %RBP.i683
  %2490 = sub i64 %2489, 52
  %2491 = load i32, i32* %ESI.i682
  %2492 = zext i32 %2491 to i64
  %2493 = load i64, i64* %PC.i681
  %2494 = add i64 %2493, 3
  store i64 %2494, i64* %PC.i681
  %2495 = inttoptr i64 %2490 to i32*
  store i32 %2491, i32* %2495
  store %struct.Memory* %loadMem_48af12, %struct.Memory** %MEMORY
  %loadMem1_48af15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 33
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %PC.i680
  %2500 = add i64 %2499, -231413
  %2501 = load i64, i64* %PC.i680
  %2502 = add i64 %2501, 5
  %2503 = load i64, i64* %PC.i680
  %2504 = add i64 %2503, 5
  store i64 %2504, i64* %PC.i680
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2506 = load i64, i64* %2505, align 8
  %2507 = add i64 %2506, -8
  %2508 = inttoptr i64 %2507 to i64*
  store i64 %2502, i64* %2508
  store i64 %2507, i64* %2505, align 8
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2500, i64* %2509, align 8
  store %struct.Memory* %loadMem1_48af15, %struct.Memory** %MEMORY
  %loadMem2_48af15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af15 = load i64, i64* %3
  %call2_48af15 = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64 %loadPC_48af15, %struct.Memory* %loadMem2_48af15)
  store %struct.Memory* %call2_48af15, %struct.Memory** %MEMORY
  %loadMem_48af1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 11
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RDI.i679 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %PC.i678
  %2517 = add i64 %2516, 10
  store i64 %2517, i64* %PC.i678
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i679, align 8
  store %struct.Memory* %loadMem_48af1a, %struct.Memory** %MEMORY
  %loadMem_48af24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 33
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 9
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RSI.i676 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 15
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %2526 to i64*
  %2527 = load i64, i64* %RBP.i677
  %2528 = sub i64 %2527, 52
  %2529 = load i64, i64* %PC.i675
  %2530 = add i64 %2529, 3
  store i64 %2530, i64* %PC.i675
  %2531 = inttoptr i64 %2528 to i32*
  %2532 = load i32, i32* %2531
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RSI.i676, align 8
  store %struct.Memory* %loadMem_48af24, %struct.Memory** %MEMORY
  %loadMem_48af27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 1
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 7
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RDX.i674 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %RAX.i673
  %2544 = load i64, i64* %PC.i672
  %2545 = add i64 %2544, 3
  store i64 %2545, i64* %PC.i672
  store i64 %2543, i64* %RDX.i674, align 8
  store %struct.Memory* %loadMem_48af27, %struct.Memory** %MEMORY
  %loadMem_48af2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 1
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %2552 = bitcast %union.anon* %2551 to %struct.anon.2*
  %AL.i671 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2552, i32 0, i32 0
  %2553 = load i64, i64* %PC.i670
  %2554 = add i64 %2553, 2
  store i64 %2554, i64* %PC.i670
  store i8 0, i8* %AL.i671, align 1
  store %struct.Memory* %loadMem_48af2a, %struct.Memory** %MEMORY
  %loadMem1_48af2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 33
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2557 to i64*
  %2558 = load i64, i64* %PC.i669
  %2559 = add i64 %2558, -233852
  %2560 = load i64, i64* %PC.i669
  %2561 = add i64 %2560, 5
  %2562 = load i64, i64* %PC.i669
  %2563 = add i64 %2562, 5
  store i64 %2563, i64* %PC.i669
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2565 = load i64, i64* %2564, align 8
  %2566 = add i64 %2565, -8
  %2567 = inttoptr i64 %2566 to i64*
  store i64 %2561, i64* %2567
  store i64 %2566, i64* %2564, align 8
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2559, i64* %2568, align 8
  store %struct.Memory* %loadMem1_48af2c, %struct.Memory** %MEMORY
  %loadMem2_48af2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af2c = load i64, i64* %3
  %call2_48af2c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48af2c, %struct.Memory* %loadMem2_48af2c)
  store %struct.Memory* %call2_48af2c, %struct.Memory** %MEMORY
  %loadMem_48af31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 9
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %RSI.i667 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 15
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %RBP.i668
  %2579 = sub i64 %2578, 16
  %2580 = load i64, i64* %PC.i666
  %2581 = add i64 %2580, 3
  store i64 %2581, i64* %PC.i666
  %2582 = inttoptr i64 %2579 to i32*
  %2583 = load i32, i32* %2582
  %2584 = zext i32 %2583 to i64
  store i64 %2584, i64* %RSI.i667, align 8
  store %struct.Memory* %loadMem_48af31, %struct.Memory** %MEMORY
  %loadMem_48af34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 9
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RSI.i665 = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %RSI.i665
  %2592 = load i64, i64* %PC.i664
  %2593 = add i64 %2592, 3
  store i64 %2593, i64* %PC.i664
  %2594 = trunc i64 %2591 to i32
  %2595 = add i32 1, %2594
  %2596 = zext i32 %2595 to i64
  store i64 %2596, i64* %RSI.i665, align 8
  %2597 = icmp ult i32 %2595, %2594
  %2598 = icmp ult i32 %2595, 1
  %2599 = or i1 %2597, %2598
  %2600 = zext i1 %2599 to i8
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2600, i8* %2601, align 1
  %2602 = and i32 %2595, 255
  %2603 = call i32 @llvm.ctpop.i32(i32 %2602)
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2606, i8* %2607, align 1
  %2608 = xor i64 1, %2591
  %2609 = trunc i64 %2608 to i32
  %2610 = xor i32 %2609, %2595
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2613, i8* %2614, align 1
  %2615 = icmp eq i32 %2595, 0
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2616, i8* %2617, align 1
  %2618 = lshr i32 %2595, 31
  %2619 = trunc i32 %2618 to i8
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2619, i8* %2620, align 1
  %2621 = lshr i32 %2594, 31
  %2622 = xor i32 %2618, %2621
  %2623 = add i32 %2622, %2618
  %2624 = icmp eq i32 %2623, 2
  %2625 = zext i1 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2625, i8* %2626, align 1
  store %struct.Memory* %loadMem_48af34, %struct.Memory** %MEMORY
  %loadMem_48af37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 9
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %ESI.i662 = bitcast %union.anon* %2632 to i32*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 15
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %RBP.i663
  %2637 = sub i64 %2636, 16
  %2638 = load i32, i32* %ESI.i662
  %2639 = zext i32 %2638 to i64
  %2640 = load i64, i64* %PC.i661
  %2641 = add i64 %2640, 3
  store i64 %2641, i64* %PC.i661
  %2642 = inttoptr i64 %2637 to i32*
  store i32 %2638, i32* %2642
  store %struct.Memory* %loadMem_48af37, %struct.Memory** %MEMORY
  %loadMem_48af3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 33
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2645 to i64*
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2647 = getelementptr inbounds %struct.GPR, %struct.GPR* %2646, i32 0, i32 1
  %2648 = getelementptr inbounds %struct.Reg, %struct.Reg* %2647, i32 0, i32 0
  %EAX.i659 = bitcast %union.anon* %2648 to i32*
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 15
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2651 to i64*
  %2652 = load i64, i64* %RBP.i660
  %2653 = sub i64 %2652, 56
  %2654 = load i32, i32* %EAX.i659
  %2655 = zext i32 %2654 to i64
  %2656 = load i64, i64* %PC.i658
  %2657 = add i64 %2656, 3
  store i64 %2657, i64* %PC.i658
  %2658 = inttoptr i64 %2653 to i32*
  store i32 %2654, i32* %2658
  store %struct.Memory* %loadMem_48af3a, %struct.Memory** %MEMORY
  %loadMem_48af3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2661 to i64*
  %2662 = load i64, i64* %PC.i657
  %2663 = add i64 %2662, -169
  %2664 = load i64, i64* %PC.i657
  %2665 = add i64 %2664, 5
  store i64 %2665, i64* %PC.i657
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2663, i64* %2666, align 8
  store %struct.Memory* %loadMem_48af3d, %struct.Memory** %MEMORY
  br label %block_.L_48ae94

block_.L_48af42:                                  ; preds = %block_.L_48ae94
  %loadMem_48af42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 11
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RDI.i656 = bitcast %union.anon* %2672 to i64*
  %2673 = load i64, i64* %PC.i655
  %2674 = add i64 %2673, 10
  store i64 %2674, i64* %PC.i655
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i656, align 8
  store %struct.Memory* %loadMem_48af42, %struct.Memory** %MEMORY
  %loadMem_48af4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 1
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %2681 = bitcast %union.anon* %2680 to %struct.anon.2*
  %AL.i654 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2681, i32 0, i32 0
  %2682 = load i64, i64* %PC.i653
  %2683 = add i64 %2682, 2
  store i64 %2683, i64* %PC.i653
  store i8 0, i8* %AL.i654, align 1
  store %struct.Memory* %loadMem_48af4c, %struct.Memory** %MEMORY
  %loadMem1_48af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %PC.i652
  %2688 = add i64 %2687, -233886
  %2689 = load i64, i64* %PC.i652
  %2690 = add i64 %2689, 5
  %2691 = load i64, i64* %PC.i652
  %2692 = add i64 %2691, 5
  store i64 %2692, i64* %PC.i652
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2694 = load i64, i64* %2693, align 8
  %2695 = add i64 %2694, -8
  %2696 = inttoptr i64 %2695 to i64*
  store i64 %2690, i64* %2696
  store i64 %2695, i64* %2693, align 8
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2688, i64* %2697, align 8
  store %struct.Memory* %loadMem1_48af4e, %struct.Memory** %MEMORY
  %loadMem2_48af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af4e = load i64, i64* %3
  %call2_48af4e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48af4e, %struct.Memory* %loadMem2_48af4e)
  store %struct.Memory* %call2_48af4e, %struct.Memory** %MEMORY
  %loadMem_48af53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 1
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %EAX.i650 = bitcast %union.anon* %2703 to i32*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i651
  %2708 = sub i64 %2707, 60
  %2709 = load i32, i32* %EAX.i650
  %2710 = zext i32 %2709 to i64
  %2711 = load i64, i64* %PC.i649
  %2712 = add i64 %2711, 3
  store i64 %2712, i64* %PC.i649
  %2713 = inttoptr i64 %2708 to i32*
  store i32 %2709, i32* %2713
  store %struct.Memory* %loadMem_48af53, %struct.Memory** %MEMORY
  br label %block_.L_48af56

block_.L_48af56:                                  ; preds = %block_.L_48af42, %block_48ae60
  %loadMem_48af56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %PC.i647
  %2721 = add i64 %2720, 10
  store i64 %2721, i64* %PC.i647
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i648, align 8
  store %struct.Memory* %loadMem_48af56, %struct.Memory** %MEMORY
  %loadMem_48af60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 5
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 15
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %RBP.i646
  %2732 = sub i64 %2731, 12
  %2733 = load i64, i64* %PC.i644
  %2734 = add i64 %2733, 4
  store i64 %2734, i64* %PC.i644
  %2735 = inttoptr i64 %2732 to i32*
  %2736 = load i32, i32* %2735
  %2737 = sext i32 %2736 to i64
  store i64 %2737, i64* %RCX.i645, align 8
  store %struct.Memory* %loadMem_48af60, %struct.Memory** %MEMORY
  %loadMem_48af64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 5
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RCX.i643 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RCX.i643
  %2745 = load i64, i64* %PC.i642
  %2746 = add i64 %2745, 7
  store i64 %2746, i64* %PC.i642
  %2747 = sext i64 %2744 to i128
  %2748 = and i128 %2747, -18446744073709551616
  %2749 = zext i64 %2744 to i128
  %2750 = or i128 %2748, %2749
  %2751 = mul i128 380, %2750
  %2752 = trunc i128 %2751 to i64
  store i64 %2752, i64* %RCX.i643, align 8
  %2753 = sext i64 %2752 to i128
  %2754 = icmp ne i128 %2753, %2751
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2755, i8* %2756, align 1
  %2757 = trunc i128 %2751 to i32
  %2758 = and i32 %2757, 255
  %2759 = call i32 @llvm.ctpop.i32(i32 %2758)
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  %2762 = xor i8 %2761, 1
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2762, i8* %2763, align 1
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2764, align 1
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2765, align 1
  %2766 = lshr i64 %2752, 63
  %2767 = trunc i64 %2766 to i8
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2767, i8* %2768, align 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2755, i8* %2769, align 1
  store %struct.Memory* %loadMem_48af64, %struct.Memory** %MEMORY
  %loadMem_48af6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 1
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 5
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RAX.i640
  %2780 = load i64, i64* %RCX.i641
  %2781 = load i64, i64* %PC.i639
  %2782 = add i64 %2781, 3
  store i64 %2782, i64* %PC.i639
  %2783 = add i64 %2780, %2779
  store i64 %2783, i64* %RAX.i640, align 8
  %2784 = icmp ult i64 %2783, %2779
  %2785 = icmp ult i64 %2783, %2780
  %2786 = or i1 %2784, %2785
  %2787 = zext i1 %2786 to i8
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2787, i8* %2788, align 1
  %2789 = trunc i64 %2783 to i32
  %2790 = and i32 %2789, 255
  %2791 = call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2794, i8* %2795, align 1
  %2796 = xor i64 %2780, %2779
  %2797 = xor i64 %2796, %2783
  %2798 = lshr i64 %2797, 4
  %2799 = trunc i64 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2800, i8* %2801, align 1
  %2802 = icmp eq i64 %2783, 0
  %2803 = zext i1 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2803, i8* %2804, align 1
  %2805 = lshr i64 %2783, 63
  %2806 = trunc i64 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2806, i8* %2807, align 1
  %2808 = lshr i64 %2779, 63
  %2809 = lshr i64 %2780, 63
  %2810 = xor i64 %2805, %2808
  %2811 = xor i64 %2805, %2809
  %2812 = add i64 %2810, %2811
  %2813 = icmp eq i64 %2812, 2
  %2814 = zext i1 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2814, i8* %2815, align 1
  store %struct.Memory* %loadMem_48af6b, %struct.Memory** %MEMORY
  %loadMem_48af6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 1
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RAX.i638
  %2823 = add i64 %2822, 140
  %2824 = load i64, i64* %PC.i637
  %2825 = add i64 %2824, 7
  store i64 %2825, i64* %PC.i637
  %2826 = inttoptr i64 %2823 to i32*
  %2827 = load i32, i32* %2826
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2828, align 1
  %2829 = and i32 %2827, 255
  %2830 = call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2833, i8* %2834, align 1
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2835, align 1
  %2836 = icmp eq i32 %2827, 0
  %2837 = zext i1 %2836 to i8
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2837, i8* %2838, align 1
  %2839 = lshr i32 %2827, 31
  %2840 = trunc i32 %2839 to i8
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2840, i8* %2841, align 1
  %2842 = lshr i32 %2827, 31
  %2843 = xor i32 %2839, %2842
  %2844 = add i32 %2843, %2842
  %2845 = icmp eq i32 %2844, 2
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2846, i8* %2847, align 1
  store %struct.Memory* %loadMem_48af6e, %struct.Memory** %MEMORY
  %loadMem_48af75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %PC.i636
  %2852 = add i64 %2851, 31
  %2853 = load i64, i64* %PC.i636
  %2854 = add i64 %2853, 6
  %2855 = load i64, i64* %PC.i636
  %2856 = add i64 %2855, 6
  store i64 %2856, i64* %PC.i636
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2858 = load i8, i8* %2857, align 1
  %2859 = icmp eq i8 %2858, 0
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %BRANCH_TAKEN, align 1
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2862 = select i1 %2859, i64 %2852, i64 %2854
  store i64 %2862, i64* %2861, align 8
  store %struct.Memory* %loadMem_48af75, %struct.Memory** %MEMORY
  %loadBr_48af75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48af75 = icmp eq i8 %loadBr_48af75, 1
  br i1 %cmpBr_48af75, label %block_.L_48af94, label %block_48af7b

block_48af7b:                                     ; preds = %block_.L_48af56
  %loadMem_48af7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 11
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RDI.i635 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %PC.i634
  %2870 = add i64 %2869, 10
  store i64 %2870, i64* %PC.i634
  store i64 ptrtoint (%G__0x583405_type* @G__0x583405 to i64), i64* %RDI.i635, align 8
  store %struct.Memory* %loadMem_48af7b, %struct.Memory** %MEMORY
  %loadMem_48af85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %2877 = bitcast %union.anon* %2876 to %struct.anon.2*
  %AL.i633 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2877, i32 0, i32 0
  %2878 = load i64, i64* %PC.i632
  %2879 = add i64 %2878, 2
  store i64 %2879, i64* %PC.i632
  store i8 0, i8* %AL.i633, align 1
  store %struct.Memory* %loadMem_48af85, %struct.Memory** %MEMORY
  %loadMem1_48af87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2882 to i64*
  %2883 = load i64, i64* %PC.i631
  %2884 = add i64 %2883, -233943
  %2885 = load i64, i64* %PC.i631
  %2886 = add i64 %2885, 5
  %2887 = load i64, i64* %PC.i631
  %2888 = add i64 %2887, 5
  store i64 %2888, i64* %PC.i631
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2890 = load i64, i64* %2889, align 8
  %2891 = add i64 %2890, -8
  %2892 = inttoptr i64 %2891 to i64*
  store i64 %2886, i64* %2892
  store i64 %2891, i64* %2889, align 8
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2884, i64* %2893, align 8
  store %struct.Memory* %loadMem1_48af87, %struct.Memory** %MEMORY
  %loadMem2_48af87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af87 = load i64, i64* %3
  %call2_48af87 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48af87, %struct.Memory* %loadMem2_48af87)
  store %struct.Memory* %call2_48af87, %struct.Memory** %MEMORY
  %loadMem_48af8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 1
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %EAX.i629 = bitcast %union.anon* %2899 to i32*
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 15
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %RBP.i630
  %2904 = sub i64 %2903, 64
  %2905 = load i32, i32* %EAX.i629
  %2906 = zext i32 %2905 to i64
  %2907 = load i64, i64* %PC.i628
  %2908 = add i64 %2907, 3
  store i64 %2908, i64* %PC.i628
  %2909 = inttoptr i64 %2904 to i32*
  store i32 %2905, i32* %2909
  store %struct.Memory* %loadMem_48af8c, %struct.Memory** %MEMORY
  %loadMem_48af8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %PC.i627
  %2914 = add i64 %2913, 235
  %2915 = load i64, i64* %PC.i627
  %2916 = add i64 %2915, 5
  store i64 %2916, i64* %PC.i627
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2914, i64* %2917, align 8
  store %struct.Memory* %loadMem_48af8f, %struct.Memory** %MEMORY
  br label %block_.L_48b07a

block_.L_48af94:                                  ; preds = %block_.L_48af56
  %loadMem_48af94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 11
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RDI.i626 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %PC.i625
  %2925 = add i64 %2924, 10
  store i64 %2925, i64* %PC.i625
  store i64 ptrtoint (%G__0x583418_type* @G__0x583418 to i64), i64* %RDI.i626, align 8
  store %struct.Memory* %loadMem_48af94, %struct.Memory** %MEMORY
  %loadMem_48af9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 1
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %2932 = bitcast %union.anon* %2931 to %struct.anon.2*
  %AL.i624 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2932, i32 0, i32 0
  %2933 = load i64, i64* %PC.i623
  %2934 = add i64 %2933, 2
  store i64 %2934, i64* %PC.i623
  store i8 0, i8* %AL.i624, align 1
  store %struct.Memory* %loadMem_48af9e, %struct.Memory** %MEMORY
  %loadMem1_48afa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 33
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %PC.i622
  %2939 = add i64 %2938, -233968
  %2940 = load i64, i64* %PC.i622
  %2941 = add i64 %2940, 5
  %2942 = load i64, i64* %PC.i622
  %2943 = add i64 %2942, 5
  store i64 %2943, i64* %PC.i622
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2945 = load i64, i64* %2944, align 8
  %2946 = add i64 %2945, -8
  %2947 = inttoptr i64 %2946 to i64*
  store i64 %2941, i64* %2947
  store i64 %2946, i64* %2944, align 8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2939, i64* %2948, align 8
  store %struct.Memory* %loadMem1_48afa0, %struct.Memory** %MEMORY
  %loadMem2_48afa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48afa0 = load i64, i64* %3
  %call2_48afa0 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48afa0, %struct.Memory* %loadMem2_48afa0)
  store %struct.Memory* %call2_48afa0, %struct.Memory** %MEMORY
  %loadMem_48afa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 33
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2951 to i64*
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 15
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %RBP.i621
  %2956 = sub i64 %2955, 16
  %2957 = load i64, i64* %PC.i620
  %2958 = add i64 %2957, 7
  store i64 %2958, i64* %PC.i620
  %2959 = inttoptr i64 %2956 to i32*
  store i32 0, i32* %2959
  store %struct.Memory* %loadMem_48afa5, %struct.Memory** %MEMORY
  %loadMem_48afac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 1
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %EAX.i618 = bitcast %union.anon* %2965 to i32*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 15
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2968 to i64*
  %2969 = load i64, i64* %RBP.i619
  %2970 = sub i64 %2969, 68
  %2971 = load i32, i32* %EAX.i618
  %2972 = zext i32 %2971 to i64
  %2973 = load i64, i64* %PC.i617
  %2974 = add i64 %2973, 3
  store i64 %2974, i64* %PC.i617
  %2975 = inttoptr i64 %2970 to i32*
  store i32 %2971, i32* %2975
  store %struct.Memory* %loadMem_48afac, %struct.Memory** %MEMORY
  br label %block_.L_48afaf

block_.L_48afaf:                                  ; preds = %block_.L_48aff7, %block_.L_48af94
  %loadMem_48afaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 33
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 1
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %2981 to i64*
  %2982 = load i64, i64* %PC.i615
  %2983 = add i64 %2982, 10
  store i64 %2983, i64* %PC.i615
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_48afaf, %struct.Memory** %MEMORY
  %loadMem_48afb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 33
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 5
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 15
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %2992 to i64*
  %2993 = load i64, i64* %RBP.i614
  %2994 = sub i64 %2993, 12
  %2995 = load i64, i64* %PC.i612
  %2996 = add i64 %2995, 4
  store i64 %2996, i64* %PC.i612
  %2997 = inttoptr i64 %2994 to i32*
  %2998 = load i32, i32* %2997
  %2999 = sext i32 %2998 to i64
  store i64 %2999, i64* %RCX.i613, align 8
  store %struct.Memory* %loadMem_48afb9, %struct.Memory** %MEMORY
  %loadMem_48afbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 5
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RCX.i611
  %3007 = load i64, i64* %PC.i610
  %3008 = add i64 %3007, 7
  store i64 %3008, i64* %PC.i610
  %3009 = sext i64 %3006 to i128
  %3010 = and i128 %3009, -18446744073709551616
  %3011 = zext i64 %3006 to i128
  %3012 = or i128 %3010, %3011
  %3013 = mul i128 380, %3012
  %3014 = trunc i128 %3013 to i64
  store i64 %3014, i64* %RCX.i611, align 8
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
  store %struct.Memory* %loadMem_48afbd, %struct.Memory** %MEMORY
  %loadMem_48afc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 33
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %3034 to i64*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 1
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 5
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RCX.i609 = bitcast %union.anon* %3040 to i64*
  %3041 = load i64, i64* %RAX.i608
  %3042 = load i64, i64* %RCX.i609
  %3043 = load i64, i64* %PC.i607
  %3044 = add i64 %3043, 3
  store i64 %3044, i64* %PC.i607
  %3045 = add i64 %3042, %3041
  store i64 %3045, i64* %RAX.i608, align 8
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
  store %struct.Memory* %loadMem_48afc4, %struct.Memory** %MEMORY
  %loadMem_48afc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 33
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3080 to i64*
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 5
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 15
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %3086 to i64*
  %3087 = load i64, i64* %RBP.i606
  %3088 = sub i64 %3087, 16
  %3089 = load i64, i64* %PC.i604
  %3090 = add i64 %3089, 4
  store i64 %3090, i64* %PC.i604
  %3091 = inttoptr i64 %3088 to i32*
  %3092 = load i32, i32* %3091
  %3093 = sext i32 %3092 to i64
  store i64 %3093, i64* %RCX.i605, align 8
  store %struct.Memory* %loadMem_48afc7, %struct.Memory** %MEMORY
  %loadMem_48afcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 1
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 5
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RAX.i602
  %3104 = load i64, i64* %RCX.i603
  %3105 = mul i64 %3104, 4
  %3106 = add i64 %3103, 140
  %3107 = add i64 %3106, %3105
  %3108 = load i64, i64* %PC.i601
  %3109 = add i64 %3108, 8
  store i64 %3109, i64* %PC.i601
  %3110 = inttoptr i64 %3107 to i32*
  %3111 = load i32, i32* %3110
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3112, align 1
  %3113 = and i32 %3111, 255
  %3114 = call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3117, i8* %3118, align 1
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3119, align 1
  %3120 = icmp eq i32 %3111, 0
  %3121 = zext i1 %3120 to i8
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3121, i8* %3122, align 1
  %3123 = lshr i32 %3111, 31
  %3124 = trunc i32 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3124, i8* %3125, align 1
  %3126 = lshr i32 %3111, 31
  %3127 = xor i32 %3123, %3126
  %3128 = add i32 %3127, %3126
  %3129 = icmp eq i32 %3128, 2
  %3130 = zext i1 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3130, i8* %3131, align 1
  store %struct.Memory* %loadMem_48afcb, %struct.Memory** %MEMORY
  %loadMem_48afd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 33
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %PC.i600
  %3136 = add i64 %3135, 147
  %3137 = load i64, i64* %PC.i600
  %3138 = add i64 %3137, 6
  %3139 = load i64, i64* %PC.i600
  %3140 = add i64 %3139, 6
  store i64 %3140, i64* %PC.i600
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3142 = load i8, i8* %3141, align 1
  store i8 %3142, i8* %BRANCH_TAKEN, align 1
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3144 = icmp ne i8 %3142, 0
  %3145 = select i1 %3144, i64 %3136, i64 %3138
  store i64 %3145, i64* %3143, align 8
  store %struct.Memory* %loadMem_48afd3, %struct.Memory** %MEMORY
  %loadBr_48afd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48afd3 = icmp eq i8 %loadBr_48afd3, 1
  br i1 %cmpBr_48afd3, label %block_.L_48b066, label %block_48afd9

block_48afd9:                                     ; preds = %block_.L_48afaf
  %loadMem_48afd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 33
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3148 to i64*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 15
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %3151 to i64*
  %3152 = load i64, i64* %RBP.i599
  %3153 = sub i64 %3152, 16
  %3154 = load i64, i64* %PC.i598
  %3155 = add i64 %3154, 4
  store i64 %3155, i64* %PC.i598
  %3156 = inttoptr i64 %3153 to i32*
  %3157 = load i32, i32* %3156
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3158, align 1
  %3159 = and i32 %3157, 255
  %3160 = call i32 @llvm.ctpop.i32(i32 %3159)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3163, i8* %3164, align 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3165, align 1
  %3166 = icmp eq i32 %3157, 0
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3167, i8* %3168, align 1
  %3169 = lshr i32 %3157, 31
  %3170 = trunc i32 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3170, i8* %3171, align 1
  %3172 = lshr i32 %3157, 31
  %3173 = xor i32 %3169, %3172
  %3174 = add i32 %3173, %3172
  %3175 = icmp eq i32 %3174, 2
  %3176 = zext i1 %3175 to i8
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3176, i8* %3177, align 1
  store %struct.Memory* %loadMem_48afd9, %struct.Memory** %MEMORY
  %loadMem_48afdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3180 to i64*
  %3181 = load i64, i64* %PC.i597
  %3182 = add i64 %3181, 26
  %3183 = load i64, i64* %PC.i597
  %3184 = add i64 %3183, 6
  %3185 = load i64, i64* %PC.i597
  %3186 = add i64 %3185, 6
  store i64 %3186, i64* %PC.i597
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3188 = load i8, i8* %3187, align 1
  %3189 = icmp ne i8 %3188, 0
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3191 = load i8, i8* %3190, align 1
  %3192 = icmp ne i8 %3191, 0
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3194 = load i8, i8* %3193, align 1
  %3195 = icmp ne i8 %3194, 0
  %3196 = xor i1 %3192, %3195
  %3197 = or i1 %3189, %3196
  %3198 = zext i1 %3197 to i8
  store i8 %3198, i8* %BRANCH_TAKEN, align 1
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3200 = select i1 %3197, i64 %3182, i64 %3184
  store i64 %3200, i64* %3199, align 8
  store %struct.Memory* %loadMem_48afdd, %struct.Memory** %MEMORY
  %loadBr_48afdd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48afdd = icmp eq i8 %loadBr_48afdd, 1
  br i1 %cmpBr_48afdd, label %block_.L_48aff7, label %block_48afe3

block_48afe3:                                     ; preds = %block_48afd9
  %loadMem_48afe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 33
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 11
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RDI.i596 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %PC.i595
  %3208 = add i64 %3207, 10
  store i64 %3208, i64* %PC.i595
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i596, align 8
  store %struct.Memory* %loadMem_48afe3, %struct.Memory** %MEMORY
  %loadMem_48afed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 1
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %3215 = bitcast %union.anon* %3214 to %struct.anon.2*
  %AL.i594 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3215, i32 0, i32 0
  %3216 = load i64, i64* %PC.i593
  %3217 = add i64 %3216, 2
  store i64 %3217, i64* %PC.i593
  store i8 0, i8* %AL.i594, align 1
  store %struct.Memory* %loadMem_48afed, %struct.Memory** %MEMORY
  %loadMem1_48afef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 33
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %PC.i592
  %3222 = add i64 %3221, -234047
  %3223 = load i64, i64* %PC.i592
  %3224 = add i64 %3223, 5
  %3225 = load i64, i64* %PC.i592
  %3226 = add i64 %3225, 5
  store i64 %3226, i64* %PC.i592
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3228 = load i64, i64* %3227, align 8
  %3229 = add i64 %3228, -8
  %3230 = inttoptr i64 %3229 to i64*
  store i64 %3224, i64* %3230
  store i64 %3229, i64* %3227, align 8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3222, i64* %3231, align 8
  store %struct.Memory* %loadMem1_48afef, %struct.Memory** %MEMORY
  %loadMem2_48afef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48afef = load i64, i64* %3
  %call2_48afef = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48afef, %struct.Memory* %loadMem2_48afef)
  store %struct.Memory* %call2_48afef, %struct.Memory** %MEMORY
  %loadMem_48aff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 1
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %EAX.i590 = bitcast %union.anon* %3237 to i32*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 15
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RBP.i591
  %3242 = sub i64 %3241, 72
  %3243 = load i32, i32* %EAX.i590
  %3244 = zext i32 %3243 to i64
  %3245 = load i64, i64* %PC.i589
  %3246 = add i64 %3245, 3
  store i64 %3246, i64* %PC.i589
  %3247 = inttoptr i64 %3242 to i32*
  store i32 %3243, i32* %3247
  store %struct.Memory* %loadMem_48aff4, %struct.Memory** %MEMORY
  br label %block_.L_48aff7

block_.L_48aff7:                                  ; preds = %block_48afe3, %block_48afd9
  %loadMem_48aff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 1
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %PC.i587
  %3255 = add i64 %3254, 10
  store i64 %3255, i64* %PC.i587
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i588, align 8
  store %struct.Memory* %loadMem_48aff7, %struct.Memory** %MEMORY
  %loadMem_48b001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 5
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 15
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %RBP.i586
  %3266 = sub i64 %3265, 12
  %3267 = load i64, i64* %PC.i584
  %3268 = add i64 %3267, 4
  store i64 %3268, i64* %PC.i584
  %3269 = inttoptr i64 %3266 to i32*
  %3270 = load i32, i32* %3269
  %3271 = sext i32 %3270 to i64
  store i64 %3271, i64* %RCX.i585, align 8
  store %struct.Memory* %loadMem_48b001, %struct.Memory** %MEMORY
  %loadMem_48b005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 5
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RCX.i583
  %3279 = load i64, i64* %PC.i582
  %3280 = add i64 %3279, 7
  store i64 %3280, i64* %PC.i582
  %3281 = sext i64 %3278 to i128
  %3282 = and i128 %3281, -18446744073709551616
  %3283 = zext i64 %3278 to i128
  %3284 = or i128 %3282, %3283
  %3285 = mul i128 380, %3284
  %3286 = trunc i128 %3285 to i64
  store i64 %3286, i64* %RCX.i583, align 8
  %3287 = sext i64 %3286 to i128
  %3288 = icmp ne i128 %3287, %3285
  %3289 = zext i1 %3288 to i8
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3289, i8* %3290, align 1
  %3291 = trunc i128 %3285 to i32
  %3292 = and i32 %3291, 255
  %3293 = call i32 @llvm.ctpop.i32(i32 %3292)
  %3294 = trunc i32 %3293 to i8
  %3295 = and i8 %3294, 1
  %3296 = xor i8 %3295, 1
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3296, i8* %3297, align 1
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3298, align 1
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3299, align 1
  %3300 = lshr i64 %3286, 63
  %3301 = trunc i64 %3300 to i8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3301, i8* %3302, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3289, i8* %3303, align 1
  store %struct.Memory* %loadMem_48b005, %struct.Memory** %MEMORY
  %loadMem_48b00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 33
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3306 to i64*
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 1
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 7
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %3312 to i64*
  %3313 = load i64, i64* %RAX.i580
  %3314 = load i64, i64* %PC.i579
  %3315 = add i64 %3314, 3
  store i64 %3315, i64* %PC.i579
  store i64 %3313, i64* %RDX.i581, align 8
  store %struct.Memory* %loadMem_48b00c, %struct.Memory** %MEMORY
  %loadMem_48b00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 33
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 5
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RCX.i577 = bitcast %union.anon* %3321 to i64*
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 7
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %RDX.i578 = bitcast %union.anon* %3324 to i64*
  %3325 = load i64, i64* %RDX.i578
  %3326 = load i64, i64* %RCX.i577
  %3327 = load i64, i64* %PC.i576
  %3328 = add i64 %3327, 3
  store i64 %3328, i64* %PC.i576
  %3329 = add i64 %3326, %3325
  store i64 %3329, i64* %RDX.i578, align 8
  %3330 = icmp ult i64 %3329, %3325
  %3331 = icmp ult i64 %3329, %3326
  %3332 = or i1 %3330, %3331
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3333, i8* %3334, align 1
  %3335 = trunc i64 %3329 to i32
  %3336 = and i32 %3335, 255
  %3337 = call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3340, i8* %3341, align 1
  %3342 = xor i64 %3326, %3325
  %3343 = xor i64 %3342, %3329
  %3344 = lshr i64 %3343, 4
  %3345 = trunc i64 %3344 to i8
  %3346 = and i8 %3345, 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3346, i8* %3347, align 1
  %3348 = icmp eq i64 %3329, 0
  %3349 = zext i1 %3348 to i8
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3349, i8* %3350, align 1
  %3351 = lshr i64 %3329, 63
  %3352 = trunc i64 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3352, i8* %3353, align 1
  %3354 = lshr i64 %3325, 63
  %3355 = lshr i64 %3326, 63
  %3356 = xor i64 %3351, %3354
  %3357 = xor i64 %3351, %3355
  %3358 = add i64 %3356, %3357
  %3359 = icmp eq i64 %3358, 2
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3360, i8* %3361, align 1
  store %struct.Memory* %loadMem_48b00f, %struct.Memory** %MEMORY
  %loadMem_48b012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 33
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3364 to i64*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 5
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 15
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %3370 to i64*
  %3371 = load i64, i64* %RBP.i575
  %3372 = sub i64 %3371, 16
  %3373 = load i64, i64* %PC.i573
  %3374 = add i64 %3373, 4
  store i64 %3374, i64* %PC.i573
  %3375 = inttoptr i64 %3372 to i32*
  %3376 = load i32, i32* %3375
  %3377 = sext i32 %3376 to i64
  store i64 %3377, i64* %RCX.i574, align 8
  store %struct.Memory* %loadMem_48b012, %struct.Memory** %MEMORY
  %loadMem_48b016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 33
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3380 to i64*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 5
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 7
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RDX.i571 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 9
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RSI.i572 = bitcast %union.anon* %3389 to i64*
  %3390 = load i64, i64* %RDX.i571
  %3391 = load i64, i64* %RCX.i570
  %3392 = mul i64 %3391, 4
  %3393 = add i64 %3390, 140
  %3394 = add i64 %3393, %3392
  %3395 = load i64, i64* %PC.i569
  %3396 = add i64 %3395, 7
  store i64 %3396, i64* %PC.i569
  %3397 = inttoptr i64 %3394 to i32*
  %3398 = load i32, i32* %3397
  %3399 = zext i32 %3398 to i64
  store i64 %3399, i64* %RSI.i572, align 8
  store %struct.Memory* %loadMem_48b016, %struct.Memory** %MEMORY
  %loadMem_48b01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 5
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %3405 to i64*
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 15
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %3408 to i64*
  %3409 = load i64, i64* %RBP.i568
  %3410 = sub i64 %3409, 12
  %3411 = load i64, i64* %PC.i566
  %3412 = add i64 %3411, 4
  store i64 %3412, i64* %PC.i566
  %3413 = inttoptr i64 %3410 to i32*
  %3414 = load i32, i32* %3413
  %3415 = sext i32 %3414 to i64
  store i64 %3415, i64* %RCX.i567, align 8
  store %struct.Memory* %loadMem_48b01d, %struct.Memory** %MEMORY
  %loadMem_48b021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 33
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3418 to i64*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 5
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %3421 to i64*
  %3422 = load i64, i64* %RCX.i565
  %3423 = load i64, i64* %PC.i564
  %3424 = add i64 %3423, 7
  store i64 %3424, i64* %PC.i564
  %3425 = sext i64 %3422 to i128
  %3426 = and i128 %3425, -18446744073709551616
  %3427 = zext i64 %3422 to i128
  %3428 = or i128 %3426, %3427
  %3429 = mul i128 380, %3428
  %3430 = trunc i128 %3429 to i64
  store i64 %3430, i64* %RCX.i565, align 8
  %3431 = sext i64 %3430 to i128
  %3432 = icmp ne i128 %3431, %3429
  %3433 = zext i1 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3433, i8* %3434, align 1
  %3435 = trunc i128 %3429 to i32
  %3436 = and i32 %3435, 255
  %3437 = call i32 @llvm.ctpop.i32(i32 %3436)
  %3438 = trunc i32 %3437 to i8
  %3439 = and i8 %3438, 1
  %3440 = xor i8 %3439, 1
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3440, i8* %3441, align 1
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3442, align 1
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3443, align 1
  %3444 = lshr i64 %3430, 63
  %3445 = trunc i64 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3445, i8* %3446, align 1
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3433, i8* %3447, align 1
  store %struct.Memory* %loadMem_48b021, %struct.Memory** %MEMORY
  %loadMem_48b028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 1
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 5
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %RCX.i563 = bitcast %union.anon* %3456 to i64*
  %3457 = load i64, i64* %RAX.i562
  %3458 = load i64, i64* %RCX.i563
  %3459 = load i64, i64* %PC.i561
  %3460 = add i64 %3459, 3
  store i64 %3460, i64* %PC.i561
  %3461 = add i64 %3458, %3457
  store i64 %3461, i64* %RAX.i562, align 8
  %3462 = icmp ult i64 %3461, %3457
  %3463 = icmp ult i64 %3461, %3458
  %3464 = or i1 %3462, %3463
  %3465 = zext i1 %3464 to i8
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3465, i8* %3466, align 1
  %3467 = trunc i64 %3461 to i32
  %3468 = and i32 %3467, 255
  %3469 = call i32 @llvm.ctpop.i32(i32 %3468)
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = xor i8 %3471, 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3472, i8* %3473, align 1
  %3474 = xor i64 %3458, %3457
  %3475 = xor i64 %3474, %3461
  %3476 = lshr i64 %3475, 4
  %3477 = trunc i64 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3478, i8* %3479, align 1
  %3480 = icmp eq i64 %3461, 0
  %3481 = zext i1 %3480 to i8
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3481, i8* %3482, align 1
  %3483 = lshr i64 %3461, 63
  %3484 = trunc i64 %3483 to i8
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3484, i8* %3485, align 1
  %3486 = lshr i64 %3457, 63
  %3487 = lshr i64 %3458, 63
  %3488 = xor i64 %3483, %3486
  %3489 = xor i64 %3483, %3487
  %3490 = add i64 %3488, %3489
  %3491 = icmp eq i64 %3490, 2
  %3492 = zext i1 %3491 to i8
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3492, i8* %3493, align 1
  store %struct.Memory* %loadMem_48b028, %struct.Memory** %MEMORY
  %loadMem_48b02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 5
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 15
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %3502 to i64*
  %3503 = load i64, i64* %RBP.i560
  %3504 = sub i64 %3503, 16
  %3505 = load i64, i64* %PC.i558
  %3506 = add i64 %3505, 4
  store i64 %3506, i64* %PC.i558
  %3507 = inttoptr i64 %3504 to i32*
  %3508 = load i32, i32* %3507
  %3509 = sext i32 %3508 to i64
  store i64 %3509, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_48b02b, %struct.Memory** %MEMORY
  %loadMem_48b02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 1
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 5
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 11
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %RDI.i557 = bitcast %union.anon* %3521 to i64*
  %3522 = load i64, i64* %RAX.i555
  %3523 = load i64, i64* %RCX.i556
  %3524 = mul i64 %3523, 4
  %3525 = add i64 %3522, 180
  %3526 = add i64 %3525, %3524
  %3527 = load i64, i64* %PC.i554
  %3528 = add i64 %3527, 7
  store i64 %3528, i64* %PC.i554
  %3529 = inttoptr i64 %3526 to i32*
  %3530 = load i32, i32* %3529
  %3531 = zext i32 %3530 to i64
  store i64 %3531, i64* %RDI.i557, align 8
  store %struct.Memory* %loadMem_48b02f, %struct.Memory** %MEMORY
  %loadMem_48b036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3534 to i64*
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 9
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %ESI.i552 = bitcast %union.anon* %3537 to i32*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 15
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3540 to i64*
  %3541 = load i64, i64* %RBP.i553
  %3542 = sub i64 %3541, 76
  %3543 = load i32, i32* %ESI.i552
  %3544 = zext i32 %3543 to i64
  %3545 = load i64, i64* %PC.i551
  %3546 = add i64 %3545, 3
  store i64 %3546, i64* %PC.i551
  %3547 = inttoptr i64 %3542 to i32*
  store i32 %3543, i32* %3547
  store %struct.Memory* %loadMem_48b036, %struct.Memory** %MEMORY
  %loadMem1_48b039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %3550 to i64*
  %3551 = load i64, i64* %PC.i550
  %3552 = add i64 %3551, -231705
  %3553 = load i64, i64* %PC.i550
  %3554 = add i64 %3553, 5
  %3555 = load i64, i64* %PC.i550
  %3556 = add i64 %3555, 5
  store i64 %3556, i64* %PC.i550
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3558 = load i64, i64* %3557, align 8
  %3559 = add i64 %3558, -8
  %3560 = inttoptr i64 %3559 to i64*
  store i64 %3554, i64* %3560
  store i64 %3559, i64* %3557, align 8
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3552, i64* %3561, align 8
  store %struct.Memory* %loadMem1_48b039, %struct.Memory** %MEMORY
  %loadMem2_48b039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b039 = load i64, i64* %3
  %call2_48b039 = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64 %loadPC_48b039, %struct.Memory* %loadMem2_48b039)
  store %struct.Memory* %call2_48b039, %struct.Memory** %MEMORY
  %loadMem_48b03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 11
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RDI.i549 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %PC.i548
  %3569 = add i64 %3568, 10
  store i64 %3569, i64* %PC.i548
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i549, align 8
  store %struct.Memory* %loadMem_48b03e, %struct.Memory** %MEMORY
  %loadMem_48b048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 33
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 9
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RSI.i546 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 15
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3578 to i64*
  %3579 = load i64, i64* %RBP.i547
  %3580 = sub i64 %3579, 76
  %3581 = load i64, i64* %PC.i545
  %3582 = add i64 %3581, 3
  store i64 %3582, i64* %PC.i545
  %3583 = inttoptr i64 %3580 to i32*
  %3584 = load i32, i32* %3583
  %3585 = zext i32 %3584 to i64
  store i64 %3585, i64* %RSI.i546, align 8
  store %struct.Memory* %loadMem_48b048, %struct.Memory** %MEMORY
  %loadMem_48b04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 1
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %3591 to i64*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 7
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %RDX.i544 = bitcast %union.anon* %3594 to i64*
  %3595 = load i64, i64* %RAX.i543
  %3596 = load i64, i64* %PC.i542
  %3597 = add i64 %3596, 3
  store i64 %3597, i64* %PC.i542
  store i64 %3595, i64* %RDX.i544, align 8
  store %struct.Memory* %loadMem_48b04b, %struct.Memory** %MEMORY
  %loadMem_48b04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 1
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %3604 = bitcast %union.anon* %3603 to %struct.anon.2*
  %AL.i541 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3604, i32 0, i32 0
  %3605 = load i64, i64* %PC.i540
  %3606 = add i64 %3605, 2
  store i64 %3606, i64* %PC.i540
  store i8 0, i8* %AL.i541, align 1
  store %struct.Memory* %loadMem_48b04e, %struct.Memory** %MEMORY
  %loadMem1_48b050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 33
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3609 to i64*
  %3610 = load i64, i64* %PC.i539
  %3611 = add i64 %3610, -234144
  %3612 = load i64, i64* %PC.i539
  %3613 = add i64 %3612, 5
  %3614 = load i64, i64* %PC.i539
  %3615 = add i64 %3614, 5
  store i64 %3615, i64* %PC.i539
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3617 = load i64, i64* %3616, align 8
  %3618 = add i64 %3617, -8
  %3619 = inttoptr i64 %3618 to i64*
  store i64 %3613, i64* %3619
  store i64 %3618, i64* %3616, align 8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3611, i64* %3620, align 8
  store %struct.Memory* %loadMem1_48b050, %struct.Memory** %MEMORY
  %loadMem2_48b050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b050 = load i64, i64* %3
  %call2_48b050 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b050, %struct.Memory* %loadMem2_48b050)
  store %struct.Memory* %call2_48b050, %struct.Memory** %MEMORY
  %loadMem_48b055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 9
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RSI.i537 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 15
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %RBP.i538
  %3631 = sub i64 %3630, 16
  %3632 = load i64, i64* %PC.i536
  %3633 = add i64 %3632, 3
  store i64 %3633, i64* %PC.i536
  %3634 = inttoptr i64 %3631 to i32*
  %3635 = load i32, i32* %3634
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %RSI.i537, align 8
  store %struct.Memory* %loadMem_48b055, %struct.Memory** %MEMORY
  %loadMem_48b058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 9
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RSI.i535 = bitcast %union.anon* %3642 to i64*
  %3643 = load i64, i64* %RSI.i535
  %3644 = load i64, i64* %PC.i534
  %3645 = add i64 %3644, 3
  store i64 %3645, i64* %PC.i534
  %3646 = trunc i64 %3643 to i32
  %3647 = add i32 1, %3646
  %3648 = zext i32 %3647 to i64
  store i64 %3648, i64* %RSI.i535, align 8
  %3649 = icmp ult i32 %3647, %3646
  %3650 = icmp ult i32 %3647, 1
  %3651 = or i1 %3649, %3650
  %3652 = zext i1 %3651 to i8
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3652, i8* %3653, align 1
  %3654 = and i32 %3647, 255
  %3655 = call i32 @llvm.ctpop.i32(i32 %3654)
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  %3658 = xor i8 %3657, 1
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3658, i8* %3659, align 1
  %3660 = xor i64 1, %3643
  %3661 = trunc i64 %3660 to i32
  %3662 = xor i32 %3661, %3647
  %3663 = lshr i32 %3662, 4
  %3664 = trunc i32 %3663 to i8
  %3665 = and i8 %3664, 1
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3665, i8* %3666, align 1
  %3667 = icmp eq i32 %3647, 0
  %3668 = zext i1 %3667 to i8
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3668, i8* %3669, align 1
  %3670 = lshr i32 %3647, 31
  %3671 = trunc i32 %3670 to i8
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3671, i8* %3672, align 1
  %3673 = lshr i32 %3646, 31
  %3674 = xor i32 %3670, %3673
  %3675 = add i32 %3674, %3670
  %3676 = icmp eq i32 %3675, 2
  %3677 = zext i1 %3676 to i8
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3677, i8* %3678, align 1
  store %struct.Memory* %loadMem_48b058, %struct.Memory** %MEMORY
  %loadMem_48b05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 33
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 9
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %ESI.i532 = bitcast %union.anon* %3684 to i32*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 15
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3687 to i64*
  %3688 = load i64, i64* %RBP.i533
  %3689 = sub i64 %3688, 16
  %3690 = load i32, i32* %ESI.i532
  %3691 = zext i32 %3690 to i64
  %3692 = load i64, i64* %PC.i531
  %3693 = add i64 %3692, 3
  store i64 %3693, i64* %PC.i531
  %3694 = inttoptr i64 %3689 to i32*
  store i32 %3690, i32* %3694
  store %struct.Memory* %loadMem_48b05b, %struct.Memory** %MEMORY
  %loadMem_48b05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 1
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %EAX.i529 = bitcast %union.anon* %3700 to i32*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 15
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %3703 to i64*
  %3704 = load i64, i64* %RBP.i530
  %3705 = sub i64 %3704, 80
  %3706 = load i32, i32* %EAX.i529
  %3707 = zext i32 %3706 to i64
  %3708 = load i64, i64* %PC.i528
  %3709 = add i64 %3708, 3
  store i64 %3709, i64* %PC.i528
  %3710 = inttoptr i64 %3705 to i32*
  store i32 %3706, i32* %3710
  store %struct.Memory* %loadMem_48b05e, %struct.Memory** %MEMORY
  %loadMem_48b061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 33
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3713 to i64*
  %3714 = load i64, i64* %PC.i527
  %3715 = add i64 %3714, -178
  %3716 = load i64, i64* %PC.i527
  %3717 = add i64 %3716, 5
  store i64 %3717, i64* %PC.i527
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3715, i64* %3718, align 8
  store %struct.Memory* %loadMem_48b061, %struct.Memory** %MEMORY
  br label %block_.L_48afaf

block_.L_48b066:                                  ; preds = %block_.L_48afaf
  %loadMem_48b066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 33
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 11
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RDI.i526 = bitcast %union.anon* %3724 to i64*
  %3725 = load i64, i64* %PC.i525
  %3726 = add i64 %3725, 10
  store i64 %3726, i64* %PC.i525
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i526, align 8
  store %struct.Memory* %loadMem_48b066, %struct.Memory** %MEMORY
  %loadMem_48b070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 33
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3729 to i64*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 1
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %3733 = bitcast %union.anon* %3732 to %struct.anon.2*
  %AL.i524 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3733, i32 0, i32 0
  %3734 = load i64, i64* %PC.i523
  %3735 = add i64 %3734, 2
  store i64 %3735, i64* %PC.i523
  store i8 0, i8* %AL.i524, align 1
  store %struct.Memory* %loadMem_48b070, %struct.Memory** %MEMORY
  %loadMem1_48b072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 33
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %PC.i522
  %3740 = add i64 %3739, -234178
  %3741 = load i64, i64* %PC.i522
  %3742 = add i64 %3741, 5
  %3743 = load i64, i64* %PC.i522
  %3744 = add i64 %3743, 5
  store i64 %3744, i64* %PC.i522
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3746 = load i64, i64* %3745, align 8
  %3747 = add i64 %3746, -8
  %3748 = inttoptr i64 %3747 to i64*
  store i64 %3742, i64* %3748
  store i64 %3747, i64* %3745, align 8
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3740, i64* %3749, align 8
  store %struct.Memory* %loadMem1_48b072, %struct.Memory** %MEMORY
  %loadMem2_48b072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b072 = load i64, i64* %3
  %call2_48b072 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b072, %struct.Memory* %loadMem2_48b072)
  store %struct.Memory* %call2_48b072, %struct.Memory** %MEMORY
  %loadMem_48b077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 33
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3752 to i64*
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 1
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %EAX.i520 = bitcast %union.anon* %3755 to i32*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 15
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %3758 to i64*
  %3759 = load i64, i64* %RBP.i521
  %3760 = sub i64 %3759, 84
  %3761 = load i32, i32* %EAX.i520
  %3762 = zext i32 %3761 to i64
  %3763 = load i64, i64* %PC.i519
  %3764 = add i64 %3763, 3
  store i64 %3764, i64* %PC.i519
  %3765 = inttoptr i64 %3760 to i32*
  store i32 %3761, i32* %3765
  store %struct.Memory* %loadMem_48b077, %struct.Memory** %MEMORY
  br label %block_.L_48b07a

block_.L_48b07a:                                  ; preds = %block_.L_48b066, %block_48af7b
  %loadMem_48b07a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 1
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %3771 to i64*
  %3772 = load i64, i64* %PC.i517
  %3773 = add i64 %3772, 10
  store i64 %3773, i64* %PC.i517
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_48b07a, %struct.Memory** %MEMORY
  %loadMem_48b084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 5
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 15
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %3782 to i64*
  %3783 = load i64, i64* %RBP.i516
  %3784 = sub i64 %3783, 12
  %3785 = load i64, i64* %PC.i514
  %3786 = add i64 %3785, 4
  store i64 %3786, i64* %PC.i514
  %3787 = inttoptr i64 %3784 to i32*
  %3788 = load i32, i32* %3787
  %3789 = sext i32 %3788 to i64
  store i64 %3789, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_48b084, %struct.Memory** %MEMORY
  %loadMem_48b088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 33
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3792 to i64*
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 5
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %3795 to i64*
  %3796 = load i64, i64* %RCX.i513
  %3797 = load i64, i64* %PC.i512
  %3798 = add i64 %3797, 7
  store i64 %3798, i64* %PC.i512
  %3799 = sext i64 %3796 to i128
  %3800 = and i128 %3799, -18446744073709551616
  %3801 = zext i64 %3796 to i128
  %3802 = or i128 %3800, %3801
  %3803 = mul i128 380, %3802
  %3804 = trunc i128 %3803 to i64
  store i64 %3804, i64* %RCX.i513, align 8
  %3805 = sext i64 %3804 to i128
  %3806 = icmp ne i128 %3805, %3803
  %3807 = zext i1 %3806 to i8
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3807, i8* %3808, align 1
  %3809 = trunc i128 %3803 to i32
  %3810 = and i32 %3809, 255
  %3811 = call i32 @llvm.ctpop.i32(i32 %3810)
  %3812 = trunc i32 %3811 to i8
  %3813 = and i8 %3812, 1
  %3814 = xor i8 %3813, 1
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3814, i8* %3815, align 1
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3816, align 1
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3817, align 1
  %3818 = lshr i64 %3804, 63
  %3819 = trunc i64 %3818 to i8
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3819, i8* %3820, align 1
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3807, i8* %3821, align 1
  store %struct.Memory* %loadMem_48b088, %struct.Memory** %MEMORY
  %loadMem_48b08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 33
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 1
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 5
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %3830 to i64*
  %3831 = load i64, i64* %RAX.i510
  %3832 = load i64, i64* %RCX.i511
  %3833 = load i64, i64* %PC.i509
  %3834 = add i64 %3833, 3
  store i64 %3834, i64* %PC.i509
  %3835 = add i64 %3832, %3831
  store i64 %3835, i64* %RAX.i510, align 8
  %3836 = icmp ult i64 %3835, %3831
  %3837 = icmp ult i64 %3835, %3832
  %3838 = or i1 %3836, %3837
  %3839 = zext i1 %3838 to i8
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3839, i8* %3840, align 1
  %3841 = trunc i64 %3835 to i32
  %3842 = and i32 %3841, 255
  %3843 = call i32 @llvm.ctpop.i32(i32 %3842)
  %3844 = trunc i32 %3843 to i8
  %3845 = and i8 %3844, 1
  %3846 = xor i8 %3845, 1
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3846, i8* %3847, align 1
  %3848 = xor i64 %3832, %3831
  %3849 = xor i64 %3848, %3835
  %3850 = lshr i64 %3849, 4
  %3851 = trunc i64 %3850 to i8
  %3852 = and i8 %3851, 1
  %3853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3852, i8* %3853, align 1
  %3854 = icmp eq i64 %3835, 0
  %3855 = zext i1 %3854 to i8
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3855, i8* %3856, align 1
  %3857 = lshr i64 %3835, 63
  %3858 = trunc i64 %3857 to i8
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3858, i8* %3859, align 1
  %3860 = lshr i64 %3831, 63
  %3861 = lshr i64 %3832, 63
  %3862 = xor i64 %3857, %3860
  %3863 = xor i64 %3857, %3861
  %3864 = add i64 %3862, %3863
  %3865 = icmp eq i64 %3864, 2
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3866, i8* %3867, align 1
  store %struct.Memory* %loadMem_48b08f, %struct.Memory** %MEMORY
  %loadMem_48b092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 1
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %RAX.i508
  %3875 = add i64 %3874, 220
  %3876 = load i64, i64* %PC.i507
  %3877 = add i64 %3876, 7
  store i64 %3877, i64* %PC.i507
  %3878 = inttoptr i64 %3875 to i32*
  %3879 = load i32, i32* %3878
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3880, align 1
  %3881 = and i32 %3879, 255
  %3882 = call i32 @llvm.ctpop.i32(i32 %3881)
  %3883 = trunc i32 %3882 to i8
  %3884 = and i8 %3883, 1
  %3885 = xor i8 %3884, 1
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3885, i8* %3886, align 1
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3887, align 1
  %3888 = icmp eq i32 %3879, 0
  %3889 = zext i1 %3888 to i8
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3889, i8* %3890, align 1
  %3891 = lshr i32 %3879, 31
  %3892 = trunc i32 %3891 to i8
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3892, i8* %3893, align 1
  %3894 = lshr i32 %3879, 31
  %3895 = xor i32 %3891, %3894
  %3896 = add i32 %3895, %3894
  %3897 = icmp eq i32 %3896, 2
  %3898 = zext i1 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3898, i8* %3899, align 1
  store %struct.Memory* %loadMem_48b092, %struct.Memory** %MEMORY
  %loadMem_48b099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %PC.i506
  %3904 = add i64 %3903, 31
  %3905 = load i64, i64* %PC.i506
  %3906 = add i64 %3905, 6
  %3907 = load i64, i64* %PC.i506
  %3908 = add i64 %3907, 6
  store i64 %3908, i64* %PC.i506
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3910 = load i8, i8* %3909, align 1
  %3911 = icmp eq i8 %3910, 0
  %3912 = zext i1 %3911 to i8
  store i8 %3912, i8* %BRANCH_TAKEN, align 1
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3914 = select i1 %3911, i64 %3904, i64 %3906
  store i64 %3914, i64* %3913, align 8
  store %struct.Memory* %loadMem_48b099, %struct.Memory** %MEMORY
  %loadBr_48b099 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b099 = icmp eq i8 %loadBr_48b099, 1
  br i1 %cmpBr_48b099, label %block_.L_48b0b8, label %block_48b09f

block_48b09f:                                     ; preds = %block_.L_48b07a
  %loadMem_48b09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 33
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3917 to i64*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 11
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %RDI.i505 = bitcast %union.anon* %3920 to i64*
  %3921 = load i64, i64* %PC.i504
  %3922 = add i64 %3921, 10
  store i64 %3922, i64* %PC.i504
  store i64 ptrtoint (%G__0x58342a_type* @G__0x58342a to i64), i64* %RDI.i505, align 8
  store %struct.Memory* %loadMem_48b09f, %struct.Memory** %MEMORY
  %loadMem_48b0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 1
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %3929 = bitcast %union.anon* %3928 to %struct.anon.2*
  %AL.i503 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3929, i32 0, i32 0
  %3930 = load i64, i64* %PC.i502
  %3931 = add i64 %3930, 2
  store i64 %3931, i64* %PC.i502
  store i8 0, i8* %AL.i503, align 1
  store %struct.Memory* %loadMem_48b0a9, %struct.Memory** %MEMORY
  %loadMem1_48b0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %PC.i501
  %3936 = add i64 %3935, -234235
  %3937 = load i64, i64* %PC.i501
  %3938 = add i64 %3937, 5
  %3939 = load i64, i64* %PC.i501
  %3940 = add i64 %3939, 5
  store i64 %3940, i64* %PC.i501
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3942 = load i64, i64* %3941, align 8
  %3943 = add i64 %3942, -8
  %3944 = inttoptr i64 %3943 to i64*
  store i64 %3938, i64* %3944
  store i64 %3943, i64* %3941, align 8
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3936, i64* %3945, align 8
  store %struct.Memory* %loadMem1_48b0ab, %struct.Memory** %MEMORY
  %loadMem2_48b0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b0ab = load i64, i64* %3
  %call2_48b0ab = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b0ab, %struct.Memory* %loadMem2_48b0ab)
  store %struct.Memory* %call2_48b0ab, %struct.Memory** %MEMORY
  %loadMem_48b0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 1
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %EAX.i499 = bitcast %union.anon* %3951 to i32*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 15
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %RBP.i500
  %3956 = sub i64 %3955, 88
  %3957 = load i32, i32* %EAX.i499
  %3958 = zext i32 %3957 to i64
  %3959 = load i64, i64* %PC.i498
  %3960 = add i64 %3959, 3
  store i64 %3960, i64* %PC.i498
  %3961 = inttoptr i64 %3956 to i32*
  store i32 %3957, i32* %3961
  store %struct.Memory* %loadMem_48b0b0, %struct.Memory** %MEMORY
  %loadMem_48b0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 33
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %PC.i497
  %3966 = add i64 %3965, 235
  %3967 = load i64, i64* %PC.i497
  %3968 = add i64 %3967, 5
  store i64 %3968, i64* %PC.i497
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3966, i64* %3969, align 8
  store %struct.Memory* %loadMem_48b0b3, %struct.Memory** %MEMORY
  br label %block_.L_48b19e

block_.L_48b0b8:                                  ; preds = %block_.L_48b07a
  %loadMem_48b0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 33
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 11
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RDI.i496 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %PC.i495
  %3977 = add i64 %3976, 10
  store i64 %3977, i64* %PC.i495
  store i64 ptrtoint (%G__0x583443_type* @G__0x583443 to i64), i64* %RDI.i496, align 8
  store %struct.Memory* %loadMem_48b0b8, %struct.Memory** %MEMORY
  %loadMem_48b0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 33
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3980 to i64*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 1
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %3984 = bitcast %union.anon* %3983 to %struct.anon.2*
  %AL.i494 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3984, i32 0, i32 0
  %3985 = load i64, i64* %PC.i493
  %3986 = add i64 %3985, 2
  store i64 %3986, i64* %PC.i493
  store i8 0, i8* %AL.i494, align 1
  store %struct.Memory* %loadMem_48b0c2, %struct.Memory** %MEMORY
  %loadMem1_48b0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3989 to i64*
  %3990 = load i64, i64* %PC.i492
  %3991 = add i64 %3990, -234260
  %3992 = load i64, i64* %PC.i492
  %3993 = add i64 %3992, 5
  %3994 = load i64, i64* %PC.i492
  %3995 = add i64 %3994, 5
  store i64 %3995, i64* %PC.i492
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3997 = load i64, i64* %3996, align 8
  %3998 = add i64 %3997, -8
  %3999 = inttoptr i64 %3998 to i64*
  store i64 %3993, i64* %3999
  store i64 %3998, i64* %3996, align 8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3991, i64* %4000, align 8
  store %struct.Memory* %loadMem1_48b0c4, %struct.Memory** %MEMORY
  %loadMem2_48b0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b0c4 = load i64, i64* %3
  %call2_48b0c4 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b0c4, %struct.Memory* %loadMem2_48b0c4)
  store %struct.Memory* %call2_48b0c4, %struct.Memory** %MEMORY
  %loadMem_48b0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 33
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 15
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %4006 to i64*
  %4007 = load i64, i64* %RBP.i491
  %4008 = sub i64 %4007, 16
  %4009 = load i64, i64* %PC.i490
  %4010 = add i64 %4009, 7
  store i64 %4010, i64* %PC.i490
  %4011 = inttoptr i64 %4008 to i32*
  store i32 0, i32* %4011
  store %struct.Memory* %loadMem_48b0c9, %struct.Memory** %MEMORY
  %loadMem_48b0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 1
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %EAX.i488 = bitcast %union.anon* %4017 to i32*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 15
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %4020 to i64*
  %4021 = load i64, i64* %RBP.i489
  %4022 = sub i64 %4021, 92
  %4023 = load i32, i32* %EAX.i488
  %4024 = zext i32 %4023 to i64
  %4025 = load i64, i64* %PC.i487
  %4026 = add i64 %4025, 3
  store i64 %4026, i64* %PC.i487
  %4027 = inttoptr i64 %4022 to i32*
  store i32 %4023, i32* %4027
  store %struct.Memory* %loadMem_48b0d0, %struct.Memory** %MEMORY
  br label %block_.L_48b0d3

block_.L_48b0d3:                                  ; preds = %block_.L_48b11b, %block_.L_48b0b8
  %loadMem_48b0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 33
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 1
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RAX.i486 = bitcast %union.anon* %4033 to i64*
  %4034 = load i64, i64* %PC.i485
  %4035 = add i64 %4034, 10
  store i64 %4035, i64* %PC.i485
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i486, align 8
  store %struct.Memory* %loadMem_48b0d3, %struct.Memory** %MEMORY
  %loadMem_48b0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 33
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %4038 to i64*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 5
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %4041 to i64*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 15
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %4044 to i64*
  %4045 = load i64, i64* %RBP.i484
  %4046 = sub i64 %4045, 12
  %4047 = load i64, i64* %PC.i482
  %4048 = add i64 %4047, 4
  store i64 %4048, i64* %PC.i482
  %4049 = inttoptr i64 %4046 to i32*
  %4050 = load i32, i32* %4049
  %4051 = sext i32 %4050 to i64
  store i64 %4051, i64* %RCX.i483, align 8
  store %struct.Memory* %loadMem_48b0dd, %struct.Memory** %MEMORY
  %loadMem_48b0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 33
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %4054 to i64*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 5
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %RCX.i481 = bitcast %union.anon* %4057 to i64*
  %4058 = load i64, i64* %RCX.i481
  %4059 = load i64, i64* %PC.i480
  %4060 = add i64 %4059, 7
  store i64 %4060, i64* %PC.i480
  %4061 = sext i64 %4058 to i128
  %4062 = and i128 %4061, -18446744073709551616
  %4063 = zext i64 %4058 to i128
  %4064 = or i128 %4062, %4063
  %4065 = mul i128 380, %4064
  %4066 = trunc i128 %4065 to i64
  store i64 %4066, i64* %RCX.i481, align 8
  %4067 = sext i64 %4066 to i128
  %4068 = icmp ne i128 %4067, %4065
  %4069 = zext i1 %4068 to i8
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4069, i8* %4070, align 1
  %4071 = trunc i128 %4065 to i32
  %4072 = and i32 %4071, 255
  %4073 = call i32 @llvm.ctpop.i32(i32 %4072)
  %4074 = trunc i32 %4073 to i8
  %4075 = and i8 %4074, 1
  %4076 = xor i8 %4075, 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4076, i8* %4077, align 1
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4078, align 1
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4079, align 1
  %4080 = lshr i64 %4066, 63
  %4081 = trunc i64 %4080 to i8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4081, i8* %4082, align 1
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4069, i8* %4083, align 1
  store %struct.Memory* %loadMem_48b0e1, %struct.Memory** %MEMORY
  %loadMem_48b0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4085 = getelementptr inbounds %struct.GPR, %struct.GPR* %4084, i32 0, i32 33
  %4086 = getelementptr inbounds %struct.Reg, %struct.Reg* %4085, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4086 to i64*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 1
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 5
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %RAX.i478
  %4094 = load i64, i64* %RCX.i479
  %4095 = load i64, i64* %PC.i477
  %4096 = add i64 %4095, 3
  store i64 %4096, i64* %PC.i477
  %4097 = add i64 %4094, %4093
  store i64 %4097, i64* %RAX.i478, align 8
  %4098 = icmp ult i64 %4097, %4093
  %4099 = icmp ult i64 %4097, %4094
  %4100 = or i1 %4098, %4099
  %4101 = zext i1 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4101, i8* %4102, align 1
  %4103 = trunc i64 %4097 to i32
  %4104 = and i32 %4103, 255
  %4105 = call i32 @llvm.ctpop.i32(i32 %4104)
  %4106 = trunc i32 %4105 to i8
  %4107 = and i8 %4106, 1
  %4108 = xor i8 %4107, 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4108, i8* %4109, align 1
  %4110 = xor i64 %4094, %4093
  %4111 = xor i64 %4110, %4097
  %4112 = lshr i64 %4111, 4
  %4113 = trunc i64 %4112 to i8
  %4114 = and i8 %4113, 1
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4114, i8* %4115, align 1
  %4116 = icmp eq i64 %4097, 0
  %4117 = zext i1 %4116 to i8
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4117, i8* %4118, align 1
  %4119 = lshr i64 %4097, 63
  %4120 = trunc i64 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4120, i8* %4121, align 1
  %4122 = lshr i64 %4093, 63
  %4123 = lshr i64 %4094, 63
  %4124 = xor i64 %4119, %4122
  %4125 = xor i64 %4119, %4123
  %4126 = add i64 %4124, %4125
  %4127 = icmp eq i64 %4126, 2
  %4128 = zext i1 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4128, i8* %4129, align 1
  store %struct.Memory* %loadMem_48b0e8, %struct.Memory** %MEMORY
  %loadMem_48b0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %4132 to i64*
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 5
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 15
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %4138 to i64*
  %4139 = load i64, i64* %RBP.i476
  %4140 = sub i64 %4139, 16
  %4141 = load i64, i64* %PC.i474
  %4142 = add i64 %4141, 4
  store i64 %4142, i64* %PC.i474
  %4143 = inttoptr i64 %4140 to i32*
  %4144 = load i32, i32* %4143
  %4145 = sext i32 %4144 to i64
  store i64 %4145, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_48b0eb, %struct.Memory** %MEMORY
  %loadMem_48b0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 33
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 1
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 5
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %4154 to i64*
  %4155 = load i64, i64* %RAX.i472
  %4156 = load i64, i64* %RCX.i473
  %4157 = mul i64 %4156, 4
  %4158 = add i64 %4155, 220
  %4159 = add i64 %4158, %4157
  %4160 = load i64, i64* %PC.i471
  %4161 = add i64 %4160, 8
  store i64 %4161, i64* %PC.i471
  %4162 = inttoptr i64 %4159 to i32*
  %4163 = load i32, i32* %4162
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4164, align 1
  %4165 = and i32 %4163, 255
  %4166 = call i32 @llvm.ctpop.i32(i32 %4165)
  %4167 = trunc i32 %4166 to i8
  %4168 = and i8 %4167, 1
  %4169 = xor i8 %4168, 1
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4169, i8* %4170, align 1
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4171, align 1
  %4172 = icmp eq i32 %4163, 0
  %4173 = zext i1 %4172 to i8
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4173, i8* %4174, align 1
  %4175 = lshr i32 %4163, 31
  %4176 = trunc i32 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4176, i8* %4177, align 1
  %4178 = lshr i32 %4163, 31
  %4179 = xor i32 %4175, %4178
  %4180 = add i32 %4179, %4178
  %4181 = icmp eq i32 %4180, 2
  %4182 = zext i1 %4181 to i8
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4182, i8* %4183, align 1
  store %struct.Memory* %loadMem_48b0ef, %struct.Memory** %MEMORY
  %loadMem_48b0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4186 to i64*
  %4187 = load i64, i64* %PC.i470
  %4188 = add i64 %4187, 147
  %4189 = load i64, i64* %PC.i470
  %4190 = add i64 %4189, 6
  %4191 = load i64, i64* %PC.i470
  %4192 = add i64 %4191, 6
  store i64 %4192, i64* %PC.i470
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4194 = load i8, i8* %4193, align 1
  store i8 %4194, i8* %BRANCH_TAKEN, align 1
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4196 = icmp ne i8 %4194, 0
  %4197 = select i1 %4196, i64 %4188, i64 %4190
  store i64 %4197, i64* %4195, align 8
  store %struct.Memory* %loadMem_48b0f7, %struct.Memory** %MEMORY
  %loadBr_48b0f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b0f7 = icmp eq i8 %loadBr_48b0f7, 1
  br i1 %cmpBr_48b0f7, label %block_.L_48b18a, label %block_48b0fd

block_48b0fd:                                     ; preds = %block_.L_48b0d3
  %loadMem_48b0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4199 = getelementptr inbounds %struct.GPR, %struct.GPR* %4198, i32 0, i32 33
  %4200 = getelementptr inbounds %struct.Reg, %struct.Reg* %4199, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4200 to i64*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 15
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4203 to i64*
  %4204 = load i64, i64* %RBP.i469
  %4205 = sub i64 %4204, 16
  %4206 = load i64, i64* %PC.i468
  %4207 = add i64 %4206, 4
  store i64 %4207, i64* %PC.i468
  %4208 = inttoptr i64 %4205 to i32*
  %4209 = load i32, i32* %4208
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4210, align 1
  %4211 = and i32 %4209, 255
  %4212 = call i32 @llvm.ctpop.i32(i32 %4211)
  %4213 = trunc i32 %4212 to i8
  %4214 = and i8 %4213, 1
  %4215 = xor i8 %4214, 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4215, i8* %4216, align 1
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4217, align 1
  %4218 = icmp eq i32 %4209, 0
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4219, i8* %4220, align 1
  %4221 = lshr i32 %4209, 31
  %4222 = trunc i32 %4221 to i8
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4222, i8* %4223, align 1
  %4224 = lshr i32 %4209, 31
  %4225 = xor i32 %4221, %4224
  %4226 = add i32 %4225, %4224
  %4227 = icmp eq i32 %4226, 2
  %4228 = zext i1 %4227 to i8
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4228, i8* %4229, align 1
  store %struct.Memory* %loadMem_48b0fd, %struct.Memory** %MEMORY
  %loadMem_48b101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %PC.i467
  %4234 = add i64 %4233, 26
  %4235 = load i64, i64* %PC.i467
  %4236 = add i64 %4235, 6
  %4237 = load i64, i64* %PC.i467
  %4238 = add i64 %4237, 6
  store i64 %4238, i64* %PC.i467
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4240 = load i8, i8* %4239, align 1
  %4241 = icmp ne i8 %4240, 0
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4243 = load i8, i8* %4242, align 1
  %4244 = icmp ne i8 %4243, 0
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4246 = load i8, i8* %4245, align 1
  %4247 = icmp ne i8 %4246, 0
  %4248 = xor i1 %4244, %4247
  %4249 = or i1 %4241, %4248
  %4250 = zext i1 %4249 to i8
  store i8 %4250, i8* %BRANCH_TAKEN, align 1
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4252 = select i1 %4249, i64 %4234, i64 %4236
  store i64 %4252, i64* %4251, align 8
  store %struct.Memory* %loadMem_48b101, %struct.Memory** %MEMORY
  %loadBr_48b101 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b101 = icmp eq i8 %loadBr_48b101, 1
  br i1 %cmpBr_48b101, label %block_.L_48b11b, label %block_48b107

block_48b107:                                     ; preds = %block_48b0fd
  %loadMem_48b107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 33
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 11
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %RDI.i466 = bitcast %union.anon* %4258 to i64*
  %4259 = load i64, i64* %PC.i465
  %4260 = add i64 %4259, 10
  store i64 %4260, i64* %PC.i465
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i466, align 8
  store %struct.Memory* %loadMem_48b107, %struct.Memory** %MEMORY
  %loadMem_48b111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 33
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %4263 to i64*
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 1
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %4267 = bitcast %union.anon* %4266 to %struct.anon.2*
  %AL.i464 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4267, i32 0, i32 0
  %4268 = load i64, i64* %PC.i463
  %4269 = add i64 %4268, 2
  store i64 %4269, i64* %PC.i463
  store i8 0, i8* %AL.i464, align 1
  store %struct.Memory* %loadMem_48b111, %struct.Memory** %MEMORY
  %loadMem1_48b113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4272 to i64*
  %4273 = load i64, i64* %PC.i462
  %4274 = add i64 %4273, -234339
  %4275 = load i64, i64* %PC.i462
  %4276 = add i64 %4275, 5
  %4277 = load i64, i64* %PC.i462
  %4278 = add i64 %4277, 5
  store i64 %4278, i64* %PC.i462
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4280 = load i64, i64* %4279, align 8
  %4281 = add i64 %4280, -8
  %4282 = inttoptr i64 %4281 to i64*
  store i64 %4276, i64* %4282
  store i64 %4281, i64* %4279, align 8
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4274, i64* %4283, align 8
  store %struct.Memory* %loadMem1_48b113, %struct.Memory** %MEMORY
  %loadMem2_48b113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b113 = load i64, i64* %3
  %call2_48b113 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b113, %struct.Memory* %loadMem2_48b113)
  store %struct.Memory* %call2_48b113, %struct.Memory** %MEMORY
  %loadMem_48b118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 1
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %4289 to i32*
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 15
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4292 to i64*
  %4293 = load i64, i64* %RBP.i461
  %4294 = sub i64 %4293, 96
  %4295 = load i32, i32* %EAX.i460
  %4296 = zext i32 %4295 to i64
  %4297 = load i64, i64* %PC.i459
  %4298 = add i64 %4297, 3
  store i64 %4298, i64* %PC.i459
  %4299 = inttoptr i64 %4294 to i32*
  store i32 %4295, i32* %4299
  store %struct.Memory* %loadMem_48b118, %struct.Memory** %MEMORY
  br label %block_.L_48b11b

block_.L_48b11b:                                  ; preds = %block_48b107, %block_48b0fd
  %loadMem_48b11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 1
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %PC.i457
  %4307 = add i64 %4306, 10
  store i64 %4307, i64* %PC.i457
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_48b11b, %struct.Memory** %MEMORY
  %loadMem_48b125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 33
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4310 to i64*
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 5
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 15
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %4316 to i64*
  %4317 = load i64, i64* %RBP.i456
  %4318 = sub i64 %4317, 12
  %4319 = load i64, i64* %PC.i454
  %4320 = add i64 %4319, 4
  store i64 %4320, i64* %PC.i454
  %4321 = inttoptr i64 %4318 to i32*
  %4322 = load i32, i32* %4321
  %4323 = sext i32 %4322 to i64
  store i64 %4323, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_48b125, %struct.Memory** %MEMORY
  %loadMem_48b129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 33
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 5
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %4329 to i64*
  %4330 = load i64, i64* %RCX.i453
  %4331 = load i64, i64* %PC.i452
  %4332 = add i64 %4331, 7
  store i64 %4332, i64* %PC.i452
  %4333 = sext i64 %4330 to i128
  %4334 = and i128 %4333, -18446744073709551616
  %4335 = zext i64 %4330 to i128
  %4336 = or i128 %4334, %4335
  %4337 = mul i128 380, %4336
  %4338 = trunc i128 %4337 to i64
  store i64 %4338, i64* %RCX.i453, align 8
  %4339 = sext i64 %4338 to i128
  %4340 = icmp ne i128 %4339, %4337
  %4341 = zext i1 %4340 to i8
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4341, i8* %4342, align 1
  %4343 = trunc i128 %4337 to i32
  %4344 = and i32 %4343, 255
  %4345 = call i32 @llvm.ctpop.i32(i32 %4344)
  %4346 = trunc i32 %4345 to i8
  %4347 = and i8 %4346, 1
  %4348 = xor i8 %4347, 1
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4348, i8* %4349, align 1
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4350, align 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4351, align 1
  %4352 = lshr i64 %4338, 63
  %4353 = trunc i64 %4352 to i8
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4353, i8* %4354, align 1
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4341, i8* %4355, align 1
  store %struct.Memory* %loadMem_48b129, %struct.Memory** %MEMORY
  %loadMem_48b130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 33
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 1
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 7
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RDX.i451 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RAX.i450
  %4366 = load i64, i64* %PC.i449
  %4367 = add i64 %4366, 3
  store i64 %4367, i64* %PC.i449
  store i64 %4365, i64* %RDX.i451, align 8
  store %struct.Memory* %loadMem_48b130, %struct.Memory** %MEMORY
  %loadMem_48b133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 5
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 7
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %4376 to i64*
  %4377 = load i64, i64* %RDX.i448
  %4378 = load i64, i64* %RCX.i447
  %4379 = load i64, i64* %PC.i446
  %4380 = add i64 %4379, 3
  store i64 %4380, i64* %PC.i446
  %4381 = add i64 %4378, %4377
  store i64 %4381, i64* %RDX.i448, align 8
  %4382 = icmp ult i64 %4381, %4377
  %4383 = icmp ult i64 %4381, %4378
  %4384 = or i1 %4382, %4383
  %4385 = zext i1 %4384 to i8
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4385, i8* %4386, align 1
  %4387 = trunc i64 %4381 to i32
  %4388 = and i32 %4387, 255
  %4389 = call i32 @llvm.ctpop.i32(i32 %4388)
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4392, i8* %4393, align 1
  %4394 = xor i64 %4378, %4377
  %4395 = xor i64 %4394, %4381
  %4396 = lshr i64 %4395, 4
  %4397 = trunc i64 %4396 to i8
  %4398 = and i8 %4397, 1
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4398, i8* %4399, align 1
  %4400 = icmp eq i64 %4381, 0
  %4401 = zext i1 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4401, i8* %4402, align 1
  %4403 = lshr i64 %4381, 63
  %4404 = trunc i64 %4403 to i8
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4404, i8* %4405, align 1
  %4406 = lshr i64 %4377, 63
  %4407 = lshr i64 %4378, 63
  %4408 = xor i64 %4403, %4406
  %4409 = xor i64 %4403, %4407
  %4410 = add i64 %4408, %4409
  %4411 = icmp eq i64 %4410, 2
  %4412 = zext i1 %4411 to i8
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4412, i8* %4413, align 1
  store %struct.Memory* %loadMem_48b133, %struct.Memory** %MEMORY
  %loadMem_48b136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4415 = getelementptr inbounds %struct.GPR, %struct.GPR* %4414, i32 0, i32 33
  %4416 = getelementptr inbounds %struct.Reg, %struct.Reg* %4415, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4416 to i64*
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4418 = getelementptr inbounds %struct.GPR, %struct.GPR* %4417, i32 0, i32 5
  %4419 = getelementptr inbounds %struct.Reg, %struct.Reg* %4418, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %4419 to i64*
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 15
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %RBP.i445
  %4424 = sub i64 %4423, 16
  %4425 = load i64, i64* %PC.i443
  %4426 = add i64 %4425, 4
  store i64 %4426, i64* %PC.i443
  %4427 = inttoptr i64 %4424 to i32*
  %4428 = load i32, i32* %4427
  %4429 = sext i32 %4428 to i64
  store i64 %4429, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_48b136, %struct.Memory** %MEMORY
  %loadMem_48b13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 5
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 7
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RDX.i441 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 9
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RSI.i442 = bitcast %union.anon* %4441 to i64*
  %4442 = load i64, i64* %RDX.i441
  %4443 = load i64, i64* %RCX.i440
  %4444 = mul i64 %4443, 4
  %4445 = add i64 %4442, 220
  %4446 = add i64 %4445, %4444
  %4447 = load i64, i64* %PC.i439
  %4448 = add i64 %4447, 7
  store i64 %4448, i64* %PC.i439
  %4449 = inttoptr i64 %4446 to i32*
  %4450 = load i32, i32* %4449
  %4451 = zext i32 %4450 to i64
  store i64 %4451, i64* %RSI.i442, align 8
  store %struct.Memory* %loadMem_48b13a, %struct.Memory** %MEMORY
  %loadMem_48b141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4454 to i64*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 5
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %4457 to i64*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 15
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4460 to i64*
  %4461 = load i64, i64* %RBP.i438
  %4462 = sub i64 %4461, 12
  %4463 = load i64, i64* %PC.i436
  %4464 = add i64 %4463, 4
  store i64 %4464, i64* %PC.i436
  %4465 = inttoptr i64 %4462 to i32*
  %4466 = load i32, i32* %4465
  %4467 = sext i32 %4466 to i64
  store i64 %4467, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_48b141, %struct.Memory** %MEMORY
  %loadMem_48b145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 33
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4470 to i64*
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 5
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %4473 to i64*
  %4474 = load i64, i64* %RCX.i435
  %4475 = load i64, i64* %PC.i434
  %4476 = add i64 %4475, 7
  store i64 %4476, i64* %PC.i434
  %4477 = sext i64 %4474 to i128
  %4478 = and i128 %4477, -18446744073709551616
  %4479 = zext i64 %4474 to i128
  %4480 = or i128 %4478, %4479
  %4481 = mul i128 380, %4480
  %4482 = trunc i128 %4481 to i64
  store i64 %4482, i64* %RCX.i435, align 8
  %4483 = sext i64 %4482 to i128
  %4484 = icmp ne i128 %4483, %4481
  %4485 = zext i1 %4484 to i8
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4485, i8* %4486, align 1
  %4487 = trunc i128 %4481 to i32
  %4488 = and i32 %4487, 255
  %4489 = call i32 @llvm.ctpop.i32(i32 %4488)
  %4490 = trunc i32 %4489 to i8
  %4491 = and i8 %4490, 1
  %4492 = xor i8 %4491, 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4492, i8* %4493, align 1
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4494, align 1
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4495, align 1
  %4496 = lshr i64 %4482, 63
  %4497 = trunc i64 %4496 to i8
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4497, i8* %4498, align 1
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4485, i8* %4499, align 1
  store %struct.Memory* %loadMem_48b145, %struct.Memory** %MEMORY
  %loadMem_48b14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 33
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4502 to i64*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 1
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 5
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %4508 to i64*
  %4509 = load i64, i64* %RAX.i432
  %4510 = load i64, i64* %RCX.i433
  %4511 = load i64, i64* %PC.i431
  %4512 = add i64 %4511, 3
  store i64 %4512, i64* %PC.i431
  %4513 = add i64 %4510, %4509
  store i64 %4513, i64* %RAX.i432, align 8
  %4514 = icmp ult i64 %4513, %4509
  %4515 = icmp ult i64 %4513, %4510
  %4516 = or i1 %4514, %4515
  %4517 = zext i1 %4516 to i8
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4517, i8* %4518, align 1
  %4519 = trunc i64 %4513 to i32
  %4520 = and i32 %4519, 255
  %4521 = call i32 @llvm.ctpop.i32(i32 %4520)
  %4522 = trunc i32 %4521 to i8
  %4523 = and i8 %4522, 1
  %4524 = xor i8 %4523, 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4524, i8* %4525, align 1
  %4526 = xor i64 %4510, %4509
  %4527 = xor i64 %4526, %4513
  %4528 = lshr i64 %4527, 4
  %4529 = trunc i64 %4528 to i8
  %4530 = and i8 %4529, 1
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4530, i8* %4531, align 1
  %4532 = icmp eq i64 %4513, 0
  %4533 = zext i1 %4532 to i8
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4533, i8* %4534, align 1
  %4535 = lshr i64 %4513, 63
  %4536 = trunc i64 %4535 to i8
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4536, i8* %4537, align 1
  %4538 = lshr i64 %4509, 63
  %4539 = lshr i64 %4510, 63
  %4540 = xor i64 %4535, %4538
  %4541 = xor i64 %4535, %4539
  %4542 = add i64 %4540, %4541
  %4543 = icmp eq i64 %4542, 2
  %4544 = zext i1 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4544, i8* %4545, align 1
  store %struct.Memory* %loadMem_48b14c, %struct.Memory** %MEMORY
  %loadMem_48b14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 33
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 5
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %RCX.i429 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 15
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %4554 to i64*
  %4555 = load i64, i64* %RBP.i430
  %4556 = sub i64 %4555, 16
  %4557 = load i64, i64* %PC.i428
  %4558 = add i64 %4557, 4
  store i64 %4558, i64* %PC.i428
  %4559 = inttoptr i64 %4556 to i32*
  %4560 = load i32, i32* %4559
  %4561 = sext i32 %4560 to i64
  store i64 %4561, i64* %RCX.i429, align 8
  store %struct.Memory* %loadMem_48b14f, %struct.Memory** %MEMORY
  %loadMem_48b153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 33
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4564 to i64*
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 1
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 5
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 11
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RDI.i427 = bitcast %union.anon* %4573 to i64*
  %4574 = load i64, i64* %RAX.i425
  %4575 = load i64, i64* %RCX.i426
  %4576 = mul i64 %4575, 4
  %4577 = add i64 %4574, 260
  %4578 = add i64 %4577, %4576
  %4579 = load i64, i64* %PC.i424
  %4580 = add i64 %4579, 7
  store i64 %4580, i64* %PC.i424
  %4581 = inttoptr i64 %4578 to i32*
  %4582 = load i32, i32* %4581
  %4583 = zext i32 %4582 to i64
  store i64 %4583, i64* %RDI.i427, align 8
  store %struct.Memory* %loadMem_48b153, %struct.Memory** %MEMORY
  %loadMem_48b15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 9
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %ESI.i422 = bitcast %union.anon* %4589 to i32*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 15
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %4592 to i64*
  %4593 = load i64, i64* %RBP.i423
  %4594 = sub i64 %4593, 100
  %4595 = load i32, i32* %ESI.i422
  %4596 = zext i32 %4595 to i64
  %4597 = load i64, i64* %PC.i421
  %4598 = add i64 %4597, 3
  store i64 %4598, i64* %PC.i421
  %4599 = inttoptr i64 %4594 to i32*
  store i32 %4595, i32* %4599
  store %struct.Memory* %loadMem_48b15a, %struct.Memory** %MEMORY
  %loadMem1_48b15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %4602 to i64*
  %4603 = load i64, i64* %PC.i420
  %4604 = add i64 %4603, -231997
  %4605 = load i64, i64* %PC.i420
  %4606 = add i64 %4605, 5
  %4607 = load i64, i64* %PC.i420
  %4608 = add i64 %4607, 5
  store i64 %4608, i64* %PC.i420
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4610 = load i64, i64* %4609, align 8
  %4611 = add i64 %4610, -8
  %4612 = inttoptr i64 %4611 to i64*
  store i64 %4606, i64* %4612
  store i64 %4611, i64* %4609, align 8
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4604, i64* %4613, align 8
  store %struct.Memory* %loadMem1_48b15d, %struct.Memory** %MEMORY
  %loadMem2_48b15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b15d = load i64, i64* %3
  %call2_48b15d = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64 %loadPC_48b15d, %struct.Memory* %loadMem2_48b15d)
  store %struct.Memory* %call2_48b15d, %struct.Memory** %MEMORY
  %loadMem_48b162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 11
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RDI.i419 = bitcast %union.anon* %4619 to i64*
  %4620 = load i64, i64* %PC.i418
  %4621 = add i64 %4620, 10
  store i64 %4621, i64* %PC.i418
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i419, align 8
  store %struct.Memory* %loadMem_48b162, %struct.Memory** %MEMORY
  %loadMem_48b16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 9
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RSI.i416 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 15
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %4630 to i64*
  %4631 = load i64, i64* %RBP.i417
  %4632 = sub i64 %4631, 100
  %4633 = load i64, i64* %PC.i415
  %4634 = add i64 %4633, 3
  store i64 %4634, i64* %PC.i415
  %4635 = inttoptr i64 %4632 to i32*
  %4636 = load i32, i32* %4635
  %4637 = zext i32 %4636 to i64
  store i64 %4637, i64* %RSI.i416, align 8
  store %struct.Memory* %loadMem_48b16c, %struct.Memory** %MEMORY
  %loadMem_48b16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 33
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4640 to i64*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 1
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 7
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RDX.i414 = bitcast %union.anon* %4646 to i64*
  %4647 = load i64, i64* %RAX.i413
  %4648 = load i64, i64* %PC.i412
  %4649 = add i64 %4648, 3
  store i64 %4649, i64* %PC.i412
  store i64 %4647, i64* %RDX.i414, align 8
  store %struct.Memory* %loadMem_48b16f, %struct.Memory** %MEMORY
  %loadMem_48b172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 33
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 1
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %4656 = bitcast %union.anon* %4655 to %struct.anon.2*
  %AL.i411 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4656, i32 0, i32 0
  %4657 = load i64, i64* %PC.i410
  %4658 = add i64 %4657, 2
  store i64 %4658, i64* %PC.i410
  store i8 0, i8* %AL.i411, align 1
  store %struct.Memory* %loadMem_48b172, %struct.Memory** %MEMORY
  %loadMem1_48b174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 33
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4661 to i64*
  %4662 = load i64, i64* %PC.i409
  %4663 = add i64 %4662, -234436
  %4664 = load i64, i64* %PC.i409
  %4665 = add i64 %4664, 5
  %4666 = load i64, i64* %PC.i409
  %4667 = add i64 %4666, 5
  store i64 %4667, i64* %PC.i409
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4669 = load i64, i64* %4668, align 8
  %4670 = add i64 %4669, -8
  %4671 = inttoptr i64 %4670 to i64*
  store i64 %4665, i64* %4671
  store i64 %4670, i64* %4668, align 8
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4663, i64* %4672, align 8
  store %struct.Memory* %loadMem1_48b174, %struct.Memory** %MEMORY
  %loadMem2_48b174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b174 = load i64, i64* %3
  %call2_48b174 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b174, %struct.Memory* %loadMem2_48b174)
  store %struct.Memory* %call2_48b174, %struct.Memory** %MEMORY
  %loadMem_48b179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 9
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RSI.i407 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 15
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4681 to i64*
  %4682 = load i64, i64* %RBP.i408
  %4683 = sub i64 %4682, 16
  %4684 = load i64, i64* %PC.i406
  %4685 = add i64 %4684, 3
  store i64 %4685, i64* %PC.i406
  %4686 = inttoptr i64 %4683 to i32*
  %4687 = load i32, i32* %4686
  %4688 = zext i32 %4687 to i64
  store i64 %4688, i64* %RSI.i407, align 8
  store %struct.Memory* %loadMem_48b179, %struct.Memory** %MEMORY
  %loadMem_48b17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 33
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4691 to i64*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 9
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %RSI.i405 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %RSI.i405
  %4696 = load i64, i64* %PC.i404
  %4697 = add i64 %4696, 3
  store i64 %4697, i64* %PC.i404
  %4698 = trunc i64 %4695 to i32
  %4699 = add i32 1, %4698
  %4700 = zext i32 %4699 to i64
  store i64 %4700, i64* %RSI.i405, align 8
  %4701 = icmp ult i32 %4699, %4698
  %4702 = icmp ult i32 %4699, 1
  %4703 = or i1 %4701, %4702
  %4704 = zext i1 %4703 to i8
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4704, i8* %4705, align 1
  %4706 = and i32 %4699, 255
  %4707 = call i32 @llvm.ctpop.i32(i32 %4706)
  %4708 = trunc i32 %4707 to i8
  %4709 = and i8 %4708, 1
  %4710 = xor i8 %4709, 1
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4710, i8* %4711, align 1
  %4712 = xor i64 1, %4695
  %4713 = trunc i64 %4712 to i32
  %4714 = xor i32 %4713, %4699
  %4715 = lshr i32 %4714, 4
  %4716 = trunc i32 %4715 to i8
  %4717 = and i8 %4716, 1
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4717, i8* %4718, align 1
  %4719 = icmp eq i32 %4699, 0
  %4720 = zext i1 %4719 to i8
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4720, i8* %4721, align 1
  %4722 = lshr i32 %4699, 31
  %4723 = trunc i32 %4722 to i8
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4723, i8* %4724, align 1
  %4725 = lshr i32 %4698, 31
  %4726 = xor i32 %4722, %4725
  %4727 = add i32 %4726, %4722
  %4728 = icmp eq i32 %4727, 2
  %4729 = zext i1 %4728 to i8
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4729, i8* %4730, align 1
  store %struct.Memory* %loadMem_48b17c, %struct.Memory** %MEMORY
  %loadMem_48b17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4733 to i64*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 9
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %ESI.i402 = bitcast %union.anon* %4736 to i32*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 15
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %RBP.i403
  %4741 = sub i64 %4740, 16
  %4742 = load i32, i32* %ESI.i402
  %4743 = zext i32 %4742 to i64
  %4744 = load i64, i64* %PC.i401
  %4745 = add i64 %4744, 3
  store i64 %4745, i64* %PC.i401
  %4746 = inttoptr i64 %4741 to i32*
  store i32 %4742, i32* %4746
  store %struct.Memory* %loadMem_48b17f, %struct.Memory** %MEMORY
  %loadMem_48b182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 33
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4749 to i64*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4751 = getelementptr inbounds %struct.GPR, %struct.GPR* %4750, i32 0, i32 1
  %4752 = getelementptr inbounds %struct.Reg, %struct.Reg* %4751, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %4752 to i32*
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 15
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %4755 to i64*
  %4756 = load i64, i64* %RBP.i400
  %4757 = sub i64 %4756, 104
  %4758 = load i32, i32* %EAX.i399
  %4759 = zext i32 %4758 to i64
  %4760 = load i64, i64* %PC.i398
  %4761 = add i64 %4760, 3
  store i64 %4761, i64* %PC.i398
  %4762 = inttoptr i64 %4757 to i32*
  store i32 %4758, i32* %4762
  store %struct.Memory* %loadMem_48b182, %struct.Memory** %MEMORY
  %loadMem_48b185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 33
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4765 to i64*
  %4766 = load i64, i64* %PC.i397
  %4767 = add i64 %4766, -178
  %4768 = load i64, i64* %PC.i397
  %4769 = add i64 %4768, 5
  store i64 %4769, i64* %PC.i397
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4767, i64* %4770, align 8
  store %struct.Memory* %loadMem_48b185, %struct.Memory** %MEMORY
  br label %block_.L_48b0d3

block_.L_48b18a:                                  ; preds = %block_.L_48b0d3
  %loadMem_48b18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 11
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %RDI.i396 = bitcast %union.anon* %4776 to i64*
  %4777 = load i64, i64* %PC.i395
  %4778 = add i64 %4777, 10
  store i64 %4778, i64* %PC.i395
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i396, align 8
  store %struct.Memory* %loadMem_48b18a, %struct.Memory** %MEMORY
  %loadMem_48b194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 33
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4781 to i64*
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 1
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %4785 = bitcast %union.anon* %4784 to %struct.anon.2*
  %AL.i394 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4785, i32 0, i32 0
  %4786 = load i64, i64* %PC.i393
  %4787 = add i64 %4786, 2
  store i64 %4787, i64* %PC.i393
  store i8 0, i8* %AL.i394, align 1
  store %struct.Memory* %loadMem_48b194, %struct.Memory** %MEMORY
  %loadMem1_48b196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %PC.i392
  %4792 = add i64 %4791, -234470
  %4793 = load i64, i64* %PC.i392
  %4794 = add i64 %4793, 5
  %4795 = load i64, i64* %PC.i392
  %4796 = add i64 %4795, 5
  store i64 %4796, i64* %PC.i392
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4798 = load i64, i64* %4797, align 8
  %4799 = add i64 %4798, -8
  %4800 = inttoptr i64 %4799 to i64*
  store i64 %4794, i64* %4800
  store i64 %4799, i64* %4797, align 8
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4792, i64* %4801, align 8
  store %struct.Memory* %loadMem1_48b196, %struct.Memory** %MEMORY
  %loadMem2_48b196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b196 = load i64, i64* %3
  %call2_48b196 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b196, %struct.Memory* %loadMem2_48b196)
  store %struct.Memory* %call2_48b196, %struct.Memory** %MEMORY
  %loadMem_48b19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 33
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 1
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %4807 to i32*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 15
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4810 to i64*
  %4811 = load i64, i64* %RBP.i391
  %4812 = sub i64 %4811, 108
  %4813 = load i32, i32* %EAX.i390
  %4814 = zext i32 %4813 to i64
  %4815 = load i64, i64* %PC.i389
  %4816 = add i64 %4815, 3
  store i64 %4816, i64* %PC.i389
  %4817 = inttoptr i64 %4812 to i32*
  store i32 %4813, i32* %4817
  store %struct.Memory* %loadMem_48b19b, %struct.Memory** %MEMORY
  br label %block_.L_48b19e

block_.L_48b19e:                                  ; preds = %block_.L_48b18a, %block_48b09f
  %loadMem_48b19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 33
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 1
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %PC.i387
  %4825 = add i64 %4824, 10
  store i64 %4825, i64* %PC.i387
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_48b19e, %struct.Memory** %MEMORY
  %loadMem_48b1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 5
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 15
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RBP.i386
  %4836 = sub i64 %4835, 12
  %4837 = load i64, i64* %PC.i384
  %4838 = add i64 %4837, 4
  store i64 %4838, i64* %PC.i384
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839
  %4841 = sext i32 %4840 to i64
  store i64 %4841, i64* %RCX.i385, align 8
  store %struct.Memory* %loadMem_48b1a8, %struct.Memory** %MEMORY
  %loadMem_48b1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 5
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %4847 to i64*
  %4848 = load i64, i64* %RCX.i383
  %4849 = load i64, i64* %PC.i382
  %4850 = add i64 %4849, 7
  store i64 %4850, i64* %PC.i382
  %4851 = sext i64 %4848 to i128
  %4852 = and i128 %4851, -18446744073709551616
  %4853 = zext i64 %4848 to i128
  %4854 = or i128 %4852, %4853
  %4855 = mul i128 380, %4854
  %4856 = trunc i128 %4855 to i64
  store i64 %4856, i64* %RCX.i383, align 8
  %4857 = sext i64 %4856 to i128
  %4858 = icmp ne i128 %4857, %4855
  %4859 = zext i1 %4858 to i8
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4859, i8* %4860, align 1
  %4861 = trunc i128 %4855 to i32
  %4862 = and i32 %4861, 255
  %4863 = call i32 @llvm.ctpop.i32(i32 %4862)
  %4864 = trunc i32 %4863 to i8
  %4865 = and i8 %4864, 1
  %4866 = xor i8 %4865, 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4866, i8* %4867, align 1
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4868, align 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4869, align 1
  %4870 = lshr i64 %4856, 63
  %4871 = trunc i64 %4870 to i8
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4871, i8* %4872, align 1
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4859, i8* %4873, align 1
  store %struct.Memory* %loadMem_48b1ac, %struct.Memory** %MEMORY
  %loadMem_48b1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 1
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 5
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %4882 to i64*
  %4883 = load i64, i64* %RAX.i380
  %4884 = load i64, i64* %RCX.i381
  %4885 = load i64, i64* %PC.i379
  %4886 = add i64 %4885, 3
  store i64 %4886, i64* %PC.i379
  %4887 = add i64 %4884, %4883
  store i64 %4887, i64* %RAX.i380, align 8
  %4888 = icmp ult i64 %4887, %4883
  %4889 = icmp ult i64 %4887, %4884
  %4890 = or i1 %4888, %4889
  %4891 = zext i1 %4890 to i8
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4891, i8* %4892, align 1
  %4893 = trunc i64 %4887 to i32
  %4894 = and i32 %4893, 255
  %4895 = call i32 @llvm.ctpop.i32(i32 %4894)
  %4896 = trunc i32 %4895 to i8
  %4897 = and i8 %4896, 1
  %4898 = xor i8 %4897, 1
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4898, i8* %4899, align 1
  %4900 = xor i64 %4884, %4883
  %4901 = xor i64 %4900, %4887
  %4902 = lshr i64 %4901, 4
  %4903 = trunc i64 %4902 to i8
  %4904 = and i8 %4903, 1
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4904, i8* %4905, align 1
  %4906 = icmp eq i64 %4887, 0
  %4907 = zext i1 %4906 to i8
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4907, i8* %4908, align 1
  %4909 = lshr i64 %4887, 63
  %4910 = trunc i64 %4909 to i8
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4910, i8* %4911, align 1
  %4912 = lshr i64 %4883, 63
  %4913 = lshr i64 %4884, 63
  %4914 = xor i64 %4909, %4912
  %4915 = xor i64 %4909, %4913
  %4916 = add i64 %4914, %4915
  %4917 = icmp eq i64 %4916, 2
  %4918 = zext i1 %4917 to i8
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4918, i8* %4919, align 1
  store %struct.Memory* %loadMem_48b1b3, %struct.Memory** %MEMORY
  %loadMem_48b1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 1
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %RAX.i378
  %4927 = add i64 %4926, 300
  %4928 = load i64, i64* %PC.i377
  %4929 = add i64 %4928, 7
  store i64 %4929, i64* %PC.i377
  %4930 = inttoptr i64 %4927 to i32*
  %4931 = load i32, i32* %4930
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4932, align 1
  %4933 = and i32 %4931, 255
  %4934 = call i32 @llvm.ctpop.i32(i32 %4933)
  %4935 = trunc i32 %4934 to i8
  %4936 = and i8 %4935, 1
  %4937 = xor i8 %4936, 1
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4937, i8* %4938, align 1
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4939, align 1
  %4940 = icmp eq i32 %4931, 0
  %4941 = zext i1 %4940 to i8
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4941, i8* %4942, align 1
  %4943 = lshr i32 %4931, 31
  %4944 = trunc i32 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i32 %4931, 31
  %4947 = xor i32 %4943, %4946
  %4948 = add i32 %4947, %4946
  %4949 = icmp eq i32 %4948, 2
  %4950 = zext i1 %4949 to i8
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4950, i8* %4951, align 1
  store %struct.Memory* %loadMem_48b1b6, %struct.Memory** %MEMORY
  %loadMem_48b1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 33
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4954 to i64*
  %4955 = load i64, i64* %PC.i376
  %4956 = add i64 %4955, 31
  %4957 = load i64, i64* %PC.i376
  %4958 = add i64 %4957, 6
  %4959 = load i64, i64* %PC.i376
  %4960 = add i64 %4959, 6
  store i64 %4960, i64* %PC.i376
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4962 = load i8, i8* %4961, align 1
  %4963 = icmp eq i8 %4962, 0
  %4964 = zext i1 %4963 to i8
  store i8 %4964, i8* %BRANCH_TAKEN, align 1
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4966 = select i1 %4963, i64 %4956, i64 %4958
  store i64 %4966, i64* %4965, align 8
  store %struct.Memory* %loadMem_48b1bd, %struct.Memory** %MEMORY
  %loadBr_48b1bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b1bd = icmp eq i8 %loadBr_48b1bd, 1
  br i1 %cmpBr_48b1bd, label %block_.L_48b1dc, label %block_48b1c3

block_48b1c3:                                     ; preds = %block_.L_48b19e
  %loadMem_48b1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 33
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %4969 to i64*
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 11
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %RDI.i375 = bitcast %union.anon* %4972 to i64*
  %4973 = load i64, i64* %PC.i374
  %4974 = add i64 %4973, 10
  store i64 %4974, i64* %PC.i374
  store i64 ptrtoint (%G__0x58345b_type* @G__0x58345b to i64), i64* %RDI.i375, align 8
  store %struct.Memory* %loadMem_48b1c3, %struct.Memory** %MEMORY
  %loadMem_48b1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 33
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4977 to i64*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 1
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %4981 = bitcast %union.anon* %4980 to %struct.anon.2*
  %AL.i373 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4981, i32 0, i32 0
  %4982 = load i64, i64* %PC.i372
  %4983 = add i64 %4982, 2
  store i64 %4983, i64* %PC.i372
  store i8 0, i8* %AL.i373, align 1
  store %struct.Memory* %loadMem_48b1cd, %struct.Memory** %MEMORY
  %loadMem1_48b1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 33
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4986 to i64*
  %4987 = load i64, i64* %PC.i371
  %4988 = add i64 %4987, -234527
  %4989 = load i64, i64* %PC.i371
  %4990 = add i64 %4989, 5
  %4991 = load i64, i64* %PC.i371
  %4992 = add i64 %4991, 5
  store i64 %4992, i64* %PC.i371
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4994 = load i64, i64* %4993, align 8
  %4995 = add i64 %4994, -8
  %4996 = inttoptr i64 %4995 to i64*
  store i64 %4990, i64* %4996
  store i64 %4995, i64* %4993, align 8
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4988, i64* %4997, align 8
  store %struct.Memory* %loadMem1_48b1cf, %struct.Memory** %MEMORY
  %loadMem2_48b1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b1cf = load i64, i64* %3
  %call2_48b1cf = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b1cf, %struct.Memory* %loadMem2_48b1cf)
  store %struct.Memory* %call2_48b1cf, %struct.Memory** %MEMORY
  %loadMem_48b1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 33
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5000 to i64*
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 1
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %EAX.i369 = bitcast %union.anon* %5003 to i32*
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 15
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %5006 to i64*
  %5007 = load i64, i64* %RBP.i370
  %5008 = sub i64 %5007, 112
  %5009 = load i32, i32* %EAX.i369
  %5010 = zext i32 %5009 to i64
  %5011 = load i64, i64* %PC.i368
  %5012 = add i64 %5011, 3
  store i64 %5012, i64* %PC.i368
  %5013 = inttoptr i64 %5008 to i32*
  store i32 %5009, i32* %5013
  store %struct.Memory* %loadMem_48b1d4, %struct.Memory** %MEMORY
  %loadMem_48b1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 33
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5016 to i64*
  %5017 = load i64, i64* %PC.i367
  %5018 = add i64 %5017, 238
  %5019 = load i64, i64* %PC.i367
  %5020 = add i64 %5019, 5
  store i64 %5020, i64* %PC.i367
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5018, i64* %5021, align 8
  store %struct.Memory* %loadMem_48b1d7, %struct.Memory** %MEMORY
  br label %block_.L_48b2c5

block_.L_48b1dc:                                  ; preds = %block_.L_48b19e
  %loadMem_48b1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5023 = getelementptr inbounds %struct.GPR, %struct.GPR* %5022, i32 0, i32 33
  %5024 = getelementptr inbounds %struct.Reg, %struct.Reg* %5023, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5024 to i64*
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5026 = getelementptr inbounds %struct.GPR, %struct.GPR* %5025, i32 0, i32 11
  %5027 = getelementptr inbounds %struct.Reg, %struct.Reg* %5026, i32 0, i32 0
  %RDI.i366 = bitcast %union.anon* %5027 to i64*
  %5028 = load i64, i64* %PC.i365
  %5029 = add i64 %5028, 10
  store i64 %5029, i64* %PC.i365
  store i64 ptrtoint (%G__0x583475_type* @G__0x583475 to i64), i64* %RDI.i366, align 8
  store %struct.Memory* %loadMem_48b1dc, %struct.Memory** %MEMORY
  %loadMem_48b1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 33
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5032 to i64*
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 1
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %5036 = bitcast %union.anon* %5035 to %struct.anon.2*
  %AL.i364 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5036, i32 0, i32 0
  %5037 = load i64, i64* %PC.i363
  %5038 = add i64 %5037, 2
  store i64 %5038, i64* %PC.i363
  store i8 0, i8* %AL.i364, align 1
  store %struct.Memory* %loadMem_48b1e6, %struct.Memory** %MEMORY
  %loadMem1_48b1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 33
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5041 to i64*
  %5042 = load i64, i64* %PC.i362
  %5043 = add i64 %5042, -234552
  %5044 = load i64, i64* %PC.i362
  %5045 = add i64 %5044, 5
  %5046 = load i64, i64* %PC.i362
  %5047 = add i64 %5046, 5
  store i64 %5047, i64* %PC.i362
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5049 = load i64, i64* %5048, align 8
  %5050 = add i64 %5049, -8
  %5051 = inttoptr i64 %5050 to i64*
  store i64 %5045, i64* %5051
  store i64 %5050, i64* %5048, align 8
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5043, i64* %5052, align 8
  store %struct.Memory* %loadMem1_48b1e8, %struct.Memory** %MEMORY
  %loadMem2_48b1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b1e8 = load i64, i64* %3
  %call2_48b1e8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b1e8, %struct.Memory* %loadMem2_48b1e8)
  store %struct.Memory* %call2_48b1e8, %struct.Memory** %MEMORY
  %loadMem_48b1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 15
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %5058 to i64*
  %5059 = load i64, i64* %RBP.i361
  %5060 = sub i64 %5059, 16
  %5061 = load i64, i64* %PC.i360
  %5062 = add i64 %5061, 7
  store i64 %5062, i64* %PC.i360
  %5063 = inttoptr i64 %5060 to i32*
  store i32 0, i32* %5063
  store %struct.Memory* %loadMem_48b1ed, %struct.Memory** %MEMORY
  %loadMem_48b1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 33
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 1
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %5069 to i32*
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 15
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %5072 to i64*
  %5073 = load i64, i64* %RBP.i359
  %5074 = sub i64 %5073, 116
  %5075 = load i32, i32* %EAX.i358
  %5076 = zext i32 %5075 to i64
  %5077 = load i64, i64* %PC.i357
  %5078 = add i64 %5077, 3
  store i64 %5078, i64* %PC.i357
  %5079 = inttoptr i64 %5074 to i32*
  store i32 %5075, i32* %5079
  store %struct.Memory* %loadMem_48b1f4, %struct.Memory** %MEMORY
  br label %block_.L_48b1f7

block_.L_48b1f7:                                  ; preds = %block_.L_48b23f, %block_.L_48b1dc
  %loadMem_48b1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 1
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %PC.i355
  %5087 = add i64 %5086, 10
  store i64 %5087, i64* %PC.i355
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_48b1f7, %struct.Memory** %MEMORY
  %loadMem_48b201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5089 = getelementptr inbounds %struct.GPR, %struct.GPR* %5088, i32 0, i32 33
  %5090 = getelementptr inbounds %struct.Reg, %struct.Reg* %5089, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5090 to i64*
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 5
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %5093 to i64*
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 15
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %5096 to i64*
  %5097 = load i64, i64* %RBP.i354
  %5098 = sub i64 %5097, 12
  %5099 = load i64, i64* %PC.i352
  %5100 = add i64 %5099, 4
  store i64 %5100, i64* %PC.i352
  %5101 = inttoptr i64 %5098 to i32*
  %5102 = load i32, i32* %5101
  %5103 = sext i32 %5102 to i64
  store i64 %5103, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_48b201, %struct.Memory** %MEMORY
  %loadMem_48b205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 5
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %RCX.i351
  %5111 = load i64, i64* %PC.i350
  %5112 = add i64 %5111, 7
  store i64 %5112, i64* %PC.i350
  %5113 = sext i64 %5110 to i128
  %5114 = and i128 %5113, -18446744073709551616
  %5115 = zext i64 %5110 to i128
  %5116 = or i128 %5114, %5115
  %5117 = mul i128 380, %5116
  %5118 = trunc i128 %5117 to i64
  store i64 %5118, i64* %RCX.i351, align 8
  %5119 = sext i64 %5118 to i128
  %5120 = icmp ne i128 %5119, %5117
  %5121 = zext i1 %5120 to i8
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5121, i8* %5122, align 1
  %5123 = trunc i128 %5117 to i32
  %5124 = and i32 %5123, 255
  %5125 = call i32 @llvm.ctpop.i32(i32 %5124)
  %5126 = trunc i32 %5125 to i8
  %5127 = and i8 %5126, 1
  %5128 = xor i8 %5127, 1
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5128, i8* %5129, align 1
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5130, align 1
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5131, align 1
  %5132 = lshr i64 %5118, 63
  %5133 = trunc i64 %5132 to i8
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5133, i8* %5134, align 1
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5121, i8* %5135, align 1
  store %struct.Memory* %loadMem_48b205, %struct.Memory** %MEMORY
  %loadMem_48b20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 33
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 1
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 5
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %RAX.i348
  %5146 = load i64, i64* %RCX.i349
  %5147 = load i64, i64* %PC.i347
  %5148 = add i64 %5147, 3
  store i64 %5148, i64* %PC.i347
  %5149 = add i64 %5146, %5145
  store i64 %5149, i64* %RAX.i348, align 8
  %5150 = icmp ult i64 %5149, %5145
  %5151 = icmp ult i64 %5149, %5146
  %5152 = or i1 %5150, %5151
  %5153 = zext i1 %5152 to i8
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5153, i8* %5154, align 1
  %5155 = trunc i64 %5149 to i32
  %5156 = and i32 %5155, 255
  %5157 = call i32 @llvm.ctpop.i32(i32 %5156)
  %5158 = trunc i32 %5157 to i8
  %5159 = and i8 %5158, 1
  %5160 = xor i8 %5159, 1
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5160, i8* %5161, align 1
  %5162 = xor i64 %5146, %5145
  %5163 = xor i64 %5162, %5149
  %5164 = lshr i64 %5163, 4
  %5165 = trunc i64 %5164 to i8
  %5166 = and i8 %5165, 1
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5166, i8* %5167, align 1
  %5168 = icmp eq i64 %5149, 0
  %5169 = zext i1 %5168 to i8
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5169, i8* %5170, align 1
  %5171 = lshr i64 %5149, 63
  %5172 = trunc i64 %5171 to i8
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5172, i8* %5173, align 1
  %5174 = lshr i64 %5145, 63
  %5175 = lshr i64 %5146, 63
  %5176 = xor i64 %5171, %5174
  %5177 = xor i64 %5171, %5175
  %5178 = add i64 %5176, %5177
  %5179 = icmp eq i64 %5178, 2
  %5180 = zext i1 %5179 to i8
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5180, i8* %5181, align 1
  store %struct.Memory* %loadMem_48b20c, %struct.Memory** %MEMORY
  %loadMem_48b20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 33
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5184 to i64*
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 5
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 15
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %RBP.i346
  %5192 = sub i64 %5191, 16
  %5193 = load i64, i64* %PC.i344
  %5194 = add i64 %5193, 4
  store i64 %5194, i64* %PC.i344
  %5195 = inttoptr i64 %5192 to i32*
  %5196 = load i32, i32* %5195
  %5197 = sext i32 %5196 to i64
  store i64 %5197, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_48b20f, %struct.Memory** %MEMORY
  %loadMem_48b213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 33
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5200 to i64*
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5202 = getelementptr inbounds %struct.GPR, %struct.GPR* %5201, i32 0, i32 1
  %5203 = getelementptr inbounds %struct.Reg, %struct.Reg* %5202, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %5203 to i64*
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5205 = getelementptr inbounds %struct.GPR, %struct.GPR* %5204, i32 0, i32 5
  %5206 = getelementptr inbounds %struct.Reg, %struct.Reg* %5205, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5206 to i64*
  %5207 = load i64, i64* %RAX.i342
  %5208 = load i64, i64* %RCX.i343
  %5209 = mul i64 %5208, 4
  %5210 = add i64 %5207, 300
  %5211 = add i64 %5210, %5209
  %5212 = load i64, i64* %PC.i341
  %5213 = add i64 %5212, 8
  store i64 %5213, i64* %PC.i341
  %5214 = inttoptr i64 %5211 to i32*
  %5215 = load i32, i32* %5214
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5216, align 1
  %5217 = and i32 %5215, 255
  %5218 = call i32 @llvm.ctpop.i32(i32 %5217)
  %5219 = trunc i32 %5218 to i8
  %5220 = and i8 %5219, 1
  %5221 = xor i8 %5220, 1
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5221, i8* %5222, align 1
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5223, align 1
  %5224 = icmp eq i32 %5215, 0
  %5225 = zext i1 %5224 to i8
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5225, i8* %5226, align 1
  %5227 = lshr i32 %5215, 31
  %5228 = trunc i32 %5227 to i8
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5228, i8* %5229, align 1
  %5230 = lshr i32 %5215, 31
  %5231 = xor i32 %5227, %5230
  %5232 = add i32 %5231, %5230
  %5233 = icmp eq i32 %5232, 2
  %5234 = zext i1 %5233 to i8
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5234, i8* %5235, align 1
  store %struct.Memory* %loadMem_48b213, %struct.Memory** %MEMORY
  %loadMem_48b21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5237 = getelementptr inbounds %struct.GPR, %struct.GPR* %5236, i32 0, i32 33
  %5238 = getelementptr inbounds %struct.Reg, %struct.Reg* %5237, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5238 to i64*
  %5239 = load i64, i64* %PC.i340
  %5240 = add i64 %5239, 147
  %5241 = load i64, i64* %PC.i340
  %5242 = add i64 %5241, 6
  %5243 = load i64, i64* %PC.i340
  %5244 = add i64 %5243, 6
  store i64 %5244, i64* %PC.i340
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5246 = load i8, i8* %5245, align 1
  store i8 %5246, i8* %BRANCH_TAKEN, align 1
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5248 = icmp ne i8 %5246, 0
  %5249 = select i1 %5248, i64 %5240, i64 %5242
  store i64 %5249, i64* %5247, align 8
  store %struct.Memory* %loadMem_48b21b, %struct.Memory** %MEMORY
  %loadBr_48b21b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b21b = icmp eq i8 %loadBr_48b21b, 1
  br i1 %cmpBr_48b21b, label %block_.L_48b2ae, label %block_48b221

block_48b221:                                     ; preds = %block_.L_48b1f7
  %loadMem_48b221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 33
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 15
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %5255 to i64*
  %5256 = load i64, i64* %RBP.i339
  %5257 = sub i64 %5256, 16
  %5258 = load i64, i64* %PC.i338
  %5259 = add i64 %5258, 4
  store i64 %5259, i64* %PC.i338
  %5260 = inttoptr i64 %5257 to i32*
  %5261 = load i32, i32* %5260
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5262, align 1
  %5263 = and i32 %5261, 255
  %5264 = call i32 @llvm.ctpop.i32(i32 %5263)
  %5265 = trunc i32 %5264 to i8
  %5266 = and i8 %5265, 1
  %5267 = xor i8 %5266, 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5267, i8* %5268, align 1
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5269, align 1
  %5270 = icmp eq i32 %5261, 0
  %5271 = zext i1 %5270 to i8
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5271, i8* %5272, align 1
  %5273 = lshr i32 %5261, 31
  %5274 = trunc i32 %5273 to i8
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5274, i8* %5275, align 1
  %5276 = lshr i32 %5261, 31
  %5277 = xor i32 %5273, %5276
  %5278 = add i32 %5277, %5276
  %5279 = icmp eq i32 %5278, 2
  %5280 = zext i1 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5280, i8* %5281, align 1
  store %struct.Memory* %loadMem_48b221, %struct.Memory** %MEMORY
  %loadMem_48b225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 33
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %5284 to i64*
  %5285 = load i64, i64* %PC.i337
  %5286 = add i64 %5285, 26
  %5287 = load i64, i64* %PC.i337
  %5288 = add i64 %5287, 6
  %5289 = load i64, i64* %PC.i337
  %5290 = add i64 %5289, 6
  store i64 %5290, i64* %PC.i337
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5292 = load i8, i8* %5291, align 1
  %5293 = icmp ne i8 %5292, 0
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5295 = load i8, i8* %5294, align 1
  %5296 = icmp ne i8 %5295, 0
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5298 = load i8, i8* %5297, align 1
  %5299 = icmp ne i8 %5298, 0
  %5300 = xor i1 %5296, %5299
  %5301 = or i1 %5293, %5300
  %5302 = zext i1 %5301 to i8
  store i8 %5302, i8* %BRANCH_TAKEN, align 1
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5304 = select i1 %5301, i64 %5286, i64 %5288
  store i64 %5304, i64* %5303, align 8
  store %struct.Memory* %loadMem_48b225, %struct.Memory** %MEMORY
  %loadBr_48b225 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b225 = icmp eq i8 %loadBr_48b225, 1
  br i1 %cmpBr_48b225, label %block_.L_48b23f, label %block_48b22b

block_48b22b:                                     ; preds = %block_48b221
  %loadMem_48b22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 33
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5307 to i64*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 11
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RDI.i336 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %PC.i335
  %5312 = add i64 %5311, 10
  store i64 %5312, i64* %PC.i335
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI.i336, align 8
  store %struct.Memory* %loadMem_48b22b, %struct.Memory** %MEMORY
  %loadMem_48b235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 33
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5315 to i64*
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 1
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %5319 = bitcast %union.anon* %5318 to %struct.anon.2*
  %AL.i334 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5319, i32 0, i32 0
  %5320 = load i64, i64* %PC.i333
  %5321 = add i64 %5320, 2
  store i64 %5321, i64* %PC.i333
  store i8 0, i8* %AL.i334, align 1
  store %struct.Memory* %loadMem_48b235, %struct.Memory** %MEMORY
  %loadMem1_48b237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5323 = getelementptr inbounds %struct.GPR, %struct.GPR* %5322, i32 0, i32 33
  %5324 = getelementptr inbounds %struct.Reg, %struct.Reg* %5323, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5324 to i64*
  %5325 = load i64, i64* %PC.i332
  %5326 = add i64 %5325, -234631
  %5327 = load i64, i64* %PC.i332
  %5328 = add i64 %5327, 5
  %5329 = load i64, i64* %PC.i332
  %5330 = add i64 %5329, 5
  store i64 %5330, i64* %PC.i332
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5332 = load i64, i64* %5331, align 8
  %5333 = add i64 %5332, -8
  %5334 = inttoptr i64 %5333 to i64*
  store i64 %5328, i64* %5334
  store i64 %5333, i64* %5331, align 8
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5326, i64* %5335, align 8
  store %struct.Memory* %loadMem1_48b237, %struct.Memory** %MEMORY
  %loadMem2_48b237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b237 = load i64, i64* %3
  %call2_48b237 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b237, %struct.Memory* %loadMem2_48b237)
  store %struct.Memory* %call2_48b237, %struct.Memory** %MEMORY
  %loadMem_48b23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 33
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5338 to i64*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %EAX.i330 = bitcast %union.anon* %5341 to i32*
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 15
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %5344 to i64*
  %5345 = load i64, i64* %RBP.i331
  %5346 = sub i64 %5345, 120
  %5347 = load i32, i32* %EAX.i330
  %5348 = zext i32 %5347 to i64
  %5349 = load i64, i64* %PC.i329
  %5350 = add i64 %5349, 3
  store i64 %5350, i64* %PC.i329
  %5351 = inttoptr i64 %5346 to i32*
  store i32 %5347, i32* %5351
  store %struct.Memory* %loadMem_48b23c, %struct.Memory** %MEMORY
  br label %block_.L_48b23f

block_.L_48b23f:                                  ; preds = %block_48b22b, %block_48b221
  %loadMem_48b23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %5354 to i64*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 1
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %5357 to i64*
  %5358 = load i64, i64* %PC.i327
  %5359 = add i64 %5358, 10
  store i64 %5359, i64* %PC.i327
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_48b23f, %struct.Memory** %MEMORY
  %loadMem_48b249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 33
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %5362 to i64*
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 5
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 15
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %5368 to i64*
  %5369 = load i64, i64* %RBP.i326
  %5370 = sub i64 %5369, 12
  %5371 = load i64, i64* %PC.i324
  %5372 = add i64 %5371, 4
  store i64 %5372, i64* %PC.i324
  %5373 = inttoptr i64 %5370 to i32*
  %5374 = load i32, i32* %5373
  %5375 = sext i32 %5374 to i64
  store i64 %5375, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_48b249, %struct.Memory** %MEMORY
  %loadMem_48b24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 33
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5378 to i64*
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 5
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %5381 to i64*
  %5382 = load i64, i64* %RCX.i323
  %5383 = load i64, i64* %PC.i322
  %5384 = add i64 %5383, 7
  store i64 %5384, i64* %PC.i322
  %5385 = sext i64 %5382 to i128
  %5386 = and i128 %5385, -18446744073709551616
  %5387 = zext i64 %5382 to i128
  %5388 = or i128 %5386, %5387
  %5389 = mul i128 380, %5388
  %5390 = trunc i128 %5389 to i64
  store i64 %5390, i64* %RCX.i323, align 8
  %5391 = sext i64 %5390 to i128
  %5392 = icmp ne i128 %5391, %5389
  %5393 = zext i1 %5392 to i8
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5393, i8* %5394, align 1
  %5395 = trunc i128 %5389 to i32
  %5396 = and i32 %5395, 255
  %5397 = call i32 @llvm.ctpop.i32(i32 %5396)
  %5398 = trunc i32 %5397 to i8
  %5399 = and i8 %5398, 1
  %5400 = xor i8 %5399, 1
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5400, i8* %5401, align 1
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5402, align 1
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5403, align 1
  %5404 = lshr i64 %5390, 63
  %5405 = trunc i64 %5404 to i8
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5405, i8* %5406, align 1
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5393, i8* %5407, align 1
  store %struct.Memory* %loadMem_48b24d, %struct.Memory** %MEMORY
  %loadMem_48b254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 33
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5410 to i64*
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 1
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 7
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %5416 to i64*
  %5417 = load i64, i64* %RAX.i320
  %5418 = load i64, i64* %PC.i319
  %5419 = add i64 %5418, 3
  store i64 %5419, i64* %PC.i319
  store i64 %5417, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_48b254, %struct.Memory** %MEMORY
  %loadMem_48b257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5421 = getelementptr inbounds %struct.GPR, %struct.GPR* %5420, i32 0, i32 33
  %5422 = getelementptr inbounds %struct.Reg, %struct.Reg* %5421, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5422 to i64*
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 5
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 7
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RDX.i318 = bitcast %union.anon* %5428 to i64*
  %5429 = load i64, i64* %RDX.i318
  %5430 = load i64, i64* %RCX.i317
  %5431 = load i64, i64* %PC.i316
  %5432 = add i64 %5431, 3
  store i64 %5432, i64* %PC.i316
  %5433 = add i64 %5430, %5429
  store i64 %5433, i64* %RDX.i318, align 8
  %5434 = icmp ult i64 %5433, %5429
  %5435 = icmp ult i64 %5433, %5430
  %5436 = or i1 %5434, %5435
  %5437 = zext i1 %5436 to i8
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5437, i8* %5438, align 1
  %5439 = trunc i64 %5433 to i32
  %5440 = and i32 %5439, 255
  %5441 = call i32 @llvm.ctpop.i32(i32 %5440)
  %5442 = trunc i32 %5441 to i8
  %5443 = and i8 %5442, 1
  %5444 = xor i8 %5443, 1
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5444, i8* %5445, align 1
  %5446 = xor i64 %5430, %5429
  %5447 = xor i64 %5446, %5433
  %5448 = lshr i64 %5447, 4
  %5449 = trunc i64 %5448 to i8
  %5450 = and i8 %5449, 1
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5450, i8* %5451, align 1
  %5452 = icmp eq i64 %5433, 0
  %5453 = zext i1 %5452 to i8
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5453, i8* %5454, align 1
  %5455 = lshr i64 %5433, 63
  %5456 = trunc i64 %5455 to i8
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5456, i8* %5457, align 1
  %5458 = lshr i64 %5429, 63
  %5459 = lshr i64 %5430, 63
  %5460 = xor i64 %5455, %5458
  %5461 = xor i64 %5455, %5459
  %5462 = add i64 %5460, %5461
  %5463 = icmp eq i64 %5462, 2
  %5464 = zext i1 %5463 to i8
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5464, i8* %5465, align 1
  store %struct.Memory* %loadMem_48b257, %struct.Memory** %MEMORY
  %loadMem_48b25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 33
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 5
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %5471 to i64*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 15
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5474 to i64*
  %5475 = load i64, i64* %RBP.i315
  %5476 = sub i64 %5475, 16
  %5477 = load i64, i64* %PC.i313
  %5478 = add i64 %5477, 4
  store i64 %5478, i64* %PC.i313
  %5479 = inttoptr i64 %5476 to i32*
  %5480 = load i32, i32* %5479
  %5481 = sext i32 %5480 to i64
  store i64 %5481, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_48b25a, %struct.Memory** %MEMORY
  %loadMem_48b25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 33
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5484 to i64*
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 5
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %5487 to i64*
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 7
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 9
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RSI.i312 = bitcast %union.anon* %5493 to i64*
  %5494 = load i64, i64* %RDX.i311
  %5495 = load i64, i64* %RCX.i310
  %5496 = mul i64 %5495, 4
  %5497 = add i64 %5494, 300
  %5498 = add i64 %5497, %5496
  %5499 = load i64, i64* %PC.i309
  %5500 = add i64 %5499, 7
  store i64 %5500, i64* %PC.i309
  %5501 = inttoptr i64 %5498 to i32*
  %5502 = load i32, i32* %5501
  %5503 = zext i32 %5502 to i64
  store i64 %5503, i64* %RSI.i312, align 8
  store %struct.Memory* %loadMem_48b25e, %struct.Memory** %MEMORY
  %loadMem_48b265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 33
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 5
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %5509 to i64*
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 15
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %5512 to i64*
  %5513 = load i64, i64* %RBP.i308
  %5514 = sub i64 %5513, 12
  %5515 = load i64, i64* %PC.i306
  %5516 = add i64 %5515, 4
  store i64 %5516, i64* %PC.i306
  %5517 = inttoptr i64 %5514 to i32*
  %5518 = load i32, i32* %5517
  %5519 = sext i32 %5518 to i64
  store i64 %5519, i64* %RCX.i307, align 8
  store %struct.Memory* %loadMem_48b265, %struct.Memory** %MEMORY
  %loadMem_48b269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 5
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %5525 to i64*
  %5526 = load i64, i64* %RCX.i305
  %5527 = load i64, i64* %PC.i304
  %5528 = add i64 %5527, 7
  store i64 %5528, i64* %PC.i304
  %5529 = sext i64 %5526 to i128
  %5530 = and i128 %5529, -18446744073709551616
  %5531 = zext i64 %5526 to i128
  %5532 = or i128 %5530, %5531
  %5533 = mul i128 380, %5532
  %5534 = trunc i128 %5533 to i64
  store i64 %5534, i64* %RCX.i305, align 8
  %5535 = sext i64 %5534 to i128
  %5536 = icmp ne i128 %5535, %5533
  %5537 = zext i1 %5536 to i8
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5537, i8* %5538, align 1
  %5539 = trunc i128 %5533 to i32
  %5540 = and i32 %5539, 255
  %5541 = call i32 @llvm.ctpop.i32(i32 %5540)
  %5542 = trunc i32 %5541 to i8
  %5543 = and i8 %5542, 1
  %5544 = xor i8 %5543, 1
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5544, i8* %5545, align 1
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5546, align 1
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5547, align 1
  %5548 = lshr i64 %5534, 63
  %5549 = trunc i64 %5548 to i8
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5549, i8* %5550, align 1
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5537, i8* %5551, align 1
  store %struct.Memory* %loadMem_48b269, %struct.Memory** %MEMORY
  %loadMem_48b270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 33
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5554 to i64*
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 1
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 5
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %5560 to i64*
  %5561 = load i64, i64* %RAX.i302
  %5562 = load i64, i64* %RCX.i303
  %5563 = load i64, i64* %PC.i301
  %5564 = add i64 %5563, 3
  store i64 %5564, i64* %PC.i301
  %5565 = add i64 %5562, %5561
  store i64 %5565, i64* %RAX.i302, align 8
  %5566 = icmp ult i64 %5565, %5561
  %5567 = icmp ult i64 %5565, %5562
  %5568 = or i1 %5566, %5567
  %5569 = zext i1 %5568 to i8
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5569, i8* %5570, align 1
  %5571 = trunc i64 %5565 to i32
  %5572 = and i32 %5571, 255
  %5573 = call i32 @llvm.ctpop.i32(i32 %5572)
  %5574 = trunc i32 %5573 to i8
  %5575 = and i8 %5574, 1
  %5576 = xor i8 %5575, 1
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5576, i8* %5577, align 1
  %5578 = xor i64 %5562, %5561
  %5579 = xor i64 %5578, %5565
  %5580 = lshr i64 %5579, 4
  %5581 = trunc i64 %5580 to i8
  %5582 = and i8 %5581, 1
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5582, i8* %5583, align 1
  %5584 = icmp eq i64 %5565, 0
  %5585 = zext i1 %5584 to i8
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5585, i8* %5586, align 1
  %5587 = lshr i64 %5565, 63
  %5588 = trunc i64 %5587 to i8
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5588, i8* %5589, align 1
  %5590 = lshr i64 %5561, 63
  %5591 = lshr i64 %5562, 63
  %5592 = xor i64 %5587, %5590
  %5593 = xor i64 %5587, %5591
  %5594 = add i64 %5592, %5593
  %5595 = icmp eq i64 %5594, 2
  %5596 = zext i1 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5596, i8* %5597, align 1
  store %struct.Memory* %loadMem_48b270, %struct.Memory** %MEMORY
  %loadMem_48b273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 33
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5600 to i64*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 5
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %5603 to i64*
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5605 = getelementptr inbounds %struct.GPR, %struct.GPR* %5604, i32 0, i32 15
  %5606 = getelementptr inbounds %struct.Reg, %struct.Reg* %5605, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %5606 to i64*
  %5607 = load i64, i64* %RBP.i300
  %5608 = sub i64 %5607, 16
  %5609 = load i64, i64* %PC.i298
  %5610 = add i64 %5609, 4
  store i64 %5610, i64* %PC.i298
  %5611 = inttoptr i64 %5608 to i32*
  %5612 = load i32, i32* %5611
  %5613 = sext i32 %5612 to i64
  store i64 %5613, i64* %RCX.i299, align 8
  store %struct.Memory* %loadMem_48b273, %struct.Memory** %MEMORY
  %loadMem_48b277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 33
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5616 to i64*
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 1
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5619 to i64*
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 5
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 11
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %RDI.i297 = bitcast %union.anon* %5625 to i64*
  %5626 = load i64, i64* %RAX.i295
  %5627 = load i64, i64* %RCX.i296
  %5628 = mul i64 %5627, 4
  %5629 = add i64 %5626, 340
  %5630 = add i64 %5629, %5628
  %5631 = load i64, i64* %PC.i294
  %5632 = add i64 %5631, 7
  store i64 %5632, i64* %PC.i294
  %5633 = inttoptr i64 %5630 to i32*
  %5634 = load i32, i32* %5633
  %5635 = zext i32 %5634 to i64
  store i64 %5635, i64* %RDI.i297, align 8
  store %struct.Memory* %loadMem_48b277, %struct.Memory** %MEMORY
  %loadMem_48b27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 33
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5638 to i64*
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5640 = getelementptr inbounds %struct.GPR, %struct.GPR* %5639, i32 0, i32 9
  %5641 = getelementptr inbounds %struct.Reg, %struct.Reg* %5640, i32 0, i32 0
  %ESI.i292 = bitcast %union.anon* %5641 to i32*
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 15
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %5644 to i64*
  %5645 = load i64, i64* %RBP.i293
  %5646 = sub i64 %5645, 124
  %5647 = load i32, i32* %ESI.i292
  %5648 = zext i32 %5647 to i64
  %5649 = load i64, i64* %PC.i291
  %5650 = add i64 %5649, 3
  store i64 %5650, i64* %PC.i291
  %5651 = inttoptr i64 %5646 to i32*
  store i32 %5647, i32* %5651
  store %struct.Memory* %loadMem_48b27e, %struct.Memory** %MEMORY
  %loadMem1_48b281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 33
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5654 to i64*
  %5655 = load i64, i64* %PC.i290
  %5656 = add i64 %5655, -232289
  %5657 = load i64, i64* %PC.i290
  %5658 = add i64 %5657, 5
  %5659 = load i64, i64* %PC.i290
  %5660 = add i64 %5659, 5
  store i64 %5660, i64* %PC.i290
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5662 = load i64, i64* %5661, align 8
  %5663 = add i64 %5662, -8
  %5664 = inttoptr i64 %5663 to i64*
  store i64 %5658, i64* %5664
  store i64 %5663, i64* %5661, align 8
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5656, i64* %5665, align 8
  store %struct.Memory* %loadMem1_48b281, %struct.Memory** %MEMORY
  %loadMem2_48b281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b281 = load i64, i64* %3
  %call2_48b281 = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64 %loadPC_48b281, %struct.Memory* %loadMem2_48b281)
  store %struct.Memory* %call2_48b281, %struct.Memory** %MEMORY
  %loadMem_48b286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 33
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5668 to i64*
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 11
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %RDI.i289 = bitcast %union.anon* %5671 to i64*
  %5672 = load i64, i64* %PC.i288
  %5673 = add i64 %5672, 10
  store i64 %5673, i64* %PC.i288
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI.i289, align 8
  store %struct.Memory* %loadMem_48b286, %struct.Memory** %MEMORY
  %loadMem_48b290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 9
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RSI.i286 = bitcast %union.anon* %5679 to i64*
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 15
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %5682 to i64*
  %5683 = load i64, i64* %RBP.i287
  %5684 = sub i64 %5683, 124
  %5685 = load i64, i64* %PC.i285
  %5686 = add i64 %5685, 3
  store i64 %5686, i64* %PC.i285
  %5687 = inttoptr i64 %5684 to i32*
  %5688 = load i32, i32* %5687
  %5689 = zext i32 %5688 to i64
  store i64 %5689, i64* %RSI.i286, align 8
  store %struct.Memory* %loadMem_48b290, %struct.Memory** %MEMORY
  %loadMem_48b293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 33
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 1
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 7
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %5698 to i64*
  %5699 = load i64, i64* %RAX.i283
  %5700 = load i64, i64* %PC.i282
  %5701 = add i64 %5700, 3
  store i64 %5701, i64* %PC.i282
  store i64 %5699, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_48b293, %struct.Memory** %MEMORY
  %loadMem_48b296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 1
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %5708 = bitcast %union.anon* %5707 to %struct.anon.2*
  %AL.i281 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5708, i32 0, i32 0
  %5709 = load i64, i64* %PC.i280
  %5710 = add i64 %5709, 2
  store i64 %5710, i64* %PC.i280
  store i8 0, i8* %AL.i281, align 1
  store %struct.Memory* %loadMem_48b296, %struct.Memory** %MEMORY
  %loadMem1_48b298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5712 = getelementptr inbounds %struct.GPR, %struct.GPR* %5711, i32 0, i32 33
  %5713 = getelementptr inbounds %struct.Reg, %struct.Reg* %5712, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5713 to i64*
  %5714 = load i64, i64* %PC.i279
  %5715 = add i64 %5714, -234728
  %5716 = load i64, i64* %PC.i279
  %5717 = add i64 %5716, 5
  %5718 = load i64, i64* %PC.i279
  %5719 = add i64 %5718, 5
  store i64 %5719, i64* %PC.i279
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5721 = load i64, i64* %5720, align 8
  %5722 = add i64 %5721, -8
  %5723 = inttoptr i64 %5722 to i64*
  store i64 %5717, i64* %5723
  store i64 %5722, i64* %5720, align 8
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5715, i64* %5724, align 8
  store %struct.Memory* %loadMem1_48b298, %struct.Memory** %MEMORY
  %loadMem2_48b298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b298 = load i64, i64* %3
  %call2_48b298 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b298, %struct.Memory* %loadMem2_48b298)
  store %struct.Memory* %call2_48b298, %struct.Memory** %MEMORY
  %loadMem_48b29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 33
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5727 to i64*
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 9
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %RSI.i277 = bitcast %union.anon* %5730 to i64*
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5732 = getelementptr inbounds %struct.GPR, %struct.GPR* %5731, i32 0, i32 15
  %5733 = getelementptr inbounds %struct.Reg, %struct.Reg* %5732, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %5733 to i64*
  %5734 = load i64, i64* %RBP.i278
  %5735 = sub i64 %5734, 16
  %5736 = load i64, i64* %PC.i276
  %5737 = add i64 %5736, 3
  store i64 %5737, i64* %PC.i276
  %5738 = inttoptr i64 %5735 to i32*
  %5739 = load i32, i32* %5738
  %5740 = zext i32 %5739 to i64
  store i64 %5740, i64* %RSI.i277, align 8
  store %struct.Memory* %loadMem_48b29d, %struct.Memory** %MEMORY
  %loadMem_48b2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 33
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5743 to i64*
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 9
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %RSI.i275 = bitcast %union.anon* %5746 to i64*
  %5747 = load i64, i64* %RSI.i275
  %5748 = load i64, i64* %PC.i274
  %5749 = add i64 %5748, 3
  store i64 %5749, i64* %PC.i274
  %5750 = trunc i64 %5747 to i32
  %5751 = add i32 1, %5750
  %5752 = zext i32 %5751 to i64
  store i64 %5752, i64* %RSI.i275, align 8
  %5753 = icmp ult i32 %5751, %5750
  %5754 = icmp ult i32 %5751, 1
  %5755 = or i1 %5753, %5754
  %5756 = zext i1 %5755 to i8
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5756, i8* %5757, align 1
  %5758 = and i32 %5751, 255
  %5759 = call i32 @llvm.ctpop.i32(i32 %5758)
  %5760 = trunc i32 %5759 to i8
  %5761 = and i8 %5760, 1
  %5762 = xor i8 %5761, 1
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5762, i8* %5763, align 1
  %5764 = xor i64 1, %5747
  %5765 = trunc i64 %5764 to i32
  %5766 = xor i32 %5765, %5751
  %5767 = lshr i32 %5766, 4
  %5768 = trunc i32 %5767 to i8
  %5769 = and i8 %5768, 1
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5769, i8* %5770, align 1
  %5771 = icmp eq i32 %5751, 0
  %5772 = zext i1 %5771 to i8
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5772, i8* %5773, align 1
  %5774 = lshr i32 %5751, 31
  %5775 = trunc i32 %5774 to i8
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5775, i8* %5776, align 1
  %5777 = lshr i32 %5750, 31
  %5778 = xor i32 %5774, %5777
  %5779 = add i32 %5778, %5774
  %5780 = icmp eq i32 %5779, 2
  %5781 = zext i1 %5780 to i8
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5781, i8* %5782, align 1
  store %struct.Memory* %loadMem_48b2a0, %struct.Memory** %MEMORY
  %loadMem_48b2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 33
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 9
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5788 to i32*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 15
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %5791 to i64*
  %5792 = load i64, i64* %RBP.i273
  %5793 = sub i64 %5792, 16
  %5794 = load i32, i32* %ESI.i
  %5795 = zext i32 %5794 to i64
  %5796 = load i64, i64* %PC.i272
  %5797 = add i64 %5796, 3
  store i64 %5797, i64* %PC.i272
  %5798 = inttoptr i64 %5793 to i32*
  store i32 %5794, i32* %5798
  store %struct.Memory* %loadMem_48b2a3, %struct.Memory** %MEMORY
  %loadMem_48b2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 33
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5801 to i64*
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 1
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %EAX.i270 = bitcast %union.anon* %5804 to i32*
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5806 = getelementptr inbounds %struct.GPR, %struct.GPR* %5805, i32 0, i32 15
  %5807 = getelementptr inbounds %struct.Reg, %struct.Reg* %5806, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5807 to i64*
  %5808 = load i64, i64* %RBP.i271
  %5809 = sub i64 %5808, 128
  %5810 = load i32, i32* %EAX.i270
  %5811 = zext i32 %5810 to i64
  %5812 = load i64, i64* %PC.i269
  %5813 = add i64 %5812, 3
  store i64 %5813, i64* %PC.i269
  %5814 = inttoptr i64 %5809 to i32*
  store i32 %5810, i32* %5814
  store %struct.Memory* %loadMem_48b2a6, %struct.Memory** %MEMORY
  %loadMem_48b2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 33
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %5817 to i64*
  %5818 = load i64, i64* %PC.i268
  %5819 = add i64 %5818, -178
  %5820 = load i64, i64* %PC.i268
  %5821 = add i64 %5820, 5
  store i64 %5821, i64* %PC.i268
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5819, i64* %5822, align 8
  store %struct.Memory* %loadMem_48b2a9, %struct.Memory** %MEMORY
  br label %block_.L_48b1f7

block_.L_48b2ae:                                  ; preds = %block_.L_48b1f7
  %loadMem_48b2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 33
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5825 to i64*
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5827 = getelementptr inbounds %struct.GPR, %struct.GPR* %5826, i32 0, i32 11
  %5828 = getelementptr inbounds %struct.Reg, %struct.Reg* %5827, i32 0, i32 0
  %RDI.i267 = bitcast %union.anon* %5828 to i64*
  %5829 = load i64, i64* %PC.i266
  %5830 = add i64 %5829, 10
  store i64 %5830, i64* %PC.i266
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI.i267, align 8
  store %struct.Memory* %loadMem_48b2ae, %struct.Memory** %MEMORY
  %loadMem_48b2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5833 to i64*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 1
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %5837 = bitcast %union.anon* %5836 to %struct.anon.2*
  %AL.i265 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5837, i32 0, i32 0
  %5838 = load i64, i64* %PC.i264
  %5839 = add i64 %5838, 2
  store i64 %5839, i64* %PC.i264
  store i8 0, i8* %AL.i265, align 1
  store %struct.Memory* %loadMem_48b2b8, %struct.Memory** %MEMORY
  %loadMem1_48b2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5841 = getelementptr inbounds %struct.GPR, %struct.GPR* %5840, i32 0, i32 33
  %5842 = getelementptr inbounds %struct.Reg, %struct.Reg* %5841, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5842 to i64*
  %5843 = load i64, i64* %PC.i263
  %5844 = add i64 %5843, -234762
  %5845 = load i64, i64* %PC.i263
  %5846 = add i64 %5845, 5
  %5847 = load i64, i64* %PC.i263
  %5848 = add i64 %5847, 5
  store i64 %5848, i64* %PC.i263
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5850 = load i64, i64* %5849, align 8
  %5851 = add i64 %5850, -8
  %5852 = inttoptr i64 %5851 to i64*
  store i64 %5846, i64* %5852
  store i64 %5851, i64* %5849, align 8
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5844, i64* %5853, align 8
  store %struct.Memory* %loadMem1_48b2ba, %struct.Memory** %MEMORY
  %loadMem2_48b2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b2ba = load i64, i64* %3
  %call2_48b2ba = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b2ba, %struct.Memory* %loadMem2_48b2ba)
  store %struct.Memory* %call2_48b2ba, %struct.Memory** %MEMORY
  %loadMem_48b2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5855 = getelementptr inbounds %struct.GPR, %struct.GPR* %5854, i32 0, i32 33
  %5856 = getelementptr inbounds %struct.Reg, %struct.Reg* %5855, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5856 to i64*
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 1
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %5859 to i32*
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 15
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %5862 to i64*
  %5863 = load i64, i64* %RBP.i262
  %5864 = sub i64 %5863, 132
  %5865 = load i32, i32* %EAX.i261
  %5866 = zext i32 %5865 to i64
  %5867 = load i64, i64* %PC.i260
  %5868 = add i64 %5867, 6
  store i64 %5868, i64* %PC.i260
  %5869 = inttoptr i64 %5864 to i32*
  store i32 %5865, i32* %5869
  store %struct.Memory* %loadMem_48b2bf, %struct.Memory** %MEMORY
  br label %block_.L_48b2c5

block_.L_48b2c5:                                  ; preds = %block_.L_48b2ae, %block_48b1c3
  %loadMem_48b2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 33
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5872 to i64*
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5874 = getelementptr inbounds %struct.GPR, %struct.GPR* %5873, i32 0, i32 1
  %5875 = getelementptr inbounds %struct.Reg, %struct.Reg* %5874, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %5875 to i64*
  %5876 = load i64, i64* %PC.i258
  %5877 = add i64 %5876, 10
  store i64 %5877, i64* %PC.i258
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_48b2c5, %struct.Memory** %MEMORY
  %loadMem_48b2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 33
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5880 to i64*
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 5
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %5883 to i64*
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5885 = getelementptr inbounds %struct.GPR, %struct.GPR* %5884, i32 0, i32 15
  %5886 = getelementptr inbounds %struct.Reg, %struct.Reg* %5885, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5886 to i64*
  %5887 = load i64, i64* %RBP.i257
  %5888 = sub i64 %5887, 12
  %5889 = load i64, i64* %PC.i255
  %5890 = add i64 %5889, 4
  store i64 %5890, i64* %PC.i255
  %5891 = inttoptr i64 %5888 to i32*
  %5892 = load i32, i32* %5891
  %5893 = sext i32 %5892 to i64
  store i64 %5893, i64* %RCX.i256, align 8
  store %struct.Memory* %loadMem_48b2cf, %struct.Memory** %MEMORY
  %loadMem_48b2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 33
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5896 to i64*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 5
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %5899 to i64*
  %5900 = load i64, i64* %RCX.i254
  %5901 = load i64, i64* %PC.i253
  %5902 = add i64 %5901, 7
  store i64 %5902, i64* %PC.i253
  %5903 = sext i64 %5900 to i128
  %5904 = and i128 %5903, -18446744073709551616
  %5905 = zext i64 %5900 to i128
  %5906 = or i128 %5904, %5905
  %5907 = mul i128 380, %5906
  %5908 = trunc i128 %5907 to i64
  store i64 %5908, i64* %RCX.i254, align 8
  %5909 = sext i64 %5908 to i128
  %5910 = icmp ne i128 %5909, %5907
  %5911 = zext i1 %5910 to i8
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5911, i8* %5912, align 1
  %5913 = trunc i128 %5907 to i32
  %5914 = and i32 %5913, 255
  %5915 = call i32 @llvm.ctpop.i32(i32 %5914)
  %5916 = trunc i32 %5915 to i8
  %5917 = and i8 %5916, 1
  %5918 = xor i8 %5917, 1
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5918, i8* %5919, align 1
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5920, align 1
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5921, align 1
  %5922 = lshr i64 %5908, 63
  %5923 = trunc i64 %5922 to i8
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5923, i8* %5924, align 1
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5911, i8* %5925, align 1
  store %struct.Memory* %loadMem_48b2d3, %struct.Memory** %MEMORY
  %loadMem_48b2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 33
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5928 to i64*
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 1
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %5931 to i64*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 5
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %5934 to i64*
  %5935 = load i64, i64* %RAX.i251
  %5936 = load i64, i64* %RCX.i252
  %5937 = load i64, i64* %PC.i250
  %5938 = add i64 %5937, 3
  store i64 %5938, i64* %PC.i250
  %5939 = add i64 %5936, %5935
  store i64 %5939, i64* %RAX.i251, align 8
  %5940 = icmp ult i64 %5939, %5935
  %5941 = icmp ult i64 %5939, %5936
  %5942 = or i1 %5940, %5941
  %5943 = zext i1 %5942 to i8
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5943, i8* %5944, align 1
  %5945 = trunc i64 %5939 to i32
  %5946 = and i32 %5945, 255
  %5947 = call i32 @llvm.ctpop.i32(i32 %5946)
  %5948 = trunc i32 %5947 to i8
  %5949 = and i8 %5948, 1
  %5950 = xor i8 %5949, 1
  %5951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5950, i8* %5951, align 1
  %5952 = xor i64 %5936, %5935
  %5953 = xor i64 %5952, %5939
  %5954 = lshr i64 %5953, 4
  %5955 = trunc i64 %5954 to i8
  %5956 = and i8 %5955, 1
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5956, i8* %5957, align 1
  %5958 = icmp eq i64 %5939, 0
  %5959 = zext i1 %5958 to i8
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5959, i8* %5960, align 1
  %5961 = lshr i64 %5939, 63
  %5962 = trunc i64 %5961 to i8
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5962, i8* %5963, align 1
  %5964 = lshr i64 %5935, 63
  %5965 = lshr i64 %5936, 63
  %5966 = xor i64 %5961, %5964
  %5967 = xor i64 %5961, %5965
  %5968 = add i64 %5966, %5967
  %5969 = icmp eq i64 %5968, 2
  %5970 = zext i1 %5969 to i8
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5970, i8* %5971, align 1
  store %struct.Memory* %loadMem_48b2da, %struct.Memory** %MEMORY
  %loadMem_48b2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 33
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5974 to i64*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 1
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %5977 to i64*
  %5978 = load i64, i64* %RAX.i249
  %5979 = add i64 %5978, 32
  %5980 = load i64, i64* %PC.i248
  %5981 = add i64 %5980, 4
  store i64 %5981, i64* %PC.i248
  %5982 = inttoptr i64 %5979 to i32*
  %5983 = load i32, i32* %5982
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5984, align 1
  %5985 = and i32 %5983, 255
  %5986 = call i32 @llvm.ctpop.i32(i32 %5985)
  %5987 = trunc i32 %5986 to i8
  %5988 = and i8 %5987, 1
  %5989 = xor i8 %5988, 1
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5989, i8* %5990, align 1
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5991, align 1
  %5992 = icmp eq i32 %5983, 0
  %5993 = zext i1 %5992 to i8
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5993, i8* %5994, align 1
  %5995 = lshr i32 %5983, 31
  %5996 = trunc i32 %5995 to i8
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5996, i8* %5997, align 1
  %5998 = lshr i32 %5983, 31
  %5999 = xor i32 %5995, %5998
  %6000 = add i32 %5999, %5998
  %6001 = icmp eq i32 %6000, 2
  %6002 = zext i1 %6001 to i8
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6002, i8* %6003, align 1
  store %struct.Memory* %loadMem_48b2dd, %struct.Memory** %MEMORY
  %loadMem_48b2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6005 = getelementptr inbounds %struct.GPR, %struct.GPR* %6004, i32 0, i32 33
  %6006 = getelementptr inbounds %struct.Reg, %struct.Reg* %6005, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6006 to i64*
  %6007 = load i64, i64* %PC.i247
  %6008 = add i64 %6007, 56
  %6009 = load i64, i64* %PC.i247
  %6010 = add i64 %6009, 6
  %6011 = load i64, i64* %PC.i247
  %6012 = add i64 %6011, 6
  store i64 %6012, i64* %PC.i247
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6014 = load i8, i8* %6013, align 1
  store i8 %6014, i8* %BRANCH_TAKEN, align 1
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6016 = icmp ne i8 %6014, 0
  %6017 = select i1 %6016, i64 %6008, i64 %6010
  store i64 %6017, i64* %6015, align 8
  store %struct.Memory* %loadMem_48b2e1, %struct.Memory** %MEMORY
  %loadBr_48b2e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b2e1 = icmp eq i8 %loadBr_48b2e1, 1
  br i1 %cmpBr_48b2e1, label %block_.L_48b319, label %block_48b2e7

block_48b2e7:                                     ; preds = %block_.L_48b2c5
  %loadMem_48b2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 33
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6020 to i64*
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 11
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %RDI.i246 = bitcast %union.anon* %6023 to i64*
  %6024 = load i64, i64* %PC.i245
  %6025 = add i64 %6024, 10
  store i64 %6025, i64* %PC.i245
  store i64 ptrtoint (%G__0x58348e_type* @G__0x58348e to i64), i64* %RDI.i246, align 8
  store %struct.Memory* %loadMem_48b2e7, %struct.Memory** %MEMORY
  %loadMem_48b2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 33
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6028 to i64*
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 1
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %6031 to i64*
  %6032 = load i64, i64* %PC.i243
  %6033 = add i64 %6032, 10
  store i64 %6033, i64* %PC.i243
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i244, align 8
  store %struct.Memory* %loadMem_48b2f1, %struct.Memory** %MEMORY
  %loadMem_48b2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 33
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 5
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RCX.i241 = bitcast %union.anon* %6039 to i64*
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6041 = getelementptr inbounds %struct.GPR, %struct.GPR* %6040, i32 0, i32 15
  %6042 = getelementptr inbounds %struct.Reg, %struct.Reg* %6041, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %6042 to i64*
  %6043 = load i64, i64* %RBP.i242
  %6044 = sub i64 %6043, 12
  %6045 = load i64, i64* %PC.i240
  %6046 = add i64 %6045, 4
  store i64 %6046, i64* %PC.i240
  %6047 = inttoptr i64 %6044 to i32*
  %6048 = load i32, i32* %6047
  %6049 = sext i32 %6048 to i64
  store i64 %6049, i64* %RCX.i241, align 8
  store %struct.Memory* %loadMem_48b2fb, %struct.Memory** %MEMORY
  %loadMem_48b2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 33
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 5
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %6055 to i64*
  %6056 = load i64, i64* %RCX.i239
  %6057 = load i64, i64* %PC.i238
  %6058 = add i64 %6057, 7
  store i64 %6058, i64* %PC.i238
  %6059 = sext i64 %6056 to i128
  %6060 = and i128 %6059, -18446744073709551616
  %6061 = zext i64 %6056 to i128
  %6062 = or i128 %6060, %6061
  %6063 = mul i128 380, %6062
  %6064 = trunc i128 %6063 to i64
  store i64 %6064, i64* %RCX.i239, align 8
  %6065 = sext i64 %6064 to i128
  %6066 = icmp ne i128 %6065, %6063
  %6067 = zext i1 %6066 to i8
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6067, i8* %6068, align 1
  %6069 = trunc i128 %6063 to i32
  %6070 = and i32 %6069, 255
  %6071 = call i32 @llvm.ctpop.i32(i32 %6070)
  %6072 = trunc i32 %6071 to i8
  %6073 = and i8 %6072, 1
  %6074 = xor i8 %6073, 1
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6074, i8* %6075, align 1
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6076, align 1
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6077, align 1
  %6078 = lshr i64 %6064, 63
  %6079 = trunc i64 %6078 to i8
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6079, i8* %6080, align 1
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6067, i8* %6081, align 1
  store %struct.Memory* %loadMem_48b2ff, %struct.Memory** %MEMORY
  %loadMem_48b306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6084 to i64*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 1
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 5
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %6090 to i64*
  %6091 = load i64, i64* %RAX.i236
  %6092 = load i64, i64* %RCX.i237
  %6093 = load i64, i64* %PC.i235
  %6094 = add i64 %6093, 3
  store i64 %6094, i64* %PC.i235
  %6095 = add i64 %6092, %6091
  store i64 %6095, i64* %RAX.i236, align 8
  %6096 = icmp ult i64 %6095, %6091
  %6097 = icmp ult i64 %6095, %6092
  %6098 = or i1 %6096, %6097
  %6099 = zext i1 %6098 to i8
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6099, i8* %6100, align 1
  %6101 = trunc i64 %6095 to i32
  %6102 = and i32 %6101, 255
  %6103 = call i32 @llvm.ctpop.i32(i32 %6102)
  %6104 = trunc i32 %6103 to i8
  %6105 = and i8 %6104, 1
  %6106 = xor i8 %6105, 1
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6106, i8* %6107, align 1
  %6108 = xor i64 %6092, %6091
  %6109 = xor i64 %6108, %6095
  %6110 = lshr i64 %6109, 4
  %6111 = trunc i64 %6110 to i8
  %6112 = and i8 %6111, 1
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6112, i8* %6113, align 1
  %6114 = icmp eq i64 %6095, 0
  %6115 = zext i1 %6114 to i8
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6115, i8* %6116, align 1
  %6117 = lshr i64 %6095, 63
  %6118 = trunc i64 %6117 to i8
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6118, i8* %6119, align 1
  %6120 = lshr i64 %6091, 63
  %6121 = lshr i64 %6092, 63
  %6122 = xor i64 %6117, %6120
  %6123 = xor i64 %6117, %6121
  %6124 = add i64 %6122, %6123
  %6125 = icmp eq i64 %6124, 2
  %6126 = zext i1 %6125 to i8
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6126, i8* %6127, align 1
  store %struct.Memory* %loadMem_48b306, %struct.Memory** %MEMORY
  %loadMem_48b309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6129 = getelementptr inbounds %struct.GPR, %struct.GPR* %6128, i32 0, i32 33
  %6130 = getelementptr inbounds %struct.Reg, %struct.Reg* %6129, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6130 to i64*
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 1
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %6133 to i64*
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6135 = getelementptr inbounds %struct.GPR, %struct.GPR* %6134, i32 0, i32 9
  %6136 = getelementptr inbounds %struct.Reg, %struct.Reg* %6135, i32 0, i32 0
  %RSI.i234 = bitcast %union.anon* %6136 to i64*
  %6137 = load i64, i64* %RAX.i233
  %6138 = add i64 %6137, 32
  %6139 = load i64, i64* %PC.i232
  %6140 = add i64 %6139, 3
  store i64 %6140, i64* %PC.i232
  %6141 = inttoptr i64 %6138 to i32*
  %6142 = load i32, i32* %6141
  %6143 = zext i32 %6142 to i64
  store i64 %6143, i64* %RSI.i234, align 8
  store %struct.Memory* %loadMem_48b309, %struct.Memory** %MEMORY
  %loadMem_48b30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6145 = getelementptr inbounds %struct.GPR, %struct.GPR* %6144, i32 0, i32 33
  %6146 = getelementptr inbounds %struct.Reg, %struct.Reg* %6145, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6146 to i64*
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 1
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %6150 = bitcast %union.anon* %6149 to %struct.anon.2*
  %AL.i231 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6150, i32 0, i32 0
  %6151 = load i64, i64* %PC.i230
  %6152 = add i64 %6151, 2
  store i64 %6152, i64* %PC.i230
  store i8 0, i8* %AL.i231, align 1
  store %struct.Memory* %loadMem_48b30c, %struct.Memory** %MEMORY
  %loadMem1_48b30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 33
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6155 to i64*
  %6156 = load i64, i64* %PC.i229
  %6157 = add i64 %6156, -234846
  %6158 = load i64, i64* %PC.i229
  %6159 = add i64 %6158, 5
  %6160 = load i64, i64* %PC.i229
  %6161 = add i64 %6160, 5
  store i64 %6161, i64* %PC.i229
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6163 = load i64, i64* %6162, align 8
  %6164 = add i64 %6163, -8
  %6165 = inttoptr i64 %6164 to i64*
  store i64 %6159, i64* %6165
  store i64 %6164, i64* %6162, align 8
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6157, i64* %6166, align 8
  store %struct.Memory* %loadMem1_48b30e, %struct.Memory** %MEMORY
  %loadMem2_48b30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b30e = load i64, i64* %3
  %call2_48b30e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b30e, %struct.Memory* %loadMem2_48b30e)
  store %struct.Memory* %call2_48b30e, %struct.Memory** %MEMORY
  %loadMem_48b313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 33
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6169 to i64*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 1
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %EAX.i227 = bitcast %union.anon* %6172 to i32*
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 15
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %6175 to i64*
  %6176 = load i64, i64* %RBP.i228
  %6177 = sub i64 %6176, 136
  %6178 = load i32, i32* %EAX.i227
  %6179 = zext i32 %6178 to i64
  %6180 = load i64, i64* %PC.i226
  %6181 = add i64 %6180, 6
  store i64 %6181, i64* %PC.i226
  %6182 = inttoptr i64 %6177 to i32*
  store i32 %6178, i32* %6182
  store %struct.Memory* %loadMem_48b313, %struct.Memory** %MEMORY
  br label %block_.L_48b319

block_.L_48b319:                                  ; preds = %block_48b2e7, %block_.L_48b2c5
  %loadMem_48b319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 33
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6185 to i64*
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 11
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %RDI.i225 = bitcast %union.anon* %6188 to i64*
  %6189 = load i64, i64* %PC.i224
  %6190 = add i64 %6189, 10
  store i64 %6190, i64* %PC.i224
  store i64 ptrtoint (%G__0x58349c_type* @G__0x58349c to i64), i64* %RDI.i225, align 8
  store %struct.Memory* %loadMem_48b319, %struct.Memory** %MEMORY
  %loadMem_48b323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 33
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6193 to i64*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 1
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %6196 to i64*
  %6197 = load i64, i64* %PC.i222
  %6198 = add i64 %6197, 10
  store i64 %6198, i64* %PC.i222
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_48b323, %struct.Memory** %MEMORY
  %loadMem_48b32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6200 = getelementptr inbounds %struct.GPR, %struct.GPR* %6199, i32 0, i32 33
  %6201 = getelementptr inbounds %struct.Reg, %struct.Reg* %6200, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6201 to i64*
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 5
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 15
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %6207 to i64*
  %6208 = load i64, i64* %RBP.i221
  %6209 = sub i64 %6208, 12
  %6210 = load i64, i64* %PC.i219
  %6211 = add i64 %6210, 4
  store i64 %6211, i64* %PC.i219
  %6212 = inttoptr i64 %6209 to i32*
  %6213 = load i32, i32* %6212
  %6214 = sext i32 %6213 to i64
  store i64 %6214, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_48b32d, %struct.Memory** %MEMORY
  %loadMem_48b331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 33
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6217 to i64*
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 5
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %6220 to i64*
  %6221 = load i64, i64* %RCX.i218
  %6222 = load i64, i64* %PC.i217
  %6223 = add i64 %6222, 7
  store i64 %6223, i64* %PC.i217
  %6224 = sext i64 %6221 to i128
  %6225 = and i128 %6224, -18446744073709551616
  %6226 = zext i64 %6221 to i128
  %6227 = or i128 %6225, %6226
  %6228 = mul i128 380, %6227
  %6229 = trunc i128 %6228 to i64
  store i64 %6229, i64* %RCX.i218, align 8
  %6230 = sext i64 %6229 to i128
  %6231 = icmp ne i128 %6230, %6228
  %6232 = zext i1 %6231 to i8
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6232, i8* %6233, align 1
  %6234 = trunc i128 %6228 to i32
  %6235 = and i32 %6234, 255
  %6236 = call i32 @llvm.ctpop.i32(i32 %6235)
  %6237 = trunc i32 %6236 to i8
  %6238 = and i8 %6237, 1
  %6239 = xor i8 %6238, 1
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6239, i8* %6240, align 1
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6241, align 1
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6242, align 1
  %6243 = lshr i64 %6229, 63
  %6244 = trunc i64 %6243 to i8
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6244, i8* %6245, align 1
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6232, i8* %6246, align 1
  store %struct.Memory* %loadMem_48b331, %struct.Memory** %MEMORY
  %loadMem_48b338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 33
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6249 to i64*
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6251 = getelementptr inbounds %struct.GPR, %struct.GPR* %6250, i32 0, i32 1
  %6252 = getelementptr inbounds %struct.Reg, %struct.Reg* %6251, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %6252 to i64*
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6254 = getelementptr inbounds %struct.GPR, %struct.GPR* %6253, i32 0, i32 7
  %6255 = getelementptr inbounds %struct.Reg, %struct.Reg* %6254, i32 0, i32 0
  %RDX.i216 = bitcast %union.anon* %6255 to i64*
  %6256 = load i64, i64* %RAX.i215
  %6257 = load i64, i64* %PC.i214
  %6258 = add i64 %6257, 3
  store i64 %6258, i64* %PC.i214
  store i64 %6256, i64* %RDX.i216, align 8
  store %struct.Memory* %loadMem_48b338, %struct.Memory** %MEMORY
  %loadMem_48b33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6260 = getelementptr inbounds %struct.GPR, %struct.GPR* %6259, i32 0, i32 33
  %6261 = getelementptr inbounds %struct.Reg, %struct.Reg* %6260, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6261 to i64*
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 5
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %6264 to i64*
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6266 = getelementptr inbounds %struct.GPR, %struct.GPR* %6265, i32 0, i32 7
  %6267 = getelementptr inbounds %struct.Reg, %struct.Reg* %6266, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %6267 to i64*
  %6268 = load i64, i64* %RDX.i213
  %6269 = load i64, i64* %RCX.i212
  %6270 = load i64, i64* %PC.i211
  %6271 = add i64 %6270, 3
  store i64 %6271, i64* %PC.i211
  %6272 = add i64 %6269, %6268
  store i64 %6272, i64* %RDX.i213, align 8
  %6273 = icmp ult i64 %6272, %6268
  %6274 = icmp ult i64 %6272, %6269
  %6275 = or i1 %6273, %6274
  %6276 = zext i1 %6275 to i8
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6276, i8* %6277, align 1
  %6278 = trunc i64 %6272 to i32
  %6279 = and i32 %6278, 255
  %6280 = call i32 @llvm.ctpop.i32(i32 %6279)
  %6281 = trunc i32 %6280 to i8
  %6282 = and i8 %6281, 1
  %6283 = xor i8 %6282, 1
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6283, i8* %6284, align 1
  %6285 = xor i64 %6269, %6268
  %6286 = xor i64 %6285, %6272
  %6287 = lshr i64 %6286, 4
  %6288 = trunc i64 %6287 to i8
  %6289 = and i8 %6288, 1
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6289, i8* %6290, align 1
  %6291 = icmp eq i64 %6272, 0
  %6292 = zext i1 %6291 to i8
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6292, i8* %6293, align 1
  %6294 = lshr i64 %6272, 63
  %6295 = trunc i64 %6294 to i8
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6295, i8* %6296, align 1
  %6297 = lshr i64 %6268, 63
  %6298 = lshr i64 %6269, 63
  %6299 = xor i64 %6294, %6297
  %6300 = xor i64 %6294, %6298
  %6301 = add i64 %6299, %6300
  %6302 = icmp eq i64 %6301, 2
  %6303 = zext i1 %6302 to i8
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6303, i8* %6304, align 1
  store %struct.Memory* %loadMem_48b33b, %struct.Memory** %MEMORY
  %loadMem_48b33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 33
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %6307 to i64*
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 7
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %RDX.i209 = bitcast %union.anon* %6310 to i64*
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 9
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %RSI.i210 = bitcast %union.anon* %6313 to i64*
  %6314 = load i64, i64* %RDX.i209
  %6315 = add i64 %6314, 36
  %6316 = load i64, i64* %PC.i208
  %6317 = add i64 %6316, 3
  store i64 %6317, i64* %PC.i208
  %6318 = inttoptr i64 %6315 to i32*
  %6319 = load i32, i32* %6318
  %6320 = zext i32 %6319 to i64
  store i64 %6320, i64* %RSI.i210, align 8
  store %struct.Memory* %loadMem_48b33e, %struct.Memory** %MEMORY
  %loadMem_48b341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6322 = getelementptr inbounds %struct.GPR, %struct.GPR* %6321, i32 0, i32 33
  %6323 = getelementptr inbounds %struct.Reg, %struct.Reg* %6322, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6323 to i64*
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 5
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %6326 to i64*
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 15
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %6329 to i64*
  %6330 = load i64, i64* %RBP.i207
  %6331 = sub i64 %6330, 12
  %6332 = load i64, i64* %PC.i205
  %6333 = add i64 %6332, 4
  store i64 %6333, i64* %PC.i205
  %6334 = inttoptr i64 %6331 to i32*
  %6335 = load i32, i32* %6334
  %6336 = sext i32 %6335 to i64
  store i64 %6336, i64* %RCX.i206, align 8
  store %struct.Memory* %loadMem_48b341, %struct.Memory** %MEMORY
  %loadMem_48b345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6338 = getelementptr inbounds %struct.GPR, %struct.GPR* %6337, i32 0, i32 33
  %6339 = getelementptr inbounds %struct.Reg, %struct.Reg* %6338, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %6339 to i64*
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6341 = getelementptr inbounds %struct.GPR, %struct.GPR* %6340, i32 0, i32 5
  %6342 = getelementptr inbounds %struct.Reg, %struct.Reg* %6341, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %6342 to i64*
  %6343 = load i64, i64* %RCX.i204
  %6344 = load i64, i64* %PC.i203
  %6345 = add i64 %6344, 7
  store i64 %6345, i64* %PC.i203
  %6346 = sext i64 %6343 to i128
  %6347 = and i128 %6346, -18446744073709551616
  %6348 = zext i64 %6343 to i128
  %6349 = or i128 %6347, %6348
  %6350 = mul i128 380, %6349
  %6351 = trunc i128 %6350 to i64
  store i64 %6351, i64* %RCX.i204, align 8
  %6352 = sext i64 %6351 to i128
  %6353 = icmp ne i128 %6352, %6350
  %6354 = zext i1 %6353 to i8
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6354, i8* %6355, align 1
  %6356 = trunc i128 %6350 to i32
  %6357 = and i32 %6356, 255
  %6358 = call i32 @llvm.ctpop.i32(i32 %6357)
  %6359 = trunc i32 %6358 to i8
  %6360 = and i8 %6359, 1
  %6361 = xor i8 %6360, 1
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6361, i8* %6362, align 1
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6363, align 1
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6364, align 1
  %6365 = lshr i64 %6351, 63
  %6366 = trunc i64 %6365 to i8
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6366, i8* %6367, align 1
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6354, i8* %6368, align 1
  store %struct.Memory* %loadMem_48b345, %struct.Memory** %MEMORY
  %loadMem_48b34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6370 = getelementptr inbounds %struct.GPR, %struct.GPR* %6369, i32 0, i32 33
  %6371 = getelementptr inbounds %struct.Reg, %struct.Reg* %6370, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %6371 to i64*
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6373 = getelementptr inbounds %struct.GPR, %struct.GPR* %6372, i32 0, i32 1
  %6374 = getelementptr inbounds %struct.Reg, %struct.Reg* %6373, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %6374 to i64*
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6376 = getelementptr inbounds %struct.GPR, %struct.GPR* %6375, i32 0, i32 5
  %6377 = getelementptr inbounds %struct.Reg, %struct.Reg* %6376, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %6377 to i64*
  %6378 = load i64, i64* %RAX.i201
  %6379 = load i64, i64* %RCX.i202
  %6380 = load i64, i64* %PC.i200
  %6381 = add i64 %6380, 3
  store i64 %6381, i64* %PC.i200
  %6382 = add i64 %6379, %6378
  store i64 %6382, i64* %RAX.i201, align 8
  %6383 = icmp ult i64 %6382, %6378
  %6384 = icmp ult i64 %6382, %6379
  %6385 = or i1 %6383, %6384
  %6386 = zext i1 %6385 to i8
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6386, i8* %6387, align 1
  %6388 = trunc i64 %6382 to i32
  %6389 = and i32 %6388, 255
  %6390 = call i32 @llvm.ctpop.i32(i32 %6389)
  %6391 = trunc i32 %6390 to i8
  %6392 = and i8 %6391, 1
  %6393 = xor i8 %6392, 1
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6393, i8* %6394, align 1
  %6395 = xor i64 %6379, %6378
  %6396 = xor i64 %6395, %6382
  %6397 = lshr i64 %6396, 4
  %6398 = trunc i64 %6397 to i8
  %6399 = and i8 %6398, 1
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6399, i8* %6400, align 1
  %6401 = icmp eq i64 %6382, 0
  %6402 = zext i1 %6401 to i8
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6402, i8* %6403, align 1
  %6404 = lshr i64 %6382, 63
  %6405 = trunc i64 %6404 to i8
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6405, i8* %6406, align 1
  %6407 = lshr i64 %6378, 63
  %6408 = lshr i64 %6379, 63
  %6409 = xor i64 %6404, %6407
  %6410 = xor i64 %6404, %6408
  %6411 = add i64 %6409, %6410
  %6412 = icmp eq i64 %6411, 2
  %6413 = zext i1 %6412 to i8
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6413, i8* %6414, align 1
  store %struct.Memory* %loadMem_48b34c, %struct.Memory** %MEMORY
  %loadMem_48b34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6416 = getelementptr inbounds %struct.GPR, %struct.GPR* %6415, i32 0, i32 33
  %6417 = getelementptr inbounds %struct.Reg, %struct.Reg* %6416, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %6417 to i64*
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 1
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %6420 to i64*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 7
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6423 to i64*
  %6424 = load i64, i64* %RAX.i199
  %6425 = add i64 %6424, 40
  %6426 = load i64, i64* %PC.i198
  %6427 = add i64 %6426, 3
  store i64 %6427, i64* %PC.i198
  %6428 = inttoptr i64 %6425 to i32*
  %6429 = load i32, i32* %6428
  %6430 = zext i32 %6429 to i64
  store i64 %6430, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_48b34f, %struct.Memory** %MEMORY
  %loadMem_48b352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 33
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %6433 to i64*
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 1
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %6437 = bitcast %union.anon* %6436 to %struct.anon.2*
  %AL.i197 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6437, i32 0, i32 0
  %6438 = load i64, i64* %PC.i196
  %6439 = add i64 %6438, 2
  store i64 %6439, i64* %PC.i196
  store i8 0, i8* %AL.i197, align 1
  store %struct.Memory* %loadMem_48b352, %struct.Memory** %MEMORY
  %loadMem1_48b354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6441 = getelementptr inbounds %struct.GPR, %struct.GPR* %6440, i32 0, i32 33
  %6442 = getelementptr inbounds %struct.Reg, %struct.Reg* %6441, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %6442 to i64*
  %6443 = load i64, i64* %PC.i195
  %6444 = add i64 %6443, -234916
  %6445 = load i64, i64* %PC.i195
  %6446 = add i64 %6445, 5
  %6447 = load i64, i64* %PC.i195
  %6448 = add i64 %6447, 5
  store i64 %6448, i64* %PC.i195
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6450 = load i64, i64* %6449, align 8
  %6451 = add i64 %6450, -8
  %6452 = inttoptr i64 %6451 to i64*
  store i64 %6446, i64* %6452
  store i64 %6451, i64* %6449, align 8
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6444, i64* %6453, align 8
  store %struct.Memory* %loadMem1_48b354, %struct.Memory** %MEMORY
  %loadMem2_48b354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b354 = load i64, i64* %3
  %call2_48b354 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b354, %struct.Memory* %loadMem2_48b354)
  store %struct.Memory* %call2_48b354, %struct.Memory** %MEMORY
  %loadMem_48b359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6455 = getelementptr inbounds %struct.GPR, %struct.GPR* %6454, i32 0, i32 33
  %6456 = getelementptr inbounds %struct.Reg, %struct.Reg* %6455, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6456 to i64*
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6458 = getelementptr inbounds %struct.GPR, %struct.GPR* %6457, i32 0, i32 11
  %6459 = getelementptr inbounds %struct.Reg, %struct.Reg* %6458, i32 0, i32 0
  %RDI.i194 = bitcast %union.anon* %6459 to i64*
  %6460 = load i64, i64* %PC.i193
  %6461 = add i64 %6460, 10
  store i64 %6461, i64* %PC.i193
  store i64 ptrtoint (%G__0x5834b9_type* @G__0x5834b9 to i64), i64* %RDI.i194, align 8
  store %struct.Memory* %loadMem_48b359, %struct.Memory** %MEMORY
  %loadMem_48b363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 33
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6464 to i64*
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 5
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %6467 to i64*
  %6468 = load i64, i64* %PC.i191
  %6469 = add i64 %6468, 10
  store i64 %6469, i64* %PC.i191
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_48b363, %struct.Memory** %MEMORY
  %loadMem_48b36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 33
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6472 to i64*
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6474 = getelementptr inbounds %struct.GPR, %struct.GPR* %6473, i32 0, i32 15
  %6475 = getelementptr inbounds %struct.Reg, %struct.Reg* %6474, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %6475 to i64*
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 17
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %R8.i190 = bitcast %union.anon* %6478 to i64*
  %6479 = load i64, i64* %RBP.i189
  %6480 = sub i64 %6479, 12
  %6481 = load i64, i64* %PC.i188
  %6482 = add i64 %6481, 4
  store i64 %6482, i64* %PC.i188
  %6483 = inttoptr i64 %6480 to i32*
  %6484 = load i32, i32* %6483
  %6485 = sext i32 %6484 to i64
  store i64 %6485, i64* %R8.i190, align 8
  store %struct.Memory* %loadMem_48b36d, %struct.Memory** %MEMORY
  %loadMem_48b371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 33
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6488 to i64*
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 17
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %R8.i187 = bitcast %union.anon* %6491 to i64*
  %6492 = load i64, i64* %R8.i187
  %6493 = load i64, i64* %PC.i186
  %6494 = add i64 %6493, 7
  store i64 %6494, i64* %PC.i186
  %6495 = sext i64 %6492 to i128
  %6496 = and i128 %6495, -18446744073709551616
  %6497 = zext i64 %6492 to i128
  %6498 = or i128 %6496, %6497
  %6499 = mul i128 380, %6498
  %6500 = trunc i128 %6499 to i64
  store i64 %6500, i64* %R8.i187, align 8
  %6501 = sext i64 %6500 to i128
  %6502 = icmp ne i128 %6501, %6499
  %6503 = zext i1 %6502 to i8
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6503, i8* %6504, align 1
  %6505 = trunc i128 %6499 to i32
  %6506 = and i32 %6505, 255
  %6507 = call i32 @llvm.ctpop.i32(i32 %6506)
  %6508 = trunc i32 %6507 to i8
  %6509 = and i8 %6508, 1
  %6510 = xor i8 %6509, 1
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6510, i8* %6511, align 1
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6512, align 1
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6513, align 1
  %6514 = lshr i64 %6500, 63
  %6515 = trunc i64 %6514 to i8
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6515, i8* %6516, align 1
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6503, i8* %6517, align 1
  store %struct.Memory* %loadMem_48b371, %struct.Memory** %MEMORY
  %loadMem_48b378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6519 = getelementptr inbounds %struct.GPR, %struct.GPR* %6518, i32 0, i32 33
  %6520 = getelementptr inbounds %struct.Reg, %struct.Reg* %6519, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6520 to i64*
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 5
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %6523 to i64*
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 17
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %R8.i = bitcast %union.anon* %6526 to i64*
  %6527 = load i64, i64* %RCX.i185
  %6528 = load i64, i64* %R8.i
  %6529 = load i64, i64* %PC.i184
  %6530 = add i64 %6529, 3
  store i64 %6530, i64* %PC.i184
  %6531 = add i64 %6528, %6527
  store i64 %6531, i64* %RCX.i185, align 8
  %6532 = icmp ult i64 %6531, %6527
  %6533 = icmp ult i64 %6531, %6528
  %6534 = or i1 %6532, %6533
  %6535 = zext i1 %6534 to i8
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6535, i8* %6536, align 1
  %6537 = trunc i64 %6531 to i32
  %6538 = and i32 %6537, 255
  %6539 = call i32 @llvm.ctpop.i32(i32 %6538)
  %6540 = trunc i32 %6539 to i8
  %6541 = and i8 %6540, 1
  %6542 = xor i8 %6541, 1
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6542, i8* %6543, align 1
  %6544 = xor i64 %6528, %6527
  %6545 = xor i64 %6544, %6531
  %6546 = lshr i64 %6545, 4
  %6547 = trunc i64 %6546 to i8
  %6548 = and i8 %6547, 1
  %6549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6548, i8* %6549, align 1
  %6550 = icmp eq i64 %6531, 0
  %6551 = zext i1 %6550 to i8
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6551, i8* %6552, align 1
  %6553 = lshr i64 %6531, 63
  %6554 = trunc i64 %6553 to i8
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6554, i8* %6555, align 1
  %6556 = lshr i64 %6527, 63
  %6557 = lshr i64 %6528, 63
  %6558 = xor i64 %6553, %6556
  %6559 = xor i64 %6553, %6557
  %6560 = add i64 %6558, %6559
  %6561 = icmp eq i64 %6560, 2
  %6562 = zext i1 %6561 to i8
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6562, i8* %6563, align 1
  store %struct.Memory* %loadMem_48b378, %struct.Memory** %MEMORY
  %loadMem_48b37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 33
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6566 to i64*
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6568 = getelementptr inbounds %struct.GPR, %struct.GPR* %6567, i32 0, i32 5
  %6569 = getelementptr inbounds %struct.Reg, %struct.Reg* %6568, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %6569 to i64*
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 9
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6572 to i64*
  %6573 = load i64, i64* %RCX.i183
  %6574 = add i64 %6573, 44
  %6575 = load i64, i64* %PC.i182
  %6576 = add i64 %6575, 3
  store i64 %6576, i64* %PC.i182
  %6577 = inttoptr i64 %6574 to i32*
  %6578 = load i32, i32* %6577
  %6579 = zext i32 %6578 to i64
  store i64 %6579, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_48b37b, %struct.Memory** %MEMORY
  %loadMem_48b37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6581 = getelementptr inbounds %struct.GPR, %struct.GPR* %6580, i32 0, i32 33
  %6582 = getelementptr inbounds %struct.Reg, %struct.Reg* %6581, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6582 to i64*
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6584 = getelementptr inbounds %struct.GPR, %struct.GPR* %6583, i32 0, i32 1
  %6585 = getelementptr inbounds %struct.Reg, %struct.Reg* %6584, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %6585 to i32*
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6587 = getelementptr inbounds %struct.GPR, %struct.GPR* %6586, i32 0, i32 15
  %6588 = getelementptr inbounds %struct.Reg, %struct.Reg* %6587, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %6588 to i64*
  %6589 = load i64, i64* %RBP.i181
  %6590 = sub i64 %6589, 140
  %6591 = load i32, i32* %EAX.i180
  %6592 = zext i32 %6591 to i64
  %6593 = load i64, i64* %PC.i179
  %6594 = add i64 %6593, 6
  store i64 %6594, i64* %PC.i179
  %6595 = inttoptr i64 %6590 to i32*
  store i32 %6591, i32* %6595
  store %struct.Memory* %loadMem_48b37e, %struct.Memory** %MEMORY
  %loadMem_48b384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6597 = getelementptr inbounds %struct.GPR, %struct.GPR* %6596, i32 0, i32 33
  %6598 = getelementptr inbounds %struct.Reg, %struct.Reg* %6597, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6598 to i64*
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6600 = getelementptr inbounds %struct.GPR, %struct.GPR* %6599, i32 0, i32 1
  %6601 = getelementptr inbounds %struct.Reg, %struct.Reg* %6600, i32 0, i32 0
  %6602 = bitcast %union.anon* %6601 to %struct.anon.2*
  %AL.i178 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6602, i32 0, i32 0
  %6603 = load i64, i64* %PC.i177
  %6604 = add i64 %6603, 2
  store i64 %6604, i64* %PC.i177
  store i8 0, i8* %AL.i178, align 1
  store %struct.Memory* %loadMem_48b384, %struct.Memory** %MEMORY
  %loadMem1_48b386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6606 = getelementptr inbounds %struct.GPR, %struct.GPR* %6605, i32 0, i32 33
  %6607 = getelementptr inbounds %struct.Reg, %struct.Reg* %6606, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6607 to i64*
  %6608 = load i64, i64* %PC.i176
  %6609 = add i64 %6608, -234966
  %6610 = load i64, i64* %PC.i176
  %6611 = add i64 %6610, 5
  %6612 = load i64, i64* %PC.i176
  %6613 = add i64 %6612, 5
  store i64 %6613, i64* %PC.i176
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6615 = load i64, i64* %6614, align 8
  %6616 = add i64 %6615, -8
  %6617 = inttoptr i64 %6616 to i64*
  store i64 %6611, i64* %6617
  store i64 %6616, i64* %6614, align 8
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6609, i64* %6618, align 8
  store %struct.Memory* %loadMem1_48b386, %struct.Memory** %MEMORY
  %loadMem2_48b386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b386 = load i64, i64* %3
  %call2_48b386 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b386, %struct.Memory* %loadMem2_48b386)
  store %struct.Memory* %call2_48b386, %struct.Memory** %MEMORY
  %loadMem_48b38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 33
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6621 to i64*
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 5
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %6624 to i64*
  %6625 = load i64, i64* %PC.i174
  %6626 = add i64 %6625, 10
  store i64 %6626, i64* %PC.i174
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_48b38b, %struct.Memory** %MEMORY
  %loadMem_48b395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 33
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6629 to i64*
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6631 = getelementptr inbounds %struct.GPR, %struct.GPR* %6630, i32 0, i32 11
  %6632 = getelementptr inbounds %struct.Reg, %struct.Reg* %6631, i32 0, i32 0
  %RDI.i172 = bitcast %union.anon* %6632 to i64*
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 15
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %6635 to i64*
  %6636 = load i64, i64* %RBP.i173
  %6637 = sub i64 %6636, 12
  %6638 = load i64, i64* %PC.i171
  %6639 = add i64 %6638, 4
  store i64 %6639, i64* %PC.i171
  %6640 = inttoptr i64 %6637 to i32*
  %6641 = load i32, i32* %6640
  %6642 = sext i32 %6641 to i64
  store i64 %6642, i64* %RDI.i172, align 8
  store %struct.Memory* %loadMem_48b395, %struct.Memory** %MEMORY
  %loadMem_48b399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6644 = getelementptr inbounds %struct.GPR, %struct.GPR* %6643, i32 0, i32 33
  %6645 = getelementptr inbounds %struct.Reg, %struct.Reg* %6644, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6645 to i64*
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6647 = getelementptr inbounds %struct.GPR, %struct.GPR* %6646, i32 0, i32 11
  %6648 = getelementptr inbounds %struct.Reg, %struct.Reg* %6647, i32 0, i32 0
  %RDI.i170 = bitcast %union.anon* %6648 to i64*
  %6649 = load i64, i64* %RDI.i170
  %6650 = load i64, i64* %PC.i169
  %6651 = add i64 %6650, 7
  store i64 %6651, i64* %PC.i169
  %6652 = sext i64 %6649 to i128
  %6653 = and i128 %6652, -18446744073709551616
  %6654 = zext i64 %6649 to i128
  %6655 = or i128 %6653, %6654
  %6656 = mul i128 380, %6655
  %6657 = trunc i128 %6656 to i64
  store i64 %6657, i64* %RDI.i170, align 8
  %6658 = sext i64 %6657 to i128
  %6659 = icmp ne i128 %6658, %6656
  %6660 = zext i1 %6659 to i8
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6660, i8* %6661, align 1
  %6662 = trunc i128 %6656 to i32
  %6663 = and i32 %6662, 255
  %6664 = call i32 @llvm.ctpop.i32(i32 %6663)
  %6665 = trunc i32 %6664 to i8
  %6666 = and i8 %6665, 1
  %6667 = xor i8 %6666, 1
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6667, i8* %6668, align 1
  %6669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6669, align 1
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6670, align 1
  %6671 = lshr i64 %6657, 63
  %6672 = trunc i64 %6671 to i8
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6672, i8* %6673, align 1
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6660, i8* %6674, align 1
  store %struct.Memory* %loadMem_48b399, %struct.Memory** %MEMORY
  %loadMem_48b3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 33
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %6677 to i64*
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 5
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %6680 to i64*
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 11
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %RDI.i168 = bitcast %union.anon* %6683 to i64*
  %6684 = load i64, i64* %RCX.i167
  %6685 = load i64, i64* %RDI.i168
  %6686 = load i64, i64* %PC.i166
  %6687 = add i64 %6686, 3
  store i64 %6687, i64* %PC.i166
  %6688 = add i64 %6685, %6684
  store i64 %6688, i64* %RCX.i167, align 8
  %6689 = icmp ult i64 %6688, %6684
  %6690 = icmp ult i64 %6688, %6685
  %6691 = or i1 %6689, %6690
  %6692 = zext i1 %6691 to i8
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6692, i8* %6693, align 1
  %6694 = trunc i64 %6688 to i32
  %6695 = and i32 %6694, 255
  %6696 = call i32 @llvm.ctpop.i32(i32 %6695)
  %6697 = trunc i32 %6696 to i8
  %6698 = and i8 %6697, 1
  %6699 = xor i8 %6698, 1
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6699, i8* %6700, align 1
  %6701 = xor i64 %6685, %6684
  %6702 = xor i64 %6701, %6688
  %6703 = lshr i64 %6702, 4
  %6704 = trunc i64 %6703 to i8
  %6705 = and i8 %6704, 1
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6705, i8* %6706, align 1
  %6707 = icmp eq i64 %6688, 0
  %6708 = zext i1 %6707 to i8
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6708, i8* %6709, align 1
  %6710 = lshr i64 %6688, 63
  %6711 = trunc i64 %6710 to i8
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6711, i8* %6712, align 1
  %6713 = lshr i64 %6684, 63
  %6714 = lshr i64 %6685, 63
  %6715 = xor i64 %6710, %6713
  %6716 = xor i64 %6710, %6714
  %6717 = add i64 %6715, %6716
  %6718 = icmp eq i64 %6717, 2
  %6719 = zext i1 %6718 to i8
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6719, i8* %6720, align 1
  store %struct.Memory* %loadMem_48b3a0, %struct.Memory** %MEMORY
  %loadMem_48b3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6722 = getelementptr inbounds %struct.GPR, %struct.GPR* %6721, i32 0, i32 33
  %6723 = getelementptr inbounds %struct.Reg, %struct.Reg* %6722, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6723 to i64*
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 5
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %6726 to i64*
  %6727 = load i64, i64* %RCX.i165
  %6728 = add i64 %6727, 48
  %6729 = load i64, i64* %PC.i164
  %6730 = add i64 %6729, 4
  store i64 %6730, i64* %PC.i164
  %6731 = inttoptr i64 %6728 to i32*
  %6732 = load i32, i32* %6731
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6733, align 1
  %6734 = and i32 %6732, 255
  %6735 = call i32 @llvm.ctpop.i32(i32 %6734)
  %6736 = trunc i32 %6735 to i8
  %6737 = and i8 %6736, 1
  %6738 = xor i8 %6737, 1
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6738, i8* %6739, align 1
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6740, align 1
  %6741 = icmp eq i32 %6732, 0
  %6742 = zext i1 %6741 to i8
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6742, i8* %6743, align 1
  %6744 = lshr i32 %6732, 31
  %6745 = trunc i32 %6744 to i8
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6745, i8* %6746, align 1
  %6747 = lshr i32 %6732, 31
  %6748 = xor i32 %6744, %6747
  %6749 = add i32 %6748, %6747
  %6750 = icmp eq i32 %6749, 2
  %6751 = zext i1 %6750 to i8
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6751, i8* %6752, align 1
  store %struct.Memory* %loadMem_48b3a3, %struct.Memory** %MEMORY
  %loadMem_48b3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6754 = getelementptr inbounds %struct.GPR, %struct.GPR* %6753, i32 0, i32 33
  %6755 = getelementptr inbounds %struct.Reg, %struct.Reg* %6754, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6755 to i64*
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6757 = getelementptr inbounds %struct.GPR, %struct.GPR* %6756, i32 0, i32 1
  %6758 = getelementptr inbounds %struct.Reg, %struct.Reg* %6757, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %6758 to i32*
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6760 = getelementptr inbounds %struct.GPR, %struct.GPR* %6759, i32 0, i32 15
  %6761 = getelementptr inbounds %struct.Reg, %struct.Reg* %6760, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %6761 to i64*
  %6762 = load i64, i64* %RBP.i163
  %6763 = sub i64 %6762, 144
  %6764 = load i32, i32* %EAX.i162
  %6765 = zext i32 %6764 to i64
  %6766 = load i64, i64* %PC.i161
  %6767 = add i64 %6766, 6
  store i64 %6767, i64* %PC.i161
  %6768 = inttoptr i64 %6763 to i32*
  store i32 %6764, i32* %6768
  store %struct.Memory* %loadMem_48b3a7, %struct.Memory** %MEMORY
  %loadMem_48b3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 33
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6771 to i64*
  %6772 = load i64, i64* %PC.i160
  %6773 = add i64 %6772, 34
  %6774 = load i64, i64* %PC.i160
  %6775 = add i64 %6774, 6
  %6776 = load i64, i64* %PC.i160
  %6777 = add i64 %6776, 6
  store i64 %6777, i64* %PC.i160
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6779 = load i8, i8* %6778, align 1
  store i8 %6779, i8* %BRANCH_TAKEN, align 1
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6781 = icmp ne i8 %6779, 0
  %6782 = select i1 %6781, i64 %6773, i64 %6775
  store i64 %6782, i64* %6780, align 8
  store %struct.Memory* %loadMem_48b3ad, %struct.Memory** %MEMORY
  %loadBr_48b3ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b3ad = icmp eq i8 %loadBr_48b3ad, 1
  br i1 %cmpBr_48b3ad, label %block_.L_48b3cf, label %block_48b3b3

block_48b3b3:                                     ; preds = %block_.L_48b319
  %loadMem_48b3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6784 = getelementptr inbounds %struct.GPR, %struct.GPR* %6783, i32 0, i32 33
  %6785 = getelementptr inbounds %struct.Reg, %struct.Reg* %6784, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6785 to i64*
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 11
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %RDI.i159 = bitcast %union.anon* %6788 to i64*
  %6789 = load i64, i64* %PC.i158
  %6790 = add i64 %6789, 10
  store i64 %6790, i64* %PC.i158
  store i64 ptrtoint (%G__0x5834c5_type* @G__0x5834c5 to i64), i64* %RDI.i159, align 8
  store %struct.Memory* %loadMem_48b3b3, %struct.Memory** %MEMORY
  %loadMem_48b3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6792 = getelementptr inbounds %struct.GPR, %struct.GPR* %6791, i32 0, i32 33
  %6793 = getelementptr inbounds %struct.Reg, %struct.Reg* %6792, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6793 to i64*
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 1
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %6797 = bitcast %union.anon* %6796 to %struct.anon.2*
  %AL.i157 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6797, i32 0, i32 0
  %6798 = load i64, i64* %PC.i156
  %6799 = add i64 %6798, 2
  store i64 %6799, i64* %PC.i156
  store i8 0, i8* %AL.i157, align 1
  store %struct.Memory* %loadMem_48b3bd, %struct.Memory** %MEMORY
  %loadMem1_48b3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6801 = getelementptr inbounds %struct.GPR, %struct.GPR* %6800, i32 0, i32 33
  %6802 = getelementptr inbounds %struct.Reg, %struct.Reg* %6801, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6802 to i64*
  %6803 = load i64, i64* %PC.i155
  %6804 = add i64 %6803, -235023
  %6805 = load i64, i64* %PC.i155
  %6806 = add i64 %6805, 5
  %6807 = load i64, i64* %PC.i155
  %6808 = add i64 %6807, 5
  store i64 %6808, i64* %PC.i155
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6810 = load i64, i64* %6809, align 8
  %6811 = add i64 %6810, -8
  %6812 = inttoptr i64 %6811 to i64*
  store i64 %6806, i64* %6812
  store i64 %6811, i64* %6809, align 8
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6804, i64* %6813, align 8
  store %struct.Memory* %loadMem1_48b3bf, %struct.Memory** %MEMORY
  %loadMem2_48b3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b3bf = load i64, i64* %3
  %call2_48b3bf = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b3bf, %struct.Memory* %loadMem2_48b3bf)
  store %struct.Memory* %call2_48b3bf, %struct.Memory** %MEMORY
  %loadMem_48b3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 33
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6816 to i64*
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 1
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %6819 to i32*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 15
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %RBP.i154
  %6824 = sub i64 %6823, 148
  %6825 = load i32, i32* %EAX.i153
  %6826 = zext i32 %6825 to i64
  %6827 = load i64, i64* %PC.i152
  %6828 = add i64 %6827, 6
  store i64 %6828, i64* %PC.i152
  %6829 = inttoptr i64 %6824 to i32*
  store i32 %6825, i32* %6829
  store %struct.Memory* %loadMem_48b3c4, %struct.Memory** %MEMORY
  %loadMem_48b3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 33
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6832 to i64*
  %6833 = load i64, i64* %PC.i151
  %6834 = add i64 %6833, 28
  %6835 = load i64, i64* %PC.i151
  %6836 = add i64 %6835, 5
  store i64 %6836, i64* %PC.i151
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6834, i64* %6837, align 8
  store %struct.Memory* %loadMem_48b3ca, %struct.Memory** %MEMORY
  br label %block_.L_48b3e6

block_.L_48b3cf:                                  ; preds = %block_.L_48b319
  %loadMem_48b3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6839 = getelementptr inbounds %struct.GPR, %struct.GPR* %6838, i32 0, i32 33
  %6840 = getelementptr inbounds %struct.Reg, %struct.Reg* %6839, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6840 to i64*
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 11
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %RDI.i150 = bitcast %union.anon* %6843 to i64*
  %6844 = load i64, i64* %PC.i149
  %6845 = add i64 %6844, 10
  store i64 %6845, i64* %PC.i149
  store i64 ptrtoint (%G__0x5834d8_type* @G__0x5834d8 to i64), i64* %RDI.i150, align 8
  store %struct.Memory* %loadMem_48b3cf, %struct.Memory** %MEMORY
  %loadMem_48b3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 33
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %6848 to i64*
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 1
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %6852 = bitcast %union.anon* %6851 to %struct.anon.2*
  %AL.i148 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6852, i32 0, i32 0
  %6853 = load i64, i64* %PC.i147
  %6854 = add i64 %6853, 2
  store i64 %6854, i64* %PC.i147
  store i8 0, i8* %AL.i148, align 1
  store %struct.Memory* %loadMem_48b3d9, %struct.Memory** %MEMORY
  %loadMem1_48b3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 33
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6857 to i64*
  %6858 = load i64, i64* %PC.i146
  %6859 = add i64 %6858, -235051
  %6860 = load i64, i64* %PC.i146
  %6861 = add i64 %6860, 5
  %6862 = load i64, i64* %PC.i146
  %6863 = add i64 %6862, 5
  store i64 %6863, i64* %PC.i146
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6865 = load i64, i64* %6864, align 8
  %6866 = add i64 %6865, -8
  %6867 = inttoptr i64 %6866 to i64*
  store i64 %6861, i64* %6867
  store i64 %6866, i64* %6864, align 8
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6859, i64* %6868, align 8
  store %struct.Memory* %loadMem1_48b3db, %struct.Memory** %MEMORY
  %loadMem2_48b3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b3db = load i64, i64* %3
  %call2_48b3db = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b3db, %struct.Memory* %loadMem2_48b3db)
  store %struct.Memory* %call2_48b3db, %struct.Memory** %MEMORY
  %loadMem_48b3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6870 = getelementptr inbounds %struct.GPR, %struct.GPR* %6869, i32 0, i32 33
  %6871 = getelementptr inbounds %struct.Reg, %struct.Reg* %6870, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6871 to i64*
  %6872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6873 = getelementptr inbounds %struct.GPR, %struct.GPR* %6872, i32 0, i32 1
  %6874 = getelementptr inbounds %struct.Reg, %struct.Reg* %6873, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %6874 to i32*
  %6875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6876 = getelementptr inbounds %struct.GPR, %struct.GPR* %6875, i32 0, i32 15
  %6877 = getelementptr inbounds %struct.Reg, %struct.Reg* %6876, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %6877 to i64*
  %6878 = load i64, i64* %RBP.i145
  %6879 = sub i64 %6878, 152
  %6880 = load i32, i32* %EAX.i144
  %6881 = zext i32 %6880 to i64
  %6882 = load i64, i64* %PC.i143
  %6883 = add i64 %6882, 6
  store i64 %6883, i64* %PC.i143
  %6884 = inttoptr i64 %6879 to i32*
  store i32 %6880, i32* %6884
  store %struct.Memory* %loadMem_48b3e0, %struct.Memory** %MEMORY
  br label %block_.L_48b3e6

block_.L_48b3e6:                                  ; preds = %block_.L_48b3cf, %block_48b3b3
  %loadMem_48b3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 33
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %6887 to i64*
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6889 = getelementptr inbounds %struct.GPR, %struct.GPR* %6888, i32 0, i32 1
  %6890 = getelementptr inbounds %struct.Reg, %struct.Reg* %6889, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %6890 to i64*
  %6891 = load i64, i64* %PC.i141
  %6892 = add i64 %6891, 10
  store i64 %6892, i64* %PC.i141
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i142, align 8
  store %struct.Memory* %loadMem_48b3e6, %struct.Memory** %MEMORY
  %loadMem_48b3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6894 = getelementptr inbounds %struct.GPR, %struct.GPR* %6893, i32 0, i32 33
  %6895 = getelementptr inbounds %struct.Reg, %struct.Reg* %6894, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6895 to i64*
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 5
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %6898 to i64*
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 15
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %6901 to i64*
  %6902 = load i64, i64* %RBP.i140
  %6903 = sub i64 %6902, 12
  %6904 = load i64, i64* %PC.i138
  %6905 = add i64 %6904, 4
  store i64 %6905, i64* %PC.i138
  %6906 = inttoptr i64 %6903 to i32*
  %6907 = load i32, i32* %6906
  %6908 = sext i32 %6907 to i64
  store i64 %6908, i64* %RCX.i139, align 8
  store %struct.Memory* %loadMem_48b3f0, %struct.Memory** %MEMORY
  %loadMem_48b3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6910 = getelementptr inbounds %struct.GPR, %struct.GPR* %6909, i32 0, i32 33
  %6911 = getelementptr inbounds %struct.Reg, %struct.Reg* %6910, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6911 to i64*
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6913 = getelementptr inbounds %struct.GPR, %struct.GPR* %6912, i32 0, i32 5
  %6914 = getelementptr inbounds %struct.Reg, %struct.Reg* %6913, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %6914 to i64*
  %6915 = load i64, i64* %RCX.i137
  %6916 = load i64, i64* %PC.i136
  %6917 = add i64 %6916, 7
  store i64 %6917, i64* %PC.i136
  %6918 = sext i64 %6915 to i128
  %6919 = and i128 %6918, -18446744073709551616
  %6920 = zext i64 %6915 to i128
  %6921 = or i128 %6919, %6920
  %6922 = mul i128 380, %6921
  %6923 = trunc i128 %6922 to i64
  store i64 %6923, i64* %RCX.i137, align 8
  %6924 = sext i64 %6923 to i128
  %6925 = icmp ne i128 %6924, %6922
  %6926 = zext i1 %6925 to i8
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6926, i8* %6927, align 1
  %6928 = trunc i128 %6922 to i32
  %6929 = and i32 %6928, 255
  %6930 = call i32 @llvm.ctpop.i32(i32 %6929)
  %6931 = trunc i32 %6930 to i8
  %6932 = and i8 %6931, 1
  %6933 = xor i8 %6932, 1
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6933, i8* %6934, align 1
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6935, align 1
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6936, align 1
  %6937 = lshr i64 %6923, 63
  %6938 = trunc i64 %6937 to i8
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6938, i8* %6939, align 1
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6926, i8* %6940, align 1
  store %struct.Memory* %loadMem_48b3f4, %struct.Memory** %MEMORY
  %loadMem_48b3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 33
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6943 to i64*
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 1
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %6946 to i64*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 5
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %6949 to i64*
  %6950 = load i64, i64* %RAX.i134
  %6951 = load i64, i64* %RCX.i135
  %6952 = load i64, i64* %PC.i133
  %6953 = add i64 %6952, 3
  store i64 %6953, i64* %PC.i133
  %6954 = add i64 %6951, %6950
  store i64 %6954, i64* %RAX.i134, align 8
  %6955 = icmp ult i64 %6954, %6950
  %6956 = icmp ult i64 %6954, %6951
  %6957 = or i1 %6955, %6956
  %6958 = zext i1 %6957 to i8
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6958, i8* %6959, align 1
  %6960 = trunc i64 %6954 to i32
  %6961 = and i32 %6960, 255
  %6962 = call i32 @llvm.ctpop.i32(i32 %6961)
  %6963 = trunc i32 %6962 to i8
  %6964 = and i8 %6963, 1
  %6965 = xor i8 %6964, 1
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6965, i8* %6966, align 1
  %6967 = xor i64 %6951, %6950
  %6968 = xor i64 %6967, %6954
  %6969 = lshr i64 %6968, 4
  %6970 = trunc i64 %6969 to i8
  %6971 = and i8 %6970, 1
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6971, i8* %6972, align 1
  %6973 = icmp eq i64 %6954, 0
  %6974 = zext i1 %6973 to i8
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6974, i8* %6975, align 1
  %6976 = lshr i64 %6954, 63
  %6977 = trunc i64 %6976 to i8
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6977, i8* %6978, align 1
  %6979 = lshr i64 %6950, 63
  %6980 = lshr i64 %6951, 63
  %6981 = xor i64 %6976, %6979
  %6982 = xor i64 %6976, %6980
  %6983 = add i64 %6981, %6982
  %6984 = icmp eq i64 %6983, 2
  %6985 = zext i1 %6984 to i8
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6985, i8* %6986, align 1
  store %struct.Memory* %loadMem_48b3fb, %struct.Memory** %MEMORY
  %loadMem_48b3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6988 = getelementptr inbounds %struct.GPR, %struct.GPR* %6987, i32 0, i32 33
  %6989 = getelementptr inbounds %struct.Reg, %struct.Reg* %6988, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6989 to i64*
  %6990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6991 = getelementptr inbounds %struct.GPR, %struct.GPR* %6990, i32 0, i32 1
  %6992 = getelementptr inbounds %struct.Reg, %struct.Reg* %6991, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %6992 to i64*
  %6993 = load i64, i64* %RAX.i132
  %6994 = add i64 %6993, 52
  %6995 = load i64, i64* %PC.i131
  %6996 = add i64 %6995, 4
  store i64 %6996, i64* %PC.i131
  %6997 = inttoptr i64 %6994 to i32*
  %6998 = load i32, i32* %6997
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6999, align 1
  %7000 = and i32 %6998, 255
  %7001 = call i32 @llvm.ctpop.i32(i32 %7000)
  %7002 = trunc i32 %7001 to i8
  %7003 = and i8 %7002, 1
  %7004 = xor i8 %7003, 1
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7004, i8* %7005, align 1
  %7006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7006, align 1
  %7007 = icmp eq i32 %6998, 0
  %7008 = zext i1 %7007 to i8
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7008, i8* %7009, align 1
  %7010 = lshr i32 %6998, 31
  %7011 = trunc i32 %7010 to i8
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7011, i8* %7012, align 1
  %7013 = lshr i32 %6998, 31
  %7014 = xor i32 %7010, %7013
  %7015 = add i32 %7014, %7013
  %7016 = icmp eq i32 %7015, 2
  %7017 = zext i1 %7016 to i8
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7017, i8* %7018, align 1
  store %struct.Memory* %loadMem_48b3fe, %struct.Memory** %MEMORY
  %loadMem_48b402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7020 = getelementptr inbounds %struct.GPR, %struct.GPR* %7019, i32 0, i32 33
  %7021 = getelementptr inbounds %struct.Reg, %struct.Reg* %7020, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7021 to i64*
  %7022 = load i64, i64* %PC.i130
  %7023 = add i64 %7022, 34
  %7024 = load i64, i64* %PC.i130
  %7025 = add i64 %7024, 6
  %7026 = load i64, i64* %PC.i130
  %7027 = add i64 %7026, 6
  store i64 %7027, i64* %PC.i130
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7029 = load i8, i8* %7028, align 1
  store i8 %7029, i8* %BRANCH_TAKEN, align 1
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7031 = icmp ne i8 %7029, 0
  %7032 = select i1 %7031, i64 %7023, i64 %7025
  store i64 %7032, i64* %7030, align 8
  store %struct.Memory* %loadMem_48b402, %struct.Memory** %MEMORY
  %loadBr_48b402 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b402 = icmp eq i8 %loadBr_48b402, 1
  br i1 %cmpBr_48b402, label %block_.L_48b424, label %block_48b408

block_48b408:                                     ; preds = %block_.L_48b3e6
  %loadMem_48b408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7034 = getelementptr inbounds %struct.GPR, %struct.GPR* %7033, i32 0, i32 33
  %7035 = getelementptr inbounds %struct.Reg, %struct.Reg* %7034, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7035 to i64*
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 11
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %RDI.i129 = bitcast %union.anon* %7038 to i64*
  %7039 = load i64, i64* %PC.i128
  %7040 = add i64 %7039, 10
  store i64 %7040, i64* %PC.i128
  store i64 ptrtoint (%G__0x5834ea_type* @G__0x5834ea to i64), i64* %RDI.i129, align 8
  store %struct.Memory* %loadMem_48b408, %struct.Memory** %MEMORY
  %loadMem_48b412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 33
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 1
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %7047 = bitcast %union.anon* %7046 to %struct.anon.2*
  %AL.i127 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7047, i32 0, i32 0
  %7048 = load i64, i64* %PC.i126
  %7049 = add i64 %7048, 2
  store i64 %7049, i64* %PC.i126
  store i8 0, i8* %AL.i127, align 1
  store %struct.Memory* %loadMem_48b412, %struct.Memory** %MEMORY
  %loadMem1_48b414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7051 = getelementptr inbounds %struct.GPR, %struct.GPR* %7050, i32 0, i32 33
  %7052 = getelementptr inbounds %struct.Reg, %struct.Reg* %7051, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7052 to i64*
  %7053 = load i64, i64* %PC.i125
  %7054 = add i64 %7053, -235108
  %7055 = load i64, i64* %PC.i125
  %7056 = add i64 %7055, 5
  %7057 = load i64, i64* %PC.i125
  %7058 = add i64 %7057, 5
  store i64 %7058, i64* %PC.i125
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7060 = load i64, i64* %7059, align 8
  %7061 = add i64 %7060, -8
  %7062 = inttoptr i64 %7061 to i64*
  store i64 %7056, i64* %7062
  store i64 %7061, i64* %7059, align 8
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7054, i64* %7063, align 8
  store %struct.Memory* %loadMem1_48b414, %struct.Memory** %MEMORY
  %loadMem2_48b414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b414 = load i64, i64* %3
  %call2_48b414 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b414, %struct.Memory* %loadMem2_48b414)
  store %struct.Memory* %call2_48b414, %struct.Memory** %MEMORY
  %loadMem_48b419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7065 = getelementptr inbounds %struct.GPR, %struct.GPR* %7064, i32 0, i32 33
  %7066 = getelementptr inbounds %struct.Reg, %struct.Reg* %7065, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7066 to i64*
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 1
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %7069 to i32*
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 15
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %7072 to i64*
  %7073 = load i64, i64* %RBP.i124
  %7074 = sub i64 %7073, 156
  %7075 = load i32, i32* %EAX.i123
  %7076 = zext i32 %7075 to i64
  %7077 = load i64, i64* %PC.i122
  %7078 = add i64 %7077, 6
  store i64 %7078, i64* %PC.i122
  %7079 = inttoptr i64 %7074 to i32*
  store i32 %7075, i32* %7079
  store %struct.Memory* %loadMem_48b419, %struct.Memory** %MEMORY
  %loadMem_48b41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7081 = getelementptr inbounds %struct.GPR, %struct.GPR* %7080, i32 0, i32 33
  %7082 = getelementptr inbounds %struct.Reg, %struct.Reg* %7081, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7082 to i64*
  %7083 = load i64, i64* %PC.i121
  %7084 = add i64 %7083, 28
  %7085 = load i64, i64* %PC.i121
  %7086 = add i64 %7085, 5
  store i64 %7086, i64* %PC.i121
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7084, i64* %7087, align 8
  store %struct.Memory* %loadMem_48b41f, %struct.Memory** %MEMORY
  br label %block_.L_48b43b

block_.L_48b424:                                  ; preds = %block_.L_48b3e6
  %loadMem_48b424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7089 = getelementptr inbounds %struct.GPR, %struct.GPR* %7088, i32 0, i32 33
  %7090 = getelementptr inbounds %struct.Reg, %struct.Reg* %7089, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7090 to i64*
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7092 = getelementptr inbounds %struct.GPR, %struct.GPR* %7091, i32 0, i32 11
  %7093 = getelementptr inbounds %struct.Reg, %struct.Reg* %7092, i32 0, i32 0
  %RDI.i120 = bitcast %union.anon* %7093 to i64*
  %7094 = load i64, i64* %PC.i119
  %7095 = add i64 %7094, 10
  store i64 %7095, i64* %PC.i119
  store i64 ptrtoint (%G__0x5834fd_type* @G__0x5834fd to i64), i64* %RDI.i120, align 8
  store %struct.Memory* %loadMem_48b424, %struct.Memory** %MEMORY
  %loadMem_48b42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 33
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %7098 to i64*
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7100 = getelementptr inbounds %struct.GPR, %struct.GPR* %7099, i32 0, i32 1
  %7101 = getelementptr inbounds %struct.Reg, %struct.Reg* %7100, i32 0, i32 0
  %7102 = bitcast %union.anon* %7101 to %struct.anon.2*
  %AL.i118 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7102, i32 0, i32 0
  %7103 = load i64, i64* %PC.i117
  %7104 = add i64 %7103, 2
  store i64 %7104, i64* %PC.i117
  store i8 0, i8* %AL.i118, align 1
  store %struct.Memory* %loadMem_48b42e, %struct.Memory** %MEMORY
  %loadMem1_48b430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 33
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7107 to i64*
  %7108 = load i64, i64* %PC.i116
  %7109 = add i64 %7108, -235136
  %7110 = load i64, i64* %PC.i116
  %7111 = add i64 %7110, 5
  %7112 = load i64, i64* %PC.i116
  %7113 = add i64 %7112, 5
  store i64 %7113, i64* %PC.i116
  %7114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7115 = load i64, i64* %7114, align 8
  %7116 = add i64 %7115, -8
  %7117 = inttoptr i64 %7116 to i64*
  store i64 %7111, i64* %7117
  store i64 %7116, i64* %7114, align 8
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7109, i64* %7118, align 8
  store %struct.Memory* %loadMem1_48b430, %struct.Memory** %MEMORY
  %loadMem2_48b430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b430 = load i64, i64* %3
  %call2_48b430 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b430, %struct.Memory* %loadMem2_48b430)
  store %struct.Memory* %call2_48b430, %struct.Memory** %MEMORY
  %loadMem_48b435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7120 = getelementptr inbounds %struct.GPR, %struct.GPR* %7119, i32 0, i32 33
  %7121 = getelementptr inbounds %struct.Reg, %struct.Reg* %7120, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %7121 to i64*
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 1
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %EAX.i114 = bitcast %union.anon* %7124 to i32*
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 15
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %7127 to i64*
  %7128 = load i64, i64* %RBP.i115
  %7129 = sub i64 %7128, 160
  %7130 = load i32, i32* %EAX.i114
  %7131 = zext i32 %7130 to i64
  %7132 = load i64, i64* %PC.i113
  %7133 = add i64 %7132, 6
  store i64 %7133, i64* %PC.i113
  %7134 = inttoptr i64 %7129 to i32*
  store i32 %7130, i32* %7134
  store %struct.Memory* %loadMem_48b435, %struct.Memory** %MEMORY
  br label %block_.L_48b43b

block_.L_48b43b:                                  ; preds = %block_.L_48b424, %block_48b408
  %loadMem_48b43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 1
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %7140 to i64*
  %7141 = load i64, i64* %PC.i111
  %7142 = add i64 %7141, 10
  store i64 %7142, i64* %PC.i111
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i112, align 8
  store %struct.Memory* %loadMem_48b43b, %struct.Memory** %MEMORY
  %loadMem_48b445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7144 = getelementptr inbounds %struct.GPR, %struct.GPR* %7143, i32 0, i32 33
  %7145 = getelementptr inbounds %struct.Reg, %struct.Reg* %7144, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %7145 to i64*
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 5
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %7148 to i64*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 15
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %7151 to i64*
  %7152 = load i64, i64* %RBP.i110
  %7153 = sub i64 %7152, 12
  %7154 = load i64, i64* %PC.i108
  %7155 = add i64 %7154, 4
  store i64 %7155, i64* %PC.i108
  %7156 = inttoptr i64 %7153 to i32*
  %7157 = load i32, i32* %7156
  %7158 = sext i32 %7157 to i64
  store i64 %7158, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_48b445, %struct.Memory** %MEMORY
  %loadMem_48b449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 33
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %7161 to i64*
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 5
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %7164 to i64*
  %7165 = load i64, i64* %RCX.i107
  %7166 = load i64, i64* %PC.i106
  %7167 = add i64 %7166, 7
  store i64 %7167, i64* %PC.i106
  %7168 = sext i64 %7165 to i128
  %7169 = and i128 %7168, -18446744073709551616
  %7170 = zext i64 %7165 to i128
  %7171 = or i128 %7169, %7170
  %7172 = mul i128 380, %7171
  %7173 = trunc i128 %7172 to i64
  store i64 %7173, i64* %RCX.i107, align 8
  %7174 = sext i64 %7173 to i128
  %7175 = icmp ne i128 %7174, %7172
  %7176 = zext i1 %7175 to i8
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7176, i8* %7177, align 1
  %7178 = trunc i128 %7172 to i32
  %7179 = and i32 %7178, 255
  %7180 = call i32 @llvm.ctpop.i32(i32 %7179)
  %7181 = trunc i32 %7180 to i8
  %7182 = and i8 %7181, 1
  %7183 = xor i8 %7182, 1
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7183, i8* %7184, align 1
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7185, align 1
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7186, align 1
  %7187 = lshr i64 %7173, 63
  %7188 = trunc i64 %7187 to i8
  %7189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7188, i8* %7189, align 1
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7176, i8* %7190, align 1
  store %struct.Memory* %loadMem_48b449, %struct.Memory** %MEMORY
  %loadMem_48b450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 33
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %7193 to i64*
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7195 = getelementptr inbounds %struct.GPR, %struct.GPR* %7194, i32 0, i32 1
  %7196 = getelementptr inbounds %struct.Reg, %struct.Reg* %7195, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %7196 to i64*
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7198 = getelementptr inbounds %struct.GPR, %struct.GPR* %7197, i32 0, i32 5
  %7199 = getelementptr inbounds %struct.Reg, %struct.Reg* %7198, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %7199 to i64*
  %7200 = load i64, i64* %RAX.i104
  %7201 = load i64, i64* %RCX.i105
  %7202 = load i64, i64* %PC.i103
  %7203 = add i64 %7202, 3
  store i64 %7203, i64* %PC.i103
  %7204 = add i64 %7201, %7200
  store i64 %7204, i64* %RAX.i104, align 8
  %7205 = icmp ult i64 %7204, %7200
  %7206 = icmp ult i64 %7204, %7201
  %7207 = or i1 %7205, %7206
  %7208 = zext i1 %7207 to i8
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7208, i8* %7209, align 1
  %7210 = trunc i64 %7204 to i32
  %7211 = and i32 %7210, 255
  %7212 = call i32 @llvm.ctpop.i32(i32 %7211)
  %7213 = trunc i32 %7212 to i8
  %7214 = and i8 %7213, 1
  %7215 = xor i8 %7214, 1
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7215, i8* %7216, align 1
  %7217 = xor i64 %7201, %7200
  %7218 = xor i64 %7217, %7204
  %7219 = lshr i64 %7218, 4
  %7220 = trunc i64 %7219 to i8
  %7221 = and i8 %7220, 1
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7221, i8* %7222, align 1
  %7223 = icmp eq i64 %7204, 0
  %7224 = zext i1 %7223 to i8
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7224, i8* %7225, align 1
  %7226 = lshr i64 %7204, 63
  %7227 = trunc i64 %7226 to i8
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7227, i8* %7228, align 1
  %7229 = lshr i64 %7200, 63
  %7230 = lshr i64 %7201, 63
  %7231 = xor i64 %7226, %7229
  %7232 = xor i64 %7226, %7230
  %7233 = add i64 %7231, %7232
  %7234 = icmp eq i64 %7233, 2
  %7235 = zext i1 %7234 to i8
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7235, i8* %7236, align 1
  store %struct.Memory* %loadMem_48b450, %struct.Memory** %MEMORY
  %loadMem_48b453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7238 = getelementptr inbounds %struct.GPR, %struct.GPR* %7237, i32 0, i32 33
  %7239 = getelementptr inbounds %struct.Reg, %struct.Reg* %7238, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %7239 to i64*
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 1
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %7242 to i64*
  %7243 = load i64, i64* %RAX.i102
  %7244 = add i64 %7243, 56
  %7245 = load i64, i64* %PC.i101
  %7246 = add i64 %7245, 4
  store i64 %7246, i64* %PC.i101
  %7247 = inttoptr i64 %7244 to i32*
  %7248 = load i32, i32* %7247
  %7249 = sub i32 %7248, 1
  %7250 = icmp ult i32 %7248, 1
  %7251 = zext i1 %7250 to i8
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7251, i8* %7252, align 1
  %7253 = and i32 %7249, 255
  %7254 = call i32 @llvm.ctpop.i32(i32 %7253)
  %7255 = trunc i32 %7254 to i8
  %7256 = and i8 %7255, 1
  %7257 = xor i8 %7256, 1
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7257, i8* %7258, align 1
  %7259 = xor i32 %7248, 1
  %7260 = xor i32 %7259, %7249
  %7261 = lshr i32 %7260, 4
  %7262 = trunc i32 %7261 to i8
  %7263 = and i8 %7262, 1
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7263, i8* %7264, align 1
  %7265 = icmp eq i32 %7249, 0
  %7266 = zext i1 %7265 to i8
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7266, i8* %7267, align 1
  %7268 = lshr i32 %7249, 31
  %7269 = trunc i32 %7268 to i8
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7269, i8* %7270, align 1
  %7271 = lshr i32 %7248, 31
  %7272 = xor i32 %7268, %7271
  %7273 = add i32 %7272, %7271
  %7274 = icmp eq i32 %7273, 2
  %7275 = zext i1 %7274 to i8
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7275, i8* %7276, align 1
  store %struct.Memory* %loadMem_48b453, %struct.Memory** %MEMORY
  %loadMem_48b457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7278 = getelementptr inbounds %struct.GPR, %struct.GPR* %7277, i32 0, i32 33
  %7279 = getelementptr inbounds %struct.Reg, %struct.Reg* %7278, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %7279 to i64*
  %7280 = load i64, i64* %PC.i100
  %7281 = add i64 %7280, 34
  %7282 = load i64, i64* %PC.i100
  %7283 = add i64 %7282, 6
  %7284 = load i64, i64* %PC.i100
  %7285 = add i64 %7284, 6
  store i64 %7285, i64* %PC.i100
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7287 = load i8, i8* %7286, align 1
  %7288 = icmp eq i8 %7287, 0
  %7289 = zext i1 %7288 to i8
  store i8 %7289, i8* %BRANCH_TAKEN, align 1
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7291 = select i1 %7288, i64 %7281, i64 %7283
  store i64 %7291, i64* %7290, align 8
  store %struct.Memory* %loadMem_48b457, %struct.Memory** %MEMORY
  %loadBr_48b457 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b457 = icmp eq i8 %loadBr_48b457, 1
  br i1 %cmpBr_48b457, label %block_.L_48b479, label %block_48b45d

block_48b45d:                                     ; preds = %block_.L_48b43b
  %loadMem_48b45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7293 = getelementptr inbounds %struct.GPR, %struct.GPR* %7292, i32 0, i32 33
  %7294 = getelementptr inbounds %struct.Reg, %struct.Reg* %7293, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7294 to i64*
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 11
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %RDI.i99 = bitcast %union.anon* %7297 to i64*
  %7298 = load i64, i64* %PC.i98
  %7299 = add i64 %7298, 10
  store i64 %7299, i64* %PC.i98
  store i64 ptrtoint (%G__0x58350f_type* @G__0x58350f to i64), i64* %RDI.i99, align 8
  store %struct.Memory* %loadMem_48b45d, %struct.Memory** %MEMORY
  %loadMem_48b467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 33
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %7302 to i64*
  %7303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7304 = getelementptr inbounds %struct.GPR, %struct.GPR* %7303, i32 0, i32 1
  %7305 = getelementptr inbounds %struct.Reg, %struct.Reg* %7304, i32 0, i32 0
  %7306 = bitcast %union.anon* %7305 to %struct.anon.2*
  %AL.i97 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7306, i32 0, i32 0
  %7307 = load i64, i64* %PC.i96
  %7308 = add i64 %7307, 2
  store i64 %7308, i64* %PC.i96
  store i8 0, i8* %AL.i97, align 1
  store %struct.Memory* %loadMem_48b467, %struct.Memory** %MEMORY
  %loadMem1_48b469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7310 = getelementptr inbounds %struct.GPR, %struct.GPR* %7309, i32 0, i32 33
  %7311 = getelementptr inbounds %struct.Reg, %struct.Reg* %7310, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7311 to i64*
  %7312 = load i64, i64* %PC.i95
  %7313 = add i64 %7312, -235193
  %7314 = load i64, i64* %PC.i95
  %7315 = add i64 %7314, 5
  %7316 = load i64, i64* %PC.i95
  %7317 = add i64 %7316, 5
  store i64 %7317, i64* %PC.i95
  %7318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7319 = load i64, i64* %7318, align 8
  %7320 = add i64 %7319, -8
  %7321 = inttoptr i64 %7320 to i64*
  store i64 %7315, i64* %7321
  store i64 %7320, i64* %7318, align 8
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7313, i64* %7322, align 8
  store %struct.Memory* %loadMem1_48b469, %struct.Memory** %MEMORY
  %loadMem2_48b469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b469 = load i64, i64* %3
  %call2_48b469 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b469, %struct.Memory* %loadMem2_48b469)
  store %struct.Memory* %call2_48b469, %struct.Memory** %MEMORY
  %loadMem_48b46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7324 = getelementptr inbounds %struct.GPR, %struct.GPR* %7323, i32 0, i32 33
  %7325 = getelementptr inbounds %struct.Reg, %struct.Reg* %7324, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7325 to i64*
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7327 = getelementptr inbounds %struct.GPR, %struct.GPR* %7326, i32 0, i32 1
  %7328 = getelementptr inbounds %struct.Reg, %struct.Reg* %7327, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %7328 to i32*
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7330 = getelementptr inbounds %struct.GPR, %struct.GPR* %7329, i32 0, i32 15
  %7331 = getelementptr inbounds %struct.Reg, %struct.Reg* %7330, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %7331 to i64*
  %7332 = load i64, i64* %RBP.i94
  %7333 = sub i64 %7332, 164
  %7334 = load i32, i32* %EAX.i93
  %7335 = zext i32 %7334 to i64
  %7336 = load i64, i64* %PC.i92
  %7337 = add i64 %7336, 6
  store i64 %7337, i64* %PC.i92
  %7338 = inttoptr i64 %7333 to i32*
  store i32 %7334, i32* %7338
  store %struct.Memory* %loadMem_48b46e, %struct.Memory** %MEMORY
  %loadMem_48b474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7340 = getelementptr inbounds %struct.GPR, %struct.GPR* %7339, i32 0, i32 33
  %7341 = getelementptr inbounds %struct.Reg, %struct.Reg* %7340, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %7341 to i64*
  %7342 = load i64, i64* %PC.i91
  %7343 = add i64 %7342, 268
  %7344 = load i64, i64* %PC.i91
  %7345 = add i64 %7344, 5
  store i64 %7345, i64* %PC.i91
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7343, i64* %7346, align 8
  store %struct.Memory* %loadMem_48b474, %struct.Memory** %MEMORY
  br label %block_.L_48b580

block_.L_48b479:                                  ; preds = %block_.L_48b43b
  %loadMem_48b479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 33
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7349 to i64*
  %7350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7351 = getelementptr inbounds %struct.GPR, %struct.GPR* %7350, i32 0, i32 1
  %7352 = getelementptr inbounds %struct.Reg, %struct.Reg* %7351, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %7352 to i64*
  %7353 = load i64, i64* %PC.i89
  %7354 = add i64 %7353, 10
  store i64 %7354, i64* %PC.i89
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_48b479, %struct.Memory** %MEMORY
  %loadMem_48b483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 33
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7357 to i64*
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 5
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %7360 to i64*
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 15
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %7363 to i64*
  %7364 = load i64, i64* %RBP.i88
  %7365 = sub i64 %7364, 12
  %7366 = load i64, i64* %PC.i86
  %7367 = add i64 %7366, 4
  store i64 %7367, i64* %PC.i86
  %7368 = inttoptr i64 %7365 to i32*
  %7369 = load i32, i32* %7368
  %7370 = sext i32 %7369 to i64
  store i64 %7370, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_48b483, %struct.Memory** %MEMORY
  %loadMem_48b487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7372 = getelementptr inbounds %struct.GPR, %struct.GPR* %7371, i32 0, i32 33
  %7373 = getelementptr inbounds %struct.Reg, %struct.Reg* %7372, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7373 to i64*
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7375 = getelementptr inbounds %struct.GPR, %struct.GPR* %7374, i32 0, i32 5
  %7376 = getelementptr inbounds %struct.Reg, %struct.Reg* %7375, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %7376 to i64*
  %7377 = load i64, i64* %RCX.i85
  %7378 = load i64, i64* %PC.i84
  %7379 = add i64 %7378, 7
  store i64 %7379, i64* %PC.i84
  %7380 = sext i64 %7377 to i128
  %7381 = and i128 %7380, -18446744073709551616
  %7382 = zext i64 %7377 to i128
  %7383 = or i128 %7381, %7382
  %7384 = mul i128 380, %7383
  %7385 = trunc i128 %7384 to i64
  store i64 %7385, i64* %RCX.i85, align 8
  %7386 = sext i64 %7385 to i128
  %7387 = icmp ne i128 %7386, %7384
  %7388 = zext i1 %7387 to i8
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7388, i8* %7389, align 1
  %7390 = trunc i128 %7384 to i32
  %7391 = and i32 %7390, 255
  %7392 = call i32 @llvm.ctpop.i32(i32 %7391)
  %7393 = trunc i32 %7392 to i8
  %7394 = and i8 %7393, 1
  %7395 = xor i8 %7394, 1
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7395, i8* %7396, align 1
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7397, align 1
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7398, align 1
  %7399 = lshr i64 %7385, 63
  %7400 = trunc i64 %7399 to i8
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7400, i8* %7401, align 1
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7388, i8* %7402, align 1
  store %struct.Memory* %loadMem_48b487, %struct.Memory** %MEMORY
  %loadMem_48b48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7404 = getelementptr inbounds %struct.GPR, %struct.GPR* %7403, i32 0, i32 33
  %7405 = getelementptr inbounds %struct.Reg, %struct.Reg* %7404, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7405 to i64*
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 1
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %7408 to i64*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 5
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %7411 to i64*
  %7412 = load i64, i64* %RAX.i82
  %7413 = load i64, i64* %RCX.i83
  %7414 = load i64, i64* %PC.i81
  %7415 = add i64 %7414, 3
  store i64 %7415, i64* %PC.i81
  %7416 = add i64 %7413, %7412
  store i64 %7416, i64* %RAX.i82, align 8
  %7417 = icmp ult i64 %7416, %7412
  %7418 = icmp ult i64 %7416, %7413
  %7419 = or i1 %7417, %7418
  %7420 = zext i1 %7419 to i8
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7420, i8* %7421, align 1
  %7422 = trunc i64 %7416 to i32
  %7423 = and i32 %7422, 255
  %7424 = call i32 @llvm.ctpop.i32(i32 %7423)
  %7425 = trunc i32 %7424 to i8
  %7426 = and i8 %7425, 1
  %7427 = xor i8 %7426, 1
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7427, i8* %7428, align 1
  %7429 = xor i64 %7413, %7412
  %7430 = xor i64 %7429, %7416
  %7431 = lshr i64 %7430, 4
  %7432 = trunc i64 %7431 to i8
  %7433 = and i8 %7432, 1
  %7434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7433, i8* %7434, align 1
  %7435 = icmp eq i64 %7416, 0
  %7436 = zext i1 %7435 to i8
  %7437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7436, i8* %7437, align 1
  %7438 = lshr i64 %7416, 63
  %7439 = trunc i64 %7438 to i8
  %7440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7439, i8* %7440, align 1
  %7441 = lshr i64 %7412, 63
  %7442 = lshr i64 %7413, 63
  %7443 = xor i64 %7438, %7441
  %7444 = xor i64 %7438, %7442
  %7445 = add i64 %7443, %7444
  %7446 = icmp eq i64 %7445, 2
  %7447 = zext i1 %7446 to i8
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7447, i8* %7448, align 1
  store %struct.Memory* %loadMem_48b48e, %struct.Memory** %MEMORY
  %loadMem_48b491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7450 = getelementptr inbounds %struct.GPR, %struct.GPR* %7449, i32 0, i32 33
  %7451 = getelementptr inbounds %struct.Reg, %struct.Reg* %7450, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7451 to i64*
  %7452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7453 = getelementptr inbounds %struct.GPR, %struct.GPR* %7452, i32 0, i32 1
  %7454 = getelementptr inbounds %struct.Reg, %struct.Reg* %7453, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %7454 to i64*
  %7455 = load i64, i64* %RAX.i80
  %7456 = add i64 %7455, 56
  %7457 = load i64, i64* %PC.i79
  %7458 = add i64 %7457, 4
  store i64 %7458, i64* %PC.i79
  %7459 = inttoptr i64 %7456 to i32*
  %7460 = load i32, i32* %7459
  %7461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7461, align 1
  %7462 = and i32 %7460, 255
  %7463 = call i32 @llvm.ctpop.i32(i32 %7462)
  %7464 = trunc i32 %7463 to i8
  %7465 = and i8 %7464, 1
  %7466 = xor i8 %7465, 1
  %7467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7466, i8* %7467, align 1
  %7468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7468, align 1
  %7469 = icmp eq i32 %7460, 0
  %7470 = zext i1 %7469 to i8
  %7471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7470, i8* %7471, align 1
  %7472 = lshr i32 %7460, 31
  %7473 = trunc i32 %7472 to i8
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7473, i8* %7474, align 1
  %7475 = lshr i32 %7460, 31
  %7476 = xor i32 %7472, %7475
  %7477 = add i32 %7476, %7475
  %7478 = icmp eq i32 %7477, 2
  %7479 = zext i1 %7478 to i8
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7479, i8* %7480, align 1
  store %struct.Memory* %loadMem_48b491, %struct.Memory** %MEMORY
  %loadMem_48b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 33
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7483 to i64*
  %7484 = load i64, i64* %PC.i78
  %7485 = add i64 %7484, 34
  %7486 = load i64, i64* %PC.i78
  %7487 = add i64 %7486, 6
  %7488 = load i64, i64* %PC.i78
  %7489 = add i64 %7488, 6
  store i64 %7489, i64* %PC.i78
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7491 = load i8, i8* %7490, align 1
  %7492 = icmp eq i8 %7491, 0
  %7493 = zext i1 %7492 to i8
  store i8 %7493, i8* %BRANCH_TAKEN, align 1
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7495 = select i1 %7492, i64 %7485, i64 %7487
  store i64 %7495, i64* %7494, align 8
  store %struct.Memory* %loadMem_48b495, %struct.Memory** %MEMORY
  %loadBr_48b495 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b495 = icmp eq i8 %loadBr_48b495, 1
  br i1 %cmpBr_48b495, label %block_.L_48b4b7, label %block_48b49b

block_48b49b:                                     ; preds = %block_.L_48b479
  %loadMem_48b49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7497 = getelementptr inbounds %struct.GPR, %struct.GPR* %7496, i32 0, i32 33
  %7498 = getelementptr inbounds %struct.Reg, %struct.Reg* %7497, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7498 to i64*
  %7499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7500 = getelementptr inbounds %struct.GPR, %struct.GPR* %7499, i32 0, i32 11
  %7501 = getelementptr inbounds %struct.Reg, %struct.Reg* %7500, i32 0, i32 0
  %RDI.i77 = bitcast %union.anon* %7501 to i64*
  %7502 = load i64, i64* %PC.i76
  %7503 = add i64 %7502, 10
  store i64 %7503, i64* %PC.i76
  store i64 ptrtoint (%G__0x58352b_type* @G__0x58352b to i64), i64* %RDI.i77, align 8
  store %struct.Memory* %loadMem_48b49b, %struct.Memory** %MEMORY
  %loadMem_48b4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 33
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7506 to i64*
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 1
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %7510 = bitcast %union.anon* %7509 to %struct.anon.2*
  %AL.i75 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7510, i32 0, i32 0
  %7511 = load i64, i64* %PC.i74
  %7512 = add i64 %7511, 2
  store i64 %7512, i64* %PC.i74
  store i8 0, i8* %AL.i75, align 1
  store %struct.Memory* %loadMem_48b4a5, %struct.Memory** %MEMORY
  %loadMem1_48b4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7514 = getelementptr inbounds %struct.GPR, %struct.GPR* %7513, i32 0, i32 33
  %7515 = getelementptr inbounds %struct.Reg, %struct.Reg* %7514, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7515 to i64*
  %7516 = load i64, i64* %PC.i73
  %7517 = add i64 %7516, -235255
  %7518 = load i64, i64* %PC.i73
  %7519 = add i64 %7518, 5
  %7520 = load i64, i64* %PC.i73
  %7521 = add i64 %7520, 5
  store i64 %7521, i64* %PC.i73
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7523 = load i64, i64* %7522, align 8
  %7524 = add i64 %7523, -8
  %7525 = inttoptr i64 %7524 to i64*
  store i64 %7519, i64* %7525
  store i64 %7524, i64* %7522, align 8
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7517, i64* %7526, align 8
  store %struct.Memory* %loadMem1_48b4a7, %struct.Memory** %MEMORY
  %loadMem2_48b4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b4a7 = load i64, i64* %3
  %call2_48b4a7 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b4a7, %struct.Memory* %loadMem2_48b4a7)
  store %struct.Memory* %call2_48b4a7, %struct.Memory** %MEMORY
  %loadMem_48b4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %7527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7528 = getelementptr inbounds %struct.GPR, %struct.GPR* %7527, i32 0, i32 33
  %7529 = getelementptr inbounds %struct.Reg, %struct.Reg* %7528, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %7529 to i64*
  %7530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7531 = getelementptr inbounds %struct.GPR, %struct.GPR* %7530, i32 0, i32 1
  %7532 = getelementptr inbounds %struct.Reg, %struct.Reg* %7531, i32 0, i32 0
  %EAX.i71 = bitcast %union.anon* %7532 to i32*
  %7533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7534 = getelementptr inbounds %struct.GPR, %struct.GPR* %7533, i32 0, i32 15
  %7535 = getelementptr inbounds %struct.Reg, %struct.Reg* %7534, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %7535 to i64*
  %7536 = load i64, i64* %RBP.i72
  %7537 = sub i64 %7536, 168
  %7538 = load i32, i32* %EAX.i71
  %7539 = zext i32 %7538 to i64
  %7540 = load i64, i64* %PC.i70
  %7541 = add i64 %7540, 6
  store i64 %7541, i64* %PC.i70
  %7542 = inttoptr i64 %7537 to i32*
  store i32 %7538, i32* %7542
  store %struct.Memory* %loadMem_48b4ac, %struct.Memory** %MEMORY
  %loadMem_48b4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7544 = getelementptr inbounds %struct.GPR, %struct.GPR* %7543, i32 0, i32 33
  %7545 = getelementptr inbounds %struct.Reg, %struct.Reg* %7544, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7545 to i64*
  %7546 = load i64, i64* %PC.i69
  %7547 = add i64 %7546, 201
  %7548 = load i64, i64* %PC.i69
  %7549 = add i64 %7548, 5
  store i64 %7549, i64* %PC.i69
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7547, i64* %7550, align 8
  store %struct.Memory* %loadMem_48b4b2, %struct.Memory** %MEMORY
  br label %block_.L_48b57b

block_.L_48b4b7:                                  ; preds = %block_.L_48b479
  %loadMem_48b4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7552 = getelementptr inbounds %struct.GPR, %struct.GPR* %7551, i32 0, i32 33
  %7553 = getelementptr inbounds %struct.Reg, %struct.Reg* %7552, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7553 to i64*
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7555 = getelementptr inbounds %struct.GPR, %struct.GPR* %7554, i32 0, i32 1
  %7556 = getelementptr inbounds %struct.Reg, %struct.Reg* %7555, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %7556 to i64*
  %7557 = load i64, i64* %PC.i67
  %7558 = add i64 %7557, 10
  store i64 %7558, i64* %PC.i67
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_48b4b7, %struct.Memory** %MEMORY
  %loadMem_48b4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7560 = getelementptr inbounds %struct.GPR, %struct.GPR* %7559, i32 0, i32 33
  %7561 = getelementptr inbounds %struct.Reg, %struct.Reg* %7560, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %7561 to i64*
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7563 = getelementptr inbounds %struct.GPR, %struct.GPR* %7562, i32 0, i32 5
  %7564 = getelementptr inbounds %struct.Reg, %struct.Reg* %7563, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %7564 to i64*
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7566 = getelementptr inbounds %struct.GPR, %struct.GPR* %7565, i32 0, i32 15
  %7567 = getelementptr inbounds %struct.Reg, %struct.Reg* %7566, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %7567 to i64*
  %7568 = load i64, i64* %RBP.i66
  %7569 = sub i64 %7568, 12
  %7570 = load i64, i64* %PC.i64
  %7571 = add i64 %7570, 4
  store i64 %7571, i64* %PC.i64
  %7572 = inttoptr i64 %7569 to i32*
  %7573 = load i32, i32* %7572
  %7574 = sext i32 %7573 to i64
  store i64 %7574, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_48b4c1, %struct.Memory** %MEMORY
  %loadMem_48b4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7576 = getelementptr inbounds %struct.GPR, %struct.GPR* %7575, i32 0, i32 33
  %7577 = getelementptr inbounds %struct.Reg, %struct.Reg* %7576, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %7577 to i64*
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7579 = getelementptr inbounds %struct.GPR, %struct.GPR* %7578, i32 0, i32 5
  %7580 = getelementptr inbounds %struct.Reg, %struct.Reg* %7579, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %7580 to i64*
  %7581 = load i64, i64* %RCX.i63
  %7582 = load i64, i64* %PC.i62
  %7583 = add i64 %7582, 7
  store i64 %7583, i64* %PC.i62
  %7584 = sext i64 %7581 to i128
  %7585 = and i128 %7584, -18446744073709551616
  %7586 = zext i64 %7581 to i128
  %7587 = or i128 %7585, %7586
  %7588 = mul i128 380, %7587
  %7589 = trunc i128 %7588 to i64
  store i64 %7589, i64* %RCX.i63, align 8
  %7590 = sext i64 %7589 to i128
  %7591 = icmp ne i128 %7590, %7588
  %7592 = zext i1 %7591 to i8
  %7593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7592, i8* %7593, align 1
  %7594 = trunc i128 %7588 to i32
  %7595 = and i32 %7594, 255
  %7596 = call i32 @llvm.ctpop.i32(i32 %7595)
  %7597 = trunc i32 %7596 to i8
  %7598 = and i8 %7597, 1
  %7599 = xor i8 %7598, 1
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7599, i8* %7600, align 1
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7601, align 1
  %7602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7602, align 1
  %7603 = lshr i64 %7589, 63
  %7604 = trunc i64 %7603 to i8
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7604, i8* %7605, align 1
  %7606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7592, i8* %7606, align 1
  store %struct.Memory* %loadMem_48b4c5, %struct.Memory** %MEMORY
  %loadMem_48b4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7608 = getelementptr inbounds %struct.GPR, %struct.GPR* %7607, i32 0, i32 33
  %7609 = getelementptr inbounds %struct.Reg, %struct.Reg* %7608, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7609 to i64*
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7611 = getelementptr inbounds %struct.GPR, %struct.GPR* %7610, i32 0, i32 1
  %7612 = getelementptr inbounds %struct.Reg, %struct.Reg* %7611, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %7612 to i64*
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 5
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %7615 to i64*
  %7616 = load i64, i64* %RAX.i60
  %7617 = load i64, i64* %RCX.i61
  %7618 = load i64, i64* %PC.i59
  %7619 = add i64 %7618, 3
  store i64 %7619, i64* %PC.i59
  %7620 = add i64 %7617, %7616
  store i64 %7620, i64* %RAX.i60, align 8
  %7621 = icmp ult i64 %7620, %7616
  %7622 = icmp ult i64 %7620, %7617
  %7623 = or i1 %7621, %7622
  %7624 = zext i1 %7623 to i8
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7624, i8* %7625, align 1
  %7626 = trunc i64 %7620 to i32
  %7627 = and i32 %7626, 255
  %7628 = call i32 @llvm.ctpop.i32(i32 %7627)
  %7629 = trunc i32 %7628 to i8
  %7630 = and i8 %7629, 1
  %7631 = xor i8 %7630, 1
  %7632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7631, i8* %7632, align 1
  %7633 = xor i64 %7617, %7616
  %7634 = xor i64 %7633, %7620
  %7635 = lshr i64 %7634, 4
  %7636 = trunc i64 %7635 to i8
  %7637 = and i8 %7636, 1
  %7638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7637, i8* %7638, align 1
  %7639 = icmp eq i64 %7620, 0
  %7640 = zext i1 %7639 to i8
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7640, i8* %7641, align 1
  %7642 = lshr i64 %7620, 63
  %7643 = trunc i64 %7642 to i8
  %7644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7643, i8* %7644, align 1
  %7645 = lshr i64 %7616, 63
  %7646 = lshr i64 %7617, 63
  %7647 = xor i64 %7642, %7645
  %7648 = xor i64 %7642, %7646
  %7649 = add i64 %7647, %7648
  %7650 = icmp eq i64 %7649, 2
  %7651 = zext i1 %7650 to i8
  %7652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7651, i8* %7652, align 1
  store %struct.Memory* %loadMem_48b4cc, %struct.Memory** %MEMORY
  %loadMem_48b4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7654 = getelementptr inbounds %struct.GPR, %struct.GPR* %7653, i32 0, i32 33
  %7655 = getelementptr inbounds %struct.Reg, %struct.Reg* %7654, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7655 to i64*
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7657 = getelementptr inbounds %struct.GPR, %struct.GPR* %7656, i32 0, i32 1
  %7658 = getelementptr inbounds %struct.Reg, %struct.Reg* %7657, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %7658 to i64*
  %7659 = load i64, i64* %RAX.i58
  %7660 = add i64 %7659, 56
  %7661 = load i64, i64* %PC.i57
  %7662 = add i64 %7661, 4
  store i64 %7662, i64* %PC.i57
  %7663 = inttoptr i64 %7660 to i32*
  %7664 = load i32, i32* %7663
  %7665 = sub i32 %7664, 4
  %7666 = icmp ult i32 %7664, 4
  %7667 = zext i1 %7666 to i8
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7667, i8* %7668, align 1
  %7669 = and i32 %7665, 255
  %7670 = call i32 @llvm.ctpop.i32(i32 %7669)
  %7671 = trunc i32 %7670 to i8
  %7672 = and i8 %7671, 1
  %7673 = xor i8 %7672, 1
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7673, i8* %7674, align 1
  %7675 = xor i32 %7664, 4
  %7676 = xor i32 %7675, %7665
  %7677 = lshr i32 %7676, 4
  %7678 = trunc i32 %7677 to i8
  %7679 = and i8 %7678, 1
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7679, i8* %7680, align 1
  %7681 = icmp eq i32 %7665, 0
  %7682 = zext i1 %7681 to i8
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7682, i8* %7683, align 1
  %7684 = lshr i32 %7665, 31
  %7685 = trunc i32 %7684 to i8
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7685, i8* %7686, align 1
  %7687 = lshr i32 %7664, 31
  %7688 = xor i32 %7684, %7687
  %7689 = add i32 %7688, %7687
  %7690 = icmp eq i32 %7689, 2
  %7691 = zext i1 %7690 to i8
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7691, i8* %7692, align 1
  store %struct.Memory* %loadMem_48b4cf, %struct.Memory** %MEMORY
  %loadMem_48b4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7694 = getelementptr inbounds %struct.GPR, %struct.GPR* %7693, i32 0, i32 33
  %7695 = getelementptr inbounds %struct.Reg, %struct.Reg* %7694, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7695 to i64*
  %7696 = load i64, i64* %PC.i56
  %7697 = add i64 %7696, 34
  %7698 = load i64, i64* %PC.i56
  %7699 = add i64 %7698, 6
  %7700 = load i64, i64* %PC.i56
  %7701 = add i64 %7700, 6
  store i64 %7701, i64* %PC.i56
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7703 = load i8, i8* %7702, align 1
  %7704 = icmp eq i8 %7703, 0
  %7705 = zext i1 %7704 to i8
  store i8 %7705, i8* %BRANCH_TAKEN, align 1
  %7706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7707 = select i1 %7704, i64 %7697, i64 %7699
  store i64 %7707, i64* %7706, align 8
  store %struct.Memory* %loadMem_48b4d3, %struct.Memory** %MEMORY
  %loadBr_48b4d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b4d3 = icmp eq i8 %loadBr_48b4d3, 1
  br i1 %cmpBr_48b4d3, label %block_.L_48b4f5, label %block_48b4d9

block_48b4d9:                                     ; preds = %block_.L_48b4b7
  %loadMem_48b4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 33
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7710 to i64*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 11
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %RDI.i55 = bitcast %union.anon* %7713 to i64*
  %7714 = load i64, i64* %PC.i54
  %7715 = add i64 %7714, 10
  store i64 %7715, i64* %PC.i54
  store i64 ptrtoint (%G__0x583546_type* @G__0x583546 to i64), i64* %RDI.i55, align 8
  store %struct.Memory* %loadMem_48b4d9, %struct.Memory** %MEMORY
  %loadMem_48b4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7717 = getelementptr inbounds %struct.GPR, %struct.GPR* %7716, i32 0, i32 33
  %7718 = getelementptr inbounds %struct.Reg, %struct.Reg* %7717, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7718 to i64*
  %7719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7720 = getelementptr inbounds %struct.GPR, %struct.GPR* %7719, i32 0, i32 1
  %7721 = getelementptr inbounds %struct.Reg, %struct.Reg* %7720, i32 0, i32 0
  %7722 = bitcast %union.anon* %7721 to %struct.anon.2*
  %AL.i53 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7722, i32 0, i32 0
  %7723 = load i64, i64* %PC.i52
  %7724 = add i64 %7723, 2
  store i64 %7724, i64* %PC.i52
  store i8 0, i8* %AL.i53, align 1
  store %struct.Memory* %loadMem_48b4e3, %struct.Memory** %MEMORY
  %loadMem1_48b4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7726 = getelementptr inbounds %struct.GPR, %struct.GPR* %7725, i32 0, i32 33
  %7727 = getelementptr inbounds %struct.Reg, %struct.Reg* %7726, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7727 to i64*
  %7728 = load i64, i64* %PC.i51
  %7729 = add i64 %7728, -235317
  %7730 = load i64, i64* %PC.i51
  %7731 = add i64 %7730, 5
  %7732 = load i64, i64* %PC.i51
  %7733 = add i64 %7732, 5
  store i64 %7733, i64* %PC.i51
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7735 = load i64, i64* %7734, align 8
  %7736 = add i64 %7735, -8
  %7737 = inttoptr i64 %7736 to i64*
  store i64 %7731, i64* %7737
  store i64 %7736, i64* %7734, align 8
  %7738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7729, i64* %7738, align 8
  store %struct.Memory* %loadMem1_48b4e5, %struct.Memory** %MEMORY
  %loadMem2_48b4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b4e5 = load i64, i64* %3
  %call2_48b4e5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b4e5, %struct.Memory* %loadMem2_48b4e5)
  store %struct.Memory* %call2_48b4e5, %struct.Memory** %MEMORY
  %loadMem_48b4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7740 = getelementptr inbounds %struct.GPR, %struct.GPR* %7739, i32 0, i32 33
  %7741 = getelementptr inbounds %struct.Reg, %struct.Reg* %7740, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7741 to i64*
  %7742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7743 = getelementptr inbounds %struct.GPR, %struct.GPR* %7742, i32 0, i32 1
  %7744 = getelementptr inbounds %struct.Reg, %struct.Reg* %7743, i32 0, i32 0
  %EAX.i49 = bitcast %union.anon* %7744 to i32*
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7746 = getelementptr inbounds %struct.GPR, %struct.GPR* %7745, i32 0, i32 15
  %7747 = getelementptr inbounds %struct.Reg, %struct.Reg* %7746, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %7747 to i64*
  %7748 = load i64, i64* %RBP.i50
  %7749 = sub i64 %7748, 172
  %7750 = load i32, i32* %EAX.i49
  %7751 = zext i32 %7750 to i64
  %7752 = load i64, i64* %PC.i48
  %7753 = add i64 %7752, 6
  store i64 %7753, i64* %PC.i48
  %7754 = inttoptr i64 %7749 to i32*
  store i32 %7750, i32* %7754
  store %struct.Memory* %loadMem_48b4ea, %struct.Memory** %MEMORY
  %loadMem_48b4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7756 = getelementptr inbounds %struct.GPR, %struct.GPR* %7755, i32 0, i32 33
  %7757 = getelementptr inbounds %struct.Reg, %struct.Reg* %7756, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7757 to i64*
  %7758 = load i64, i64* %PC.i47
  %7759 = add i64 %7758, 134
  %7760 = load i64, i64* %PC.i47
  %7761 = add i64 %7760, 5
  store i64 %7761, i64* %PC.i47
  %7762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7759, i64* %7762, align 8
  store %struct.Memory* %loadMem_48b4f0, %struct.Memory** %MEMORY
  br label %block_.L_48b576

block_.L_48b4f5:                                  ; preds = %block_.L_48b4b7
  %loadMem_48b4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7764 = getelementptr inbounds %struct.GPR, %struct.GPR* %7763, i32 0, i32 33
  %7765 = getelementptr inbounds %struct.Reg, %struct.Reg* %7764, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7765 to i64*
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7767 = getelementptr inbounds %struct.GPR, %struct.GPR* %7766, i32 0, i32 1
  %7768 = getelementptr inbounds %struct.Reg, %struct.Reg* %7767, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %7768 to i64*
  %7769 = load i64, i64* %PC.i45
  %7770 = add i64 %7769, 10
  store i64 %7770, i64* %PC.i45
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_48b4f5, %struct.Memory** %MEMORY
  %loadMem_48b4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7772 = getelementptr inbounds %struct.GPR, %struct.GPR* %7771, i32 0, i32 33
  %7773 = getelementptr inbounds %struct.Reg, %struct.Reg* %7772, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7773 to i64*
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7775 = getelementptr inbounds %struct.GPR, %struct.GPR* %7774, i32 0, i32 5
  %7776 = getelementptr inbounds %struct.Reg, %struct.Reg* %7775, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %7776 to i64*
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7778 = getelementptr inbounds %struct.GPR, %struct.GPR* %7777, i32 0, i32 15
  %7779 = getelementptr inbounds %struct.Reg, %struct.Reg* %7778, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %7779 to i64*
  %7780 = load i64, i64* %RBP.i44
  %7781 = sub i64 %7780, 12
  %7782 = load i64, i64* %PC.i42
  %7783 = add i64 %7782, 4
  store i64 %7783, i64* %PC.i42
  %7784 = inttoptr i64 %7781 to i32*
  %7785 = load i32, i32* %7784
  %7786 = sext i32 %7785 to i64
  store i64 %7786, i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_48b4ff, %struct.Memory** %MEMORY
  %loadMem_48b503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7788 = getelementptr inbounds %struct.GPR, %struct.GPR* %7787, i32 0, i32 33
  %7789 = getelementptr inbounds %struct.Reg, %struct.Reg* %7788, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7789 to i64*
  %7790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7791 = getelementptr inbounds %struct.GPR, %struct.GPR* %7790, i32 0, i32 5
  %7792 = getelementptr inbounds %struct.Reg, %struct.Reg* %7791, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %7792 to i64*
  %7793 = load i64, i64* %RCX.i41
  %7794 = load i64, i64* %PC.i40
  %7795 = add i64 %7794, 7
  store i64 %7795, i64* %PC.i40
  %7796 = sext i64 %7793 to i128
  %7797 = and i128 %7796, -18446744073709551616
  %7798 = zext i64 %7793 to i128
  %7799 = or i128 %7797, %7798
  %7800 = mul i128 380, %7799
  %7801 = trunc i128 %7800 to i64
  store i64 %7801, i64* %RCX.i41, align 8
  %7802 = sext i64 %7801 to i128
  %7803 = icmp ne i128 %7802, %7800
  %7804 = zext i1 %7803 to i8
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7804, i8* %7805, align 1
  %7806 = trunc i128 %7800 to i32
  %7807 = and i32 %7806, 255
  %7808 = call i32 @llvm.ctpop.i32(i32 %7807)
  %7809 = trunc i32 %7808 to i8
  %7810 = and i8 %7809, 1
  %7811 = xor i8 %7810, 1
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7811, i8* %7812, align 1
  %7813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7813, align 1
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7814, align 1
  %7815 = lshr i64 %7801, 63
  %7816 = trunc i64 %7815 to i8
  %7817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7816, i8* %7817, align 1
  %7818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7804, i8* %7818, align 1
  store %struct.Memory* %loadMem_48b503, %struct.Memory** %MEMORY
  %loadMem_48b50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7820 = getelementptr inbounds %struct.GPR, %struct.GPR* %7819, i32 0, i32 33
  %7821 = getelementptr inbounds %struct.Reg, %struct.Reg* %7820, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7821 to i64*
  %7822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7823 = getelementptr inbounds %struct.GPR, %struct.GPR* %7822, i32 0, i32 1
  %7824 = getelementptr inbounds %struct.Reg, %struct.Reg* %7823, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %7824 to i64*
  %7825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7826 = getelementptr inbounds %struct.GPR, %struct.GPR* %7825, i32 0, i32 5
  %7827 = getelementptr inbounds %struct.Reg, %struct.Reg* %7826, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %7827 to i64*
  %7828 = load i64, i64* %RAX.i38
  %7829 = load i64, i64* %RCX.i39
  %7830 = load i64, i64* %PC.i37
  %7831 = add i64 %7830, 3
  store i64 %7831, i64* %PC.i37
  %7832 = add i64 %7829, %7828
  store i64 %7832, i64* %RAX.i38, align 8
  %7833 = icmp ult i64 %7832, %7828
  %7834 = icmp ult i64 %7832, %7829
  %7835 = or i1 %7833, %7834
  %7836 = zext i1 %7835 to i8
  %7837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7836, i8* %7837, align 1
  %7838 = trunc i64 %7832 to i32
  %7839 = and i32 %7838, 255
  %7840 = call i32 @llvm.ctpop.i32(i32 %7839)
  %7841 = trunc i32 %7840 to i8
  %7842 = and i8 %7841, 1
  %7843 = xor i8 %7842, 1
  %7844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7843, i8* %7844, align 1
  %7845 = xor i64 %7829, %7828
  %7846 = xor i64 %7845, %7832
  %7847 = lshr i64 %7846, 4
  %7848 = trunc i64 %7847 to i8
  %7849 = and i8 %7848, 1
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7849, i8* %7850, align 1
  %7851 = icmp eq i64 %7832, 0
  %7852 = zext i1 %7851 to i8
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7852, i8* %7853, align 1
  %7854 = lshr i64 %7832, 63
  %7855 = trunc i64 %7854 to i8
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7855, i8* %7856, align 1
  %7857 = lshr i64 %7828, 63
  %7858 = lshr i64 %7829, 63
  %7859 = xor i64 %7854, %7857
  %7860 = xor i64 %7854, %7858
  %7861 = add i64 %7859, %7860
  %7862 = icmp eq i64 %7861, 2
  %7863 = zext i1 %7862 to i8
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7863, i8* %7864, align 1
  store %struct.Memory* %loadMem_48b50a, %struct.Memory** %MEMORY
  %loadMem_48b50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7866 = getelementptr inbounds %struct.GPR, %struct.GPR* %7865, i32 0, i32 33
  %7867 = getelementptr inbounds %struct.Reg, %struct.Reg* %7866, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7867 to i64*
  %7868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7869 = getelementptr inbounds %struct.GPR, %struct.GPR* %7868, i32 0, i32 1
  %7870 = getelementptr inbounds %struct.Reg, %struct.Reg* %7869, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %7870 to i64*
  %7871 = load i64, i64* %RAX.i36
  %7872 = add i64 %7871, 56
  %7873 = load i64, i64* %PC.i35
  %7874 = add i64 %7873, 4
  store i64 %7874, i64* %PC.i35
  %7875 = inttoptr i64 %7872 to i32*
  %7876 = load i32, i32* %7875
  %7877 = sub i32 %7876, 5
  %7878 = icmp ult i32 %7876, 5
  %7879 = zext i1 %7878 to i8
  %7880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7879, i8* %7880, align 1
  %7881 = and i32 %7877, 255
  %7882 = call i32 @llvm.ctpop.i32(i32 %7881)
  %7883 = trunc i32 %7882 to i8
  %7884 = and i8 %7883, 1
  %7885 = xor i8 %7884, 1
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7885, i8* %7886, align 1
  %7887 = xor i32 %7876, 5
  %7888 = xor i32 %7887, %7877
  %7889 = lshr i32 %7888, 4
  %7890 = trunc i32 %7889 to i8
  %7891 = and i8 %7890, 1
  %7892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7891, i8* %7892, align 1
  %7893 = icmp eq i32 %7877, 0
  %7894 = zext i1 %7893 to i8
  %7895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7894, i8* %7895, align 1
  %7896 = lshr i32 %7877, 31
  %7897 = trunc i32 %7896 to i8
  %7898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7897, i8* %7898, align 1
  %7899 = lshr i32 %7876, 31
  %7900 = xor i32 %7896, %7899
  %7901 = add i32 %7900, %7899
  %7902 = icmp eq i32 %7901, 2
  %7903 = zext i1 %7902 to i8
  %7904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7903, i8* %7904, align 1
  store %struct.Memory* %loadMem_48b50d, %struct.Memory** %MEMORY
  %loadMem_48b511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 33
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7907 to i64*
  %7908 = load i64, i64* %PC.i34
  %7909 = add i64 %7908, 34
  %7910 = load i64, i64* %PC.i34
  %7911 = add i64 %7910, 6
  %7912 = load i64, i64* %PC.i34
  %7913 = add i64 %7912, 6
  store i64 %7913, i64* %PC.i34
  %7914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7915 = load i8, i8* %7914, align 1
  %7916 = icmp eq i8 %7915, 0
  %7917 = zext i1 %7916 to i8
  store i8 %7917, i8* %BRANCH_TAKEN, align 1
  %7918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7919 = select i1 %7916, i64 %7909, i64 %7911
  store i64 %7919, i64* %7918, align 8
  store %struct.Memory* %loadMem_48b511, %struct.Memory** %MEMORY
  %loadBr_48b511 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b511 = icmp eq i8 %loadBr_48b511, 1
  br i1 %cmpBr_48b511, label %block_.L_48b533, label %block_48b517

block_48b517:                                     ; preds = %block_.L_48b4f5
  %loadMem_48b517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7921 = getelementptr inbounds %struct.GPR, %struct.GPR* %7920, i32 0, i32 33
  %7922 = getelementptr inbounds %struct.Reg, %struct.Reg* %7921, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7922 to i64*
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7924 = getelementptr inbounds %struct.GPR, %struct.GPR* %7923, i32 0, i32 11
  %7925 = getelementptr inbounds %struct.Reg, %struct.Reg* %7924, i32 0, i32 0
  %RDI.i33 = bitcast %union.anon* %7925 to i64*
  %7926 = load i64, i64* %PC.i32
  %7927 = add i64 %7926, 10
  store i64 %7927, i64* %PC.i32
  store i64 ptrtoint (%G__0x583569_type* @G__0x583569 to i64), i64* %RDI.i33, align 8
  store %struct.Memory* %loadMem_48b517, %struct.Memory** %MEMORY
  %loadMem_48b521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7929 = getelementptr inbounds %struct.GPR, %struct.GPR* %7928, i32 0, i32 33
  %7930 = getelementptr inbounds %struct.Reg, %struct.Reg* %7929, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %7930 to i64*
  %7931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7932 = getelementptr inbounds %struct.GPR, %struct.GPR* %7931, i32 0, i32 1
  %7933 = getelementptr inbounds %struct.Reg, %struct.Reg* %7932, i32 0, i32 0
  %7934 = bitcast %union.anon* %7933 to %struct.anon.2*
  %AL.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7934, i32 0, i32 0
  %7935 = load i64, i64* %PC.i30
  %7936 = add i64 %7935, 2
  store i64 %7936, i64* %PC.i30
  store i8 0, i8* %AL.i31, align 1
  store %struct.Memory* %loadMem_48b521, %struct.Memory** %MEMORY
  %loadMem1_48b523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 33
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7939 to i64*
  %7940 = load i64, i64* %PC.i29
  %7941 = add i64 %7940, -235379
  %7942 = load i64, i64* %PC.i29
  %7943 = add i64 %7942, 5
  %7944 = load i64, i64* %PC.i29
  %7945 = add i64 %7944, 5
  store i64 %7945, i64* %PC.i29
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7947 = load i64, i64* %7946, align 8
  %7948 = add i64 %7947, -8
  %7949 = inttoptr i64 %7948 to i64*
  store i64 %7943, i64* %7949
  store i64 %7948, i64* %7946, align 8
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7941, i64* %7950, align 8
  store %struct.Memory* %loadMem1_48b523, %struct.Memory** %MEMORY
  %loadMem2_48b523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b523 = load i64, i64* %3
  %call2_48b523 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b523, %struct.Memory* %loadMem2_48b523)
  store %struct.Memory* %call2_48b523, %struct.Memory** %MEMORY
  %loadMem_48b528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7952 = getelementptr inbounds %struct.GPR, %struct.GPR* %7951, i32 0, i32 33
  %7953 = getelementptr inbounds %struct.Reg, %struct.Reg* %7952, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7953 to i64*
  %7954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7955 = getelementptr inbounds %struct.GPR, %struct.GPR* %7954, i32 0, i32 1
  %7956 = getelementptr inbounds %struct.Reg, %struct.Reg* %7955, i32 0, i32 0
  %EAX.i27 = bitcast %union.anon* %7956 to i32*
  %7957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7958 = getelementptr inbounds %struct.GPR, %struct.GPR* %7957, i32 0, i32 15
  %7959 = getelementptr inbounds %struct.Reg, %struct.Reg* %7958, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %7959 to i64*
  %7960 = load i64, i64* %RBP.i28
  %7961 = sub i64 %7960, 176
  %7962 = load i32, i32* %EAX.i27
  %7963 = zext i32 %7962 to i64
  %7964 = load i64, i64* %PC.i26
  %7965 = add i64 %7964, 6
  store i64 %7965, i64* %PC.i26
  %7966 = inttoptr i64 %7961 to i32*
  store i32 %7962, i32* %7966
  store %struct.Memory* %loadMem_48b528, %struct.Memory** %MEMORY
  %loadMem_48b52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7968 = getelementptr inbounds %struct.GPR, %struct.GPR* %7967, i32 0, i32 33
  %7969 = getelementptr inbounds %struct.Reg, %struct.Reg* %7968, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7969 to i64*
  %7970 = load i64, i64* %PC.i25
  %7971 = add i64 %7970, 67
  %7972 = load i64, i64* %PC.i25
  %7973 = add i64 %7972, 5
  store i64 %7973, i64* %PC.i25
  %7974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7971, i64* %7974, align 8
  store %struct.Memory* %loadMem_48b52e, %struct.Memory** %MEMORY
  br label %block_.L_48b571

block_.L_48b533:                                  ; preds = %block_.L_48b4f5
  %loadMem_48b533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7976 = getelementptr inbounds %struct.GPR, %struct.GPR* %7975, i32 0, i32 33
  %7977 = getelementptr inbounds %struct.Reg, %struct.Reg* %7976, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7977 to i64*
  %7978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7979 = getelementptr inbounds %struct.GPR, %struct.GPR* %7978, i32 0, i32 1
  %7980 = getelementptr inbounds %struct.Reg, %struct.Reg* %7979, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %7980 to i64*
  %7981 = load i64, i64* %PC.i23
  %7982 = add i64 %7981, 10
  store i64 %7982, i64* %PC.i23
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_48b533, %struct.Memory** %MEMORY
  %loadMem_48b53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7984 = getelementptr inbounds %struct.GPR, %struct.GPR* %7983, i32 0, i32 33
  %7985 = getelementptr inbounds %struct.Reg, %struct.Reg* %7984, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7985 to i64*
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 5
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %7988 to i64*
  %7989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7990 = getelementptr inbounds %struct.GPR, %struct.GPR* %7989, i32 0, i32 15
  %7991 = getelementptr inbounds %struct.Reg, %struct.Reg* %7990, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %7991 to i64*
  %7992 = load i64, i64* %RBP.i22
  %7993 = sub i64 %7992, 12
  %7994 = load i64, i64* %PC.i20
  %7995 = add i64 %7994, 4
  store i64 %7995, i64* %PC.i20
  %7996 = inttoptr i64 %7993 to i32*
  %7997 = load i32, i32* %7996
  %7998 = sext i32 %7997 to i64
  store i64 %7998, i64* %RCX.i21, align 8
  store %struct.Memory* %loadMem_48b53d, %struct.Memory** %MEMORY
  %loadMem_48b541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8000 = getelementptr inbounds %struct.GPR, %struct.GPR* %7999, i32 0, i32 33
  %8001 = getelementptr inbounds %struct.Reg, %struct.Reg* %8000, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8001 to i64*
  %8002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8003 = getelementptr inbounds %struct.GPR, %struct.GPR* %8002, i32 0, i32 5
  %8004 = getelementptr inbounds %struct.Reg, %struct.Reg* %8003, i32 0, i32 0
  %RCX.i19 = bitcast %union.anon* %8004 to i64*
  %8005 = load i64, i64* %RCX.i19
  %8006 = load i64, i64* %PC.i18
  %8007 = add i64 %8006, 7
  store i64 %8007, i64* %PC.i18
  %8008 = sext i64 %8005 to i128
  %8009 = and i128 %8008, -18446744073709551616
  %8010 = zext i64 %8005 to i128
  %8011 = or i128 %8009, %8010
  %8012 = mul i128 380, %8011
  %8013 = trunc i128 %8012 to i64
  store i64 %8013, i64* %RCX.i19, align 8
  %8014 = sext i64 %8013 to i128
  %8015 = icmp ne i128 %8014, %8012
  %8016 = zext i1 %8015 to i8
  %8017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8016, i8* %8017, align 1
  %8018 = trunc i128 %8012 to i32
  %8019 = and i32 %8018, 255
  %8020 = call i32 @llvm.ctpop.i32(i32 %8019)
  %8021 = trunc i32 %8020 to i8
  %8022 = and i8 %8021, 1
  %8023 = xor i8 %8022, 1
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8023, i8* %8024, align 1
  %8025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8025, align 1
  %8026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8026, align 1
  %8027 = lshr i64 %8013, 63
  %8028 = trunc i64 %8027 to i8
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8028, i8* %8029, align 1
  %8030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8016, i8* %8030, align 1
  store %struct.Memory* %loadMem_48b541, %struct.Memory** %MEMORY
  %loadMem_48b548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8032 = getelementptr inbounds %struct.GPR, %struct.GPR* %8031, i32 0, i32 33
  %8033 = getelementptr inbounds %struct.Reg, %struct.Reg* %8032, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %8033 to i64*
  %8034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8035 = getelementptr inbounds %struct.GPR, %struct.GPR* %8034, i32 0, i32 1
  %8036 = getelementptr inbounds %struct.Reg, %struct.Reg* %8035, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %8036 to i64*
  %8037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8038 = getelementptr inbounds %struct.GPR, %struct.GPR* %8037, i32 0, i32 5
  %8039 = getelementptr inbounds %struct.Reg, %struct.Reg* %8038, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8039 to i64*
  %8040 = load i64, i64* %RAX.i17
  %8041 = load i64, i64* %RCX.i
  %8042 = load i64, i64* %PC.i16
  %8043 = add i64 %8042, 3
  store i64 %8043, i64* %PC.i16
  %8044 = add i64 %8041, %8040
  store i64 %8044, i64* %RAX.i17, align 8
  %8045 = icmp ult i64 %8044, %8040
  %8046 = icmp ult i64 %8044, %8041
  %8047 = or i1 %8045, %8046
  %8048 = zext i1 %8047 to i8
  %8049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8048, i8* %8049, align 1
  %8050 = trunc i64 %8044 to i32
  %8051 = and i32 %8050, 255
  %8052 = call i32 @llvm.ctpop.i32(i32 %8051)
  %8053 = trunc i32 %8052 to i8
  %8054 = and i8 %8053, 1
  %8055 = xor i8 %8054, 1
  %8056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8055, i8* %8056, align 1
  %8057 = xor i64 %8041, %8040
  %8058 = xor i64 %8057, %8044
  %8059 = lshr i64 %8058, 4
  %8060 = trunc i64 %8059 to i8
  %8061 = and i8 %8060, 1
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8061, i8* %8062, align 1
  %8063 = icmp eq i64 %8044, 0
  %8064 = zext i1 %8063 to i8
  %8065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8064, i8* %8065, align 1
  %8066 = lshr i64 %8044, 63
  %8067 = trunc i64 %8066 to i8
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8067, i8* %8068, align 1
  %8069 = lshr i64 %8040, 63
  %8070 = lshr i64 %8041, 63
  %8071 = xor i64 %8066, %8069
  %8072 = xor i64 %8066, %8070
  %8073 = add i64 %8071, %8072
  %8074 = icmp eq i64 %8073, 2
  %8075 = zext i1 %8074 to i8
  %8076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8075, i8* %8076, align 1
  store %struct.Memory* %loadMem_48b548, %struct.Memory** %MEMORY
  %loadMem_48b54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8078 = getelementptr inbounds %struct.GPR, %struct.GPR* %8077, i32 0, i32 33
  %8079 = getelementptr inbounds %struct.Reg, %struct.Reg* %8078, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8079 to i64*
  %8080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8081 = getelementptr inbounds %struct.GPR, %struct.GPR* %8080, i32 0, i32 1
  %8082 = getelementptr inbounds %struct.Reg, %struct.Reg* %8081, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8082 to i64*
  %8083 = load i64, i64* %RAX.i
  %8084 = add i64 %8083, 56
  %8085 = load i64, i64* %PC.i15
  %8086 = add i64 %8085, 4
  store i64 %8086, i64* %PC.i15
  %8087 = inttoptr i64 %8084 to i32*
  %8088 = load i32, i32* %8087
  %8089 = sub i32 %8088, 3
  %8090 = icmp ult i32 %8088, 3
  %8091 = zext i1 %8090 to i8
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8091, i8* %8092, align 1
  %8093 = and i32 %8089, 255
  %8094 = call i32 @llvm.ctpop.i32(i32 %8093)
  %8095 = trunc i32 %8094 to i8
  %8096 = and i8 %8095, 1
  %8097 = xor i8 %8096, 1
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8097, i8* %8098, align 1
  %8099 = xor i32 %8088, 3
  %8100 = xor i32 %8099, %8089
  %8101 = lshr i32 %8100, 4
  %8102 = trunc i32 %8101 to i8
  %8103 = and i8 %8102, 1
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8103, i8* %8104, align 1
  %8105 = icmp eq i32 %8089, 0
  %8106 = zext i1 %8105 to i8
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8106, i8* %8107, align 1
  %8108 = lshr i32 %8089, 31
  %8109 = trunc i32 %8108 to i8
  %8110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8109, i8* %8110, align 1
  %8111 = lshr i32 %8088, 31
  %8112 = xor i32 %8108, %8111
  %8113 = add i32 %8112, %8111
  %8114 = icmp eq i32 %8113, 2
  %8115 = zext i1 %8114 to i8
  %8116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8115, i8* %8116, align 1
  store %struct.Memory* %loadMem_48b54b, %struct.Memory** %MEMORY
  %loadMem_48b54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8118 = getelementptr inbounds %struct.GPR, %struct.GPR* %8117, i32 0, i32 33
  %8119 = getelementptr inbounds %struct.Reg, %struct.Reg* %8118, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8119 to i64*
  %8120 = load i64, i64* %PC.i14
  %8121 = add i64 %8120, 29
  %8122 = load i64, i64* %PC.i14
  %8123 = add i64 %8122, 6
  %8124 = load i64, i64* %PC.i14
  %8125 = add i64 %8124, 6
  store i64 %8125, i64* %PC.i14
  %8126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8127 = load i8, i8* %8126, align 1
  %8128 = icmp eq i8 %8127, 0
  %8129 = zext i1 %8128 to i8
  store i8 %8129, i8* %BRANCH_TAKEN, align 1
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8131 = select i1 %8128, i64 %8121, i64 %8123
  store i64 %8131, i64* %8130, align 8
  store %struct.Memory* %loadMem_48b54f, %struct.Memory** %MEMORY
  %loadBr_48b54f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b54f = icmp eq i8 %loadBr_48b54f, 1
  br i1 %cmpBr_48b54f, label %block_.L_48b56c, label %block_48b555

block_48b555:                                     ; preds = %block_.L_48b533
  %loadMem_48b555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8133 = getelementptr inbounds %struct.GPR, %struct.GPR* %8132, i32 0, i32 33
  %8134 = getelementptr inbounds %struct.Reg, %struct.Reg* %8133, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8134 to i64*
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8136 = getelementptr inbounds %struct.GPR, %struct.GPR* %8135, i32 0, i32 11
  %8137 = getelementptr inbounds %struct.Reg, %struct.Reg* %8136, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8137 to i64*
  %8138 = load i64, i64* %PC.i13
  %8139 = add i64 %8138, 10
  store i64 %8139, i64* %PC.i13
  store i64 ptrtoint (%G__0x58358c_type* @G__0x58358c to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_48b555, %struct.Memory** %MEMORY
  %loadMem_48b55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8141 = getelementptr inbounds %struct.GPR, %struct.GPR* %8140, i32 0, i32 33
  %8142 = getelementptr inbounds %struct.Reg, %struct.Reg* %8141, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %8142 to i64*
  %8143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8144 = getelementptr inbounds %struct.GPR, %struct.GPR* %8143, i32 0, i32 1
  %8145 = getelementptr inbounds %struct.Reg, %struct.Reg* %8144, i32 0, i32 0
  %8146 = bitcast %union.anon* %8145 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %8146, i32 0, i32 0
  %8147 = load i64, i64* %PC.i12
  %8148 = add i64 %8147, 2
  store i64 %8148, i64* %PC.i12
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_48b55f, %struct.Memory** %MEMORY
  %loadMem1_48b561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8150 = getelementptr inbounds %struct.GPR, %struct.GPR* %8149, i32 0, i32 33
  %8151 = getelementptr inbounds %struct.Reg, %struct.Reg* %8150, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8151 to i64*
  %8152 = load i64, i64* %PC.i11
  %8153 = add i64 %8152, -235441
  %8154 = load i64, i64* %PC.i11
  %8155 = add i64 %8154, 5
  %8156 = load i64, i64* %PC.i11
  %8157 = add i64 %8156, 5
  store i64 %8157, i64* %PC.i11
  %8158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8159 = load i64, i64* %8158, align 8
  %8160 = add i64 %8159, -8
  %8161 = inttoptr i64 %8160 to i64*
  store i64 %8155, i64* %8161
  store i64 %8160, i64* %8158, align 8
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8153, i64* %8162, align 8
  store %struct.Memory* %loadMem1_48b561, %struct.Memory** %MEMORY
  %loadMem2_48b561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b561 = load i64, i64* %3
  %call2_48b561 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_48b561, %struct.Memory* %loadMem2_48b561)
  store %struct.Memory* %call2_48b561, %struct.Memory** %MEMORY
  %loadMem_48b566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8164 = getelementptr inbounds %struct.GPR, %struct.GPR* %8163, i32 0, i32 33
  %8165 = getelementptr inbounds %struct.Reg, %struct.Reg* %8164, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8165 to i64*
  %8166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8167 = getelementptr inbounds %struct.GPR, %struct.GPR* %8166, i32 0, i32 1
  %8168 = getelementptr inbounds %struct.Reg, %struct.Reg* %8167, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8168 to i32*
  %8169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8170 = getelementptr inbounds %struct.GPR, %struct.GPR* %8169, i32 0, i32 15
  %8171 = getelementptr inbounds %struct.Reg, %struct.Reg* %8170, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %8171 to i64*
  %8172 = load i64, i64* %RBP.i10
  %8173 = sub i64 %8172, 180
  %8174 = load i32, i32* %EAX.i
  %8175 = zext i32 %8174 to i64
  %8176 = load i64, i64* %PC.i9
  %8177 = add i64 %8176, 6
  store i64 %8177, i64* %PC.i9
  %8178 = inttoptr i64 %8173 to i32*
  store i32 %8174, i32* %8178
  store %struct.Memory* %loadMem_48b566, %struct.Memory** %MEMORY
  br label %block_.L_48b56c

block_.L_48b56c:                                  ; preds = %block_48b555, %block_.L_48b533
  %loadMem_48b56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8180 = getelementptr inbounds %struct.GPR, %struct.GPR* %8179, i32 0, i32 33
  %8181 = getelementptr inbounds %struct.Reg, %struct.Reg* %8180, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8181 to i64*
  %8182 = load i64, i64* %PC.i8
  %8183 = add i64 %8182, 5
  %8184 = load i64, i64* %PC.i8
  %8185 = add i64 %8184, 5
  store i64 %8185, i64* %PC.i8
  %8186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8183, i64* %8186, align 8
  store %struct.Memory* %loadMem_48b56c, %struct.Memory** %MEMORY
  br label %block_.L_48b571

block_.L_48b571:                                  ; preds = %block_.L_48b56c, %block_48b517
  %loadMem_48b571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8188 = getelementptr inbounds %struct.GPR, %struct.GPR* %8187, i32 0, i32 33
  %8189 = getelementptr inbounds %struct.Reg, %struct.Reg* %8188, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %8189 to i64*
  %8190 = load i64, i64* %PC.i7
  %8191 = add i64 %8190, 5
  %8192 = load i64, i64* %PC.i7
  %8193 = add i64 %8192, 5
  store i64 %8193, i64* %PC.i7
  %8194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8191, i64* %8194, align 8
  store %struct.Memory* %loadMem_48b571, %struct.Memory** %MEMORY
  br label %block_.L_48b576

block_.L_48b576:                                  ; preds = %block_.L_48b571, %block_48b4d9
  %loadMem_48b576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8196 = getelementptr inbounds %struct.GPR, %struct.GPR* %8195, i32 0, i32 33
  %8197 = getelementptr inbounds %struct.Reg, %struct.Reg* %8196, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8197 to i64*
  %8198 = load i64, i64* %PC.i6
  %8199 = add i64 %8198, 5
  %8200 = load i64, i64* %PC.i6
  %8201 = add i64 %8200, 5
  store i64 %8201, i64* %PC.i6
  %8202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8199, i64* %8202, align 8
  store %struct.Memory* %loadMem_48b576, %struct.Memory** %MEMORY
  br label %block_.L_48b57b

block_.L_48b57b:                                  ; preds = %block_.L_48b576, %block_48b49b
  %loadMem_48b57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8204 = getelementptr inbounds %struct.GPR, %struct.GPR* %8203, i32 0, i32 33
  %8205 = getelementptr inbounds %struct.Reg, %struct.Reg* %8204, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8205 to i64*
  %8206 = load i64, i64* %PC.i5
  %8207 = add i64 %8206, 5
  %8208 = load i64, i64* %PC.i5
  %8209 = add i64 %8208, 5
  store i64 %8209, i64* %PC.i5
  %8210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8207, i64* %8210, align 8
  store %struct.Memory* %loadMem_48b57b, %struct.Memory** %MEMORY
  br label %block_.L_48b580

block_.L_48b580:                                  ; preds = %block_.L_48b57b, %block_48b45d, %block_48ad03
  %loadMem_48b580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8212 = getelementptr inbounds %struct.GPR, %struct.GPR* %8211, i32 0, i32 33
  %8213 = getelementptr inbounds %struct.Reg, %struct.Reg* %8212, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8213 to i64*
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8215 = getelementptr inbounds %struct.GPR, %struct.GPR* %8214, i32 0, i32 13
  %8216 = getelementptr inbounds %struct.Reg, %struct.Reg* %8215, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8216 to i64*
  %8217 = load i64, i64* %RSP.i
  %8218 = load i64, i64* %PC.i4
  %8219 = add i64 %8218, 7
  store i64 %8219, i64* %PC.i4
  %8220 = add i64 192, %8217
  store i64 %8220, i64* %RSP.i, align 8
  %8221 = icmp ult i64 %8220, %8217
  %8222 = icmp ult i64 %8220, 192
  %8223 = or i1 %8221, %8222
  %8224 = zext i1 %8223 to i8
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8224, i8* %8225, align 1
  %8226 = trunc i64 %8220 to i32
  %8227 = and i32 %8226, 255
  %8228 = call i32 @llvm.ctpop.i32(i32 %8227)
  %8229 = trunc i32 %8228 to i8
  %8230 = and i8 %8229, 1
  %8231 = xor i8 %8230, 1
  %8232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8231, i8* %8232, align 1
  %8233 = xor i64 192, %8217
  %8234 = xor i64 %8233, %8220
  %8235 = lshr i64 %8234, 4
  %8236 = trunc i64 %8235 to i8
  %8237 = and i8 %8236, 1
  %8238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8237, i8* %8238, align 1
  %8239 = icmp eq i64 %8220, 0
  %8240 = zext i1 %8239 to i8
  %8241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8240, i8* %8241, align 1
  %8242 = lshr i64 %8220, 63
  %8243 = trunc i64 %8242 to i8
  %8244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8243, i8* %8244, align 1
  %8245 = lshr i64 %8217, 63
  %8246 = xor i64 %8242, %8245
  %8247 = add i64 %8246, %8242
  %8248 = icmp eq i64 %8247, 2
  %8249 = zext i1 %8248 to i8
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8249, i8* %8250, align 1
  store %struct.Memory* %loadMem_48b580, %struct.Memory** %MEMORY
  %loadMem_48b587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8252 = getelementptr inbounds %struct.GPR, %struct.GPR* %8251, i32 0, i32 33
  %8253 = getelementptr inbounds %struct.Reg, %struct.Reg* %8252, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8253 to i64*
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8255 = getelementptr inbounds %struct.GPR, %struct.GPR* %8254, i32 0, i32 15
  %8256 = getelementptr inbounds %struct.Reg, %struct.Reg* %8255, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8256 to i64*
  %8257 = load i64, i64* %PC.i2
  %8258 = add i64 %8257, 1
  store i64 %8258, i64* %PC.i2
  %8259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8260 = load i64, i64* %8259, align 8
  %8261 = add i64 %8260, 8
  %8262 = inttoptr i64 %8260 to i64*
  %8263 = load i64, i64* %8262
  store i64 %8263, i64* %RBP.i3, align 8
  store i64 %8261, i64* %8259, align 8
  store %struct.Memory* %loadMem_48b587, %struct.Memory** %MEMORY
  %loadMem_48b588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8265 = getelementptr inbounds %struct.GPR, %struct.GPR* %8264, i32 0, i32 33
  %8266 = getelementptr inbounds %struct.Reg, %struct.Reg* %8265, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8266 to i64*
  %8267 = load i64, i64* %PC.i1
  %8268 = add i64 %8267, 1
  store i64 %8268, i64* %PC.i1
  %8269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8271 = load i64, i64* %8270, align 8
  %8272 = inttoptr i64 %8271 to i64*
  %8273 = load i64, i64* %8272
  store i64 %8273, i64* %8269, align 8
  %8274 = add i64 %8271, 8
  store i64 %8274, i64* %8270, align 8
  store %struct.Memory* %loadMem_48b588, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_48b588
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 192
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 192
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
  %23 = xor i64 192, %9
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

define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl__0x15___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_48ad1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x58332f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58332f_type* @G__0x58332f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_jmpq_.L_48b580(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x583348___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583348_type* @G__0x583348 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x583366___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583366_type* @G__0x583366 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x583360___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583360_type* @G__0x583360 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x58335a___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x58335a_type* @G__0x58335a to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___r9___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %R9, align 8
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

define %struct.Memory* @routine_movq__rcx___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r9___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R10, align 8
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

define %struct.Memory* @routine_cmpl__0x1____r10_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R10
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 1
  %15 = icmp ult i32 %13, 1
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
  %24 = xor i32 %13, 1
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

define %struct.Memory* @routine_cmoveq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = load i64, i64* %RDX, align 8
  %19 = select i1 %17, i64 %12, i64 %18
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_movq__rcx___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R9, align 8
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

define %struct.Memory* @routine_movl_0xc__r9____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__r9____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %R9
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

define %struct.Memory* @routine_addq__r8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_cvtss2sd_0x8__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x58339c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58339c_type* @G__0x58339c to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rsi___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__r9____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__r9____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__r9____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %R9
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_0x1c__rsi____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movq__0xb0eff0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x3c__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 60
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

define %struct.Memory* @routine_jne_.L_48ae79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x5833d6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5833d6_type* @G__0x5833d6 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48af56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5833e8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5833e8_type* @G__0x5833e8 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x3c__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 60
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
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

define %struct.Memory* @routine_je_.L_48af42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jle_.L_48aed9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x588988___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x588988_type* @G__0x588988 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_0x3c__rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 60
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x64__rax__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 100
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

define %struct.Memory* @routine_callq_.result_to_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x5833f9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5833f9_type* @G__0x5833f9 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_48ae94(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x583402___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583402_type* @G__0x583402 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x8c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 140
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

define %struct.Memory* @routine_jne_.L_48af94(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x583405___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583405_type* @G__0x583405 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b07a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x583418___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583418_type* @G__0x583418 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x8c__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_48b066(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jle_.L_48aff7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0x8c__rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 140
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

define %struct.Memory* @routine_movl_0xb4__rax__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 180
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

define %struct.Memory* @routine_movl__esi__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48afaf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 220
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

define %struct.Memory* @routine_jne_.L_48b0b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x58342a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58342a_type* @G__0x58342a to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b19e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x583443___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583443_type* @G__0x583443 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0xdc__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 220
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

define %struct.Memory* @routine_je_.L_48b18a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jle_.L_48b11b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0xdc__rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 220
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

define %struct.Memory* @routine_movl_0x104__rax__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 260
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

define %struct.Memory* @routine_movl__esi__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b0d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x12c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 300
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

define %struct.Memory* @routine_jne_.L_48b1dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x58345b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58345b_type* @G__0x58345b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48b2c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x583475___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583475_type* @G__0x583475 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x12c__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 300
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

define %struct.Memory* @routine_je_.L_48b2ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jle_.L_48b23f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0x12c__rdx__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 300
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

define %struct.Memory* @routine_movl_0x154__rax__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 340
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

define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b1f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
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

define %struct.Memory* @routine_je_.L_48b319(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x58348e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58348e_type* @G__0x58348e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x58349c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58349c_type* @G__0x58349c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x24__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x28__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x5834b9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5834b9_type* @G__0x5834b9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x2c__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_cmpl__0x0__0x30__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
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

define %struct.Memory* @routine_je_.L_48b3cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x5834c5___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5834c5_type* @G__0x5834c5 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b3e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5834d8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5834d8_type* @G__0x5834d8 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 52
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

define %struct.Memory* @routine_je_.L_48b424(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x5834ea___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5834ea_type* @G__0x5834ea to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b43b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x5834fd___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x5834fd_type* @G__0x5834fd to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x1__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
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

define %struct.Memory* @routine_jne_.L_48b479(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x58350f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58350f_type* @G__0x58350f to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
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

define %struct.Memory* @routine_jne_.L_48b4b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x58352b___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58352b_type* @G__0x58352b to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b57b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x4__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_jne_.L_48b4f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x583546___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583546_type* @G__0x583546 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_48b576(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
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

define %struct.Memory* @routine_jne_.L_48b533(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x583569___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x583569_type* @G__0x583569 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_48b571(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
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

define %struct.Memory* @routine_jne_.L_48b56c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x58358c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58358c_type* @G__0x58358c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 192, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 192
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
  %25 = xor i64 192, %9
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
